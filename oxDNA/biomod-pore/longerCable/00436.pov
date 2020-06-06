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
	<24.328905, 35.279610, 34.643547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295149, 34.961327, 34.883457>,  <24.274895, 34.770359, 35.027405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295149, 34.961327, 34.883457>,  <24.328905, 35.279610, 34.643547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295149, 34.961327, 34.883457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692096, -0.479844, -0.539215,
		0.716855, 0.369598, 0.591198,
		-0.084390, -0.795705, 0.599776,
		24.269833, 34.722614, 35.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992680, 35.002220, 34.751568>,  <24.328905, 35.279610, 34.643547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992680, 35.002220, 34.751568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731848, 34.702557, 34.798145>,  <24.575348, 34.522758, 34.826092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731848, 34.702557, 34.798145>,  <24.992680, 35.002220, 34.751568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.731848, 34.702557, 34.798145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627371, -0.619430, -0.471923,
		0.425674, -0.234677, 0.873916,
		-0.652079, -0.749155, 0.116446,
		24.536224, 34.477810, 34.833080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631504, 34.374439, 34.306885>,  <24.992680, 35.002220, 34.751568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631504, 34.374439, 34.306885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029104, 34.349663, 34.270824>,  <25.267664, 34.334797, 34.249187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029104, 34.349663, 34.270824>,  <24.631504, 34.374439, 34.306885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.029104, 34.349663, 34.270824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108147, -0.433322, -0.894727,
		0.016359, 0.899108, -0.437422,
		0.994000, -0.061942, -0.090147,
		25.327305, 34.331081, 34.243782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845499, 34.664719, 33.555916>,  <24.631504, 34.374439, 34.306885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845499, 34.664719, 33.555916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130203, 34.423809, 33.700504>,  <25.301025, 34.279263, 33.787258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130203, 34.423809, 33.700504>,  <24.845499, 34.664719, 33.555916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130203, 34.423809, 33.700504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091915, -0.430327, -0.897981,
		0.696382, 0.672373, -0.250932,
		0.711761, -0.602273, 0.361473,
		25.343731, 34.243126, 33.808945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462296, 34.741573, 33.144581>,  <24.845499, 34.664719, 33.555916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462296, 34.741573, 33.144581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513556, 34.381554, 33.311192>,  <25.544312, 34.165543, 33.411156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513556, 34.381554, 33.311192>,  <25.462296, 34.741573, 33.144581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513556, 34.381554, 33.311192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200750, -0.387750, -0.899638,
		0.971224, 0.198907, 0.130993,
		0.128152, -0.900047, 0.416523,
		25.552002, 34.111538, 33.436150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104164, 34.488361, 32.939301>,  <25.462296, 34.741573, 33.144581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104164, 34.488361, 32.939301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883970, 34.170856, 33.042767>,  <25.751854, 33.980354, 33.104847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883970, 34.170856, 33.042767>,  <26.104164, 34.488361, 32.939301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883970, 34.170856, 33.042767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137136, -0.391607, -0.909856,
		0.823504, -0.465391, 0.324428,
		-0.550487, -0.793760, 0.258668,
		25.718824, 33.932728, 33.120365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528318, 33.860600, 32.854839>,  <26.104164, 34.488361, 32.939301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528318, 33.860600, 32.854839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132048, 33.823853, 32.814606>,  <25.894285, 33.801804, 32.790466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132048, 33.823853, 32.814606>,  <26.528318, 33.860600, 32.854839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132048, 33.823853, 32.814606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125436, -0.327154, -0.936609,
		0.053140, -0.940495, 0.335628,
		-0.990677, -0.091871, -0.100587,
		25.834845, 33.796291, 32.784431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307554, 33.185070, 32.591808>,  <26.528318, 33.860600, 32.854839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307554, 33.185070, 32.591808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072569, 33.489479, 32.481735>,  <25.931578, 33.672127, 32.415691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072569, 33.489479, 32.481735>,  <26.307554, 33.185070, 32.591808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072569, 33.489479, 32.481735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281651, -0.126514, -0.951140,
		-0.758657, -0.636265, -0.140022,
		-0.587462, 0.761027, -0.275185,
		25.896330, 33.717789, 32.399181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132118, 32.976604, 31.942730>,  <26.307554, 33.185070, 32.591808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132118, 32.976604, 31.942730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017025, 33.359684, 31.940762>,  <25.947969, 33.589531, 31.939581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017025, 33.359684, 31.940762>,  <26.132118, 32.976604, 31.942730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017025, 33.359684, 31.940762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286714, 0.081236, -0.954566,
		-0.913786, -0.276071, -0.297960,
		-0.287733, 0.957698, -0.004921,
		25.930706, 33.646992, 31.939285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674036, 33.041435, 31.420752>,  <26.132118, 32.976604, 31.942730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674036, 33.041435, 31.420752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740635, 33.434429, 31.454227>,  <25.780594, 33.670227, 31.474314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740635, 33.434429, 31.454227>,  <25.674036, 33.041435, 31.420752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740635, 33.434429, 31.454227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159990, 0.110668, -0.980895,
		-0.972976, 0.149928, 0.175613,
		0.166499, 0.982484, 0.083691,
		25.790585, 33.729176, 31.479334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145973, 33.358070, 31.038519>,  <25.674036, 33.041435, 31.420752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145973, 33.358070, 31.038519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438347, 33.630135, 31.060858>,  <25.613771, 33.793373, 31.074261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438347, 33.630135, 31.060858>,  <25.145973, 33.358070, 31.038519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438347, 33.630135, 31.060858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058735, 0.018832, -0.998096,
		-0.679913, 0.732825, -0.026184,
		0.730936, 0.680157, 0.055847,
		25.657627, 33.834183, 31.077612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079735, 33.644184, 30.457178>,  <25.145973, 33.358070, 31.038519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079735, 33.644184, 30.457178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458023, 33.717701, 30.564386>,  <25.684996, 33.761810, 30.628712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458023, 33.717701, 30.564386>,  <25.079735, 33.644184, 30.457178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458023, 33.717701, 30.564386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257906, 0.077342, -0.963069,
		-0.197735, 0.979917, 0.025742,
		0.945719, 0.183794, 0.268020,
		25.741739, 33.772839, 30.644793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061371, 34.147720, 29.860359>,  <25.079735, 33.644184, 30.457178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061371, 34.147720, 29.860359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359615, 34.388134, 29.745245>,  <25.538563, 34.532383, 29.676176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359615, 34.388134, 29.745245>,  <25.061371, 34.147720, 29.860359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359615, 34.388134, 29.745245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567736, -0.346826, 0.746584,
		0.348912, -0.720048, -0.599827,
		0.745611, 0.601035, -0.287786,
		25.583300, 34.568443, 29.658909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703482, 33.749966, 29.833704>,  <25.061371, 34.147720, 29.860359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703482, 33.749966, 29.833704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755865, 34.136642, 29.921656>,  <25.787296, 34.368649, 29.974426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755865, 34.136642, 29.921656>,  <25.703482, 33.749966, 29.833704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755865, 34.136642, 29.921656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534818, -0.255638, 0.805369,
		0.834757, 0.012125, -0.550485,
		0.130960, 0.966697, 0.219880,
		25.795153, 34.426651, 29.987619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391888, 33.795227, 29.961798>,  <25.703482, 33.749966, 29.833704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391888, 33.795227, 29.961798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179564, 34.078247, 30.148396>,  <26.052170, 34.248058, 30.260353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179564, 34.078247, 30.148396>,  <26.391888, 33.795227, 29.961798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179564, 34.078247, 30.148396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349132, -0.318999, 0.881105,
		0.772237, 0.630566, -0.077702,
		-0.530808, 0.707550, 0.466493,
		26.020321, 34.290512, 30.288343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702375, 34.116985, 30.568602>,  <26.391888, 33.795227, 29.961798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702375, 34.116985, 30.568602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324142, 34.216969, 30.651930>,  <26.097202, 34.276958, 30.701927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324142, 34.216969, 30.651930>,  <26.702375, 34.116985, 30.568602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324142, 34.216969, 30.651930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181536, -0.126068, 0.975270,
		0.270042, 0.960014, 0.073830,
		-0.945580, 0.249961, 0.208321,
		26.040468, 34.291958, 30.714426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675690, 34.686611, 31.178446>,  <26.702375, 34.116985, 30.568602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675690, 34.686611, 31.178446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353947, 34.450932, 31.147823>,  <26.160902, 34.309525, 31.129450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353947, 34.450932, 31.147823>,  <26.675690, 34.686611, 31.178446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353947, 34.450932, 31.147823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068415, -0.036149, 0.997002,
		-0.590196, 0.807182, -0.011233,
		-0.804356, -0.589195, -0.076558,
		26.112640, 34.274174, 31.124855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279444, 34.894844, 31.729729>,  <26.675690, 34.686611, 31.178446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279444, 34.894844, 31.729729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112417, 34.542049, 31.642336>,  <26.012201, 34.330372, 31.589901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112417, 34.542049, 31.642336>,  <26.279444, 34.894844, 31.729729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112417, 34.542049, 31.642336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230654, -0.129685, 0.964355,
		-0.878885, 0.453075, -0.149282,
		-0.417565, -0.881989, -0.218481,
		25.987148, 34.277454, 31.576792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677824, 34.888470, 32.035648>,  <26.279444, 34.894844, 31.729729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677824, 34.888470, 32.035648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762129, 34.499729, 31.993532>,  <25.812712, 34.266483, 31.968262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762129, 34.499729, 31.993532>,  <25.677824, 34.888470, 32.035648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762129, 34.499729, 31.993532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276819, -0.162640, 0.947058,
		-0.937524, -0.170456, -0.303305,
		0.210761, -0.971850, -0.105294,
		25.825357, 34.208176, 31.961945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052340, 34.648888, 32.082397>,  <25.677824, 34.888470, 32.035648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052340, 34.648888, 32.082397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344488, 34.389690, 32.168804>,  <25.519777, 34.234173, 32.220650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344488, 34.389690, 32.168804>,  <25.052340, 34.648888, 32.082397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344488, 34.389690, 32.168804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251913, 0.038422, 0.966987,
		-0.634897, -0.760679, -0.135174,
		0.730373, -0.647990, 0.216019,
		25.563601, 34.195293, 32.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760107, 34.182690, 32.604321>,  <25.052340, 34.648888, 32.082397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760107, 34.182690, 32.604321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159872, 34.196205, 32.606506>,  <25.399731, 34.204315, 32.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159872, 34.196205, 32.606506>,  <24.760107, 34.182690, 32.604321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159872, 34.196205, 32.606506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005091, -0.011137, 0.999925,
		0.033852, -0.999367, -0.010959,
		0.999414, 0.033793, 0.005465,
		25.459696, 34.206341, 32.608147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005840, 33.761181, 33.094749>,  <24.760107, 34.182690, 32.604321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005840, 33.761181, 33.094749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307137, 34.016888, 33.032829>,  <25.487915, 34.170311, 32.995678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307137, 34.016888, 33.032829>,  <25.005840, 33.761181, 33.094749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307137, 34.016888, 33.032829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057191, 0.170809, 0.983643,
		0.655252, -0.749775, 0.092100,
		0.753243, 0.639267, -0.154804,
		25.533110, 34.208668, 32.986389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882311, 32.959549, 32.918690>,  <25.005840, 33.761181, 33.094749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882311, 32.959549, 32.918690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243151, 33.131577, 32.904503>,  <25.459656, 33.234791, 32.895992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243151, 33.131577, 32.904503>,  <24.882311, 32.959549, 32.918690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243151, 33.131577, 32.904503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092084, 0.272139, 0.957842,
		0.421586, -0.860804, 0.285099,
		0.902101, 0.430066, -0.035464,
		25.513781, 33.260597, 32.893864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181847, 32.880478, 33.623199>,  <24.882311, 32.959549, 32.918690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181847, 32.880478, 33.623199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414186, 33.158443, 33.453632>,  <25.553591, 33.325222, 33.351894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414186, 33.158443, 33.453632>,  <25.181847, 32.880478, 33.623199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414186, 33.158443, 33.453632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021260, 0.507646, 0.861303,
		0.813732, -0.509301, 0.280093,
		0.580851, 0.694916, -0.423916,
		25.588442, 33.366917, 33.326458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787910, 32.990780, 34.040157>,  <25.181847, 32.880478, 33.623199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787910, 32.990780, 34.040157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726336, 33.336231, 33.848137>,  <25.689390, 33.543503, 33.732925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726336, 33.336231, 33.848137>,  <25.787910, 32.990780, 34.040157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726336, 33.336231, 33.848137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179439, 0.502197, 0.845932,
		0.971650, 0.044082, -0.232277,
		-0.153939, 0.863629, -0.480049,
		25.680153, 33.595322, 33.704121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310959, 33.492729, 34.264645>,  <25.787910, 32.990780, 34.040157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310959, 33.492729, 34.264645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002953, 33.710938, 34.132294>,  <25.818150, 33.841862, 34.052883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002953, 33.710938, 34.132294>,  <26.310959, 33.492729, 34.264645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002953, 33.710938, 34.132294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009448, 0.528292, 0.849010,
		0.637956, 0.650625, -0.411947,
		-0.770015, 0.545523, -0.330880,
		25.771948, 33.874596, 34.033031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592869, 34.176926, 34.289978>,  <26.310959, 33.492729, 34.264645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592869, 34.176926, 34.289978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193163, 34.192211, 34.291416>,  <25.953341, 34.201382, 34.292278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193163, 34.192211, 34.291416>,  <26.592869, 34.176926, 34.289978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193163, 34.192211, 34.291416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022907, 0.518498, 0.854772,
		0.030800, 0.854225, -0.518991,
		-0.999263, 0.038216, 0.003598,
		25.893383, 34.203674, 34.292496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313696, 34.812332, 34.431896>,  <26.592869, 34.176926, 34.289978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313696, 34.812332, 34.431896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064892, 34.522491, 34.550594>,  <25.915609, 34.348587, 34.621811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064892, 34.522491, 34.550594>,  <26.313696, 34.812332, 34.431896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064892, 34.522491, 34.550594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213349, 0.521477, 0.826162,
		-0.753382, 0.450572, -0.478958,
		-0.622011, -0.724601, 0.296742,
		25.878288, 34.305111, 34.639618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904161, 34.663700, 35.018597>,  <26.313696, 34.812332, 34.431896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904161, 34.663700, 35.018597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022659, 34.855988, 34.688469>,  <27.093758, 34.971359, 34.490395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022659, 34.855988, 34.688469>,  <26.904161, 34.663700, 35.018597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022659, 34.855988, 34.688469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796005, 0.601810, 0.064811,
		0.527840, 0.637756, 0.560939,
		0.296245, 0.480721, -0.825316,
		27.111532, 35.000202, 34.440872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949680, 35.445572, 35.122005>,  <26.904161, 34.663700, 35.018597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949680, 35.445572, 35.122005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864779, 35.348881, 34.743267>,  <26.813837, 35.290867, 34.516026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864779, 35.348881, 34.743267>,  <26.949680, 35.445572, 35.122005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864779, 35.348881, 34.743267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751151, 0.660131, -0.000143,
		0.625077, 0.711193, -0.321688,
		-0.212255, -0.241726, -0.946846,
		26.801102, 35.276363, 34.459213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917194, 36.103676, 34.725597>,  <26.949680, 35.445572, 35.122005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917194, 36.103676, 34.725597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738117, 35.820545, 34.507038>,  <26.630671, 35.650665, 34.375900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738117, 35.820545, 34.507038>,  <26.917194, 36.103676, 34.725597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738117, 35.820545, 34.507038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767151, 0.617980, -0.171990,
		0.459404, 0.342174, -0.819674,
		-0.447691, -0.707826, -0.546401,
		26.603809, 35.608196, 34.343117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718227, 36.337082, 34.774532>,  <26.917194, 36.103676, 34.725597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718227, 36.337082, 34.774532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849237, 36.398968, 34.401695>,  <27.927843, 36.436100, 34.177994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849237, 36.398968, 34.401695>,  <27.718227, 36.337082, 34.774532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849237, 36.398968, 34.401695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523849, -0.850732, 0.042863,
		-0.786326, -0.502313, -0.359685,
		0.327526, 0.154716, -0.932089,
		27.947495, 36.445381, 34.122070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718754, 35.661499, 34.553532>,  <27.718227, 36.337082, 34.774532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718754, 35.661499, 34.553532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933060, 35.861553, 34.281406>,  <28.061644, 35.981586, 34.118130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933060, 35.861553, 34.281406>,  <27.718754, 35.661499, 34.553532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933060, 35.861553, 34.281406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578434, -0.804348, -0.135785,
		-0.615120, -0.320768, -0.720233,
		0.535763, 0.500132, -0.680314,
		28.093788, 36.011593, 34.077312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823832, 35.167248, 33.986561>,  <27.718754, 35.661499, 34.553532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823832, 35.167248, 33.986561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110020, 35.439991, 33.925674>,  <28.281733, 35.603638, 33.889145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110020, 35.439991, 33.925674>,  <27.823832, 35.167248, 33.986561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110020, 35.439991, 33.925674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627759, -0.723053, -0.288293,
		-0.306634, 0.110712, -0.945367,
		0.715468, 0.681863, -0.152213,
		28.324659, 35.644550, 33.880009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602266, 35.927677, 33.790524>,  <27.823832, 35.167248, 33.986561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602266, 35.927677, 33.790524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231165, 36.042946, 33.885380>,  <27.008505, 36.112106, 33.942295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231165, 36.042946, 33.885380>,  <27.602266, 35.927677, 33.790524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231165, 36.042946, 33.885380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177697, -0.217679, 0.959708,
		0.328178, 0.932510, 0.150746,
		-0.927752, 0.288168, 0.237142,
		26.952839, 36.129395, 33.956524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572578, 35.619541, 33.010063>,  <27.602266, 35.927677, 33.790524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572578, 35.619541, 33.010063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480951, 35.835041, 32.685776>,  <27.425974, 35.964340, 32.491203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480951, 35.835041, 32.685776>,  <27.572578, 35.619541, 33.010063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480951, 35.835041, 32.685776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454162, 0.677507, 0.578551,
		0.860967, 0.500728, 0.089485,
		-0.229070, 0.538754, -0.810723,
		27.412230, 35.996666, 32.442558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163601, 35.128517, 33.149796>,  <27.572578, 35.619541, 33.010063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163601, 35.128517, 33.149796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435366, 35.317154, 33.374649>,  <28.598425, 35.430336, 33.509563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435366, 35.317154, 33.374649>,  <28.163601, 35.128517, 33.149796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435366, 35.317154, 33.374649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594632, -0.802723, -0.045260,
		0.429895, 0.365015, -0.825806,
		0.679414, 0.471594, 0.562136,
		28.639191, 35.458633, 33.543289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722525, 35.014687, 32.828991>,  <28.163601, 35.128517, 33.149796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722525, 35.014687, 32.828991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820885, 35.070255, 33.212708>,  <28.879900, 35.103596, 33.442936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820885, 35.070255, 33.212708>,  <28.722525, 35.014687, 32.828991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820885, 35.070255, 33.212708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629082, -0.775799, -0.048911,
		0.737421, 0.615498, -0.278160,
		0.245901, 0.138917, 0.959289,
		28.894655, 35.111931, 33.500496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316133, 34.685028, 32.858524>,  <28.722525, 35.014687, 32.828991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316133, 34.685028, 32.858524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203859, 34.711983, 33.241497>,  <29.136494, 34.728153, 33.471279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203859, 34.711983, 33.241497>,  <29.316133, 34.685028, 32.858524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203859, 34.711983, 33.241497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402133, -0.897501, 0.181057,
		0.871495, 0.435835, 0.224820,
		-0.280687, 0.067383, 0.957431,
		29.119654, 34.732197, 33.528725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766094, 34.125103, 33.057560>,  <29.316133, 34.685028, 32.858524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766094, 34.125103, 33.057560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697069, 33.848431, 32.777046>,  <29.655653, 33.682426, 32.608738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697069, 33.848431, 32.777046>,  <29.766094, 34.125103, 33.057560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697069, 33.848431, 32.777046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581519, 0.646189, -0.494243,
		0.795021, 0.322523, -0.513733,
		-0.172564, -0.691679, -0.701286,
		29.645300, 33.640926, 32.566662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417295, 33.581848, 33.474636>,  <29.766094, 34.125103, 33.057560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417295, 33.581848, 33.474636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478848, 33.676498, 33.858372>,  <29.515779, 33.733288, 34.088612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478848, 33.676498, 33.858372>,  <29.417295, 33.581848, 33.474636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478848, 33.676498, 33.858372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327819, 0.928136, -0.176348,
		-0.932124, -0.287352, 0.220394,
		0.153882, 0.236628, 0.959337,
		29.525013, 33.747486, 34.146172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759911, 33.889202, 33.829971>,  <29.417295, 33.581848, 33.474636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759911, 33.889202, 33.829971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083986, 34.043476, 34.006535>,  <29.278431, 34.136040, 34.112473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083986, 34.043476, 34.006535>,  <28.759911, 33.889202, 33.829971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083986, 34.043476, 34.006535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346994, 0.922491, -0.169133,
		-0.472431, -0.016138, 0.881220,
		0.810188, 0.385682, 0.441413,
		29.327044, 34.159180, 34.138958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564430, 34.320892, 34.364437>,  <28.759911, 33.889202, 33.829971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564430, 34.320892, 34.364437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934210, 34.453281, 34.288696>,  <29.156076, 34.532715, 34.243252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934210, 34.453281, 34.288696>,  <28.564430, 34.320892, 34.364437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934210, 34.453281, 34.288696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353698, 0.929833, -0.101530,
		0.142464, 0.160833, 0.976646,
		0.924447, 0.330973, -0.189354,
		29.211544, 34.552574, 34.231892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756416, 34.790428, 34.756405>,  <28.564430, 34.320892, 34.364437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756416, 34.790428, 34.756405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927034, 34.807785, 34.395035>,  <29.029406, 34.818199, 34.178211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927034, 34.807785, 34.395035>,  <28.756416, 34.790428, 34.756405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927034, 34.807785, 34.395035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435746, 0.885146, -0.163223,
		0.792580, 0.463286, 0.396464,
		0.426547, 0.043390, -0.903424,
		29.054998, 34.820801, 34.124008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069342, 35.398518, 34.733746>,  <28.756416, 34.790428, 34.756405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069342, 35.398518, 34.733746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041719, 35.307728, 34.345165>,  <29.025146, 35.253254, 34.112019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041719, 35.307728, 34.345165>,  <29.069342, 35.398518, 34.733746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041719, 35.307728, 34.345165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277536, 0.939704, -0.199828,
		0.958230, 0.255813, -0.127884,
		-0.069055, -0.226973, -0.971450,
		29.021004, 35.239635, 34.053730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461607, 35.991123, 34.343040>,  <29.069342, 35.398518, 34.733746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461607, 35.991123, 34.343040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205284, 35.814983, 34.091499>,  <29.051491, 35.709301, 33.940575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205284, 35.814983, 34.091499>,  <29.461607, 35.991123, 34.343040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205284, 35.814983, 34.091499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447433, 0.879857, -0.160175,
		0.623833, 0.178728, -0.760847,
		-0.640809, -0.440350, -0.628853,
		29.013042, 35.682877, 33.902843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363934, 36.415466, 33.690628>,  <29.461607, 35.991123, 34.343040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363934, 36.415466, 33.690628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038452, 36.193100, 33.758556>,  <28.843163, 36.059681, 33.799313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038452, 36.193100, 33.758556>,  <29.363934, 36.415466, 33.690628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038452, 36.193100, 33.758556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567494, 0.822997, -0.025034,
		-0.125848, -0.116745, -0.985156,
		-0.813703, -0.555920, 0.169824,
		28.794342, 36.026325, 33.809505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849270, 36.555298, 33.141117>,  <29.363934, 36.415466, 33.690628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849270, 36.555298, 33.141117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619192, 36.404182, 33.431339>,  <28.481146, 36.313515, 33.605473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619192, 36.404182, 33.431339>,  <28.849270, 36.555298, 33.141117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619192, 36.404182, 33.431339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590312, 0.805719, -0.048451,
		-0.566291, -0.456173, -0.686455,
		-0.575192, -0.377786, 0.725556,
		28.446634, 36.290848, 33.649006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301151, 36.717499, 32.875927>,  <28.849270, 36.555298, 33.141117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301151, 36.717499, 32.875927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200962, 36.637749, 33.254875>,  <28.140848, 36.589897, 33.482243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200962, 36.637749, 33.254875>,  <28.301151, 36.717499, 32.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200962, 36.637749, 33.254875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475412, 0.877780, 0.059040,
		-0.843354, -0.435603, -0.314649,
		-0.250474, -0.199379, 0.947370,
		28.125820, 36.577934, 33.539085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591171, 36.809872, 32.842789>,  <28.301151, 36.717499, 32.875927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591171, 36.809872, 32.842789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724371, 36.858685, 33.216789>,  <27.804291, 36.887974, 33.441189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724371, 36.858685, 33.216789>,  <27.591171, 36.809872, 32.842789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724371, 36.858685, 33.216789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633281, 0.763617, 0.125876,
		-0.698619, -0.634032, 0.331565,
		0.332998, 0.122035, 0.934997,
		27.824270, 36.895294, 33.497288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026718, 36.965580, 33.344620>,  <27.591171, 36.809872, 32.842789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026718, 36.965580, 33.344620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364132, 37.112812, 33.501060>,  <27.566580, 37.201153, 33.594925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364132, 37.112812, 33.501060>,  <27.026718, 36.965580, 33.344620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364132, 37.112812, 33.501060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481823, 0.840349, 0.248316,
		-0.237262, -0.397906, 0.886215,
		0.843537, 0.368083, 0.391103,
		27.617193, 37.223236, 33.618393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592428, 37.177029, 32.685448>,  <27.026718, 36.965580, 33.344620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592428, 37.177029, 32.685448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451725, 37.162411, 32.311295>,  <26.367304, 37.153641, 32.086803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451725, 37.162411, 32.311295>,  <26.592428, 37.177029, 32.685448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451725, 37.162411, 32.311295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935952, 0.003542, -0.352110,
		0.016179, -0.999326, 0.032952,
		-0.351756, -0.036538, -0.935378,
		26.346199, 37.151447, 32.030682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876831, 36.516403, 32.170940>,  <26.592428, 37.177029, 32.685448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876831, 36.516403, 32.170940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795950, 36.864594, 31.991434>,  <26.747421, 37.073505, 31.883730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795950, 36.864594, 31.991434>,  <26.876831, 36.516403, 32.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795950, 36.864594, 31.991434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900336, -0.015090, -0.434933,
		-0.385369, -0.491987, -0.780666,
		-0.202201, 0.870472, -0.448769,
		26.735289, 37.125736, 31.856804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837603, 36.571949, 31.437515>,  <26.876831, 36.516403, 32.170940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837603, 36.571949, 31.437515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951624, 36.909676, 31.619009>,  <27.020037, 37.112312, 31.727905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951624, 36.909676, 31.619009>,  <26.837603, 36.571949, 31.437515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951624, 36.909676, 31.619009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889732, -0.056994, -0.452912,
		-0.356541, 0.532807, -0.767461,
		0.285055, 0.844316, 0.453734,
		27.037140, 37.162971, 31.755129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286686, 37.082413, 31.026697>,  <26.837603, 36.571949, 31.437515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286686, 37.082413, 31.026697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413719, 37.197224, 31.388195>,  <27.489939, 37.266109, 31.605093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413719, 37.197224, 31.388195>,  <27.286686, 37.082413, 31.026697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413719, 37.197224, 31.388195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906786, 0.186759, -0.377969,
		-0.277272, 0.939539, -0.200964,
		0.317585, 0.287031, 0.903744,
		27.508995, 37.283333, 31.659319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574371, 37.839874, 31.034657>,  <27.286686, 37.082413, 31.026697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574371, 37.839874, 31.034657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727919, 37.626907, 31.336432>,  <27.820047, 37.499126, 31.517496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727919, 37.626907, 31.336432>,  <27.574371, 37.839874, 31.034657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727919, 37.626907, 31.336432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919323, 0.296935, -0.258216,
		-0.086540, 0.792692, 0.603449,
		0.383871, -0.532418, 0.754436,
		27.843081, 37.467182, 31.562763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087843, 38.385849, 31.485348>,  <27.574371, 37.839874, 31.034657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087843, 38.385849, 31.485348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197206, 38.001617, 31.505457>,  <28.262825, 37.771076, 31.517523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197206, 38.001617, 31.505457>,  <28.087843, 38.385849, 31.485348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197206, 38.001617, 31.505457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958681, 0.267849, -0.095853,
		0.078609, 0.074404, 0.994125,
		0.273407, -0.960584, 0.050275,
		28.279228, 37.713444, 31.520540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637354, 38.337730, 32.007450>,  <28.087843, 38.385849, 31.485348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637354, 38.337730, 32.007450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645851, 38.039127, 31.741436>,  <28.650949, 37.859966, 31.581827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645851, 38.039127, 31.741436>,  <28.637354, 38.337730, 32.007450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645851, 38.039127, 31.741436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996234, 0.071737, -0.048704,
		0.084066, -0.661500, 0.745218,
		0.021242, -0.746506, -0.665040,
		28.652224, 37.815174, 31.541924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099846, 37.749599, 32.292881>,  <28.637354, 38.337730, 32.007450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099846, 37.749599, 32.292881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059170, 37.810505, 31.899643>,  <29.034763, 37.847050, 31.663700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059170, 37.810505, 31.899643>,  <29.099846, 37.749599, 32.292881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059170, 37.810505, 31.899643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976356, 0.204764, -0.069280,
		0.190754, -0.966896, -0.169487,
		-0.101691, 0.152265, -0.983094,
		29.028662, 37.856186, 31.604715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849649, 37.668617, 32.035530>,  <29.099846, 37.749599, 32.292881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849649, 37.668617, 32.035530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625809, 37.847099, 31.756174>,  <29.491505, 37.954189, 31.588560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625809, 37.847099, 31.756174>,  <29.849649, 37.668617, 32.035530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625809, 37.847099, 31.756174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797620, 0.518801, -0.307649,
		0.225049, -0.729209, -0.646225,
		-0.559602, 0.446206, -0.698388,
		29.457928, 37.980961, 31.546658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634670, 37.741268, 31.847746>,  <29.849649, 37.668617, 32.035530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634670, 37.741268, 31.847746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444777, 38.008209, 32.077274>,  <30.330841, 38.168373, 32.214993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444777, 38.008209, 32.077274>,  <30.634670, 37.741268, 31.847746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444777, 38.008209, 32.077274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148277, -0.703301, 0.695257,
		0.867548, 0.244978, 0.432834,
		-0.474735, 0.667349, 0.573823,
		30.302357, 38.208412, 32.249420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956989, 37.712074, 32.540829>,  <30.634670, 37.741268, 31.847746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956989, 37.712074, 32.540829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569336, 37.809723, 32.554630>,  <30.336744, 37.868313, 32.562912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569336, 37.809723, 32.554630>,  <30.956989, 37.712074, 32.540829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569336, 37.809723, 32.554630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150216, -0.695649, 0.702501,
		0.195498, 0.675632, 0.710846,
		-0.969131, 0.244118, 0.034507,
		30.278597, 37.882957, 32.564983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715584, 37.867180, 33.211990>,  <30.956989, 37.712074, 32.540829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715584, 37.867180, 33.211990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418831, 37.699734, 33.002468>,  <30.240780, 37.599266, 32.876755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418831, 37.699734, 33.002468>,  <30.715584, 37.867180, 33.211990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418831, 37.699734, 33.002468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281509, -0.514554, 0.809930,
		-0.608574, 0.748330, 0.263895,
		-0.741883, -0.418613, -0.523806,
		30.196266, 37.574150, 32.845325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336317, 38.237572, 33.112831>,  <30.715584, 37.867180, 33.211990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336317, 38.237572, 33.112831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430479, 38.563602, 33.324581>,  <31.486977, 38.759220, 33.451630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430479, 38.563602, 33.324581>,  <31.336317, 38.237572, 33.112831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430479, 38.563602, 33.324581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970017, 0.163175, 0.180114,
		0.060426, -0.555901, 0.829049,
		0.235406, 0.815076, 0.529373,
		31.501101, 38.808125, 33.483395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074528, 38.082870, 33.323277>,  <31.336317, 38.237572, 33.112831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074528, 38.082870, 33.323277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454159, 37.962582, 33.360840>,  <32.681938, 37.890408, 33.383377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454159, 37.962582, 33.360840>,  <32.074528, 38.082870, 33.323277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454159, 37.962582, 33.360840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036229, -0.400275, -0.915679,
		0.312958, 0.865646, -0.390786,
		0.949076, -0.300727, 0.093907,
		32.738880, 37.872364, 33.389011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389553, 38.218475, 32.707676>,  <32.074528, 38.082870, 33.323277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389553, 38.218475, 32.707676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579845, 37.906364, 32.870083>,  <32.694019, 37.719097, 32.967525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579845, 37.906364, 32.870083>,  <32.389553, 38.218475, 32.707676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579845, 37.906364, 32.870083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005673, -0.458866, -0.888487,
		0.879574, 0.424982, -0.213869,
		0.475728, -0.780277, 0.406017,
		32.722565, 37.672279, 32.991890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288239, 38.650085, 32.111778>,  <32.389553, 38.218475, 32.707676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288239, 38.650085, 32.111778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320175, 38.745068, 31.724535>,  <32.339336, 38.802055, 31.492188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320175, 38.745068, 31.724535>,  <32.288239, 38.650085, 32.111778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320175, 38.745068, 31.724535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342036, -0.918774, -0.197144,
		-0.936289, -0.315390, -0.154570,
		0.079838, 0.237452, -0.968113,
		32.344128, 38.816303, 31.434101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085758, 38.014080, 31.771585>,  <32.288239, 38.650085, 32.111778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085758, 38.014080, 31.771585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249420, 38.249191, 31.492414>,  <32.347618, 38.390259, 31.324911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249420, 38.249191, 31.492414>,  <32.085758, 38.014080, 31.771585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249420, 38.249191, 31.492414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405553, -0.802328, -0.437946,
		-0.817383, -0.103857, -0.566655,
		0.409159, 0.587778, -0.697929,
		32.372169, 38.425526, 31.283035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008102, 37.638432, 31.196634>,  <32.085758, 38.014080, 31.771585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008102, 37.638432, 31.196634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298298, 37.899132, 31.108192>,  <32.472416, 38.055550, 31.055128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298298, 37.899132, 31.108192>,  <32.008102, 37.638432, 31.196634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298298, 37.899132, 31.108192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502658, -0.721227, -0.476619,
		-0.470100, 0.234644, -0.850851,
		0.725493, 0.651746, -0.221103,
		32.515945, 38.094654, 31.041861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159111, 37.577751, 30.528475>,  <32.008102, 37.638432, 31.196634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159111, 37.577751, 30.528475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494091, 37.764359, 30.642340>,  <32.695080, 37.876324, 30.710659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494091, 37.764359, 30.642340>,  <32.159111, 37.577751, 30.528475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494091, 37.764359, 30.642340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546035, -0.692616, -0.471305,
		-0.022709, 0.550133, -0.834768,
		0.837455, 0.466516, 0.284663,
		32.745327, 37.904312, 30.727739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513092, 37.753948, 29.902336>,  <32.159111, 37.577751, 30.528475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513092, 37.753948, 29.902336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790546, 37.771149, 30.189953>,  <32.957020, 37.781467, 30.362524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790546, 37.771149, 30.189953>,  <32.513092, 37.753948, 29.902336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790546, 37.771149, 30.189953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587757, -0.610867, -0.530455,
		0.416429, 0.790565, -0.448993,
		0.693634, 0.043002, 0.719043,
		32.998638, 37.784050, 30.405666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152660, 37.926098, 29.558001>,  <32.513092, 37.753948, 29.902336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152660, 37.926098, 29.558001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232941, 37.728241, 29.896244>,  <33.281109, 37.609528, 30.099190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232941, 37.728241, 29.896244>,  <33.152660, 37.926098, 29.558001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232941, 37.728241, 29.896244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546917, -0.659561, -0.515617,
		0.812775, 0.565959, 0.138156,
		0.200696, -0.494641, 0.845607,
		33.293148, 37.579849, 30.149927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884285, 37.861496, 29.612009>,  <33.152660, 37.926098, 29.558001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884285, 37.861496, 29.612009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719570, 37.568363, 29.828671>,  <33.620739, 37.392483, 29.958668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719570, 37.568363, 29.828671>,  <33.884285, 37.861496, 29.612009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719570, 37.568363, 29.828671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497887, -0.678759, -0.539810,
		0.763242, 0.047395, 0.644372,
		-0.411789, -0.732830, 0.541655,
		33.596035, 37.348515, 29.991167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417618, 37.414284, 29.556019>,  <33.884285, 37.861496, 29.612009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417618, 37.414284, 29.556019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112057, 37.201439, 29.702068>,  <33.928722, 37.073730, 29.789698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112057, 37.201439, 29.702068>,  <34.417618, 37.414284, 29.556019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112057, 37.201439, 29.702068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297325, -0.792361, -0.532693,
		0.572761, -0.298364, 0.763494,
		-0.763900, -0.532112, 0.365122,
		33.882885, 37.041805, 29.811605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720936, 36.679901, 29.684433>,  <34.417618, 37.414284, 29.556019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720936, 36.679901, 29.684433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327084, 36.610210, 29.679676>,  <34.090771, 36.568398, 29.676823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327084, 36.610210, 29.679676>,  <34.720936, 36.679901, 29.684433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327084, 36.610210, 29.679676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157688, -0.857775, -0.489241,
		0.075041, -0.483598, 0.872068,
		-0.984634, -0.174228, -0.011890,
		34.031693, 36.557941, 29.676109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653450, 35.971066, 29.887508>,  <34.720936, 36.679901, 29.684433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653450, 35.971066, 29.887508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314754, 36.090076, 29.711094>,  <34.111538, 36.161484, 29.605246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314754, 36.090076, 29.711094>,  <34.653450, 35.971066, 29.887508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314754, 36.090076, 29.711094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001273, -0.830127, -0.557573,
		-0.532009, -0.471557, 0.703279,
		-0.846738, 0.297529, -0.441035,
		34.060734, 36.179337, 29.578783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269428, 35.416348, 29.753277>,  <34.653450, 35.971066, 29.887508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269428, 35.416348, 29.753277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104000, 35.688202, 29.510939>,  <34.004742, 35.851315, 29.365536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104000, 35.688202, 29.510939>,  <34.269428, 35.416348, 29.753277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104000, 35.688202, 29.510939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022470, -0.657597, -0.753034,
		-0.910195, -0.325045, 0.256690,
		-0.413569, 0.679641, -0.605846,
		33.979931, 35.892094, 29.329185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894276, 35.062988, 29.273592>,  <34.269428, 35.416348, 29.753277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894276, 35.062988, 29.273592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908962, 35.422302, 29.098440>,  <33.917774, 35.637890, 28.993349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908962, 35.422302, 29.098440>,  <33.894276, 35.062988, 29.273592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908962, 35.422302, 29.098440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204453, -0.435658, -0.876585,
		-0.978187, -0.057337, -0.199655,
		0.036721, 0.898285, -0.437877,
		33.919979, 35.691788, 28.967077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569809, 34.951462, 28.684093>,  <33.894276, 35.062988, 29.273592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569809, 34.951462, 28.684093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783539, 35.282948, 28.617476>,  <33.911777, 35.481838, 28.577505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783539, 35.282948, 28.617476>,  <33.569809, 34.951462, 28.684093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783539, 35.282948, 28.617476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189255, -0.309316, -0.931937,
		-0.823822, 0.466434, -0.322112,
		0.534321, 0.828712, -0.166547,
		33.943836, 35.531563, 28.567511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256462, 35.277203, 27.980871>,  <33.569809, 34.951462, 28.684093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256462, 35.277203, 27.980871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624016, 35.428909, 28.024338>,  <33.844547, 35.519932, 28.050417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624016, 35.428909, 28.024338>,  <33.256462, 35.277203, 27.980871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624016, 35.428909, 28.024338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049250, 0.163008, -0.985395,
		-0.391437, 0.910817, 0.131107,
		0.918886, 0.379263, 0.108665,
		33.899681, 35.542686, 28.056936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282688, 35.869957, 27.444483>,  <33.256462, 35.277203, 27.980871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282688, 35.869957, 27.444483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661728, 35.769257, 27.523140>,  <33.889153, 35.708836, 27.570333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661728, 35.769257, 27.523140>,  <33.282688, 35.869957, 27.444483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661728, 35.769257, 27.523140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240029, 0.154944, -0.958321,
		0.210792, 0.955307, 0.207254,
		0.947603, -0.251754, 0.196641,
		33.946011, 35.693729, 27.582132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654198, 36.268402, 27.074497>,  <33.282688, 35.869957, 27.444483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654198, 36.268402, 27.074497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925610, 35.978954, 27.125048>,  <34.088455, 35.805286, 27.155378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925610, 35.978954, 27.125048>,  <33.654198, 36.268402, 27.074497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925610, 35.978954, 27.125048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168912, -0.013730, -0.985535,
		0.714892, 0.690058, 0.112913,
		0.678527, -0.723623, 0.126375,
		34.129169, 35.761868, 27.162960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249298, 36.467712, 26.670332>,  <33.654198, 36.268402, 27.074497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249298, 36.467712, 26.670332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264870, 36.071621, 26.723904>,  <34.274212, 35.833965, 26.756046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264870, 36.071621, 26.723904>,  <34.249298, 36.467712, 26.670332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264870, 36.071621, 26.723904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163670, -0.125902, -0.978448,
		0.985747, 0.060011, 0.157169,
		0.038930, -0.990226, 0.133929,
		34.276550, 35.774551, 26.764082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635696, 36.370914, 26.121649>,  <34.249298, 36.467712, 26.670332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635696, 36.370914, 26.121649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476353, 36.026711, 26.248669>,  <34.380745, 35.820190, 26.324881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476353, 36.026711, 26.248669>,  <34.635696, 36.370914, 26.121649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476353, 36.026711, 26.248669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099707, -0.303530, -0.947591,
		0.911794, -0.409144, 0.035115,
		-0.398359, -0.860507, 0.317552,
		34.356846, 35.768559, 26.343935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076477, 35.831154, 25.889664>,  <34.635696, 36.370914, 26.121649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076477, 35.831154, 25.889664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713291, 35.679756, 25.961596>,  <34.495380, 35.588917, 26.004755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713291, 35.679756, 25.961596>,  <35.076477, 35.831154, 25.889664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713291, 35.679756, 25.961596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027786, -0.482581, -0.875410,
		0.418122, -0.789846, 0.448684,
		-0.907966, -0.378496, 0.179831,
		34.440903, 35.566208, 26.015545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104580, 35.246574, 25.503996>,  <35.076477, 35.831154, 25.889664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104580, 35.246574, 25.503996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711327, 35.291485, 25.561733>,  <34.475372, 35.318432, 25.596376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711327, 35.291485, 25.561733>,  <35.104580, 35.246574, 25.503996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711327, 35.291485, 25.561733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177734, -0.400894, -0.898718,
		-0.043038, -0.909218, 0.414089,
		-0.983137, 0.112277, 0.144346,
		34.416386, 35.325169, 25.605038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760582, 34.621441, 25.191786>,  <35.104580, 35.246574, 25.503996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760582, 34.621441, 25.191786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496853, 34.921124, 25.217009>,  <34.338615, 35.100933, 25.232143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496853, 34.921124, 25.217009>,  <34.760582, 34.621441, 25.191786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496853, 34.921124, 25.217009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375782, -0.255728, -0.890725,
		-0.651215, -0.610971, 0.450148,
		-0.659322, 0.749211, 0.063058,
		34.299057, 35.145885, 25.235926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058392, 34.389877, 24.945871>,  <34.760582, 34.621441, 25.191786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058392, 34.389877, 24.945871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064278, 34.789314, 24.925499>,  <34.067810, 35.028976, 24.913275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064278, 34.789314, 24.925499>,  <34.058392, 34.389877, 24.945871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064278, 34.789314, 24.925499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410761, -0.040405, -0.910847,
		-0.911624, 0.034320, 0.409589,
		0.014711, 0.998594, -0.050931,
		34.068691, 35.088894, 24.910219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464615, 34.492340, 24.580692>,  <34.058392, 34.389877, 24.945871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464615, 34.492340, 24.580692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638008, 34.851437, 24.549330>,  <33.742043, 35.066895, 24.530512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638008, 34.851437, 24.549330>,  <33.464615, 34.492340, 24.580692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638008, 34.851437, 24.549330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265424, 0.044047, -0.963125,
		-0.861188, 0.438306, 0.257377,
		0.433480, 0.897746, -0.078404,
		33.768051, 35.120762, 24.525808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999432, 34.773045, 24.154650>,  <33.464615, 34.492340, 24.580692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999432, 34.773045, 24.154650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340710, 34.980488, 24.132364>,  <33.545479, 35.104954, 24.118994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340710, 34.980488, 24.132364>,  <32.999432, 34.773045, 24.154650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340710, 34.980488, 24.132364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132917, 0.112892, -0.984677,
		-0.504368, 0.847529, 0.165250,
		0.853198, 0.518604, -0.055712,
		33.596668, 35.136070, 24.115650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884335, 35.036797, 23.600111>,  <32.999432, 34.773045, 24.154650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884335, 35.036797, 23.600111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274857, 35.106216, 23.651814>,  <33.509171, 35.147869, 23.682835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274857, 35.106216, 23.651814>,  <32.884335, 35.036797, 23.600111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274857, 35.106216, 23.651814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110728, 0.112544, -0.987458,
		-0.185917, 0.978374, 0.090661,
		0.976306, 0.173546, 0.129257,
		33.567749, 35.158279, 23.690590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040630, 35.447346, 23.061804>,  <32.884335, 35.036797, 23.600111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040630, 35.447346, 23.061804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404030, 35.305046, 23.149506>,  <33.622070, 35.219666, 23.202126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404030, 35.305046, 23.149506>,  <33.040630, 35.447346, 23.061804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404030, 35.305046, 23.149506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194533, -0.104319, -0.975333,
		0.369848, 0.928740, -0.025568,
		0.908498, -0.355751, 0.219253,
		33.676579, 35.198322, 23.215282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529491, 35.804531, 22.709871>,  <33.040630, 35.447346, 23.061804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529491, 35.804531, 22.709871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702072, 35.450890, 22.781658>,  <33.805622, 35.238705, 22.824730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702072, 35.450890, 22.781658>,  <33.529491, 35.804531, 22.709871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702072, 35.450890, 22.781658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257179, -0.070141, -0.963815,
		0.864701, 0.461996, 0.197110,
		0.431453, -0.884104, 0.179467,
		33.831509, 35.185658, 22.835499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215141, 35.871155, 22.470177>,  <33.529491, 35.804531, 22.709871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215141, 35.871155, 22.470177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145679, 35.477276, 22.476139>,  <34.104004, 35.240948, 22.479715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145679, 35.477276, 22.476139>,  <34.215141, 35.871155, 22.470177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145679, 35.477276, 22.476139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429446, -0.089335, -0.898663,
		0.886240, -0.149653, 0.438386,
		-0.173650, -0.984695, 0.014904,
		34.093586, 35.181866, 22.480610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942326, 35.462193, 22.311937>,  <34.215141, 35.871155, 22.470177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942326, 35.462193, 22.311937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651684, 35.197632, 22.237541>,  <34.477299, 35.038895, 22.192904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651684, 35.197632, 22.237541>,  <34.942326, 35.462193, 22.311937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651684, 35.197632, 22.237541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389783, -0.173903, -0.904338,
		0.565784, -0.729595, 0.384161,
		-0.726607, -0.661399, -0.185992,
		34.433701, 34.999210, 22.181744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242798, 34.965569, 21.806005>,  <34.942326, 35.462193, 22.311937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242798, 34.965569, 21.806005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849545, 34.892448, 21.803822>,  <34.613594, 34.848576, 21.802511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849545, 34.892448, 21.803822>,  <35.242798, 34.965569, 21.806005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849545, 34.892448, 21.803822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058589, -0.286526, -0.956279,
		0.173248, -0.940471, 0.292404,
		-0.983134, -0.182805, -0.005461,
		34.554604, 34.837608, 21.802183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146740, 34.337406, 21.610504>,  <35.242798, 34.965569, 21.806005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146740, 34.337406, 21.610504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799088, 34.518974, 21.531950>,  <34.590496, 34.627914, 21.484818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799088, 34.518974, 21.531950>,  <35.146740, 34.337406, 21.610504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799088, 34.518974, 21.531950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034140, -0.341063, -0.939420,
		-0.493398, -0.823186, 0.280932,
		-0.869133, 0.453917, -0.196383,
		34.538349, 34.655148, 21.473036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711914, 33.906235, 21.216877>,  <35.146740, 34.337406, 21.610504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711914, 33.906235, 21.216877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569458, 34.269970, 21.130835>,  <34.483986, 34.488213, 21.079208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569458, 34.269970, 21.130835>,  <34.711914, 33.906235, 21.216877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569458, 34.269970, 21.130835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003222, -0.231394, -0.972855,
		-0.934428, -0.345777, 0.085338,
		-0.356138, 0.909338, -0.215107,
		34.462616, 34.542770, 21.066303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334202, 33.765865, 20.688213>,  <34.711914, 33.906235, 21.216877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334202, 33.765865, 20.688213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358585, 34.164837, 20.673130>,  <34.373215, 34.404221, 20.664080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358585, 34.164837, 20.673130>,  <34.334202, 33.765865, 20.688213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358585, 34.164837, 20.673130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007923, -0.038261, -0.999236,
		-0.998109, 0.060614, -0.010235,
		0.060959, 0.997428, -0.037708,
		34.376873, 34.464066, 20.661818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932751, 34.073967, 20.115034>,  <34.334202, 33.765865, 20.688213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932751, 34.073967, 20.115034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197220, 34.358597, 20.210123>,  <34.355900, 34.529377, 20.267178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197220, 34.358597, 20.210123>,  <33.932751, 34.073967, 20.115034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197220, 34.358597, 20.210123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160935, 0.174968, -0.971332,
		-0.732772, 0.680473, 0.001166,
		0.661170, 0.711577, 0.237724,
		34.395569, 34.572071, 20.281441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766346, 34.719353, 19.735157>,  <33.932751, 34.073967, 20.115034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766346, 34.719353, 19.735157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155144, 34.740673, 19.826712>,  <34.388420, 34.753464, 19.881645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155144, 34.740673, 19.826712>,  <33.766346, 34.719353, 19.735157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155144, 34.740673, 19.826712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218408, 0.154706, -0.963516,
		-0.086765, 0.986522, 0.138732,
		0.971993, 0.053299, 0.228888,
		34.446743, 34.756664, 19.895378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910706, 35.340206, 19.513796>,  <33.766346, 34.719353, 19.735157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910706, 35.340206, 19.513796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261501, 35.152912, 19.556955>,  <34.471977, 35.040535, 19.582851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261501, 35.152912, 19.556955>,  <33.910706, 35.340206, 19.513796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261501, 35.152912, 19.556955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242265, 0.236946, -0.940832,
		0.414967, 0.851240, 0.321237,
		0.876989, -0.468238, 0.107901,
		34.524597, 35.012440, 19.589325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411362, 35.838398, 19.350786>,  <33.910706, 35.340206, 19.513796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411362, 35.838398, 19.350786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558880, 35.469177, 19.307020>,  <34.647392, 35.247646, 19.280762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558880, 35.469177, 19.307020>,  <34.411362, 35.838398, 19.350786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558880, 35.469177, 19.307020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305014, 0.231370, -0.923815,
		0.878042, 0.307326, 0.366871,
		0.368795, -0.923049, -0.109414,
		34.669518, 35.192261, 19.274197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130169, 35.897110, 19.224630>,  <34.411362, 35.838398, 19.350786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130169, 35.897110, 19.224630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016987, 35.531017, 19.109892>,  <34.949078, 35.311359, 19.041048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016987, 35.531017, 19.109892>,  <35.130169, 35.897110, 19.224630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016987, 35.531017, 19.109892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452543, 0.136291, -0.881265,
		0.845659, -0.379174, 0.375618,
		-0.282959, -0.915233, -0.286848,
		34.932098, 35.256447, 19.023838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728619, 35.726715, 18.890022>,  <35.130169, 35.897110, 19.224630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728619, 35.726715, 18.890022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455257, 35.470455, 18.750010>,  <35.291241, 35.316700, 18.666002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455257, 35.470455, 18.750010>,  <35.728619, 35.726715, 18.890022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455257, 35.470455, 18.750010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373173, 0.105536, -0.921739,
		0.627457, -0.760543, 0.166951,
		-0.683403, -0.640653, -0.350034,
		35.250237, 35.278259, 18.644999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083031, 35.365276, 18.377140>,  <35.728619, 35.726715, 18.890022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083031, 35.365276, 18.377140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693577, 35.316021, 18.300335>,  <35.459904, 35.286469, 18.254251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693577, 35.316021, 18.300335>,  <36.083031, 35.365276, 18.377140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693577, 35.316021, 18.300335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162583, 0.215812, -0.962804,
		0.159998, -0.968639, -0.190102,
		-0.973636, -0.123139, -0.192014,
		35.401485, 35.279079, 18.242731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130638, 35.228180, 17.693293>,  <36.083031, 35.365276, 18.377140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130638, 35.228180, 17.693293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745071, 35.296356, 17.775093>,  <35.513733, 35.337261, 17.824173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745071, 35.296356, 17.775093>,  <36.130638, 35.228180, 17.693293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745071, 35.296356, 17.775093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123203, 0.395357, -0.910227,
		-0.235990, -0.902575, -0.360091,
		-0.963914, 0.170441, 0.204501,
		35.455898, 35.347488, 17.836443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730553, 34.779434, 17.286928>,  <36.130638, 35.228180, 17.693293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730553, 34.779434, 17.286928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513721, 35.108387, 17.356022>,  <35.383621, 35.305759, 17.397478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513721, 35.108387, 17.356022>,  <35.730553, 34.779434, 17.286928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513721, 35.108387, 17.356022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065474, 0.163598, -0.984352,
		-0.837774, -0.544905, -0.034838,
		-0.542078, 0.822383, 0.172736,
		35.351097, 35.355103, 17.407843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342434, 34.891094, 16.778543>,  <35.730553, 34.779434, 17.286928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342434, 34.891094, 16.778543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297001, 35.256691, 16.934351>,  <35.269741, 35.476048, 17.027836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297001, 35.256691, 16.934351>,  <35.342434, 34.891094, 16.778543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297001, 35.256691, 16.934351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042903, 0.387176, -0.921007,
		-0.992602, -0.121319, -0.004762,
		-0.113580, 0.913989, 0.389517,
		35.262928, 35.530888, 17.051207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786606, 35.135582, 16.410990>,  <35.342434, 34.891094, 16.778543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786606, 35.135582, 16.410990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995907, 35.436501, 16.571119>,  <35.121487, 35.617050, 16.667196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995907, 35.436501, 16.571119>,  <34.786606, 35.135582, 16.410990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995907, 35.436501, 16.571119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098471, 0.413243, -0.905281,
		-0.846469, 0.513111, 0.142151,
		0.523252, 0.752295, 0.400324,
		35.152882, 35.662189, 16.691216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499500, 35.711346, 16.138493>,  <34.786606, 35.135582, 16.410990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499500, 35.711346, 16.138493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884956, 35.766880, 16.229809>,  <35.116230, 35.800201, 16.284599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884956, 35.766880, 16.229809>,  <34.499500, 35.711346, 16.138493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884956, 35.766880, 16.229809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104674, 0.589943, -0.800632,
		-0.245838, 0.795419, 0.553961,
		0.963643, 0.138840, 0.228290,
		35.174049, 35.808533, 16.298296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622547, 36.456577, 16.254623>,  <34.499500, 35.711346, 16.138493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622547, 36.456577, 16.254623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928978, 36.244606, 16.109127>,  <35.112835, 36.117424, 16.021830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928978, 36.244606, 16.109127>,  <34.622547, 36.456577, 16.254623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928978, 36.244606, 16.109127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094800, 0.652878, -0.751507,
		0.635721, 0.541229, 0.550391,
		0.766076, -0.529926, -0.363740,
		35.158802, 36.085629, 16.000006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098751, 36.903172, 16.046803>,  <34.622547, 36.456577, 16.254623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098751, 36.903172, 16.046803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182137, 36.565746, 15.848837>,  <35.232170, 36.363293, 15.730057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182137, 36.565746, 15.848837>,  <35.098751, 36.903172, 16.046803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182137, 36.565746, 15.848837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016785, 0.502873, -0.864197,
		0.977886, 0.188463, 0.090673,
		0.208466, -0.843564, -0.494916,
		35.244675, 36.312675, 15.700362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684975, 36.938324, 15.680572>,  <35.098751, 36.903172, 16.046803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684975, 36.938324, 15.680572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393589, 36.709515, 15.529768>,  <35.218758, 36.572231, 15.439286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393589, 36.709515, 15.529768>,  <35.684975, 36.938324, 15.680572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393589, 36.709515, 15.529768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145009, 0.666583, -0.731190,
		0.669591, -0.477953, -0.568515,
		-0.728437, -0.572038, -0.377031,
		35.175049, 36.537907, 15.416665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823128, 36.674988, 14.989958>,  <35.684975, 36.938324, 15.680572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823128, 36.674988, 14.989958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430260, 36.740086, 15.027607>,  <35.194538, 36.779144, 15.050197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430260, 36.740086, 15.027607>,  <35.823128, 36.674988, 14.989958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430260, 36.740086, 15.027607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038981, 0.313482, -0.948794,
		-0.183919, -0.935544, -0.301548,
		-0.982168, 0.162746, 0.094124,
		35.135609, 36.788910, 15.055844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049774, 36.054298, 14.718725>,  <35.823128, 36.674988, 14.989958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049774, 36.054298, 14.718725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430164, 35.949524, 14.784502>,  <36.658398, 35.886658, 14.823968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430164, 35.949524, 14.784502>,  <36.049774, 36.054298, 14.718725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430164, 35.949524, 14.784502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256632, 0.965050, 0.053101,
		-0.172603, -0.008297, 0.984957,
		0.950972, -0.261936, 0.164442,
		36.715458, 35.870941, 14.833835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316612, 35.996254, 15.478069>,  <36.049774, 36.054298, 14.718725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316612, 35.996254, 15.478069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596951, 36.111908, 15.217234>,  <36.765152, 36.181301, 15.060733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596951, 36.111908, 15.217234>,  <36.316612, 35.996254, 15.478069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596951, 36.111908, 15.217234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060632, 0.935005, 0.349413,
		0.710733, -0.205347, 0.672824,
		0.700844, 0.289134, -0.652088,
		36.807205, 36.198647, 15.021607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820816, 36.356621, 15.804998>,  <36.316612, 35.996254, 15.478069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820816, 36.356621, 15.804998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784676, 36.534477, 15.448544>,  <36.762993, 36.641193, 15.234671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784676, 36.534477, 15.448544>,  <36.820816, 36.356621, 15.804998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784676, 36.534477, 15.448544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172794, 0.874227, 0.453727,
		0.980805, 0.194978, -0.002155,
		-0.090351, 0.444645, -0.891138,
		36.757572, 36.667870, 15.181202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267471, 36.962234, 15.808438>,  <36.820816, 36.356621, 15.804998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267471, 36.962234, 15.808438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979908, 37.016415, 15.535728>,  <36.807369, 37.048923, 15.372101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979908, 37.016415, 15.535728>,  <37.267471, 36.962234, 15.808438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979908, 37.016415, 15.535728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181138, 0.910436, 0.371881,
		0.671085, 0.390845, -0.629988,
		-0.718911, 0.135449, -0.681777,
		36.764236, 37.057049, 15.331194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431526, 37.549381, 15.628129>,  <37.267471, 36.962234, 15.808438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431526, 37.549381, 15.628129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050568, 37.438271, 15.577888>,  <36.821991, 37.371605, 15.547743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050568, 37.438271, 15.577888>,  <37.431526, 37.549381, 15.628129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050568, 37.438271, 15.577888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270209, 0.578400, 0.769702,
		-0.141159, 0.767001, -0.625925,
		-0.952398, -0.277781, -0.125604,
		36.764847, 37.354935, 15.540206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020168, 38.181984, 15.690356>,  <37.431526, 37.549381, 15.628129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020168, 38.181984, 15.690356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790054, 37.869415, 15.787041>,  <36.651985, 37.681873, 15.845052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790054, 37.869415, 15.787041>,  <37.020168, 38.181984, 15.690356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790054, 37.869415, 15.787041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336589, 0.495484, 0.800752,
		-0.745492, 0.379301, -0.548062,
		-0.575282, -0.781426, 0.241711,
		36.617470, 37.634987, 15.859554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256580, 38.331757, 15.784293>,  <37.020168, 38.181984, 15.690356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256580, 38.331757, 15.784293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342556, 38.008656, 16.003872>,  <36.394142, 37.814796, 16.135618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342556, 38.008656, 16.003872>,  <36.256580, 38.331757, 15.784293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342556, 38.008656, 16.003872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395750, 0.441830, 0.805089,
		-0.892850, -0.390292, -0.224699,
		0.214941, -0.807749, 0.548947,
		36.407040, 37.766331, 16.168556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674473, 38.254810, 16.187639>,  <36.256580, 38.331757, 15.784293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674473, 38.254810, 16.187639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956020, 38.029816, 16.361160>,  <36.124947, 37.894821, 16.465273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956020, 38.029816, 16.361160>,  <35.674473, 38.254810, 16.187639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956020, 38.029816, 16.361160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254099, 0.370915, 0.893228,
		-0.663329, -0.738942, 0.118148,
		0.703866, -0.562483, 0.433803,
		36.167179, 37.861073, 16.491301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400734, 37.934597, 16.722288>,  <35.674473, 38.254810, 16.187639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400734, 37.934597, 16.722288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787327, 37.894588, 16.816868>,  <36.019283, 37.870583, 16.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787327, 37.894588, 16.816868>,  <35.400734, 37.934597, 16.722288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787327, 37.894588, 16.816868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221979, 0.137168, 0.965355,
		-0.128991, -0.985485, 0.110367,
		0.966482, -0.100023, 0.236451,
		36.077271, 37.864582, 16.887802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335323, 37.522778, 17.321114>,  <35.400734, 37.934597, 16.722288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335323, 37.522778, 17.321114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716728, 37.641254, 17.343313>,  <35.945572, 37.712341, 17.356632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716728, 37.641254, 17.343313>,  <35.335323, 37.522778, 17.321114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716728, 37.641254, 17.343313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107141, 0.161080, 0.981109,
		0.281656, -0.941448, 0.185326,
		0.953515, 0.296191, 0.055499,
		36.002785, 37.730110, 17.359962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654961, 37.144131, 17.906784>,  <35.335323, 37.522778, 17.321114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654961, 37.144131, 17.906784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873875, 37.472176, 17.839973>,  <36.005222, 37.669003, 17.799887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873875, 37.472176, 17.839973>,  <35.654961, 37.144131, 17.906784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873875, 37.472176, 17.839973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026738, 0.216596, 0.975895,
		0.836518, -0.529629, 0.140469,
		0.547287, 0.820109, -0.167025,
		36.038059, 37.718208, 17.789865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064690, 37.212036, 18.529324>,  <35.654961, 37.144131, 17.906784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064690, 37.212036, 18.529324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080299, 37.574085, 18.359980>,  <36.089664, 37.791313, 18.258373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080299, 37.574085, 18.359980>,  <36.064690, 37.212036, 18.529324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080299, 37.574085, 18.359980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135984, 0.424550, 0.895135,
		0.989942, 0.022640, 0.139649,
		0.039022, 0.905122, -0.423359,
		36.092007, 37.845623, 18.232971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509167, 37.561527, 18.815414>,  <36.064690, 37.212036, 18.529324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509167, 37.561527, 18.815414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266632, 37.838078, 18.658268>,  <36.121109, 38.004009, 18.563980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266632, 37.838078, 18.658268>,  <36.509167, 37.561527, 18.815414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266632, 37.838078, 18.658268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044823, 0.463544, 0.884939,
		0.793941, 0.554184, -0.250076,
		-0.606341, 0.691380, -0.392867,
		36.084728, 38.045490, 18.540407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692646, 38.096222, 19.115948>,  <36.509167, 37.561527, 18.815414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692646, 38.096222, 19.115948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325432, 38.229488, 19.029963>,  <36.105103, 38.309448, 18.978371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325432, 38.229488, 19.029963>,  <36.692646, 38.096222, 19.115948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325432, 38.229488, 19.029963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155690, 0.195712, 0.968224,
		0.364648, 0.922333, -0.127801,
		-0.918037, 0.333163, -0.214964,
		36.050022, 38.329437, 18.965473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707905, 38.716358, 19.411373>,  <36.692646, 38.096222, 19.115948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707905, 38.716358, 19.411373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322487, 38.624729, 19.356091>,  <36.091236, 38.569752, 19.322922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322487, 38.624729, 19.356091>,  <36.707905, 38.716358, 19.411373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322487, 38.624729, 19.356091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173366, 0.141174, 0.974687,
		-0.203768, 0.963117, -0.175742,
		-0.963547, -0.229077, -0.138205,
		36.033424, 38.556007, 19.314629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310692, 39.159405, 19.881493>,  <36.707905, 38.716358, 19.411373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310692, 39.159405, 19.881493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048466, 38.873028, 19.785446>,  <35.891129, 38.701202, 19.727819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048466, 38.873028, 19.785446>,  <36.310692, 39.159405, 19.881493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048466, 38.873028, 19.785446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326262, -0.018225, 0.945104,
		-0.681020, 0.697918, -0.221638,
		-0.655565, -0.715946, -0.240115,
		35.851795, 38.658245, 19.713411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662071, 39.298756, 20.263657>,  <36.310692, 39.159405, 19.881493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662071, 39.298756, 20.263657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617245, 38.915760, 20.157331>,  <35.590351, 38.685963, 20.093536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617245, 38.915760, 20.157331>,  <35.662071, 39.298756, 20.263657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617245, 38.915760, 20.157331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368973, -0.208280, 0.905803,
		-0.922660, 0.199584, -0.329947,
		-0.112063, -0.957489, -0.265813,
		35.583626, 38.628513, 20.077587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042397, 39.156418, 20.383158>,  <35.662071, 39.298756, 20.263657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042397, 39.156418, 20.383158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252666, 38.816998, 20.407221>,  <35.378830, 38.613346, 20.421658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252666, 38.816998, 20.407221>,  <35.042397, 39.156418, 20.383158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252666, 38.816998, 20.407221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258778, -0.092147, 0.961532,
		-0.810370, -0.521021, -0.268027,
		0.525675, -0.848555, 0.060155,
		35.410370, 38.562431, 20.425268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579815, 38.780609, 20.626970>,  <35.042397, 39.156418, 20.383158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579815, 38.780609, 20.626970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928242, 38.602928, 20.710810>,  <35.137299, 38.496319, 20.761114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928242, 38.602928, 20.710810>,  <34.579815, 38.780609, 20.626970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928242, 38.602928, 20.710810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301135, -0.145859, 0.942360,
		-0.388023, -0.883975, -0.260817,
		0.871066, -0.444199, 0.209599,
		35.189560, 38.469669, 20.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386662, 38.145134, 20.965172>,  <34.579815, 38.780609, 20.626970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386662, 38.145134, 20.965172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768318, 38.174847, 21.081163>,  <34.997314, 38.192673, 21.150759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768318, 38.174847, 21.081163>,  <34.386662, 38.145134, 20.965172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768318, 38.174847, 21.081163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275064, -0.164594, 0.947232,
		0.118093, -0.983560, -0.136614,
		0.954146, 0.074283, 0.289979,
		35.054562, 38.197132, 21.168158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521461, 37.622917, 21.494774>,  <34.386662, 38.145134, 20.965172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521461, 37.622917, 21.494774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814148, 37.884644, 21.571156>,  <34.989761, 38.041679, 21.616985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814148, 37.884644, 21.571156>,  <34.521461, 37.622917, 21.494774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814148, 37.884644, 21.571156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033315, -0.245488, 0.968827,
		0.680794, -0.715269, -0.157829,
		0.731717, 0.654314, 0.190955,
		35.033665, 38.080936, 21.628443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956501, 37.279789, 21.978968>,  <34.521461, 37.622917, 21.494774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956501, 37.279789, 21.978968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035873, 37.670177, 22.014996>,  <35.083496, 37.904411, 22.036612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035873, 37.670177, 22.014996>,  <34.956501, 37.279789, 21.978968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035873, 37.670177, 22.014996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270648, -0.033760, 0.962086,
		0.942006, -0.215284, 0.257444,
		0.198430, 0.975968, 0.090069,
		35.095402, 37.962967, 22.042017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300655, 37.300842, 22.598742>,  <34.956501, 37.279789, 21.978968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300655, 37.300842, 22.598742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188148, 37.679363, 22.534985>,  <35.120644, 37.906475, 22.496731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188148, 37.679363, 22.534985>,  <35.300655, 37.300842, 22.598742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188148, 37.679363, 22.534985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269759, 0.081433, 0.959478,
		0.920935, 0.312863, 0.232369,
		-0.281263, 0.946301, -0.159392,
		35.103771, 37.963253, 22.487167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531265, 37.605492, 23.203083>,  <35.300655, 37.300842, 22.598742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531265, 37.605492, 23.203083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299652, 37.901016, 23.065168>,  <35.160683, 38.078331, 22.982420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299652, 37.901016, 23.065168>,  <35.531265, 37.605492, 23.203083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299652, 37.901016, 23.065168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291448, 0.207379, 0.933837,
		0.761430, 0.641212, 0.095245,
		-0.579035, 0.738811, -0.344785,
		35.125942, 38.122658, 22.961733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650890, 38.345379, 23.475550>,  <35.531265, 37.605492, 23.203083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650890, 38.345379, 23.475550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267826, 38.353153, 23.360653>,  <35.037987, 38.357819, 23.291714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267826, 38.353153, 23.360653>,  <35.650890, 38.345379, 23.475550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267826, 38.353153, 23.360653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262782, 0.348573, 0.899690,
		0.117611, 0.937080, -0.328707,
		-0.957660, 0.019435, -0.287244,
		34.980530, 38.358982, 23.274479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461414, 38.953552, 23.672457>,  <35.650890, 38.345379, 23.475550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461414, 38.953552, 23.672457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115643, 38.763447, 23.606876>,  <34.908180, 38.649384, 23.567528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115643, 38.763447, 23.606876>,  <35.461414, 38.953552, 23.672457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115643, 38.763447, 23.606876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379553, 0.403075, 0.832748,
		-0.329690, 0.782084, -0.528820,
		-0.864433, -0.475264, -0.163952,
		34.856312, 38.620869, 23.557692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986305, 39.469841, 23.804451>,  <35.461414, 38.953552, 23.672457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986305, 39.469841, 23.804451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781250, 39.128410, 23.841557>,  <34.658218, 38.923550, 23.863821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781250, 39.128410, 23.841557>,  <34.986305, 39.469841, 23.804451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781250, 39.128410, 23.841557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397574, 0.331744, 0.855500,
		-0.761013, 0.401678, -0.509425,
		-0.512634, -0.853582, 0.092765,
		34.627460, 38.872337, 23.869387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278919, 39.702816, 23.955692>,  <34.986305, 39.469841, 23.804451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278919, 39.702816, 23.955692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277885, 39.327576, 24.094238>,  <34.277264, 39.102432, 24.177366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277885, 39.327576, 24.094238>,  <34.278919, 39.702816, 23.955692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277885, 39.327576, 24.094238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489507, 0.303217, 0.817583,
		-0.871996, -0.167436, -0.459988,
		-0.002584, -0.938096, 0.346365,
		34.277111, 39.046146, 24.198149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632351, 39.550484, 24.331718>,  <34.278919, 39.702816, 23.955692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632351, 39.550484, 24.331718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836479, 39.240101, 24.480026>,  <33.958958, 39.053871, 24.569010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836479, 39.240101, 24.480026>,  <33.632351, 39.550484, 24.331718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836479, 39.240101, 24.480026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436479, 0.137775, 0.889103,
		-0.740985, -0.615560, -0.268378,
		0.510320, -0.775953, 0.370768,
		33.989574, 39.007317, 24.591257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198063, 39.156803, 24.793777>,  <33.632351, 39.550484, 24.331718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198063, 39.156803, 24.793777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559208, 39.051254, 24.929552>,  <33.775894, 38.987923, 25.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559208, 39.051254, 24.929552>,  <33.198063, 39.156803, 24.793777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559208, 39.051254, 24.929552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358260, -0.025275, 0.933280,
		-0.237690, -0.964226, -0.117356,
		0.902858, -0.263876, 0.339436,
		33.830067, 38.972092, 25.031384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144009, 38.611996, 25.312456>,  <33.198063, 39.156803, 24.793777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144009, 38.611996, 25.312456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492146, 38.792080, 25.392277>,  <33.701027, 38.900131, 25.440168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492146, 38.792080, 25.392277>,  <33.144009, 38.611996, 25.312456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492146, 38.792080, 25.392277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164316, -0.116500, 0.979504,
		0.464233, -0.885288, -0.027418,
		0.870338, 0.450213, 0.199550,
		33.753246, 38.927143, 25.452143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371101, 38.243870, 25.857393>,  <33.144009, 38.611996, 25.312456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371101, 38.243870, 25.857393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563446, 38.594212, 25.841148>,  <33.678852, 38.804417, 25.831402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563446, 38.594212, 25.841148>,  <33.371101, 38.243870, 25.857393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563446, 38.594212, 25.841148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228403, 0.169848, 0.958636,
		0.846527, -0.451691, 0.281721,
		0.480857, 0.875857, -0.040613,
		33.707703, 38.856968, 25.828964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676769, 37.998943, 26.426477>,  <33.371101, 38.243870, 25.857393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676769, 37.998943, 26.426477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741005, 38.391209, 26.381725>,  <33.779545, 38.626568, 26.354874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741005, 38.391209, 26.381725>,  <33.676769, 37.998943, 26.426477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741005, 38.391209, 26.381725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128853, 0.091554, 0.987428,
		0.978575, -0.172983, -0.111659,
		0.160585, 0.980660, -0.111882,
		33.789181, 38.685406, 26.348160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360561, 38.212631, 26.794035>,  <33.676769, 37.998943, 26.426477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360561, 38.212631, 26.794035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145111, 38.548416, 26.765242>,  <34.015842, 38.749889, 26.747967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145111, 38.548416, 26.765242>,  <34.360561, 38.212631, 26.794035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145111, 38.548416, 26.765242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166597, 0.189859, 0.967574,
		0.825912, 0.509165, -0.242115,
		-0.538622, 0.839467, -0.071982,
		33.983524, 38.800255, 26.743647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694427, 38.721245, 27.122463>,  <34.360561, 38.212631, 26.794035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694427, 38.721245, 27.122463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334080, 38.894867, 27.120564>,  <34.117870, 38.999043, 27.119423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334080, 38.894867, 27.120564>,  <34.694427, 38.721245, 27.122463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334080, 38.894867, 27.120564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090783, 0.199097, 0.975766,
		0.424486, 0.878609, -0.218766,
		-0.900872, 0.434059, -0.004751,
		34.063820, 39.025085, 27.119139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776291, 39.381382, 27.497555>,  <34.694427, 38.721245, 27.122463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776291, 39.381382, 27.497555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378826, 39.336487, 27.495085>,  <34.140347, 39.309551, 27.493603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378826, 39.336487, 27.495085>,  <34.776291, 39.381382, 27.497555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378826, 39.336487, 27.495085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032679, 0.235876, 0.971233,
		-0.107550, 0.965280, -0.238049,
		-0.993662, -0.112236, -0.006176,
		34.080727, 39.302814, 27.493233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407108, 40.033340, 27.733536>,  <34.776291, 39.381382, 27.497555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407108, 40.033340, 27.733536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151005, 39.729546, 27.779575>,  <33.997341, 39.547268, 27.807199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151005, 39.729546, 27.779575>,  <34.407108, 40.033340, 27.733536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151005, 39.729546, 27.779575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172300, 0.288011, 0.941999,
		-0.748586, 0.583292, -0.315261,
		-0.640259, -0.759487, 0.115100,
		33.958927, 39.501701, 27.814106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824142, 40.341663, 28.072630>,  <34.407108, 40.033340, 27.733536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824142, 40.341663, 28.072630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838585, 39.952164, 28.162521>,  <33.847252, 39.718464, 28.216457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838585, 39.952164, 28.162521>,  <33.824142, 40.341663, 28.072630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838585, 39.952164, 28.162521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046027, 0.223018, 0.973727,
		-0.998288, -0.045502, -0.036766,
		0.036107, -0.973752, 0.224730,
		33.849419, 39.660038, 28.229940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512245, 40.311413, 28.666100>,  <33.824142, 40.341663, 28.072630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512245, 40.311413, 28.666100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653061, 39.938084, 28.694319>,  <33.737549, 39.714085, 28.711250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653061, 39.938084, 28.694319>,  <33.512245, 40.311413, 28.666100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653061, 39.938084, 28.694319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044290, 0.091900, 0.994783,
		-0.934938, -0.347074, 0.073689,
		0.352035, -0.933324, 0.070549,
		33.758671, 39.658085, 28.715483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146564, 39.954926, 29.161106>,  <33.512245, 40.311413, 28.666100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146564, 39.954926, 29.161106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484650, 39.741875, 29.143576>,  <33.687500, 39.614044, 29.133059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484650, 39.741875, 29.143576>,  <33.146564, 39.954926, 29.161106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484650, 39.741875, 29.143576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076353, 0.039186, 0.996311,
		-0.528948, -0.845441, 0.073788,
		0.845213, -0.532630, -0.043825,
		33.738213, 39.582085, 29.130428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023483, 39.343304, 29.500744>,  <33.146564, 39.954926, 29.161106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023483, 39.343304, 29.500744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421463, 39.381413, 29.513414>,  <33.660252, 39.404278, 29.521017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421463, 39.381413, 29.513414>,  <33.023483, 39.343304, 29.500744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421463, 39.381413, 29.513414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018149, -0.139657, 0.990034,
		0.098746, -0.985606, -0.137222,
		0.994947, 0.095272, 0.031678,
		33.719948, 39.409992, 29.522917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303776, 38.767685, 29.862953>,  <33.023483, 39.343304, 29.500744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303776, 38.767685, 29.862953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604076, 39.031597, 29.875992>,  <33.784256, 39.189945, 29.883816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604076, 39.031597, 29.875992>,  <33.303776, 38.767685, 29.862953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604076, 39.031597, 29.875992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033960, -0.087827, 0.995557,
		0.659714, -0.746306, -0.088342,
		0.750749, 0.659783, 0.032596,
		33.829300, 39.229530, 29.885771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838928, 38.492668, 30.205168>,  <33.303776, 38.767685, 29.862953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838928, 38.492668, 30.205168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916664, 38.884956, 30.213375>,  <33.963306, 39.120327, 30.218300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916664, 38.884956, 30.213375>,  <33.838928, 38.492668, 30.205168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916664, 38.884956, 30.213375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339977, -0.086964, 0.936404,
		0.920134, -0.175008, -0.350322,
		0.194344, 0.980719, 0.020520,
		33.974968, 39.179173, 30.219530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554115, 38.643105, 30.354248>,  <33.838928, 38.492668, 30.205168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554115, 38.643105, 30.354248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347359, 38.969425, 30.458008>,  <34.223305, 39.165218, 30.520264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347359, 38.969425, 30.458008>,  <34.554115, 38.643105, 30.354248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347359, 38.969425, 30.458008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350839, -0.074522, 0.933466,
		0.780856, 0.573507, -0.247696,
		-0.516890, 0.815804, 0.259400,
		34.192291, 39.214165, 30.535828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223450, 38.823997, 30.347717>,  <34.554115, 38.643105, 30.354248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223450, 38.823997, 30.347717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610565, 38.855183, 30.443464>,  <35.842834, 38.873894, 30.500914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610565, 38.855183, 30.443464>,  <35.223450, 38.823997, 30.347717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610565, 38.855183, 30.443464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238853, 0.016015, -0.970924,
		-0.079534, 0.996827, -0.003124,
		0.967793, 0.077967, 0.239369,
		35.900902, 38.878574, 30.515276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552670, 39.346790, 30.001871>,  <35.223450, 38.823997, 30.347717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552670, 39.346790, 30.001871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867371, 39.113392, 30.082420>,  <36.056190, 38.973354, 30.130751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867371, 39.113392, 30.082420>,  <35.552670, 39.346790, 30.001871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867371, 39.113392, 30.082420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244812, -0.004516, -0.969560,
		0.566640, 0.812106, 0.139293,
		0.786757, -0.583492, 0.201372,
		36.103397, 38.938343, 30.142832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169174, 39.649986, 29.685442>,  <35.552670, 39.346790, 30.001871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169174, 39.649986, 29.685442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267704, 39.266281, 29.740788>,  <36.326820, 39.036060, 29.773994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267704, 39.266281, 29.740788>,  <36.169174, 39.649986, 29.685442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267704, 39.266281, 29.740788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458956, -0.010291, -0.888399,
		0.853630, 0.282334, 0.437724,
		0.246321, -0.959261, 0.138364,
		36.341599, 38.978504, 29.782297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864395, 39.653946, 29.509850>,  <36.169174, 39.649986, 29.685442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864395, 39.653946, 29.509850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719193, 39.282776, 29.475931>,  <36.632072, 39.060074, 29.455580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719193, 39.282776, 29.475931>,  <36.864395, 39.653946, 29.509850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719193, 39.282776, 29.475931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525299, -0.128631, -0.841139,
		0.769604, -0.349879, 0.534129,
		-0.363002, -0.927922, -0.084796,
		36.610291, 39.004398, 29.450493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450523, 39.272816, 29.364174>,  <36.864395, 39.653946, 29.509850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450523, 39.272816, 29.364174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143364, 39.069904, 29.207716>,  <36.959068, 38.948158, 29.113842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143364, 39.069904, 29.207716>,  <37.450523, 39.272816, 29.364174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143364, 39.069904, 29.207716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519439, -0.135805, -0.843647,
		0.374847, -0.851013, 0.367786,
		-0.767902, -0.507281, -0.391143,
		36.912994, 38.917721, 29.090372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764988, 38.794666, 28.865131>,  <37.450523, 39.272816, 29.364174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764988, 38.794666, 28.865131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385296, 38.769161, 28.741907>,  <37.157482, 38.753857, 28.667973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385296, 38.769161, 28.741907>,  <37.764988, 38.794666, 28.865131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385296, 38.769161, 28.741907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314203, -0.240921, -0.918278,
		-0.015664, -0.968448, 0.248724,
		-0.949227, -0.063766, -0.308063,
		37.100529, 38.750031, 28.649488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816208, 38.180515, 28.488031>,  <37.764988, 38.794666, 28.865131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816208, 38.180515, 28.488031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491741, 38.382496, 28.370026>,  <37.297062, 38.503685, 28.299223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491741, 38.382496, 28.370026>,  <37.816208, 38.180515, 28.488031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491741, 38.382496, 28.370026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232823, -0.183921, -0.954970,
		-0.536470, -0.843327, 0.031627,
		-0.811168, 0.504949, -0.295014,
		37.248390, 38.533981, 28.281521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555374, 37.721058, 28.053896>,  <37.816208, 38.180515, 28.488031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555374, 37.721058, 28.053896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392132, 38.074585, 27.962410>,  <37.294186, 38.286701, 27.907518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392132, 38.074585, 27.962410>,  <37.555374, 37.721058, 28.053896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392132, 38.074585, 27.962410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080984, -0.214490, -0.973363,
		-0.909336, -0.415756, 0.015959,
		-0.408105, 0.883822, -0.228713,
		37.269699, 38.339733, 27.893797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061802, 37.571655, 27.540543>,  <37.555374, 37.721058, 28.053896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061802, 37.571655, 27.540543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108631, 37.961651, 27.464970>,  <37.136730, 38.195648, 27.419626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108631, 37.961651, 27.464970>,  <37.061802, 37.571655, 27.540543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108631, 37.961651, 27.464970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133319, -0.203950, -0.969861,
		-0.984134, 0.088360, -0.153862,
		0.117077, 0.974985, -0.188934,
		37.143753, 38.254147, 27.408289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856518, 37.701637, 26.759205>,  <37.061802, 37.571655, 27.540543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856518, 37.701637, 26.759205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041454, 38.039833, 26.866079>,  <37.152416, 38.242752, 26.930204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041454, 38.039833, 26.866079>,  <36.856518, 37.701637, 26.759205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041454, 38.039833, 26.866079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370004, 0.089879, -0.924672,
		-0.805814, 0.526376, -0.271279,
		0.462343, 0.845488, 0.267187,
		37.180157, 38.293480, 26.946236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627357, 38.274010, 26.266787>,  <36.856518, 37.701637, 26.759205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627357, 38.274010, 26.266787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988865, 38.317974, 26.432251>,  <37.205769, 38.344353, 26.531530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988865, 38.317974, 26.432251>,  <36.627357, 38.274010, 26.266787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988865, 38.317974, 26.432251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411057, 0.046466, -0.910425,
		-0.119288, 0.992854, -0.003186,
		0.903771, 0.109912, 0.413663,
		37.259995, 38.350948, 26.556351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976280, 38.837589, 25.946686>,  <36.627357, 38.274010, 26.266787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976280, 38.837589, 25.946686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276119, 38.623875, 26.102964>,  <37.456024, 38.495647, 26.196732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276119, 38.623875, 26.102964>,  <36.976280, 38.837589, 25.946686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276119, 38.623875, 26.102964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464331, 0.003815, -0.885653,
		0.471700, 0.845296, 0.250945,
		0.749597, -0.534284, 0.390698,
		37.500999, 38.463589, 26.220173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539791, 39.216690, 25.803705>,  <36.976280, 38.837589, 25.946686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539791, 39.216690, 25.803705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693047, 38.852814, 25.867798>,  <37.785000, 38.634487, 25.906254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693047, 38.852814, 25.867798>,  <37.539791, 39.216690, 25.803705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693047, 38.852814, 25.867798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468178, 0.041719, -0.882649,
		0.796250, 0.413193, 0.441880,
		0.383139, -0.909687, 0.160229,
		37.807987, 38.579906, 25.915867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276005, 39.299072, 25.637928>,  <37.539791, 39.216690, 25.803705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276005, 39.299072, 25.637928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207012, 38.905548, 25.618435>,  <38.165615, 38.669434, 25.606739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207012, 38.905548, 25.618435>,  <38.276005, 39.299072, 25.637928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207012, 38.905548, 25.618435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468059, -0.038326, -0.882866,
		0.866702, -0.175088, 0.467090,
		-0.172481, -0.983807, -0.048734,
		38.155270, 38.610405, 25.603815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900078, 38.903038, 25.385452>,  <38.276005, 39.299072, 25.637928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900078, 38.903038, 25.385452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563766, 38.702553, 25.303600>,  <38.361980, 38.582264, 25.254490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563766, 38.702553, 25.303600>,  <38.900078, 38.903038, 25.385452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563766, 38.702553, 25.303600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213955, 0.039580, -0.976041,
		0.497303, -0.864419, 0.073959,
		-0.840781, -0.501212, -0.204630,
		38.311531, 38.552189, 25.242212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246780, 38.382401, 24.872591>,  <38.900078, 38.903038, 25.385452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246780, 38.382401, 24.872591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849644, 38.354012, 24.834173>,  <38.611362, 38.336979, 24.811123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849644, 38.354012, 24.834173>,  <39.246780, 38.382401, 24.872591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849644, 38.354012, 24.834173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111519, -0.263322, -0.958241,
		0.042717, -0.962094, 0.269352,
		-0.992844, -0.070971, -0.096043,
		38.551792, 38.332722, 24.805361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163750, 37.928349, 24.380829>,  <39.246780, 38.382401, 24.872591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163750, 37.928349, 24.380829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818989, 38.130173, 24.401009>,  <38.612133, 38.251266, 24.413116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818989, 38.130173, 24.401009>,  <39.163750, 37.928349, 24.380829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818989, 38.130173, 24.401009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120954, -0.107952, -0.986771,
		-0.492441, -0.856600, 0.154073,
		-0.861901, 0.504562, 0.050449,
		38.560417, 38.281540, 24.416143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691151, 37.363480, 24.126928>,  <39.163750, 37.928349, 24.380829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691151, 37.363480, 24.126928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525913, 37.724804, 24.080648>,  <38.426769, 37.941597, 24.052879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525913, 37.724804, 24.080648>,  <38.691151, 37.363480, 24.126928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525913, 37.724804, 24.080648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205560, -0.216259, -0.954451,
		-0.887185, -0.370496, 0.275020,
		-0.413096, 0.903307, -0.115702,
		38.401985, 37.995796, 24.045938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035217, 37.309875, 23.899998>,  <38.691151, 37.363480, 24.126928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035217, 37.309875, 23.899998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119255, 37.689320, 23.805340>,  <38.169678, 37.916985, 23.748545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119255, 37.689320, 23.805340>,  <38.035217, 37.309875, 23.899998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119255, 37.689320, 23.805340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506198, -0.101537, -0.856419,
		-0.836435, 0.299720, 0.458851,
		0.210096, 0.948608, -0.236647,
		38.182285, 37.973904, 23.734346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454201, 37.611572, 23.539560>,  <38.035217, 37.309875, 23.899998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454201, 37.611572, 23.539560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737999, 37.865978, 23.418165>,  <37.908279, 38.018620, 23.345329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737999, 37.865978, 23.418165>,  <37.454201, 37.611572, 23.539560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737999, 37.865978, 23.418165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419244, 0.034791, -0.907207,
		-0.566436, 0.770895, 0.291328,
		0.709497, 0.636012, -0.303486,
		37.950848, 38.056782, 23.327120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168831, 37.836933, 22.989813>,  <37.454201, 37.611572, 23.539560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168831, 37.836933, 22.989813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519867, 38.018307, 22.927538>,  <37.730488, 38.127129, 22.890173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519867, 38.018307, 22.927538>,  <37.168831, 37.836933, 22.989813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519867, 38.018307, 22.927538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132691, -0.082328, -0.987732,
		-0.460687, 0.887480, -0.012084,
		0.877588, 0.453432, -0.155688,
		37.783142, 38.154335, 22.880831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046329, 38.291126, 22.476471>,  <37.168831, 37.836933, 22.989813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046329, 38.291126, 22.476471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433220, 38.189789, 22.469706>,  <37.665356, 38.128986, 22.465647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433220, 38.189789, 22.469706>,  <37.046329, 38.291126, 22.476471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433220, 38.189789, 22.469706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066464, -0.188335, -0.979853,
		0.245056, 0.948866, -0.199002,
		0.967228, -0.253345, -0.016913,
		37.723389, 38.113785, 22.464632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339188, 38.748657, 21.986280>,  <37.046329, 38.291126, 22.476471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339188, 38.748657, 21.986280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600056, 38.446396, 22.010485>,  <37.756577, 38.265038, 22.025007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600056, 38.446396, 22.010485>,  <37.339188, 38.748657, 21.986280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600056, 38.446396, 22.010485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137089, -0.196066, -0.970961,
		0.745572, 0.624938, -0.231461,
		0.652172, -0.755652, 0.060510,
		37.795708, 38.219700, 22.028637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653580, 38.816055, 21.392912>,  <37.339188, 38.748657, 21.986280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653580, 38.816055, 21.392912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727142, 38.443230, 21.517776>,  <37.771278, 38.219536, 21.592695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727142, 38.443230, 21.517776>,  <37.653580, 38.816055, 21.392912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727142, 38.443230, 21.517776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014832, -0.314909, -0.949006,
		0.982832, 0.179156, -0.044089,
		0.183904, -0.932060, 0.312160,
		37.782314, 38.163612, 21.611423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213936, 38.516628, 21.000637>,  <37.653580, 38.816055, 21.392912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213936, 38.516628, 21.000637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996475, 38.202152, 21.118179>,  <37.865997, 38.013466, 21.188705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996475, 38.202152, 21.118179>,  <38.213936, 38.516628, 21.000637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996475, 38.202152, 21.118179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023925, -0.364493, -0.930899,
		0.838969, -0.499055, 0.216968,
		-0.543653, -0.786187, 0.293858,
		37.833378, 37.966297, 21.206337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515709, 38.045380, 20.578552>,  <38.213936, 38.516628, 21.000637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515709, 38.045380, 20.578552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206059, 37.842224, 20.729696>,  <38.020267, 37.720333, 20.820383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206059, 37.842224, 20.729696>,  <38.515709, 38.045380, 20.578552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206059, 37.842224, 20.729696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170060, -0.408112, -0.896953,
		0.609758, -0.758615, 0.229560,
		-0.774128, -0.507885, 0.377860,
		37.973820, 37.689857, 20.843054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732365, 37.280693, 20.574884>,  <38.515709, 38.045380, 20.578552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732365, 37.280693, 20.574884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334396, 37.315182, 20.595655>,  <38.095615, 37.335876, 20.608118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334396, 37.315182, 20.595655>,  <38.732365, 37.280693, 20.574884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334396, 37.315182, 20.595655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092315, -0.576122, -0.812134,
		-0.040104, -0.812803, 0.581156,
		-0.994922, 0.086220, 0.051929,
		38.035919, 37.341049, 20.611235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335102, 36.591412, 20.680941>,  <38.732365, 37.280693, 20.574884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335102, 36.591412, 20.680941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048874, 36.821999, 20.523136>,  <37.877136, 36.960350, 20.428453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048874, 36.821999, 20.523136>,  <38.335102, 36.591412, 20.680941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048874, 36.821999, 20.523136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250697, -0.739075, -0.625235,
		-0.652002, -0.348498, 0.673381,
		-0.715573, 0.576469, -0.394511,
		37.834202, 36.994938, 20.404783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791706, 36.199516, 20.623215>,  <38.335102, 36.591412, 20.680941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791706, 36.199516, 20.623215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726387, 36.486813, 20.352671>,  <37.687195, 36.659191, 20.190344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726387, 36.486813, 20.352671>,  <37.791706, 36.199516, 20.623215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726387, 36.486813, 20.352671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221099, -0.694770, -0.684405,
		-0.961482, 0.037779, 0.272258,
		-0.163301, 0.718240, -0.676362,
		37.677395, 36.702286, 20.149763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155029, 36.035221, 20.285299>,  <37.791706, 36.199516, 20.623215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155029, 36.035221, 20.285299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345699, 36.281986, 20.034796>,  <37.460102, 36.430046, 19.884495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345699, 36.281986, 20.034796>,  <37.155029, 36.035221, 20.285299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345699, 36.281986, 20.034796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326910, -0.536910, -0.777726,
		-0.816033, 0.575453, -0.054257,
		0.476676, 0.616913, -0.626257,
		37.488701, 36.467060, 19.846918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682812, 35.927444, 19.738792>,  <37.155029, 36.035221, 20.285299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682812, 35.927444, 19.738792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006859, 36.079384, 19.560169>,  <37.201286, 36.170547, 19.452995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006859, 36.079384, 19.560169>,  <36.682812, 35.927444, 19.738792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006859, 36.079384, 19.560169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102039, -0.658720, -0.745437,
		-0.577312, 0.649462, -0.494884,
		0.810122, 0.379852, -0.446558,
		37.249897, 36.193340, 19.426203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504780, 35.935555, 18.984571>,  <36.682812, 35.927444, 19.738792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504780, 35.935555, 18.984571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904293, 35.950562, 18.997425>,  <37.144001, 35.959568, 19.005136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904293, 35.950562, 18.997425>,  <36.504780, 35.935555, 18.984571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904293, 35.950562, 18.997425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049356, -0.785810, -0.616496,
		0.002120, 0.617329, -0.786702,
		0.998779, 0.037521, 0.032135,
		37.203926, 35.961819, 19.007065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680984, 35.870831, 18.257029>,  <36.504780, 35.935555, 18.984571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680984, 35.870831, 18.257029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009693, 35.771255, 18.462053>,  <37.206917, 35.711510, 18.585068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009693, 35.771255, 18.462053>,  <36.680984, 35.870831, 18.257029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009693, 35.771255, 18.462053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145314, -0.778227, -0.610939,
		0.550974, 0.576536, -0.603352,
		0.821773, -0.248936, 0.512562,
		37.256226, 35.696575, 18.615822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179462, 35.965519, 17.787029>,  <36.680984, 35.870831, 18.257029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179462, 35.965519, 17.787029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277905, 35.713436, 18.081585>,  <37.336971, 35.562187, 18.258318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277905, 35.713436, 18.081585>,  <37.179462, 35.965519, 17.787029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277905, 35.713436, 18.081585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114682, -0.735488, -0.667761,
		0.962434, 0.248792, -0.108736,
		0.246107, -0.630206, 0.736391,
		37.351738, 35.524376, 18.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772705, 35.584610, 17.466438>,  <37.179462, 35.965519, 17.787029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772705, 35.584610, 17.466438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660915, 35.378315, 17.790390>,  <37.593842, 35.254536, 17.984760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660915, 35.378315, 17.790390>,  <37.772705, 35.584610, 17.466438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660915, 35.378315, 17.790390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151091, -0.856604, -0.493358,
		0.948190, -0.015517, 0.317325,
		-0.279478, -0.515742, 0.809878,
		37.577072, 35.223591, 18.033354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312832, 35.209534, 17.447582>,  <37.772705, 35.584610, 17.466438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312832, 35.209534, 17.447582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030769, 35.018475, 17.657194>,  <37.861530, 34.903839, 17.782961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030769, 35.018475, 17.657194>,  <38.312832, 35.209534, 17.447582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030769, 35.018475, 17.657194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187305, -0.838290, -0.512041,
		0.683860, -0.262919, 0.680595,
		-0.705161, -0.477643, 0.524028,
		37.819221, 34.875183, 17.814402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608696, 34.508728, 17.607647>,  <38.312832, 35.209534, 17.447582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608696, 34.508728, 17.607647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210205, 34.482712, 17.630629>,  <37.971111, 34.467102, 17.644417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210205, 34.482712, 17.630629>,  <38.608696, 34.508728, 17.607647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210205, 34.482712, 17.630629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031488, -0.887819, -0.459114,
		0.080869, -0.455573, 0.886518,
		-0.996227, -0.065043, 0.057452,
		37.911339, 34.463200, 17.647863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419315, 33.893337, 17.898069>,  <38.608696, 34.508728, 17.607647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419315, 33.893337, 17.898069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084911, 33.969604, 17.692261>,  <37.884270, 34.015366, 17.568775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084911, 33.969604, 17.692261>,  <38.419315, 33.893337, 17.898069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084911, 33.969604, 17.692261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024449, -0.923813, -0.382064,
		-0.548168, -0.331989, 0.767656,
		-0.836011, 0.190667, -0.514522,
		37.834106, 34.026806, 17.537905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080837, 33.241020, 17.942358>,  <38.419315, 33.893337, 17.898069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080837, 33.241020, 17.942358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469498, 33.154388, 17.904453>,  <38.702694, 33.102409, 17.881710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469498, 33.154388, 17.904453>,  <38.080837, 33.241020, 17.942358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469498, 33.154388, 17.904453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172591, 0.375966, 0.910418,
		-0.161548, -0.900968, 0.402689,
		0.971656, -0.216576, -0.094762,
		38.760994, 33.089417, 17.876024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351864, 32.795731, 18.517958>,  <38.080837, 33.241020, 17.942358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351864, 32.795731, 18.517958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686459, 32.967415, 18.381681>,  <38.887215, 33.070423, 18.299915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686459, 32.967415, 18.381681>,  <38.351864, 32.795731, 18.517958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686459, 32.967415, 18.381681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288254, 0.184115, 0.939687,
		0.466048, -0.884241, 0.030288,
		0.836486, 0.429208, -0.340693,
		38.937405, 33.096176, 18.279474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926739, 32.519318, 18.902964>,  <38.351864, 32.795731, 18.517958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926739, 32.519318, 18.902964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070992, 32.852333, 18.734762>,  <39.157543, 33.052143, 18.633841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070992, 32.852333, 18.734762>,  <38.926739, 32.519318, 18.902964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070992, 32.852333, 18.734762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470253, 0.227051, 0.852825,
		0.805486, -0.505298, -0.309622,
		0.360631, 0.832539, -0.420504,
		39.179180, 33.102097, 18.608610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409393, 32.680702, 19.359093>,  <38.926739, 32.519318, 18.902964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409393, 32.680702, 19.359093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368847, 33.021542, 19.153704>,  <39.344521, 33.226044, 19.030470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368847, 33.021542, 19.153704>,  <39.409393, 32.680702, 19.359093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368847, 33.021542, 19.153704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568404, 0.473196, 0.673055,
		0.816482, -0.223635, -0.532302,
		-0.101365, 0.852099, -0.513471,
		39.338436, 33.277172, 18.999662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029957, 32.975536, 19.362307>,  <39.409393, 32.680702, 19.359093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029957, 32.975536, 19.362307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783905, 33.284042, 19.296873>,  <39.636272, 33.469147, 19.257612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783905, 33.284042, 19.296873>,  <40.029957, 32.975536, 19.362307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783905, 33.284042, 19.296873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467544, 0.523902, 0.711989,
		0.634838, 0.361482, -0.682870,
		-0.615129, 0.771270, -0.163585,
		39.599365, 33.515423, 19.247797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422653, 33.472500, 19.430593>,  <40.029957, 32.975536, 19.362307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422653, 33.472500, 19.430593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061615, 33.638554, 19.476168>,  <39.844994, 33.738186, 19.503511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061615, 33.638554, 19.476168>,  <40.422653, 33.472500, 19.430593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061615, 33.638554, 19.476168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349602, 0.552430, 0.756703,
		0.251194, 0.722830, -0.643754,
		-0.902596, 0.415137, 0.113936,
		39.790836, 33.763096, 19.510349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576412, 34.121441, 19.327068>,  <40.422653, 33.472500, 19.430593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576412, 34.121441, 19.327068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239326, 34.097347, 19.541058>,  <40.037075, 34.082893, 19.669451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239326, 34.097347, 19.541058>,  <40.576412, 34.121441, 19.327068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239326, 34.097347, 19.541058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429836, 0.523036, 0.735986,
		-0.324140, 0.850180, -0.414883,
		-0.842719, -0.060231, 0.534975,
		39.986511, 34.079277, 19.701550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493610, 34.805943, 19.625956>,  <40.576412, 34.121441, 19.327068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493610, 34.805943, 19.625956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203842, 34.649643, 19.853125>,  <40.029984, 34.555862, 19.989426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203842, 34.649643, 19.853125>,  <40.493610, 34.805943, 19.625956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203842, 34.649643, 19.853125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207681, 0.661855, 0.720289,
		-0.657334, 0.639737, -0.398307,
		-0.724417, -0.390750, 0.567921,
		39.986519, 34.532417, 20.023500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116230, 35.369812, 19.935020>,  <40.493610, 34.805943, 19.625956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116230, 35.369812, 19.935020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055130, 35.040924, 20.154333>,  <40.018471, 34.843590, 20.285921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055130, 35.040924, 20.154333>,  <40.116230, 35.369812, 19.935020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055130, 35.040924, 20.154333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212448, 0.514504, 0.830754,
		-0.965160, 0.243378, 0.096091,
		-0.152748, -0.822225, 0.548284,
		40.009304, 34.794258, 20.318819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623337, 35.488880, 20.534216>,  <40.116230, 35.369812, 19.935020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623337, 35.488880, 20.534216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812958, 35.155701, 20.648390>,  <39.926731, 34.955791, 20.716894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812958, 35.155701, 20.648390>,  <39.623337, 35.488880, 20.534216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812958, 35.155701, 20.648390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188311, 0.412584, 0.891243,
		-0.860125, -0.368744, 0.352439,
		0.474051, -0.832948, 0.285435,
		39.955173, 34.905815, 20.734020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352207, 35.411835, 21.179693>,  <39.623337, 35.488880, 20.534216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352207, 35.411835, 21.179693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697857, 35.211300, 21.162024>,  <39.905247, 35.090981, 21.151423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697857, 35.211300, 21.162024>,  <39.352207, 35.411835, 21.179693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697857, 35.211300, 21.162024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252120, 0.355250, 0.900129,
		-0.435577, -0.788960, 0.433377,
		0.864123, -0.501339, -0.044175,
		39.957092, 35.060898, 21.148771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132462, 34.881115, 21.620695>,  <39.352207, 35.411835, 21.179693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132462, 34.881115, 21.620695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527924, 34.933258, 21.590845>,  <39.765202, 34.964546, 21.572935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527924, 34.933258, 21.590845>,  <39.132462, 34.881115, 21.620695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527924, 34.933258, 21.590845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058677, 0.122169, 0.990773,
		0.138278, -0.983911, 0.113134,
		0.988654, 0.130363, -0.074626,
		39.824520, 34.972366, 21.568457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555538, 34.366085, 22.060503>,  <39.132462, 34.881115, 21.620695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555538, 34.366085, 22.060503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795864, 34.682789, 22.016438>,  <39.940060, 34.872810, 21.989998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795864, 34.682789, 22.016438>,  <39.555538, 34.366085, 22.060503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795864, 34.682789, 22.016438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073773, 0.082304, 0.993873,
		0.795974, -0.605265, -0.008960,
		0.600819, 0.791758, -0.110164,
		39.976109, 34.920315, 21.983389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191162, 34.260342, 22.455767>,  <39.555538, 34.366085, 22.060503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191162, 34.260342, 22.455767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186646, 34.653744, 22.383558>,  <40.183933, 34.889786, 22.340233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186646, 34.653744, 22.383558>,  <40.191162, 34.260342, 22.455767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186646, 34.653744, 22.383558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024330, 0.180207, 0.983328,
		0.999640, 0.015500, 0.021893,
		-0.011296, 0.983507, -0.180519,
		40.183258, 34.948795, 22.329403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732140, 34.623547, 22.964666>,  <40.191162, 34.260342, 22.455767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732140, 34.623547, 22.964666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478226, 34.902176, 22.830906>,  <40.325878, 35.069355, 22.750648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478226, 34.902176, 22.830906>,  <40.732140, 34.623547, 22.964666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478226, 34.902176, 22.830906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087174, 0.494579, 0.864750,
		0.767753, 0.519783, -0.374676,
		-0.634789, 0.696576, -0.334403,
		40.287788, 35.111149, 22.730585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064713, 35.257454, 23.179607>,  <40.732140, 34.623547, 22.964666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064713, 35.257454, 23.179607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683067, 35.354038, 23.108770>,  <40.454079, 35.411987, 23.066269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683067, 35.354038, 23.108770>,  <41.064713, 35.257454, 23.179607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683067, 35.354038, 23.108770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013025, 0.557390, 0.830148,
		0.299154, 0.794364, -0.528670,
		-0.954116, 0.241456, -0.177093,
		40.396832, 35.426476, 23.055643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986927, 35.906620, 23.249758>,  <41.064713, 35.257454, 23.179607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986927, 35.906620, 23.249758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604385, 35.803761, 23.305285>,  <40.374863, 35.742046, 23.338600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604385, 35.803761, 23.305285>,  <40.986927, 35.906620, 23.249758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604385, 35.803761, 23.305285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048459, 0.608010, 0.792449,
		-0.288176, 0.751132, -0.593932,
		-0.956351, -0.257146, 0.138815,
		40.317482, 35.726616, 23.346930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628899, 36.568916, 23.375212>,  <40.986927, 35.906620, 23.249758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628899, 36.568916, 23.375212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394859, 36.282825, 23.528103>,  <40.254436, 36.111172, 23.619839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394859, 36.282825, 23.528103>,  <40.628899, 36.568916, 23.375212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394859, 36.282825, 23.528103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099824, 0.531266, 0.841303,
		-0.804792, 0.454093, -0.382242,
		-0.585102, -0.715231, 0.382230,
		40.219330, 36.068256, 23.642773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964573, 36.968304, 23.620058>,  <40.628899, 36.568916, 23.375212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964573, 36.968304, 23.620058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980583, 36.617813, 23.812151>,  <39.990189, 36.407520, 23.927406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980583, 36.617813, 23.812151>,  <39.964573, 36.968304, 23.620058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980583, 36.617813, 23.812151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188944, 0.465310, 0.864747,
		-0.981172, -0.125349, -0.146934,
		0.040025, -0.876227, 0.480233,
		39.992592, 36.354946, 23.956221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396004, 36.918743, 24.110928>,  <39.964573, 36.968304, 23.620058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396004, 36.918743, 24.110928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644051, 36.635517, 24.246037>,  <39.792881, 36.465580, 24.327101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644051, 36.635517, 24.246037>,  <39.396004, 36.918743, 24.110928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644051, 36.635517, 24.246037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192526, 0.280030, 0.940488,
		-0.760517, -0.648245, 0.037331,
		0.620120, -0.708069, 0.337771,
		39.830086, 36.423096, 24.347368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005165, 36.486221, 24.555080>,  <39.396004, 36.918743, 24.110928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005165, 36.486221, 24.555080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393833, 36.453148, 24.643635>,  <39.627033, 36.433304, 24.696768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393833, 36.453148, 24.643635>,  <39.005165, 36.486221, 24.555080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393833, 36.453148, 24.643635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194533, 0.252067, 0.947955,
		-0.134188, -0.964171, 0.228842,
		0.971674, -0.082686, 0.221388,
		39.685337, 36.428341, 24.710051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042114, 36.137737, 25.174055>,  <39.005165, 36.486221, 24.555080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042114, 36.137737, 25.174055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399208, 36.316536, 25.151348>,  <39.613464, 36.423817, 25.137724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399208, 36.316536, 25.151348>,  <39.042114, 36.137737, 25.174055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399208, 36.316536, 25.151348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137707, 0.390616, 0.910195,
		0.429039, -0.804738, 0.410270,
		0.892728, 0.447006, -0.056771,
		39.667027, 36.450638, 25.134317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296200, 36.162010, 25.964241>,  <39.042114, 36.137737, 25.174055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296200, 36.162010, 25.964241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484695, 36.447075, 25.756374>,  <39.597794, 36.618114, 25.631655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484695, 36.447075, 25.756374>,  <39.296200, 36.162010, 25.964241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484695, 36.447075, 25.756374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155697, 0.512719, 0.844321,
		0.868154, -0.478788, 0.130656,
		0.471241, 0.712658, -0.519665,
		39.626068, 36.660873, 25.600475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858116, 36.170395, 26.302811>,  <39.296200, 36.162010, 25.964241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858116, 36.170395, 26.302811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845524, 36.522717, 26.113838>,  <39.837971, 36.734108, 26.000454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845524, 36.522717, 26.113838>,  <39.858116, 36.170395, 26.302811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845524, 36.522717, 26.113838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145333, 0.471676, 0.869713,
		0.988882, -0.041284, -0.142857,
		-0.031477, 0.880805, -0.472432,
		39.836082, 36.786957, 25.972109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530598, 36.383953, 26.381172>,  <39.858116, 36.170395, 26.302811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530598, 36.383953, 26.381172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277756, 36.689373, 26.328344>,  <40.126053, 36.872623, 26.296648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277756, 36.689373, 26.328344>,  <40.530598, 36.383953, 26.381172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277756, 36.689373, 26.328344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239173, 0.354363, 0.904004,
		0.737051, 0.539835, -0.406613,
		-0.632102, 0.763548, -0.132070,
		40.088127, 36.918438, 26.288723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796291, 36.914944, 26.730347>,  <40.530598, 36.383953, 26.381172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796291, 36.914944, 26.730347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427704, 37.064060, 26.686678>,  <40.206551, 37.153530, 26.660477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427704, 37.064060, 26.686678>,  <40.796291, 36.914944, 26.730347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427704, 37.064060, 26.686678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109507, 0.518942, 0.847766,
		0.372697, 0.769235, -0.519013,
		-0.921469, 0.372795, -0.109171,
		40.151264, 37.175900, 26.653927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844734, 37.570599, 26.959049>,  <40.796291, 36.914944, 26.730347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844734, 37.570599, 26.959049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450752, 37.501682, 26.964449>,  <40.214363, 37.460331, 26.967690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450752, 37.501682, 26.964449>,  <40.844734, 37.570599, 26.959049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450752, 37.501682, 26.964449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040139, 0.304036, 0.951815,
		-0.168096, 0.936951, -0.306377,
		-0.984953, -0.172294, 0.013499,
		40.155266, 37.449993, 26.968498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553772, 38.248653, 27.196819>,  <40.844734, 37.570599, 26.959049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553772, 38.248653, 27.196819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289890, 37.953693, 27.254820>,  <40.131561, 37.776718, 27.289621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289890, 37.953693, 27.254820>,  <40.553772, 38.248653, 27.196819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289890, 37.953693, 27.254820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031049, 0.219524, 0.975113,
		-0.750882, 0.638786, -0.167717,
		-0.659706, -0.737402, 0.145003,
		40.091980, 37.732471, 27.298321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047314, 38.545361, 27.648003>,  <40.553772, 38.248653, 27.196819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047314, 38.545361, 27.648003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033134, 38.147636, 27.688194>,  <40.024628, 37.909004, 27.712309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033134, 38.147636, 27.688194>,  <40.047314, 38.545361, 27.648003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033134, 38.147636, 27.688194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153918, 0.104776, 0.982513,
		-0.987447, 0.019365, -0.156756,
		-0.035451, -0.994307, 0.100480,
		40.022499, 37.849342, 27.718338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442883, 38.439079, 28.138195>,  <40.047314, 38.545361, 27.648003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442883, 38.439079, 28.138195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678978, 38.116673, 28.155888>,  <39.820637, 37.923229, 28.166502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678978, 38.116673, 28.155888>,  <39.442883, 38.439079, 28.138195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678978, 38.116673, 28.155888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124223, -0.036556, 0.991581,
		-0.797612, -0.590765, -0.121702,
		0.590240, -0.806015, 0.044229,
		39.856049, 37.874866, 28.169157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114483, 38.081367, 28.673433>,  <39.442883, 38.439079, 28.138195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114483, 38.081367, 28.673433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463081, 37.888988, 28.635084>,  <39.672241, 37.773563, 28.612076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463081, 37.888988, 28.635084>,  <39.114483, 38.081367, 28.673433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463081, 37.888988, 28.635084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129712, -0.414592, 0.900715,
		-0.472944, -0.772530, -0.423699,
		0.871491, -0.480947, -0.095872,
		39.724529, 37.744705, 28.606323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975536, 37.444420, 28.864731>,  <39.114483, 38.081367, 28.673433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975536, 37.444420, 28.864731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367901, 37.510689, 28.905468>,  <39.603317, 37.550449, 28.929911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367901, 37.510689, 28.905468>,  <38.975536, 37.444420, 28.864731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367901, 37.510689, 28.905468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003403, -0.508990, 0.860765,
		0.194438, -0.844679, -0.498710,
		0.980909, 0.165669, 0.101842,
		39.662174, 37.560390, 28.936020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316154, 36.809822, 29.172047>,  <38.975536, 37.444420, 28.864731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316154, 36.809822, 29.172047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569420, 37.103035, 29.271454>,  <39.721378, 37.278965, 29.331099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569420, 37.103035, 29.271454>,  <39.316154, 36.809822, 29.172047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569420, 37.103035, 29.271454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042883, -0.287359, 0.956862,
		0.772829, -0.616508, -0.150510,
		0.633164, 0.733036, 0.248517,
		39.759369, 37.322945, 29.346008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401066, 36.653862, 29.758423>,  <39.316154, 36.809822, 29.172047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401066, 36.653862, 29.758423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605251, 36.997429, 29.774830>,  <39.727764, 37.203571, 29.784674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605251, 36.997429, 29.774830>,  <39.401066, 36.653862, 29.758423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605251, 36.997429, 29.774830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147225, -0.134294, 0.979944,
		0.847203, -0.494186, -0.195007,
		0.510463, 0.858921, 0.041018,
		39.758389, 37.255104, 29.787136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027191, 36.521198, 30.089180>,  <39.401066, 36.653862, 29.758423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027191, 36.521198, 30.089180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912628, 36.899738, 30.149036>,  <39.843891, 37.126862, 30.184950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912628, 36.899738, 30.149036>,  <40.027191, 36.521198, 30.089180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912628, 36.899738, 30.149036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152308, -0.109227, 0.982279,
		0.945926, 0.304120, -0.112854,
		-0.286404, 0.946351, 0.149641,
		39.826706, 37.183643, 30.193928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477184, 36.631096, 30.549150>,  <40.027191, 36.521198, 30.089180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477184, 36.631096, 30.549150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208824, 36.926804, 30.572361>,  <40.047806, 37.104229, 30.586287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208824, 36.926804, 30.572361>,  <40.477184, 36.631096, 30.549150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208824, 36.926804, 30.572361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063786, -0.020427, 0.997755,
		0.738795, 0.673100, -0.033450,
		-0.670905, 0.739270, 0.058025,
		40.007553, 37.148586, 30.589769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729313, 37.055172, 30.996025>,  <40.477184, 36.631096, 30.549150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729313, 37.055172, 30.996025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336269, 37.129406, 30.993727>,  <40.100441, 37.173946, 30.992348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336269, 37.129406, 30.993727>,  <40.729313, 37.055172, 30.996025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336269, 37.129406, 30.993727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005802, 0.000244, 0.999983,
		0.185586, 0.982628, 0.000838,
		-0.982611, 0.185588, -0.005747,
		40.041485, 37.185081, 30.992002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641083, 37.401909, 31.640039>,  <40.729313, 37.055172, 30.996025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641083, 37.401909, 31.640039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269886, 37.287281, 31.544788>,  <40.047169, 37.218506, 31.487638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269886, 37.287281, 31.544788>,  <40.641083, 37.401909, 31.640039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269886, 37.287281, 31.544788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183918, -0.203508, 0.961644,
		-0.324037, 0.936196, 0.136150,
		-0.927995, -0.286568, -0.238127,
		39.991489, 37.201309, 31.473351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216003, 37.856602, 32.044006>,  <40.641083, 37.401909, 31.640039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216003, 37.856602, 32.044006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032330, 37.508102, 31.974646>,  <39.922123, 37.299004, 31.933029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032330, 37.508102, 31.974646>,  <40.216003, 37.856602, 32.044006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032330, 37.508102, 31.974646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075167, -0.232601, 0.969663,
		-0.885153, 0.432225, 0.172297,
		-0.459189, -0.871251, -0.173398,
		39.894573, 37.246727, 31.922626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733208, 37.639759, 32.635281>,  <40.216003, 37.856602, 32.044006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733208, 37.639759, 32.635281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868496, 37.313618, 32.447323>,  <39.949669, 37.117931, 32.334549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868496, 37.313618, 32.447323>,  <39.733208, 37.639759, 32.635281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868496, 37.313618, 32.447323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128151, -0.454761, 0.881345,
		-0.932299, -0.358309, -0.049322,
		0.338224, -0.815357, -0.469891,
		39.969963, 37.069012, 32.306355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311943, 36.987789, 32.690834>,  <39.733208, 37.639759, 32.635281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311943, 36.987789, 32.690834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709064, 36.945095, 32.669125>,  <39.947338, 36.919479, 32.656101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709064, 36.945095, 32.669125>,  <39.311943, 36.987789, 32.690834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709064, 36.945095, 32.669125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018460, -0.311389, 0.950103,
		-0.118308, -0.944269, -0.307178,
		0.992805, -0.106734, -0.054271,
		40.006905, 36.913074, 32.652843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455563, 36.457539, 33.070732>,  <39.311943, 36.987789, 32.690834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455563, 36.457539, 33.070732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809540, 36.640903, 33.037899>,  <40.021927, 36.750923, 33.018200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809540, 36.640903, 33.037899>,  <39.455563, 36.457539, 33.070732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809540, 36.640903, 33.037899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164178, -0.142159, 0.976133,
		0.435801, -0.877297, -0.201063,
		0.884942, 0.458410, -0.082080,
		40.075024, 36.778427, 33.013275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785683, 36.135731, 33.612747>,  <39.455563, 36.457539, 33.070732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785683, 36.135731, 33.612747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048355, 36.430012, 33.546398>,  <40.205959, 36.606579, 33.506588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048355, 36.430012, 33.546398>,  <39.785683, 36.135731, 33.612747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048355, 36.430012, 33.546398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301828, -0.054812, 0.951785,
		0.691137, -0.675085, -0.258049,
		0.656680, 0.735701, -0.165877,
		40.245358, 36.650723, 33.496635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307438, 35.980003, 34.026566>,  <39.785683, 36.135731, 33.612747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307438, 35.980003, 34.026566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408600, 36.354069, 33.927368>,  <40.469296, 36.578510, 33.867851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408600, 36.354069, 33.927368>,  <40.307438, 35.980003, 34.026566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408600, 36.354069, 33.927368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497936, 0.093958, 0.862108,
		0.829517, -0.341515, -0.441892,
		0.252904, 0.935168, -0.247992,
		40.484470, 36.634621, 33.852970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072533, 36.012421, 34.173805>,  <40.307438, 35.980003, 34.026566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072533, 36.012421, 34.173805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844635, 36.339489, 34.206795>,  <40.707897, 36.535732, 34.226589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844635, 36.339489, 34.206795>,  <41.072533, 36.012421, 34.173805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844635, 36.339489, 34.206795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319603, 0.128002, 0.938866,
		0.757131, 0.561270, -0.334259,
		-0.569743, 0.817675, 0.082470,
		40.673714, 36.584793, 34.231537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555904, 36.432251, 34.673492>,  <41.072533, 36.012421, 34.173805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555904, 36.432251, 34.673492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198196, 36.610725, 34.659626>,  <40.983574, 36.717812, 34.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198196, 36.610725, 34.659626>,  <41.555904, 36.432251, 34.673492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198196, 36.610725, 34.659626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044570, 0.165879, 0.985138,
		0.445308, 0.879432, -0.168227,
		-0.894268, 0.446188, -0.034671,
		40.929916, 36.744583, 34.649223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588409, 37.075687, 35.088135>,  <41.555904, 36.432251, 34.673492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588409, 37.075687, 35.088135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202976, 36.969006, 35.080364>,  <40.971718, 36.904995, 35.075703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202976, 36.969006, 35.080364>,  <41.588409, 37.075687, 35.088135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202976, 36.969006, 35.080364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078425, 0.212385, 0.974034,
		-0.255654, 0.940085, -0.225567,
		-0.963582, -0.266706, -0.019429,
		40.913902, 36.888992, 35.074535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317406, 37.560986, 35.468002>,  <41.588409, 37.075687, 35.088135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317406, 37.560986, 35.468002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051453, 37.262226, 35.464630>,  <40.891880, 37.082970, 35.462608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051453, 37.262226, 35.464630>,  <41.317406, 37.560986, 35.468002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051453, 37.262226, 35.464630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129882, 0.104493, 0.986008,
		-0.735566, 0.656677, -0.166484,
		-0.664886, -0.746898, -0.008429,
		40.851986, 37.038158, 35.462101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697865, 37.692493, 35.934662>,  <41.317406, 37.560986, 35.468002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697865, 37.692493, 35.934662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741531, 37.298027, 35.884773>,  <40.767731, 37.061348, 35.854839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741531, 37.298027, 35.884773>,  <40.697865, 37.692493, 35.934662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741531, 37.298027, 35.884773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071062, -0.117406, 0.990538,
		-0.991480, -0.116994, 0.057263,
		0.109164, -0.986168, -0.124720,
		40.774281, 37.002178, 35.847359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145557, 37.516319, 36.404720>,  <40.697865, 37.692493, 35.934662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145557, 37.516319, 36.404720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234356, 37.126785, 36.385254>,  <40.287636, 36.893066, 36.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234356, 37.126785, 36.385254>,  <40.145557, 37.516319, 36.404720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234356, 37.126785, 36.385254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209250, -0.001172, 0.977861,
		-0.952331, -0.227262, 0.203515,
		0.221992, -0.973833, -0.048671,
		40.300953, 36.834637, 36.370651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746624, 37.151730, 36.905544>,  <40.145557, 37.516319, 36.404720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746624, 37.151730, 36.905544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079700, 36.944450, 36.827480>,  <40.279549, 36.820084, 36.780643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079700, 36.944450, 36.827480>,  <39.746624, 37.151730, 36.905544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079700, 36.944450, 36.827480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131467, -0.157356, 0.978752,
		-0.537901, -0.840658, -0.062903,
		0.832694, -0.518202, -0.195160,
		40.329510, 36.788990, 36.768932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721123, 36.571690, 37.348888>,  <39.746624, 37.151730, 36.905544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721123, 36.571690, 37.348888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105278, 36.601208, 37.241409>,  <40.335773, 36.618919, 37.176922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105278, 36.601208, 37.241409>,  <39.721123, 36.571690, 37.348888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105278, 36.601208, 37.241409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278289, -0.303041, 0.911439,
		-0.014165, -0.950116, -0.311576,
		0.960393, 0.073798, -0.268700,
		40.393394, 36.623348, 37.160801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935780, 35.894615, 37.475651>,  <39.721123, 36.571690, 37.348888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935780, 35.894615, 37.475651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240242, 36.153187, 37.454609>,  <40.422920, 36.308331, 37.441982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240242, 36.153187, 37.454609>,  <39.935780, 35.894615, 37.475651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240242, 36.153187, 37.454609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254854, -0.223521, 0.940791,
		0.596394, -0.729500, -0.334880,
		0.761159, 0.646428, -0.052609,
		40.468590, 36.347115, 37.438828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588459, 35.541920, 37.603313>,  <39.935780, 35.894615, 37.475651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588459, 35.541920, 37.603313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663403, 35.926311, 37.684715>,  <40.708370, 36.156948, 37.733559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663403, 35.926311, 37.684715>,  <40.588459, 35.541920, 37.603313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663403, 35.926311, 37.684715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296065, -0.252788, 0.921110,
		0.936611, -0.112330, -0.331876,
		0.187362, 0.960979, 0.203507,
		40.719612, 36.214603, 37.745766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177700, 35.545902, 38.026405>,  <40.588459, 35.541920, 37.603313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177700, 35.545902, 38.026405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049358, 35.921032, 38.079372>,  <40.972355, 36.146111, 38.111153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049358, 35.921032, 38.079372>,  <41.177700, 35.545902, 38.026405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049358, 35.921032, 38.079372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285841, -0.037412, 0.957546,
		0.902966, 0.345085, -0.256066,
		-0.320855, 0.937826, 0.132421,
		40.953102, 36.202381, 38.119099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717941, 35.866840, 38.291519>,  <41.177700, 35.545902, 38.026405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717941, 35.866840, 38.291519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376896, 36.049534, 38.393063>,  <41.172268, 36.159149, 38.453987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376896, 36.049534, 38.393063>,  <41.717941, 35.866840, 38.291519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376896, 36.049534, 38.393063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348375, 0.134746, 0.927620,
		0.389472, 0.879337, -0.274002,
		-0.852612, 0.456737, 0.253859,
		41.121113, 36.186554, 38.469219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876633, 36.521477, 38.642654>,  <41.717941, 35.866840, 38.291519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876633, 36.521477, 38.642654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529842, 36.354855, 38.752071>,  <41.321766, 36.254879, 38.817722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529842, 36.354855, 38.752071>,  <41.876633, 36.521477, 38.642654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529842, 36.354855, 38.752071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247133, 0.117272, 0.961859,
		-0.432750, 0.901513, 0.001273,
		-0.866979, -0.416559, 0.273543,
		41.269749, 36.229885, 38.834133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475632, 37.004425, 39.094913>,  <41.876633, 36.521477, 38.642654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475632, 37.004425, 39.094913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390324, 36.620808, 39.169491>,  <41.339138, 36.390636, 39.214237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390324, 36.620808, 39.169491>,  <41.475632, 37.004425, 39.094913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390324, 36.620808, 39.169491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167482, 0.152120, 0.974068,
		-0.962531, 0.238963, 0.128179,
		-0.213267, -0.959039, 0.186442,
		41.326344, 36.333096, 39.225422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109123, 37.113277, 39.652489>,  <41.475632, 37.004425, 39.094913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109123, 37.113277, 39.652489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225986, 36.731548, 39.677479>,  <41.296104, 36.502510, 39.692474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225986, 36.731548, 39.677479>,  <41.109123, 37.113277, 39.652489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225986, 36.731548, 39.677479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224180, 0.131848, 0.965588,
		-0.929723, -0.268101, 0.252461,
		0.292161, -0.954326, 0.062480,
		41.313637, 36.445251, 39.696224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211582, 37.366817, 40.300266>,  <41.109123, 37.113277, 39.652489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211582, 37.366817, 40.300266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228542, 37.696003, 40.073666>,  <41.238720, 37.893517, 39.937706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228542, 37.696003, 40.073666>,  <41.211582, 37.366817, 40.300266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228542, 37.696003, 40.073666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292229, 0.552432, 0.780655,
		0.955408, 0.132449, 0.263918,
		0.042399, 0.822968, -0.566503,
		41.241261, 37.942894, 39.903713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686371, 37.833820, 40.605541>,  <41.211582, 37.366817, 40.300266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686371, 37.833820, 40.605541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394909, 38.021027, 40.405529>,  <41.220032, 38.133350, 40.285522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394909, 38.021027, 40.405529>,  <41.686371, 37.833820, 40.605541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394909, 38.021027, 40.405529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268104, 0.476908, 0.837066,
		0.630229, 0.743988, -0.222022,
		-0.728651, 0.468018, -0.500028,
		41.176315, 38.161430, 40.255520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783882, 37.585220, 41.247723>,  <41.686371, 37.833820, 40.605541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783882, 37.585220, 41.247723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833710, 37.223969, 41.412083>,  <41.863605, 37.007217, 41.510700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833710, 37.223969, 41.412083>,  <41.783882, 37.585220, 41.247723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833710, 37.223969, 41.412083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138331, -0.425889, -0.894138,
		0.982520, 0.054546, -0.177985,
		0.124574, -0.903130, 0.410899,
		41.871082, 36.953030, 41.535351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261639, 37.229984, 40.875938>,  <41.783882, 37.585220, 41.247723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261639, 37.229984, 40.875938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018566, 36.959118, 41.041912>,  <41.872723, 36.796600, 41.141499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018566, 36.959118, 41.041912>,  <42.261639, 37.229984, 40.875938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018566, 36.959118, 41.041912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032258, -0.500994, -0.864849,
		0.793526, -0.538937, 0.282600,
		-0.607680, -0.677165, 0.414937,
		41.836262, 36.755970, 41.166393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376640, 36.628345, 40.474667>,  <42.261639, 37.229984, 40.875938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376640, 36.628345, 40.474667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038429, 36.540436, 40.669304>,  <41.835503, 36.487690, 40.786087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038429, 36.540436, 40.669304>,  <42.376640, 36.628345, 40.474667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038429, 36.540436, 40.669304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226325, -0.677905, -0.699444,
		0.483584, -0.701531, 0.523451,
		-0.845532, -0.219770, 0.486598,
		41.784771, 36.474506, 40.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329178, 35.957180, 40.677528>,  <42.376640, 36.628345, 40.474667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329178, 35.957180, 40.677528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950840, 36.078396, 40.630974>,  <41.723839, 36.151127, 40.603043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950840, 36.078396, 40.630974>,  <42.329178, 35.957180, 40.677528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950840, 36.078396, 40.630974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019885, -0.411943, -0.910993,
		-0.324011, -0.859343, 0.395660,
		-0.945844, 0.303040, -0.116386,
		41.667088, 36.169308, 40.596058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038883, 35.487755, 40.204285>,  <42.329178, 35.957180, 40.677528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038883, 35.487755, 40.204285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790215, 35.800232, 40.181454>,  <41.641014, 35.987720, 40.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790215, 35.800232, 40.181454>,  <42.038883, 35.487755, 40.204285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790215, 35.800232, 40.181454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411830, -0.387974, -0.824543,
		-0.666274, -0.489089, 0.562913,
		-0.621671, 0.781197, -0.057076,
		41.603714, 36.034592, 40.164330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399712, 35.209808, 39.934414>,  <42.038883, 35.487755, 40.204285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399712, 35.209808, 39.934414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389690, 35.600735, 39.850288>,  <41.383678, 35.835289, 39.799812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389690, 35.600735, 39.850288>,  <41.399712, 35.209808, 39.934414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389690, 35.600735, 39.850288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506881, -0.193747, -0.839960,
		-0.861652, 0.085563, 0.500235,
		-0.025049, 0.977313, -0.210313,
		41.382175, 35.893929, 39.787193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715778, 35.307018, 39.594707>,  <41.399712, 35.209808, 39.934414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715778, 35.307018, 39.594707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919769, 35.637413, 39.498650>,  <41.042164, 35.835651, 39.441013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919769, 35.637413, 39.498650>,  <40.715778, 35.307018, 39.594707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919769, 35.637413, 39.498650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434016, 0.006048, -0.900885,
		-0.742667, 0.563656, 0.361576,
		0.509976, 0.825988, -0.240144,
		41.072762, 35.885208, 39.426605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231804, 35.639473, 39.351456>,  <40.715778, 35.307018, 39.594707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231804, 35.639473, 39.351456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544983, 35.799870, 39.161217>,  <40.732891, 35.896107, 39.047073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544983, 35.799870, 39.161217>,  <40.231804, 35.639473, 39.351456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544983, 35.799870, 39.161217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538346, 0.053654, -0.841014,
		-0.311725, 0.914508, 0.257882,
		0.782950, 0.400995, -0.475597,
		40.779869, 35.920170, 39.018539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995468, 36.152088, 38.777527>,  <40.231804, 35.639473, 39.351456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995468, 36.152088, 38.777527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371807, 36.059807, 38.678261>,  <40.597610, 36.004440, 38.618702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371807, 36.059807, 38.678261>,  <39.995468, 36.152088, 38.777527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371807, 36.059807, 38.678261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254368, 0.002959, -0.967103,
		0.223845, 0.973020, -0.055899,
		0.940846, -0.230700, -0.248167,
		40.654060, 35.990597, 38.603809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347031, 36.652836, 38.360950>,  <39.995468, 36.152088, 38.777527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347031, 36.652836, 38.360950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416935, 36.262173, 38.311001>,  <40.458878, 36.027775, 38.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416935, 36.262173, 38.311001>,  <40.347031, 36.652836, 38.360950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416935, 36.262173, 38.311001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380966, 0.049876, -0.923243,
		0.907923, 0.208919, -0.363358,
		0.174760, -0.976660, -0.124875,
		40.469364, 35.969173, 38.273537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349949, 37.283772, 38.217731>,  <40.347031, 36.652836, 38.360950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349949, 37.283772, 38.217731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648338, 37.018681, 38.191456>,  <40.827374, 36.859627, 38.175690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648338, 37.018681, 38.191456>,  <40.349949, 37.283772, 38.217731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648338, 37.018681, 38.191456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000149, 0.098807, -0.995107,
		0.665975, 0.742314, 0.073806,
		0.745974, -0.662727, -0.065692,
		40.872131, 36.819862, 38.171749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004402, 37.483570, 37.906857>,  <40.349949, 37.283772, 38.217731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004402, 37.483570, 37.906857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918369, 37.095379, 37.863205>,  <40.866749, 36.862465, 37.837013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918369, 37.095379, 37.863205>,  <41.004402, 37.483570, 37.906857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918369, 37.095379, 37.863205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022174, 0.116567, -0.992935,
		0.976345, -0.211141, -0.046590,
		-0.215080, -0.970480, -0.109128,
		40.853844, 36.804234, 37.830467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417347, 37.230331, 37.434292>,  <41.004402, 37.483570, 37.906857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417347, 37.230331, 37.434292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113995, 36.969631, 37.437943>,  <40.931984, 36.813213, 37.440132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113995, 36.969631, 37.437943>,  <41.417347, 37.230331, 37.434292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113995, 36.969631, 37.437943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002128, -0.016479, -0.999862,
		0.651808, -0.758257, 0.013885,
		-0.758381, -0.651747, 0.009127,
		40.886478, 36.774109, 37.440681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638752, 36.494434, 37.030804>,  <41.417347, 37.230331, 37.434292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638752, 36.494434, 37.030804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243835, 36.556087, 37.015278>,  <41.006886, 36.593079, 37.005962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243835, 36.556087, 37.015278>,  <41.638752, 36.494434, 37.030804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243835, 36.556087, 37.015278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014103, -0.158316, -0.987288,
		-0.158316, -0.975285, 0.154130,
		0.987288, -0.154130, 0.038818,
		40.947651, 36.602325, 37.003632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334465, 36.007915, 36.598171>,  <41.638752, 36.494434, 37.030804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334465, 36.007915, 36.598171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037487, 36.271912, 36.644115>,  <40.859303, 36.430309, 36.671684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037487, 36.271912, 36.644115>,  <41.334465, 36.007915, 36.598171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037487, 36.271912, 36.644115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184326, -0.036413, -0.982190,
		-0.644052, -0.750392, 0.148688,
		-0.742442, 0.659989, 0.114865,
		40.814754, 36.469910, 36.678574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725758, 35.688404, 36.350384>,  <41.334465, 36.007915, 36.598171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725758, 35.688404, 36.350384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720833, 36.087875, 36.330444>,  <40.717876, 36.327560, 36.318481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720833, 36.087875, 36.330444>,  <40.725758, 35.688404, 36.350384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720833, 36.087875, 36.330444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218021, -0.051334, -0.974593,
		-0.975866, -0.001130, 0.218365,
		-0.012311, 0.998681, -0.049849,
		40.717140, 36.387478, 36.315491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466862, 35.825863, 35.749943>,  <40.725758, 35.688404, 36.350384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466862, 35.825863, 35.749943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508350, 36.218414, 35.814617>,  <40.533245, 36.453945, 35.853424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508350, 36.218414, 35.814617>,  <40.466862, 35.825863, 35.749943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508350, 36.218414, 35.814617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215167, 0.180855, -0.959685,
		-0.971054, 0.064749, 0.229918,
		0.103721, 0.981376, 0.161688,
		40.539467, 36.512829, 35.863125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965088, 36.100094, 35.380600>,  <40.466862, 35.825863, 35.749943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965088, 36.100094, 35.380600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230156, 36.398277, 35.409321>,  <40.389198, 36.577187, 35.426552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230156, 36.398277, 35.409321>,  <39.965088, 36.100094, 35.380600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230156, 36.398277, 35.409321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094750, 0.178556, -0.979357,
		-0.742894, 0.642187, 0.188956,
		0.662670, 0.745462, 0.071801,
		40.428955, 36.621918, 35.430862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666786, 36.619831, 34.962761>,  <39.965088, 36.100094, 35.380600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666786, 36.619831, 34.962761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051880, 36.717869, 35.008492>,  <40.282936, 36.776691, 35.035931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051880, 36.717869, 35.008492>,  <39.666786, 36.619831, 34.962761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051880, 36.717869, 35.008492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058764, 0.223070, -0.973030,
		-0.263986, 0.943488, 0.200355,
		0.962735, 0.245093, 0.114331,
		40.340702, 36.791397, 35.042789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751797, 37.333363, 34.738213>,  <39.666786, 36.619831, 34.962761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751797, 37.333363, 34.738213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101917, 37.143135, 34.703171>,  <40.311989, 37.028999, 34.682148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101917, 37.143135, 34.703171>,  <39.751797, 37.333363, 34.738213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101917, 37.143135, 34.703171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011676, 0.201885, -0.979340,
		0.483430, 0.856198, 0.182264,
		0.875305, -0.475571, -0.087601,
		40.364510, 37.000465, 34.676891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069687, 37.750237, 34.304276>,  <39.751797, 37.333363, 34.738213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069687, 37.750237, 34.304276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256973, 37.396881, 34.296249>,  <40.369347, 37.184868, 34.291435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256973, 37.396881, 34.296249>,  <40.069687, 37.750237, 34.304276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256973, 37.396881, 34.296249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016689, 0.031543, -0.999363,
		0.883457, 0.467582, 0.029512,
		0.468215, -0.883387, -0.020063,
		40.397438, 37.131866, 34.290230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753868, 37.801266, 33.933510>,  <40.069687, 37.750237, 34.304276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753868, 37.801266, 33.933510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594769, 37.437771, 33.882912>,  <40.499310, 37.219673, 33.852554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594769, 37.437771, 33.882912>,  <40.753868, 37.801266, 33.933510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594769, 37.437771, 33.882912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160900, 0.066649, -0.984718,
		0.903278, -0.412019, 0.119706,
		-0.397744, -0.908734, -0.126496,
		40.475445, 37.165150, 33.844963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981277, 37.701595, 33.213943>,  <40.753868, 37.801266, 33.933510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981277, 37.701595, 33.213943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747681, 37.391365, 33.309814>,  <40.607525, 37.205227, 33.367336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747681, 37.391365, 33.309814>,  <40.981277, 37.701595, 33.213943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747681, 37.391365, 33.309814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140924, -0.193910, -0.970845,
		0.799435, -0.600739, 0.003945,
		-0.583990, -0.775571, 0.239677,
		40.572483, 37.158695, 33.381718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296680, 37.171593, 32.908508>,  <40.981277, 37.701595, 33.213943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296680, 37.171593, 32.908508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910431, 37.075169, 32.947403>,  <40.678680, 37.017315, 32.970741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910431, 37.075169, 32.947403>,  <41.296680, 37.171593, 32.908508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910431, 37.075169, 32.947403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045882, -0.210134, -0.976595,
		0.255852, -0.947488, 0.191851,
		-0.965626, -0.241061, 0.097236,
		40.620743, 37.002850, 32.976574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241280, 36.545418, 32.592113>,  <41.296680, 37.171593, 32.908508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241280, 36.545418, 32.592113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871620, 36.697849, 32.602867>,  <40.649822, 36.789307, 32.609318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871620, 36.697849, 32.602867>,  <41.241280, 36.545418, 32.592113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871620, 36.697849, 32.602867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191421, -0.401028, -0.895843,
		-0.330602, -0.833043, 0.443557,
		-0.924154, 0.381073, 0.026881,
		40.594376, 36.812172, 32.610931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725700, 36.050323, 32.471306>,  <41.241280, 36.545418, 32.592113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725700, 36.050323, 32.471306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552052, 36.397671, 32.375408>,  <40.447861, 36.606079, 32.317871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552052, 36.397671, 32.375408>,  <40.725700, 36.050323, 32.471306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552052, 36.397671, 32.375408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556458, -0.467776, -0.686688,
		-0.708444, -0.164698, 0.686281,
		-0.434122, 0.868366, -0.239746,
		40.421814, 36.658180, 32.303486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052742, 35.501469, 32.757595>,  <40.725700, 36.050323, 32.471306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052742, 35.501469, 32.757595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442581, 35.437550, 32.820354>,  <41.676487, 35.399197, 32.858009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442581, 35.437550, 32.820354>,  <41.052742, 35.501469, 32.757595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442581, 35.437550, 32.820354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157046, 0.011813, 0.987521,
		-0.159663, -0.987078, -0.013584,
		0.974599, -0.159804, 0.156903,
		41.734962, 35.389610, 32.867424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247627, 34.859966, 33.192062>,  <41.052742, 35.501469, 32.757595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247627, 34.859966, 33.192062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528755, 35.135925, 33.261444>,  <41.697433, 35.301502, 33.303074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528755, 35.135925, 33.261444>,  <41.247627, 34.859966, 33.192062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528755, 35.135925, 33.261444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112358, -0.133120, 0.984710,
		0.702439, -0.711563, -0.016044,
		0.702819, 0.689896, 0.173458,
		41.739601, 35.342896, 33.313480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809017, 34.569141, 33.592003>,  <41.247627, 34.859966, 33.192062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809017, 34.569141, 33.592003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770191, 34.964489, 33.638832>,  <41.746895, 35.201698, 33.666931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770191, 34.964489, 33.638832>,  <41.809017, 34.569141, 33.592003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770191, 34.964489, 33.638832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065629, -0.123729, 0.990143,
		0.993112, 0.088425, 0.076876,
		-0.097065, 0.988368, 0.117073,
		41.741070, 35.260998, 33.673954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261963, 34.964504, 33.105961>,  <41.809017, 34.569141, 33.592003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261963, 34.964504, 33.105961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661137, 34.970684, 33.130890>,  <42.900642, 34.974392, 33.145847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661137, 34.970684, 33.130890>,  <42.261963, 34.964504, 33.105961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661137, 34.970684, 33.130890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034410, -0.690801, 0.722226,
		0.054215, -0.722880, -0.688843,
		0.997937, 0.015452, 0.062326,
		42.960518, 34.975319, 33.149590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653191, 34.339039, 32.945484>,  <42.261963, 34.964504, 33.105961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653191, 34.339039, 32.945484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865829, 34.548977, 33.211399>,  <42.993412, 34.674938, 33.370949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865829, 34.548977, 33.211399>,  <42.653191, 34.339039, 32.945484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865829, 34.548977, 33.211399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165081, -0.705624, 0.689088,
		0.830756, -0.476060, -0.288463,
		0.531594, 0.524845, 0.664790,
		43.025307, 34.706429, 33.410835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127529, 33.889038, 32.717922>,  <42.653191, 34.339039, 32.945484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127529, 33.889038, 32.717922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526302, 33.918987, 32.708874>,  <43.765568, 33.936958, 32.703445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526302, 33.918987, 32.708874>,  <43.127529, 33.889038, 32.717922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526302, 33.918987, 32.708874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012151, -0.137406, -0.990440,
		-0.077266, 0.987681, -0.136075,
		0.996937, 0.074874, -0.022618,
		43.825382, 33.941448, 32.702087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365696, 34.447811, 32.077076>,  <43.127529, 33.889038, 32.717922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365696, 34.447811, 32.077076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647823, 34.173813, 32.150078>,  <43.817101, 34.009415, 32.193878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647823, 34.173813, 32.150078>,  <43.365696, 34.447811, 32.077076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647823, 34.173813, 32.150078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001371, -0.256128, -0.966642,
		0.708893, 0.682037, -0.179712,
		0.705315, -0.684999, 0.182502,
		43.859417, 33.968315, 32.204830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991108, 34.639545, 31.520277>,  <43.365696, 34.447811, 32.077076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991108, 34.639545, 31.520277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963787, 34.255013, 31.626987>,  <43.947395, 34.024292, 31.691013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963787, 34.255013, 31.626987>,  <43.991108, 34.639545, 31.520277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963787, 34.255013, 31.626987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096499, -0.272515, -0.957300,
		0.992987, -0.039641, 0.111381,
		-0.068301, -0.961335, 0.266778,
		43.943298, 33.966614, 31.707022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367722, 34.078419, 31.950254>,  <43.991108, 34.639545, 31.520277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367722, 34.078419, 31.950254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653774, 33.799072, 31.938414>,  <44.825405, 33.631466, 31.931309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653774, 33.799072, 31.938414>,  <44.367722, 34.078419, 31.950254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653774, 33.799072, 31.938414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519334, 0.502504, 0.691218,
		-0.467847, -0.509683, 0.722040,
		0.715130, -0.698364, -0.029601,
		44.868313, 33.589561, 31.929533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513721, 33.622673, 32.506119>,  <44.367722, 34.078419, 31.950254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513721, 33.622673, 32.506119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858021, 33.684456, 32.312107>,  <45.064602, 33.721527, 32.195698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858021, 33.684456, 32.312107>,  <44.513721, 33.622673, 32.506119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858021, 33.684456, 32.312107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329178, 0.557900, 0.761833,
		0.388271, -0.815408, 0.429367,
		0.860748, 0.154459, -0.485031,
		45.116245, 33.730793, 32.166599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186035, 33.391499, 32.746521>,  <44.513721, 33.622673, 32.506119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186035, 33.391499, 32.746521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230652, 33.729275, 32.536957>,  <45.257423, 33.931942, 32.411221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230652, 33.729275, 32.536957>,  <45.186035, 33.391499, 32.746521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230652, 33.729275, 32.536957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318050, 0.469133, 0.823868,
		0.941489, -0.258528, -0.216244,
		0.111545, 0.844439, -0.523908,
		45.264114, 33.982605, 32.379784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917675, 33.673141, 32.770119>,  <45.186035, 33.391499, 32.746521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917675, 33.673141, 32.770119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683418, 33.992313, 32.713093>,  <45.542862, 34.183815, 32.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683418, 33.992313, 32.713093>,  <45.917675, 33.673141, 32.770119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683418, 33.992313, 32.713093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489825, 0.488523, 0.722092,
		0.645825, 0.353059, -0.676948,
		-0.585646, 0.797931, -0.142564,
		45.507725, 34.231693, 32.670322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197346, 34.285770, 32.594379>,  <45.917675, 33.673141, 32.770119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197346, 34.285770, 32.594379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864426, 34.381348, 32.794453>,  <45.664673, 34.438694, 32.914497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864426, 34.381348, 32.794453>,  <46.197346, 34.285770, 32.594379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864426, 34.381348, 32.794453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545675, 0.511947, 0.663437,
		-0.097542, 0.825116, -0.556479,
		-0.832301, 0.238943, 0.500181,
		45.614735, 34.453030, 32.944508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993706, 35.113487, 32.749504>,  <46.197346, 34.285770, 32.594379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993706, 35.113487, 32.749504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886856, 34.842236, 33.023376>,  <45.822746, 34.679485, 33.187698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886856, 34.842236, 33.023376>,  <45.993706, 35.113487, 32.749504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886856, 34.842236, 33.023376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466003, 0.530999, 0.707729,
		-0.843496, 0.508113, 0.174169,
		-0.267123, -0.678130, 0.684678,
		45.806721, 34.638798, 33.228779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678707, 35.438072, 33.284187>,  <45.993706, 35.113487, 32.749504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678707, 35.438072, 33.284187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836475, 35.107277, 33.444450>,  <45.931137, 34.908798, 33.540607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836475, 35.107277, 33.444450>,  <45.678707, 35.438072, 33.284187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836475, 35.107277, 33.444450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570091, 0.562164, 0.599139,
		-0.720714, -0.007904, 0.693188,
		0.394420, -0.826988, 0.400653,
		45.954800, 34.859180, 33.564648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820965, 35.531940, 34.081036>,  <45.678707, 35.438072, 33.284187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820965, 35.531940, 34.081036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055508, 35.229786, 33.964024>,  <46.196236, 35.048492, 33.893814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055508, 35.229786, 33.964024>,  <45.820965, 35.531940, 34.081036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055508, 35.229786, 33.964024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682810, 0.266601, 0.680217,
		-0.435837, -0.598595, 0.672109,
		0.586359, -0.755387, -0.292532,
		46.231415, 35.003170, 33.876263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003674, 35.162380, 34.577591>,  <45.820965, 35.531940, 34.081036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003674, 35.162380, 34.577591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302387, 35.091270, 34.321243>,  <46.481613, 35.048603, 34.167435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302387, 35.091270, 34.321243>,  <46.003674, 35.162380, 34.577591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302387, 35.091270, 34.321243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661823, 0.293756, 0.689709,
		0.065645, -0.939203, 0.337028,
		0.746781, -0.177777, -0.640870,
		46.526421, 35.037937, 34.128983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538342, 35.214851, 34.961010>,  <46.003674, 35.162380, 34.577591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538342, 35.214851, 34.961010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.747665, 35.193192, 34.620842>,  <46.873260, 35.180195, 34.416740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.747665, 35.193192, 34.620842>,  <46.538342, 35.214851, 34.961010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.747665, 35.193192, 34.620842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851925, 0.055774, 0.520686,
		0.019237, -0.996974, 0.075318,
		0.523311, -0.054149, -0.850420,
		46.904659, 35.176949, 34.365715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816132, 34.582928, 34.935040>,  <46.538342, 35.214851, 34.961010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816132, 34.582928, 34.935040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019478, 34.892204, 34.783386>,  <47.141483, 35.077770, 34.692394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019478, 34.892204, 34.783386>,  <46.816132, 34.582928, 34.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019478, 34.892204, 34.783386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665624, -0.073480, 0.742661,
		0.546362, -0.629899, -0.552011,
		0.508363, 0.773193, -0.379129,
		47.171986, 35.124161, 34.669647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.605343, 34.464672, 34.923008>,  <46.816132, 34.582928, 34.935040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.605343, 34.464672, 34.923008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509491, 34.851151, 34.961060>,  <47.451981, 35.083038, 34.983891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509491, 34.851151, 34.961060>,  <47.605343, 34.464672, 34.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509491, 34.851151, 34.961060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501748, 0.039359, 0.864118,
		0.831160, 0.254801, -0.494217,
		-0.239630, 0.966192, 0.095133,
		47.437603, 35.141006, 34.989601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.640785, 32.431461, 24.028822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314972, 32.660255, 24.067522>,  <36.119484, 32.797531, 24.090742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314972, 32.660255, 24.067522>,  <36.640785, 32.431461, 24.028822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314972, 32.660255, 24.067522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187184, 0.101284, 0.977090,
		0.549083, 0.813986, -0.189566,
		-0.814537, 0.571987, 0.096752,
		36.070610, 32.831852, 24.096548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807411, 32.903389, 24.548822>,  <36.640785, 32.431461, 24.028822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807411, 32.903389, 24.548822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408115, 32.916870, 24.568363>,  <36.168537, 32.924957, 24.580088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408115, 32.916870, 24.568363>,  <36.807411, 32.903389, 24.548822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408115, 32.916870, 24.568363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046061, -0.079162, 0.995797,
		0.037424, 0.996292, 0.077470,
		-0.998237, 0.033699, 0.048853,
		36.108643, 32.926979, 24.583019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604942, 33.520206, 25.017805>,  <36.807411, 32.903389, 24.548822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604942, 33.520206, 25.017805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272892, 33.297382, 25.008167>,  <36.073662, 33.163689, 25.002384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272892, 33.297382, 25.008167>,  <36.604942, 33.520206, 25.017805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272892, 33.297382, 25.008167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124217, 0.142635, 0.981950,
		-0.543564, 0.818134, -0.187601,
		-0.830125, -0.557056, -0.024095,
		36.023853, 33.130264, 25.000938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156647, 33.846485, 25.422831>,  <36.604942, 33.520206, 25.017805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156647, 33.846485, 25.422831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963402, 33.496429, 25.412048>,  <35.847454, 33.286396, 25.405579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963402, 33.496429, 25.412048>,  <36.156647, 33.846485, 25.422831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963402, 33.496429, 25.412048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276043, 0.123027, 0.953239,
		-0.830904, 0.467963, -0.301013,
		-0.483113, -0.875143, -0.026954,
		35.818466, 33.233887, 25.403961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531452, 33.972031, 25.741467>,  <36.156647, 33.846485, 25.422831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531452, 33.972031, 25.741467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567047, 33.574337, 25.765409>,  <35.588402, 33.335720, 25.779776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567047, 33.574337, 25.765409>,  <35.531452, 33.972031, 25.741467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567047, 33.574337, 25.765409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311266, 0.029328, 0.949870,
		-0.946148, -0.103155, -0.306861,
		0.088984, -0.994233, 0.059857,
		35.593742, 33.276066, 25.783367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987320, 33.855465, 26.053076>,  <35.531452, 33.972031, 25.741467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987320, 33.855465, 26.053076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229424, 33.544853, 26.123121>,  <35.374687, 33.358486, 26.165148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229424, 33.544853, 26.123121>,  <34.987320, 33.855465, 26.053076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229424, 33.544853, 26.123121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122651, 0.126383, 0.984370,
		-0.786521, -0.617279, -0.018747,
		0.605262, -0.776527, 0.175112,
		35.411003, 33.311893, 26.175655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634457, 33.401833, 26.467182>,  <34.987320, 33.855465, 26.053076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634457, 33.401833, 26.467182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025066, 33.338257, 26.525330>,  <35.259434, 33.300114, 26.560219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025066, 33.338257, 26.525330>,  <34.634457, 33.401833, 26.467182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025066, 33.338257, 26.525330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071698, 0.396552, 0.915208,
		-0.203108, -0.904149, 0.375849,
		0.976528, -0.158938, 0.145369,
		35.318024, 33.290577, 26.568939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655998, 33.133636, 27.097984>,  <34.634457, 33.401833, 26.467182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655998, 33.133636, 27.097984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029167, 33.264057, 27.036860>,  <35.253067, 33.342312, 27.000185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029167, 33.264057, 27.036860>,  <34.655998, 33.133636, 27.097984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029167, 33.264057, 27.036860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083092, 0.217993, 0.972407,
		0.350372, -0.919873, 0.176277,
		0.932917, 0.326057, -0.152813,
		35.309044, 33.361874, 26.991016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946735, 32.756065, 27.650990>,  <34.655998, 33.133636, 27.097984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946735, 32.756065, 27.650990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197376, 33.050838, 27.549557>,  <35.347759, 33.227703, 27.488697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197376, 33.050838, 27.549557>,  <34.946735, 32.756065, 27.650990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197376, 33.050838, 27.549557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212082, 0.151860, 0.965381,
		0.749927, -0.658690, -0.061134,
		0.626603, 0.736930, -0.253580,
		35.385357, 33.271919, 27.473482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453968, 32.634743, 28.121660>,  <34.946735, 32.756065, 27.650990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453968, 32.634743, 28.121660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561188, 32.999203, 27.996471>,  <35.625519, 33.217880, 27.921358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561188, 32.999203, 27.996471>,  <35.453968, 32.634743, 28.121660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561188, 32.999203, 27.996471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303702, 0.228381, 0.924991,
		0.914284, -0.342993, -0.215501,
		0.268049, 0.911152, -0.312973,
		35.641602, 33.272549, 27.902580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142052, 32.864830, 28.338755>,  <35.453968, 32.634743, 28.121660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142052, 32.864830, 28.338755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933796, 33.198334, 28.265224>,  <35.808842, 33.398434, 28.221107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933796, 33.198334, 28.265224>,  <36.142052, 32.864830, 28.338755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933796, 33.198334, 28.265224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261535, 0.360699, 0.895263,
		0.812735, 0.418029, -0.405849,
		-0.520635, 0.833755, -0.183823,
		35.777607, 33.448460, 28.210077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679585, 33.342705, 28.563881>,  <36.142052, 32.864830, 28.338755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679585, 33.342705, 28.563881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329731, 33.536610, 28.565516>,  <36.119820, 33.652954, 28.566496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329731, 33.536610, 28.565516>,  <36.679585, 33.342705, 28.563881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329731, 33.536610, 28.565516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254041, 0.451138, 0.855534,
		0.412887, 0.749319, -0.517731,
		-0.874635, 0.484764, 0.004088,
		36.067341, 33.682037, 28.566742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756474, 34.050938, 28.760199>,  <36.679585, 33.342705, 28.563881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756474, 34.050938, 28.760199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371498, 34.022705, 28.865065>,  <36.140514, 34.005764, 28.927984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371498, 34.022705, 28.865065>,  <36.756474, 34.050938, 28.760199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371498, 34.022705, 28.865065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187061, 0.527452, 0.828735,
		-0.196774, 0.846648, -0.494437,
		-0.962439, -0.070584, 0.262163,
		36.082767, 34.001530, 28.943714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590519, 34.648392, 29.054893>,  <36.756474, 34.050938, 28.760199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590519, 34.648392, 29.054893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271008, 34.436028, 29.168097>,  <36.079300, 34.308609, 29.236019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271008, 34.436028, 29.168097>,  <36.590519, 34.648392, 29.054893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271008, 34.436028, 29.168097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072930, 0.381487, 0.921493,
		-0.597192, 0.756705, -0.266004,
		-0.798775, -0.530909, 0.283008,
		36.031376, 34.276756, 29.252998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137711, 35.169434, 29.332726>,  <36.590519, 34.648392, 29.054893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137711, 35.169434, 29.332726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045593, 34.798031, 29.449236>,  <35.990322, 34.575188, 29.519142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045593, 34.798031, 29.449236>,  <36.137711, 35.169434, 29.332726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045593, 34.798031, 29.449236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013861, 0.296163, 0.955037,
		-0.973023, 0.223974, -0.055333,
		-0.230291, -0.928506, 0.291278,
		35.976505, 34.519478, 29.536619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512913, 35.176102, 29.757137>,  <36.137711, 35.169434, 29.332726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512913, 35.176102, 29.757137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699020, 34.841724, 29.873564>,  <35.810684, 34.641098, 29.943420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699020, 34.841724, 29.873564>,  <35.512913, 35.176102, 29.757137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699020, 34.841724, 29.873564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051896, 0.302501, 0.951735,
		-0.883649, -0.457915, 0.097361,
		0.465266, -0.835947, 0.291068,
		35.838600, 34.590939, 29.960884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203392, 34.862087, 30.251045>,  <35.512913, 35.176102, 29.757137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203392, 34.862087, 30.251045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564335, 34.696552, 30.299200>,  <35.780899, 34.597233, 30.328093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564335, 34.696552, 30.299200>,  <35.203392, 34.862087, 30.251045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564335, 34.696552, 30.299200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008594, 0.261993, 0.965032,
		-0.430905, -0.871837, 0.232854,
		0.902357, -0.413836, 0.120387,
		35.835041, 34.572403, 30.335316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087883, 34.454735, 30.894848>,  <35.203392, 34.862087, 30.251045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087883, 34.454735, 30.894848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480385, 34.494015, 30.828531>,  <35.715885, 34.517582, 30.788742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480385, 34.494015, 30.828531>,  <35.087883, 34.454735, 30.894848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480385, 34.494015, 30.828531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123837, 0.337803, 0.933035,
		0.147631, -0.936080, 0.319311,
		0.981259, 0.098203, -0.165792,
		35.774761, 34.523476, 30.778793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419216, 34.175819, 31.490215>,  <35.087883, 34.454735, 30.894848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419216, 34.175819, 31.490215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685951, 34.414658, 31.311865>,  <35.845993, 34.557961, 31.204855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685951, 34.414658, 31.311865>,  <35.419216, 34.175819, 31.490215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685951, 34.414658, 31.311865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226737, 0.407391, 0.884660,
		0.709868, -0.691024, 0.136283,
		0.666842, 0.597091, -0.445875,
		35.886005, 34.593784, 31.178102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864735, 34.217731, 31.999229>,  <35.419216, 34.175819, 31.490215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864735, 34.217731, 31.999229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.990257, 34.516117, 31.764261>,  <36.065571, 34.695148, 31.623280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.990257, 34.516117, 31.764261>,  <35.864735, 34.217731, 31.999229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990257, 34.516117, 31.764261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295791, 0.511082, 0.807034,
		0.902239, -0.427005, -0.060270,
		0.313804, 0.745964, -0.587422,
		36.084400, 34.739906, 31.588036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583065, 34.345112, 32.221016>,  <35.864735, 34.217731, 31.999229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583065, 34.345112, 32.221016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426365, 34.664909, 32.038876>,  <36.332344, 34.856789, 31.929592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426365, 34.664909, 32.038876>,  <36.583065, 34.345112, 32.221016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426365, 34.664909, 32.038876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229204, 0.564103, 0.793255,
		0.891065, 0.206391, -0.404236,
		-0.391752, 0.799494, -0.455346,
		36.308838, 34.904758, 31.902271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049931, 34.884075, 32.286236>,  <36.583065, 34.345112, 32.221016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049931, 34.884075, 32.286236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701401, 35.070625, 32.225189>,  <36.492283, 35.182556, 32.188560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701401, 35.070625, 32.225189>,  <37.049931, 34.884075, 32.286236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701401, 35.070625, 32.225189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142712, 0.538413, 0.830508,
		0.469499, 0.701860, -0.535689,
		-0.871323, 0.466372, -0.152621,
		36.440002, 35.210537, 32.179401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643311, 34.874619, 31.771204>,  <37.049931, 34.884075, 32.286236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643311, 34.874619, 31.771204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028553, 34.819111, 31.863434>,  <38.259701, 34.785805, 31.918772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028553, 34.819111, 31.863434>,  <37.643311, 34.874619, 31.771204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028553, 34.819111, 31.863434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186309, -0.274447, -0.943381,
		0.194197, 0.951536, -0.238468,
		0.963108, -0.138773, 0.230576,
		38.317486, 34.777477, 31.932608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091537, 35.232498, 31.275385>,  <37.643311, 34.874619, 31.771204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091537, 35.232498, 31.275385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319607, 34.947758, 31.439419>,  <38.456448, 34.776913, 31.537840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319607, 34.947758, 31.439419>,  <38.091537, 35.232498, 31.275385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319607, 34.947758, 31.439419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329693, -0.258942, -0.907883,
		0.752469, 0.652849, 0.087053,
		0.570169, -0.711855, 0.410085,
		38.490658, 34.734200, 31.562445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656773, 35.373047, 30.996674>,  <38.091537, 35.232498, 31.275385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656773, 35.373047, 30.996674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698666, 34.990276, 31.104980>,  <38.723801, 34.760612, 31.169966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698666, 34.990276, 31.104980>,  <38.656773, 35.373047, 30.996674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698666, 34.990276, 31.104980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354820, -0.218393, -0.909070,
		0.929050, 0.191283, 0.316666,
		0.104732, -0.956930, 0.270769,
		38.730083, 34.703197, 31.186211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359344, 35.153450, 30.764456>,  <38.656773, 35.373047, 30.996674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359344, 35.153450, 30.764456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161373, 34.812351, 30.831228>,  <39.042591, 34.607693, 30.871292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161373, 34.812351, 30.831228>,  <39.359344, 35.153450, 30.764456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161373, 34.812351, 30.831228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384034, -0.386994, -0.838304,
		0.779462, -0.350796, 0.519019,
		-0.494931, -0.852747, 0.166929,
		39.012894, 34.556526, 30.881308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888271, 34.510338, 30.675373>,  <39.359344, 35.153450, 30.764456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888271, 34.510338, 30.675373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497036, 34.441006, 30.629250>,  <39.262295, 34.399406, 30.601576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497036, 34.441006, 30.629250>,  <39.888271, 34.510338, 30.675373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497036, 34.441006, 30.629250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186794, -0.486169, -0.853667,
		0.091908, -0.856502, 0.507895,
		-0.978090, -0.173331, -0.115307,
		39.203609, 34.389008, 30.594658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761444, 33.739658, 30.622389>,  <39.888271, 34.510338, 30.675373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761444, 33.739658, 30.622389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471218, 33.936138, 30.429605>,  <39.297081, 34.054024, 30.313936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471218, 33.936138, 30.429605>,  <39.761444, 33.739658, 30.622389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471218, 33.936138, 30.429605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323317, -0.374923, -0.868849,
		-0.607473, -0.786230, 0.113218,
		-0.725564, 0.491197, -0.481957,
		39.253548, 34.083496, 30.285019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502270, 33.177574, 30.089949>,  <39.761444, 33.739658, 30.622389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502270, 33.177574, 30.089949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367474, 33.531300, 29.960691>,  <39.286598, 33.743538, 29.883137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367474, 33.531300, 29.960691>,  <39.502270, 33.177574, 30.089949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367474, 33.531300, 29.960691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027656, -0.333772, -0.942248,
		-0.941103, -0.326462, 0.088020,
		-0.336987, 0.884318, -0.323142,
		39.266376, 33.796597, 29.863749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055275, 33.001526, 29.465504>,  <39.502270, 33.177574, 30.089949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055275, 33.001526, 29.465504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120811, 33.395275, 29.439697>,  <39.160133, 33.631527, 29.424213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120811, 33.395275, 29.439697>,  <39.055275, 33.001526, 29.465504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120811, 33.395275, 29.439697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176775, -0.035046, -0.983627,
		-0.970519, 0.172564, 0.168271,
		0.163841, 0.984375, -0.064518,
		39.169964, 33.690586, 29.420341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441608, 33.195702, 29.079659>,  <39.055275, 33.001526, 29.465504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441608, 33.195702, 29.079659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718552, 33.481728, 29.041025>,  <38.884716, 33.653343, 29.017845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718552, 33.481728, 29.041025>,  <38.441608, 33.195702, 29.079659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718552, 33.481728, 29.041025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147202, 0.008935, -0.989066,
		-0.706383, 0.699001, 0.111446,
		0.692354, 0.715065, -0.096583,
		38.926258, 33.696247, 29.012051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125420, 33.607220, 28.617002>,  <38.441608, 33.195702, 29.079659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125420, 33.607220, 28.617002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.515797, 33.694401, 28.619358>,  <38.750023, 33.746712, 28.620771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.515797, 33.694401, 28.619358>,  <38.125420, 33.607220, 28.617002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515797, 33.694401, 28.619358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016511, -0.046945, -0.998761,
		-0.217409, 0.974829, -0.049415,
		0.975941, 0.217956, 0.005889,
		38.808578, 33.759789, 28.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266453, 34.200005, 28.170197>,  <38.125420, 33.607220, 28.617002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266453, 34.200005, 28.170197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604633, 33.987431, 28.191328>,  <38.807541, 33.859886, 28.204008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604633, 33.987431, 28.191328>,  <38.266453, 34.200005, 28.170197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604633, 33.987431, 28.191328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022807, -0.062904, -0.997759,
		0.533565, 0.844761, -0.041062,
		0.845451, -0.531433, 0.052830,
		38.858269, 33.827999, 28.207176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645187, 34.401531, 27.558887>,  <38.266453, 34.200005, 28.170197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645187, 34.401531, 27.558887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831245, 34.058525, 27.646812>,  <38.942879, 33.852722, 27.699568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831245, 34.058525, 27.646812>,  <38.645187, 34.401531, 27.558887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831245, 34.058525, 27.646812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170380, -0.156944, -0.972800,
		0.868685, 0.489941, 0.073102,
		0.465141, -0.857512, 0.219811,
		38.970787, 33.801273, 27.712755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260612, 34.372467, 27.123295>,  <38.645187, 34.401531, 27.558887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260612, 34.372467, 27.123295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213577, 33.992584, 27.239380>,  <39.185356, 33.764652, 27.309031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213577, 33.992584, 27.239380>,  <39.260612, 34.372467, 27.123295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213577, 33.992584, 27.239380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005948, -0.291562, -0.956533,
		0.993044, -0.114207, 0.028636,
		-0.117592, -0.949710, 0.290213,
		39.178299, 33.707672, 27.326445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673992, 34.037823, 26.644464>,  <39.260612, 34.372467, 27.123295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673992, 34.037823, 26.644464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.438793, 33.747215, 26.786695>,  <39.297672, 33.572853, 26.872034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.438793, 33.747215, 26.786695>,  <39.673992, 34.037823, 26.644464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438793, 33.747215, 26.786695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176538, -0.313738, -0.932954,
		0.789363, -0.611347, 0.056219,
		-0.587996, -0.726515, 0.355579,
		39.262394, 33.529263, 26.893370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894569, 33.370380, 26.290363>,  <39.673992, 34.037823, 26.644464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894569, 33.370380, 26.290363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535648, 33.281418, 26.442881>,  <39.320297, 33.228039, 26.534391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535648, 33.281418, 26.442881>,  <39.894569, 33.370380, 26.290363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535648, 33.281418, 26.442881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187288, -0.590367, -0.785105,
		0.399714, -0.775888, 0.488084,
		-0.897302, -0.222405, 0.381293,
		39.266457, 33.214695, 26.557268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768482, 32.576477, 26.295618>,  <39.894569, 33.370380, 26.290363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768482, 32.576477, 26.295618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416386, 32.766277, 26.297455>,  <39.205128, 32.880157, 26.298557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416386, 32.766277, 26.297455>,  <39.768482, 32.576477, 26.295618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416386, 32.766277, 26.297455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249091, -0.453807, -0.855578,
		-0.403886, -0.754262, 0.517654,
		-0.880244, 0.474499, 0.004593,
		39.152313, 32.908627, 26.298832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196041, 31.978960, 26.226437>,  <39.768482, 32.576477, 26.295618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196041, 31.978960, 26.226437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.011341, 32.321507, 26.133984>,  <38.900520, 32.527035, 26.078512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.011341, 32.321507, 26.133984>,  <39.196041, 31.978960, 26.226437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011341, 32.321507, 26.133984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516432, -0.471406, -0.714895,
		-0.721169, -0.210740, 0.659927,
		-0.461750, 0.856367, -0.231131,
		38.872814, 32.578415, 26.064644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421429, 31.826021, 26.124214>,  <39.196041, 31.978960, 26.226437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421429, 31.826021, 26.124214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508003, 32.170525, 25.940306>,  <38.559948, 32.377228, 25.829960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508003, 32.170525, 25.940306>,  <38.421429, 31.826021, 26.124214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508003, 32.170525, 25.940306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524181, -0.294786, -0.798959,
		-0.823643, 0.413931, 0.387651,
		0.216440, 0.861257, -0.459773,
		38.572937, 32.428902, 25.802374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.821255, 32.021290, 25.783413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093136, 32.239300, 25.587069>,  <38.256264, 32.370106, 25.469261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093136, 32.239300, 25.587069>,  <37.821255, 32.021290, 25.783413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093136, 32.239300, 25.587069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297113, -0.407270, -0.863629,
		-0.670614, 0.732855, -0.114889,
		0.679706, 0.545027, -0.490862,
		38.297047, 32.402809, 25.439810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527931, 32.512787, 25.266060>,  <37.821255, 32.021290, 25.783413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527931, 32.512787, 25.266060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903282, 32.455715, 25.140141>,  <38.128490, 32.421474, 25.064589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903282, 32.455715, 25.140141>,  <37.527931, 32.512787, 25.266060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903282, 32.455715, 25.140141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335532, -0.157616, -0.928750,
		0.082893, 0.977139, -0.195775,
		0.938375, -0.142675, -0.314796,
		38.184795, 32.412914, 25.045702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574368, 32.864120, 24.624485>,  <37.527931, 32.512787, 25.266060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574368, 32.864120, 24.624485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872723, 32.599144, 24.596727>,  <38.051735, 32.440159, 24.580072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872723, 32.599144, 24.596727>,  <37.574368, 32.864120, 24.624485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872723, 32.599144, 24.596727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164115, -0.081807, -0.983043,
		0.645533, 0.744631, -0.169736,
		0.745890, -0.662443, -0.069396,
		38.096489, 32.400410, 24.575909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753204, 32.825993, 23.865545>,  <37.574368, 32.864120, 24.624485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753204, 32.825993, 23.865545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.972687, 32.523178, 24.007429>,  <38.104378, 32.341488, 24.092560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.972687, 32.523178, 24.007429>,  <37.753204, 32.825993, 23.865545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972687, 32.523178, 24.007429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192989, -0.298126, -0.934813,
		0.813435, 0.581392, -0.017484,
		0.548706, -0.757036, 0.354709,
		38.137299, 32.296066, 24.113842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505272, 32.811672, 23.575199>,  <37.753204, 32.825993, 23.865545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505272, 32.811672, 23.575199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394764, 32.442093, 23.681025>,  <38.328457, 32.220345, 23.744520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394764, 32.442093, 23.681025>,  <38.505272, 32.811672, 23.575199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394764, 32.442093, 23.681025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151133, -0.313617, -0.937445,
		0.949122, -0.219006, 0.226283,
		-0.276272, -0.923948, 0.264562,
		38.311882, 32.164909, 23.760393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898739, 32.386375, 23.244242>,  <38.505272, 32.811672, 23.575199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898739, 32.386375, 23.244242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595238, 32.138248, 23.323742>,  <38.413139, 31.989372, 23.371441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595238, 32.138248, 23.323742>,  <38.898739, 32.386375, 23.244242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595238, 32.138248, 23.323742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023260, -0.330725, -0.943440,
		0.650966, -0.711213, 0.265366,
		-0.758751, -0.620320, 0.198748,
		38.367611, 31.952152, 23.383366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973873, 31.772123, 22.869005>,  <38.898739, 32.386375, 23.244242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973873, 31.772123, 22.869005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577946, 31.748199, 22.920660>,  <38.340389, 31.733845, 22.951653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577946, 31.748199, 22.920660>,  <38.973873, 31.772123, 22.869005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577946, 31.748199, 22.920660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104360, -0.311879, -0.944373,
		0.096759, -0.948238, 0.302462,
		-0.989821, -0.059811, 0.129135,
		38.280998, 31.730257, 22.959400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760994, 31.176149, 22.608381>,  <38.973873, 31.772123, 22.869005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760994, 31.176149, 22.608381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408566, 31.364738, 22.623495>,  <38.197109, 31.477892, 22.632563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408566, 31.364738, 22.623495>,  <38.760994, 31.176149, 22.608381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408566, 31.364738, 22.623495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198770, -0.296593, -0.934089,
		-0.429192, -0.830509, 0.355034,
		-0.881071, 0.471474, 0.037785,
		38.144245, 31.506180, 22.634830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294357, 30.682898, 22.383059>,  <38.760994, 31.176149, 22.608381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294357, 30.682898, 22.383059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099407, 31.026787, 22.321953>,  <37.982437, 31.233120, 22.285290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099407, 31.026787, 22.321953>,  <38.294357, 30.682898, 22.383059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099407, 31.026787, 22.321953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342930, -0.349348, -0.871983,
		-0.803033, -0.372598, 0.465090,
		-0.487377, 0.859725, -0.152763,
		37.953194, 31.284704, 22.276123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585762, 30.525808, 22.130062>,  <38.294357, 30.682898, 22.383059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585762, 30.525808, 22.130062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.685932, 30.895443, 22.014580>,  <37.746033, 31.117224, 21.945290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.685932, 30.895443, 22.014580>,  <37.585762, 30.525808, 22.130062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685932, 30.895443, 22.014580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194387, -0.244141, -0.950057,
		-0.948421, 0.294035, 0.118493,
		0.250421, 0.924088, -0.288706,
		37.761059, 31.172668, 21.927969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048607, 30.806030, 21.676245>,  <37.585762, 30.525808, 22.130062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048607, 30.806030, 21.676245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367126, 31.031462, 21.588346>,  <37.558239, 31.166721, 21.535608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367126, 31.031462, 21.588346>,  <37.048607, 30.806030, 21.676245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367126, 31.031462, 21.588346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099801, -0.235889, -0.966642,
		-0.596616, 0.791665, -0.131592,
		0.796297, 0.563581, -0.219744,
		37.606014, 31.200537, 21.522423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902760, 30.905743, 21.016191>,  <37.048607, 30.806030, 21.676245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902760, 30.905743, 21.016191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284542, 31.016743, 21.060013>,  <37.513611, 31.083344, 21.086306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284542, 31.016743, 21.060013>,  <36.902760, 30.905743, 21.016191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284542, 31.016743, 21.060013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118360, -0.015131, -0.992855,
		-0.273860, 0.960606, -0.047287,
		0.954459, 0.277500, 0.109554,
		37.570881, 31.099993, 21.092878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990597, 31.466227, 20.553066>,  <36.902760, 30.905743, 21.016191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990597, 31.466227, 20.553066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357029, 31.328270, 20.634899>,  <37.576889, 31.245497, 20.683998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357029, 31.328270, 20.634899>,  <36.990597, 31.466227, 20.553066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357029, 31.328270, 20.634899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184942, -0.089304, -0.978683,
		0.355808, 0.934385, -0.018024,
		0.916077, -0.344890, 0.204582,
		37.631851, 31.224802, 20.696274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437992, 31.850981, 20.213364>,  <36.990597, 31.466227, 20.553066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437992, 31.850981, 20.213364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669144, 31.532835, 20.286522>,  <37.807835, 31.341948, 20.330418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669144, 31.532835, 20.286522>,  <37.437992, 31.850981, 20.213364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669144, 31.532835, 20.286522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271430, -0.024041, -0.962158,
		0.769662, 0.605655, 0.201993,
		0.577880, -0.795364, 0.182897,
		37.842506, 31.294226, 20.341391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149174, 31.905045, 19.804943>,  <37.437992, 31.850981, 20.213364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149174, 31.905045, 19.804943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068542, 31.522285, 19.888577>,  <38.020164, 31.292631, 19.938757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068542, 31.522285, 19.888577>,  <38.149174, 31.905045, 19.804943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068542, 31.522285, 19.888577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048048, -0.222871, -0.973663,
		0.978294, -0.186219, 0.090901,
		-0.201573, -0.956897, 0.209086,
		38.008072, 31.235216, 19.951302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603542, 31.469360, 19.464981>,  <38.149174, 31.905045, 19.804943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603542, 31.469360, 19.464981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270950, 31.259954, 19.539351>,  <38.071396, 31.134310, 19.583971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270950, 31.259954, 19.539351>,  <38.603542, 31.469360, 19.464981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270950, 31.259954, 19.539351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068327, -0.235754, -0.969408,
		0.551332, -0.818750, 0.160255,
		-0.831483, -0.523516, 0.185922,
		38.021503, 31.102900, 19.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804676, 30.758728, 19.244390>,  <38.603542, 31.469360, 19.464981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804676, 30.758728, 19.244390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405254, 30.779339, 19.238277>,  <38.165600, 30.791706, 19.234610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405254, 30.779339, 19.238277>,  <38.804676, 30.758728, 19.244390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405254, 30.779339, 19.238277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000753, -0.297754, -0.954642,
		-0.053742, -0.953251, 0.297362,
		-0.998555, 0.051528, -0.015284,
		38.105686, 30.794798, 19.233692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548275, 30.178574, 18.800529>,  <38.804676, 30.758728, 19.244390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548275, 30.178574, 18.800529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208679, 30.387812, 18.830420>,  <38.004921, 30.513355, 18.848352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208679, 30.387812, 18.830420>,  <38.548275, 30.178574, 18.800529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208679, 30.387812, 18.830420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184457, -0.160872, -0.969585,
		-0.495166, -0.836953, 0.233068,
		-0.848991, 0.523097, 0.074724,
		37.953983, 30.544741, 18.852837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008007, 29.803642, 18.496412>,  <38.548275, 30.178574, 18.800529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008007, 29.803642, 18.496412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906261, 30.190477, 18.498856>,  <37.845215, 30.422579, 18.500322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906261, 30.190477, 18.498856>,  <38.008007, 29.803642, 18.496412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906261, 30.190477, 18.498856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370419, -0.091591, -0.924338,
		-0.893357, -0.237385, 0.381526,
		-0.254368, 0.967088, 0.006109,
		37.829952, 30.480604, 18.500689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388702, 29.818964, 18.178572>,  <38.008007, 29.803642, 18.496412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388702, 29.818964, 18.178572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506557, 30.200108, 18.149591>,  <37.577271, 30.428795, 18.132204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506557, 30.200108, 18.149591>,  <37.388702, 29.818964, 18.178572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506557, 30.200108, 18.149591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260713, 0.007212, -0.965389,
		-0.919358, 0.303325, 0.250547,
		0.294633, 0.952860, -0.072451,
		37.594948, 30.485966, 18.127857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829235, 30.222485, 17.931627>,  <37.388702, 29.818964, 18.178572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829235, 30.222485, 17.931627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168243, 30.413404, 17.838762>,  <37.371647, 30.527956, 17.783043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168243, 30.413404, 17.838762>,  <36.829235, 30.222485, 17.931627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168243, 30.413404, 17.838762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290559, 0.051178, -0.955487,
		-0.444174, 0.877248, 0.182058,
		0.847517, 0.477301, -0.232160,
		37.422497, 30.556595, 17.769114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741608, 30.972130, 17.685511>,  <36.829235, 30.222485, 17.931627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741608, 30.972130, 17.685511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043579, 30.769138, 17.519354>,  <37.224762, 30.647343, 17.419659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043579, 30.769138, 17.519354>,  <36.741608, 30.972130, 17.685511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043579, 30.769138, 17.519354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453563, 0.053472, -0.889619,
		0.473676, 0.860003, -0.189806,
		0.754925, -0.507480, -0.415394,
		37.270058, 30.616894, 17.394735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070667, 31.314453, 17.103529>,  <36.741608, 30.972130, 17.685511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070667, 31.314453, 17.103529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143661, 30.931145, 17.015512>,  <37.187458, 30.701160, 16.962702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143661, 30.931145, 17.015512>,  <37.070667, 31.314453, 17.103529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143661, 30.931145, 17.015512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183066, 0.186771, -0.965196,
		0.966016, 0.216414, -0.141344,
		0.182483, -0.958270, -0.220041,
		37.198406, 30.643663, 16.949499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735863, 30.916557, 16.628124>,  <37.070667, 31.314453, 17.103529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735863, 30.916557, 16.628124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582790, 31.158266, 16.348579>,  <36.490948, 31.303291, 16.180853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582790, 31.158266, 16.348579>,  <36.735863, 30.916557, 16.628124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582790, 31.158266, 16.348579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083424, 0.730752, 0.677526,
		0.920108, 0.317576, -0.229232,
		-0.382677, 0.604274, -0.698864,
		36.467987, 31.339548, 16.138920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177280, 31.558140, 16.366856>,  <36.735863, 30.916557, 16.628124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177280, 31.558140, 16.366856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779327, 31.597599, 16.358107>,  <36.540554, 31.621275, 16.352858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779327, 31.597599, 16.358107>,  <37.177280, 31.558140, 16.366856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779327, 31.597599, 16.358107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044939, 0.625878, 0.778625,
		0.090499, 0.773657, -0.627108,
		-0.994882, 0.098646, -0.021874,
		36.480862, 31.627193, 16.351543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054817, 32.243065, 16.623526>,  <37.177280, 31.558140, 16.366856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054817, 32.243065, 16.623526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688694, 32.084316, 16.650967>,  <36.469021, 31.989065, 16.667431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688694, 32.084316, 16.650967>,  <37.054817, 32.243065, 16.623526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688694, 32.084316, 16.650967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205768, 0.607211, 0.767434,
		-0.346231, 0.688320, -0.637448,
		-0.915305, -0.396876, 0.068601,
		36.414101, 31.965254, 16.671547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606522, 32.766479, 16.711214>,  <37.054817, 32.243065, 16.623526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606522, 32.766479, 16.711214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396404, 32.456280, 16.851313>,  <36.270332, 32.270161, 16.935371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396404, 32.456280, 16.851313>,  <36.606522, 32.766479, 16.711214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396404, 32.456280, 16.851313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168093, 0.498067, 0.850690,
		-0.834151, 0.387991, -0.391989,
		-0.525297, -0.775495, 0.350244,
		36.238815, 32.223633, 16.956387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020145, 33.043777, 17.018539>,  <36.606522, 32.766479, 16.711214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020145, 33.043777, 17.018539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043678, 32.674446, 17.170334>,  <36.057796, 32.452847, 17.261412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043678, 32.674446, 17.170334>,  <36.020145, 33.043777, 17.018539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043678, 32.674446, 17.170334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290851, 0.347800, 0.891314,
		-0.954958, -0.162809, -0.248090,
		0.058828, -0.923325, 0.379488,
		36.061325, 32.397449, 17.284180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584526, 33.075562, 17.513117>,  <36.020145, 33.043777, 17.018539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584526, 33.075562, 17.513117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797962, 32.750313, 17.606176>,  <35.926022, 32.555164, 17.662012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797962, 32.750313, 17.606176>,  <35.584526, 33.075562, 17.513117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797962, 32.750313, 17.606176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186742, 0.155020, 0.970101,
		-0.824872, -0.561078, -0.069127,
		0.533586, -0.813118, 0.232649,
		35.958038, 32.506378, 17.675972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128944, 32.593533, 17.888170>,  <35.584526, 33.075562, 17.513117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128944, 32.593533, 17.888170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510166, 32.538990, 17.996315>,  <35.738899, 32.506264, 18.061203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510166, 32.538990, 17.996315>,  <35.128944, 32.593533, 17.888170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510166, 32.538990, 17.996315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250303, 0.147707, 0.956834,
		-0.170405, -0.979586, 0.106642,
		0.953053, -0.136357, 0.270363,
		35.796082, 32.498085, 18.077423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985527, 32.234863, 18.496416>,  <35.128944, 32.593533, 17.888170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985527, 32.234863, 18.496416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354382, 32.388592, 18.514095>,  <35.575695, 32.480831, 18.524704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354382, 32.388592, 18.514095>,  <34.985527, 32.234863, 18.496416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354382, 32.388592, 18.514095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043605, -0.010266, 0.998996,
		0.384393, -0.923141, 0.007292,
		0.922139, 0.384326, 0.044199,
		35.631023, 32.503891, 18.527355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350391, 31.861740, 18.996996>,  <34.985527, 32.234863, 18.496416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350391, 31.861740, 18.996996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.562740, 32.198261, 18.956223>,  <35.690147, 32.400173, 18.931759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.562740, 32.198261, 18.956223>,  <35.350391, 31.861740, 18.996996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562740, 32.198261, 18.956223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180838, 0.005050, 0.983500,
		0.827934, -0.540544, -0.149458,
		0.530870, 0.841301, -0.101933,
		35.722000, 32.450653, 18.925642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988262, 31.731159, 19.381641>,  <35.350391, 31.861740, 18.996996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988262, 31.731159, 19.381641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937965, 32.125191, 19.334631>,  <35.907787, 32.361610, 19.306425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937965, 32.125191, 19.334631>,  <35.988262, 31.731159, 19.381641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937965, 32.125191, 19.334631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054948, 0.125199, 0.990609,
		0.990540, 0.118106, -0.069871,
		-0.125745, 0.985077, -0.117525,
		35.900242, 32.420715, 19.299374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452332, 31.976761, 19.765114>,  <35.988262, 31.731159, 19.381641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452332, 31.976761, 19.765114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178589, 32.264660, 19.718443>,  <36.014343, 32.437401, 19.690441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178589, 32.264660, 19.718443>,  <36.452332, 31.976761, 19.765114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178589, 32.264660, 19.718443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073845, 0.090782, 0.993129,
		0.725394, 0.688275, -0.008978,
		-0.684361, 0.719747, -0.116678,
		35.973282, 32.480583, 19.683439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799278, 32.441422, 19.967783>,  <36.452332, 31.976761, 19.765114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799278, 32.441422, 19.967783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410549, 32.520454, 20.019186>,  <36.177311, 32.567875, 20.050028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410549, 32.520454, 20.019186>,  <36.799278, 32.441422, 19.967783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410549, 32.520454, 20.019186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121019, -0.049576, 0.991412,
		0.202253, 0.979033, 0.024268,
		-0.971827, 0.197579, 0.128508,
		36.118999, 32.579727, 20.057739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807831, 32.877651, 20.467777>,  <36.799278, 32.441422, 19.967783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807831, 32.877651, 20.467777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.413601, 32.813938, 20.490675>,  <36.177063, 32.775711, 20.504414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.413601, 32.813938, 20.490675>,  <36.807831, 32.877651, 20.467777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413601, 32.813938, 20.490675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042142, 0.096619, 0.994429,
		-0.163926, 0.982494, -0.088513,
		-0.985572, -0.159283, 0.057242,
		36.117928, 32.766151, 20.507847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559273, 33.437866, 20.890940>,  <36.807831, 32.877651, 20.467777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559273, 33.437866, 20.890940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291981, 33.140762, 20.907810>,  <36.131603, 32.962502, 20.917933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291981, 33.140762, 20.907810>,  <36.559273, 33.437866, 20.890940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291981, 33.140762, 20.907810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034445, 0.087519, 0.995567,
		-0.743155, 0.663817, -0.084067,
		-0.668232, -0.742756, 0.042175,
		36.091511, 32.917934, 20.920464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078899, 33.704906, 21.325096>,  <36.559273, 33.437866, 20.890940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078899, 33.704906, 21.325096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023712, 33.309250, 21.345381>,  <35.990601, 33.071857, 21.357552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023712, 33.309250, 21.345381>,  <36.078899, 33.704906, 21.325096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023712, 33.309250, 21.345381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179705, 0.075352, 0.980830,
		-0.973997, 0.126214, -0.188150,
		-0.137972, -0.989137, 0.050711,
		35.982319, 33.012508, 21.360594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501602, 33.679256, 21.662474>,  <36.078899, 33.704906, 21.325096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501602, 33.679256, 21.662474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684067, 33.327309, 21.715767>,  <35.793545, 33.116142, 21.747744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684067, 33.327309, 21.715767>,  <35.501602, 33.679256, 21.662474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684067, 33.327309, 21.715767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273999, 0.003576, 0.961724,
		-0.846664, -0.475209, -0.239451,
		0.456163, -0.879866, 0.133234,
		35.820915, 33.063351, 21.755737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043381, 33.326359, 22.055536>,  <35.501602, 33.679256, 21.662474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043381, 33.326359, 22.055536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383305, 33.127228, 22.124815>,  <35.587257, 33.007748, 22.166382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383305, 33.127228, 22.124815>,  <35.043381, 33.326359, 22.055536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383305, 33.127228, 22.124815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151051, 0.084802, 0.984882,
		-0.504989, -0.863120, -0.003132,
		0.849806, -0.497827, 0.173199,
		35.638245, 32.977879, 22.176775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008598, 33.147659, 22.688150>,  <35.043381, 33.326359, 22.055536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008598, 33.147659, 22.688150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381603, 33.015064, 22.630836>,  <35.605408, 32.935509, 22.596449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381603, 33.015064, 22.630836>,  <35.008598, 33.147659, 22.688150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381603, 33.015064, 22.630836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092743, -0.163637, 0.982151,
		-0.349016, -0.929161, -0.121851,
		0.932516, -0.331486, -0.143285,
		35.661358, 32.915619, 22.587851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021957, 32.515343, 22.928862>,  <35.008598, 33.147659, 22.688150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021957, 32.515343, 22.928862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386730, 32.677456, 22.954521>,  <35.605595, 32.774723, 22.969917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386730, 32.677456, 22.954521>,  <35.021957, 32.515343, 22.928862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386730, 32.677456, 22.954521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027016, -0.096695, 0.994947,
		0.409442, -0.909061, -0.077231,
		0.911936, 0.405287, 0.064150,
		35.660313, 32.799042, 22.973766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380264, 32.089230, 23.388264>,  <35.021957, 32.515343, 22.928862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380264, 32.089230, 23.388264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575237, 32.438492, 23.386896>,  <35.692219, 32.648048, 23.386076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575237, 32.438492, 23.386896>,  <35.380264, 32.089230, 23.388264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575237, 32.438492, 23.386896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002987, 0.005583, 0.999980,
		0.873158, -0.487408, 0.005329,
		0.487429, 0.873156, -0.003419,
		35.721466, 32.700439, 23.385870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052021, 31.993612, 23.720091>,  <35.380264, 32.089230, 23.388264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052021, 31.993612, 23.720091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.946629, 32.378578, 23.746433>,  <35.883392, 32.609558, 23.762239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.946629, 32.378578, 23.746433>,  <36.052021, 31.993612, 23.720091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946629, 32.378578, 23.746433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134081, -0.031071, 0.990483,
		0.955302, 0.269801, -0.120855,
		-0.263478, 0.962415, 0.065857,
		35.867584, 32.667301, 23.766190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.556953, 32.662132, 27.993271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366913, 33.004829, 27.912998>,  <39.252888, 33.210449, 27.864834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366913, 33.004829, 27.912998>,  <39.556953, 32.662132, 27.993271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366913, 33.004829, 27.912998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125873, 0.291890, 0.948133,
		0.870883, 0.425196, -0.246517,
		-0.475099, 0.856743, -0.200682,
		39.224384, 33.261852, 27.852793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995419, 33.255108, 28.140825>,  <39.556953, 32.662132, 27.993271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995419, 33.255108, 28.140825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620270, 33.386997, 28.184072>,  <39.395180, 33.466129, 28.210020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620270, 33.386997, 28.184072>,  <39.995419, 33.255108, 28.140825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620270, 33.386997, 28.184072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227973, 0.350605, 0.908353,
		0.261596, 0.876562, -0.403988,
		-0.937868, 0.329720, 0.108116,
		39.338909, 33.485912, 28.216507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111774, 33.950146, 28.551834>,  <39.995419, 33.255108, 28.140825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111774, 33.950146, 28.551834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712769, 33.923515, 28.560976>,  <39.473366, 33.907536, 28.566462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712769, 33.923515, 28.560976>,  <40.111774, 33.950146, 28.551834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712769, 33.923515, 28.560976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002429, 0.357009, 0.934098,
		-0.070351, 0.931725, -0.356285,
		-0.997519, -0.066580, 0.022853,
		39.413513, 33.903542, 28.567833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727543, 34.649292, 28.756884>,  <40.111774, 33.950146, 28.551834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727543, 34.649292, 28.756884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496330, 34.338531, 28.856726>,  <39.357601, 34.152077, 28.916632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496330, 34.338531, 28.856726>,  <39.727543, 34.649292, 28.756884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496330, 34.338531, 28.856726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029373, 0.325497, 0.945087,
		-0.815484, 0.538960, -0.210968,
		-0.578033, -0.776900, 0.249607,
		39.322922, 34.105461, 28.931608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190296, 34.979561, 29.270901>,  <39.727543, 34.649292, 28.756884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190296, 34.979561, 29.270901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193630, 34.583828, 29.329071>,  <39.195629, 34.346386, 29.363974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193630, 34.583828, 29.329071>,  <39.190296, 34.979561, 29.270901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193630, 34.583828, 29.329071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001125, 0.145420, 0.989370,
		-0.999965, -0.008410, 0.000099,
		0.008335, -0.989335, 0.145424,
		39.196129, 34.287029, 29.372698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518814, 34.835003, 29.593000>,  <39.190296, 34.979561, 29.270901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518814, 34.835003, 29.593000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776321, 34.539356, 29.672258>,  <38.930828, 34.361969, 29.719814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776321, 34.539356, 29.672258>,  <38.518814, 34.835003, 29.593000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776321, 34.539356, 29.672258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318079, -0.022959, 0.947786,
		-0.695978, -0.673183, -0.249879,
		0.643771, -0.739120, 0.198147,
		38.969452, 34.317619, 29.731703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094685, 34.473858, 29.936138>,  <38.518814, 34.835003, 29.593000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094685, 34.473858, 29.936138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465382, 34.358532, 30.032497>,  <38.687798, 34.289337, 30.090313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465382, 34.358532, 30.032497>,  <38.094685, 34.473858, 29.936138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465382, 34.358532, 30.032497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255672, -0.014133, 0.966660,
		-0.275298, -0.957431, -0.086812,
		0.926738, -0.288315, 0.240898,
		38.743404, 34.272038, 30.104767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053997, 33.800060, 30.354336>,  <38.094685, 34.473858, 29.936138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053997, 33.800060, 30.354336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388245, 34.003811, 30.436571>,  <38.588795, 34.126060, 30.485912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388245, 34.003811, 30.436571>,  <38.053997, 33.800060, 30.354336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388245, 34.003811, 30.436571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297066, 0.104243, 0.949150,
		0.462047, -0.854204, 0.238428,
		0.835622, 0.509381, 0.205590,
		38.638931, 34.156624, 30.498249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262699, 33.474392, 30.971462>,  <38.053997, 33.800060, 30.354336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262699, 33.474392, 30.971462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492649, 33.799770, 30.936058>,  <38.630619, 33.994995, 30.914816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492649, 33.799770, 30.936058>,  <38.262699, 33.474392, 30.971462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492649, 33.799770, 30.936058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012287, 0.099576, 0.994954,
		0.818152, -0.573057, 0.047248,
		0.574871, 0.813443, -0.088509,
		38.665112, 34.043804, 30.909506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745304, 33.450275, 31.548637>,  <38.262699, 33.474392, 30.971462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745304, 33.450275, 31.548637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753403, 33.834255, 31.436863>,  <38.758263, 34.064644, 31.369799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753403, 33.834255, 31.436863>,  <38.745304, 33.450275, 31.548637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753403, 33.834255, 31.436863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104247, 0.275945, 0.955504,
		0.994345, -0.048477, -0.094485,
		0.020247, 0.959950, -0.279438,
		38.759476, 34.122242, 31.353031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152588, 33.734749, 32.006092>,  <38.745304, 33.450275, 31.548637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152588, 33.734749, 32.006092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.949944, 34.043774, 31.852995>,  <38.828358, 34.229187, 31.761135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.949944, 34.043774, 31.852995>,  <39.152588, 33.734749, 32.006092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949944, 34.043774, 31.852995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181487, 0.338427, 0.923325,
		0.842857, 0.537230, -0.031241,
		-0.506611, 0.772562, -0.382746,
		38.797962, 34.275543, 31.738171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576450, 34.475719, 32.139309>,  <39.152588, 33.734749, 32.006092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576450, 34.475719, 32.139309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184586, 34.551937, 32.114155>,  <38.949467, 34.597668, 32.099064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184586, 34.551937, 32.114155>,  <39.576450, 34.475719, 32.139309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184586, 34.551937, 32.114155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038487, 0.486005, 0.873108,
		0.196928, 0.852931, -0.483454,
		-0.979662, 0.190546, -0.062881,
		38.890686, 34.609100, 32.095291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525799, 35.247593, 32.285870>,  <39.576450, 34.475719, 32.139309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525799, 35.247593, 32.285870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172665, 35.078876, 32.368526>,  <38.960785, 34.977646, 32.418121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172665, 35.078876, 32.368526>,  <39.525799, 35.247593, 32.285870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172665, 35.078876, 32.368526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010909, 0.421432, 0.906794,
		-0.469561, 0.802802, -0.367453,
		-0.882833, -0.421786, 0.206646,
		38.907814, 34.952339, 32.430519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071594, 35.827969, 32.568607>,  <39.525799, 35.247593, 32.285870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071594, 35.827969, 32.568607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945499, 35.461685, 32.668285>,  <38.869843, 35.241913, 32.728092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945499, 35.461685, 32.668285>,  <39.071594, 35.827969, 32.568607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945499, 35.461685, 32.668285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184578, 0.316726, 0.930385,
		-0.930890, 0.247297, -0.268864,
		-0.315237, -0.915712, 0.249192,
		38.850929, 35.186970, 32.743042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700119, 35.975849, 32.192295>,  <39.071594, 35.827969, 32.568607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700119, 35.975849, 32.192295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677029, 36.374306, 32.218758>,  <39.663174, 36.613380, 32.234634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677029, 36.374306, 32.218758>,  <39.700119, 35.975849, 32.192295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677029, 36.374306, 32.218758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106957, 0.059716, -0.992469,
		-0.992587, -0.064365, 0.103097,
		-0.057723, 0.996138, 0.066158,
		39.659710, 36.673145, 32.238605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073219, 36.252472, 31.741743>,  <39.700119, 35.975849, 32.192295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073219, 36.252472, 31.741743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.320980, 36.560997, 31.800274>,  <39.469639, 36.746113, 31.835392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.320980, 36.560997, 31.800274>,  <39.073219, 36.252472, 31.741743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320980, 36.560997, 31.800274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168503, 0.312658, -0.934800,
		-0.766774, 0.554365, 0.323631,
		0.619406, 0.771313, 0.146325,
		39.506802, 36.792393, 31.844172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775944, 36.846516, 31.423237>,  <39.073219, 36.252472, 31.741743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775944, 36.846516, 31.423237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160206, 36.957432, 31.429672>,  <39.390762, 37.023983, 31.433533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160206, 36.957432, 31.429672>,  <38.775944, 36.846516, 31.423237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160206, 36.957432, 31.429672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047665, 0.221632, -0.973965,
		-0.273638, 0.934873, 0.226129,
		0.960651, 0.277292, 0.016087,
		39.448402, 37.040619, 31.434498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766205, 37.396519, 31.062201>,  <38.775944, 36.846516, 31.423237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766205, 37.396519, 31.062201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161987, 37.348778, 31.029377>,  <39.399456, 37.320133, 31.009682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161987, 37.348778, 31.029377>,  <38.766205, 37.396519, 31.062201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161987, 37.348778, 31.029377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005778, 0.533577, -0.845732,
		0.144728, 0.837287, 0.527261,
		0.989455, -0.119355, -0.082061,
		39.458824, 37.312973, 31.004759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050858, 38.033009, 30.718546>,  <38.766205, 37.396519, 31.062201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050858, 38.033009, 30.718546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.352608, 37.775707, 30.666185>,  <39.533657, 37.621326, 30.634769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.352608, 37.775707, 30.666185>,  <39.050858, 38.033009, 30.718546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352608, 37.775707, 30.666185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054372, 0.259956, -0.964088,
		0.654186, 0.720169, 0.231080,
		0.754377, -0.643257, -0.130903,
		39.578922, 37.582729, 30.626915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527718, 38.390793, 30.307755>,  <39.050858, 38.033009, 30.718546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527718, 38.390793, 30.307755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637611, 38.006432, 30.293964>,  <39.703548, 37.775814, 30.285690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637611, 38.006432, 30.293964>,  <39.527718, 38.390793, 30.307755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637611, 38.006432, 30.293964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217298, 0.096977, -0.971276,
		0.936643, 0.259354, 0.235445,
		0.274737, -0.960901, -0.034476,
		39.720032, 37.718163, 30.283621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152901, 38.444332, 29.906702>,  <39.527718, 38.390793, 30.307755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152901, 38.444332, 29.906702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070827, 38.055645, 29.859938>,  <40.021584, 37.822433, 29.831879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070827, 38.055645, 29.859938>,  <40.152901, 38.444332, 29.906702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070827, 38.055645, 29.859938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223111, 0.069866, -0.972286,
		0.952953, -0.225583, 0.202465,
		-0.205186, -0.971715, -0.116909,
		40.009274, 37.764130, 29.824865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619999, 38.254833, 29.502264>,  <40.152901, 38.444332, 29.906702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619999, 38.254833, 29.502264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373322, 37.944916, 29.446560>,  <40.225315, 37.758965, 29.413137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373322, 37.944916, 29.446560>,  <40.619999, 38.254833, 29.502264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373322, 37.944916, 29.446560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116023, 0.085517, -0.989558,
		0.778609, -0.626408, 0.037157,
		-0.616690, -0.774790, -0.139262,
		40.188316, 37.712479, 29.404781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918869, 37.791458, 28.994715>,  <40.619999, 38.254833, 29.502264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918869, 37.791458, 28.994715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.528999, 37.703983, 28.976028>,  <40.295078, 37.651497, 28.964817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.528999, 37.703983, 28.976028>,  <40.918869, 37.791458, 28.994715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528999, 37.703983, 28.976028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045219, 0.011840, -0.998907,
		0.219005, -0.975722, -0.001651,
		-0.974675, -0.218691, -0.046714,
		40.236595, 37.638374, 28.962015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867702, 37.146584, 28.599901>,  <40.918869, 37.791458, 28.994715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867702, 37.146584, 28.599901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530529, 37.361675, 28.592833>,  <40.328224, 37.490730, 28.588593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530529, 37.361675, 28.592833>,  <40.867702, 37.146584, 28.599901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530529, 37.361675, 28.592833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017059, -0.059539, -0.998080,
		-0.537751, -0.841012, 0.059360,
		-0.842931, 0.537731, -0.017670,
		40.277649, 37.522995, 28.587532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562862, 36.764694, 28.051479>,  <40.867702, 37.146584, 28.599901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562862, 36.764694, 28.051479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339005, 37.094296, 28.086857>,  <40.204689, 37.292057, 28.108084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339005, 37.094296, 28.086857>,  <40.562862, 36.764694, 28.051479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339005, 37.094296, 28.086857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330856, -0.124307, -0.935458,
		-0.759823, -0.552787, 0.342192,
		-0.559646, 0.823999, 0.088442,
		40.171112, 37.341496, 28.113390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911129, 36.579185, 27.804108>,  <40.562862, 36.764694, 28.051479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911129, 36.579185, 27.804108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910469, 36.978935, 27.789949>,  <39.910072, 37.218784, 27.781454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910469, 36.978935, 27.789949>,  <39.911129, 36.579185, 27.804108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910469, 36.978935, 27.789949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294840, -0.034308, -0.954931,
		-0.955545, 0.008858, 0.294711,
		-0.001652, 0.999372, -0.035395,
		39.909973, 37.278748, 27.779331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175991, 36.834038, 27.483196>,  <39.911129, 36.579185, 27.804108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175991, 36.834038, 27.483196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475174, 37.093605, 27.427395>,  <39.654682, 37.249348, 27.393915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475174, 37.093605, 27.427395>,  <39.175991, 36.834038, 27.483196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475174, 37.093605, 27.427395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159969, -0.027740, -0.986732,
		-0.644183, 0.760348, 0.083059,
		0.747956, 0.648923, -0.139502,
		39.699562, 37.288280, 27.385544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867523, 37.286186, 26.986755>,  <39.175991, 36.834038, 27.483196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867523, 37.286186, 26.986755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266140, 37.315071, 26.970272>,  <39.505310, 37.332401, 26.960382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266140, 37.315071, 26.970272>,  <38.867523, 37.286186, 26.986755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266140, 37.315071, 26.970272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036383, -0.066907, -0.997096,
		-0.074762, 0.995142, -0.064048,
		0.996538, 0.072214, -0.041209,
		39.565102, 37.336735, 26.957909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438251, 37.881176, 26.836699>,  <38.867523, 37.286186, 26.986755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438251, 37.881176, 26.836699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149166, 38.063725, 26.629078>,  <37.975716, 38.173252, 26.504505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149166, 38.063725, 26.629078>,  <38.438251, 37.881176, 26.836699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149166, 38.063725, 26.629078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410522, 0.320721, 0.853586,
		0.556022, 0.829979, -0.044439,
		-0.722711, 0.456370, -0.519052,
		37.932354, 38.200634, 26.473362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478889, 38.637398, 26.953104>,  <38.438251, 37.881176, 26.836699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478889, 38.637398, 26.953104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106693, 38.546989, 26.837797>,  <37.883373, 38.492744, 26.768614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106693, 38.546989, 26.837797>,  <38.478889, 38.637398, 26.953104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106693, 38.546989, 26.837797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360549, 0.426098, 0.829726,
		-0.064705, 0.875988, -0.477973,
		-0.930493, -0.226020, -0.288266,
		37.827545, 38.479183, 26.751318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082485, 39.176846, 27.147400>,  <38.478889, 38.637398, 26.953104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082485, 39.176846, 27.147400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794880, 38.903854, 27.094887>,  <37.622314, 38.740059, 27.063379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794880, 38.903854, 27.094887>,  <38.082485, 39.176846, 27.147400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794880, 38.903854, 27.094887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462038, 0.328292, 0.823860,
		-0.519170, 0.653026, -0.551380,
		-0.719016, -0.682482, -0.131284,
		37.579174, 38.699108, 27.055502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496544, 39.490509, 27.274691>,  <38.082485, 39.176846, 27.147400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496544, 39.490509, 27.274691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.408024, 39.103161, 27.320784>,  <37.354912, 38.870750, 27.348440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.408024, 39.103161, 27.320784>,  <37.496544, 39.490509, 27.274691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408024, 39.103161, 27.320784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508613, 0.215430, 0.833608,
		-0.832069, 0.125868, -0.540202,
		-0.221301, -0.968374, 0.115234,
		37.341633, 38.812649, 27.355354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780621, 39.466866, 27.490667>,  <37.496544, 39.490509, 27.274691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780621, 39.466866, 27.490667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911613, 39.113400, 27.624472>,  <36.990208, 38.901321, 27.704754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911613, 39.113400, 27.624472>,  <36.780621, 39.466866, 27.490667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911613, 39.113400, 27.624472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532570, 0.119807, 0.837864,
		-0.780465, -0.452534, -0.431377,
		0.327480, -0.883662, 0.334512,
		37.009857, 38.848301, 27.724825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190254, 38.967777, 27.668221>,  <36.780621, 39.466866, 27.490667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190254, 38.967777, 27.668221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.502895, 38.858055, 27.892309>,  <36.690479, 38.792221, 28.026762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.502895, 38.858055, 27.892309>,  <36.190254, 38.967777, 27.668221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502895, 38.858055, 27.892309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568328, 0.056991, 0.820826,
		-0.257086, -0.959952, -0.111352,
		0.781607, -0.274307, 0.560219,
		36.737377, 38.775764, 28.060375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896980, 38.535076, 28.236403>,  <36.190254, 38.967777, 27.668221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896980, 38.535076, 28.236403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268745, 38.589073, 28.373787>,  <36.491806, 38.621471, 28.456219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268745, 38.589073, 28.373787>,  <35.896980, 38.535076, 28.236403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268745, 38.589073, 28.373787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337410, -0.066142, 0.939031,
		0.149475, -0.988637, -0.015927,
		0.929415, 0.134988, 0.343463,
		36.547569, 38.629570, 28.476826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009720, 37.957020, 28.800735>,  <35.896980, 38.535076, 28.236403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009720, 37.957020, 28.800735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262608, 38.259724, 28.867199>,  <36.414341, 38.441345, 28.907076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262608, 38.259724, 28.867199>,  <36.009720, 37.957020, 28.800735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262608, 38.259724, 28.867199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170667, -0.073165, 0.982609,
		0.755756, -0.649585, 0.082898,
		0.632222, 0.756761, 0.166157,
		36.452274, 38.486752, 28.917046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076828, 37.811577, 29.512188>,  <36.009720, 37.957020, 28.800735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076828, 37.811577, 29.512188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.247627, 38.169258, 29.458412>,  <36.350109, 38.383865, 29.426146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.247627, 38.169258, 29.458412>,  <36.076828, 37.811577, 29.512188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247627, 38.169258, 29.458412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096333, 0.192815, 0.976495,
		0.899105, -0.404013, 0.168473,
		0.427000, 0.894201, -0.134441,
		36.375729, 38.437519, 29.418079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602127, 37.720699, 29.998810>,  <36.076828, 37.811577, 29.512188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602127, 37.720699, 29.998810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528561, 38.109531, 29.940523>,  <36.484421, 38.342831, 29.905552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528561, 38.109531, 29.940523>,  <36.602127, 37.720699, 29.998810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528561, 38.109531, 29.940523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031480, 0.153992, 0.987570,
		0.982437, 0.177044, -0.058922,
		-0.183917, 0.972081, -0.145714,
		36.473385, 38.401157, 29.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960094, 38.099354, 30.449957>,  <36.602127, 37.720699, 29.998810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960094, 38.099354, 30.449957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.685619, 38.370354, 30.344025>,  <36.520935, 38.532955, 30.280464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.685619, 38.370354, 30.344025>,  <36.960094, 38.099354, 30.449957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685619, 38.370354, 30.344025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080303, 0.291292, 0.953258,
		0.722976, 0.675383, -0.145477,
		-0.686190, 0.677501, -0.264832,
		36.479763, 38.573605, 30.264574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205940, 38.768021, 30.700600>,  <36.960094, 38.099354, 30.449957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205940, 38.768021, 30.700600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807617, 38.774658, 30.664629>,  <36.568623, 38.778641, 30.643047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807617, 38.774658, 30.664629>,  <37.205940, 38.768021, 30.700600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807617, 38.774658, 30.664629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078179, 0.355613, 0.931358,
		0.047437, 0.934486, -0.352825,
		-0.995810, 0.016597, -0.089927,
		36.508873, 38.779636, 30.637651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.938934, 38.531284, 22.568192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584366, 38.383450, 22.679668>,  <38.371624, 38.294750, 22.746555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584366, 38.383450, 22.679668>,  <38.938934, 38.531284, 22.568192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584366, 38.383450, 22.679668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166728, 0.306738, 0.937077,
		-0.431816, 0.877108, -0.210278,
		-0.886418, -0.369586, 0.278693,
		38.318439, 38.272575, 22.763277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659206, 39.059586, 22.972246>,  <38.938934, 38.531284, 22.568192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659206, 39.059586, 22.972246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457951, 38.726788, 23.065746>,  <38.337196, 38.527111, 23.121847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457951, 38.726788, 23.065746>,  <38.659206, 39.059586, 22.972246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457951, 38.726788, 23.065746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044710, 0.295180, 0.954395,
		-0.863046, 0.469746, -0.185716,
		-0.503143, -0.831990, 0.233751,
		38.307007, 38.477192, 23.135872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458611, 39.293411, 23.578825>,  <38.659206, 39.059586, 22.972246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458611, 39.293411, 23.578825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348961, 38.910950, 23.620068>,  <38.283169, 38.681473, 23.644814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348961, 38.910950, 23.620068>,  <38.458611, 39.293411, 23.578825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348961, 38.910950, 23.620068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097826, 0.078932, 0.992069,
		-0.956705, 0.282040, 0.071899,
		-0.274127, -0.956150, 0.103106,
		38.266724, 38.624104, 23.650999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848400, 39.194988, 23.963898>,  <38.458611, 39.293411, 23.578825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848400, 39.194988, 23.963898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005764, 38.827690, 23.982004>,  <38.100182, 38.607311, 23.992868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005764, 38.827690, 23.982004>,  <37.848400, 39.194988, 23.963898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005764, 38.827690, 23.982004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084364, 0.012970, 0.996351,
		-0.915483, -0.395796, -0.072365,
		0.393413, -0.918247, 0.045265,
		38.123787, 38.552216, 23.995584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493244, 38.986469, 24.439640>,  <37.848400, 39.194988, 23.963898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493244, 38.986469, 24.439640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834545, 38.777870, 24.439869>,  <38.039326, 38.652710, 24.440006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834545, 38.777870, 24.439869>,  <37.493244, 38.986469, 24.439640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834545, 38.777870, 24.439869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064006, -0.103635, 0.992554,
		-0.517560, -0.846933, -0.121806,
		0.853249, -0.521502, 0.000572,
		38.090519, 38.621418, 24.440041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281105, 38.275112, 24.699448>,  <37.493244, 38.986469, 24.439640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281105, 38.275112, 24.699448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679295, 38.268448, 24.736881>,  <37.918209, 38.264450, 24.759342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679295, 38.268448, 24.736881>,  <37.281105, 38.275112, 24.699448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679295, 38.268448, 24.736881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094968, -0.217170, 0.971503,
		0.004136, -0.975992, -0.217769,
		0.995472, -0.016662, 0.093586,
		37.977936, 38.263451, 24.764957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464458, 37.614552, 25.006145>,  <37.281105, 38.275112, 24.699448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464458, 37.614552, 25.006145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723621, 37.910042, 25.080454>,  <37.879120, 38.087334, 25.125038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723621, 37.910042, 25.080454>,  <37.464458, 37.614552, 25.006145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723621, 37.910042, 25.080454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099067, -0.160089, 0.982119,
		0.755253, -0.654722, -0.030539,
		0.647904, 0.738723, 0.185769,
		37.917992, 38.131657, 25.136185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736847, 37.409073, 25.700876>,  <37.464458, 37.614552, 25.006145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736847, 37.409073, 25.700876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886600, 37.775467, 25.643187>,  <37.976452, 37.995304, 25.608572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886600, 37.775467, 25.643187>,  <37.736847, 37.409073, 25.700876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886600, 37.775467, 25.643187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160831, 0.089033, 0.982958,
		0.913220, -0.391198, -0.113987,
		0.374382, 0.915990, -0.144224,
		37.998917, 38.050262, 25.599920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368176, 37.461037, 26.220703>,  <37.736847, 37.409073, 25.700876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368176, 37.461037, 26.220703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184608, 37.799473, 26.112236>,  <38.074467, 38.002533, 26.047155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184608, 37.799473, 26.112236>,  <38.368176, 37.461037, 26.220703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184608, 37.799473, 26.112236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129669, 0.238156, 0.962532,
		0.878966, 0.476884, 0.000417,
		-0.458917, 0.846087, -0.271168,
		38.046932, 38.053299, 26.030886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010944, 37.622627, 26.364445>,  <38.368176, 37.461037, 26.220703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010944, 37.622627, 26.364445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365440, 37.465458, 26.462582>,  <39.578136, 37.371155, 26.521463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365440, 37.465458, 26.462582>,  <39.010944, 37.622627, 26.364445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365440, 37.465458, 26.462582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265893, -0.002204, -0.964000,
		0.379319, 0.919569, 0.102523,
		0.886238, -0.392924, 0.245343,
		39.631313, 37.347580, 26.536184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528046, 38.059975, 26.007168>,  <39.010944, 37.622627, 26.364445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528046, 38.059975, 26.007168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658211, 37.685703, 26.061747>,  <39.736309, 37.461140, 26.094494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658211, 37.685703, 26.061747>,  <39.528046, 38.059975, 26.007168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658211, 37.685703, 26.061747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026078, -0.135367, -0.990452,
		0.945213, 0.325861, -0.019649,
		0.325410, -0.935676, 0.136448,
		39.755833, 37.404999, 26.102680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895344, 37.937775, 25.364017>,  <39.528046, 38.059975, 26.007168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895344, 37.937775, 25.364017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857742, 37.576679, 25.531939>,  <39.835182, 37.360023, 25.632690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857742, 37.576679, 25.531939>,  <39.895344, 37.937775, 25.364017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857742, 37.576679, 25.531939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269580, -0.428998, -0.862141,
		0.958379, 0.032124, 0.283687,
		-0.094006, -0.902734, 0.419802,
		39.829540, 37.305859, 25.657879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466476, 37.526386, 25.098482>,  <39.895344, 37.937775, 25.364017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466476, 37.526386, 25.098482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206261, 37.255787, 25.236553>,  <40.050133, 37.093426, 25.319395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206261, 37.255787, 25.236553>,  <40.466476, 37.526386, 25.098482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206261, 37.255787, 25.236553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099497, -0.526492, -0.844338,
		0.752930, -0.514928, 0.409812,
		-0.650536, -0.676503, 0.345178,
		40.011101, 37.052837, 25.340107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800228, 37.027500, 24.797747>,  <40.466476, 37.526386, 25.098482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800228, 37.027500, 24.797747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464489, 36.851177, 24.924986>,  <40.263046, 36.745384, 25.001329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464489, 36.851177, 24.924986>,  <40.800228, 37.027500, 24.797747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464489, 36.851177, 24.924986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135670, -0.736523, -0.662667,
		0.526396, -0.513051, 0.678002,
		-0.839346, -0.440810, 0.318097,
		40.212685, 36.718933, 25.020414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875309, 36.223709, 25.075365>,  <40.800228, 37.027500, 24.797747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875309, 36.223709, 25.075365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507271, 36.292278, 24.934490>,  <40.286446, 36.333420, 24.849966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507271, 36.292278, 24.934490>,  <40.875309, 36.223709, 25.075365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507271, 36.292278, 24.934490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136927, -0.701649, -0.699242,
		-0.366974, -0.691595, 0.622114,
		-0.920098, 0.171420, -0.352185,
		40.231243, 36.343704, 24.828835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644958, 35.523956, 24.756598>,  <40.875309, 36.223709, 25.075365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644958, 35.523956, 24.756598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385094, 35.804401, 24.639029>,  <40.229176, 35.972668, 24.568487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385094, 35.804401, 24.639029>,  <40.644958, 35.523956, 24.756598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385094, 35.804401, 24.639029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091577, -0.455984, -0.885264,
		-0.754691, -0.548202, 0.360439,
		-0.649658, 0.701109, -0.293924,
		40.190197, 36.014732, 24.550852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017475, 35.115139, 24.601879>,  <40.644958, 35.523956, 24.756598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017475, 35.115139, 24.601879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031063, 35.465038, 24.408527>,  <40.039215, 35.674980, 24.292517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031063, 35.465038, 24.408527>,  <40.017475, 35.115139, 24.601879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031063, 35.465038, 24.408527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052404, -0.481436, -0.874913,
		-0.998048, 0.055053, 0.029486,
		0.033972, 0.874750, -0.483382,
		40.041256, 35.727463, 24.263514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558628, 35.048534, 24.077827>,  <40.017475, 35.115139, 24.601879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558628, 35.048534, 24.077827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767097, 35.367218, 23.955427>,  <39.892178, 35.558430, 23.881987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767097, 35.367218, 23.955427>,  <39.558628, 35.048534, 24.077827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767097, 35.367218, 23.955427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022922, -0.345349, -0.938195,
		-0.853144, 0.495975, -0.161724,
		0.521172, 0.796708, -0.306001,
		39.923450, 35.606232, 23.863626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113129, 35.379593, 23.435923>,  <39.558628, 35.048534, 24.077827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113129, 35.379593, 23.435923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496159, 35.491505, 23.408268>,  <39.725975, 35.558651, 23.391674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496159, 35.491505, 23.408268>,  <39.113129, 35.379593, 23.435923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496159, 35.491505, 23.408268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033887, -0.347540, -0.937053,
		-0.286200, 0.894951, -0.342275,
		0.957570, 0.279783, -0.069138,
		39.783428, 35.575439, 23.387526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206333, 35.752338, 22.779753>,  <39.113129, 35.379593, 23.435923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206333, 35.752338, 22.779753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582077, 35.670712, 22.889992>,  <39.807526, 35.621735, 22.956135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582077, 35.670712, 22.889992>,  <39.206333, 35.752338, 22.779753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582077, 35.670712, 22.889992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243034, -0.170823, -0.954858,
		0.241932, 0.963938, -0.110870,
		0.939363, -0.204066, 0.275597,
		39.863888, 35.609493, 22.972672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551392, 36.094307, 22.261120>,  <39.206333, 35.752338, 22.779753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551392, 36.094307, 22.261120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787254, 35.814751, 22.423035>,  <39.928772, 35.647018, 22.520184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787254, 35.814751, 22.423035>,  <39.551392, 36.094307, 22.261120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787254, 35.814751, 22.423035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292216, -0.282624, -0.913638,
		0.752937, 0.657019, 0.037576,
		0.589658, -0.698892, 0.404789,
		39.964153, 35.605083, 22.544472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247936, 36.197441, 22.062878>,  <39.551392, 36.094307, 22.261120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247936, 36.197441, 22.062878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227104, 35.807213, 22.148251>,  <40.214603, 35.573078, 22.199474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227104, 35.807213, 22.148251>,  <40.247936, 36.197441, 22.062878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227104, 35.807213, 22.148251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184559, -0.219446, -0.958009,
		0.981441, -0.010505, 0.191480,
		-0.052083, -0.975568, 0.213434,
		40.211479, 35.514542, 22.212280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834854, 35.864891, 21.697880>,  <40.247936, 36.197441, 22.062878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834854, 35.864891, 21.697880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571899, 35.576683, 21.786142>,  <40.414124, 35.403759, 21.839100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571899, 35.576683, 21.786142>,  <40.834854, 35.864891, 21.697880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571899, 35.576683, 21.786142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099525, -0.373278, -0.922366,
		0.746948, -0.584394, 0.317099,
		-0.657391, -0.720519, 0.220658,
		40.374683, 35.360527, 21.852339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.463287, 34.165337, 22.177877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.775890, 34.414890, 22.179544>,  <33.963451, 34.564621, 22.180546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.775890, 34.414890, 22.179544>,  <33.463287, 34.165337, 22.177877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775890, 34.414890, 22.179544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137001, 0.165089, 0.976717,
		0.608667, -0.763883, 0.214491,
		0.781508, 0.623881, 0.004168,
		34.010342, 34.602055, 22.180796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898167, 33.933491, 22.672428>,  <33.463287, 34.165337, 22.177877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898167, 33.933491, 22.672428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.978867, 34.319317, 22.604424>,  <34.027287, 34.550812, 22.563622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.978867, 34.319317, 22.604424>,  <33.898167, 33.933491, 22.672428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978867, 34.319317, 22.604424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047673, 0.183044, 0.981948,
		0.978276, -0.190003, 0.082913,
		0.201750, 0.964569, -0.170009,
		34.039391, 34.608688, 22.553421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462055, 34.087875, 23.084030>,  <33.898167, 33.933491, 22.672428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462055, 34.087875, 23.084030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.296436, 34.442276, 23.000536>,  <34.197063, 34.654915, 22.950439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.296436, 34.442276, 23.000536>,  <34.462055, 34.087875, 23.084030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296436, 34.442276, 23.000536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085456, 0.190467, 0.977967,
		0.906235, 0.422762, -0.003148,
		-0.414047, 0.885999, -0.208735,
		34.172222, 34.708076, 22.937916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741329, 34.562489, 23.600378>,  <34.462055, 34.087875, 23.084030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741329, 34.562489, 23.600378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411846, 34.754719, 23.480011>,  <34.214157, 34.870056, 23.407791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411846, 34.754719, 23.480011>,  <34.741329, 34.562489, 23.600378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411846, 34.754719, 23.480011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077701, 0.430025, 0.899467,
		0.561666, 0.764279, -0.316873,
		-0.823707, 0.480579, -0.300916,
		34.164734, 34.898891, 23.389736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911167, 35.295254, 23.745131>,  <34.741329, 34.562489, 23.600378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911167, 35.295254, 23.745131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.511772, 35.283619, 23.726437>,  <34.272137, 35.276638, 23.715219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.511772, 35.283619, 23.726437>,  <34.911167, 35.295254, 23.745131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511772, 35.283619, 23.726437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054561, 0.410205, 0.910360,
		-0.007305, 0.911529, -0.411170,
		-0.998484, -0.029084, -0.046737,
		34.212227, 35.274895, 23.712416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685772, 35.910946, 23.978279>,  <34.911167, 35.295254, 23.745131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685772, 35.910946, 23.978279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.351067, 35.695759, 24.019110>,  <34.150246, 35.566647, 24.043608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.351067, 35.695759, 24.019110>,  <34.685772, 35.910946, 23.978279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351067, 35.695759, 24.019110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171591, 0.434647, 0.884103,
		-0.519989, 0.722266, -0.456006,
		-0.836760, -0.537971, 0.102077,
		34.100040, 35.534367, 24.049732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375698, 36.261517, 24.545431>,  <34.685772, 35.910946, 23.978279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375698, 36.261517, 24.545431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.192448, 35.906563, 24.524778>,  <34.082497, 35.693588, 24.512386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.192448, 35.906563, 24.524778>,  <34.375698, 36.261517, 24.545431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192448, 35.906563, 24.524778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118880, 0.003603, 0.992902,
		-0.880902, 0.461011, -0.107143,
		-0.458125, -0.887387, -0.051631,
		34.055012, 35.640347, 24.509289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040745, 36.342728, 25.083473>,  <34.375698, 36.261517, 24.545431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040745, 36.342728, 25.083473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.988106, 35.955650, 24.997450>,  <33.956524, 35.723404, 24.945835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.988106, 35.955650, 24.997450>,  <34.040745, 36.342728, 25.083473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988106, 35.955650, 24.997450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063824, -0.224767, 0.972320,
		-0.989247, 0.114226, 0.091340,
		-0.131594, -0.967694, -0.215059,
		33.948627, 35.665340, 24.932932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476486, 36.085876, 25.505384>,  <34.040745, 36.342728, 25.083473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476486, 36.085876, 25.505384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719093, 35.782055, 25.411396>,  <33.864658, 35.599762, 25.355003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719093, 35.782055, 25.411396>,  <33.476486, 36.085876, 25.505384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719093, 35.782055, 25.411396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066238, -0.246233, 0.966944,
		-0.792308, -0.602030, -0.099033,
		0.606515, -0.759558, -0.234970,
		33.901047, 35.554188, 25.340904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194363, 35.517719, 25.873804>,  <33.476486, 36.085876, 25.505384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194363, 35.517719, 25.873804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.576878, 35.426346, 25.800774>,  <33.806385, 35.371521, 25.756956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.576878, 35.426346, 25.800774>,  <33.194363, 35.517719, 25.873804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576878, 35.426346, 25.800774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137151, -0.201061, 0.969930,
		-0.258271, -0.952572, -0.160943,
		0.956287, -0.228431, -0.182575,
		33.863762, 35.357815, 25.746000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364685, 34.938988, 26.330345>,  <33.194363, 35.517719, 25.873804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364685, 34.938988, 26.330345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706871, 35.114868, 26.220917>,  <33.912182, 35.220394, 26.155260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706871, 35.114868, 26.220917>,  <33.364685, 34.938988, 26.330345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706871, 35.114868, 26.220917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282774, 0.045937, 0.958086,
		0.433835, -0.896971, -0.085038,
		0.855469, 0.439697, -0.273569,
		33.963512, 35.246777, 26.138845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847553, 34.552979, 26.675358>,  <33.364685, 34.938988, 26.330345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847553, 34.552979, 26.675358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.003975, 34.910095, 26.585924>,  <34.097828, 35.124367, 26.532265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.003975, 34.910095, 26.585924>,  <33.847553, 34.552979, 26.675358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003975, 34.910095, 26.585924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373792, 0.067929, 0.925022,
		0.841044, -0.445309, -0.307156,
		0.391056, 0.892796, -0.223584,
		34.121292, 35.177933, 26.518848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470268, 34.539856, 27.028547>,  <33.847553, 34.552979, 26.675358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470268, 34.539856, 27.028547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424324, 34.929424, 26.950279>,  <34.396759, 35.163166, 26.903318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424324, 34.929424, 26.950279>,  <34.470268, 34.539856, 27.028547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424324, 34.929424, 26.950279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284888, 0.220995, 0.932738,
		0.951655, 0.051387, -0.302841,
		-0.114857, 0.973920, -0.195672,
		34.389866, 35.221600, 26.891577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085247, 34.844158, 27.210697>,  <34.470268, 34.539856, 27.028547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085247, 34.844158, 27.210697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786858, 35.110546, 27.209480>,  <34.607822, 35.270378, 27.208750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786858, 35.110546, 27.209480>,  <35.085247, 34.844158, 27.210697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786858, 35.110546, 27.209480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192602, 0.220107, 0.956273,
		0.637519, 0.712767, -0.292461,
		-0.745972, 0.665970, -0.003042,
		34.563065, 35.310337, 27.208569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769283, 34.500843, 27.404644>,  <35.085247, 34.844158, 27.210697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769283, 34.500843, 27.404644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.754665, 34.138729, 27.573935>,  <35.745895, 33.921459, 27.675508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.754665, 34.138729, 27.573935>,  <35.769283, 34.500843, 27.404644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754665, 34.138729, 27.573935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038627, -0.424473, -0.904616,
		0.998585, -0.016713, 0.050482,
		-0.036547, -0.905286, 0.423227,
		35.743702, 33.867142, 27.700903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283779, 34.126907, 27.094959>,  <35.769283, 34.500843, 27.404644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283779, 34.126907, 27.094959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992115, 33.879711, 27.212540>,  <35.817116, 33.731392, 27.283087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992115, 33.879711, 27.212540>,  <36.283779, 34.126907, 27.094959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992115, 33.879711, 27.212540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146015, -0.279151, -0.949081,
		0.668580, -0.734956, 0.113311,
		-0.729164, -0.617992, 0.293950,
		35.773365, 33.694313, 27.300724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602173, 33.608128, 26.838575>,  <36.283779, 34.126907, 27.094959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602173, 33.608128, 26.838575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.215313, 33.514957, 26.879295>,  <35.983196, 33.459057, 26.903727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.215313, 33.514957, 26.879295>,  <36.602173, 33.608128, 26.838575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215313, 33.514957, 26.879295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005484, -0.419503, -0.907738,
		0.254138, -0.877362, 0.407000,
		-0.967152, -0.232922, 0.101800,
		35.925167, 33.445080, 26.909836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596111, 32.905521, 26.592886>,  <36.602173, 33.608128, 26.838575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596111, 32.905521, 26.592886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.210083, 33.010235, 26.596985>,  <35.978466, 33.073063, 26.599443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.210083, 33.010235, 26.596985>,  <36.596111, 32.905521, 26.592886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210083, 33.010235, 26.596985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111196, -0.373880, -0.920787,
		-0.237218, -0.889765, 0.389930,
		-0.965072, 0.261786, 0.010247,
		35.920563, 33.088772, 26.600060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216282, 32.343979, 26.361040>,  <36.596111, 32.905521, 26.592886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216282, 32.343979, 26.361040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974308, 32.654781, 26.291389>,  <35.829124, 32.841263, 26.249599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974308, 32.654781, 26.291389>,  <36.216282, 32.343979, 26.361040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974308, 32.654781, 26.291389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143154, -0.321233, -0.936118,
		-0.783305, -0.541359, 0.305555,
		-0.604931, 0.777007, -0.174126,
		35.792828, 32.887882, 26.239151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841843, 32.019157, 25.834990>,  <36.216282, 32.343979, 26.361040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841843, 32.019157, 25.834990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746712, 32.407486, 25.822718>,  <35.689632, 32.640484, 25.815355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746712, 32.407486, 25.822718>,  <35.841843, 32.019157, 25.834990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746712, 32.407486, 25.822718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106831, -0.057538, -0.992611,
		-0.965414, -0.232796, 0.117398,
		-0.237830, 0.970822, -0.030678,
		35.675362, 32.698734, 25.813515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420139, 32.026394, 25.307301>,  <35.841843, 32.019157, 25.834990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420139, 32.026394, 25.307301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.502747, 32.416603, 25.337500>,  <35.552311, 32.650730, 25.355619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.502747, 32.416603, 25.337500>,  <35.420139, 32.026394, 25.307301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502747, 32.416603, 25.337500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087647, 0.095297, -0.991583,
		-0.974509, 0.198164, 0.105183,
		0.206520, 0.975525, 0.075499,
		35.564701, 32.709259, 25.360149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947102, 32.365887, 24.960125>,  <35.420139, 32.026394, 25.307301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947102, 32.365887, 24.960125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.285473, 32.578533, 24.977009>,  <35.488495, 32.706123, 24.987139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.285473, 32.578533, 24.977009>,  <34.947102, 32.365887, 24.960125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285473, 32.578533, 24.977009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007374, 0.090802, -0.995842,
		-0.533241, 0.842103, 0.080733,
		0.845931, 0.531619, 0.042209,
		35.539253, 32.738018, 24.989672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851166, 32.999229, 24.548044>,  <34.947102, 32.365887, 24.960125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851166, 32.999229, 24.548044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249393, 32.966564, 24.566662>,  <35.488331, 32.946964, 24.577831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249393, 32.966564, 24.566662>,  <34.851166, 32.999229, 24.548044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249393, 32.966564, 24.566662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068773, 0.295354, -0.952909,
		0.064067, 0.951891, 0.299663,
		0.995573, -0.081658, 0.046542,
		35.548065, 32.942066, 24.580624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144199, 33.701927, 24.203011>,  <34.851166, 32.999229, 24.548044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144199, 33.701927, 24.203011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422382, 33.414959, 24.186766>,  <35.589294, 33.242779, 24.177019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422382, 33.414959, 24.186766>,  <35.144199, 33.701927, 24.203011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422382, 33.414959, 24.186766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155103, 0.205064, -0.966381,
		0.701626, 0.665779, 0.253887,
		0.695459, -0.717417, -0.040614,
		35.631020, 33.199734, 24.174582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630455, 33.975998, 23.713127>,  <35.144199, 33.701927, 24.203011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630455, 33.975998, 23.713127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701031, 33.583065, 23.738096>,  <35.743378, 33.347305, 23.753078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701031, 33.583065, 23.738096>,  <35.630455, 33.975998, 23.713127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701031, 33.583065, 23.738096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140911, -0.037558, -0.989309,
		0.974173, 0.183352, 0.131794,
		0.176442, -0.982329, 0.062425,
		35.753963, 33.288364, 23.756824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399281, 33.784943, 23.428669>,  <35.630455, 33.975998, 23.713127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399281, 33.784943, 23.428669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175838, 33.453545, 23.412891>,  <36.041775, 33.254707, 23.403425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175838, 33.453545, 23.412891>,  <36.399281, 33.784943, 23.428669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175838, 33.453545, 23.412891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095304, -0.016871, -0.995305,
		0.823940, -0.559742, 0.088384,
		-0.558605, -0.828496, -0.039445,
		36.008259, 33.204994, 23.401058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844257, 33.342693, 23.030859>,  <36.399281, 33.784943, 23.428669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844257, 33.342693, 23.030859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478462, 33.181828, 23.013056>,  <36.258984, 33.085308, 23.002375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478462, 33.181828, 23.013056>,  <36.844257, 33.342693, 23.030859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478462, 33.181828, 23.013056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084583, -0.082444, -0.993000,
		0.395676, -0.911850, 0.109410,
		-0.914487, -0.402161, -0.044506,
		36.204117, 33.061180, 22.999704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923359, 32.864227, 22.509541>,  <36.844257, 33.342693, 23.030859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923359, 32.864227, 22.509541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525753, 32.849777, 22.550772>,  <36.287189, 32.841106, 22.575510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525753, 32.849777, 22.550772>,  <36.923359, 32.864227, 22.509541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525753, 32.849777, 22.550772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097339, -0.135113, -0.986037,
		0.049550, -0.990171, 0.130788,
		-0.994017, -0.036127, 0.103077,
		36.227547, 32.838940, 22.581696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083191, 32.142723, 22.792013>,  <36.923359, 32.864227, 22.509541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083191, 32.142723, 22.792013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413731, 31.925713, 22.731590>,  <37.612053, 31.795507, 22.695337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413731, 31.925713, 22.731590>,  <37.083191, 32.142723, 22.792013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413731, 31.925713, 22.731590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282863, 0.167906, 0.944349,
		-0.486970, -0.823088, 0.292209,
		0.826347, -0.542525, -0.151056,
		37.661636, 31.762955, 22.686274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059071, 31.577408, 23.286873>,  <37.083191, 32.142723, 22.792013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059071, 31.577408, 23.286873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443493, 31.620300, 23.184990>,  <37.674145, 31.646036, 23.123859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443493, 31.620300, 23.184990>,  <37.059071, 31.577408, 23.286873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443493, 31.620300, 23.184990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236063, 0.160693, 0.958359,
		0.143692, -0.981163, 0.129122,
		0.961055, 0.107228, -0.254706,
		37.731808, 31.652470, 23.108578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428333, 31.184778, 23.752239>,  <37.059071, 31.577408, 23.286873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428333, 31.184778, 23.752239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716614, 31.424171, 23.612291>,  <37.889584, 31.567808, 23.528322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716614, 31.424171, 23.612291>,  <37.428333, 31.184778, 23.752239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716614, 31.424171, 23.612291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310984, 0.171944, 0.934732,
		0.619580, -0.782465, -0.062199,
		0.720701, 0.598484, -0.349867,
		37.932823, 31.603716, 23.507332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995598, 30.993996, 24.165106>,  <37.428333, 31.184778, 23.752239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995598, 30.993996, 24.165106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061562, 31.365885, 24.033396>,  <38.101139, 31.589018, 23.954369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061562, 31.365885, 24.033396>,  <37.995598, 30.993996, 24.165106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061562, 31.365885, 24.033396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169571, 0.302151, 0.938057,
		0.971622, -0.210533, -0.107825,
		0.164912, 0.929721, -0.329277,
		38.111034, 31.644800, 23.934612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526402, 31.209166, 24.619589>,  <37.995598, 30.993996, 24.165106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526402, 31.209166, 24.619589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456043, 31.562653, 24.446106>,  <38.413830, 31.774746, 24.342016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456043, 31.562653, 24.446106>,  <38.526402, 31.209166, 24.619589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456043, 31.562653, 24.446106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290771, 0.467558, 0.834770,
		0.940485, 0.020724, -0.339202,
		-0.175897, 0.883719, -0.433706,
		38.403275, 31.827768, 24.315994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158791, 31.630856, 24.626104>,  <38.526402, 31.209166, 24.619589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158791, 31.630856, 24.626104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829174, 31.857462, 24.624208>,  <38.631405, 31.993425, 24.623072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829174, 31.857462, 24.624208>,  <39.158791, 31.630856, 24.626104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829174, 31.857462, 24.624208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354166, 0.521655, 0.776172,
		0.442185, 0.637917, -0.630503,
		-0.824038, 0.566514, -0.004739,
		38.581963, 32.027416, 24.622787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417835, 32.291542, 24.756493>,  <39.158791, 31.630856, 24.626104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417835, 32.291542, 24.756493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025444, 32.325771, 24.826185>,  <38.790009, 32.346310, 24.868000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025444, 32.325771, 24.826185>,  <39.417835, 32.291542, 24.756493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025444, 32.325771, 24.826185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190865, 0.588713, 0.785485,
		-0.035354, 0.803800, -0.593849,
		-0.980979, 0.085575, 0.174230,
		38.731152, 32.351444, 24.878454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297970, 33.024864, 24.913961>,  <39.417835, 32.291542, 24.756493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297970, 33.024864, 24.913961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969803, 32.858059, 25.070431>,  <38.772903, 32.757977, 25.164312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969803, 32.858059, 25.070431>,  <39.297970, 33.024864, 24.913961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969803, 32.858059, 25.070431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145126, 0.509864, 0.847925,
		-0.553041, 0.752421, -0.357782,
		-0.820417, -0.417014, 0.391171,
		38.723679, 32.732956, 25.187782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832890, 33.572861, 25.189760>,  <39.297970, 33.024864, 24.913961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832890, 33.572861, 25.189760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744610, 33.226688, 25.369682>,  <38.691643, 33.018986, 25.477634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744610, 33.226688, 25.369682>,  <38.832890, 33.572861, 25.189760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744610, 33.226688, 25.369682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120844, 0.433360, 0.893082,
		-0.967827, 0.251459, 0.008940,
		-0.220699, -0.865429, 0.449804,
		38.678402, 32.967060, 25.504623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339684, 33.718670, 25.692545>,  <38.832890, 33.572861, 25.189760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339684, 33.718670, 25.692545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503304, 33.369228, 25.797991>,  <38.601475, 33.159565, 25.861258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503304, 33.369228, 25.797991>,  <38.339684, 33.718670, 25.692545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503304, 33.369228, 25.797991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133047, 0.342902, 0.929902,
		-0.902758, -0.345307, 0.256496,
		0.409055, -0.873603, 0.263615,
		38.626019, 33.107147, 25.877075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040462, 33.598183, 26.320114>,  <38.339684, 33.718670, 25.692545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040462, 33.598183, 26.320114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376492, 33.381435, 26.309832>,  <38.578110, 33.251389, 26.303661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376492, 33.381435, 26.309832>,  <38.040462, 33.598183, 26.320114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376492, 33.381435, 26.309832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157353, 0.198051, 0.967479,
		-0.519152, -0.816797, 0.251641,
		0.840072, -0.541865, -0.025708,
		38.628513, 33.218876, 26.302120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024494, 33.085007, 26.827427>,  <38.040462, 33.598183, 26.320114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024494, 33.085007, 26.827427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413689, 33.130474, 26.747042>,  <38.647205, 33.157753, 26.698811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413689, 33.130474, 26.747042>,  <38.024494, 33.085007, 26.827427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413689, 33.130474, 26.747042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184131, 0.143105, 0.972428,
		0.139271, -0.983161, 0.118313,
		0.972985, 0.113646, -0.200961,
		38.705582, 33.164574, 26.686752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283779, 32.755306, 27.413679>,  <38.024494, 33.085007, 26.827427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283779, 32.755306, 27.413679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588272, 32.959648, 27.253904>,  <38.770969, 33.082253, 27.158039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588272, 32.959648, 27.253904>,  <38.283779, 32.755306, 27.413679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588272, 32.959648, 27.253904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381760, 0.144881, 0.912836,
		0.524195, -0.847372, -0.084734,
		0.761235, 0.510852, -0.399438,
		38.816643, 33.112904, 27.134073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857975, 32.534031, 27.682306>,  <38.283779, 32.755306, 27.413679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857975, 32.534031, 27.682306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.966747, 32.900578, 27.564777>,  <39.032009, 33.120506, 27.494259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.966747, 32.900578, 27.564777>,  <38.857975, 32.534031, 27.682306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966747, 32.900578, 27.564777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235959, 0.232516, 0.943535,
		0.932940, -0.325906, -0.152996,
		0.271930, 0.916363, -0.293824,
		39.048325, 33.175488, 27.476629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.168480, 35.042896, 21.550751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769085, 35.020897, 21.550833>,  <40.529449, 35.007698, 21.550882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769085, 35.020897, 21.550833>,  <41.168480, 35.042896, 21.550751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769085, 35.020897, 21.550833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024314, -0.444716, -0.895342,
		0.049334, -0.893982, 0.445380,
		-0.998486, -0.054999, 0.000203,
		40.469540, 35.004398, 21.550894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065712, 34.363850, 21.307871>,  <41.168480, 35.042896, 21.550751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065712, 34.363850, 21.307871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.724586, 34.566929, 21.258963>,  <40.519913, 34.688778, 21.229618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.724586, 34.566929, 21.258963>,  <41.065712, 34.363850, 21.307871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724586, 34.566929, 21.258963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126291, -0.427698, -0.895056,
		-0.506714, -0.747875, 0.428864,
		-0.852814, 0.507699, -0.122271,
		40.468742, 34.719238, 21.222282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672272, 33.872593, 20.996147>,  <41.065712, 34.363850, 21.307871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672272, 33.872593, 20.996147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458134, 34.202656, 20.924004>,  <40.329651, 34.400692, 20.880718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458134, 34.202656, 20.924004>,  <40.672272, 33.872593, 20.996147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458134, 34.202656, 20.924004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366195, -0.419170, -0.830781,
		-0.761122, -0.378708, 0.526567,
		-0.535345, 0.825152, -0.180358,
		40.297531, 34.450203, 20.869896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040527, 33.623726, 20.914932>,  <40.672272, 33.872593, 20.996147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040527, 33.623726, 20.914932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.042980, 33.984718, 20.742661>,  <40.044453, 34.201313, 20.639297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.042980, 33.984718, 20.742661>,  <40.040527, 33.623726, 20.914932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042980, 33.984718, 20.742661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514147, -0.366553, -0.775430,
		-0.857680, 0.226185, 0.461764,
		0.006129, 0.902485, -0.430678,
		40.044819, 34.255463, 20.613457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369961, 33.596142, 20.632486>,  <40.040527, 33.623726, 20.914932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369961, 33.596142, 20.632486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551456, 33.900959, 20.447702>,  <39.660355, 34.083851, 20.336832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551456, 33.900959, 20.447702>,  <39.369961, 33.596142, 20.632486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551456, 33.900959, 20.447702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568324, -0.151833, -0.808675,
		-0.686385, 0.629475, 0.364194,
		0.453744, 0.762042, -0.461962,
		39.687580, 34.129570, 20.309114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793381, 33.980099, 20.280014>,  <39.369961, 33.596142, 20.632486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793381, 33.980099, 20.280014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151222, 34.016541, 20.105024>,  <39.365929, 34.038406, 20.000031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151222, 34.016541, 20.105024>,  <38.793381, 33.980099, 20.280014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151222, 34.016541, 20.105024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374569, -0.380990, -0.845308,
		-0.243680, 0.920080, -0.306712,
		0.894605, 0.091100, -0.437473,
		39.419605, 34.043869, 19.973782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631844, 34.305012, 19.632990>,  <38.793381, 33.980099, 20.280014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631844, 34.305012, 19.632990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.998562, 34.149899, 19.594801>,  <39.218594, 34.056831, 19.571888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.998562, 34.149899, 19.594801>,  <38.631844, 34.305012, 19.632990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998562, 34.149899, 19.594801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224958, -0.303918, -0.925758,
		0.329976, 0.870206, -0.365864,
		0.916793, -0.387782, -0.095474,
		39.273602, 34.033566, 19.566158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765747, 34.427002, 18.943750>,  <38.631844, 34.305012, 19.632990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765747, 34.427002, 18.943750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028797, 34.149502, 19.061216>,  <39.186626, 33.983002, 19.131697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028797, 34.149502, 19.061216>,  <38.765747, 34.427002, 18.943750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028797, 34.149502, 19.061216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043830, -0.353921, -0.934248,
		0.752072, 0.627254, -0.202339,
		0.657622, -0.693753, 0.293667,
		39.226086, 33.941376, 19.149317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263321, 34.421364, 18.415516>,  <38.765747, 34.427002, 18.943750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263321, 34.421364, 18.415516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271614, 34.068584, 18.603870>,  <39.276592, 33.856918, 18.716883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271614, 34.068584, 18.603870>,  <39.263321, 34.421364, 18.415516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271614, 34.068584, 18.603870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056884, -0.471266, -0.880155,
		0.998165, -0.008534, -0.059941,
		0.020737, -0.881950, 0.470887,
		39.277836, 33.804001, 18.745136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759861, 34.109406, 18.096743>,  <39.263321, 34.421364, 18.415516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759861, 34.109406, 18.096743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539970, 33.822495, 18.268005>,  <39.408035, 33.650349, 18.370762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539970, 33.822495, 18.268005>,  <39.759861, 34.109406, 18.096743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539970, 33.822495, 18.268005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127152, -0.578426, -0.805764,
		0.825612, -0.388508, 0.409178,
		-0.549725, -0.717276, 0.428156,
		39.375053, 33.607311, 18.396452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089523, 33.510254, 17.930342>,  <39.759861, 34.109406, 18.096743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089523, 33.510254, 17.930342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725597, 33.379593, 18.032742>,  <39.507240, 33.301197, 18.094181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725597, 33.379593, 18.032742>,  <40.089523, 33.510254, 17.930342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725597, 33.379593, 18.032742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044699, -0.536129, -0.842952,
		0.412597, -0.778374, 0.473178,
		-0.909816, -0.326648, 0.255998,
		39.452652, 33.281597, 18.109541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092472, 32.865829, 17.629787>,  <40.089523, 33.510254, 17.930342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092472, 32.865829, 17.629787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.706886, 32.962147, 17.675035>,  <39.475536, 33.019936, 17.702185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.706886, 32.962147, 17.675035>,  <40.092472, 32.865829, 17.629787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706886, 32.962147, 17.675035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236833, -0.583008, -0.777182,
		-0.121191, -0.775964, 0.619025,
		-0.963962, 0.240793, 0.113118,
		39.417698, 33.034386, 17.708971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720966, 32.238152, 17.797691>,  <40.092472, 32.865829, 17.629787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720966, 32.238152, 17.797691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538330, 32.518703, 17.578751>,  <39.428749, 32.687035, 17.447386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538330, 32.518703, 17.578751>,  <39.720966, 32.238152, 17.797691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538330, 32.518703, 17.578751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225366, -0.686339, -0.691483,
		-0.860659, -0.192371, 0.471444,
		-0.456592, 0.701378, -0.547350,
		39.401352, 32.729118, 17.414545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010609, 32.061008, 17.608051>,  <39.720966, 32.238152, 17.797691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010609, 32.061008, 17.608051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151318, 32.291424, 17.312906>,  <39.235744, 32.429672, 17.135820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151318, 32.291424, 17.312906>,  <39.010609, 32.061008, 17.608051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151318, 32.291424, 17.312906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331579, -0.660457, -0.673685,
		-0.875392, 0.481644, -0.041330,
		0.351773, 0.576035, -0.737862,
		39.256851, 32.464233, 17.091547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569862, 31.769228, 17.027117>,  <39.010609, 32.061008, 17.608051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569862, 31.769228, 17.027117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851593, 32.005909, 16.870243>,  <39.020634, 32.147919, 16.776119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851593, 32.005909, 16.870243>,  <38.569862, 31.769228, 17.027117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851593, 32.005909, 16.870243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311110, -0.239289, -0.919756,
		-0.638068, 0.769823, 0.015547,
		0.704330, 0.591703, -0.392182,
		39.062893, 32.183418, 16.752588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473106, 31.289165, 17.590164>,  <38.569862, 31.769228, 17.027117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473106, 31.289165, 17.590164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134602, 31.080412, 17.633022>,  <37.931499, 30.955160, 17.658737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134602, 31.080412, 17.633022>,  <38.473106, 31.289165, 17.590164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134602, 31.080412, 17.633022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017920, 0.173117, 0.984738,
		-0.532466, 0.835266, -0.137150,
		-0.846262, -0.521882, 0.107147,
		37.880722, 30.923847, 17.665167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128780, 31.659946, 18.083977>,  <38.473106, 31.289165, 17.590164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128780, 31.659946, 18.083977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952732, 31.300819, 18.078033>,  <37.847103, 31.085342, 18.074467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952732, 31.300819, 18.078033>,  <38.128780, 31.659946, 18.083977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952732, 31.300819, 18.078033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014367, -0.009506, 0.999851,
		-0.897826, 0.440264, -0.008715,
		-0.440116, -0.897818, -0.014860,
		37.820698, 31.031473, 18.073576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417072, 31.715609, 18.497456>,  <38.128780, 31.659946, 18.083977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417072, 31.715609, 18.497456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.544544, 31.336754, 18.512295>,  <37.621029, 31.109442, 18.521198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.544544, 31.336754, 18.512295>,  <37.417072, 31.715609, 18.497456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544544, 31.336754, 18.512295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081515, 0.011606, 0.996604,
		-0.944350, -0.320623, -0.073507,
		0.318681, -0.947136, 0.037096,
		37.640148, 31.052612, 18.523424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920425, 31.337517, 18.926136>,  <37.417072, 31.715609, 18.497456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920425, 31.337517, 18.926136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.242943, 31.101557, 18.908678>,  <37.436455, 30.959982, 18.898203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.242943, 31.101557, 18.908678>,  <36.920425, 31.337517, 18.926136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242943, 31.101557, 18.908678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031676, -0.116741, 0.992657,
		-0.590662, -0.798994, -0.112813,
		0.806297, -0.589898, -0.043645,
		37.484833, 30.924587, 18.895584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822456, 30.700735, 19.317158>,  <36.920425, 31.337517, 18.926136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822456, 30.700735, 19.317158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219360, 30.746880, 19.298767>,  <37.457504, 30.774567, 19.287733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219360, 30.746880, 19.298767>,  <36.822456, 30.700735, 19.317158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219360, 30.746880, 19.298767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067853, -0.193575, 0.978736,
		0.104008, -0.974280, -0.199904,
		0.992259, 0.115361, -0.045974,
		37.517036, 30.781487, 19.284975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059662, 30.281746, 19.863401>,  <36.822456, 30.700735, 19.317158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059662, 30.281746, 19.863401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350742, 30.535564, 19.759251>,  <37.525391, 30.687857, 19.696760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350742, 30.535564, 19.759251>,  <37.059662, 30.281746, 19.863401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350742, 30.535564, 19.759251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360869, -0.031380, 0.932088,
		0.583285, -0.772246, -0.251824,
		0.727703, 0.634549, -0.260376,
		37.569054, 30.725929, 19.681137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596027, 30.043819, 20.306389>,  <37.059662, 30.281746, 19.863401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596027, 30.043819, 20.306389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726364, 30.406189, 20.198221>,  <37.804565, 30.623611, 20.133320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726364, 30.406189, 20.198221>,  <37.596027, 30.043819, 20.306389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726364, 30.406189, 20.198221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239570, 0.197576, 0.950563,
		0.914567, -0.374519, -0.152654,
		0.325843, 0.905925, -0.270420,
		37.824116, 30.677967, 20.117096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289577, 30.123848, 20.610815>,  <37.596027, 30.043819, 20.306389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289577, 30.123848, 20.610815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155613, 30.490410, 20.523146>,  <38.075233, 30.710346, 20.470545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155613, 30.490410, 20.523146>,  <38.289577, 30.123848, 20.610815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155613, 30.490410, 20.523146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296062, 0.323172, 0.898836,
		0.894528, 0.236144, -0.379547,
		-0.334914, 0.916404, -0.219173,
		38.055138, 30.765331, 20.457394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756332, 30.642580, 20.953323>,  <38.289577, 30.123848, 20.610815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756332, 30.642580, 20.953323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423126, 30.846903, 20.868313>,  <38.223202, 30.969496, 20.817307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423126, 30.846903, 20.868313>,  <38.756332, 30.642580, 20.953323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423126, 30.846903, 20.868313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073209, 0.482533, 0.872813,
		0.548389, 0.711505, -0.439352,
		-0.833012, 0.510806, -0.212527,
		38.173222, 31.000145, 20.804554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781242, 31.252295, 21.272144>,  <38.756332, 30.642580, 20.953323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781242, 31.252295, 21.272144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393120, 31.277176, 21.178654>,  <38.160244, 31.292105, 21.122561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393120, 31.277176, 21.178654>,  <38.781242, 31.252295, 21.272144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393120, 31.277176, 21.178654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173418, 0.494676, 0.851600,
		0.168590, 0.866848, -0.469203,
		-0.970311, 0.062203, -0.233724,
		38.102028, 31.295837, 21.108536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583012, 31.972723, 21.233513>,  <38.781242, 31.252295, 21.272144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583012, 31.972723, 21.233513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272160, 31.737303, 21.322666>,  <38.085648, 31.596050, 21.376158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272160, 31.737303, 21.322666>,  <38.583012, 31.972723, 21.233513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272160, 31.737303, 21.322666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044710, 0.404892, 0.913271,
		-0.627750, 0.699765, -0.340968,
		-0.777130, -0.588550, 0.222884,
		38.039021, 31.560738, 21.389532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044155, 32.372028, 21.579662>,  <38.583012, 31.972723, 21.233513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044155, 32.372028, 21.579662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938854, 32.004078, 21.695953>,  <37.875675, 31.783306, 21.765728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938854, 32.004078, 21.695953>,  <38.044155, 32.372028, 21.579662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938854, 32.004078, 21.695953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110050, 0.328026, 0.938237,
		-0.958430, 0.214995, -0.187585,
		-0.263249, -0.919878, 0.290729,
		37.859879, 31.728115, 21.783173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474850, 32.464130, 21.964361>,  <38.044155, 32.372028, 21.579662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474850, 32.464130, 21.964361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.625324, 32.109432, 22.071823>,  <37.715607, 31.896614, 22.136301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.625324, 32.109432, 22.071823>,  <37.474850, 32.464130, 21.964361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625324, 32.109432, 22.071823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214557, 0.198703, 0.956286,
		-0.901361, -0.417381, -0.115507,
		0.376184, -0.886741, 0.268655,
		37.738178, 31.843410, 22.152420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724300, 32.336483, 22.097084>,  <37.474850, 32.464130, 21.964361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724300, 32.336483, 22.097084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377865, 32.528370, 22.153324>,  <36.170006, 32.643501, 22.187067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377865, 32.528370, 22.153324>,  <36.724300, 32.336483, 22.097084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377865, 32.528370, 22.153324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324575, -0.325728, -0.888005,
		-0.380193, -0.814723, 0.437812,
		-0.866086, 0.479716, 0.140599,
		36.118038, 32.672283, 22.195503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084663, 31.846331, 22.002016>,  <36.724300, 32.336483, 22.097084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084663, 31.846331, 22.002016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014469, 32.227787, 21.904226>,  <35.972351, 32.456661, 21.845552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014469, 32.227787, 21.904226>,  <36.084663, 31.846331, 22.002016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014469, 32.227787, 21.904226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141789, -0.270223, -0.952300,
		-0.974218, -0.132454, 0.182637,
		-0.175489, 0.953643, -0.244475,
		35.961823, 32.513882, 21.830883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580048, 31.762001, 21.432217>,  <36.084663, 31.846331, 22.002016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580048, 31.762001, 21.432217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.714001, 32.137539, 21.400148>,  <35.794373, 32.362862, 21.380907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.714001, 32.137539, 21.400148>,  <35.580048, 31.762001, 21.432217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714001, 32.137539, 21.400148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240580, 0.002928, -0.970625,
		-0.911031, 0.344331, 0.226847,
		0.334880, 0.938844, -0.080172,
		35.814465, 32.419193, 21.376097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178581, 32.025852, 20.925526>,  <35.580048, 31.762001, 21.432217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178581, 32.025852, 20.925526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463974, 32.306122, 20.926750>,  <35.635208, 32.474281, 20.927485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463974, 32.306122, 20.926750>,  <35.178581, 32.025852, 20.925526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463974, 32.306122, 20.926750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128194, 0.134831, -0.982541,
		-0.688850, 0.700630, 0.186021,
		0.713479, 0.700670, 0.003062,
		35.678017, 32.516323, 20.927670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784409, 32.523190, 20.599905>,  <35.178581, 32.025852, 20.925526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784409, 32.523190, 20.599905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.172920, 32.613655, 20.570312>,  <35.406025, 32.667934, 20.552557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.172920, 32.613655, 20.570312>,  <34.784409, 32.523190, 20.599905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172920, 32.613655, 20.570312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115896, 0.178086, -0.977166,
		-0.207821, 0.957673, 0.199182,
		0.971277, 0.226160, -0.073981,
		35.464302, 32.681503, 20.548119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884354, 33.137760, 20.189560>,  <34.784409, 32.523190, 20.599905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884354, 33.137760, 20.189560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238667, 32.953869, 20.164135>,  <35.451256, 32.843536, 20.148880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238667, 32.953869, 20.164135>,  <34.884354, 33.137760, 20.189560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238667, 32.953869, 20.164135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005175, 0.127170, -0.991868,
		0.464069, 0.878909, 0.110266,
		0.885784, -0.459725, -0.063564,
		35.504402, 32.815952, 20.145065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295052, 33.598164, 19.840569>,  <34.884354, 33.137760, 20.189560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295052, 33.598164, 19.840569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493439, 33.255383, 19.784506>,  <35.612473, 33.049713, 19.750868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493439, 33.255383, 19.784506>,  <35.295052, 33.598164, 19.840569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493439, 33.255383, 19.784506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086561, 0.209394, -0.973992,
		0.864014, 0.470940, 0.178032,
		0.495971, -0.856954, -0.140155,
		35.642231, 32.998295, 19.742460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589832, 34.297314, 19.714081>,  <35.295052, 33.598164, 19.840569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589832, 34.297314, 19.714081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264778, 34.527779, 19.679070>,  <35.069744, 34.666058, 19.658064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264778, 34.527779, 19.679070>,  <35.589832, 34.297314, 19.714081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264778, 34.527779, 19.679070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088908, 0.025863, 0.995704,
		0.575947, 0.816929, 0.030208,
		-0.812638, 0.576159, -0.087527,
		35.020988, 34.700626, 19.652811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660015, 34.845890, 20.252855>,  <35.589832, 34.297314, 19.714081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660015, 34.845890, 20.252855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279629, 34.795338, 20.139938>,  <35.051395, 34.765007, 20.072187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279629, 34.795338, 20.139938>,  <35.660015, 34.845890, 20.252855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279629, 34.795338, 20.139938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308978, 0.347215, 0.885423,
		-0.013882, 0.929231, -0.369238,
		-0.950968, -0.126378, -0.282292,
		34.994339, 34.757423, 20.055250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334133, 35.433311, 20.550459>,  <35.660015, 34.845890, 20.252855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334133, 35.433311, 20.550459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040806, 35.170525, 20.480438>,  <34.864811, 35.012852, 20.438425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040806, 35.170525, 20.480438>,  <35.334133, 35.433311, 20.550459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040806, 35.170525, 20.480438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495552, 0.340197, 0.799183,
		-0.465485, 0.672801, -0.575033,
		-0.733316, -0.656967, -0.175051,
		34.820812, 34.973434, 20.427923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691753, 35.761269, 20.675901>,  <35.334133, 35.433311, 20.550459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691753, 35.761269, 20.675901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.576324, 35.378494, 20.688572>,  <34.507069, 35.148830, 20.696175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.576324, 35.378494, 20.688572>,  <34.691753, 35.761269, 20.675901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576324, 35.378494, 20.688572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493626, 0.177042, 0.851463,
		-0.820402, 0.230073, -0.523457,
		-0.288572, -0.956934, 0.031676,
		34.489754, 35.091415, 20.698074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983025, 35.735168, 20.884586>,  <34.691753, 35.761269, 20.675901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983025, 35.735168, 20.884586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109913, 35.359848, 20.939657>,  <34.186047, 35.134655, 20.972700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109913, 35.359848, 20.939657>,  <33.983025, 35.735168, 20.884586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109913, 35.359848, 20.939657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426456, -0.011470, 0.904435,
		-0.847056, -0.345623, -0.403784,
		0.317225, -0.938303, 0.137677,
		34.205082, 35.078358, 20.980961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389061, 35.308151, 21.339464>,  <33.983025, 35.735168, 20.884586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389061, 35.308151, 21.339464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732887, 35.105968, 21.369553>,  <33.939182, 34.984657, 21.387606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732887, 35.105968, 21.369553>,  <33.389061, 35.308151, 21.339464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732887, 35.105968, 21.369553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154220, -0.116243, 0.981175,
		-0.487197, -0.854986, -0.177870,
		0.859567, -0.505456, 0.075222,
		33.990757, 34.954330, 21.392120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204872, 34.750340, 21.796240>,  <33.389061, 35.308151, 21.339464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204872, 34.750340, 21.796240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603825, 34.779209, 21.797827>,  <33.843197, 34.796532, 21.798779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603825, 34.779209, 21.797827>,  <33.204872, 34.750340, 21.796240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603825, 34.779209, 21.797827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013670, -0.242202, 0.970129,
		0.070982, -0.967537, -0.242556,
		0.997384, 0.072177, 0.003966,
		33.903038, 34.800861, 21.799017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.695461, 34.281483, 17.076492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052761, 34.184425, 17.227875>,  <37.267139, 34.126190, 17.318705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052761, 34.184425, 17.227875>,  <36.695461, 34.281483, 17.076492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052761, 34.184425, 17.227875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185794, 0.567334, 0.802254,
		-0.409373, -0.786929, 0.461690,
		0.893249, -0.242642, 0.378458,
		37.320736, 34.111633, 17.341412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568527, 34.332966, 17.852592>,  <36.695461, 34.281483, 17.076492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568527, 34.332966, 17.852592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963562, 34.358143, 17.795023>,  <37.200581, 34.373249, 17.760481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963562, 34.358143, 17.795023>,  <36.568527, 34.332966, 17.852592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963562, 34.358143, 17.795023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064600, 0.672408, 0.737356,
		0.143188, -0.737499, 0.659994,
		0.987585, 0.062945, -0.143923,
		37.259838, 34.377026, 17.751846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926476, 34.322277, 18.537243>,  <36.568527, 34.332966, 17.852592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926476, 34.322277, 18.537243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207104, 34.488293, 18.305540>,  <37.375481, 34.587902, 18.166519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207104, 34.488293, 18.305540>,  <36.926476, 34.322277, 18.537243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207104, 34.488293, 18.305540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038502, 0.789617, 0.612391,
		0.711554, -0.451942, 0.537996,
		0.701576, 0.415036, -0.579256,
		37.417576, 34.612804, 18.131763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449692, 34.369987, 19.000874>,  <36.926476, 34.322277, 18.537243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449692, 34.369987, 19.000874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.469242, 34.644405, 18.710508>,  <37.480972, 34.809055, 18.536289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.469242, 34.644405, 18.710508>,  <37.449692, 34.369987, 19.000874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469242, 34.644405, 18.710508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147084, 0.713917, 0.684609,
		0.987916, -0.140229, -0.066016,
		0.048872, 0.686045, -0.725915,
		37.483902, 34.850220, 18.492733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854900, 34.761044, 19.258949>,  <37.449692, 34.369987, 19.000874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854900, 34.761044, 19.258949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.728443, 34.986462, 18.953671>,  <37.652569, 35.121712, 18.770504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.728443, 34.986462, 18.953671>,  <37.854900, 34.761044, 19.258949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728443, 34.986462, 18.953671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186819, 0.825683, 0.532303,
		0.930136, 0.025704, -0.366315,
		-0.316142, 0.563549, -0.763195,
		37.633602, 35.155525, 18.724712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312950, 35.264557, 19.228237>,  <37.854900, 34.761044, 19.258949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312950, 35.264557, 19.228237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.993763, 35.421700, 19.045408>,  <37.802250, 35.515984, 18.935711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.993763, 35.421700, 19.045408>,  <38.312950, 35.264557, 19.228237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993763, 35.421700, 19.045408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085462, 0.824463, 0.559426,
		0.596612, 0.407341, -0.691468,
		-0.797966, 0.392854, -0.457072,
		37.754372, 35.539555, 18.908287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464920, 35.991947, 19.023256>,  <38.312950, 35.264557, 19.228237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464920, 35.991947, 19.023256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066319, 35.963169, 19.006256>,  <37.827156, 35.945900, 18.996056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066319, 35.963169, 19.006256>,  <38.464920, 35.991947, 19.023256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066319, 35.963169, 19.006256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083565, 0.858971, 0.505160,
		0.000161, 0.506945, -0.861979,
		-0.996502, -0.071950, -0.042501,
		37.767368, 35.941586, 18.993505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307541, 36.653942, 18.815002>,  <38.464920, 35.991947, 19.023256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307541, 36.653942, 18.815002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.988968, 36.521687, 19.017538>,  <37.797825, 36.442333, 19.139059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.988968, 36.521687, 19.017538>,  <38.307541, 36.653942, 18.815002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988968, 36.521687, 19.017538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131508, 0.722565, 0.678679,
		-0.590259, 0.607108, -0.531991,
		-0.796429, -0.330635, 0.506340,
		37.750038, 36.422497, 19.169439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980247, 37.340527, 19.043531>,  <38.307541, 36.653942, 18.815002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980247, 37.340527, 19.043531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.849754, 37.053173, 19.289297>,  <37.771458, 36.880760, 19.436756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.849754, 37.053173, 19.289297>,  <37.980247, 37.340527, 19.043531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849754, 37.053173, 19.289297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128861, 0.677702, 0.723957,
		-0.936466, 0.157003, -0.313659,
		-0.326231, -0.718380, 0.614413,
		37.751884, 36.837658, 19.473621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511616, 37.734779, 19.407902>,  <37.980247, 37.340527, 19.043531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511616, 37.734779, 19.407902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564194, 37.408539, 19.633297>,  <37.595741, 37.212795, 19.768534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564194, 37.408539, 19.633297>,  <37.511616, 37.734779, 19.407902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564194, 37.408539, 19.633297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194240, 0.536210, 0.821432,
		-0.972108, -0.217421, -0.087942,
		0.131441, -0.815602, 0.563486,
		37.603626, 37.163857, 19.802343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013302, 37.816162, 19.904259>,  <37.511616, 37.734779, 19.407902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013302, 37.816162, 19.904259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.274284, 37.549938, 20.049219>,  <37.430874, 37.390205, 20.136196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.274284, 37.549938, 20.049219>,  <37.013302, 37.816162, 19.904259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274284, 37.549938, 20.049219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167035, 0.340150, 0.925417,
		-0.739193, -0.664324, 0.110760,
		0.652452, -0.665561, 0.362402,
		37.470020, 37.350269, 20.157940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754429, 37.535126, 20.525208>,  <37.013302, 37.816162, 19.904259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754429, 37.535126, 20.525208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.151466, 37.491623, 20.546858>,  <37.389690, 37.465519, 20.559849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.151466, 37.491623, 20.546858>,  <36.754429, 37.535126, 20.525208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151466, 37.491623, 20.546858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024967, 0.253419, 0.967034,
		-0.118892, -0.961223, 0.248826,
		0.992593, -0.108760, 0.054128,
		37.449245, 37.458996, 20.563097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985325, 37.415871, 20.357525>,  <36.754429, 37.535126, 20.525208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985325, 37.415871, 20.357525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787094, 37.762302, 20.383795>,  <35.668156, 37.970161, 20.399557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787094, 37.762302, 20.383795>,  <35.985325, 37.415871, 20.357525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787094, 37.762302, 20.383795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043297, 0.100152, -0.994030,
		-0.867485, -0.489773, -0.087131,
		-0.495575, 0.866079, 0.065675,
		35.638420, 38.022125, 20.403498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443295, 37.359383, 19.953478>,  <35.985325, 37.415871, 20.357525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443295, 37.359383, 19.953478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.490913, 37.756489, 19.959742>,  <35.519485, 37.994751, 19.963501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.490913, 37.756489, 19.959742>,  <35.443295, 37.359383, 19.953478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490913, 37.756489, 19.959742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092745, 0.004586, -0.995679,
		-0.988547, 0.119986, -0.091528,
		0.119048, 0.992765, 0.015661,
		35.526627, 38.054317, 19.964439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995869, 37.719101, 19.418375>,  <35.443295, 37.359383, 19.953478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995869, 37.719101, 19.418375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.251556, 38.012932, 19.509413>,  <35.404968, 38.189232, 19.564035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.251556, 38.012932, 19.509413>,  <34.995869, 37.719101, 19.418375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251556, 38.012932, 19.509413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073009, 0.236646, -0.968849,
		-0.765552, 0.635921, 0.097638,
		0.639217, 0.734576, 0.227593,
		35.443321, 38.233303, 19.577690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761780, 38.322277, 18.932348>,  <34.995869, 37.719101, 19.418375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761780, 38.322277, 18.932348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132652, 38.398750, 19.061213>,  <35.355175, 38.444633, 19.138531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132652, 38.398750, 19.061213>,  <34.761780, 38.322277, 18.932348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132652, 38.398750, 19.061213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243756, 0.345140, -0.906345,
		-0.284472, 0.918872, 0.273404,
		0.927178, 0.191186, 0.322163,
		35.410805, 38.456104, 19.157862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987190, 39.032848, 18.665049>,  <34.761780, 38.322277, 18.932348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987190, 39.032848, 18.665049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.299763, 38.791241, 18.727682>,  <35.487309, 38.646275, 18.765263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.299763, 38.791241, 18.727682>,  <34.987190, 39.032848, 18.665049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299763, 38.791241, 18.727682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307338, 0.154177, -0.939028,
		0.543049, 0.781914, 0.306117,
		0.781436, -0.604019, 0.156586,
		35.534195, 38.610035, 18.774658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318371, 39.017239, 18.115894>,  <34.987190, 39.032848, 18.665049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318371, 39.017239, 18.115894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.559425, 38.721699, 18.236519>,  <35.704056, 38.544376, 18.308893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.559425, 38.721699, 18.236519>,  <35.318371, 39.017239, 18.115894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559425, 38.721699, 18.236519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314025, -0.127842, -0.940768,
		0.733635, 0.661636, 0.154975,
		0.602634, -0.738847, 0.301559,
		35.740215, 38.500046, 18.326986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949932, 38.999573, 17.684965>,  <35.318371, 39.017239, 18.115894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949932, 38.999573, 17.684965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.008873, 38.646263, 17.863007>,  <36.044235, 38.434277, 17.969831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.008873, 38.646263, 17.863007>,  <35.949932, 38.999573, 17.684965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008873, 38.646263, 17.863007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370809, -0.367863, -0.852747,
		0.916945, 0.290701, 0.273321,
		0.147350, -0.883272, 0.445105,
		36.053078, 38.381283, 17.996538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684864, 38.852245, 17.657497>,  <35.949932, 38.999573, 17.684965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684864, 38.852245, 17.657497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.459194, 38.522854, 17.681461>,  <36.323792, 38.325218, 17.695839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.459194, 38.522854, 17.681461>,  <36.684864, 38.852245, 17.657497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459194, 38.522854, 17.681461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377478, -0.321786, -0.868311,
		0.734313, -0.467266, 0.492389,
		-0.564176, -0.823478, 0.059909,
		36.289940, 38.275810, 17.699434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153904, 38.363201, 17.469852>,  <36.684864, 38.852245, 17.657497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153904, 38.363201, 17.469852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800331, 38.181396, 17.425884>,  <36.588188, 38.072315, 17.399504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800331, 38.181396, 17.425884>,  <37.153904, 38.363201, 17.469852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800331, 38.181396, 17.425884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306992, -0.386736, -0.869593,
		0.352726, -0.802408, 0.481379,
		-0.883935, -0.454507, -0.109921,
		36.535152, 38.045044, 17.392908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365459, 37.635441, 17.189095>,  <37.153904, 38.363201, 17.469852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365459, 37.635441, 17.189095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976620, 37.682907, 17.108154>,  <36.743317, 37.711388, 17.059591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976620, 37.682907, 17.108154>,  <37.365459, 37.635441, 17.189095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976620, 37.682907, 17.108154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158316, -0.304650, -0.939215,
		-0.173097, -0.945044, 0.277363,
		-0.972098, 0.118664, -0.202349,
		36.684990, 37.718506, 17.047449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056568, 36.960796, 16.944244>,  <37.365459, 37.635441, 17.189095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056568, 36.960796, 16.944244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806355, 37.251656, 16.831139>,  <36.656227, 37.426170, 16.763275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806355, 37.251656, 16.831139>,  <37.056568, 36.960796, 16.944244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806355, 37.251656, 16.831139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083639, -0.297841, -0.950945,
		-0.775700, -0.618499, 0.125492,
		-0.625535, 0.727152, -0.282765,
		36.618694, 37.469803, 16.746309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499214, 36.627899, 16.738092>,  <37.056568, 36.960796, 16.944244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499214, 36.627899, 16.738092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.505013, 36.975506, 16.540260>,  <36.508492, 37.184071, 16.421562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.505013, 36.975506, 16.540260>,  <36.499214, 36.627899, 16.738092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505013, 36.975506, 16.540260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090134, -0.491481, -0.866212,
		-0.995824, 0.057131, 0.071205,
		0.014492, 0.869012, -0.494578,
		36.509361, 37.236210, 16.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974163, 36.538692, 16.239325>,  <36.499214, 36.627899, 16.738092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974163, 36.538692, 16.239325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.181747, 36.861073, 16.125402>,  <36.306297, 37.054501, 16.057049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.181747, 36.861073, 16.125402>,  <35.974163, 36.538692, 16.239325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181747, 36.861073, 16.125402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020731, -0.321221, -0.946777,
		-0.854545, 0.497247, -0.149994,
		0.518964, 0.805954, -0.284806,
		36.337437, 37.102859, 16.039961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754158, 36.697239, 16.985186>,  <35.974163, 36.538692, 16.239325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754158, 36.697239, 16.985186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.545162, 36.363205, 16.916328>,  <35.419765, 36.162785, 16.875013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.545162, 36.363205, 16.916328>,  <35.754158, 36.697239, 16.985186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545162, 36.363205, 16.916328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004310, -0.199303, 0.979928,
		-0.852632, 0.512748, 0.100535,
		-0.522493, -0.835085, -0.172143,
		35.388412, 36.112679, 16.864685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228172, 36.726200, 17.513737>,  <35.754158, 36.697239, 16.985186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228172, 36.726200, 17.513737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.240463, 36.345341, 17.392101>,  <35.247837, 36.116825, 17.319120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.240463, 36.345341, 17.392101>,  <35.228172, 36.726200, 17.513737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240463, 36.345341, 17.392101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174767, -0.304663, 0.936289,
		-0.984130, 0.024374, -0.175766,
		0.030728, -0.952148, -0.304088,
		35.249683, 36.059696, 17.300875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640636, 36.349243, 17.747345>,  <35.228172, 36.726200, 17.513737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640636, 36.349243, 17.747345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.871399, 36.039742, 17.642666>,  <35.009857, 35.854042, 17.579859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.871399, 36.039742, 17.642666>,  <34.640636, 36.349243, 17.747345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871399, 36.039742, 17.642666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175367, -0.430250, 0.885512,
		-0.797760, -0.464968, -0.383906,
		0.576911, -0.773750, -0.261696,
		35.044472, 35.807617, 17.564157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210842, 35.826218, 17.837234>,  <34.640636, 36.349243, 17.747345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210842, 35.826218, 17.837234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.570896, 35.652370, 17.849020>,  <34.786926, 35.548061, 17.856092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.570896, 35.652370, 17.849020>,  <34.210842, 35.826218, 17.837234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570896, 35.652370, 17.849020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311791, -0.595550, 0.740342,
		-0.304218, -0.675593, -0.671584,
		0.900132, -0.434619, 0.029467,
		34.840935, 35.521984, 17.857861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114262, 35.043682, 17.967939>,  <34.210842, 35.826218, 17.837234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114262, 35.043682, 17.967939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492718, 35.132668, 18.062019>,  <34.719791, 35.186058, 18.118467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492718, 35.132668, 18.062019>,  <34.114262, 35.043682, 17.967939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492718, 35.132668, 18.062019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019436, -0.686158, 0.727193,
		0.323160, -0.692601, -0.644881,
		0.946145, 0.222466, 0.235200,
		34.776562, 35.199406, 18.132580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444889, 34.425846, 18.097132>,  <34.114262, 35.043682, 17.967939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444889, 34.425846, 18.097132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.689499, 34.677616, 18.288908>,  <34.836266, 34.828678, 18.403973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.689499, 34.677616, 18.288908>,  <34.444889, 34.425846, 18.097132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689499, 34.677616, 18.288908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092097, -0.545202, 0.833230,
		0.785847, -0.553697, -0.275437,
		0.611526, 0.629424, 0.479439,
		34.872955, 34.866444, 18.432739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778637, 34.031544, 18.711954>,  <34.444889, 34.425846, 18.097132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778637, 34.031544, 18.711954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.839874, 34.419071, 18.789871>,  <34.876617, 34.651588, 18.836622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.839874, 34.419071, 18.789871>,  <34.778637, 34.031544, 18.711954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839874, 34.419071, 18.789871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116312, -0.178080, 0.977118,
		0.981343, -0.172249, 0.085422,
		0.153095, 0.968823, 0.194792,
		34.885803, 34.709717, 18.848309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309441, 34.066925, 19.101248>,  <34.778637, 34.031544, 18.711954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309441, 34.066925, 19.101248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.090778, 34.395760, 19.164927>,  <34.959583, 34.593060, 19.203133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.090778, 34.395760, 19.164927>,  <35.309441, 34.066925, 19.101248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090778, 34.395760, 19.164927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048112, -0.158966, 0.986111,
		0.835976, 0.546719, 0.047347,
		-0.546653, 0.822087, 0.159196,
		34.926781, 34.642387, 19.212685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920635, 33.697033, 19.159897>,  <35.309441, 34.066925, 19.101248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920635, 33.697033, 19.159897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938446, 33.301964, 19.219913>,  <35.949135, 33.064922, 19.255924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938446, 33.301964, 19.219913>,  <35.920635, 33.697033, 19.159897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938446, 33.301964, 19.219913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010230, -0.149733, -0.988674,
		0.998956, 0.045560, 0.003436,
		0.044529, -0.987676, 0.150042,
		35.951805, 33.005661, 19.264927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508709, 33.523270, 18.870247>,  <35.920635, 33.697033, 19.159897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508709, 33.523270, 18.870247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.294640, 33.185654, 18.884014>,  <36.166199, 32.983086, 18.892275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.294640, 33.185654, 18.884014>,  <36.508709, 33.523270, 18.870247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294640, 33.185654, 18.884014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295669, -0.225329, -0.928335,
		0.791308, -0.486645, 0.370147,
		-0.535174, -0.844040, 0.034419,
		36.134087, 32.932442, 18.894341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870182, 33.069530, 18.520039>,  <36.508709, 33.523270, 18.870247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870182, 33.069530, 18.520039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.529598, 32.860268, 18.534594>,  <36.325249, 32.734711, 18.543327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.529598, 32.860268, 18.534594>,  <36.870182, 33.069530, 18.520039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529598, 32.860268, 18.534594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251887, -0.468843, -0.846604,
		0.459965, -0.711685, 0.530978,
		-0.851461, -0.523155, 0.036387,
		36.274158, 32.703320, 18.545509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059528, 32.329895, 18.265717>,  <36.870182, 33.069530, 18.520039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059528, 32.329895, 18.265717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.662766, 32.360477, 18.225159>,  <36.424709, 32.378826, 18.200825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.662766, 32.360477, 18.225159>,  <37.059528, 32.329895, 18.265717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662766, 32.360477, 18.225159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043550, -0.545213, -0.837166,
		-0.119291, -0.834804, 0.537469,
		-0.991904, 0.076460, -0.101395,
		36.365196, 32.383415, 18.194740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807850, 31.632479, 18.089737>,  <37.059528, 32.329895, 18.265717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807850, 31.632479, 18.089737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.540672, 31.899570, 17.958294>,  <36.380363, 32.059826, 17.879429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.540672, 31.899570, 17.958294>,  <36.807850, 31.632479, 18.089737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540672, 31.899570, 17.958294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113096, -0.527497, -0.841995,
		-0.735565, -0.525244, 0.427858,
		-0.667948, 0.667731, -0.328606,
		36.340286, 32.099888, 17.859713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125584, 31.366299, 18.006971>,  <36.807850, 31.632479, 18.089737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125584, 31.366299, 18.006971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.170685, 31.668694, 17.749050>,  <36.197746, 31.850130, 17.594297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.170685, 31.668694, 17.749050>,  <36.125584, 31.366299, 18.006971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170685, 31.668694, 17.749050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186607, -0.621283, -0.761042,
		-0.975943, 0.206137, 0.071020,
		0.112755, 0.755986, -0.644804,
		36.204510, 31.895489, 17.555609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517422, 31.329306, 17.488791>,  <36.125584, 31.366299, 18.006971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517422, 31.329306, 17.488791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.775055, 31.582504, 17.316990>,  <35.929634, 31.734423, 17.213909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.775055, 31.582504, 17.316990>,  <35.517422, 31.329306, 17.488791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775055, 31.582504, 17.316990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194879, -0.407166, -0.892322,
		-0.739715, 0.658431, -0.138891,
		0.644084, 0.632997, -0.429501,
		35.968281, 31.772404, 17.188139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275837, 31.196682, 16.756979>,  <35.517422, 31.329306, 17.488791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275837, 31.196682, 16.756979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598557, 31.432261, 16.738167>,  <35.792191, 31.573608, 16.726879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598557, 31.432261, 16.738167>,  <35.275837, 31.196682, 16.756979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598557, 31.432261, 16.738167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003769, -0.084728, -0.996397,
		-0.590810, 0.803718, -0.070578,
		0.806802, 0.588947, -0.047029,
		35.840595, 31.608944, 16.724058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192947, 31.746954, 16.195652>,  <35.275837, 31.196682, 16.756979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192947, 31.746954, 16.195652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.584225, 31.684080, 16.249966>,  <35.818989, 31.646357, 16.282555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.584225, 31.684080, 16.249966>,  <35.192947, 31.746954, 16.195652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584225, 31.684080, 16.249966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122747, -0.089915, -0.988357,
		0.167563, 0.983468, -0.068661,
		0.978190, -0.157184, 0.135784,
		35.877682, 31.636925, 16.290701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.294498, 35.800758, 31.910400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632645, 35.611576, 32.009731>,  <35.835533, 35.498066, 32.069328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632645, 35.611576, 32.009731>,  <35.294498, 35.800758, 31.910400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632645, 35.611576, 32.009731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141503, -0.249996, -0.957851,
		0.515104, 0.844874, -0.144413,
		0.845367, -0.472958, 0.248326,
		35.886253, 35.469688, 32.084229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718967, 35.879417, 31.301338>,  <35.294498, 35.800758, 31.910400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718967, 35.879417, 31.301338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890491, 35.567165, 31.483212>,  <35.993404, 35.379814, 31.592335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890491, 35.567165, 31.483212>,  <35.718967, 35.879417, 31.301338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890491, 35.567165, 31.483212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273521, -0.367494, -0.888895,
		0.860993, 0.505532, 0.055934,
		0.428809, -0.780631, 0.454684,
		36.019135, 35.332977, 31.619617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338070, 35.753151, 30.890488>,  <35.718967, 35.879417, 31.301338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338070, 35.753151, 30.890488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.248962, 35.423943, 31.099491>,  <36.195496, 35.226418, 31.224894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.248962, 35.423943, 31.099491>,  <36.338070, 35.753151, 30.890488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248962, 35.423943, 31.099491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262849, -0.566836, -0.780774,
		0.938767, -0.036593, 0.342604,
		-0.222771, -0.823018, 0.522508,
		36.182133, 35.177036, 31.256243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934830, 35.250111, 30.714767>,  <36.338070, 35.753151, 30.890488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934830, 35.250111, 30.714767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610928, 35.042660, 30.824551>,  <36.416588, 34.918190, 30.890421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610928, 35.042660, 30.824551>,  <36.934830, 35.250111, 30.714767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610928, 35.042660, 30.824551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206477, -0.689680, -0.694052,
		0.549242, -0.505341, 0.665555,
		-0.809753, -0.518625, 0.274461,
		36.368000, 34.887074, 30.906889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072525, 34.529522, 30.739141>,  <36.934830, 35.250111, 30.714767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072525, 34.529522, 30.739141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672916, 34.545288, 30.731167>,  <36.433151, 34.554749, 30.726381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672916, 34.545288, 30.731167>,  <37.072525, 34.529522, 30.739141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672916, 34.545288, 30.731167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010102, -0.643212, -0.765622,
		-0.043003, -0.764673, 0.642982,
		-0.999024, 0.039419, -0.019936,
		36.373211, 34.557114, 30.725185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848122, 33.877304, 30.517473>,  <37.072525, 34.529522, 30.739141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848122, 33.877304, 30.517473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512417, 34.091122, 30.477659>,  <36.310993, 34.219414, 30.453772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512417, 34.091122, 30.477659>,  <36.848122, 33.877304, 30.517473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512417, 34.091122, 30.477659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214936, -0.494299, -0.842301,
		-0.499479, -0.685495, 0.529734,
		-0.839240, 0.534570, -0.099554,
		36.260639, 34.251484, 30.447798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331089, 33.402691, 30.199371>,  <36.848122, 33.877304, 30.517473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331089, 33.402691, 30.199371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189079, 33.770489, 30.131865>,  <36.103874, 33.991169, 30.091360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189079, 33.770489, 30.131865>,  <36.331089, 33.402691, 30.199371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189079, 33.770489, 30.131865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392998, -0.310597, -0.865495,
		-0.848240, -0.240946, 0.471630,
		-0.355024, 0.919497, -0.168769,
		36.082573, 34.046337, 30.081234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657875, 33.359440, 29.962669>,  <36.331089, 33.402691, 30.199371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657875, 33.359440, 29.962669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776337, 33.714386, 29.821323>,  <35.847412, 33.927353, 29.736515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776337, 33.714386, 29.821323>,  <35.657875, 33.359440, 29.962669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776337, 33.714386, 29.821323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376920, -0.231360, -0.896886,
		-0.877624, 0.398808, 0.265949,
		0.296155, 0.887370, -0.353366,
		35.865185, 33.980598, 29.715313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048748, 33.573875, 29.712650>,  <35.657875, 33.359440, 29.962669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048748, 33.573875, 29.712650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360081, 33.764088, 29.548666>,  <35.546883, 33.878216, 29.450275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360081, 33.764088, 29.548666>,  <35.048748, 33.573875, 29.712650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360081, 33.764088, 29.548666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418101, -0.094557, -0.903466,
		-0.468387, 0.874605, 0.125221,
		0.778335, 0.475527, -0.409962,
		35.593582, 33.906746, 29.425678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755814, 33.969749, 29.074289>,  <35.048748, 33.573875, 29.712650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755814, 33.969749, 29.074289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154415, 33.964642, 29.041254>,  <35.393574, 33.961575, 29.021433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154415, 33.964642, 29.041254>,  <34.755814, 33.969749, 29.074289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154415, 33.964642, 29.041254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082412, 0.013874, -0.996502,
		0.013874, 0.999822, 0.012773,
		0.996502, -0.012773, -0.082590,
		35.453365, 33.960812, 29.016478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894176, 34.351597, 28.529984>,  <34.755814, 33.969749, 29.074289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894176, 34.351597, 28.529984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247868, 34.164780, 28.531687>,  <35.460083, 34.052689, 28.532709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247868, 34.164780, 28.531687>,  <34.894176, 34.351597, 28.529984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247868, 34.164780, 28.531687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011612, -0.031095, -0.999449,
		0.466916, 0.883689, -0.032918,
		0.884225, -0.467041, 0.004257,
		35.513134, 34.024666, 28.532965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245003, 34.581493, 27.905836>,  <34.894176, 34.351597, 28.529984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245003, 34.581493, 27.905836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418552, 34.230816, 27.988947>,  <35.522682, 34.020409, 28.038813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418552, 34.230816, 27.988947>,  <35.245003, 34.581493, 27.905836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418552, 34.230816, 27.988947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070644, -0.263004, -0.962205,
		0.898201, 0.402796, -0.176043,
		0.433872, -0.876689, 0.207775,
		35.548714, 33.967808, 28.051279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091564, 35.247398, 27.887066>,  <35.245003, 34.581493, 27.905836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091564, 35.247398, 27.887066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733437, 35.388931, 27.778845>,  <34.518559, 35.473850, 27.713911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733437, 35.388931, 27.778845>,  <35.091564, 35.247398, 27.887066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733437, 35.388931, 27.778845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010697, 0.590161, 0.807215,
		0.445290, 0.725612, -0.524600,
		-0.895323, 0.353833, -0.270555,
		34.464840, 35.495083, 27.697678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134106, 35.959534, 28.200920>,  <35.091564, 35.247398, 27.887066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134106, 35.959534, 28.200920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761673, 35.829044, 28.135612>,  <34.538212, 35.750751, 28.096428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761673, 35.829044, 28.135612>,  <35.134106, 35.959534, 28.200920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761673, 35.829044, 28.135612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300354, 0.431515, 0.850636,
		-0.207047, 0.841053, -0.499761,
		-0.931085, -0.326227, -0.163270,
		34.482349, 35.731174, 28.086632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722408, 36.546528, 28.307743>,  <35.134106, 35.959534, 28.200920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722408, 36.546528, 28.307743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470993, 36.241932, 28.371082>,  <34.320145, 36.059174, 28.409086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470993, 36.241932, 28.371082>,  <34.722408, 36.546528, 28.307743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470993, 36.241932, 28.371082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392222, 0.486125, 0.780926,
		-0.671645, 0.428732, -0.604220,
		-0.628534, -0.761493, 0.158346,
		34.282433, 36.013485, 28.418587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063992, 36.857582, 28.372738>,  <34.722408, 36.546528, 28.307743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063992, 36.857582, 28.372738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040035, 36.499245, 28.548862>,  <34.025661, 36.284241, 28.654537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040035, 36.499245, 28.548862>,  <34.063992, 36.857582, 28.372738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040035, 36.499245, 28.548862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525752, 0.403270, 0.748971,
		-0.848527, -0.186641, -0.495143,
		-0.059888, -0.895845, 0.440312,
		34.022068, 36.230492, 28.680956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372532, 36.742855, 28.528709>,  <34.063992, 36.857582, 28.372738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372532, 36.742855, 28.528709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590889, 36.522648, 28.781355>,  <33.721905, 36.390526, 28.932941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590889, 36.522648, 28.781355>,  <33.372532, 36.742855, 28.528709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590889, 36.522648, 28.781355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450811, 0.442435, 0.775255,
		-0.706238, -0.707944, -0.006657,
		0.545891, -0.550515, 0.631614,
		33.754658, 36.357494, 28.970839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919804, 36.474571, 28.985861>,  <33.372532, 36.742855, 28.528709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919804, 36.474571, 28.985861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267033, 36.410362, 29.173771>,  <33.475368, 36.371838, 29.286516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267033, 36.410362, 29.173771>,  <32.919804, 36.474571, 28.985861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267033, 36.410362, 29.173771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359696, 0.448826, 0.818031,
		-0.342160, -0.879083, 0.331872,
		0.868070, -0.160524, 0.469773,
		33.527454, 36.362206, 29.314703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768559, 36.394409, 29.678041>,  <32.919804, 36.474571, 28.985861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768559, 36.394409, 29.678041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160164, 36.471832, 29.652502>,  <33.395126, 36.518288, 29.637178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160164, 36.471832, 29.652502>,  <32.768559, 36.394409, 29.678041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160164, 36.471832, 29.652502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069316, 0.610790, 0.788752,
		0.191668, -0.767770, 0.611386,
		0.979009, 0.193558, -0.063850,
		33.453865, 36.529900, 29.633347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023018, 36.237778, 30.276583>,  <32.768559, 36.394409, 29.678041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023018, 36.237778, 30.276583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275608, 36.512516, 30.132647>,  <33.427162, 36.677357, 30.046286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275608, 36.512516, 30.132647>,  <33.023018, 36.237778, 30.276583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275608, 36.512516, 30.132647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153126, 0.565396, 0.810481,
		0.760126, -0.456698, 0.462207,
		0.631476, 0.686843, -0.359840,
		33.465050, 36.718571, 30.024694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219139, 36.595337, 30.886276>,  <33.023018, 36.237778, 30.276583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219139, 36.595337, 30.886276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358894, 36.833172, 30.596615>,  <33.442745, 36.975872, 30.422819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358894, 36.833172, 30.596615>,  <33.219139, 36.595337, 30.886276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358894, 36.833172, 30.596615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047166, 0.783038, 0.620183,
		0.935792, -0.182527, 0.301625,
		0.349384, 0.594589, -0.724151,
		33.463711, 37.011547, 30.379370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646843, 36.989574, 31.262348>,  <33.219139, 36.595337, 30.886276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646843, 36.989574, 31.262348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567242, 37.170101, 30.914391>,  <33.519482, 37.278416, 30.705616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567242, 37.170101, 30.914391>,  <33.646843, 36.989574, 31.262348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567242, 37.170101, 30.914391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181466, 0.855327, 0.485269,
		0.963051, 0.254428, -0.088318,
		-0.199007, 0.451312, -0.869893,
		33.507538, 37.305496, 30.653423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021263, 37.697815, 31.222616>,  <33.646843, 36.989574, 31.262348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021263, 37.697815, 31.222616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696827, 37.709793, 30.988956>,  <33.502163, 37.716980, 30.848761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696827, 37.709793, 30.988956>,  <34.021263, 37.697815, 31.222616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696827, 37.709793, 30.988956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359766, 0.761900, 0.538587,
		0.461190, 0.647002, -0.607201,
		-0.811093, 0.029941, -0.584150,
		33.453499, 37.718777, 30.813711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872189, 38.470192, 30.958595>,  <34.021263, 37.697815, 31.222616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872189, 38.470192, 30.958595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520054, 38.296013, 30.883341>,  <33.308773, 38.191505, 30.838188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520054, 38.296013, 30.883341>,  <33.872189, 38.470192, 30.958595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520054, 38.296013, 30.883341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473493, 0.830482, 0.293435,
		0.028470, 0.347403, -0.937283,
		-0.880337, -0.435443, -0.188137,
		33.255951, 38.165379, 30.826900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438797, 38.987888, 30.733261>,  <33.872189, 38.470192, 30.958595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438797, 38.987888, 30.733261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161629, 38.712872, 30.820108>,  <32.995327, 38.547863, 30.872217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161629, 38.712872, 30.820108>,  <33.438797, 38.987888, 30.733261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161629, 38.712872, 30.820108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676878, 0.724052, 0.132608,
		-0.248378, -0.055075, -0.967096,
		-0.692925, -0.687543, 0.217118,
		32.953751, 38.506607, 30.885244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902306, 39.203323, 30.369255>,  <33.438797, 38.987888, 30.733261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902306, 39.203323, 30.369255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750202, 38.956795, 30.645096>,  <32.658939, 38.808876, 30.810600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750202, 38.956795, 30.645096>,  <32.902306, 39.203323, 30.369255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750202, 38.956795, 30.645096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632790, 0.717149, 0.292017,
		-0.674524, -0.325330, -0.662705,
		-0.380256, -0.616325, 0.689600,
		32.636124, 38.771896, 30.851976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841305, 39.544823, 31.040092>,  <32.902306, 39.203323, 30.369255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841305, 39.544823, 31.040092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898857, 39.667233, 30.663658>,  <32.933388, 39.740681, 30.437798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898857, 39.667233, 30.663658>,  <32.841305, 39.544823, 31.040092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898857, 39.667233, 30.663658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982610, -0.156978, 0.099180,
		-0.117378, -0.938991, -0.323293,
		0.143879, 0.306029, -0.941087,
		32.942020, 39.759041, 30.381332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486057, 39.937401, 31.151140>,  <32.841305, 39.544823, 31.040092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486057, 39.937401, 31.151140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848507, 39.801414, 31.050451>,  <34.065975, 39.719822, 30.990038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848507, 39.801414, 31.050451>,  <33.486057, 39.937401, 31.151140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848507, 39.801414, 31.050451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245938, 0.060772, -0.967378,
		0.344171, 0.938473, -0.028543,
		0.906124, -0.339963, -0.251722,
		34.120346, 39.699425, 30.974934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858376, 40.442795, 30.666574>,  <33.486057, 39.937401, 31.151140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858376, 40.442795, 30.666574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964417, 40.058342, 30.635740>,  <34.028042, 39.827671, 30.617241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964417, 40.058342, 30.635740>,  <33.858376, 40.442795, 30.666574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964417, 40.058342, 30.635740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001637, 0.079496, -0.996834,
		0.964219, 0.264387, 0.019501,
		0.265101, -0.961134, -0.077084,
		34.043945, 39.770000, 30.612616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299110, 40.517849, 30.224516>,  <33.858376, 40.442795, 30.666574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299110, 40.517849, 30.224516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165726, 40.141148, 30.241962>,  <34.085693, 39.915127, 30.252430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165726, 40.141148, 30.241962>,  <34.299110, 40.517849, 30.224516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165726, 40.141148, 30.241962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042963, -0.031035, -0.998594,
		0.941783, -0.334869, -0.030111,
		-0.333464, -0.941753, 0.043615,
		34.065685, 39.858620, 30.255047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812080, 40.091854, 29.999880>,  <34.299110, 40.517849, 30.224516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812080, 40.091854, 29.999880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487827, 39.863377, 29.948330>,  <34.293274, 39.726288, 29.917400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487827, 39.863377, 29.948330>,  <34.812080, 40.091854, 29.999880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487827, 39.863377, 29.948330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209601, -0.077547, -0.974707,
		0.546757, -0.817141, 0.182586,
		-0.810632, -0.571198, -0.128875,
		34.244637, 39.692017, 29.909668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008175, 39.638000, 29.489655>,  <34.812080, 40.091854, 29.999880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008175, 39.638000, 29.489655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617336, 39.553070, 29.495312>,  <34.382832, 39.502113, 29.498705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617336, 39.553070, 29.495312>,  <35.008175, 39.638000, 29.489655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617336, 39.553070, 29.495312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062437, -0.349592, -0.934819,
		0.203427, -0.912526, 0.354843,
		-0.977097, -0.212323, 0.014141,
		34.324207, 39.489372, 29.499554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847404, 38.950005, 29.104712>,  <35.008175, 39.638000, 29.489655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847404, 38.950005, 29.104712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494625, 39.138462, 29.110327>,  <34.282959, 39.251537, 29.113695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494625, 39.138462, 29.110327>,  <34.847404, 38.950005, 29.104712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494625, 39.138462, 29.110327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194864, -0.337334, -0.920996,
		-0.429185, -0.815004, 0.389319,
		-0.881946, 0.471142, 0.014037,
		34.230042, 39.279804, 29.114538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441532, 38.557262, 28.612484>,  <34.847404, 38.950005, 29.104712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441532, 38.557262, 28.612484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206367, 38.879501, 28.641829>,  <34.065269, 39.072845, 28.659435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206367, 38.879501, 28.641829>,  <34.441532, 38.557262, 28.612484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206367, 38.879501, 28.641829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421531, -0.227691, -0.877763,
		-0.690416, -0.546970, 0.473445,
		-0.587909, 0.805593, 0.073363,
		34.029995, 39.121178, 28.663837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726654, 38.391117, 28.335999>,  <34.441532, 38.557262, 28.612484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726654, 38.391117, 28.335999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714920, 38.789749, 28.305086>,  <33.707878, 39.028927, 28.286539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714920, 38.789749, 28.305086>,  <33.726654, 38.391117, 28.335999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714920, 38.789749, 28.305086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246956, -0.082146, -0.965538,
		-0.968582, -0.009239, 0.248521,
		-0.029335, 0.996578, -0.077283,
		33.706120, 39.088722, 28.281900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048443, 38.609474, 28.034576>,  <33.726654, 38.391117, 28.335999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048443, 38.609474, 28.034576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331467, 38.879192, 27.950024>,  <33.501282, 39.041023, 27.899292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331467, 38.879192, 27.950024>,  <33.048443, 38.609474, 28.034576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331467, 38.879192, 27.950024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059543, -0.241181, -0.968652,
		-0.704137, 0.697969, -0.130502,
		0.707564, 0.674293, -0.211384,
		33.543736, 39.081482, 27.886608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808479, 38.953640, 27.408733>,  <33.048443, 38.609474, 28.034576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808479, 38.953640, 27.408733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195309, 39.047169, 27.448929>,  <33.427406, 39.103287, 27.473045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195309, 39.047169, 27.448929>,  <32.808479, 38.953640, 27.408733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195309, 39.047169, 27.448929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109170, -0.024457, -0.993722,
		-0.229900, 0.971971, -0.049179,
		0.967072, 0.233825, 0.100487,
		33.485432, 39.117317, 27.479074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986961, 39.607140, 26.982615>,  <32.808479, 38.953640, 27.408733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986961, 39.607140, 26.982615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332123, 39.410976, 27.031437>,  <33.539219, 39.293278, 27.060730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332123, 39.410976, 27.031437>,  <32.986961, 39.607140, 26.982615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332123, 39.410976, 27.031437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088878, -0.090493, -0.991923,
		0.497496, 0.866780, -0.034500,
		0.862901, -0.490412, 0.122058,
		33.590992, 39.263851, 27.068054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369114, 39.878822, 26.494392>,  <32.986961, 39.607140, 26.982615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369114, 39.878822, 26.494392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552246, 39.539581, 26.601057>,  <33.662125, 39.336037, 26.665056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552246, 39.539581, 26.601057>,  <33.369114, 39.878822, 26.494392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552246, 39.539581, 26.601057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252868, -0.163331, -0.953615,
		0.852320, 0.504025, 0.139681,
		0.457831, -0.848105, 0.266662,
		33.689594, 39.285149, 26.681055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030941, 39.965816, 26.293755>,  <33.369114, 39.878822, 26.494392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030941, 39.965816, 26.293755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948090, 39.574917, 26.312019>,  <33.898380, 39.340378, 26.322977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948090, 39.574917, 26.312019>,  <34.030941, 39.965816, 26.293755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948090, 39.574917, 26.312019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328451, -0.113428, -0.937685,
		0.921530, -0.179224, 0.344472,
		-0.207128, -0.977247, 0.045661,
		33.885952, 39.281742, 26.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608082, 39.729538, 26.011522>,  <34.030941, 39.965816, 26.293755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608082, 39.729538, 26.011522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340031, 39.433964, 25.983480>,  <34.179199, 39.256618, 25.966656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340031, 39.433964, 25.983480>,  <34.608082, 39.729538, 26.011522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340031, 39.433964, 25.983480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329860, -0.211869, -0.919948,
		0.664926, -0.639603, 0.385722,
		-0.670124, -0.738931, -0.070103,
		34.138992, 39.212284, 25.962450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985687, 39.236633, 25.733652>,  <34.608082, 39.729538, 26.011522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985687, 39.236633, 25.733652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609283, 39.140049, 25.638832>,  <34.383442, 39.082100, 25.581940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609283, 39.140049, 25.638832>,  <34.985687, 39.236633, 25.733652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609283, 39.140049, 25.638832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289520, -0.211956, -0.933409,
		0.175138, -0.946980, 0.269361,
		-0.941013, -0.241461, -0.237048,
		34.326981, 39.067612, 25.567719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979652, 38.610466, 25.404142>,  <34.985687, 39.236633, 25.733652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979652, 38.610466, 25.404142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614086, 38.726082, 25.290152>,  <34.394745, 38.795452, 25.221758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614086, 38.726082, 25.290152>,  <34.979652, 38.610466, 25.404142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614086, 38.726082, 25.290152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203556, -0.281043, -0.937859,
		-0.351172, -0.915133, 0.198013,
		-0.913916, 0.289043, -0.284976,
		34.339912, 38.812794, 25.204659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820557, 38.111874, 25.000448>,  <34.979652, 38.610466, 25.404142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820557, 38.111874, 25.000448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560879, 38.392258, 24.882332>,  <34.405071, 38.560490, 24.811462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560879, 38.392258, 24.882332>,  <34.820557, 38.111874, 25.000448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560879, 38.392258, 24.882332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214489, -0.203757, -0.955237,
		-0.729751, -0.683474, -0.018070,
		-0.649198, 0.700961, -0.295289,
		34.366119, 38.602547, 24.793745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403797, 37.748718, 24.517796>,  <34.820557, 38.111874, 25.000448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403797, 37.748718, 24.517796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374699, 38.142006, 24.450880>,  <34.357239, 38.377979, 24.410730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374699, 38.142006, 24.450880>,  <34.403797, 37.748718, 24.517796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374699, 38.142006, 24.450880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085423, -0.160972, -0.983255,
		-0.993685, -0.085821, -0.072280,
		-0.072748, 0.983221, -0.167287,
		34.352875, 38.436974, 24.400694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836926, 37.807796, 23.982927>,  <34.403797, 37.748718, 24.517796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836926, 37.807796, 23.982927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098476, 38.110012, 23.966938>,  <34.255409, 38.291340, 23.957344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098476, 38.110012, 23.966938>,  <33.836926, 37.807796, 23.982927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098476, 38.110012, 23.966938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001786, -0.054374, -0.998519,
		-0.756595, 0.652842, -0.036903,
		0.653882, 0.755540, -0.039973,
		34.294640, 38.336674, 23.954947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629475, 38.219292, 23.379255>,  <33.836926, 37.807796, 23.982927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629475, 38.219292, 23.379255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016602, 38.313507, 23.414680>,  <34.248878, 38.370037, 23.435936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016602, 38.313507, 23.414680>,  <33.629475, 38.219292, 23.379255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016602, 38.313507, 23.414680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126890, -0.152879, -0.980065,
		-0.217301, 0.959766, -0.177847,
		0.967822, 0.235536, 0.088564,
		34.306950, 38.384167, 23.441250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802444, 38.519352, 22.839094>,  <33.629475, 38.219292, 23.379255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802444, 38.519352, 22.839094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.172768, 38.476158, 22.983988>,  <34.394962, 38.450241, 23.070925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.172768, 38.476158, 22.983988>,  <33.802444, 38.519352, 22.839094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172768, 38.476158, 22.983988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357371, -0.062112, -0.931895,
		0.123126, 0.992211, -0.018915,
		0.925811, -0.107981, 0.362235,
		34.450512, 38.443764, 23.092659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186512, 38.870342, 22.365589>,  <33.802444, 38.519352, 22.839094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186512, 38.870342, 22.365589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469421, 38.651318, 22.544447>,  <34.639168, 38.519901, 22.651762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469421, 38.651318, 22.544447>,  <34.186512, 38.870342, 22.365589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469421, 38.651318, 22.544447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549315, 0.027534, -0.835162,
		0.444991, 0.836312, 0.320258,
		0.707274, -0.547562, 0.447146,
		34.681602, 38.487049, 22.678591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766991, 39.166641, 22.223406>,  <34.186512, 38.870342, 22.365589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766991, 39.166641, 22.223406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863922, 38.785919, 22.298599>,  <34.922081, 38.557484, 22.343716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863922, 38.785919, 22.298599>,  <34.766991, 39.166641, 22.223406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863922, 38.785919, 22.298599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717415, 0.045357, -0.695168,
		0.653139, 0.303325, 0.693832,
		0.242332, -0.951807, 0.187986,
		34.936623, 38.500378, 22.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459499, 39.209522, 22.134172>,  <34.766991, 39.166641, 22.223406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459499, 39.209522, 22.134172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345299, 38.827930, 22.097475>,  <35.276779, 38.598976, 22.075457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345299, 38.827930, 22.097475>,  <35.459499, 39.209522, 22.134172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345299, 38.827930, 22.097475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586142, -0.098074, -0.804250,
		0.758239, -0.283390, 0.587167,
		-0.285502, -0.953977, -0.091743,
		35.259647, 38.541737, 22.069952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016129, 38.790878, 22.016962>,  <35.459499, 39.209522, 22.134172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016129, 38.790878, 22.016962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711926, 38.588211, 21.854519>,  <35.529404, 38.466610, 21.757053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711926, 38.588211, 21.854519>,  <36.016129, 38.790878, 22.016962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711926, 38.588211, 21.854519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571197, -0.224557, -0.789499,
		0.308818, -0.832385, 0.460182,
		-0.760503, -0.506666, -0.406109,
		35.483776, 38.436211, 21.732687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378166, 38.539127, 21.309889>,  <36.016129, 38.790878, 22.016962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378166, 38.539127, 21.309889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003456, 38.399212, 21.313709>,  <35.778629, 38.315262, 21.316002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003456, 38.399212, 21.313709>,  <36.378166, 38.539127, 21.309889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003456, 38.399212, 21.313709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113189, -0.328738, -0.937614,
		0.331110, -0.877255, 0.347548,
		-0.936779, -0.349792, 0.009553,
		35.722424, 38.294273, 21.316574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245415, 37.811962, 21.078760>,  <36.378166, 38.539127, 21.309889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245415, 37.811962, 21.078760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914074, 38.013481, 20.980766>,  <35.715271, 38.134392, 20.921970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914074, 38.013481, 20.980766>,  <36.245415, 37.811962, 21.078760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914074, 38.013481, 20.980766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194159, -0.152020, -0.969119,
		-0.525484, -0.850339, 0.028109,
		-0.828353, 0.503799, -0.244985,
		35.665569, 38.164619, 20.907270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842442, 37.343372, 21.234165>,  <36.245415, 37.811962, 21.078760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842442, 37.343372, 21.234165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220421, 37.412064, 21.122744>,  <37.447208, 37.453278, 21.055891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220421, 37.412064, 21.122744>,  <36.842442, 37.343372, 21.234165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220421, 37.412064, 21.122744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170581, 0.467928, 0.867148,
		0.279256, -0.866922, 0.412872,
		0.944943, 0.171728, -0.278552,
		37.503902, 37.463581, 21.039179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216068, 36.977127, 21.736813>,  <36.842442, 37.343372, 21.234165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216068, 36.977127, 21.736813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450230, 37.251884, 21.564543>,  <37.590729, 37.416737, 21.461180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450230, 37.251884, 21.564543>,  <37.216068, 36.977127, 21.736813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450230, 37.251884, 21.564543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358702, 0.256953, 0.897389,
		0.727071, -0.679822, -0.095966,
		0.585406, 0.686889, -0.430676,
		37.625851, 37.457951, 21.435339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909882, 36.943077, 22.053591>,  <37.216068, 36.977127, 21.736813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909882, 36.943077, 22.053591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880299, 37.307968, 21.892412>,  <37.862549, 37.526905, 21.795704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880299, 37.307968, 21.892412>,  <37.909882, 36.943077, 22.053591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880299, 37.307968, 21.892412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323932, 0.404119, 0.855427,
		0.943186, -0.067266, -0.325386,
		-0.073953, 0.912230, -0.402948,
		37.858112, 37.581638, 21.771528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651939, 37.218224, 22.112707>,  <37.909882, 36.943077, 22.053591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651939, 37.218224, 22.112707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385582, 37.516075, 22.094305>,  <38.225765, 37.694786, 22.083263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385582, 37.516075, 22.094305>,  <38.651939, 37.218224, 22.112707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385582, 37.516075, 22.094305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381694, 0.393022, 0.836567,
		0.641010, 0.539506, -0.545930,
		-0.665895, 0.744625, -0.046005,
		38.185814, 37.739464, 22.080503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012245, 37.761292, 22.391655>,  <38.651939, 37.218224, 22.112707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012245, 37.761292, 22.391655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628960, 37.875687, 22.394146>,  <38.398987, 37.944324, 22.395641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628960, 37.875687, 22.394146>,  <39.012245, 37.761292, 22.391655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628960, 37.875687, 22.394146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138616, 0.445182, 0.884646,
		0.250224, 0.848543, -0.466222,
		-0.958214, 0.285986, 0.006227,
		38.341496, 37.961483, 22.396013>
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
