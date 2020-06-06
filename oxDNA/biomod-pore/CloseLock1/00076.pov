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
	<24.278267, 35.297974, 34.977779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297483, 34.899582, 35.008041>,  <24.309013, 34.660549, 35.026199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297483, 34.899582, 35.008041>,  <24.278267, 35.297974, 34.977779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297483, 34.899582, 35.008041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428199, -0.047894, -0.902414,
		0.902407, 0.075749, 0.424175,
		0.048042, -0.995976, 0.075655,
		24.311895, 34.600788, 35.030739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921024, 34.832821, 34.899559>,  <24.278267, 35.297974, 34.977779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921024, 34.832821, 34.899559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598503, 34.663475, 34.734325>,  <24.404991, 34.561867, 34.635185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598503, 34.663475, 34.734325>,  <24.921024, 34.832821, 34.899559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598503, 34.663475, 34.734325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488301, -0.082273, -0.868788,
		0.333827, -0.902217, 0.273065,
		-0.806301, -0.423363, -0.413089,
		24.356613, 34.536465, 34.610397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202263, 34.233547, 34.544792>,  <24.921024, 34.832821, 34.899559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202263, 34.233547, 34.544792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870304, 34.404812, 34.401714>,  <24.671129, 34.507568, 34.315868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870304, 34.404812, 34.401714>,  <25.202263, 34.233547, 34.544792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870304, 34.404812, 34.401714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486645, 0.241986, -0.839416,
		-0.272846, -0.870703, -0.409185,
		-0.829899, 0.428159, -0.357698,
		24.621334, 34.533260, 34.294403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814037, 33.860828, 33.977043>,  <25.202263, 34.233547, 34.544792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814037, 33.860828, 33.977043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818922, 34.260227, 33.998425>,  <24.821854, 34.499866, 34.011253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818922, 34.260227, 33.998425>,  <24.814037, 33.860828, 33.977043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818922, 34.260227, 33.998425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468002, 0.041532, -0.882751,
		-0.883643, 0.035797, -0.466791,
		0.012213, 0.998496, 0.053452,
		24.822586, 34.559776, 34.014462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.428129, 34.130692, 33.378475>,  <24.814037, 33.860828, 33.977043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.428129, 34.130692, 33.378475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721939, 34.349895, 33.538551>,  <24.898226, 34.481419, 33.634598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721939, 34.349895, 33.538551>,  <24.428129, 34.130692, 33.378475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.721939, 34.349895, 33.538551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440159, 0.064079, -0.895631,
		-0.516461, 0.834012, -0.194145,
		0.734526, 0.548013, 0.400192,
		24.942297, 34.514297, 33.658607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468510, 34.769180, 33.039070>,  <24.428129, 34.130692, 33.378475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468510, 34.769180, 33.039070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818447, 34.641678, 33.184971>,  <25.028410, 34.565174, 33.272511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818447, 34.641678, 33.184971>,  <24.468510, 34.769180, 33.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818447, 34.641678, 33.184971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403130, 0.061593, -0.913068,
		0.268582, 0.945833, 0.182385,
		0.874843, -0.318758, 0.364751,
		25.080900, 34.546051, 33.294395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903761, 35.311268, 32.722706>,  <24.468510, 34.769180, 33.039070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903761, 35.311268, 32.722706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037769, 34.936035, 32.757961>,  <25.118174, 34.710896, 32.779114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037769, 34.936035, 32.757961>,  <24.903761, 35.311268, 32.722706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037769, 34.936035, 32.757961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317824, 0.024450, -0.947835,
		0.886989, 0.345555, 0.306336,
		0.335019, -0.938080, 0.088139,
		25.138275, 34.654610, 32.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669977, 35.232235, 32.749256>,  <24.903761, 35.311268, 32.722706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669977, 35.232235, 32.749256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482780, 34.917896, 32.587555>,  <25.370462, 34.729294, 32.490532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482780, 34.917896, 32.587555>,  <25.669977, 35.232235, 32.749256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482780, 34.917896, 32.587555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447521, 0.183711, -0.875200,
		0.762042, -0.590501, 0.265708,
		-0.467993, -0.785849, -0.404257,
		25.342382, 34.682140, 32.466278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172470, 34.916439, 32.380589>,  <25.669977, 35.232235, 32.749256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172470, 34.916439, 32.380589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816236, 34.818790, 32.227093>,  <25.602495, 34.760201, 32.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816236, 34.818790, 32.227093>,  <26.172470, 34.916439, 32.380589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816236, 34.818790, 32.227093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334592, 0.219829, -0.916364,
		0.308066, -0.944498, -0.114094,
		-0.890586, -0.244126, -0.383744,
		25.549061, 34.745552, 32.111969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370029, 34.477058, 31.850275>,  <26.172470, 34.916439, 32.380589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370029, 34.477058, 31.850275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003845, 34.621468, 31.779169>,  <25.784136, 34.708111, 31.736506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003845, 34.621468, 31.779169>,  <26.370029, 34.477058, 31.850275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003845, 34.621468, 31.779169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230361, 0.107951, -0.967099,
		-0.329953, -0.926289, -0.181990,
		-0.915459, 0.361021, -0.177762,
		25.729208, 34.729774, 31.725840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312651, 34.250156, 31.221209>,  <26.370029, 34.477058, 31.850275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312651, 34.250156, 31.221209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024809, 34.527027, 31.243349>,  <25.852104, 34.693150, 31.256634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024809, 34.527027, 31.243349>,  <26.312651, 34.250156, 31.221209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024809, 34.527027, 31.243349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138272, 0.220952, -0.965433,
		-0.680477, -0.687078, -0.254707,
		-0.719606, 0.692173, 0.055349,
		25.808928, 34.734680, 31.259954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916143, 34.199173, 30.593159>,  <26.312651, 34.250156, 31.221209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916143, 34.199173, 30.593159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834127, 34.561996, 30.740234>,  <25.784918, 34.779690, 30.828480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834127, 34.561996, 30.740234>,  <25.916143, 34.199173, 30.593159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834127, 34.561996, 30.740234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097478, 0.392729, -0.914474,
		-0.973888, -0.151660, -0.168943,
		-0.205038, 0.907063, 0.367691,
		25.772615, 34.834114, 30.850542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381035, 34.447571, 30.066837>,  <25.916143, 34.199173, 30.593159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381035, 34.447571, 30.066837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571461, 34.749508, 30.247313>,  <25.685717, 34.930672, 30.355598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571461, 34.749508, 30.247313>,  <25.381035, 34.447571, 30.066837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571461, 34.749508, 30.247313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127029, 0.448651, -0.884633,
		-0.870186, 0.478458, 0.117701,
		0.476066, 0.754844, 0.451188,
		25.714281, 34.975960, 30.382669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172501, 35.139416, 29.743689>,  <25.381035, 34.447571, 30.066837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172501, 35.139416, 29.743689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486755, 35.248730, 29.965712>,  <25.675308, 35.314316, 30.098925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486755, 35.248730, 29.965712>,  <25.172501, 35.139416, 29.743689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486755, 35.248730, 29.965712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155398, 0.781230, -0.604592,
		-0.598852, 0.561246, 0.571297,
		0.785639, 0.273283, 0.555057,
		25.722446, 35.330715, 30.132229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976542, 35.804966, 29.945265>,  <25.172501, 35.139416, 29.743689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976542, 35.804966, 29.945265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372591, 35.751877, 29.963333>,  <25.610220, 35.720024, 29.974174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372591, 35.751877, 29.963333>,  <24.976542, 35.804966, 29.945265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372591, 35.751877, 29.963333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128596, 0.731396, -0.669719,
		0.055848, 0.668913, 0.741240,
		0.990123, -0.132723, 0.045172,
		25.669628, 35.712059, 29.976885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313242, 36.388729, 30.118448>,  <24.976542, 35.804966, 29.945265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313242, 36.388729, 30.118448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634018, 36.224865, 29.944519>,  <25.826483, 36.126545, 29.840162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634018, 36.224865, 29.944519>,  <25.313242, 36.388729, 30.118448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634018, 36.224865, 29.944519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214485, 0.876758, -0.430454,
		0.557574, 0.251936, 0.790974,
		0.801940, -0.409662, -0.434821,
		25.874599, 36.101967, 29.814074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775234, 36.933098, 30.137871>,  <25.313242, 36.388729, 30.118448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775234, 36.933098, 30.137871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920683, 36.679073, 29.865261>,  <26.007952, 36.526657, 29.701696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920683, 36.679073, 29.865261>,  <25.775234, 36.933098, 30.137871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920683, 36.679073, 29.865261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432985, 0.762992, -0.479965,
		0.824805, -0.120564, 0.552414,
		0.363621, -0.635065, -0.681522,
		26.029770, 36.488552, 29.660805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465599, 37.095554, 30.109257>,  <25.775234, 36.933098, 30.137871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465599, 37.095554, 30.109257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417137, 36.910686, 29.757866>,  <26.388060, 36.799767, 29.547031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417137, 36.910686, 29.757866>,  <26.465599, 37.095554, 30.109257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417137, 36.910686, 29.757866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456783, 0.759765, -0.462716,
		0.881289, -0.457334, 0.119062,
		-0.121157, -0.462172, -0.878475,
		26.380791, 36.772034, 29.494324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104239, 37.121220, 29.769693>,  <26.465599, 37.095554, 30.109257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104239, 37.121220, 29.769693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866510, 37.045486, 29.457043>,  <26.723873, 37.000046, 29.269453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866510, 37.045486, 29.457043>,  <27.104239, 37.121220, 29.769693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866510, 37.045486, 29.457043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416941, 0.758545, -0.500768,
		0.687708, -0.623509, -0.371880,
		-0.594321, -0.189331, -0.781624,
		26.688213, 36.988686, 29.222555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490635, 37.080734, 29.216436>,  <27.104239, 37.121220, 29.769693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490635, 37.080734, 29.216436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125078, 37.166252, 29.078396>,  <26.905745, 37.217564, 28.995571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125078, 37.166252, 29.078396>,  <27.490635, 37.080734, 29.216436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125078, 37.166252, 29.078396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369531, 0.790064, -0.489128,
		0.168077, -0.574534, -0.801037,
		-0.913891, 0.213796, -0.345100,
		26.850910, 37.230392, 28.974865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533827, 37.363724, 28.512545>,  <27.490635, 37.080734, 29.216436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533827, 37.363724, 28.512545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176565, 37.495956, 28.634521>,  <26.962208, 37.575298, 28.707708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176565, 37.495956, 28.634521>,  <27.533827, 37.363724, 28.512545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176565, 37.495956, 28.634521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091973, 0.797952, -0.595663,
		-0.440246, -0.503972, -0.743098,
		-0.893154, 0.330583, 0.304944,
		26.908619, 37.595131, 28.726004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167122, 37.507153, 27.873604>,  <27.533827, 37.363724, 28.512545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167122, 37.507153, 27.873604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978897, 37.709167, 28.163019>,  <26.865963, 37.830376, 28.336668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978897, 37.709167, 28.163019>,  <27.167122, 37.507153, 27.873604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978897, 37.709167, 28.163019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002657, 0.819183, -0.573526,
		-0.882363, -0.271802, -0.384135,
		-0.470562, 0.505038, 0.723539,
		26.837729, 37.860680, 28.380081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775848, 37.969238, 27.506922>,  <27.167122, 37.507153, 27.873604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775848, 37.969238, 27.506922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786129, 38.120926, 27.876902>,  <26.792297, 38.211941, 28.098888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786129, 38.120926, 27.876902>,  <26.775848, 37.969238, 27.506922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786129, 38.120926, 27.876902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002062, 0.925232, -0.379396,
		-0.999668, 0.011659, 0.022999,
		0.025703, 0.379223, 0.924949,
		26.793840, 38.234692, 28.154387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335423, 38.457394, 27.444284>,  <26.775848, 37.969238, 27.506922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335423, 38.457394, 27.444284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526810, 38.561607, 27.779711>,  <26.641642, 38.624138, 27.980967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526810, 38.561607, 27.779711>,  <26.335423, 38.457394, 27.444284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526810, 38.561607, 27.779711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045553, 0.961048, -0.272601,
		-0.876923, 0.092231, 0.471698,
		0.478467, 0.260538, 0.838564,
		26.670349, 38.639771, 28.031281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937239, 39.065762, 27.633945>,  <26.335423, 38.457394, 27.444284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937239, 39.065762, 27.633945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279537, 39.067406, 27.840899>,  <26.484917, 39.068394, 27.965071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279537, 39.067406, 27.840899>,  <25.937239, 39.065762, 27.633945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279537, 39.067406, 27.840899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058991, 0.992673, -0.105459,
		-0.514024, 0.120767, 0.849232,
		0.855745, 0.004111, 0.517381,
		26.536261, 39.068638, 27.996113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963804, 39.434811, 28.322990>,  <25.937239, 39.065762, 27.633945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963804, 39.434811, 28.322990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280491, 39.450073, 28.079113>,  <26.470503, 39.459232, 27.932787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280491, 39.450073, 28.079113>,  <25.963804, 39.434811, 28.322990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280491, 39.450073, 28.079113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067843, 0.997366, -0.025674,
		0.607107, 0.061690, 0.792222,
		0.791719, 0.038160, -0.609693,
		26.518007, 39.461521, 27.896206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373472, 39.908558, 28.585997>,  <25.963804, 39.434811, 28.322990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373472, 39.908558, 28.585997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488714, 39.890903, 28.203363>,  <26.557859, 39.880310, 27.973783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488714, 39.890903, 28.203363>,  <26.373472, 39.908558, 28.585997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488714, 39.890903, 28.203363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024579, 0.998267, -0.053466,
		0.957284, 0.038916, 0.286519,
		0.288103, -0.044140, -0.956582,
		26.575146, 39.877663, 27.916389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869972, 40.271503, 28.402618>,  <26.373472, 39.908558, 28.585997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869972, 40.271503, 28.402618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647631, 40.272385, 28.070107>,  <26.514227, 40.272911, 27.870600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647631, 40.272385, 28.070107>,  <26.869972, 40.271503, 28.402618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647631, 40.272385, 28.070107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012326, 0.999865, 0.010889,
		0.831189, 0.016299, -0.555751,
		-0.555853, 0.002200, -0.831278,
		26.480875, 40.273045, 27.820723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216427, 39.677025, 28.290642>,  <26.869972, 40.271503, 28.402618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216427, 39.677025, 28.290642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610035, 39.742958, 28.263708>,  <27.846201, 39.782516, 28.247549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610035, 39.742958, 28.263708>,  <27.216427, 39.677025, 28.290642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610035, 39.742958, 28.263708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143782, -0.958671, -0.245512,
		-0.105018, 0.231908, -0.967052,
		0.984021, 0.164828, -0.067333,
		27.905241, 39.792408, 28.243507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487278, 39.518394, 27.667351>,  <27.216427, 39.677025, 28.290642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487278, 39.518394, 27.667351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773973, 39.482132, 27.943920>,  <27.945990, 39.460377, 28.109861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773973, 39.482132, 27.943920>,  <27.487278, 39.518394, 27.667351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773973, 39.482132, 27.943920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057206, -0.980529, -0.187859,
		0.694993, 0.174199, -0.697596,
		0.716738, -0.090654, 0.691425,
		27.988995, 39.454937, 28.151348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208715, 39.759300, 27.090878>,  <27.487278, 39.518394, 27.667351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208715, 39.759300, 27.090878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459045, 39.679852, 26.789177>,  <27.609243, 39.632183, 26.608156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459045, 39.679852, 26.789177>,  <27.208715, 39.759300, 27.090878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459045, 39.679852, 26.789177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459635, -0.875194, -0.150901,
		-0.630142, 0.441117, -0.639012,
		0.625824, -0.198623, -0.754250,
		27.646793, 39.620266, 26.562902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779877, 39.399139, 26.590960>,  <27.208715, 39.759300, 27.090878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779877, 39.399139, 26.590960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159880, 39.311489, 26.501995>,  <27.387882, 39.258900, 26.448616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159880, 39.311489, 26.501995>,  <26.779877, 39.399139, 26.590960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159880, 39.311489, 26.501995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267542, -0.938542, -0.218082,
		-0.160956, 0.266684, -0.950249,
		0.950008, -0.219130, -0.222413,
		27.444881, 39.245750, 26.435270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851797, 39.106686, 25.873751>,  <26.779877, 39.399139, 26.590960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851797, 39.106686, 25.873751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144802, 38.964706, 26.106108>,  <27.320606, 38.879520, 26.245522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144802, 38.964706, 26.106108>,  <26.851797, 39.106686, 25.873751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144802, 38.964706, 26.106108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228582, -0.932013, -0.281249,
		0.641229, 0.073237, -0.763847,
		0.732513, -0.354947, 0.580893,
		27.364555, 38.858223, 26.280376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253643, 38.722591, 25.397865>,  <26.851797, 39.106686, 25.873751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253643, 38.722591, 25.397865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302895, 38.588615, 25.771528>,  <27.332445, 38.508228, 25.995726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302895, 38.588615, 25.771528>,  <27.253643, 38.722591, 25.397865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302895, 38.588615, 25.771528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022216, -0.940155, -0.340021,
		0.992142, 0.062619, -0.108317,
		0.123127, -0.334943, 0.934159,
		27.339832, 38.488132, 26.051777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803658, 38.149822, 25.294708>,  <27.253643, 38.722591, 25.397865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803658, 38.149822, 25.294708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583147, 38.149166, 25.628437>,  <27.450840, 38.148773, 25.828674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583147, 38.149166, 25.628437>,  <27.803658, 38.149822, 25.294708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583147, 38.149166, 25.628437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147644, -0.984024, -0.099493,
		0.821154, -0.178031, 0.542228,
		-0.551278, -0.001642, 0.834320,
		27.417763, 38.148674, 25.878733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033541, 37.628288, 25.732132>,  <27.803658, 38.149822, 25.294708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033541, 37.628288, 25.732132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641115, 37.675690, 25.793417>,  <27.405661, 37.704132, 25.830187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641115, 37.675690, 25.793417>,  <28.033541, 37.628288, 25.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641115, 37.675690, 25.793417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144881, -0.973960, -0.174388,
		0.128556, -0.193283, 0.972685,
		-0.981062, 0.118505, 0.153211,
		27.346796, 37.711243, 25.839380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823471, 37.095993, 26.197350>,  <28.033541, 37.628288, 25.732132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823471, 37.095993, 26.197350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498825, 37.218609, 25.998428>,  <27.304037, 37.292179, 25.879076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498825, 37.218609, 25.998428>,  <27.823471, 37.095993, 26.197350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498825, 37.218609, 25.998428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382372, -0.922339, 0.055509,
		-0.441667, 0.235207, 0.865799,
		-0.811616, 0.306541, -0.497304,
		27.255341, 37.310570, 25.849237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240755, 36.871002, 26.670565>,  <27.823471, 37.095993, 26.197350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240755, 36.871002, 26.670565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077480, 36.907482, 26.307232>,  <26.979515, 36.929371, 26.089233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077480, 36.907482, 26.307232>,  <27.240755, 36.871002, 26.670565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077480, 36.907482, 26.307232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332890, -0.941356, 0.055077,
		-0.850039, 0.324856, 0.414612,
		-0.408189, 0.091203, -0.908330,
		26.955023, 36.934841, 26.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538851, 36.869087, 26.686144>,  <27.240755, 36.871002, 26.670565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538851, 36.869087, 26.686144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586252, 36.732525, 26.313177>,  <26.614693, 36.650585, 26.089397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586252, 36.732525, 26.313177>,  <26.538851, 36.869087, 26.686144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586252, 36.732525, 26.313177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367071, -0.887574, 0.278338,
		-0.922614, 0.309279, -0.230501,
		0.118502, -0.341409, -0.932415,
		26.621803, 36.630104, 26.033453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874208, 36.540470, 26.549391>,  <26.538851, 36.869087, 26.686144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874208, 36.540470, 26.549391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125639, 36.391357, 26.276356>,  <26.276497, 36.301891, 26.112535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125639, 36.391357, 26.276356>,  <25.874208, 36.540470, 26.549391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125639, 36.391357, 26.276356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136070, -0.916820, 0.375401,
		-0.765754, -0.143088, -0.627014,
		0.628574, -0.372783, -0.682589,
		26.314211, 36.279522, 26.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552977, 35.986782, 26.120930>,  <25.874208, 36.540470, 26.549391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552977, 35.986782, 26.120930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944845, 35.908051, 26.105450>,  <26.179966, 35.860813, 26.096161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944845, 35.908051, 26.105450>,  <25.552977, 35.986782, 26.120930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944845, 35.908051, 26.105450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146832, -0.835070, 0.530186,
		-0.136674, -0.513727, -0.846997,
		0.979673, -0.196829, -0.038701,
		26.238747, 35.849003, 26.093840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550856, 35.277279, 26.143188>,  <25.552977, 35.986782, 26.120930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550856, 35.277279, 26.143188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933115, 35.369453, 26.216551>,  <26.162470, 35.424759, 26.260569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933115, 35.369453, 26.216551>,  <25.550856, 35.277279, 26.143188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933115, 35.369453, 26.216551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103544, -0.845865, 0.523250,
		0.275715, -0.481051, -0.832208,
		0.955646, 0.230438, 0.183408,
		26.219809, 35.438583, 26.271574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891291, 34.612385, 26.087051>,  <25.550856, 35.277279, 26.143188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891291, 34.612385, 26.087051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147659, 34.843704, 26.288958>,  <26.301479, 34.982498, 26.410101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147659, 34.843704, 26.288958>,  <25.891291, 34.612385, 26.087051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147659, 34.843704, 26.288958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237604, -0.774751, 0.585922,
		0.729908, -0.255595, -0.633961,
		0.640921, 0.578301, 0.504766,
		26.339935, 35.017193, 26.440388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558113, 34.286140, 26.107616>,  <25.891291, 34.612385, 26.087051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558113, 34.286140, 26.107616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541431, 34.533318, 26.421663>,  <26.531424, 34.681622, 26.610092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541431, 34.533318, 26.421663>,  <26.558113, 34.286140, 26.107616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541431, 34.533318, 26.421663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214828, -0.761878, 0.611058,
		0.975761, 0.194148, -0.100978,
		-0.041702, 0.617939, 0.785119,
		26.528921, 34.718700, 26.657200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044106, 34.096878, 26.512312>,  <26.558113, 34.286140, 26.107616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044106, 34.096878, 26.512312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810108, 34.291504, 26.771862>,  <26.669710, 34.408279, 26.927591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810108, 34.291504, 26.771862>,  <27.044106, 34.096878, 26.512312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810108, 34.291504, 26.771862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340694, -0.578619, 0.741032,
		0.736009, 0.654568, 0.172721,
		-0.584995, 0.486561, 0.648876,
		26.634609, 34.437473, 26.966524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359581, 33.971233, 27.074371>,  <27.044106, 34.096878, 26.512312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359581, 33.971233, 27.074371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041733, 34.138321, 27.250589>,  <26.851023, 34.238575, 27.356321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041733, 34.138321, 27.250589>,  <27.359581, 33.971233, 27.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041733, 34.138321, 27.250589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168954, -0.544829, 0.821350,
		0.583120, 0.727096, 0.362357,
		-0.794623, 0.417724, 0.440547,
		26.803347, 34.263638, 27.382753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568605, 34.055454, 27.740967>,  <27.359581, 33.971233, 27.074371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568605, 34.055454, 27.740967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169140, 34.076031, 27.739035>,  <26.929461, 34.088379, 27.737875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169140, 34.076031, 27.739035>,  <27.568605, 34.055454, 27.740967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169140, 34.076031, 27.739035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034502, -0.594354, 0.803463,
		0.038464, 0.802557, 0.595335,
		-0.998664, 0.051445, -0.004828,
		26.869541, 34.091465, 27.737587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367159, 34.230713, 28.461180>,  <27.568605, 34.055454, 27.740967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367159, 34.230713, 28.461180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090813, 34.022797, 28.260174>,  <26.925005, 33.898048, 28.139570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090813, 34.022797, 28.260174>,  <27.367159, 34.230713, 28.461180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090813, 34.022797, 28.260174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063978, -0.648378, 0.758625,
		-0.720148, 0.556257, 0.414686,
		-0.690864, -0.519792, -0.502517,
		26.883553, 33.866859, 28.109419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900679, 33.922848, 28.968294>,  <27.367159, 34.230713, 28.461180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900679, 33.922848, 28.968294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835470, 33.715622, 28.632429>,  <26.796345, 33.591286, 28.430910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835470, 33.715622, 28.632429>,  <26.900679, 33.922848, 28.968294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835470, 33.715622, 28.632429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128516, -0.832645, 0.538689,
		-0.978217, 0.195726, 0.069158,
		-0.163019, -0.518067, -0.839661,
		26.786564, 33.560204, 28.380531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284718, 33.596107, 29.133291>,  <26.900679, 33.922848, 28.968294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284718, 33.596107, 29.133291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395491, 33.384884, 28.812178>,  <26.461954, 33.258152, 28.619509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395491, 33.384884, 28.812178>,  <26.284718, 33.596107, 29.133291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395491, 33.384884, 28.812178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430820, -0.815016, 0.387483,
		-0.858896, 0.238550, -0.453201,
		0.276932, -0.528056, -0.802786,
		26.478571, 33.226467, 28.571342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725260, 33.255856, 28.940744>,  <26.284718, 33.596107, 29.133291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725260, 33.255856, 28.940744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017094, 33.031971, 28.783554>,  <26.192194, 32.897640, 28.689240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017094, 33.031971, 28.783554>,  <25.725260, 33.255856, 28.940744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017094, 33.031971, 28.783554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395130, -0.813994, 0.425778,
		-0.558190, -0.155367, -0.815037,
		0.729586, -0.559710, -0.392973,
		26.235970, 32.864059, 28.665663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446957, 32.572685, 28.696695>,  <25.725260, 33.255856, 28.940744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446957, 32.572685, 28.696695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839754, 32.521061, 28.751873>,  <26.075434, 32.490086, 28.784979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839754, 32.521061, 28.751873>,  <25.446957, 32.572685, 28.696695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839754, 32.521061, 28.751873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181668, -0.845381, 0.502322,
		0.051784, -0.518338, -0.853607,
		0.981995, -0.129061, 0.137943,
		26.134354, 32.482342, 28.793257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501759, 31.867798, 28.613914>,  <25.446957, 32.572685, 28.696695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501759, 31.867798, 28.613914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828821, 31.994242, 28.806377>,  <26.025059, 32.070107, 28.921854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828821, 31.994242, 28.806377>,  <25.501759, 31.867798, 28.613914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828821, 31.994242, 28.806377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144936, -0.695823, 0.703438,
		0.557163, -0.644908, -0.523129,
		0.817657, 0.316109, 0.481156,
		26.074118, 32.089073, 28.950724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850918, 31.199181, 28.889757>,  <25.501759, 31.867798, 28.613914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850918, 31.199181, 28.889757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990776, 31.517258, 29.087915>,  <26.074690, 31.708103, 29.206810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990776, 31.517258, 29.087915>,  <25.850918, 31.199181, 28.889757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990776, 31.517258, 29.087915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100078, -0.494046, 0.863657,
		0.931522, -0.351550, -0.093159,
		0.349643, 0.795193, 0.495397,
		26.095669, 31.755816, 29.236534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353622, 30.873096, 29.101448>,  <25.850918, 31.199181, 28.889757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353622, 30.873096, 29.101448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266466, 31.188759, 29.331146>,  <26.214172, 31.378157, 29.468966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266466, 31.188759, 29.331146>,  <26.353622, 30.873096, 29.101448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266466, 31.188759, 29.331146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000945, -0.588551, 0.808460,
		0.975973, 0.175614, 0.128986,
		-0.217892, 0.789156, 0.574243,
		26.201099, 31.425507, 29.503420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864016, 30.855967, 29.691252>,  <26.353622, 30.873096, 29.101448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864016, 30.855967, 29.691252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551744, 31.081694, 29.798649>,  <26.364382, 31.217131, 29.863087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551744, 31.081694, 29.798649>,  <26.864016, 30.855967, 29.691252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551744, 31.081694, 29.798649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011615, -0.442659, 0.896615,
		0.624826, 0.696848, 0.352129,
		-0.780677, 0.564319, 0.268491,
		26.317541, 31.250990, 29.879196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087824, 31.204893, 30.223881>,  <26.864016, 30.855967, 29.691252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087824, 31.204893, 30.223881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688480, 31.192572, 30.243193>,  <26.448874, 31.185179, 30.254780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688480, 31.192572, 30.243193>,  <27.087824, 31.204893, 30.223881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688480, 31.192572, 30.243193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055323, -0.300868, 0.952060,
		-0.014800, 0.953168, 0.302078,
		-0.998359, -0.030803, 0.048279,
		26.388973, 31.183331, 30.257677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421272, 31.729597, 29.823257>,  <27.087824, 31.204893, 30.223881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421272, 31.729597, 29.823257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251150, 31.974791, 30.089602>,  <27.149076, 32.121906, 30.249409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251150, 31.974791, 30.089602>,  <27.421272, 31.729597, 29.823257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251150, 31.974791, 30.089602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787034, 0.112770, -0.606515,
		-0.446872, -0.782007, 0.434476,
		-0.425304, 0.612982, 0.665860,
		27.123560, 32.158684, 30.289360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863617, 31.253746, 29.448336>,  <27.421272, 31.729597, 29.823257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863617, 31.253746, 29.448336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078911, 31.523851, 29.650059>,  <28.208086, 31.685915, 29.771093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078911, 31.523851, 29.650059>,  <27.863617, 31.253746, 29.448336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078911, 31.523851, 29.650059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388477, 0.729793, -0.562572,
		-0.747925, 0.106882, 0.655122,
		0.538232, 0.675262, 0.504309,
		28.240381, 31.726429, 29.801352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129988, 31.509739, 28.917723>,  <27.863617, 31.253746, 29.448336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129988, 31.509739, 28.917723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739668, 31.422840, 28.927637>,  <27.505476, 31.370701, 28.933586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739668, 31.422840, 28.927637>,  <28.129988, 31.509739, 28.917723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739668, 31.422840, 28.927637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212975, -0.969992, -0.117288,
		0.049525, -0.109170, 0.992788,
		-0.975802, -0.217247, 0.024788,
		27.446928, 31.357666, 28.935074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702263, 31.824524, 29.394213>,  <28.129988, 31.509739, 28.917723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702263, 31.824524, 29.394213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764250, 32.175171, 29.576433>,  <28.801441, 32.385559, 29.685764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764250, 32.175171, 29.576433>,  <28.702263, 31.824524, 29.394213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764250, 32.175171, 29.576433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986875, -0.116170, -0.112166,
		-0.045406, 0.466953, -0.883116,
		0.154968, 0.876618, 0.455549,
		28.810740, 32.438156, 29.713099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142252, 32.368557, 28.979057>,  <28.702263, 31.824524, 29.394213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142252, 32.368557, 28.979057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172157, 32.400623, 29.376646>,  <29.190100, 32.419865, 29.615200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172157, 32.400623, 29.376646>,  <29.142252, 32.368557, 28.979057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172157, 32.400623, 29.376646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993143, 0.083849, -0.081464,
		-0.089874, 0.993248, -0.073349,
		0.074764, 0.080167, 0.993974,
		29.194586, 32.424675, 29.674839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613762, 32.865063, 29.172050>,  <29.142252, 32.368557, 28.979057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613762, 32.865063, 29.172050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606800, 32.636482, 29.500231>,  <29.602623, 32.499332, 29.697140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606800, 32.636482, 29.500231>,  <29.613762, 32.865063, 29.172050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606800, 32.636482, 29.500231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975212, 0.171334, 0.140024,
		-0.220588, 0.802552, 0.554302,
		-0.017406, -0.571450, 0.820452,
		29.601578, 32.465046, 29.746367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115505, 33.184631, 29.715513>,  <29.613762, 32.865063, 29.172050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115505, 33.184631, 29.715513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077477, 32.791374, 29.777988>,  <30.054659, 32.555420, 29.815474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077477, 32.791374, 29.777988>,  <30.115505, 33.184631, 29.715513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077477, 32.791374, 29.777988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989646, -0.076397, 0.121512,
		-0.107532, 0.166122, 0.980225,
		-0.095072, -0.983141, 0.156186,
		30.048954, 32.496433, 29.824844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545303, 33.157497, 30.363228>,  <30.115505, 33.184631, 29.715513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545303, 33.157497, 30.363228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711704, 32.914345, 30.633759>,  <30.811544, 32.768452, 30.796078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711704, 32.914345, 30.633759>,  <30.545303, 33.157497, 30.363228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711704, 32.914345, 30.633759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510548, 0.459331, 0.726881,
		-0.752519, -0.647680, -0.119272,
		0.416001, -0.607886, 0.676327,
		30.836504, 32.731979, 30.836657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056467, 32.800014, 30.810209>,  <30.545303, 33.157497, 30.363228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056467, 32.800014, 30.810209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399929, 32.804096, 31.015190>,  <30.606007, 32.806545, 31.138178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399929, 32.804096, 31.015190>,  <30.056467, 32.800014, 30.810209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399929, 32.804096, 31.015190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432922, 0.549678, 0.714446,
		-0.274391, -0.835315, 0.476402,
		0.858655, 0.010208, 0.512453,
		30.657526, 32.807159, 31.168926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925087, 32.692814, 31.603653>,  <30.056467, 32.800014, 30.810209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925087, 32.692814, 31.603653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282579, 32.867249, 31.561575>,  <30.497076, 32.971909, 31.536329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282579, 32.867249, 31.561575>,  <29.925087, 32.692814, 31.603653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282579, 32.867249, 31.561575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252365, 0.682632, 0.685803,
		0.370881, -0.586378, 0.720145,
		0.893733, 0.436090, -0.105194,
		30.550699, 32.998077, 31.530016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152792, 32.828674, 32.384636>,  <29.925087, 32.692814, 31.603653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152792, 32.828674, 32.384636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395226, 33.079571, 32.188992>,  <30.540686, 33.230110, 32.071606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395226, 33.079571, 32.188992>,  <30.152792, 32.828674, 32.384636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395226, 33.079571, 32.188992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041928, 0.639267, 0.767841,
		0.794296, -0.444867, 0.413747,
		0.606082, 0.627241, -0.489115,
		30.577051, 33.267742, 32.042255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466211, 33.119545, 32.900249>,  <30.152792, 32.828674, 32.384636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466211, 33.119545, 32.900249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547506, 33.383480, 32.610889>,  <30.596283, 33.541840, 32.437271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547506, 33.383480, 32.610889>,  <30.466211, 33.119545, 32.900249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547506, 33.383480, 32.610889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007365, 0.739833, 0.672750,
		0.979102, -0.131399, 0.155220,
		0.203236, 0.659835, -0.723404,
		30.608477, 33.581432, 32.393867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861467, 33.575951, 33.140736>,  <30.466211, 33.119545, 32.900249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861467, 33.575951, 33.140736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721210, 33.791302, 32.834221>,  <30.637056, 33.920513, 32.650311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721210, 33.791302, 32.834221>,  <30.861467, 33.575951, 33.140736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721210, 33.791302, 32.834221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078240, 0.832217, 0.548902,
		0.933235, 0.132514, -0.333933,
		-0.350642, 0.538382, -0.766287,
		30.616018, 33.952816, 32.604336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244520, 34.243454, 33.072392>,  <30.861467, 33.575951, 33.140736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244520, 34.243454, 33.072392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920452, 34.337326, 32.857525>,  <30.726011, 34.393650, 32.728603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920452, 34.337326, 32.857525>,  <31.244520, 34.243454, 33.072392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920452, 34.337326, 32.857525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040342, 0.891870, 0.450488,
		0.584803, 0.386643, -0.713100,
		-0.810171, 0.234679, -0.537167,
		30.677401, 34.407730, 32.696373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293287, 34.998821, 32.842297>,  <31.244520, 34.243454, 33.072392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293287, 34.998821, 32.842297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906946, 34.897087, 32.822517>,  <30.675142, 34.836048, 32.810650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906946, 34.897087, 32.822517>,  <31.293287, 34.998821, 32.842297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906946, 34.897087, 32.822517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226549, 0.736390, 0.637500,
		-0.125724, 0.626933, -0.768862,
		-0.965852, -0.254334, -0.049449,
		30.617191, 34.820786, 32.807682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911247, 35.624298, 32.611576>,  <31.293287, 34.998821, 32.842297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911247, 35.624298, 32.611576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653563, 35.393124, 32.811970>,  <30.498951, 35.254421, 32.932205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653563, 35.393124, 32.811970>,  <30.911247, 35.624298, 32.611576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653563, 35.393124, 32.811970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381999, 0.810585, 0.443880,
		-0.662623, 0.094577, -0.742958,
		-0.644211, -0.577934, 0.500984,
		30.460299, 35.219742, 32.962265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488613, 36.133526, 32.685806>,  <30.911247, 35.624298, 32.611576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488613, 36.133526, 32.685806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346960, 35.852455, 32.932652>,  <30.261969, 35.683811, 33.080761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346960, 35.852455, 32.932652>,  <30.488613, 36.133526, 32.685806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346960, 35.852455, 32.932652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503253, 0.699377, 0.507552,
		-0.788242, -0.130824, -0.601298,
		-0.354134, -0.702679, 0.617116,
		30.240721, 35.641651, 33.117786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761526, 36.152271, 32.813873>,  <30.488613, 36.133526, 32.685806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761526, 36.152271, 32.813873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900145, 35.971630, 33.142742>,  <29.983315, 35.863247, 33.340061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900145, 35.971630, 33.142742>,  <29.761526, 36.152271, 32.813873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900145, 35.971630, 33.142742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582672, 0.583250, 0.565963,
		-0.735119, -0.675187, -0.061013,
		0.346545, -0.451601, 0.822170,
		30.004108, 35.836151, 33.389393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157682, 35.994663, 33.245003>,  <29.761526, 36.152271, 32.813873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157682, 35.994663, 33.245003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465055, 35.937046, 33.494408>,  <29.649479, 35.902477, 33.644051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465055, 35.937046, 33.494408>,  <29.157682, 35.994663, 33.245003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465055, 35.937046, 33.494408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564085, 0.307645, 0.766265,
		-0.302194, -0.940535, 0.155153,
		0.768431, -0.144042, 0.623511,
		29.695585, 35.893833, 33.681461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890884, 35.582851, 33.888214>,  <29.157682, 35.994663, 33.245003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890884, 35.582851, 33.888214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230562, 35.762329, 33.999599>,  <29.434368, 35.870014, 34.066433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230562, 35.762329, 33.999599>,  <28.890884, 35.582851, 33.888214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230562, 35.762329, 33.999599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393317, 0.185531, 0.900489,
		0.352380, -0.874215, 0.334030,
		0.849194, 0.448694, 0.278466,
		29.485321, 35.896938, 34.083141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069189, 35.405289, 34.526215>,  <28.890884, 35.582851, 33.888214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069189, 35.405289, 34.526215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241621, 35.762566, 34.475029>,  <29.345079, 35.976933, 34.444317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241621, 35.762566, 34.475029>,  <29.069189, 35.405289, 34.526215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241621, 35.762566, 34.475029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128758, 0.201255, 0.971040,
		0.893080, -0.402119, 0.201763,
		0.431079, 0.893195, -0.127961,
		29.370945, 36.030525, 34.436642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556795, 35.520142, 35.093998>,  <29.069189, 35.405289, 34.526215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556795, 35.520142, 35.093998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419182, 35.869877, 34.957081>,  <29.336613, 36.079720, 34.874931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419182, 35.869877, 34.957081>,  <29.556795, 35.520142, 35.093998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419182, 35.869877, 34.957081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099459, 0.328563, 0.939231,
		0.933675, 0.357172, -0.026076,
		-0.344035, 0.874342, -0.342295,
		29.315971, 36.132179, 34.854393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407087, 35.976158, 35.700642>,  <29.556795, 35.520142, 35.093998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407087, 35.976158, 35.700642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304762, 36.273186, 35.453045>,  <29.243366, 36.451401, 35.304485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304762, 36.273186, 35.453045>,  <29.407087, 35.976158, 35.700642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304762, 36.273186, 35.453045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109376, 0.658419, 0.744662,
		0.960519, 0.122790, -0.249651,
		-0.255812, 0.742568, -0.618993,
		29.228018, 36.495956, 35.267345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777567, 36.515892, 35.927547>,  <29.407087, 35.976158, 35.700642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777567, 36.515892, 35.927547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466311, 36.682529, 35.739525>,  <29.279556, 36.782513, 35.626713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466311, 36.682529, 35.739525>,  <29.777567, 36.515892, 35.927547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466311, 36.682529, 35.739525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128415, 0.627059, 0.768314,
		0.614824, 0.658217, -0.434443,
		-0.778139, 0.416589, -0.470056,
		29.232868, 36.807507, 35.598507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775763, 37.279453, 36.086239>,  <29.777567, 36.515892, 35.927547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775763, 37.279453, 36.086239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400051, 37.226849, 35.959454>,  <29.174625, 37.195286, 35.883385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400051, 37.226849, 35.959454>,  <29.775763, 37.279453, 36.086239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400051, 37.226849, 35.959454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305046, 0.743049, 0.595672,
		0.157181, 0.656188, -0.738045,
		-0.939277, -0.131510, -0.316961,
		29.118269, 37.187397, 35.864365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556545, 37.918320, 35.998592>,  <29.775763, 37.279453, 36.086239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556545, 37.918320, 35.998592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224718, 37.695137, 36.007519>,  <29.025621, 37.561226, 36.012875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224718, 37.695137, 36.007519>,  <29.556545, 37.918320, 35.998592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224718, 37.695137, 36.007519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431337, 0.665664, 0.608967,
		-0.354637, 0.495552, -0.792882,
		-0.829567, -0.557961, 0.022319,
		28.975847, 37.527748, 36.014214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027594, 38.372211, 35.996330>,  <29.556545, 37.918320, 35.998592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027594, 38.372211, 35.996330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845301, 38.036533, 36.115025>,  <28.735926, 37.835125, 36.186241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845301, 38.036533, 36.115025>,  <29.027594, 38.372211, 35.996330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845301, 38.036533, 36.115025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506071, 0.518529, 0.689217,
		-0.732258, 0.163927, -0.661004,
		-0.455731, -0.839200, 0.296738,
		28.708582, 37.784775, 36.204044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301371, 38.512749, 36.162113>,  <29.027594, 38.372211, 35.996330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301371, 38.512749, 36.162113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400970, 38.183006, 36.365459>,  <28.460732, 37.985161, 36.487469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400970, 38.183006, 36.365459>,  <28.301371, 38.512749, 36.162113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400970, 38.183006, 36.365459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482232, 0.349682, 0.803228,
		-0.839911, -0.445157, -0.310458,
		0.249001, -0.824353, 0.508370,
		28.475672, 37.935699, 36.517971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753202, 38.304699, 36.509842>,  <28.301371, 38.512749, 36.162113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753202, 38.304699, 36.509842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019144, 38.100060, 36.727554>,  <28.178709, 37.977276, 36.858181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019144, 38.100060, 36.727554>,  <27.753202, 38.304699, 36.509842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019144, 38.100060, 36.727554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332096, 0.450226, 0.828860,
		-0.669092, -0.731822, 0.129434,
		0.664852, -0.511599, 0.544278,
		28.218599, 37.946579, 36.890839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365988, 37.906067, 36.964363>,  <27.753202, 38.304699, 36.509842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365988, 37.906067, 36.964363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724163, 37.931431, 37.140621>,  <27.939068, 37.946648, 37.246376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724163, 37.931431, 37.140621>,  <27.365988, 37.906067, 36.964363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724163, 37.931431, 37.140621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431659, 0.365774, 0.824548,
		-0.108893, -0.928541, 0.354899,
		0.895440, 0.063408, 0.440644,
		27.992796, 37.950455, 37.272816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200598, 37.672024, 37.608856>,  <27.365988, 37.906067, 36.964363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200598, 37.672024, 37.608856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556046, 37.853245, 37.637413>,  <27.769314, 37.961979, 37.654545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556046, 37.853245, 37.637413>,  <27.200598, 37.672024, 37.608856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556046, 37.853245, 37.637413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254753, 0.358132, 0.898244,
		0.381394, -0.816381, 0.433661,
		0.888617, 0.453061, 0.071386,
		27.822632, 37.989162, 37.658829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588997, 37.436844, 38.185539>,  <27.200598, 37.672024, 37.608856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588997, 37.436844, 38.185539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750145, 37.794682, 38.108185>,  <27.846834, 38.009384, 38.061771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750145, 37.794682, 38.108185>,  <27.588997, 37.436844, 38.185539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750145, 37.794682, 38.108185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079270, 0.244606, 0.966377,
		0.911818, -0.373993, 0.169459,
		0.402869, 0.894593, -0.193390,
		27.871006, 38.063061, 38.050167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179392, 37.616135, 38.765217>,  <27.588997, 37.436844, 38.185539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179392, 37.616135, 38.765217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060621, 37.966721, 38.613613>,  <27.989359, 38.177071, 38.522652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060621, 37.966721, 38.613613>,  <28.179392, 37.616135, 38.765217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060621, 37.966721, 38.613613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066475, 0.414924, 0.907425,
		0.952584, 0.244242, -0.181464,
		-0.296925, 0.876461, -0.379014,
		27.971544, 38.229660, 38.499908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615562, 38.135834, 38.999790>,  <28.179392, 37.616135, 38.765217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615562, 38.135834, 38.999790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294905, 38.341545, 38.877876>,  <28.102510, 38.464970, 38.804729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294905, 38.341545, 38.877876>,  <28.615562, 38.135834, 38.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294905, 38.341545, 38.877876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039803, 0.462785, 0.885577,
		0.596478, 0.722047, -0.350518,
		-0.801642, 0.514275, -0.304781,
		28.054413, 38.495827, 38.786442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722940, 38.885410, 38.945492>,  <28.615562, 38.135834, 38.999790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722940, 38.885410, 38.945492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327507, 38.869358, 39.003590>,  <28.090248, 38.859726, 39.038448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327507, 38.869358, 39.003590>,  <28.722940, 38.885410, 38.945492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327507, 38.869358, 39.003590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096944, 0.568527, 0.816933,
		-0.115356, 0.821685, -0.558145,
		-0.988582, -0.040129, 0.145240,
		28.030931, 38.857319, 39.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487144, 39.504387, 39.297005>,  <28.722940, 38.885410, 38.945492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487144, 39.504387, 39.297005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158691, 39.283829, 39.355942>,  <27.961620, 39.151493, 39.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158691, 39.283829, 39.355942>,  <28.487144, 39.504387, 39.297005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158691, 39.283829, 39.355942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219070, 0.542878, 0.810735,
		-0.527021, 0.633443, -0.566568,
		-0.821132, -0.551393, 0.147340,
		27.912352, 39.118412, 39.400143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879475, 39.994698, 39.251301>,  <28.487144, 39.504387, 39.297005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879475, 39.994698, 39.251301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810774, 39.663979, 39.465557>,  <27.769554, 39.465549, 39.594112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810774, 39.663979, 39.465557>,  <27.879475, 39.994698, 39.251301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810774, 39.663979, 39.465557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065519, 0.552107, 0.831195,
		-0.982959, 0.107662, -0.148995,
		-0.171750, -0.826793, 0.535645,
		27.759249, 39.415939, 39.626251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482868, 40.183289, 39.787373>,  <27.879475, 39.994698, 39.251301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482868, 40.183289, 39.787373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552124, 39.821808, 39.944012>,  <27.593678, 39.604919, 40.037994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552124, 39.821808, 39.944012>,  <27.482868, 40.183289, 39.787373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552124, 39.821808, 39.944012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085948, 0.409948, 0.908050,
		-0.981140, -0.123563, 0.148650,
		0.173140, -0.903701, 0.391596,
		27.604067, 39.550697, 40.061489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948883, 40.000427, 40.368977>,  <27.482868, 40.183289, 39.787373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948883, 40.000427, 40.368977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262226, 39.754219, 40.403587>,  <27.450232, 39.606495, 40.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262226, 39.754219, 40.403587>,  <26.948883, 40.000427, 40.368977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262226, 39.754219, 40.403587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064244, 0.218632, 0.973690,
		-0.618242, -0.757189, 0.210810,
		0.783357, -0.615519, 0.086522,
		27.497234, 39.569565, 40.429543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879242, 39.640934, 41.097717>,  <26.948883, 40.000427, 40.368977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879242, 39.640934, 41.097717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266603, 39.647156, 40.998154>,  <27.499020, 39.650890, 40.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266603, 39.647156, 40.998154>,  <26.879242, 39.640934, 41.097717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266603, 39.647156, 40.998154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243876, 0.149693, 0.958184,
		0.052167, -0.988610, 0.141169,
		0.968403, 0.015558, -0.248907,
		27.557125, 39.651825, 40.923481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168446, 39.128304, 41.481152>,  <26.879242, 39.640934, 41.097717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168446, 39.128304, 41.481152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459431, 39.382870, 41.378567>,  <27.634022, 39.535610, 41.317017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459431, 39.382870, 41.378567>,  <27.168446, 39.128304, 41.481152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459431, 39.382870, 41.378567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244223, 0.109137, 0.963558,
		0.641212, -0.763588, -0.076033,
		0.727463, 0.636414, -0.256465,
		27.677670, 39.573795, 41.301628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874603, 38.905956, 41.681808>,  <27.168446, 39.128304, 41.481152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874603, 38.905956, 41.681808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909767, 39.302372, 41.641575>,  <27.930866, 39.540222, 41.617435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909767, 39.302372, 41.641575>,  <27.874603, 38.905956, 41.681808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909767, 39.302372, 41.641575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273478, 0.073082, 0.959098,
		0.957852, -0.111822, -0.264602,
		0.087911, 0.991037, -0.100583,
		27.936140, 39.599682, 41.611401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344242, 39.071121, 42.196133>,  <27.874603, 38.905956, 41.681808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344242, 39.071121, 42.196133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276634, 39.442516, 42.063866>,  <28.236071, 39.665352, 41.984505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276634, 39.442516, 42.063866>,  <28.344242, 39.071121, 42.196133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276634, 39.442516, 42.063866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206586, 0.361419, 0.909230,
		0.963719, 0.085363, -0.252899,
		-0.169018, 0.928488, -0.330672,
		28.225929, 39.721062, 41.964664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854654, 39.503395, 42.323895>,  <28.344242, 39.071121, 42.196133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854654, 39.503395, 42.323895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579424, 39.790462, 42.280998>,  <28.414286, 39.962704, 42.255260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579424, 39.790462, 42.280998>,  <28.854654, 39.503395, 42.323895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579424, 39.790462, 42.280998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286265, 0.404266, 0.868690,
		0.666787, 0.567025, -0.483609,
		-0.688075, 0.717671, -0.107240,
		28.373001, 40.005764, 42.248825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190744, 40.229153, 42.358528>,  <28.854654, 39.503395, 42.323895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190744, 40.229153, 42.358528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813921, 40.236481, 42.492508>,  <28.587828, 40.240879, 42.572895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813921, 40.236481, 42.492508>,  <29.190744, 40.229153, 42.358528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813921, 40.236481, 42.492508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308387, 0.440201, 0.843280,
		-0.131994, 0.897712, -0.420345,
		-0.942059, 0.018321, 0.334947,
		28.531303, 40.241978, 42.592991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160805, 40.866978, 42.670879>,  <29.190744, 40.229153, 42.358528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160805, 40.866978, 42.670879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841583, 40.671799, 42.812313>,  <28.650051, 40.554691, 42.897171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841583, 40.671799, 42.812313>,  <29.160805, 40.866978, 42.670879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841583, 40.671799, 42.812313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172977, 0.376570, 0.910096,
		-0.577228, 0.787465, -0.216118,
		-0.798052, -0.487949, 0.353580,
		28.602167, 40.525414, 42.918388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767365, 41.331707, 42.980698>,  <29.160805, 40.866978, 42.670879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767365, 41.331707, 42.980698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659662, 40.981834, 43.141907>,  <28.595041, 40.771912, 43.238632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659662, 40.981834, 43.141907>,  <28.767365, 41.331707, 42.980698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659662, 40.981834, 43.141907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116282, 0.385889, 0.915188,
		-0.956023, 0.293285, -0.002193,
		-0.269257, -0.874685, 0.403022,
		28.578886, 40.719429, 43.262814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379906, 41.455158, 43.510784>,  <28.767365, 41.331707, 42.980698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379906, 41.455158, 43.510784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571722, 41.110470, 43.577099>,  <28.686811, 40.903656, 43.616886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571722, 41.110470, 43.577099>,  <28.379906, 41.455158, 43.510784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571722, 41.110470, 43.577099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325353, 0.350055, 0.878411,
		-0.814977, -0.367293, 0.448227,
		0.479539, -0.861717, 0.165787,
		28.715584, 40.851955, 43.626835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673590, 41.503639, 44.023075>,  <28.379906, 41.455158, 43.510784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673590, 41.503639, 44.023075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957560, 41.521435, 44.304222>,  <28.127941, 41.532112, 44.472912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957560, 41.521435, 44.304222>,  <27.673590, 41.503639, 44.023075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957560, 41.521435, 44.304222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084924, -0.996128, -0.022731,
		0.699137, 0.075828, -0.710955,
		0.709926, 0.044485, 0.702870,
		28.170538, 41.534779, 44.515083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888107, 41.353786, 43.970585>,  <27.673590, 41.503639, 44.023075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888107, 41.353786, 43.970585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974636, 40.972485, 44.054966>,  <27.026554, 40.743702, 44.105595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974636, 40.972485, 44.054966>,  <26.888107, 41.353786, 43.970585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974636, 40.972485, 44.054966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532333, 0.296288, 0.792991,
		-0.818429, -0.059245, 0.571545,
		0.216323, -0.953259, 0.210953,
		27.039534, 40.686508, 44.118252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614574, 40.998302, 44.548977>,  <26.888107, 41.353786, 43.970585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614574, 40.998302, 44.548977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994709, 40.907307, 44.464020>,  <27.222790, 40.852711, 44.413048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994709, 40.907307, 44.464020>,  <26.614574, 40.998302, 44.548977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994709, 40.907307, 44.464020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294833, 0.439522, 0.848466,
		-0.099667, -0.868948, 0.484765,
		0.950337, -0.227488, -0.212388,
		27.279810, 40.839062, 44.400303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996687, 40.768593, 45.121086>,  <26.614574, 40.998302, 44.548977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996687, 40.768593, 45.121086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261131, 40.905922, 44.854233>,  <27.419798, 40.988319, 44.694122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261131, 40.905922, 44.854233>,  <26.996687, 40.768593, 45.121086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261131, 40.905922, 44.854233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465439, 0.509738, 0.723557,
		0.588475, -0.788859, 0.177197,
		0.661109, 0.343320, -0.667134,
		27.459465, 41.008919, 44.654095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677010, 40.492691, 45.282017>,  <26.996687, 40.768593, 45.121086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677010, 40.492691, 45.282017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689894, 40.847988, 45.098724>,  <27.697624, 41.061169, 44.988747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689894, 40.847988, 45.098724>,  <27.677010, 40.492691, 45.282017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689894, 40.847988, 45.098724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486865, 0.386457, 0.783335,
		0.872883, -0.248329, -0.420009,
		0.032209, 0.888247, -0.458235,
		27.699556, 41.114464, 44.961254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191574, 40.197533, 45.651081>,  <27.677010, 40.492691, 45.282017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191574, 40.197533, 45.651081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361338, 40.302143, 45.997833>,  <28.463196, 40.364910, 46.205883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361338, 40.302143, 45.997833>,  <28.191574, 40.197533, 45.651081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361338, 40.302143, 45.997833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265582, -0.951228, 0.156947,
		0.865645, 0.163617, -0.473168,
		0.424411, 0.261525, 0.866879,
		28.488661, 40.380600, 46.257896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944084, 40.116276, 45.596264>,  <28.191574, 40.197533, 45.651081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944084, 40.116276, 45.596264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733517, 40.040684, 45.927845>,  <28.607176, 39.995327, 46.126793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733517, 40.040684, 45.927845>,  <28.944084, 40.116276, 45.596264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733517, 40.040684, 45.927845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010393, -0.976343, -0.215979,
		0.850162, -0.105080, 0.515929,
		-0.526418, -0.188979, 0.828958,
		28.575592, 39.983990, 46.176533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410421, 39.818085, 46.012524>,  <28.944084, 40.116276, 45.596264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410421, 39.818085, 46.012524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017593, 39.743469, 46.023418>,  <28.781897, 39.698700, 46.029953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017593, 39.743469, 46.023418>,  <29.410421, 39.818085, 46.012524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017593, 39.743469, 46.023418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169544, -0.937123, -0.305049,
		0.082426, -0.294962, 0.951947,
		-0.982070, -0.186541, 0.027235,
		28.722973, 39.687508, 46.031590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336267, 39.160526, 46.351345>,  <29.410421, 39.818085, 46.012524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336267, 39.160526, 46.351345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020613, 39.218567, 46.112614>,  <28.831219, 39.253391, 45.969376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020613, 39.218567, 46.112614>,  <29.336267, 39.160526, 46.351345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020613, 39.218567, 46.112614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169630, -0.882420, -0.438818,
		-0.590327, -0.447528, 0.671738,
		-0.789139, 0.145099, -0.596830,
		28.783871, 39.262096, 45.933563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781551, 38.594418, 46.321365>,  <29.336267, 39.160526, 46.351345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781551, 38.594418, 46.321365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788652, 38.783100, 45.968735>,  <28.792913, 38.896309, 45.757156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788652, 38.783100, 45.968735>,  <28.781551, 38.594418, 46.321365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788652, 38.783100, 45.968735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266045, -0.852156, -0.450611,
		-0.963797, -0.226539, -0.140623,
		0.017752, 0.471709, -0.881576,
		28.793978, 38.924614, 45.704262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677023, 38.062469, 45.833626>,  <28.781551, 38.594418, 46.321365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677023, 38.062469, 45.833626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759062, 38.358620, 45.577572>,  <28.808285, 38.536308, 45.423939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759062, 38.358620, 45.577572>,  <28.677023, 38.062469, 45.833626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759062, 38.358620, 45.577572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157890, -0.670506, -0.724909,
		-0.965922, 0.047607, -0.254419,
		0.205100, 0.740375, -0.640140,
		28.820591, 38.580730, 45.385529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198124, 37.924221, 45.283291>,  <28.677023, 38.062469, 45.833626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198124, 37.924221, 45.283291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503836, 38.129143, 45.126614>,  <28.687262, 38.252094, 45.032608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503836, 38.129143, 45.126614>,  <28.198124, 37.924221, 45.283291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503836, 38.129143, 45.126614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168713, -0.745067, -0.645299,
		-0.622428, 0.427104, -0.655871,
		0.764277, 0.512305, -0.391693,
		28.733118, 38.282833, 45.009106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213692, 37.667576, 44.626015>,  <28.198124, 37.924221, 45.283291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213692, 37.667576, 44.626015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578175, 37.830681, 44.649429>,  <28.796865, 37.928543, 44.663479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578175, 37.830681, 44.649429>,  <28.213692, 37.667576, 44.626015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578175, 37.830681, 44.649429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374115, -0.759651, -0.531948,
		-0.172439, 0.506616, -0.844751,
		0.911210, 0.407762, 0.058539,
		28.851538, 37.953011, 44.666992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547947, 37.805332, 43.953083>,  <28.213692, 37.667576, 44.626015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547947, 37.805332, 43.953083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865782, 37.737144, 44.186176>,  <29.056482, 37.696232, 44.326031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865782, 37.737144, 44.186176>,  <28.547947, 37.805332, 43.953083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865782, 37.737144, 44.186176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403248, -0.569346, -0.716405,
		0.453900, 0.804230, -0.383652,
		0.794585, -0.170470, 0.582730,
		29.104156, 37.686005, 44.360996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125439, 37.719921, 43.394508>,  <28.547947, 37.805332, 43.953083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125439, 37.719921, 43.394508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278587, 37.606632, 43.746235>,  <29.370476, 37.538658, 43.957272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278587, 37.606632, 43.746235>,  <29.125439, 37.719921, 43.394508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278587, 37.606632, 43.746235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456492, -0.769507, -0.446624,
		0.803134, 0.572400, -0.165332,
		0.382872, -0.283226, 0.879313,
		29.393450, 37.521664, 44.010029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821795, 37.710938, 43.319519>,  <29.125439, 37.719921, 43.394508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821795, 37.710938, 43.319519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760168, 37.462086, 43.626560>,  <29.723192, 37.312775, 43.810787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760168, 37.462086, 43.626560>,  <29.821795, 37.710938, 43.319519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760168, 37.462086, 43.626560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527281, -0.708782, -0.468618,
		0.835606, 0.332546, 0.437237,
		-0.154068, -0.622127, 0.767607,
		29.713947, 37.275448, 43.856842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402197, 37.336906, 43.458706>,  <29.821795, 37.710938, 43.319519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402197, 37.336906, 43.458706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126001, 37.091759, 43.612389>,  <29.960283, 36.944672, 43.704597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126001, 37.091759, 43.612389>,  <30.402197, 37.336906, 43.458706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126001, 37.091759, 43.612389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476780, -0.785060, -0.395426,
		0.543972, -0.089853, 0.834279,
		-0.690489, -0.612868, 0.384210,
		29.918854, 36.907898, 43.727654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785158, 36.772152, 43.784252>,  <30.402197, 37.336906, 43.458706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785158, 36.772152, 43.784252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410301, 36.634060, 43.763939>,  <30.185387, 36.551205, 43.751751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410301, 36.634060, 43.763939>,  <30.785158, 36.772152, 43.784252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410301, 36.634060, 43.763939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333234, -0.842238, -0.423782,
		0.103535, -0.414065, 0.904340,
		-0.937142, -0.345233, -0.050780,
		30.129158, 36.530491, 43.748703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883331, 36.150433, 44.011951>,  <30.785158, 36.772152, 43.784252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883331, 36.150433, 44.011951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532978, 36.136414, 43.819450>,  <30.322765, 36.128002, 43.703949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532978, 36.136414, 43.819450>,  <30.883331, 36.150433, 44.011951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532978, 36.136414, 43.819450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266960, -0.866007, -0.422805,
		-0.401946, -0.498802, 0.767878,
		-0.875884, -0.035048, -0.481248,
		30.270212, 36.125900, 43.675076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624346, 35.432938, 44.061760>,  <30.883331, 36.150433, 44.011951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624346, 35.432938, 44.061760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462076, 35.607655, 43.740601>,  <30.364714, 35.712482, 43.547905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462076, 35.607655, 43.740601>,  <30.624346, 35.432938, 44.061760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462076, 35.607655, 43.740601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244717, -0.794452, -0.555841,
		-0.880649, -0.421972, 0.215399,
		-0.405674, 0.436789, -0.802897,
		30.340374, 35.738689, 43.499733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218376, 34.897591, 43.760071>,  <30.624346, 35.432938, 44.061760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218376, 34.897591, 43.760071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295177, 35.179642, 43.487034>,  <30.341257, 35.348873, 43.323212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295177, 35.179642, 43.487034>,  <30.218376, 34.897591, 43.760071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295177, 35.179642, 43.487034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143566, -0.708227, -0.691233,
		-0.970837, 0.034721, -0.237214,
		0.192002, 0.705130, -0.682588,
		30.352777, 35.391182, 43.282257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926348, 34.629230, 43.243477>,  <30.218376, 34.897591, 43.760071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926348, 34.629230, 43.243477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161854, 34.916309, 43.094738>,  <30.303158, 35.088554, 43.005493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161854, 34.916309, 43.094738>,  <29.926348, 34.629230, 43.243477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161854, 34.916309, 43.094738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269621, -0.608065, -0.746700,
		-0.762012, 0.339370, -0.551512,
		0.588763, 0.717694, -0.371851,
		30.338482, 35.131618, 42.983181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727234, 34.750191, 42.558186>,  <29.926348, 34.629230, 43.243477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727234, 34.750191, 42.558186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104828, 34.871147, 42.611023>,  <30.331385, 34.943722, 42.642727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104828, 34.871147, 42.611023>,  <29.727234, 34.750191, 42.558186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104828, 34.871147, 42.611023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288563, -0.562288, -0.774961,
		-0.160065, 0.769670, -0.618051,
		0.943987, 0.302391, 0.132095,
		30.388023, 34.961864, 42.650650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029001, 34.553898, 42.007652>,  <29.727234, 34.750191, 42.558186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029001, 34.553898, 42.007652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365049, 34.732559, 42.130745>,  <30.566677, 34.839756, 42.204601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365049, 34.732559, 42.130745>,  <30.029001, 34.553898, 42.007652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365049, 34.732559, 42.130745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431684, -0.207086, -0.877932,
		-0.328404, 0.870411, -0.366790,
		0.840119, 0.446654, 0.307734,
		30.617085, 34.866554, 42.223064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201740, 34.986446, 41.547684>,  <30.029001, 34.553898, 42.007652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201740, 34.986446, 41.547684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537930, 34.858273, 41.722462>,  <30.739643, 34.781368, 41.827328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537930, 34.858273, 41.722462>,  <30.201740, 34.986446, 41.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537930, 34.858273, 41.722462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344629, -0.306154, -0.887412,
		0.418132, 0.896433, -0.146883,
		0.840474, -0.320435, 0.436949,
		30.790071, 34.762142, 41.853546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812433, 35.310390, 41.267475>,  <30.201740, 34.986446, 41.547684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812433, 35.310390, 41.267475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944832, 34.971996, 41.434689>,  <31.024271, 34.768959, 41.535019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944832, 34.971996, 41.434689>,  <30.812433, 35.310390, 41.267475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944832, 34.971996, 41.434689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322100, -0.315108, -0.892725,
		0.886957, 0.430140, 0.168191,
		0.330998, -0.845983, 0.418035,
		31.044132, 34.718201, 41.560101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500809, 35.263344, 41.152554>,  <30.812433, 35.310390, 41.267475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500809, 35.263344, 41.152554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378647, 34.884014, 41.186989>,  <31.305349, 34.656418, 41.207649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378647, 34.884014, 41.186989>,  <31.500809, 35.263344, 41.152554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378647, 34.884014, 41.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428901, -0.217714, -0.876724,
		0.850160, -0.230833, 0.473228,
		-0.305405, -0.948323, 0.086087,
		31.287025, 34.599518, 41.212814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808998, 35.032368, 40.552982>,  <31.500809, 35.263344, 41.152554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808998, 35.032368, 40.552982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589148, 34.720619, 40.673309>,  <31.457237, 34.533569, 40.745506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589148, 34.720619, 40.673309>,  <31.808998, 35.032368, 40.552982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589148, 34.720619, 40.673309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066640, -0.399832, -0.914163,
		0.832749, -0.482400, 0.271695,
		-0.549625, -0.779374, 0.300813,
		31.424259, 34.486809, 40.763554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013920, 34.473652, 40.227634>,  <31.808998, 35.032368, 40.552982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013920, 34.473652, 40.227634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669949, 34.324554, 40.367115>,  <31.463566, 34.235096, 40.450802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669949, 34.324554, 40.367115>,  <32.013920, 34.473652, 40.227634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669949, 34.324554, 40.367115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069845, -0.590801, -0.803789,
		0.505620, -0.715553, 0.482010,
		-0.859924, -0.372746, 0.348699,
		31.411972, 34.212730, 40.471725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153164, 33.812141, 40.185108>,  <32.013920, 34.473652, 40.227634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153164, 33.812141, 40.185108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759590, 33.883366, 40.190346>,  <31.523447, 33.926102, 40.193489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759590, 33.883366, 40.190346>,  <32.153164, 33.812141, 40.185108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759590, 33.883366, 40.190346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125065, -0.635019, -0.762306,
		-0.127419, -0.751696, 0.647085,
		-0.983933, 0.178060, 0.013098,
		31.464411, 33.936783, 40.194275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767574, 33.158733, 40.174023>,  <32.153164, 33.812141, 40.185108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767574, 33.158733, 40.174023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544405, 33.449039, 40.013035>,  <31.410503, 33.623222, 39.916443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544405, 33.449039, 40.013035>,  <31.767574, 33.158733, 40.174023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544405, 33.449039, 40.013035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293014, -0.626003, -0.722677,
		-0.776444, -0.285268, 0.561922,
		-0.557922, 0.725770, -0.402469,
		31.377028, 33.666771, 39.892296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180737, 32.799011, 40.013355>,  <31.767574, 33.158733, 40.174023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180737, 32.799011, 40.013355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142540, 33.128475, 39.789761>,  <31.119621, 33.326153, 39.655602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142540, 33.128475, 39.789761>,  <31.180737, 32.799011, 40.013355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142540, 33.128475, 39.789761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328777, -0.556137, -0.763294,
		-0.939568, 0.110895, 0.323905,
		-0.095490, 0.823658, -0.558989,
		31.113894, 33.375572, 39.622063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496395, 32.790691, 39.703426>,  <31.180737, 32.799011, 40.013355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496395, 32.790691, 39.703426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687517, 33.045059, 39.461002>,  <30.802191, 33.197681, 39.315548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687517, 33.045059, 39.461002>,  <30.496395, 32.790691, 39.703426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687517, 33.045059, 39.461002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369146, -0.480690, -0.795404,
		-0.797141, 0.603771, 0.005072,
		0.477804, 0.635922, -0.606058,
		30.830858, 33.235836, 39.279186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978426, 32.916786, 39.215473>,  <30.496395, 32.790691, 39.703426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978426, 32.916786, 39.215473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323973, 33.032150, 39.050282>,  <30.531301, 33.101368, 38.951164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323973, 33.032150, 39.050282>,  <29.978426, 32.916786, 39.215473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323973, 33.032150, 39.050282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344231, -0.260550, -0.902008,
		-0.367751, 0.921376, -0.125801,
		0.863866, 0.288409, -0.412983,
		30.583132, 33.118671, 38.926388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801237, 33.393234, 38.745613>,  <29.978426, 32.916786, 39.215473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801237, 33.393234, 38.745613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152788, 33.265858, 38.603535>,  <30.363718, 33.189430, 38.518288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152788, 33.265858, 38.603535>,  <29.801237, 33.393234, 38.745613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152788, 33.265858, 38.603535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437298, -0.240241, -0.866634,
		0.190642, 0.916993, -0.350398,
		0.878878, -0.318445, -0.355200,
		30.416452, 33.170322, 38.496975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941595, 33.784912, 38.112236>,  <29.801237, 33.393234, 38.745613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941595, 33.784912, 38.112236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180790, 33.464741, 38.095604>,  <30.324306, 33.272636, 38.085625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180790, 33.464741, 38.095604>,  <29.941595, 33.784912, 38.112236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180790, 33.464741, 38.095604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265763, -0.149073, -0.952443,
		0.756164, 0.580596, -0.301868,
		0.597985, -0.800428, -0.041577,
		30.360186, 33.224613, 38.083130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374311, 33.908840, 37.545128>,  <29.941595, 33.784912, 38.112236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374311, 33.908840, 37.545128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400444, 33.515598, 37.613518>,  <30.416124, 33.279652, 37.654552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400444, 33.515598, 37.613518>,  <30.374311, 33.908840, 37.545128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400444, 33.515598, 37.613518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127391, -0.178156, -0.975721,
		0.989698, 0.041967, -0.136879,
		0.065333, -0.983107, 0.170975,
		30.420044, 33.220665, 37.664810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581968, 33.684155, 36.947826>,  <30.374311, 33.908840, 37.545128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581968, 33.684155, 36.947826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508711, 33.315079, 37.083534>,  <30.464756, 33.093636, 37.164959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508711, 33.315079, 37.083534>,  <30.581968, 33.684155, 36.947826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508711, 33.315079, 37.083534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239273, -0.292896, -0.925722,
		0.953523, -0.250719, -0.167132,
		-0.183143, -0.922688, 0.339273,
		30.453768, 33.038273, 37.185318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006361, 33.217613, 36.608383>,  <30.581968, 33.684155, 36.947826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006361, 33.217613, 36.608383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671516, 33.034904, 36.728786>,  <30.470610, 32.925278, 36.801029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671516, 33.034904, 36.728786>,  <31.006361, 33.217613, 36.608383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671516, 33.034904, 36.728786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145472, -0.344557, -0.927426,
		0.527336, -0.820146, 0.221985,
		-0.837111, -0.456773, 0.301006,
		30.420383, 32.897873, 36.819088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047827, 32.474823, 36.325657>,  <31.006361, 33.217613, 36.608383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047827, 32.474823, 36.325657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659193, 32.531898, 36.401203>,  <30.426014, 32.566143, 36.446529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659193, 32.531898, 36.401203>,  <31.047827, 32.474823, 36.325657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659193, 32.531898, 36.401203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236186, -0.531693, -0.813338,
		-0.015637, -0.834831, 0.550284,
		-0.971582, 0.142688, 0.188861,
		30.367718, 32.574703, 36.457863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738279, 31.850340, 36.238579>,  <31.047827, 32.474823, 36.325657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738279, 31.850340, 36.238579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435270, 32.110416, 36.215214>,  <30.253466, 32.266460, 36.201195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435270, 32.110416, 36.215214>,  <30.738279, 31.850340, 36.238579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435270, 32.110416, 36.215214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324660, -0.452851, -0.830374,
		-0.566354, -0.610063, 0.554136,
		-0.757521, 0.650191, -0.058411,
		30.208014, 32.305473, 36.197689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950909, 31.544680, 36.098640>,  <30.738279, 31.850340, 36.238579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950909, 31.544680, 36.098640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020678, 31.914124, 35.962101>,  <30.062538, 32.135792, 35.880177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020678, 31.914124, 35.962101>,  <29.950909, 31.544680, 36.098640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020678, 31.914124, 35.962101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452914, -0.232563, -0.860688,
		-0.874326, 0.304725, 0.377752,
		0.174422, 0.923611, -0.341351,
		30.073004, 32.191208, 35.859695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521601, 31.522591, 35.519135>,  <29.950909, 31.544680, 36.098640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521601, 31.522591, 35.519135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716690, 31.866800, 35.460316>,  <29.833744, 32.073326, 35.425026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716690, 31.866800, 35.460316>,  <29.521601, 31.522591, 35.519135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716690, 31.866800, 35.460316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178531, -0.066559, -0.981681,
		-0.854548, 0.505041, 0.121168,
		0.487724, 0.860525, -0.147043,
		29.863007, 32.124958, 35.416203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188780, 31.805462, 35.017384>,  <29.521601, 31.522591, 35.519135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188780, 31.805462, 35.017384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526945, 32.018658, 35.031239>,  <29.729843, 32.146576, 35.039551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526945, 32.018658, 35.031239>,  <29.188780, 31.805462, 35.017384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526945, 32.018658, 35.031239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034808, 0.009736, -0.999347,
		-0.532981, 0.846065, -0.010321,
		0.845411, 0.532992, 0.034639,
		29.780569, 32.178555, 35.041630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152931, 32.387226, 34.475632>,  <29.188780, 31.805462, 35.017384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152931, 32.387226, 34.475632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543461, 32.341061, 34.548805>,  <29.777779, 32.313362, 34.592709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543461, 32.341061, 34.548805>,  <29.152931, 32.387226, 34.475632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543461, 32.341061, 34.548805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184384, 0.001888, -0.982852,
		0.113092, 0.993315, 0.023124,
		0.976326, -0.115417, 0.182938,
		29.836359, 32.306435, 34.603687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542336, 32.945332, 34.025429>,  <29.152931, 32.387226, 34.475632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542336, 32.945332, 34.025429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792238, 32.652786, 34.134815>,  <29.942179, 32.477257, 34.200447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792238, 32.652786, 34.134815>,  <29.542336, 32.945332, 34.025429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792238, 32.652786, 34.134815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233680, -0.159042, -0.959218,
		0.745033, 0.663180, 0.071544,
		0.624755, -0.731368, 0.273463,
		29.979666, 32.433376, 34.216854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116861, 33.090527, 33.606602>,  <29.542336, 32.945332, 34.025429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116861, 33.090527, 33.606602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151909, 32.708355, 33.719364>,  <30.172937, 32.479050, 33.787022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151909, 32.708355, 33.719364>,  <30.116861, 33.090527, 33.606602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151909, 32.708355, 33.719364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349805, -0.235461, -0.906749,
		0.932716, 0.178061, 0.313584,
		0.087620, -0.955433, 0.281904,
		30.178194, 32.421726, 33.803936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814907, 32.794186, 33.616241>,  <30.116861, 33.090527, 33.606602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814907, 32.794186, 33.616241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574844, 32.481163, 33.550014>,  <30.430807, 32.293350, 33.510277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574844, 32.481163, 33.550014>,  <30.814907, 32.794186, 33.616241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574844, 32.481163, 33.550014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507692, -0.212723, -0.834864,
		0.618110, -0.585107, 0.524966,
		-0.600158, -0.782559, -0.165568,
		30.394796, 32.246395, 33.500343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161224, 32.273159, 33.376606>,  <30.814907, 32.794186, 33.616241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161224, 32.273159, 33.376606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812563, 32.126743, 33.246235>,  <30.603365, 32.038895, 33.168011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812563, 32.126743, 33.246235>,  <31.161224, 32.273159, 33.376606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812563, 32.126743, 33.246235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448447, -0.327297, -0.831728,
		0.197771, -0.871143, 0.449441,
		-0.871655, -0.366043, -0.325932,
		30.551067, 32.016930, 33.148457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952827, 32.011280, 33.402760>,  <31.161224, 32.273159, 33.376606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952827, 32.011280, 33.402760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256355, 31.752790, 33.370285>,  <32.438473, 31.597698, 33.350800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256355, 31.752790, 33.370285>,  <31.952827, 32.011280, 33.402760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256355, 31.752790, 33.370285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219040, 0.135816, 0.966217,
		-0.613362, -0.750968, 0.244608,
		0.758820, -0.646220, -0.081187,
		32.484001, 31.558924, 33.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883244, 31.558147, 33.966583>,  <31.952827, 32.011280, 33.402760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883244, 31.558147, 33.966583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267529, 31.557550, 33.855564>,  <32.498100, 31.557192, 33.788952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267529, 31.557550, 33.855564>,  <31.883244, 31.558147, 33.966583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267529, 31.557550, 33.855564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276972, 0.069547, 0.958358,
		0.017869, -0.997578, 0.067229,
		0.960712, -0.001496, -0.277544,
		32.555740, 31.557102, 33.772301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162086, 31.121355, 34.419910>,  <31.883244, 31.558147, 33.966583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162086, 31.121355, 34.419910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485043, 31.322124, 34.295845>,  <32.678814, 31.442587, 34.221405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485043, 31.322124, 34.295845>,  <32.162086, 31.121355, 34.419910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485043, 31.322124, 34.295845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248372, 0.187708, 0.950304,
		0.535200, -0.844297, 0.026889,
		0.807386, 0.501924, -0.310161,
		32.727257, 31.472702, 34.202797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684113, 30.778095, 34.720306>,  <32.162086, 31.121355, 34.419910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684113, 30.778095, 34.720306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842285, 31.133453, 34.627022>,  <32.937187, 31.346668, 34.571049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842285, 31.133453, 34.627022>,  <32.684113, 30.778095, 34.720306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842285, 31.133453, 34.627022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317191, 0.106208, 0.942396,
		0.861990, -0.446623, -0.239794,
		0.395427, 0.888396, -0.233214,
		32.960915, 31.399973, 34.557056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337688, 30.860167, 35.039383>,  <32.684113, 30.778095, 34.720306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337688, 30.860167, 35.039383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264843, 31.246389, 34.965046>,  <33.221134, 31.478123, 34.920444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264843, 31.246389, 34.965046>,  <33.337688, 30.860167, 35.039383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264843, 31.246389, 34.965046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531435, 0.255671, 0.807595,
		0.827291, 0.048314, -0.559692,
		-0.182115, 0.965556, -0.185839,
		33.210209, 31.536057, 34.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962875, 31.180269, 35.111488>,  <33.337688, 30.860167, 35.039383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962875, 31.180269, 35.111488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699329, 31.474388, 35.175026>,  <33.541203, 31.650860, 35.213146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699329, 31.474388, 35.175026>,  <33.962875, 31.180269, 35.111488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699329, 31.474388, 35.175026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566097, 0.345583, 0.748403,
		0.495405, 0.583019, -0.643943,
		-0.658869, 0.735296, 0.158842,
		33.501667, 31.694977, 35.222679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316219, 31.797775, 35.180393>,  <33.962875, 31.180269, 35.111488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316219, 31.797775, 35.180393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967175, 31.877188, 35.358894>,  <33.757748, 31.924835, 35.465996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967175, 31.877188, 35.358894>,  <34.316219, 31.797775, 35.180393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967175, 31.877188, 35.358894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482827, 0.488522, 0.726790,
		-0.073716, 0.849666, -0.522143,
		-0.872607, 0.198529, 0.446254,
		33.705391, 31.936747, 35.492771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340065, 32.497288, 35.505535>,  <34.316219, 31.797775, 35.180393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340065, 32.497288, 35.505535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035900, 32.326023, 35.700859>,  <33.853401, 32.223263, 35.818054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035900, 32.326023, 35.700859>,  <34.340065, 32.497288, 35.505535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035900, 32.326023, 35.700859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365050, 0.340070, 0.866655,
		-0.537130, 0.837274, -0.102292,
		-0.760414, -0.428165, 0.488309,
		33.807777, 32.197575, 35.847351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129223, 33.016602, 36.028034>,  <34.340065, 32.497288, 35.505535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129223, 33.016602, 36.028034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978718, 32.662693, 36.138020>,  <33.888412, 32.450348, 36.204010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978718, 32.662693, 36.138020>,  <34.129223, 33.016602, 36.028034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978718, 32.662693, 36.138020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156697, 0.231727, 0.960077,
		-0.913164, 0.404331, 0.051450,
		-0.376267, -0.884770, 0.274962,
		33.865837, 32.397263, 36.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533573, 33.142368, 36.408489>,  <34.129223, 33.016602, 36.028034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533573, 33.142368, 36.408489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659702, 32.784351, 36.534641>,  <33.735382, 32.569542, 36.610332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659702, 32.784351, 36.534641>,  <33.533573, 33.142368, 36.408489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659702, 32.784351, 36.534641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001644, 0.332852, 0.942978,
		-0.948983, -0.296825, 0.106428,
		0.315324, -0.895044, 0.315383,
		33.754299, 32.515839, 36.629257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209370, 33.085815, 37.038586>,  <33.533573, 33.142368, 36.408489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209370, 33.085815, 37.038586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463005, 32.777561, 37.064072>,  <33.615185, 32.592609, 37.079365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463005, 32.777561, 37.064072>,  <33.209370, 33.085815, 37.038586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463005, 32.777561, 37.064072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075362, 0.143591, 0.986763,
		-0.769581, -0.620891, 0.149126,
		0.634086, -0.770633, 0.063714,
		33.653233, 32.546371, 37.083187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914051, 32.696079, 37.594589>,  <33.209370, 33.085815, 37.038586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914051, 32.696079, 37.594589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301517, 32.608078, 37.548496>,  <33.533997, 32.555279, 37.520840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301517, 32.608078, 37.548496>,  <32.914051, 32.696079, 37.594589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301517, 32.608078, 37.548496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129587, 0.051904, 0.990209,
		-0.211866, -0.974118, 0.078787,
		0.968669, -0.220001, -0.115236,
		33.592117, 32.542076, 37.513924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055740, 32.159615, 38.076221>,  <32.914051, 32.696079, 37.594589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055740, 32.159615, 38.076221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400997, 32.346455, 37.999493>,  <33.608150, 32.458557, 37.953457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400997, 32.346455, 37.999493>,  <33.055740, 32.159615, 38.076221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400997, 32.346455, 37.999493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081088, 0.246733, 0.965685,
		0.498400, -0.849082, 0.175090,
		0.863146, 0.467100, -0.191822,
		33.659943, 32.486584, 37.941944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654491, 31.883854, 38.477638>,  <33.055740, 32.159615, 38.076221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654491, 31.883854, 38.477638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747269, 32.263752, 38.393559>,  <33.802937, 32.491692, 38.343109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747269, 32.263752, 38.393559>,  <33.654491, 31.883854, 38.477638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747269, 32.263752, 38.393559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170645, 0.173016, 0.970024,
		0.957644, -0.260863, -0.121938,
		0.231946, 0.949745, -0.210203,
		33.816853, 32.548676, 38.330498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148071, 32.000046, 38.825836>,  <33.654491, 31.883854, 38.477638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148071, 32.000046, 38.825836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041710, 32.381435, 38.769005>,  <33.977894, 32.610268, 38.734905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041710, 32.381435, 38.769005>,  <34.148071, 32.000046, 38.825836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041710, 32.381435, 38.769005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361143, 0.235178, 0.902367,
		0.893795, 0.188636, -0.406875,
		-0.265907, 0.953471, -0.142076,
		33.961937, 32.667477, 38.726383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757751, 32.336273, 39.174755>,  <34.148071, 32.000046, 38.825836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757751, 32.336273, 39.174755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478767, 32.619762, 39.132286>,  <34.311378, 32.789856, 39.106804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478767, 32.619762, 39.132286>,  <34.757751, 32.336273, 39.174755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478767, 32.619762, 39.132286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264651, 0.392411, 0.880894,
		0.665970, 0.586285, -0.461252,
		-0.697456, 0.708719, -0.106173,
		34.269531, 32.832378, 39.100433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071064, 33.064301, 39.386059>,  <34.757751, 32.336273, 39.174755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071064, 33.064301, 39.386059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674324, 33.096470, 39.425591>,  <34.436279, 33.115772, 39.449310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674324, 33.096470, 39.425591>,  <35.071064, 33.064301, 39.386059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674324, 33.096470, 39.425591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120622, 0.342653, 0.931686,
		0.041067, 0.936013, -0.349561,
		-0.991849, 0.080427, 0.098832,
		34.376770, 33.120598, 39.455238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984604, 33.692257, 39.756317>,  <35.071064, 33.064301, 39.386059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984604, 33.692257, 39.756317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615673, 33.540085, 39.783405>,  <34.394314, 33.448780, 39.799656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615673, 33.540085, 39.783405>,  <34.984604, 33.692257, 39.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615673, 33.540085, 39.783405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113999, 0.435340, 0.893019,
		-0.369216, 0.815934, -0.444894,
		-0.922325, -0.380434, 0.067719,
		34.338974, 33.425953, 39.803722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464443, 34.268429, 39.843136>,  <34.984604, 33.692257, 39.756317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464443, 34.268429, 39.843136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318626, 33.935749, 40.010654>,  <34.231136, 33.736141, 40.111168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318626, 33.935749, 40.010654>,  <34.464443, 34.268429, 39.843136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318626, 33.935749, 40.010654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219256, 0.513766, 0.829440,
		-0.905007, 0.210539, -0.369643,
		-0.364539, -0.831696, 0.418800,
		34.209263, 33.686241, 40.136295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741623, 34.382381, 40.135406>,  <34.464443, 34.268429, 39.843136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741623, 34.382381, 40.135406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884983, 34.063705, 40.330067>,  <33.971001, 33.872498, 40.446861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884983, 34.063705, 40.330067>,  <33.741623, 34.382381, 40.135406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884983, 34.063705, 40.330067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326335, 0.381479, 0.864858,
		-0.874672, -0.468779, -0.123265,
		0.358405, -0.796693, 0.486648,
		33.992504, 33.824699, 40.476063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170731, 34.136860, 40.470474>,  <33.741623, 34.382381, 40.135406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170731, 34.136860, 40.470474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458897, 33.956882, 40.681587>,  <33.631798, 33.848896, 40.808254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458897, 33.956882, 40.681587>,  <33.170731, 34.136860, 40.470474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458897, 33.956882, 40.681587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427108, 0.311734, 0.848764,
		-0.546421, -0.836884, 0.032405,
		0.720419, -0.449942, 0.527778,
		33.675022, 33.821899, 40.839920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822479, 34.047073, 41.008533>,  <33.170731, 34.136860, 40.470474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822479, 34.047073, 41.008533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197083, 33.983356, 41.133480>,  <33.421844, 33.945126, 41.208447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197083, 33.983356, 41.133480>,  <32.822479, 34.047073, 41.008533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197083, 33.983356, 41.133480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225910, 0.407184, 0.884967,
		-0.268161, -0.899348, 0.345346,
		0.936512, -0.159296, 0.312363,
		33.478035, 33.935566, 41.227188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718460, 33.764843, 41.645229>,  <32.822479, 34.047073, 41.008533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718460, 33.764843, 41.645229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094902, 33.899815, 41.653740>,  <33.320766, 33.980797, 41.658848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094902, 33.899815, 41.653740>,  <32.718460, 33.764843, 41.645229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094902, 33.899815, 41.653740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139091, 0.329025, 0.934022,
		0.308163, -0.881978, 0.356582,
		0.941111, 0.337429, 0.021282,
		33.377235, 34.001045, 41.660126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964348, 33.513065, 42.280201>,  <32.718460, 33.764843, 41.645229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964348, 33.513065, 42.280201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200981, 33.815067, 42.167072>,  <33.342960, 33.996269, 42.099194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200981, 33.815067, 42.167072>,  <32.964348, 33.513065, 42.280201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200981, 33.815067, 42.167072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001079, 0.350052, 0.936730,
		0.806242, -0.554461, 0.206271,
		0.591585, 0.755008, -0.282825,
		33.378456, 34.041569, 42.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349171, 33.679962, 42.896019>,  <32.964348, 33.513065, 42.280201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349171, 33.679962, 42.896019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372536, 34.005489, 42.664749>,  <33.386555, 34.200806, 42.525990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372536, 34.005489, 42.664749>,  <33.349171, 33.679962, 42.896019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372536, 34.005489, 42.664749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040106, 0.580605, 0.813197,
		0.997487, -0.024311, 0.066552,
		0.058410, 0.813823, -0.578170,
		33.390060, 34.249638, 42.491299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863556, 34.158195, 43.288937>,  <33.349171, 33.679962, 42.896019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863556, 34.158195, 43.288937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652042, 34.366287, 43.020683>,  <33.525135, 34.491142, 42.859734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652042, 34.366287, 43.020683>,  <33.863556, 34.158195, 43.288937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652042, 34.366287, 43.020683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067526, 0.761844, 0.644231,
		0.846065, 0.385946, -0.367724,
		-0.528786, 0.520230, -0.670631,
		33.493408, 34.522358, 42.819492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116116, 34.919922, 43.358704>,  <33.863556, 34.158195, 43.288937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116116, 34.919922, 43.358704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758324, 34.909065, 43.180187>,  <33.543648, 34.902550, 43.073078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758324, 34.909065, 43.180187>,  <34.116116, 34.919922, 43.358704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758324, 34.909065, 43.180187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275595, 0.819462, 0.502523,
		0.352077, 0.572491, -0.740470,
		-0.894477, -0.027142, -0.446289,
		33.489979, 34.900921, 43.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903419, 35.639610, 43.246861>,  <34.116116, 34.919922, 43.358704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903419, 35.639610, 43.246861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561455, 35.436691, 43.203457>,  <33.356274, 35.314941, 43.177414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561455, 35.436691, 43.203457>,  <33.903419, 35.639610, 43.246861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561455, 35.436691, 43.203457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512196, 0.792220, 0.331727,
		-0.082324, 0.339174, -0.937114,
		-0.854914, -0.507296, -0.108505,
		33.304981, 35.284504, 43.170906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496456, 36.084782, 42.876892>,  <33.903419, 35.639610, 43.246861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496456, 36.084782, 42.876892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254196, 35.827511, 43.064301>,  <33.108841, 35.673149, 43.176746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254196, 35.827511, 43.064301>,  <33.496456, 36.084782, 42.876892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254196, 35.827511, 43.064301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548740, 0.763986, 0.339426,
		-0.576254, -0.051523, -0.815645,
		-0.605653, -0.643173, 0.468522,
		33.072498, 35.634560, 43.204857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704967, 36.331924, 42.767101>,  <33.496456, 36.084782, 42.876892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704967, 36.331924, 42.767101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748817, 36.112888, 43.098915>,  <32.775127, 35.981468, 43.298004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748817, 36.112888, 43.098915>,  <32.704967, 36.331924, 42.767101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748817, 36.112888, 43.098915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306034, 0.775431, 0.552313,
		-0.945688, -0.314414, -0.082574,
		0.109625, -0.547586, 0.829537,
		32.781704, 35.948612, 43.347775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091854, 36.523235, 43.237061>,  <32.704967, 36.331924, 42.767101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091854, 36.523235, 43.237061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349606, 36.336952, 43.479679>,  <32.504257, 36.225182, 43.625248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349606, 36.336952, 43.479679>,  <32.091854, 36.523235, 43.237061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349606, 36.336952, 43.479679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233836, 0.635179, 0.736118,
		-0.728080, -0.616168, 0.300394,
		0.644376, -0.465710, 0.606543,
		32.542919, 36.197239, 43.661640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772135, 36.474079, 43.987606>,  <32.091854, 36.523235, 43.237061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772135, 36.474079, 43.987606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163410, 36.418732, 44.049576>,  <32.398174, 36.385521, 44.086758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163410, 36.418732, 44.049576>,  <31.772135, 36.474079, 43.987606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163410, 36.418732, 44.049576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015558, 0.694938, 0.718901,
		-0.207142, -0.705630, 0.677627,
		0.978187, -0.138372, 0.154929,
		32.456867, 36.377220, 44.096054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778513, 36.353939, 44.645725>,  <31.772135, 36.474079, 43.987606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778513, 36.353939, 44.645725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149326, 36.471630, 44.552746>,  <32.371815, 36.542244, 44.496956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149326, 36.471630, 44.552746>,  <31.778513, 36.353939, 44.645725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149326, 36.471630, 44.552746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052494, 0.715643, 0.696491,
		0.371282, -0.633469, 0.678872,
		0.927035, 0.294232, -0.232452,
		32.427437, 36.559898, 44.483009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116096, 36.594551, 45.248116>,  <31.778513, 36.353939, 44.645725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116096, 36.594551, 45.248116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346962, 36.741215, 44.956242>,  <32.485481, 36.829212, 44.781116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346962, 36.741215, 44.956242>,  <32.116096, 36.594551, 45.248116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346962, 36.741215, 44.956242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128635, 0.841560, 0.524624,
		0.806437, -0.396655, 0.438548,
		0.577159, 0.366664, -0.729688,
		32.520111, 36.851215, 44.737335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817104, 36.740238, 45.624069>,  <32.116096, 36.594551, 45.248116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817104, 36.740238, 45.624069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783760, 36.964149, 45.294292>,  <32.763752, 37.098495, 45.096428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783760, 36.964149, 45.294292>,  <32.817104, 36.740238, 45.624069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783760, 36.964149, 45.294292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253877, 0.811952, 0.525624,
		0.963637, -0.165488, -0.209803,
		-0.083365, 0.559775, -0.824441,
		32.758751, 37.132080, 45.046959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434902, 37.206909, 45.551113>,  <32.817104, 36.740238, 45.624069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434902, 37.206909, 45.551113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139675, 37.387638, 45.350666>,  <32.962540, 37.496075, 45.230396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139675, 37.387638, 45.350666>,  <33.434902, 37.206909, 45.551113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139675, 37.387638, 45.350666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208403, 0.859033, 0.467579,
		0.641736, 0.240670, -0.728184,
		-0.738067, 0.451818, -0.501116,
		32.918255, 37.523182, 45.200333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739109, 37.915138, 45.231533>,  <33.434902, 37.206909, 45.551113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739109, 37.915138, 45.231533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341629, 37.930237, 45.273735>,  <33.103142, 37.939297, 45.299057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341629, 37.930237, 45.273735>,  <33.739109, 37.915138, 45.231533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341629, 37.930237, 45.273735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082331, 0.884610, 0.459006,
		-0.076003, 0.464801, -0.882147,
		-0.993703, 0.037742, 0.105500,
		33.043518, 37.941559, 45.305386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682613, 38.649338, 45.328396>,  <33.739109, 37.915138, 45.231533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682613, 38.649338, 45.328396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318661, 38.519207, 45.431374>,  <33.100288, 38.441128, 45.493160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318661, 38.519207, 45.431374>,  <33.682613, 38.649338, 45.328396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318661, 38.519207, 45.431374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160457, 0.848213, 0.504766,
		-0.382584, 0.417967, -0.823974,
		-0.909881, -0.325328, 0.257447,
		33.045696, 38.421608, 45.508606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259647, 39.208866, 45.265274>,  <33.682613, 38.649338, 45.328396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259647, 39.208866, 45.265274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072212, 38.970757, 45.526375>,  <32.959751, 38.827892, 45.683033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072212, 38.970757, 45.526375>,  <33.259647, 39.208866, 45.265274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072212, 38.970757, 45.526375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307242, 0.802574, 0.511348,
		-0.828270, 0.039058, -0.558966,
		-0.468584, -0.595272, 0.652748,
		32.931637, 38.792175, 45.722198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567314, 39.503902, 45.299927>,  <33.259647, 39.208866, 45.265274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567314, 39.503902, 45.299927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560944, 39.885845, 45.181271>,  <32.557121, 40.115009, 45.110077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560944, 39.885845, 45.181271>,  <32.567314, 39.503902, 45.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560944, 39.885845, 45.181271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206246, -0.287159, -0.935416,
		-0.978370, -0.076080, -0.192362,
		-0.015928, 0.954857, -0.296639,
		32.556164, 40.172302, 45.092278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124638, 39.644173, 44.629719>,  <32.567314, 39.503902, 45.299927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124638, 39.644173, 44.629719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386196, 39.946648, 44.620007>,  <32.543133, 40.128132, 44.614182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386196, 39.946648, 44.620007>,  <32.124638, 39.644173, 44.629719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386196, 39.946648, 44.620007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229186, -0.228561, -0.946168,
		-0.721033, 0.613135, -0.322765,
		0.653900, 0.756191, -0.024278,
		32.582367, 40.173504, 44.612724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135582, 39.966976, 44.027122>,  <32.124638, 39.644173, 44.629719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135582, 39.966976, 44.027122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507675, 40.074753, 44.126781>,  <32.730930, 40.139420, 44.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507675, 40.074753, 44.126781>,  <32.135582, 39.966976, 44.027122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507675, 40.074753, 44.126781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317118, -0.248532, -0.915242,
		-0.184684, 0.930394, -0.316637,
		0.930230, 0.269442, 0.249145,
		32.786743, 40.155586, 44.201527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367241, 40.458824, 43.530743>,  <32.135582, 39.966976, 44.027122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367241, 40.458824, 43.530743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711021, 40.319153, 43.680099>,  <32.917290, 40.235352, 43.769714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711021, 40.319153, 43.680099>,  <32.367241, 40.458824, 43.530743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711021, 40.319153, 43.680099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216257, -0.413492, -0.884453,
		0.463226, 0.840891, -0.279864,
		0.859451, -0.349179, 0.373389,
		32.968857, 40.214397, 43.792114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963734, 40.718342, 43.090496>,  <32.367241, 40.458824, 43.530743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963734, 40.718342, 43.090496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093430, 40.389046, 43.276890>,  <33.171246, 40.191467, 43.388725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093430, 40.389046, 43.276890>,  <32.963734, 40.718342, 43.090496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093430, 40.389046, 43.276890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353719, -0.351358, -0.866851,
		0.877356, 0.445894, 0.177273,
		0.324237, -0.823241, 0.465987,
		33.190701, 40.142075, 43.416687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590675, 40.497253, 42.690685>,  <32.963734, 40.718342, 43.090496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590675, 40.497253, 42.690685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523849, 40.167973, 42.907730>,  <33.483753, 39.970402, 43.037956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523849, 40.167973, 42.907730>,  <33.590675, 40.497253, 42.690685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523849, 40.167973, 42.907730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425339, -0.556674, -0.713583,
		0.889481, 0.111578, 0.443142,
		-0.167065, -0.823204, 0.542609,
		33.473728, 39.921013, 43.070515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061722, 40.018703, 42.596012>,  <33.590675, 40.497253, 42.690685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061722, 40.018703, 42.596012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790840, 39.755123, 42.726967>,  <33.628311, 39.596977, 42.805538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790840, 39.755123, 42.726967>,  <34.061722, 40.018703, 42.596012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790840, 39.755123, 42.726967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359118, -0.684350, -0.634586,
		0.642207, -0.312174, 0.700084,
		-0.677204, -0.658948, 0.327387,
		33.587681, 39.557438, 42.825184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309120, 39.550583, 42.290070>,  <34.061722, 40.018703, 42.596012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309120, 39.550583, 42.290070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989174, 39.376530, 42.455414>,  <33.797207, 39.272099, 42.554619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989174, 39.376530, 42.455414>,  <34.309120, 39.550583, 42.290070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989174, 39.376530, 42.455414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134923, -0.801473, -0.582612,
		0.584812, -0.410241, 0.699784,
		-0.799869, -0.435135, 0.413360,
		33.749214, 39.245991, 42.579422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500519, 38.814926, 42.461735>,  <34.309120, 39.550583, 42.290070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500519, 38.814926, 42.461735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106831, 38.833061, 42.393311>,  <33.870617, 38.843941, 42.352257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106831, 38.833061, 42.393311>,  <34.500519, 38.814926, 42.461735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106831, 38.833061, 42.393311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087662, -0.714805, -0.693808,
		-0.153727, -0.697853, 0.699549,
		-0.984217, 0.045333, -0.171060,
		33.811565, 38.846661, 42.341991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244698, 38.129898, 42.519825>,  <34.500519, 38.814926, 42.461735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244698, 38.129898, 42.519825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965786, 38.332912, 42.317356>,  <33.798439, 38.454720, 42.195877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965786, 38.332912, 42.317356>,  <34.244698, 38.129898, 42.519825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965786, 38.332912, 42.317356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009282, -0.712488, -0.701623,
		-0.716784, -0.484497, 0.501481,
		-0.697234, 0.507567, -0.506203,
		33.756603, 38.485172, 42.165504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625866, 37.629089, 42.350204>,  <34.244698, 38.129898, 42.519825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625866, 37.629089, 42.350204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590496, 37.922482, 42.080627>,  <33.569275, 38.098515, 41.918880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590496, 37.922482, 42.080627>,  <33.625866, 37.629089, 42.350204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590496, 37.922482, 42.080627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168300, -0.677863, -0.715666,
		-0.981762, 0.050143, 0.183382,
		-0.088422, 0.733476, -0.673939,
		33.563969, 38.142525, 41.878445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988331, 37.448238, 41.985577>,  <33.625866, 37.629089, 42.350204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988331, 37.448238, 41.985577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224102, 37.675568, 41.755939>,  <33.365566, 37.811966, 41.618156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224102, 37.675568, 41.755939>,  <32.988331, 37.448238, 41.985577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224102, 37.675568, 41.755939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149556, -0.621608, -0.768919,
		-0.793853, 0.539084, -0.281400,
		0.589432, 0.568323, -0.574089,
		33.400932, 37.846066, 41.583714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700478, 37.459274, 41.304268>,  <32.988331, 37.448238, 41.985577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700478, 37.459274, 41.304268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089214, 37.550903, 41.282158>,  <33.322456, 37.605881, 41.268890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089214, 37.550903, 41.282158>,  <32.700478, 37.459274, 41.304268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089214, 37.550903, 41.282158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078064, -0.534306, -0.841679,
		-0.222339, 0.813661, -0.537142,
		0.971839, 0.229069, -0.055279,
		33.380768, 37.619625, 41.265575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792404, 37.587688, 40.673313>,  <32.700478, 37.459274, 41.304268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792404, 37.587688, 40.673313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167778, 37.505264, 40.784225>,  <33.393002, 37.455811, 40.850773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167778, 37.505264, 40.784225>,  <32.792404, 37.587688, 40.673313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167778, 37.505264, 40.784225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125960, -0.543280, -0.830049,
		0.321683, 0.813870, -0.483875,
		0.938432, -0.206064, 0.277279,
		33.449306, 37.443443, 40.867409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175961, 37.744484, 40.122219>,  <32.792404, 37.587688, 40.673313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175961, 37.744484, 40.122219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395855, 37.500473, 40.350483>,  <33.527790, 37.354065, 40.487442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395855, 37.500473, 40.350483>,  <33.175961, 37.744484, 40.122219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395855, 37.500473, 40.350483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246676, -0.534132, -0.808612,
		0.798086, 0.585291, -0.143152,
		0.549736, -0.610030, 0.570661,
		33.560776, 37.317463, 40.521683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816700, 37.617096, 39.639111>,  <33.175961, 37.744484, 40.122219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816700, 37.617096, 39.639111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825573, 37.354179, 39.940437>,  <33.830894, 37.196430, 40.121231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825573, 37.354179, 39.940437>,  <33.816700, 37.617096, 39.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825573, 37.354179, 39.940437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444688, -0.668371, -0.596266,
		0.895411, 0.348213, 0.277465,
		0.022178, -0.657288, 0.753313,
		33.832226, 37.156994, 40.166431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446938, 37.267193, 39.692577>,  <33.816700, 37.617096, 39.639111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446938, 37.267193, 39.692577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216656, 36.996372, 39.875954>,  <34.078487, 36.833881, 39.985981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216656, 36.996372, 39.875954>,  <34.446938, 37.267193, 39.692577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216656, 36.996372, 39.875954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300905, -0.696761, -0.651138,
		0.760279, -0.236914, 0.604854,
		-0.575702, -0.677050, 0.458444,
		34.043945, 36.793259, 40.013485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756516, 36.611664, 39.582771>,  <34.446938, 37.267193, 39.692577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756516, 36.611664, 39.582771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390732, 36.489330, 39.688778>,  <34.171261, 36.415932, 39.752380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390732, 36.489330, 39.688778>,  <34.756516, 36.611664, 39.582771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390732, 36.489330, 39.688778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004966, -0.663303, -0.748335,
		0.404651, -0.683005, 0.608081,
		-0.914458, -0.305834, 0.265014,
		34.116394, 36.397579, 39.768284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774189, 35.915386, 39.882454>,  <34.756516, 36.611664, 39.582771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774189, 35.915386, 39.882454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405067, 35.977428, 39.741390>,  <34.183594, 36.014652, 39.656750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405067, 35.977428, 39.741390>,  <34.774189, 35.915386, 39.882454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405067, 35.977428, 39.741390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106132, -0.777615, -0.619718,
		-0.370358, -0.609308, 0.701126,
		-0.922806, 0.155106, -0.352663,
		34.128227, 36.023960, 39.635590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548569, 35.284103, 39.737103>,  <34.774189, 35.915386, 39.882454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548569, 35.284103, 39.737103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282879, 35.498051, 39.528210>,  <34.123466, 35.626419, 39.402874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282879, 35.498051, 39.528210>,  <34.548569, 35.284103, 39.737103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282879, 35.498051, 39.528210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025185, -0.714214, -0.699474,
		-0.747112, -0.451453, 0.487867,
		-0.664221, 0.534872, -0.522228,
		34.083614, 35.658512, 39.371540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985817, 34.860146, 39.579319>,  <34.548569, 35.284103, 39.737103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985817, 34.860146, 39.579319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951355, 35.166142, 39.324017>,  <33.930679, 35.349739, 39.170834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951355, 35.166142, 39.324017>,  <33.985817, 34.860146, 39.579319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951355, 35.166142, 39.324017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239222, -0.606012, -0.758632,
		-0.967135, -0.218042, -0.130794,
		-0.086151, 0.764988, -0.638256,
		33.925510, 35.395638, 39.132538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585850, 34.562023, 39.042252>,  <33.985817, 34.860146, 39.579319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585850, 34.562023, 39.042252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775883, 34.868290, 38.868793>,  <33.889904, 35.052052, 38.764717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775883, 34.868290, 38.868793>,  <33.585850, 34.562023, 39.042252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775883, 34.868290, 38.868793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087920, -0.531650, -0.842389,
		-0.875538, 0.362079, -0.319895,
		0.475083, 0.765668, -0.433646,
		33.918407, 35.097992, 38.738701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389606, 34.535046, 38.380917>,  <33.585850, 34.562023, 39.042252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389606, 34.535046, 38.380917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717144, 34.764153, 38.365757>,  <33.913666, 34.901615, 38.356659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717144, 34.764153, 38.365757>,  <33.389606, 34.535046, 38.380917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717144, 34.764153, 38.365757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161105, -0.292696, -0.942536,
		-0.550944, 0.765683, -0.331948,
		0.818844, 0.572764, -0.037904,
		33.962799, 34.935982, 38.354385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399624, 34.713188, 37.657993>,  <33.389606, 34.535046, 38.380917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399624, 34.713188, 37.657993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756489, 34.832996, 37.793251>,  <33.970608, 34.904881, 37.874405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756489, 34.832996, 37.793251>,  <33.399624, 34.713188, 37.657993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756489, 34.832996, 37.793251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412164, -0.233396, -0.880708,
		-0.184866, 0.925103, -0.331677,
		0.892158, 0.299518, 0.338147,
		34.024136, 34.922852, 37.894695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842075, 35.318192, 37.289913>,  <33.399624, 34.713188, 37.657993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842075, 35.318192, 37.289913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130119, 35.115055, 37.479034>,  <34.302944, 34.993172, 37.592506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130119, 35.115055, 37.479034>,  <33.842075, 35.318192, 37.289913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130119, 35.115055, 37.479034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435562, -0.199584, -0.877754,
		0.540123, 0.838013, 0.077474,
		0.720106, -0.507840, 0.472806,
		34.346149, 34.962704, 37.620876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489975, 35.635921, 37.064903>,  <33.842075, 35.318192, 37.289913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489975, 35.635921, 37.064903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612740, 35.283482, 37.208828>,  <34.686398, 35.072018, 37.295181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612740, 35.283482, 37.208828>,  <34.489975, 35.635921, 37.064903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612740, 35.283482, 37.208828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635910, -0.091432, -0.766328,
		0.708111, 0.464004, 0.532240,
		0.306916, -0.881102, 0.359808,
		34.704815, 35.019150, 37.316769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221565, 35.629761, 36.998283>,  <34.489975, 35.635921, 37.064903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221565, 35.629761, 36.998283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116520, 35.244167, 37.015099>,  <35.053493, 35.012810, 37.025188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116520, 35.244167, 37.015099>,  <35.221565, 35.629761, 36.998283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116520, 35.244167, 37.015099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529693, -0.180446, -0.828773,
		0.806511, -0.195377, 0.558003,
		-0.262613, -0.963985, 0.042042,
		35.037735, 34.954971, 37.027710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900658, 35.101463, 37.044861>,  <35.221565, 35.629761, 36.998283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900658, 35.101463, 37.044861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592224, 34.892021, 36.899940>,  <35.407162, 34.766357, 36.812988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592224, 34.892021, 36.899940>,  <35.900658, 35.101463, 37.044861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592224, 34.892021, 36.899940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562124, -0.292541, -0.773587,
		0.299066, -0.800161, 0.519906,
		-0.771088, -0.523605, -0.362300,
		35.360897, 34.734940, 36.791252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203873, 34.518871, 36.800381>,  <35.900658, 35.101463, 37.044861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203873, 34.518871, 36.800381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850189, 34.494164, 36.615189>,  <35.637978, 34.479340, 36.504074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850189, 34.494164, 36.615189>,  <36.203873, 34.518871, 36.800381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850189, 34.494164, 36.615189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428113, -0.503560, -0.750431,
		-0.186785, -0.861749, 0.471699,
		-0.884212, -0.061772, -0.462984,
		35.584927, 34.475632, 36.476292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130867, 33.845947, 36.767929>,  <36.203873, 34.518871, 36.800381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130867, 33.845947, 36.767929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876389, 33.973148, 36.486752>,  <35.723701, 34.049469, 36.318047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876389, 33.973148, 36.486752>,  <36.130867, 33.845947, 36.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876389, 33.973148, 36.486752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605243, -0.359327, -0.710327,
		-0.478470, -0.877360, 0.036136,
		-0.636198, 0.317999, -0.702943,
		35.685528, 34.068546, 36.275867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066837, 33.326836, 36.255077>,  <36.130867, 33.845947, 36.767929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066837, 33.326836, 36.255077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954502, 33.654896, 36.055683>,  <35.887100, 33.851730, 35.936047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954502, 33.654896, 36.055683>,  <36.066837, 33.326836, 36.255077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954502, 33.654896, 36.055683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706347, -0.175012, -0.685889,
		-0.649771, -0.544728, -0.530159,
		-0.280839, 0.820148, -0.498485,
		35.870251, 33.900940, 35.906139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821045, 33.191429, 35.615841>,  <36.066837, 33.326836, 36.255077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821045, 33.191429, 35.615841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951763, 33.568672, 35.591370>,  <36.030193, 33.795017, 35.576687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951763, 33.568672, 35.591370>,  <35.821045, 33.191429, 35.615841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951763, 33.568672, 35.591370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727161, -0.292262, -0.621143,
		-0.603688, 0.158502, -0.781305,
		0.326798, 0.943112, -0.061178,
		36.049801, 33.851604, 35.573017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949505, 33.262245, 34.912663>,  <35.821045, 33.191429, 35.615841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949505, 33.262245, 34.912663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150574, 33.558678, 35.090702>,  <36.271217, 33.736538, 35.197525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150574, 33.558678, 35.090702>,  <35.949505, 33.262245, 34.912663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150574, 33.558678, 35.090702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751696, -0.120423, -0.648422,
		-0.426933, 0.660528, -0.617601,
		0.502674, 0.741081, 0.445104,
		36.301376, 33.781002, 35.224232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122181, 33.788460, 34.423393>,  <35.949505, 33.262245, 34.912663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122181, 33.788460, 34.423393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369297, 33.853397, 34.731155>,  <36.517567, 33.892361, 34.915813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369297, 33.853397, 34.731155>,  <36.122181, 33.788460, 34.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369297, 33.853397, 34.731155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765529, 0.099463, -0.635667,
		-0.179721, 0.981709, -0.062828,
		0.617791, 0.162340, 0.769402,
		36.554634, 33.902100, 34.961975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455620, 34.353848, 34.221123>,  <36.122181, 33.788460, 34.423393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455620, 34.353848, 34.221123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676674, 34.186710, 34.509567>,  <36.809307, 34.086430, 34.682636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676674, 34.186710, 34.509567>,  <36.455620, 34.353848, 34.221123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676674, 34.186710, 34.509567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809831, 0.064804, -0.583073,
		0.196901, 0.906205, 0.374194,
		0.552633, -0.417842, 0.721113,
		36.842464, 34.061359, 34.725903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165619, 34.789280, 34.272297>,  <36.455620, 34.353848, 34.221123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165619, 34.789280, 34.272297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238266, 34.428036, 34.427944>,  <37.281853, 34.211288, 34.521332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238266, 34.428036, 34.427944>,  <37.165619, 34.789280, 34.272297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238266, 34.428036, 34.427944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911659, 0.006292, -0.410900,
		0.368639, 0.429365, 0.824470,
		0.181614, -0.903109, 0.389115,
		37.292751, 34.157104, 34.544678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810844, 34.855518, 34.500809>,  <37.165619, 34.789280, 34.272297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810844, 34.855518, 34.500809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769241, 34.459644, 34.461391>,  <37.744278, 34.222122, 34.437740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769241, 34.459644, 34.461391>,  <37.810844, 34.855518, 34.500809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769241, 34.459644, 34.461391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903653, -0.052649, -0.425017,
		0.415443, -0.133258, 0.899805,
		-0.104011, -0.989682, -0.098546,
		37.738037, 34.162739, 34.431828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372334, 34.576805, 34.796970>,  <37.810844, 34.855518, 34.500809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372334, 34.576805, 34.796970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244511, 34.301094, 34.536884>,  <38.167816, 34.135666, 34.380833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244511, 34.301094, 34.536884>,  <38.372334, 34.576805, 34.796970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244511, 34.301094, 34.536884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909869, -0.031583, -0.413692,
		0.264613, -0.723809, 0.637244,
		-0.319560, -0.689277, -0.650214,
		38.148643, 34.094311, 34.341820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957512, 34.163677, 34.633518>,  <38.372334, 34.576805, 34.796970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957512, 34.163677, 34.633518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714294, 34.066845, 34.331078>,  <38.568363, 34.008747, 34.149612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714294, 34.066845, 34.331078>,  <38.957512, 34.163677, 34.633518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714294, 34.066845, 34.331078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792619, -0.130860, -0.595509,
		0.045216, -0.961391, 0.271444,
		-0.608039, -0.242078, -0.756100,
		38.531883, 33.994221, 34.104248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094917, 33.457714, 34.586880>,  <38.957512, 34.163677, 34.633518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094917, 33.457714, 34.586880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972740, 33.651657, 34.259071>,  <38.899433, 33.768021, 34.062386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972740, 33.651657, 34.259071>,  <39.094917, 33.457714, 34.586880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972740, 33.651657, 34.259071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912026, -0.098429, -0.398147,
		-0.273709, -0.869038, -0.412137,
		-0.305439, 0.484856, -0.819526,
		38.881107, 33.797115, 34.013214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903503, 33.184879, 33.880909>,  <39.094917, 33.457714, 34.586880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903503, 33.184879, 33.880909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100399, 33.531048, 33.843513>,  <39.218536, 33.738750, 33.821075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100399, 33.531048, 33.843513>,  <38.903503, 33.184879, 33.880909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100399, 33.531048, 33.843513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807809, -0.494181, -0.321295,
		-0.324256, 0.082635, -0.942353,
		0.492243, 0.865423, -0.093488,
		39.248074, 33.790676, 33.815468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480556, 33.032925, 33.549732>,  <38.903503, 33.184879, 33.880909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480556, 33.032925, 33.549732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612896, 33.400856, 33.634071>,  <39.692299, 33.621616, 33.684677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612896, 33.400856, 33.634071>,  <39.480556, 33.032925, 33.549732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612896, 33.400856, 33.634071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875721, -0.215999, -0.431806,
		-0.351644, 0.327507, -0.876975,
		0.330846, 0.919828, 0.210850,
		39.712151, 33.676804, 33.697327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605160, 33.472157, 32.934071>,  <39.480556, 33.032925, 33.549732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605160, 33.472157, 32.934071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865627, 33.531754, 33.231735>,  <40.021908, 33.567513, 33.410336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865627, 33.531754, 33.231735>,  <39.605160, 33.472157, 32.934071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865627, 33.531754, 33.231735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758931, -0.128843, -0.638297,
		0.000777, 0.980408, -0.196976,
		0.651170, 0.148995, 0.744162,
		40.060978, 33.576450, 33.454983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059700, 33.991642, 32.700260>,  <39.605160, 33.472157, 32.934071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059700, 33.991642, 32.700260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254753, 33.748184, 32.950623>,  <40.371788, 33.602108, 33.100838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254753, 33.748184, 32.950623>,  <40.059700, 33.991642, 32.700260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254753, 33.748184, 32.950623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713941, -0.134627, -0.687142,
		0.502492, 0.781935, 0.368890,
		0.487638, -0.608649, 0.625904,
		40.401043, 33.565590, 33.138393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688030, 33.899151, 32.349957>,  <40.059700, 33.991642, 32.700260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688030, 33.899151, 32.349957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711189, 33.639626, 32.653454>,  <40.725086, 33.483910, 32.835552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711189, 33.639626, 32.653454>,  <40.688030, 33.899151, 32.349957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711189, 33.639626, 32.653454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829716, -0.391374, -0.397991,
		0.555174, 0.652583, 0.515671,
		0.057902, -0.648815, 0.758740,
		40.728561, 33.444981, 32.881077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434090, 33.694107, 32.419174>,  <40.688030, 33.899151, 32.349957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434090, 33.694107, 32.419174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238007, 33.459263, 32.676857>,  <41.120358, 33.318356, 32.831467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238007, 33.459263, 32.676857>,  <41.434090, 33.694107, 32.419174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238007, 33.459263, 32.676857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740191, -0.670681, -0.047995,
		0.460237, 0.453309, 0.763343,
		-0.490203, -0.587109, 0.644208,
		41.090946, 33.283131, 32.870121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889313, 33.533230, 33.056004>,  <41.434090, 33.694107, 32.419174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889313, 33.533230, 33.056004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622383, 33.238029, 33.015926>,  <41.462227, 33.060909, 32.991879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622383, 33.238029, 33.015926>,  <41.889313, 33.533230, 33.056004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622383, 33.238029, 33.015926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707312, -0.670127, 0.225034,
		-0.233220, 0.079300, 0.969185,
		-0.667322, -0.737998, -0.100197,
		41.422188, 33.016628, 32.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463253, 33.183006, 33.462273>,  <41.889313, 33.533230, 33.056004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463253, 33.183006, 33.462273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388950, 33.550694, 33.601143>,  <42.344368, 33.771305, 33.684464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388950, 33.550694, 33.601143>,  <42.463253, 33.183006, 33.462273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388950, 33.550694, 33.601143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251380, -0.386026, 0.887577,
		0.949895, 0.077602, 0.302781,
		-0.185759, 0.919218, 0.347177,
		42.333221, 33.826458, 33.705296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809311, 33.226551, 34.046772>,  <42.463253, 33.183006, 33.462273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809311, 33.226551, 34.046772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558922, 33.528957, 34.123299>,  <42.408688, 33.710400, 34.169216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558922, 33.528957, 34.123299>,  <42.809311, 33.226551, 34.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558922, 33.528957, 34.123299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226824, -0.411225, 0.882862,
		0.746130, 0.509251, 0.428897,
		-0.625972, 0.756014, 0.191317,
		42.371132, 33.755760, 34.180695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916557, 33.397678, 34.682781>,  <42.809311, 33.226551, 34.046772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916557, 33.397678, 34.682781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559200, 33.570724, 34.634293>,  <42.344788, 33.674553, 34.605198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559200, 33.570724, 34.634293>,  <42.916557, 33.397678, 34.682781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559200, 33.570724, 34.634293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210319, -0.164283, 0.963731,
		0.397014, 0.886483, 0.237757,
		-0.893390, 0.432619, -0.121222,
		42.291183, 33.700512, 34.597927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737606, 33.586262, 35.344784>,  <42.916557, 33.397678, 34.682781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737606, 33.586262, 35.344784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388039, 33.621929, 35.153652>,  <42.178299, 33.643330, 35.038975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388039, 33.621929, 35.153652>,  <42.737606, 33.586262, 35.344784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388039, 33.621929, 35.153652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480132, -0.311617, 0.819981,
		-0.075779, 0.946014, 0.315142,
		-0.873917, 0.089172, -0.477826,
		42.125862, 33.648682, 35.010303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272083, 34.013901, 35.705299>,  <42.737606, 33.586262, 35.344784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272083, 34.013901, 35.705299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030144, 33.768509, 35.502205>,  <41.884979, 33.621273, 35.380348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030144, 33.768509, 35.502205>,  <42.272083, 34.013901, 35.705299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030144, 33.768509, 35.502205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495796, -0.208839, 0.842955,
		-0.623169, 0.761599, -0.177842,
		-0.604853, -0.613477, -0.507739,
		41.848686, 33.584465, 35.349884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545040, 34.144318, 35.952503>,  <42.272083, 34.013901, 35.705299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545040, 34.144318, 35.952503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554966, 33.784733, 35.777573>,  <41.560921, 33.568981, 35.672615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554966, 33.784733, 35.777573>,  <41.545040, 34.144318, 35.952503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554966, 33.784733, 35.777573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462451, -0.398166, 0.792214,
		-0.886297, 0.182584, -0.425605,
		0.024816, -0.898959, -0.437329,
		41.562412, 33.515045, 35.646374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969688, 33.894024, 36.136768>,  <41.545040, 34.144318, 35.952503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969688, 33.894024, 36.136768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163280, 33.565765, 36.015240>,  <41.279434, 33.368813, 35.942322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163280, 33.565765, 36.015240>,  <40.969688, 33.894024, 36.136768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163280, 33.565765, 36.015240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452306, -0.531814, 0.715956,
		-0.749122, -0.209087, -0.628569,
		0.483980, -0.820643, -0.303822,
		41.308475, 33.319572, 35.924091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396519, 33.331882, 36.237389>,  <40.969688, 33.894024, 36.136768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396519, 33.331882, 36.237389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771130, 33.191845, 36.244831>,  <40.995895, 33.107822, 36.249298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771130, 33.191845, 36.244831>,  <40.396519, 33.331882, 36.237389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771130, 33.191845, 36.244831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244671, -0.614659, 0.749886,
		-0.251095, -0.706843, -0.661305,
		0.936529, -0.350095, 0.018606,
		41.052090, 33.086815, 36.250412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487892, 32.585461, 36.371490>,  <40.396519, 33.331882, 36.237389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487892, 32.585461, 36.371490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854729, 32.714066, 36.465797>,  <41.074829, 32.791229, 36.522381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854729, 32.714066, 36.465797>,  <40.487892, 32.585461, 36.371490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854729, 32.714066, 36.465797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023763, -0.546220, 0.837305,
		0.397980, -0.773483, -0.493291,
		0.917087, 0.321508, 0.235765,
		41.129856, 32.810516, 36.536526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737431, 32.104382, 36.725975>,  <40.487892, 32.585461, 36.371490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737431, 32.104382, 36.725975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971107, 32.412998, 36.826721>,  <41.111313, 32.598167, 36.887169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971107, 32.412998, 36.826721>,  <40.737431, 32.104382, 36.725975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971107, 32.412998, 36.826721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028603, -0.329706, 0.943650,
		0.811109, -0.544072, -0.214681,
		0.584195, 0.771544, 0.251865,
		41.146366, 32.644463, 36.902279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138378, 31.796795, 37.201141>,  <40.737431, 32.104382, 36.725975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138378, 31.796795, 37.201141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206409, 32.183220, 37.278908>,  <41.247231, 32.415073, 37.325565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206409, 32.183220, 37.278908>,  <41.138378, 31.796795, 37.201141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206409, 32.183220, 37.278908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025607, -0.201555, 0.979142,
		0.985097, -0.161554, -0.059018,
		0.170080, 0.966062, 0.194414,
		41.257435, 32.473038, 37.337231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736465, 31.864292, 37.631359>,  <41.138378, 31.796795, 37.201141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736465, 31.864292, 37.631359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542076, 32.206657, 37.702061>,  <41.425442, 32.412075, 37.744480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542076, 32.206657, 37.702061>,  <41.736465, 31.864292, 37.631359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542076, 32.206657, 37.702061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057331, -0.170588, 0.983673,
		0.872092, 0.488170, 0.033830,
		-0.485971, 0.855914, 0.176755,
		41.396286, 32.463432, 37.755089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126114, 32.191521, 38.120876>,  <41.736465, 31.864292, 37.631359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126114, 32.191521, 38.120876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763115, 32.359146, 38.132381>,  <41.545315, 32.459721, 38.139286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763115, 32.359146, 38.132381>,  <42.126114, 32.191521, 38.120876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763115, 32.359146, 38.132381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023087, -0.118130, 0.992730,
		0.419414, 0.900239, 0.116878,
		-0.907501, 0.419063, 0.028762,
		41.490864, 32.484863, 38.141010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135536, 32.742310, 38.669712>,  <42.126114, 32.191521, 38.120876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135536, 32.742310, 38.669712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765675, 32.609383, 38.595337>,  <41.543758, 32.529625, 38.550713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765675, 32.609383, 38.595337>,  <42.135536, 32.742310, 38.669712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765675, 32.609383, 38.595337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113522, -0.225524, 0.967601,
		-0.363487, 0.915807, 0.170806,
		-0.924657, -0.332320, -0.185940,
		41.488277, 32.509686, 38.539555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796112, 32.951523, 39.278454>,  <42.135536, 32.742310, 38.669712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796112, 32.951523, 39.278454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520531, 32.719463, 39.104656>,  <41.355183, 32.580227, 39.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520531, 32.719463, 39.104656>,  <41.796112, 32.951523, 39.278454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520531, 32.719463, 39.104656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325942, -0.287443, 0.900632,
		-0.647388, 0.762108, 0.008941,
		-0.688949, -0.580144, -0.434490,
		41.313847, 32.545422, 38.974308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122936, 33.185673, 39.563332>,  <41.796112, 32.951523, 39.278454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122936, 33.185673, 39.563332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114197, 32.800240, 39.456722>,  <41.108952, 32.568981, 39.392757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114197, 32.800240, 39.456722>,  <41.122936, 33.185673, 39.563332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114197, 32.800240, 39.456722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166273, -0.259370, 0.951357,
		-0.985838, 0.065103, -0.154550,
		-0.021851, -0.963581, -0.266522,
		41.107643, 32.511166, 39.376766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506699, 32.905621, 39.784389>,  <41.122936, 33.185673, 39.563332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506699, 32.905621, 39.784389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732227, 32.580986, 39.723164>,  <40.867546, 32.386204, 39.686428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732227, 32.580986, 39.723164>,  <40.506699, 32.905621, 39.784389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732227, 32.580986, 39.723164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315208, -0.382766, 0.868409,
		-0.763380, -0.441380, -0.471630,
		0.563822, -0.811588, -0.153069,
		40.901375, 32.337509, 39.677242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028568, 32.356472, 39.876904>,  <40.506699, 32.905621, 39.784389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028568, 32.356472, 39.876904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394691, 32.210899, 39.945923>,  <40.614365, 32.123554, 39.987335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394691, 32.210899, 39.945923>,  <40.028568, 32.356472, 39.876904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394691, 32.210899, 39.945923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320358, -0.398197, 0.859540,
		-0.244105, -0.842018, -0.481060,
		0.915305, -0.363930, 0.172545,
		40.669285, 32.101719, 39.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957909, 31.646435, 40.102489>,  <40.028568, 32.356472, 39.876904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957909, 31.646435, 40.102489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328930, 31.752785, 40.207523>,  <40.551544, 31.816595, 40.270542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328930, 31.752785, 40.207523>,  <39.957909, 31.646435, 40.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328930, 31.752785, 40.207523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096305, -0.508869, 0.855440,
		0.361060, -0.818757, -0.446399,
		0.927556, 0.265875, 0.262583,
		40.607197, 31.832546, 40.286297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204720, 31.039087, 40.511559>,  <39.957909, 31.646435, 40.102489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204720, 31.039087, 40.511559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494957, 31.305702, 40.579960>,  <40.669098, 31.465672, 40.620998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494957, 31.305702, 40.579960>,  <40.204720, 31.039087, 40.511559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494957, 31.305702, 40.579960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219376, -0.459600, 0.860605,
		0.652218, -0.586937, -0.479706,
		0.725594, 0.666538, 0.170999,
		40.712635, 31.505663, 40.631260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596676, 30.686110, 40.976818>,  <40.204720, 31.039087, 40.511559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596676, 30.686110, 40.976818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714142, 31.063383, 41.039001>,  <40.784622, 31.289747, 41.076309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714142, 31.063383, 41.039001>,  <40.596676, 30.686110, 40.976818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714142, 31.063383, 41.039001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303876, -0.246300, 0.920324,
		0.906323, -0.223025, -0.358940,
		0.293662, 0.943184, 0.155456,
		40.802242, 31.346338, 41.085640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081329, 30.562563, 41.345222>,  <40.596676, 30.686110, 40.976818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081329, 30.562563, 41.345222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062519, 30.960695, 41.378937>,  <41.051231, 31.199575, 41.399166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062519, 30.960695, 41.378937>,  <41.081329, 30.562563, 41.345222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062519, 30.960695, 41.378937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268221, -0.068703, 0.960905,
		0.962209, 0.067795, -0.263738,
		-0.047025, 0.995331, 0.084290,
		41.048412, 31.259295, 41.404224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714893, 30.889633, 41.411476>,  <41.081329, 30.562563, 41.345222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714893, 30.889633, 41.411476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398914, 31.047127, 41.599499>,  <41.209328, 31.141623, 41.712311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398914, 31.047127, 41.599499>,  <41.714893, 30.889633, 41.411476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398914, 31.047127, 41.599499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339203, -0.358006, 0.869927,
		0.510801, 0.846644, 0.149253,
		-0.789952, 0.393732, 0.470054,
		41.161930, 31.165247, 41.740517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927208, 31.030895, 42.089100>,  <41.714893, 30.889633, 41.411476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927208, 31.030895, 42.089100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528816, 31.018351, 42.122677>,  <41.289783, 31.010824, 42.142822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528816, 31.018351, 42.122677>,  <41.927208, 31.030895, 42.089100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528816, 31.018351, 42.122677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089571, -0.320611, 0.942966,
		-0.002661, 0.946692, 0.322130,
		-0.995977, -0.031363, 0.083943,
		41.230022, 31.008942, 42.147861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714108, 31.431530, 42.623474>,  <41.927208, 31.030895, 42.089100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714108, 31.431530, 42.623474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426441, 31.159996, 42.564163>,  <41.253841, 30.997076, 42.528576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426441, 31.159996, 42.564163>,  <41.714108, 31.431530, 42.623474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426441, 31.159996, 42.564163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006033, -0.207292, 0.978261,
		-0.694813, 0.704426, 0.144982,
		-0.719166, -0.678833, -0.148279,
		41.210693, 30.956347, 42.519680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897961, 31.737204, 42.013954>,  <41.714108, 31.431530, 42.623474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897961, 31.737204, 42.013954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077332, 31.769091, 42.370056>,  <42.184956, 31.788223, 42.583717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077332, 31.769091, 42.370056>,  <41.897961, 31.737204, 42.013954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077332, 31.769091, 42.370056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203309, 0.960809, -0.188444,
		-0.870390, 0.265501, 0.414645,
		0.448427, 0.079719, 0.890257,
		42.211861, 31.793007, 42.637135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718868, 32.470348, 42.348011>,  <41.897961, 31.737204, 42.013954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718868, 32.470348, 42.348011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032730, 32.331467, 42.553444>,  <42.221046, 32.248138, 42.676704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032730, 32.331467, 42.553444>,  <41.718868, 32.470348, 42.348011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032730, 32.331467, 42.553444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426899, 0.903346, -0.041518,
		-0.449530, 0.251826, 0.857033,
		0.784653, -0.347203, 0.513586,
		42.268127, 32.227306, 42.707520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993309, 33.194626, 42.665779>,  <41.718868, 32.470348, 42.348011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993309, 33.194626, 42.665779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266811, 32.904289, 42.695793>,  <42.430912, 32.730087, 42.713802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266811, 32.904289, 42.695793>,  <41.993309, 33.194626, 42.665779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266811, 32.904289, 42.695793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717564, 0.650137, -0.249849,
		0.132568, 0.224678, 0.965373,
		0.683760, -0.725839, 0.075034,
		42.471939, 32.686539, 42.718304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523258, 33.393440, 43.185917>,  <41.993309, 33.194626, 42.665779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523258, 33.393440, 43.185917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674122, 33.132122, 42.923328>,  <42.764641, 32.975330, 42.765774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674122, 33.132122, 42.923328>,  <42.523258, 33.393440, 43.185917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674122, 33.132122, 42.923328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532278, 0.732964, -0.423609,
		0.757913, -0.189658, 0.624178,
		0.377159, -0.653295, -0.656473,
		42.787270, 32.936134, 42.726387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347565, 33.359268, 43.132141>,  <42.523258, 33.393440, 43.185917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347565, 33.359268, 43.132141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157074, 33.264549, 42.793404>,  <43.042782, 33.207718, 42.590160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157074, 33.264549, 42.793404>,  <43.347565, 33.359268, 43.132141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157074, 33.264549, 42.793404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318839, 0.851018, -0.417266,
		0.819483, -0.468718, -0.329775,
		-0.476224, -0.236797, -0.846840,
		43.014206, 33.193508, 42.539352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691570, 33.873413, 42.709377>,  <43.347565, 33.359268, 43.132141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691570, 33.873413, 42.709377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390659, 33.704323, 42.507233>,  <43.210114, 33.602871, 42.385944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390659, 33.704323, 42.507233>,  <43.691570, 33.873413, 42.709377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390659, 33.704323, 42.507233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087470, 0.696168, -0.712530,
		0.653018, -0.580222, -0.486734,
		-0.752274, -0.422720, -0.505363,
		43.164978, 33.577507, 42.355625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893578, 33.580788, 41.958244>,  <43.691570, 33.873413, 42.709377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893578, 33.580788, 41.958244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527348, 33.739208, 41.986153>,  <43.307610, 33.834263, 42.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527348, 33.739208, 41.986153>,  <43.893578, 33.580788, 41.958244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527348, 33.739208, 41.986153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176406, 0.551446, -0.815345,
		-0.361398, -0.734199, -0.574755,
		-0.915572, 0.396055, 0.069775,
		43.252674, 33.858025, 42.007084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544086, 33.423386, 41.342087>,  <43.893578, 33.580788, 41.958244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544086, 33.423386, 41.342087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350971, 33.730946, 41.509758>,  <43.235100, 33.915482, 41.610359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350971, 33.730946, 41.509758>,  <43.544086, 33.423386, 41.342087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350971, 33.730946, 41.509758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143729, 0.541736, -0.828169,
		-0.863860, -0.339585, -0.372059,
		-0.482792, 0.768898, 0.419176,
		43.206135, 33.961617, 41.635509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044811, 33.680893, 40.820965>,  <43.544086, 33.423386, 41.342087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044811, 33.680893, 40.820965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102596, 33.970234, 41.091042>,  <43.137268, 34.143841, 41.253086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102596, 33.970234, 41.091042>,  <43.044811, 33.680893, 40.820965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102596, 33.970234, 41.091042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168328, 0.654439, -0.737140,
		-0.975087, 0.220145, -0.027217,
		0.144466, 0.723357, 0.675192,
		43.145935, 34.187241, 41.293598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599068, 34.170197, 40.636745>,  <43.044811, 33.680893, 40.820965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599068, 34.170197, 40.636745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866459, 34.377625, 40.849998>,  <43.026894, 34.502083, 40.977951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866459, 34.377625, 40.849998>,  <42.599068, 34.170197, 40.636745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866459, 34.377625, 40.849998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145555, 0.611746, -0.777547,
		-0.729352, 0.597371, 0.333457,
		0.668476, 0.518569, 0.533129,
		43.067001, 34.533195, 41.009937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502518, 34.854336, 40.565617>,  <42.599068, 34.170197, 40.636745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502518, 34.854336, 40.565617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890610, 34.832832, 40.660069>,  <43.123466, 34.819931, 40.716740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890610, 34.832832, 40.660069>,  <42.502518, 34.854336, 40.565617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890610, 34.832832, 40.660069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212579, 0.656130, -0.724088,
		-0.116000, 0.752730, 0.648028,
		0.970234, -0.053763, 0.236126,
		43.181679, 34.816704, 40.730907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726284, 35.499573, 40.317986>,  <42.502518, 34.854336, 40.565617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726284, 35.499573, 40.317986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069401, 35.303429, 40.379612>,  <43.275272, 35.185741, 40.416588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069401, 35.303429, 40.379612>,  <42.726284, 35.499573, 40.317986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069401, 35.303429, 40.379612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439459, 0.544215, -0.714636,
		0.266582, 0.680718, 0.682318,
		0.857793, -0.490360, 0.154070,
		43.326740, 35.156322, 40.425835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257030, 36.067356, 40.339645>,  <42.726284, 35.499573, 40.317986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257030, 36.067356, 40.339645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422264, 35.715439, 40.245552>,  <43.521404, 35.504288, 40.189098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422264, 35.715439, 40.245552>,  <43.257030, 36.067356, 40.339645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422264, 35.715439, 40.245552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465380, 0.425956, -0.775876,
		0.782804, 0.211030, 0.585392,
		0.413084, -0.879789, -0.235231,
		43.546188, 35.451504, 40.174984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878933, 36.227703, 40.010773>,  <43.257030, 36.067356, 40.339645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878933, 36.227703, 40.010773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835640, 35.848576, 39.890820>,  <43.809666, 35.621101, 39.818848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835640, 35.848576, 39.890820>,  <43.878933, 36.227703, 40.010773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835640, 35.848576, 39.890820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181033, 0.277819, -0.943421,
		0.977504, -0.156394, 0.141518,
		-0.108229, -0.947817, -0.299882,
		43.803169, 35.564232, 39.800854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301399, 36.231133, 39.537922>,  <43.878933, 36.227703, 40.010773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301399, 36.231133, 39.537922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111694, 35.893829, 39.436733>,  <43.997871, 35.691448, 39.376019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111694, 35.893829, 39.436733>,  <44.301399, 36.231133, 39.537922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111694, 35.893829, 39.436733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196901, 0.178467, -0.964043,
		0.858081, -0.507023, 0.081397,
		-0.474265, -0.843254, -0.252973,
		43.969414, 35.640854, 39.360840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621376, 35.852348, 39.071823>,  <44.301399, 36.231133, 39.537922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621376, 35.852348, 39.071823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268818, 35.683701, 38.986618>,  <44.057281, 35.582512, 38.935493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268818, 35.683701, 38.986618>,  <44.621376, 35.852348, 39.071823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268818, 35.683701, 38.986618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205840, 0.063076, -0.976551,
		0.425167, -0.904578, 0.031190,
		-0.881398, -0.421617, -0.213016,
		44.004398, 35.557217, 38.922714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726006, 35.334396, 38.598103>,  <44.621376, 35.852348, 39.071823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726006, 35.334396, 38.598103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333282, 35.400471, 38.560650>,  <44.097649, 35.440113, 38.538177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333282, 35.400471, 38.560650>,  <44.726006, 35.334396, 38.598103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333282, 35.400471, 38.560650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098521, 0.021623, -0.994900,
		-0.162316, -0.986026, -0.037504,
		-0.981808, 0.165183, -0.093634,
		44.038738, 35.450024, 38.532558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503407, 34.904758, 38.051128>,  <44.726006, 35.334396, 38.598103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503407, 34.904758, 38.051128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198559, 35.162434, 38.077049>,  <44.015652, 35.317039, 38.092602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198559, 35.162434, 38.077049>,  <44.503407, 34.904758, 38.051128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198559, 35.162434, 38.077049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144860, -0.072111, -0.986821,
		-0.631025, -0.761461, 0.148274,
		-0.762117, 0.644187, 0.064802,
		43.969925, 35.355690, 38.096489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816402, 34.542538, 37.735298>,  <44.503407, 34.904758, 38.051128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816402, 34.542538, 37.735298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805744, 34.941872, 37.714798>,  <43.799351, 35.181473, 37.702499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805744, 34.941872, 37.714798>,  <43.816402, 34.542538, 37.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805744, 34.941872, 37.714798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131934, -0.054331, -0.989768,
		-0.990900, -0.019612, 0.133161,
		-0.026646, 0.998330, -0.051249,
		43.797749, 35.241371, 37.699425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235386, 34.646503, 37.170094>,  <43.816402, 34.542538, 37.735298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235386, 34.646503, 37.170094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466492, 34.967220, 37.231178>,  <43.605156, 35.159649, 37.267830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466492, 34.967220, 37.231178>,  <43.235386, 34.646503, 37.170094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466492, 34.967220, 37.231178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041877, 0.215970, -0.975501,
		-0.815129, 0.557215, 0.158356,
		0.577764, 0.801791, 0.152710,
		43.639820, 35.207756, 37.276993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063587, 35.101620, 36.599136>,  <43.235386, 34.646503, 37.170094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063587, 35.101620, 36.599136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380127, 35.302341, 36.738827>,  <43.570053, 35.422775, 36.822639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380127, 35.302341, 36.738827>,  <43.063587, 35.101620, 36.599136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380127, 35.302341, 36.738827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234481, 0.278415, -0.931399,
		-0.564607, 0.818950, 0.102661,
		0.791351, 0.501803, 0.349224,
		43.617531, 35.452881, 36.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985558, 35.764305, 36.311939>,  <43.063587, 35.101620, 36.599136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985558, 35.764305, 36.311939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362663, 35.646236, 36.373993>,  <43.588928, 35.575397, 36.411224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362663, 35.646236, 36.373993>,  <42.985558, 35.764305, 36.311939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362663, 35.646236, 36.373993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220687, 0.203539, -0.953871,
		0.249977, 0.933514, 0.257029,
		0.942767, -0.295169, 0.155134,
		43.645493, 35.557686, 36.420532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344498, 36.257889, 36.072746>,  <42.985558, 35.764305, 36.311939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344498, 36.257889, 36.072746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614376, 35.963161, 36.090073>,  <43.776302, 35.786324, 36.100468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614376, 35.963161, 36.090073>,  <43.344498, 36.257889, 36.072746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614376, 35.963161, 36.090073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124327, 0.055607, -0.990682,
		0.727545, 0.673798, 0.129124,
		0.674700, -0.736820, 0.043315,
		43.816788, 35.742115, 36.103065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916538, 36.460564, 35.621998>,  <43.344498, 36.257889, 36.072746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916538, 36.460564, 35.621998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969681, 36.065643, 35.656849>,  <44.001568, 35.828693, 35.677761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969681, 36.065643, 35.656849>,  <43.916538, 36.460564, 35.621998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969681, 36.065643, 35.656849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333097, -0.038320, -0.942114,
		0.933486, 0.154190, 0.323775,
		0.132858, -0.987298, 0.087132,
		44.009537, 35.769455, 35.682987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516510, 36.403206, 35.269611>,  <43.916538, 36.460564, 35.621998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516510, 36.403206, 35.269611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343773, 36.042942, 35.288860>,  <44.240131, 35.826782, 35.300407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343773, 36.042942, 35.288860>,  <44.516510, 36.403206, 35.269611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343773, 36.042942, 35.288860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398042, -0.238182, -0.885907,
		0.809366, -0.363420, 0.461360,
		-0.431844, -0.900664, 0.048119,
		44.214218, 35.772743, 35.303295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056103, 35.905220, 35.184242>,  <44.516510, 36.403206, 35.269611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056103, 35.905220, 35.184242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695759, 35.784016, 35.059891>,  <44.479553, 35.711292, 34.985279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695759, 35.784016, 35.059891>,  <45.056103, 35.905220, 35.184242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695759, 35.784016, 35.059891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380449, -0.206138, -0.901535,
		0.209090, -0.930426, 0.300980,
		-0.900855, -0.303009, -0.310878,
		44.425503, 35.693111, 34.966629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100666, 35.225533, 34.858517>,  <45.056103, 35.905220, 35.184242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100666, 35.225533, 34.858517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770115, 35.386730, 34.701195>,  <44.571785, 35.483448, 34.606800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770115, 35.386730, 34.701195>,  <45.100666, 35.225533, 34.858517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770115, 35.386730, 34.701195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313327, -0.251276, -0.915798,
		-0.467890, -0.880032, 0.081381,
		-0.826381, 0.402994, -0.393307,
		44.522202, 35.507629, 34.583202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777740, 35.232952, 35.135006>,  <45.100666, 35.225533, 34.858517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777740, 35.232952, 35.135006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744366, 35.614258, 35.018845>,  <45.724342, 35.843040, 34.949146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744366, 35.614258, 35.018845>,  <45.777740, 35.232952, 35.135006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.744366, 35.614258, 35.018845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919566, 0.185939, 0.346157,
		0.383975, -0.238164, -0.892099,
		-0.083434, 0.953260, -0.290403,
		45.719337, 35.900234, 34.931725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323643, 35.393482, 34.663605>,  <45.777740, 35.232952, 35.135006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323643, 35.393482, 34.663605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174908, 35.666279, 34.915516>,  <46.085667, 35.829956, 35.066662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174908, 35.666279, 34.915516>,  <46.323643, 35.393482, 34.663605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174908, 35.666279, 34.915516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911502, 0.139776, 0.386817,
		0.175778, 0.717878, -0.673612,
		-0.371842, 0.681992, 0.629778,
		46.063354, 35.870876, 35.104450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072742, 35.047192, 34.620228>,  <46.323643, 35.393482, 34.663605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072742, 35.047192, 34.620228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209389, 34.797569, 34.901325>,  <47.291378, 34.647797, 35.069984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209389, 34.797569, 34.901325>,  <47.072742, 35.047192, 34.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209389, 34.797569, 34.901325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922110, 0.078001, -0.378984,
		0.181694, 0.777474, 0.602098,
		0.341614, -0.624060, 0.702744,
		47.311874, 34.610352, 35.112148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.498547, 35.432507, 35.124039>,  <47.072742, 35.047192, 34.620228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.498547, 35.432507, 35.124039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604160, 35.051899, 35.060925>,  <47.667530, 34.823536, 35.023056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604160, 35.051899, 35.060925>,  <47.498547, 35.432507, 35.124039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.604160, 35.051899, 35.060925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727477, 0.303879, -0.615170,
		0.633293, 0.047645, 0.772444,
		0.264039, -0.951519, -0.157784,
		47.683372, 34.766445, 35.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.327475, 40.787544, 36.259819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.984650, 40.597317, 36.339092>,  <30.778955, 40.483181, 36.386658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.984650, 40.597317, 36.339092>,  <31.327475, 40.787544, 36.259819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984650, 40.597317, 36.339092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358993, -0.827149, -0.432375,
		0.369555, -0.299424, 0.879645,
		-0.857060, -0.475573, 0.198186,
		30.727531, 40.454643, 36.398548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479214, 40.017086, 36.516556>,  <31.327475, 40.787544, 36.259819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479214, 40.017086, 36.516556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.091217, 40.002354, 36.420422>,  <30.858419, 39.993515, 36.362740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.091217, 40.002354, 36.420422>,  <31.479214, 40.017086, 36.516556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091217, 40.002354, 36.420422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191368, -0.725407, -0.661183,
		-0.149989, -0.687334, 0.710687,
		-0.969990, -0.036832, -0.240337,
		30.800220, 39.991302, 36.348320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251740, 39.259075, 36.451744>,  <31.479214, 40.017086, 36.516556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251740, 39.259075, 36.451744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.984606, 39.453419, 36.226200>,  <30.824326, 39.570023, 36.090874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.984606, 39.453419, 36.226200>,  <31.251740, 39.259075, 36.451744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984606, 39.453419, 36.226200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253329, -0.563964, -0.785983,
		-0.699874, -0.667748, 0.253552,
		-0.667833, 0.485857, -0.563864,
		30.784256, 39.599174, 36.057041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099680, 38.761940, 35.966793>,  <31.251740, 39.259075, 36.451744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099680, 38.761940, 35.966793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.896173, 39.071770, 35.816490>,  <30.774071, 39.257668, 35.726311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.896173, 39.071770, 35.816490>,  <31.099680, 38.761940, 35.966793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896173, 39.071770, 35.816490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048222, -0.461418, -0.885871,
		-0.859555, -0.432579, 0.272104,
		-0.508764, 0.774576, -0.375754,
		30.743544, 39.304142, 35.703762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336563, 38.575340, 35.715416>,  <31.099680, 38.761940, 35.966793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336563, 38.575340, 35.715416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.499781, 38.884983, 35.521812>,  <30.597712, 39.070766, 35.405651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.499781, 38.884983, 35.521812>,  <30.336563, 38.575340, 35.715416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499781, 38.884983, 35.521812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031009, -0.518093, -0.854762,
		-0.912436, 0.363789, -0.187400,
		0.408043, 0.774104, -0.484007,
		30.622194, 39.117214, 35.376610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934851, 38.695496, 35.127117>,  <30.336563, 38.575340, 35.715416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934851, 38.695496, 35.127117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292915, 38.852169, 35.042007>,  <30.507753, 38.946171, 34.990940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292915, 38.852169, 35.042007>,  <29.934851, 38.695496, 35.127117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292915, 38.852169, 35.042007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053259, -0.379947, -0.923473,
		-0.442550, 0.837989, -0.319254,
		0.895161, 0.391681, -0.212777,
		30.561464, 38.969673, 34.978176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968311, 38.540928, 34.496525>,  <29.934851, 38.695496, 35.127117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968311, 38.540928, 34.496525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.338518, 38.681839, 34.552128>,  <30.560642, 38.766384, 34.585487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.338518, 38.681839, 34.552128>,  <29.968311, 38.540928, 34.496525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338518, 38.681839, 34.552128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306767, -0.482148, -0.820626,
		-0.222065, 0.802145, -0.554302,
		0.925517, 0.352274, 0.139004,
		30.616173, 38.787521, 34.593830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193468, 38.672939, 33.821182>,  <29.968311, 38.540928, 34.496525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193468, 38.672939, 33.821182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.526417, 38.662037, 34.042599>,  <30.726187, 38.655495, 34.175449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.526417, 38.662037, 34.042599>,  <30.193468, 38.672939, 33.821182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526417, 38.662037, 34.042599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495072, -0.412384, -0.764750,
		0.249113, 0.910602, -0.329766,
		0.832374, -0.027251, 0.553544,
		30.776129, 38.653862, 34.208664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791954, 39.090458, 33.515377>,  <30.193468, 38.672939, 33.821182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791954, 39.090458, 33.515377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936243, 38.793488, 33.741184>,  <31.022818, 38.615303, 33.876667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936243, 38.793488, 33.741184>,  <30.791954, 39.090458, 33.515377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936243, 38.793488, 33.741184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542315, -0.325466, -0.774575,
		0.758797, 0.585553, 0.285227,
		0.360724, -0.742428, 0.564517,
		31.044460, 38.570759, 33.910538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425117, 38.786621, 33.121937>,  <30.791954, 39.090458, 33.515377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425117, 38.786621, 33.121937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.330442, 38.490726, 33.373894>,  <31.273638, 38.313190, 33.525066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.330442, 38.490726, 33.373894>,  <31.425117, 38.786621, 33.121937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330442, 38.490726, 33.373894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572342, -0.630043, -0.524853,
		0.785114, 0.236288, 0.572507,
		-0.236688, -0.739739, 0.629893,
		31.259436, 38.268806, 33.562862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009975, 38.448441, 33.410477>,  <31.425117, 38.786621, 33.121937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009975, 38.448441, 33.410477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738003, 38.155853, 33.431053>,  <31.574818, 37.980301, 33.443401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738003, 38.155853, 33.431053>,  <32.009975, 38.448441, 33.410477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738003, 38.155853, 33.431053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655510, -0.637773, -0.404416,
		0.328626, -0.241254, 0.913127,
		-0.679935, -0.731466, 0.051444,
		31.534023, 37.936413, 33.446487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293068, 37.879379, 33.777641>,  <32.009975, 38.448441, 33.410477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293068, 37.879379, 33.777641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.988520, 37.703075, 33.587463>,  <31.805792, 37.597294, 33.473354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.988520, 37.703075, 33.587463>,  <32.293068, 37.879379, 33.777641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988520, 37.703075, 33.587463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610187, -0.734974, -0.295780,
		-0.219074, -0.515309, 0.828530,
		-0.761366, -0.440760, -0.475449,
		31.760109, 37.570847, 33.444828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320503, 37.140331, 33.898693>,  <32.293068, 37.879379, 33.777641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320503, 37.140331, 33.898693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045971, 37.120689, 33.608440>,  <31.881252, 37.108906, 33.434288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045971, 37.120689, 33.608440>,  <32.320503, 37.140331, 33.898693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045971, 37.120689, 33.608440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452780, -0.809637, -0.373467,
		-0.569160, -0.584873, 0.577911,
		-0.686328, -0.049104, -0.725632,
		31.840073, 37.105957, 33.390751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026085, 36.496384, 33.891544>,  <32.320503, 37.140331, 33.898693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026085, 36.496384, 33.891544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.956379, 36.611843, 33.514969>,  <31.914555, 36.681118, 33.289024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.956379, 36.611843, 33.514969>,  <32.026085, 36.496384, 33.891544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956379, 36.611843, 33.514969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564574, -0.754033, -0.335694,
		-0.806776, -0.590013, -0.031560,
		-0.174266, 0.288648, -0.941442,
		31.904099, 36.698437, 33.232536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988945, 35.881996, 33.584774>,  <32.026085, 36.496384, 33.891544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988945, 35.881996, 33.584774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056313, 36.142979, 33.289223>,  <32.096733, 36.299568, 33.111893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056313, 36.142979, 33.289223>,  <31.988945, 35.881996, 33.584774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056313, 36.142979, 33.289223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673565, -0.623457, -0.397004,
		-0.719684, -0.430816, -0.544474,
		0.168420, 0.652456, -0.738875,
		32.106838, 36.338715, 33.067562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877016, 35.504360, 32.918552>,  <31.988945, 35.881996, 33.584774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877016, 35.504360, 32.918552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.090042, 35.831593, 32.831730>,  <32.217857, 36.027931, 32.779636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.090042, 35.831593, 32.831730>,  <31.877016, 35.504360, 32.918552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090042, 35.831593, 32.831730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668948, -0.563952, -0.484218,
		-0.518538, 0.112682, -0.847597,
		0.532567, 0.818084, -0.217052,
		32.249813, 36.077019, 32.766613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996288, 35.346817, 32.269325>,  <31.877016, 35.504360, 32.918552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996288, 35.346817, 32.269325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283180, 35.607372, 32.368347>,  <32.455315, 35.763706, 32.427761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283180, 35.607372, 32.368347>,  <31.996288, 35.346817, 32.269325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283180, 35.607372, 32.368347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666156, -0.536669, -0.517903,
		-0.204502, 0.536361, -0.818838,
		0.717228, 0.651386, 0.247550,
		32.498348, 35.802788, 32.442612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518318, 35.590565, 31.580223>,  <31.996288, 35.346817, 32.269325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518318, 35.590565, 31.580223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.703499, 35.642365, 31.930971>,  <32.814610, 35.673443, 32.141422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.703499, 35.642365, 31.930971>,  <32.518318, 35.590565, 31.580223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703499, 35.642365, 31.930971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754625, -0.576546, -0.313266,
		0.464989, 0.806737, -0.364637,
		0.462953, 0.129499, 0.876872,
		32.842384, 35.681213, 32.194035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152504, 35.257931, 31.473188>,  <32.518318, 35.590565, 31.580223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152504, 35.257931, 31.473188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206879, 35.365227, 31.854673>,  <33.239502, 35.429604, 32.083565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206879, 35.365227, 31.854673>,  <33.152504, 35.257931, 31.473188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206879, 35.365227, 31.854673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883747, -0.467930, 0.005643,
		0.447785, 0.842075, -0.300663,
		0.135937, 0.268237, 0.953714,
		33.247662, 35.445698, 32.140789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841595, 35.661331, 31.681473>,  <33.152504, 35.257931, 31.473188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841595, 35.661331, 31.681473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.733078, 35.453102, 32.005302>,  <33.667969, 35.328167, 32.199600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.733078, 35.453102, 32.005302>,  <33.841595, 35.661331, 31.681473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733078, 35.453102, 32.005302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887568, -0.460675, 0.001205,
		0.372323, 0.718878, 0.587017,
		-0.271291, -0.520569, 0.809573,
		33.651691, 35.296932, 32.248173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291908, 35.850971, 32.186394>,  <33.841595, 35.661331, 31.681473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291908, 35.850971, 32.186394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145969, 35.503757, 32.321087>,  <34.058407, 35.295429, 32.401905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145969, 35.503757, 32.321087>,  <34.291908, 35.850971, 32.186394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145969, 35.503757, 32.321087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930515, -0.327505, 0.163960,
		-0.032041, 0.373160, 0.927213,
		-0.364851, -0.868039, 0.336738,
		34.036514, 35.243347, 32.422108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713055, 35.585777, 32.895729>,  <34.291908, 35.850971, 32.186394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713055, 35.585777, 32.895729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525928, 35.271755, 32.733326>,  <34.413654, 35.083344, 32.635883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525928, 35.271755, 32.733326>,  <34.713055, 35.585777, 32.895729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525928, 35.271755, 32.733326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814522, -0.561267, 0.146739,
		-0.343078, -0.262058, 0.902010,
		-0.467815, -0.785051, -0.406011,
		34.385586, 35.036240, 32.611523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313133, 35.229183, 32.860924>,  <34.713055, 35.585777, 32.895729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313133, 35.229183, 32.860924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993980, 35.011108, 32.758041>,  <34.802490, 34.880264, 32.696312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993980, 35.011108, 32.758041>,  <35.313133, 35.229183, 32.860924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993980, 35.011108, 32.758041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558887, -0.828917, 0.023294,
		-0.225905, -0.125165, 0.966075,
		-0.797880, -0.545189, -0.257209,
		34.754616, 34.847553, 32.680878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030235, 34.953133, 33.019173>,  <35.313133, 35.229183, 32.860924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030235, 34.953133, 33.019173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401894, 35.100624, 33.008377>,  <36.624889, 35.189121, 33.001900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401894, 35.100624, 33.008377>,  <36.030235, 34.953133, 33.019173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401894, 35.100624, 33.008377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234387, 0.643925, 0.728302,
		0.285925, -0.670373, 0.684725,
		0.929145, 0.368730, -0.026988,
		36.680637, 35.211243, 33.000282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131557, 35.017208, 33.723888>,  <36.030235, 34.953133, 33.019173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131557, 35.017208, 33.723888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399567, 35.263161, 33.557522>,  <36.560371, 35.410732, 33.457703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399567, 35.263161, 33.557522>,  <36.131557, 35.017208, 33.723888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399567, 35.263161, 33.557522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152615, 0.662406, 0.733435,
		0.726485, -0.427942, 0.537667,
		0.670021, 0.614885, -0.415918,
		36.600574, 35.447628, 33.432747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283108, 35.264690, 34.265102>,  <36.131557, 35.017208, 33.723888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283108, 35.264690, 34.265102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468937, 35.512264, 34.011776>,  <36.580437, 35.660809, 33.859779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468937, 35.512264, 34.011776>,  <36.283108, 35.264690, 34.265102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468937, 35.512264, 34.011776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369627, 0.785437, 0.496452,
		0.804700, 0.003449, 0.593672,
		0.464579, 0.618932, -0.633317,
		36.608311, 35.697945, 33.821781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721260, 35.696423, 34.637096>,  <36.283108, 35.264690, 34.265102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721260, 35.696423, 34.637096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642303, 35.893211, 34.297920>,  <36.594929, 36.011284, 34.094414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642303, 35.893211, 34.297920>,  <36.721260, 35.696423, 34.637096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642303, 35.893211, 34.297920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453186, 0.721194, 0.523928,
		0.869286, 0.487694, 0.080595,
		-0.197392, 0.491969, -0.847941,
		36.583084, 36.040802, 34.043537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981327, 36.373131, 34.684849>,  <36.721260, 35.696423, 34.637096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981327, 36.373131, 34.684849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692970, 36.373951, 34.407631>,  <36.519958, 36.374443, 34.241299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692970, 36.373951, 34.407631>,  <36.981327, 36.373131, 34.684849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692970, 36.373951, 34.407631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443514, 0.767052, 0.463601,
		0.532553, 0.641582, -0.552052,
		-0.720890, 0.002049, -0.693046,
		36.476704, 36.374565, 34.199718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537209, 36.874760, 34.950245>,  <36.981327, 36.373131, 34.684849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537209, 36.874760, 34.950245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363243, 36.763920, 34.607533>,  <36.258865, 36.697418, 34.401905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363243, 36.763920, 34.607533>,  <36.537209, 36.874760, 34.950245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363243, 36.763920, 34.607533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754755, 0.631110, 0.179010,
		0.491118, 0.724511, -0.483618,
		-0.434911, -0.277098, -0.856779,
		36.232769, 36.680790, 34.350498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418743, 37.476616, 34.423164>,  <36.537209, 36.874760, 34.950245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418743, 37.476616, 34.423164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148598, 37.183769, 34.387634>,  <35.986511, 37.008060, 34.366318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148598, 37.183769, 34.387634>,  <36.418743, 37.476616, 34.423164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148598, 37.183769, 34.387634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729749, 0.646003, 0.223935,
		-0.106567, 0.216056, -0.970548,
		-0.675359, -0.732121, -0.088824,
		35.945992, 36.964134, 34.360989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855080, 37.706593, 33.978119>,  <36.418743, 37.476616, 34.423164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855080, 37.706593, 33.978119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729397, 37.424709, 34.232571>,  <35.653988, 37.255581, 34.385242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729397, 37.424709, 34.232571>,  <35.855080, 37.706593, 33.978119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729397, 37.424709, 34.232571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759789, 0.588418, 0.276560,
		-0.569205, -0.396429, -0.720312,
		-0.314208, -0.704704, 0.636133,
		35.635136, 37.213299, 34.423412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170475, 37.799931, 33.986538>,  <35.855080, 37.706593, 33.978119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170475, 37.799931, 33.986538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237000, 37.589764, 34.320312>,  <35.276917, 37.463665, 34.520576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237000, 37.589764, 34.320312>,  <35.170475, 37.799931, 33.986538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237000, 37.589764, 34.320312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625673, 0.597825, 0.501137,
		-0.762150, -0.605429, -0.229312,
		0.166315, -0.525416, 0.834433,
		35.286896, 37.432140, 34.570641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473232, 37.578617, 34.253426>,  <35.170475, 37.799931, 33.986538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473232, 37.578617, 34.253426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731014, 37.560802, 34.558762>,  <34.885685, 37.550114, 34.741962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731014, 37.560802, 34.558762>,  <34.473232, 37.578617, 34.253426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731014, 37.560802, 34.558762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690662, 0.394484, 0.606109,
		-0.328118, -0.917823, 0.223471,
		0.644457, -0.044533, 0.763343,
		34.924351, 37.547443, 34.787766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016312, 37.558453, 34.881065>,  <34.473232, 37.578617, 34.253426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016312, 37.558453, 34.881065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.375439, 37.649616, 35.031784>,  <34.590916, 37.704315, 35.122215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.375439, 37.649616, 35.031784>,  <34.016312, 37.558453, 34.881065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375439, 37.649616, 35.031784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440150, 0.437833, 0.783945,
		0.013696, -0.869689, 0.493411,
		0.897820, 0.227912, 0.376797,
		34.644783, 37.717991, 35.144821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948330, 37.404079, 35.524498>,  <34.016312, 37.558453, 34.881065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948330, 37.404079, 35.524498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262417, 37.651474, 35.536560>,  <34.450871, 37.799911, 35.543797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262417, 37.651474, 35.536560>,  <33.948330, 37.404079, 35.524498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262417, 37.651474, 35.536560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422386, 0.499370, 0.756452,
		0.452788, -0.606723, 0.653353,
		0.785222, 0.618479, 0.030162,
		34.497982, 37.837017, 35.545609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143394, 37.559128, 36.303211>,  <33.948330, 37.404079, 35.524498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143394, 37.559128, 36.303211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290325, 37.857380, 36.080822>,  <34.378483, 38.036331, 35.947388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290325, 37.857380, 36.080822>,  <34.143394, 37.559128, 36.303211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290325, 37.857380, 36.080822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216526, 0.649894, 0.728529,
		0.904538, -0.147223, 0.400170,
		0.367324, 0.745629, -0.555977,
		34.400524, 38.081070, 35.914028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392700, 38.057011, 36.815590>,  <34.143394, 37.559128, 36.303211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392700, 38.057011, 36.815590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365856, 38.267948, 36.476791>,  <34.349751, 38.394512, 36.273510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365856, 38.267948, 36.476791>,  <34.392700, 38.057011, 36.815590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365856, 38.267948, 36.476791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391494, 0.766915, 0.508501,
		0.917730, 0.365720, 0.154985,
		-0.067109, 0.527343, -0.846998,
		34.345722, 38.426151, 36.222691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738049, 38.797668, 36.831821>,  <34.392700, 38.057011, 36.815590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738049, 38.797668, 36.831821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.457909, 38.811863, 36.546654>,  <34.289825, 38.820381, 36.375553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.457909, 38.811863, 36.546654>,  <34.738049, 38.797668, 36.831821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457909, 38.811863, 36.546654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284319, 0.902243, 0.324221,
		0.654730, 0.429764, -0.621796,
		-0.700351, 0.035489, -0.712916,
		34.247803, 38.822510, 36.332779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690441, 39.520046, 36.687000>,  <34.738049, 38.797668, 36.831821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690441, 39.520046, 36.687000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362919, 39.356495, 36.525818>,  <34.166405, 39.258366, 36.429108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362919, 39.356495, 36.525818>,  <34.690441, 39.520046, 36.687000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362919, 39.356495, 36.525818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572737, 0.629605, 0.524948,
		0.039067, 0.660621, -0.749702,
		-0.818808, -0.408874, -0.402958,
		34.117275, 39.233833, 36.404930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414330, 40.030209, 36.478943>,  <34.690441, 39.520046, 36.687000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414330, 40.030209, 36.478943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119717, 39.760437, 36.499607>,  <33.942951, 39.598576, 36.512005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119717, 39.760437, 36.499607>,  <34.414330, 40.030209, 36.478943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119717, 39.760437, 36.499607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618608, 0.702520, 0.351839,
		-0.273585, 0.227180, -0.934634,
		-0.736529, -0.674430, 0.051664,
		33.898758, 39.558109, 36.515106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.776531, 40.411346, 36.401791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659222, 40.067989, 36.570145>,  <33.588837, 39.861977, 36.671158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659222, 40.067989, 36.570145>,  <33.776531, 40.411346, 36.401791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659222, 40.067989, 36.570145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722718, 0.487259, 0.490160,
		-0.625833, -0.160431, -0.763279,
		-0.293278, -0.858394, 0.420889,
		33.571239, 39.810471, 36.696411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049614, 40.412758, 36.358795>,  <33.776531, 40.411346, 36.401791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049614, 40.412758, 36.358795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132843, 40.149544, 36.648262>,  <33.182781, 39.991615, 36.821941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132843, 40.149544, 36.648262>,  <33.049614, 40.412758, 36.358795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132843, 40.149544, 36.648262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794938, 0.317308, 0.517098,
		-0.569893, -0.682867, -0.457071,
		0.208077, -0.658033, 0.723669,
		33.195267, 39.952133, 36.865364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430077, 40.036694, 36.641655>,  <33.049614, 40.412758, 36.358795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430077, 40.036694, 36.641655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707409, 39.984623, 36.925159>,  <32.873810, 39.953381, 37.095264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707409, 39.984623, 36.925159>,  <32.430077, 40.036694, 36.641655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707409, 39.984623, 36.925159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632822, 0.360501, 0.685255,
		-0.344714, -0.923630, 0.167569,
		0.693332, -0.130175, 0.708763,
		32.915409, 39.945572, 37.137787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056488, 39.897095, 37.163784>,  <32.430077, 40.036694, 36.641655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056488, 39.897095, 37.163784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.391708, 39.916828, 37.381126>,  <32.592842, 39.928669, 37.511532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.391708, 39.916828, 37.381126>,  <32.056488, 39.897095, 37.163784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391708, 39.916828, 37.381126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526210, 0.336167, 0.781086,
		-0.144127, -0.940510, 0.307683,
		0.838052, 0.049331, 0.543356,
		32.643124, 39.931629, 37.544132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900753, 39.687363, 37.911789>,  <32.056488, 39.897095, 37.163784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900753, 39.687363, 37.911789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.223492, 39.923309, 37.898781>,  <32.417133, 40.064877, 37.890976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.223492, 39.923309, 37.898781>,  <31.900753, 39.687363, 37.911789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223492, 39.923309, 37.898781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282116, 0.433088, 0.856064,
		0.519049, -0.681536, 0.515846,
		0.806845, 0.589868, -0.032522,
		32.465546, 40.100269, 37.889023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323860, 39.728477, 38.584503>,  <31.900753, 39.687363, 37.911789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323860, 39.728477, 38.584503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442612, 40.068394, 38.410278>,  <32.513863, 40.272343, 38.305744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442612, 40.068394, 38.410278>,  <32.323860, 39.728477, 38.584503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442612, 40.068394, 38.410278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147864, 0.491537, 0.858212,
		0.943397, -0.190384, 0.271582,
		0.296882, 0.849791, -0.435563,
		32.531677, 40.323330, 38.279610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545464, 40.083271, 39.066597>,  <32.323860, 39.728477, 38.584503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545464, 40.083271, 39.066597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485886, 40.383030, 38.808537>,  <32.450138, 40.562885, 38.653702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485886, 40.383030, 38.808537>,  <32.545464, 40.083271, 39.066597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485886, 40.383030, 38.808537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163616, 0.624757, 0.763484,
		0.975215, 0.219277, 0.029557,
		-0.148949, 0.749397, -0.645149,
		32.441200, 40.607849, 38.614990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916885, 40.574589, 39.338173>,  <32.545464, 40.083271, 39.066597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916885, 40.574589, 39.338173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.663803, 40.778389, 39.104904>,  <32.511955, 40.900669, 38.964943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.663803, 40.778389, 39.104904>,  <32.916885, 40.574589, 39.338173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663803, 40.778389, 39.104904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189838, 0.628043, 0.754668,
		0.750765, 0.588189, -0.300642,
		-0.632703, 0.509505, -0.583173,
		32.473991, 40.931240, 38.929951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057201, 41.319187, 39.450081>,  <32.916885, 40.574589, 39.338173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057201, 41.319187, 39.450081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.690269, 41.274105, 39.297348>,  <32.470108, 41.247055, 39.205708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.690269, 41.274105, 39.297348>,  <33.057201, 41.319187, 39.450081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690269, 41.274105, 39.297348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394810, 0.381010, 0.836036,
		0.051257, 0.917676, -0.394010,
		-0.917332, -0.112706, -0.381837,
		32.415070, 41.240292, 39.182796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756390, 41.945793, 39.355835>,  <33.057201, 41.319187, 39.450081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756390, 41.945793, 39.355835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.424892, 41.722355, 39.342201>,  <32.225994, 41.588291, 39.334023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.424892, 41.722355, 39.342201>,  <32.756390, 41.945793, 39.355835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424892, 41.722355, 39.342201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434371, 0.603646, 0.668530,
		-0.352864, 0.568843, -0.742904,
		-0.828740, -0.558596, -0.034084,
		32.176270, 41.554775, 39.331974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196590, 42.469303, 39.533665>,  <32.756390, 41.945793, 39.355835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196590, 42.469303, 39.533665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048939, 42.100616, 39.581284>,  <31.960346, 41.879402, 39.609856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048939, 42.100616, 39.581284>,  <32.196590, 42.469303, 39.533665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048939, 42.100616, 39.581284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572375, 0.326386, 0.752236,
		-0.732208, 0.209533, -0.648049,
		-0.369133, -0.921720, 0.119051,
		31.938198, 41.824100, 39.617001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499615, 42.578930, 39.684368>,  <32.196590, 42.469303, 39.533665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499615, 42.578930, 39.684368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563347, 42.214664, 39.836845>,  <31.601587, 41.996105, 39.928329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563347, 42.214664, 39.836845>,  <31.499615, 42.578930, 39.684368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563347, 42.214664, 39.836845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394268, 0.295296, 0.870260,
		-0.905078, -0.288952, -0.311995,
		0.159333, -0.910663, 0.381190,
		31.611147, 41.941467, 39.951202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092457, 42.557644, 40.188217>,  <31.499615, 42.578930, 39.684368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092457, 42.557644, 40.188217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325933, 42.254826, 40.305649>,  <31.466019, 42.073135, 40.376106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325933, 42.254826, 40.305649>,  <31.092457, 42.557644, 40.188217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325933, 42.254826, 40.305649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134073, 0.266739, 0.954397,
		-0.800830, -0.596435, 0.054194,
		0.583691, -0.757044, 0.293579,
		31.501041, 42.027714, 40.393723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744680, 42.276844, 40.836769>,  <31.092457, 42.557644, 40.188217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744680, 42.276844, 40.836769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109587, 42.114056, 40.855278>,  <31.328531, 42.016380, 40.866383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109587, 42.114056, 40.855278>,  <30.744680, 42.276844, 40.836769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109587, 42.114056, 40.855278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049332, 0.221313, 0.973954,
		-0.406616, -0.886223, 0.221973,
		0.912266, -0.406976, 0.046270,
		31.383266, 41.991962, 40.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733866, 41.723259, 41.352211>,  <30.744680, 42.276844, 40.836769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733866, 41.723259, 41.352211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.104712, 41.868790, 41.316242>,  <31.327219, 41.956108, 41.294662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.104712, 41.868790, 41.316242>,  <30.733866, 41.723259, 41.352211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104712, 41.868790, 41.316242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073564, 0.058597, 0.995568,
		0.367485, -0.929621, 0.027561,
		0.927116, 0.363828, -0.089920,
		31.382847, 41.977940, 41.289265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898554, 41.742752, 42.050438>,  <30.733866, 41.723259, 41.352211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898554, 41.742752, 42.050438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225245, 41.901985, 41.883350>,  <31.421259, 41.997524, 41.783096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225245, 41.901985, 41.883350>,  <30.898554, 41.742752, 42.050438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225245, 41.901985, 41.883350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316878, 0.295569, 0.901236,
		0.482232, -0.868429, 0.115255,
		0.816725, 0.398083, -0.417719,
		31.470263, 42.021412, 41.758034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559898, 41.450634, 42.436794>,  <30.898554, 41.742752, 42.050438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559898, 41.450634, 42.436794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629211, 41.799900, 42.254562>,  <31.670799, 42.009460, 42.145222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629211, 41.799900, 42.254562>,  <31.559898, 41.450634, 42.436794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629211, 41.799900, 42.254562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239136, 0.411432, 0.879510,
		0.955399, -0.261348, -0.137512,
		0.173281, 0.873167, -0.455580,
		31.681196, 42.061852, 42.117889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183136, 41.694748, 42.714733>,  <31.559898, 41.450634, 42.436794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183136, 41.694748, 42.714733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001301, 42.024792, 42.580547>,  <31.892200, 42.222820, 42.500034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001301, 42.024792, 42.580547>,  <32.183136, 41.694748, 42.714733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001301, 42.024792, 42.580547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223241, 0.470157, 0.853883,
		0.862272, 0.313275, -0.397926,
		-0.454588, 0.825113, -0.335467,
		31.864923, 42.272327, 42.479908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539722, 42.217155, 42.963806>,  <32.183136, 41.694748, 42.714733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539722, 42.217155, 42.963806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185852, 42.385830, 42.884277>,  <31.973530, 42.487034, 42.836559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185852, 42.385830, 42.884277>,  <32.539722, 42.217155, 42.963806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185852, 42.385830, 42.884277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062277, 0.529540, 0.845996,
		0.462030, 0.736049, -0.494732,
		-0.884675, 0.421686, -0.198824,
		31.920450, 42.512337, 42.824631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697868, 42.909218, 43.252205>,  <32.539722, 42.217155, 42.963806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697868, 42.909218, 43.252205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302227, 42.860802, 43.218674>,  <32.064842, 42.831753, 43.198555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302227, 42.860802, 43.218674>,  <32.697868, 42.909218, 43.252205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302227, 42.860802, 43.218674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119423, 0.326504, 0.937621,
		-0.086121, 0.937413, -0.337400,
		-0.989101, -0.121042, -0.083830,
		32.005497, 42.824490, 43.193523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353611, 43.625538, 43.408703>,  <32.697868, 42.909218, 43.252205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353611, 43.625538, 43.408703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058208, 43.359875, 43.455181>,  <31.880966, 43.200478, 43.483067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058208, 43.359875, 43.455181>,  <32.353611, 43.625538, 43.408703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058208, 43.359875, 43.455181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209002, 0.389340, 0.897069,
		-0.641032, 0.638209, -0.426341,
		-0.738509, -0.664156, 0.116193,
		31.836657, 43.160629, 43.490040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838158, 44.043358, 43.537083>,  <32.353611, 43.625538, 43.408703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838158, 44.043358, 43.537083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715343, 43.691269, 43.681824>,  <31.641655, 43.480015, 43.768669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715343, 43.691269, 43.681824>,  <31.838158, 44.043358, 43.537083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715343, 43.691269, 43.681824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389729, 0.463166, 0.795983,
		-0.868240, 0.103369, -0.485256,
		-0.307034, -0.880223, 0.361853,
		31.623234, 43.427200, 43.790379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115765, 43.887447, 43.609306>,  <31.838158, 44.043358, 43.537083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115765, 43.887447, 43.609306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.293955, 43.686199, 43.905529>,  <31.400869, 43.565449, 44.083263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.293955, 43.686199, 43.905529>,  <31.115765, 43.887447, 43.609306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293955, 43.686199, 43.905529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582945, 0.464793, 0.666440,
		-0.679505, -0.728585, -0.086239,
		0.445475, -0.503122, 0.740554,
		31.427597, 43.535263, 44.127697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626972, 43.611221, 44.078793>,  <31.115765, 43.887447, 43.609306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626972, 43.611221, 44.078793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947332, 43.589973, 44.317368>,  <31.139549, 43.577225, 44.460510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947332, 43.589973, 44.317368>,  <30.626972, 43.611221, 44.078793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947332, 43.589973, 44.317368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581301, 0.170041, 0.795723,
		-0.143687, -0.984004, 0.105307,
		0.800902, -0.053120, 0.596435,
		31.187603, 43.574039, 44.496300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169685, 43.652447, 43.460007>,  <30.626972, 43.611221, 44.078793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169685, 43.652447, 43.460007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.782846, 43.658657, 43.561581>,  <29.550743, 43.662384, 43.622524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.782846, 43.658657, 43.561581>,  <30.169685, 43.652447, 43.460007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782846, 43.658657, 43.561581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213309, -0.593440, -0.776098,
		0.138643, -0.804728, 0.577227,
		-0.967097, 0.015527, 0.253932,
		29.492718, 43.663315, 43.637760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086527, 42.958202, 43.540104>,  <30.169685, 43.652447, 43.460007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086527, 42.958202, 43.540104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735008, 43.137383, 43.474308>,  <29.524097, 43.244888, 43.434830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735008, 43.137383, 43.474308>,  <30.086527, 42.958202, 43.540104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735008, 43.137383, 43.474308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163649, -0.606702, -0.777902,
		-0.448253, -0.656701, 0.606475,
		-0.878799, 0.447946, -0.164488,
		29.471369, 43.271767, 43.424961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660498, 42.463184, 43.433624>,  <30.086527, 42.958202, 43.540104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660498, 42.463184, 43.433624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432049, 42.757515, 43.288090>,  <29.294979, 42.934113, 43.200768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432049, 42.757515, 43.288090>,  <29.660498, 42.463184, 43.433624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432049, 42.757515, 43.288090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158248, -0.533621, -0.830786,
		-0.805467, -0.416903, 0.421205,
		-0.571121, 0.735826, -0.363840,
		29.260712, 42.978264, 43.178936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923862, 42.203674, 43.284203>,  <29.660498, 42.463184, 43.433624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923862, 42.203674, 43.284203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016376, 42.500446, 43.032475>,  <29.071884, 42.678509, 42.881439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016376, 42.500446, 43.032475>,  <28.923862, 42.203674, 43.284203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016376, 42.500446, 43.032475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292213, -0.564012, -0.772335,
		-0.927965, 0.362525, 0.086355,
		0.231286, 0.741934, -0.629318,
		29.085762, 42.723026, 42.843678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362967, 42.209763, 42.864059>,  <28.923862, 42.203674, 43.284203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362967, 42.209763, 42.864059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654840, 42.381092, 42.650856>,  <28.829966, 42.483891, 42.522934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654840, 42.381092, 42.650856>,  <28.362967, 42.209763, 42.864059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654840, 42.381092, 42.650856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333427, -0.457658, -0.824242,
		-0.596979, 0.779156, -0.191131,
		0.729686, 0.428327, -0.533004,
		28.873747, 42.509590, 42.490955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124151, 42.496666, 42.188992>,  <28.362967, 42.209763, 42.864059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124151, 42.496666, 42.188992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.514648, 42.475296, 42.105000>,  <28.748947, 42.462475, 42.054604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.514648, 42.475296, 42.105000>,  <28.124151, 42.496666, 42.188992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514648, 42.475296, 42.105000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210744, -0.459285, -0.862928,
		-0.050338, 0.886681, -0.459634,
		0.976245, -0.053427, -0.209982,
		28.807522, 42.459267, 42.042004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189970, 42.614464, 41.418266>,  <28.124151, 42.496666, 42.188992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189970, 42.614464, 41.418266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549671, 42.473396, 41.521782>,  <28.765491, 42.388756, 41.583893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549671, 42.473396, 41.521782>,  <28.189970, 42.614464, 41.418266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549671, 42.473396, 41.521782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146375, -0.314913, -0.937766,
		0.412215, 0.881168, -0.231565,
		0.899252, -0.352666, 0.258792,
		28.819447, 42.367596, 41.599419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674799, 42.917923, 40.936287>,  <28.189970, 42.614464, 41.418266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674799, 42.917923, 40.936287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.837234, 42.584663, 41.086468>,  <28.934696, 42.384708, 41.176575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.837234, 42.584663, 41.086468>,  <28.674799, 42.917923, 40.936287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837234, 42.584663, 41.086468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135476, -0.351426, -0.926362,
		0.903736, 0.427049, -0.029839,
		0.406088, -0.833144, 0.375451,
		28.959061, 42.334721, 41.199104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315281, 42.823540, 40.627602>,  <28.674799, 42.917923, 40.936287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315281, 42.823540, 40.627602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.267202, 42.441467, 40.735809>,  <29.238356, 42.212223, 40.800732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.267202, 42.441467, 40.735809>,  <29.315281, 42.823540, 40.627602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267202, 42.441467, 40.735809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037036, -0.276616, -0.960266,
		0.992059, -0.105404, 0.068625,
		-0.120198, -0.955182, 0.270516,
		29.231142, 42.154911, 40.816963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931997, 42.528446, 40.369076>,  <29.315281, 42.823540, 40.627602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931997, 42.528446, 40.369076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664997, 42.232014, 40.398041>,  <29.504797, 42.054153, 40.415421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664997, 42.232014, 40.398041>,  <29.931997, 42.528446, 40.369076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664997, 42.232014, 40.398041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243987, -0.309563, -0.919043,
		0.703500, -0.595795, 0.387447,
		-0.667501, -0.741080, 0.072411,
		29.464746, 42.009689, 40.419765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354147, 41.929096, 40.205376>,  <29.931997, 42.528446, 40.369076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354147, 41.929096, 40.205376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.981201, 41.789791, 40.166573>,  <29.757435, 41.706207, 40.143291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.981201, 41.789791, 40.166573>,  <30.354147, 41.929096, 40.205376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981201, 41.789791, 40.166573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236851, -0.385700, -0.891705,
		0.273134, -0.854369, 0.442099,
		-0.932362, -0.348266, -0.097010,
		29.701492, 41.685310, 40.137470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407047, 41.235126, 40.156223>,  <30.354147, 41.929096, 40.205376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407047, 41.235126, 40.156223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.060932, 41.321796, 39.975410>,  <29.853264, 41.373798, 39.866924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.060932, 41.321796, 39.975410>,  <30.407047, 41.235126, 40.156223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060932, 41.321796, 39.975410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359677, -0.359750, -0.860937,
		-0.349146, -0.907546, 0.233362,
		-0.865292, 0.216658, -0.452029,
		29.801346, 41.386799, 39.839802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337357, 40.749115, 39.650162>,  <30.407047, 41.235126, 40.156223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337357, 40.749115, 39.650162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.088917, 41.028641, 39.508236>,  <29.939852, 41.196354, 39.423080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.088917, 41.028641, 39.508236>,  <30.337357, 40.749115, 39.650162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088917, 41.028641, 39.508236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198080, -0.298062, -0.933769,
		-0.758286, -0.650246, 0.046706,
		-0.621101, 0.698813, -0.354817,
		29.902586, 41.238285, 39.401791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052620, 40.468719, 39.136311>,  <30.337357, 40.749115, 39.650162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052620, 40.468719, 39.136311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970997, 40.847580, 39.037300>,  <29.922024, 41.074894, 38.977894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970997, 40.847580, 39.037300>,  <30.052620, 40.468719, 39.136311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970997, 40.847580, 39.037300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041255, -0.260946, -0.964471,
		-0.978089, -0.186596, 0.092323,
		-0.204058, 0.947148, -0.247530,
		29.909779, 41.131725, 38.963039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637623, 40.410458, 38.546783>,  <30.052620, 40.468719, 39.136311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637623, 40.410458, 38.546783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761408, 40.790394, 38.528728>,  <29.835678, 41.018356, 38.517895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761408, 40.790394, 38.528728>,  <29.637623, 40.410458, 38.546783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761408, 40.790394, 38.528728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222872, -0.118599, -0.967607,
		-0.924425, 0.289376, -0.248394,
		0.309462, 0.949840, -0.045142,
		29.854246, 41.075344, 38.515186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352341, 40.689327, 37.971962>,  <29.637623, 40.410458, 38.546783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352341, 40.689327, 37.971962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.650497, 40.943848, 38.051468>,  <29.829391, 41.096561, 38.099171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.650497, 40.943848, 38.051468>,  <29.352341, 40.689327, 37.971962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650497, 40.943848, 38.051468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266905, -0.011647, -0.963652,
		-0.610860, 0.771352, -0.178514,
		0.745394, 0.636303, 0.198763,
		29.874115, 41.134739, 38.111095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223341, 41.225929, 37.510014>,  <29.352341, 40.689327, 37.971962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223341, 41.225929, 37.510014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606052, 41.166317, 37.609905>,  <29.835678, 41.130550, 37.669842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606052, 41.166317, 37.609905>,  <29.223341, 41.225929, 37.510014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606052, 41.166317, 37.609905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234918, -0.110155, -0.965753,
		0.171439, 0.982677, -0.070383,
		0.956777, -0.149034, 0.249733,
		29.893085, 41.121605, 37.684826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539330, 41.470238, 36.938316>,  <29.223341, 41.225929, 37.510014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539330, 41.470238, 36.938316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820568, 41.262398, 37.132500>,  <29.989311, 41.137695, 37.249012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820568, 41.262398, 37.132500>,  <29.539330, 41.470238, 36.938316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820568, 41.262398, 37.132500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368295, -0.317910, -0.873666,
		0.608289, 0.793064, -0.032155,
		0.703095, -0.519599, 0.485463,
		30.031496, 41.106518, 37.278137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062836, 41.569344, 36.498245>,  <29.539330, 41.470238, 36.938316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062836, 41.569344, 36.498245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.140648, 41.250637, 36.727093>,  <30.187336, 41.059414, 36.864403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.140648, 41.250637, 36.727093>,  <30.062836, 41.569344, 36.498245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140648, 41.250637, 36.727093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326120, -0.497549, -0.803797,
		0.925097, 0.342943, 0.163053,
		0.194530, -0.796765, 0.572122,
		30.199007, 41.011608, 36.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649872, 41.273643, 36.179981>,  <30.062836, 41.569344, 36.498245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649872, 41.273643, 36.179981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549360, 40.969040, 36.418968>,  <30.489054, 40.786278, 36.562359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549360, 40.969040, 36.418968>,  <30.649872, 41.273643, 36.179981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549360, 40.969040, 36.418968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155485, -0.641009, -0.751620,
		0.955345, -0.095968, 0.279474,
		-0.251277, -0.761510, 0.597463,
		30.473978, 40.740585, 36.598206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.860062, 32.653900, 41.295883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.894054, 32.259834, 41.236237>,  <40.914448, 32.023396, 41.200451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.894054, 32.259834, 41.236237>,  <40.860062, 32.653900, 41.295883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894054, 32.259834, 41.236237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165664, 0.161542, -0.972862,
		0.982514, 0.057970, 0.176933,
		0.084979, -0.985162, -0.149114,
		40.919548, 31.964285, 41.191502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497448, 32.545128, 40.893383>,  <40.860062, 32.653900, 41.295883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497448, 32.545128, 40.893383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244881, 32.245243, 40.814137>,  <41.093342, 32.065311, 40.766590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244881, 32.245243, 40.814137>,  <41.497448, 32.545128, 40.893383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244881, 32.245243, 40.814137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258687, 0.037199, -0.965245,
		0.731025, -0.660718, 0.170453,
		-0.631414, -0.749712, -0.198113,
		41.055458, 32.020329, 40.754704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865997, 31.964085, 40.510174>,  <41.497448, 32.545128, 40.893383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865997, 31.964085, 40.510174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470169, 31.940395, 40.457638>,  <41.232674, 31.926182, 40.426117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470169, 31.940395, 40.457638>,  <41.865997, 31.964085, 40.510174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470169, 31.940395, 40.457638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131407, 0.002799, -0.991325,
		0.059082, -0.998241, 0.005013,
		-0.989566, -0.059228, -0.131341,
		41.173298, 31.922628, 40.418236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806271, 31.433699, 40.037010>,  <41.865997, 31.964085, 40.510174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806271, 31.433699, 40.037010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466026, 31.644014, 40.037327>,  <41.261879, 31.770205, 40.037518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466026, 31.644014, 40.037327>,  <41.806271, 31.433699, 40.037010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466026, 31.644014, 40.037327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040577, 0.067150, -0.996918,
		-0.524221, -0.847960, -0.078454,
		-0.850615, 0.525789, 0.000794,
		41.210842, 31.801750, 40.037563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449928, 31.164431, 39.470306>,  <41.806271, 31.433699, 40.037010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449928, 31.164431, 39.470306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278580, 31.519876, 39.535862>,  <41.175770, 31.733145, 39.575195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278580, 31.519876, 39.535862>,  <41.449928, 31.164431, 39.470306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278580, 31.519876, 39.535862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033888, 0.197045, -0.979809,
		-0.902966, -0.414170, -0.114522,
		-0.428374, 0.888615, 0.163889,
		41.150066, 31.786461, 39.585030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063442, 31.340731, 38.861870>,  <41.449928, 31.164431, 39.470306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063442, 31.340731, 38.861870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.051949, 31.697716, 39.041950>,  <41.045052, 31.911907, 39.149998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.051949, 31.697716, 39.041950>,  <41.063442, 31.340731, 38.861870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051949, 31.697716, 39.041950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229486, 0.432471, -0.871955,
		-0.972888, -0.128366, 0.192383,
		-0.028729, 0.892463, 0.450204,
		41.043331, 31.965454, 39.177013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443611, 31.712791, 38.634212>,  <41.063442, 31.340731, 38.861870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443611, 31.712791, 38.634212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.712353, 31.983482, 38.754642>,  <40.873600, 32.145897, 38.826900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.712353, 31.983482, 38.754642>,  <40.443611, 31.712791, 38.634212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712353, 31.983482, 38.754642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118187, 0.499223, -0.858375,
		-0.731190, 0.541123, 0.415388,
		0.671858, 0.676729, 0.301073,
		40.913910, 32.186501, 38.844963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193394, 32.293438, 38.438221>,  <40.443611, 31.712791, 38.634212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193394, 32.293438, 38.438221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.586250, 32.357983, 38.476913>,  <40.821964, 32.396709, 38.500130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.586250, 32.357983, 38.476913>,  <40.193394, 32.293438, 38.438221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586250, 32.357983, 38.476913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008569, 0.551983, -0.833811,
		-0.187938, 0.818093, 0.543510,
		0.982144, 0.161362, 0.096729,
		40.880894, 32.406391, 38.505932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294655, 33.020081, 38.197975>,  <40.193394, 32.293438, 38.438221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294655, 33.020081, 38.197975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658199, 32.854160, 38.180481>,  <40.876324, 32.754608, 38.169983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658199, 32.854160, 38.180481>,  <40.294655, 33.020081, 38.197975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658199, 32.854160, 38.180481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177685, 0.479909, -0.859136,
		0.377363, 0.773062, 0.509874,
		0.908859, -0.414803, -0.043739,
		40.930859, 32.729721, 38.167358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820171, 33.591282, 38.003860>,  <40.294655, 33.020081, 38.197975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820171, 33.591282, 38.003860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972267, 33.236462, 37.899128>,  <41.063522, 33.023567, 37.836288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972267, 33.236462, 37.899128>,  <40.820171, 33.591282, 38.003860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972267, 33.236462, 37.899128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183654, 0.349871, -0.918620,
		0.906472, 0.301206, 0.295944,
		0.380236, -0.887054, -0.261830,
		41.086338, 32.970345, 37.820580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411282, 33.767162, 37.587265>,  <40.820171, 33.591282, 38.003860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411282, 33.767162, 37.587265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.375477, 33.374062, 37.522541>,  <41.353992, 33.138199, 37.483707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.375477, 33.374062, 37.522541>,  <41.411282, 33.767162, 37.587265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375477, 33.374062, 37.522541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254634, 0.134484, -0.957641,
		0.962886, -0.126922, 0.238205,
		-0.089511, -0.982754, -0.161812,
		41.348625, 33.079235, 37.473999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979198, 33.561817, 37.247513>,  <41.411282, 33.767162, 37.587265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979198, 33.561817, 37.247513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709198, 33.281952, 37.153835>,  <41.547199, 33.114033, 37.097630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709198, 33.281952, 37.153835>,  <41.979198, 33.561817, 37.247513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709198, 33.281952, 37.153835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331050, -0.003533, -0.943607,
		0.659382, -0.714462, 0.234009,
		-0.674998, -0.699666, -0.234193,
		41.506699, 33.072052, 37.083576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367470, 33.085270, 36.787209>,  <41.979198, 33.561817, 37.247513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367470, 33.085270, 36.787209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980675, 33.019234, 36.709557>,  <41.748600, 32.979614, 36.662968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980675, 33.019234, 36.709557>,  <42.367470, 33.085270, 36.787209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980675, 33.019234, 36.709557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220133, -0.157388, -0.962689,
		0.128375, -0.973640, 0.188534,
		-0.966986, -0.165088, -0.194125,
		41.690578, 32.969707, 36.651318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224834, 32.482624, 36.300049>,  <42.367470, 33.085270, 36.787209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224834, 32.482624, 36.300049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.879421, 32.674118, 36.236656>,  <41.672173, 32.789017, 36.198620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.879421, 32.674118, 36.236656>,  <42.224834, 32.482624, 36.300049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879421, 32.674118, 36.236656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200887, 0.038319, -0.978865,
		-0.462548, -0.877120, -0.129262,
		-0.863536, 0.478740, -0.158478,
		41.620361, 32.817741, 36.189114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019306, 32.300705, 35.595356>,  <42.224834, 32.482624, 36.300049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019306, 32.300705, 35.595356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796196, 32.621162, 35.682125>,  <41.662331, 32.813435, 35.734188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796196, 32.621162, 35.682125>,  <42.019306, 32.300705, 35.595356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796196, 32.621162, 35.682125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247030, 0.409757, -0.878109,
		-0.792375, -0.436204, -0.426460,
		-0.557780, 0.801140, 0.216926,
		41.628860, 32.861504, 35.747204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601192, 32.358746, 35.045845>,  <42.019306, 32.300705, 35.595356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601192, 32.358746, 35.045845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577934, 32.711426, 35.233131>,  <41.563980, 32.923035, 35.345505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577934, 32.711426, 35.233131>,  <41.601192, 32.358746, 35.045845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577934, 32.711426, 35.233131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198787, 0.469842, -0.860077,
		-0.978317, 0.043067, -0.202589,
		-0.058144, 0.881699, 0.468215,
		41.560490, 32.975937, 35.373596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155704, 32.722420, 34.631622>,  <41.601192, 32.358746, 35.045845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155704, 32.722420, 34.631622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371269, 32.981972, 34.846481>,  <41.500607, 33.137703, 34.975395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371269, 32.981972, 34.846481>,  <41.155704, 32.722420, 34.631622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371269, 32.981972, 34.846481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175134, 0.537424, -0.824926,
		-0.823957, 0.538633, 0.175981,
		0.538909, 0.648883, 0.537147,
		41.532944, 33.176636, 35.007626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006424, 33.395096, 34.372707>,  <41.155704, 32.722420, 34.631622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006424, 33.395096, 34.372707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.347214, 33.484787, 34.561966>,  <41.551685, 33.538601, 34.675522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.347214, 33.484787, 34.561966>,  <41.006424, 33.395096, 34.372707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347214, 33.484787, 34.561966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215708, 0.673092, -0.707402,
		-0.477093, 0.704746, 0.525086,
		0.851970, 0.224231, 0.473146,
		41.602806, 33.552055, 34.703911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095665, 34.214134, 34.411991>,  <41.006424, 33.395096, 34.372707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095665, 34.214134, 34.411991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448334, 34.028904, 34.448265>,  <41.659935, 33.917767, 34.470028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448334, 34.028904, 34.448265>,  <41.095665, 34.214134, 34.411991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448334, 34.028904, 34.448265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377866, 0.577758, -0.723473,
		0.282626, 0.672131, 0.684371,
		0.881669, -0.463073, 0.090686,
		41.712833, 33.889980, 34.475471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533752, 34.734890, 34.327293>,  <41.095665, 34.214134, 34.411991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533752, 34.734890, 34.327293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787254, 34.428959, 34.281006>,  <41.939358, 34.245399, 34.253231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787254, 34.428959, 34.281006>,  <41.533752, 34.734890, 34.327293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787254, 34.428959, 34.281006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354061, 0.419830, -0.835693,
		0.687745, 0.488653, 0.536865,
		0.633756, -0.764827, -0.115723,
		41.977383, 34.199512, 34.246288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178288, 34.986092, 34.253555>,  <41.533752, 34.734890, 34.327293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178288, 34.986092, 34.253555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213570, 34.631470, 34.071899>,  <42.234737, 34.418697, 33.962906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213570, 34.631470, 34.071899>,  <42.178288, 34.986092, 34.253555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213570, 34.631470, 34.071899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474956, 0.438187, -0.763157,
		0.875578, -0.148383, 0.459724,
		0.088205, -0.886552, -0.454142,
		42.240032, 34.365505, 33.935658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878876, 34.878384, 34.102245>,  <42.178288, 34.986092, 34.253555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878876, 34.878384, 34.102245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674152, 34.658253, 33.838367>,  <42.551319, 34.526176, 33.680038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674152, 34.658253, 33.838367>,  <42.878876, 34.878384, 34.102245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674152, 34.658253, 33.838367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550408, 0.379547, -0.743637,
		0.659627, -0.743699, 0.108650,
		-0.511804, -0.550324, -0.659697,
		42.520611, 34.493156, 33.640457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360935, 34.968803, 34.768070>,  <42.878876, 34.878384, 34.102245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360935, 34.968803, 34.768070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.691814, 35.183075, 34.835941>,  <43.890343, 35.311638, 34.876663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.691814, 35.183075, 34.835941>,  <43.360935, 34.968803, 34.768070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691814, 35.183075, 34.835941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128913, -0.113004, 0.985196,
		0.546928, -0.836823, -0.024420,
		0.827195, 0.535683, 0.169682,
		43.939972, 35.343781, 34.886845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743294, 34.555607, 35.215683>,  <43.360935, 34.968803, 34.768070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743294, 34.555607, 35.215683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878922, 34.930161, 35.251942>,  <43.960297, 35.154892, 35.273697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878922, 34.930161, 35.251942>,  <43.743294, 34.555607, 35.215683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878922, 34.930161, 35.251942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033675, -0.084209, 0.995879,
		0.940160, -0.340720, 0.002981,
		0.339065, 0.936386, 0.090644,
		43.980640, 35.211075, 35.279137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123981, 34.523468, 35.854958>,  <43.743294, 34.555607, 35.215683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123981, 34.523468, 35.854958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142563, 34.920799, 35.812721>,  <44.153713, 35.159199, 35.787380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142563, 34.920799, 35.812721>,  <44.123981, 34.523468, 35.854958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142563, 34.920799, 35.812721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031030, 0.107092, 0.993765,
		0.998438, -0.042886, 0.035798,
		0.046452, 0.993324, -0.105594,
		44.156498, 35.218796, 35.781044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695942, 34.809048, 36.287800>,  <44.123981, 34.523468, 35.854958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695942, 34.809048, 36.287800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422443, 35.093201, 36.221054>,  <44.258343, 35.263695, 36.181007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422443, 35.093201, 36.221054>,  <44.695942, 34.809048, 36.287800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422443, 35.093201, 36.221054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045005, 0.187188, 0.981293,
		0.728331, 0.678465, -0.096018,
		-0.683746, 0.710384, -0.166869,
		44.217319, 35.306316, 36.170994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923725, 35.422390, 36.649433>,  <44.695942, 34.809048, 36.287800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923725, 35.422390, 36.649433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529842, 35.455124, 36.587917>,  <44.293514, 35.474766, 36.551006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529842, 35.455124, 36.587917>,  <44.923725, 35.422390, 36.649433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529842, 35.455124, 36.587917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137342, 0.178429, 0.974321,
		0.107176, 0.980544, -0.164461,
		-0.984708, 0.081837, -0.153793,
		44.234428, 35.479675, 36.541779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765362, 35.884430, 37.221359>,  <44.923725, 35.422390, 36.649433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765362, 35.884430, 37.221359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.417221, 35.742638, 37.084641>,  <44.208336, 35.657562, 37.002609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.417221, 35.742638, 37.084641>,  <44.765362, 35.884430, 37.221359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417221, 35.742638, 37.084641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399123, 0.101280, 0.911287,
		-0.288420, 0.929561, -0.229632,
		-0.870354, -0.354485, -0.341798,
		44.156116, 35.636292, 36.982101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197552, 36.335094, 37.123264>,  <44.765362, 35.884430, 37.221359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197552, 36.335094, 37.123264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007076, 35.992832, 37.204353>,  <43.892792, 35.787476, 37.253006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007076, 35.992832, 37.204353>,  <44.197552, 36.335094, 37.123264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007076, 35.992832, 37.204353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190819, 0.325597, 0.926053,
		-0.858389, 0.402294, -0.318322,
		-0.476190, -0.855656, 0.202723,
		43.864220, 35.736134, 37.265171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700279, 36.507053, 37.585926>,  <44.197552, 36.335094, 37.123264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700279, 36.507053, 37.585926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748432, 36.113560, 37.639244>,  <43.777325, 35.877464, 37.671234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748432, 36.113560, 37.639244>,  <43.700279, 36.507053, 37.585926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748432, 36.113560, 37.639244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270079, 0.096756, 0.957964,
		-0.955283, -0.151321, -0.254039,
		0.120381, -0.983738, 0.133298,
		43.784546, 35.818439, 37.679234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163033, 36.338318, 37.993179>,  <43.700279, 36.507053, 37.585926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163033, 36.338318, 37.993179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405632, 36.023300, 38.036865>,  <43.551193, 35.834290, 38.063076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405632, 36.023300, 38.036865>,  <43.163033, 36.338318, 37.993179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405632, 36.023300, 38.036865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256983, -0.064181, 0.964282,
		-0.752410, -0.612902, -0.241312,
		0.606498, -0.787548, 0.109215,
		43.587582, 35.787037, 38.069630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767605, 35.710346, 38.328228>,  <43.163033, 36.338318, 37.993179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767605, 35.710346, 38.328228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155884, 35.653591, 38.405807>,  <43.388851, 35.619537, 38.452354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155884, 35.653591, 38.405807>,  <42.767605, 35.710346, 38.328228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155884, 35.653591, 38.405807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226943, -0.275914, 0.934007,
		-0.079009, -0.950652, -0.300029,
		0.970698, -0.141884, 0.193945,
		43.447094, 35.611027, 38.463989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824986, 35.128025, 38.829933>,  <42.767605, 35.710346, 38.328228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824986, 35.128025, 38.829933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200478, 35.265827, 38.833805>,  <43.425774, 35.348507, 38.836128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200478, 35.265827, 38.833805>,  <42.824986, 35.128025, 38.829933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200478, 35.265827, 38.833805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124369, -0.364827, 0.922732,
		0.321418, -0.864996, -0.385321,
		0.938735, 0.344504, 0.009683,
		43.482098, 35.369179, 38.836712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161972, 34.602100, 39.104645>,  <42.824986, 35.128025, 38.829933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161972, 34.602100, 39.104645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404148, 34.910809, 39.182426>,  <43.549454, 35.096031, 39.229095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404148, 34.910809, 39.182426>,  <43.161972, 34.602100, 39.104645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404148, 34.910809, 39.182426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072509, -0.296797, 0.952184,
		0.792578, -0.562394, -0.235653,
		0.605444, 0.771767, 0.194456,
		43.585781, 35.142338, 39.240765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762470, 34.360241, 39.315060>,  <43.161972, 34.602100, 39.104645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762470, 34.360241, 39.315060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761517, 34.723240, 39.483082>,  <43.760944, 34.941040, 39.583897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761517, 34.723240, 39.483082>,  <43.762470, 34.360241, 39.315060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761517, 34.723240, 39.483082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159490, -0.414334, 0.896041,
		0.987197, 0.069131, -0.143749,
		-0.002384, 0.907495, 0.420055,
		43.760799, 34.995487, 39.609097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184273, 34.381897, 39.919003>,  <43.762470, 34.360241, 39.315060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184273, 34.381897, 39.919003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029396, 34.735363, 40.024246>,  <43.936470, 34.947441, 40.087391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029396, 34.735363, 40.024246>,  <44.184273, 34.381897, 39.919003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029396, 34.735363, 40.024246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085599, -0.318588, 0.944020,
		0.918018, 0.342993, 0.198995,
		-0.387190, 0.883661, 0.263110,
		43.913239, 35.000462, 40.103180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423000, 34.466057, 40.536797>,  <44.184273, 34.381897, 39.919003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423000, 34.466057, 40.536797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085674, 34.679474, 40.511005>,  <43.883278, 34.807526, 40.495533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085674, 34.679474, 40.511005>,  <44.423000, 34.466057, 40.536797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085674, 34.679474, 40.511005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220818, -0.234625, 0.946673,
		0.489962, 0.812579, 0.315677,
		-0.843313, 0.533541, -0.064475,
		43.832680, 34.839535, 40.491661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397556, 34.930405, 41.139400>,  <44.423000, 34.466057, 40.536797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397556, 34.930405, 41.139400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023632, 34.896732, 41.001389>,  <43.799278, 34.876530, 40.918583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023632, 34.896732, 41.001389>,  <44.397556, 34.930405, 41.139400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023632, 34.896732, 41.001389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312429, -0.267025, 0.911639,
		-0.168876, 0.960006, 0.223316,
		-0.934810, -0.084184, -0.345028,
		43.743191, 34.871475, 40.897881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043503, 34.991291, 41.782280>,  <44.397556, 34.930405, 41.139400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043503, 34.991291, 41.782280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746155, 34.877106, 41.540314>,  <43.567745, 34.808594, 41.395134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746155, 34.877106, 41.540314>,  <44.043503, 34.991291, 41.782280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746155, 34.877106, 41.540314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447535, -0.459850, 0.766975,
		-0.497109, 0.840863, 0.214084,
		-0.743367, -0.285460, -0.604911,
		43.523144, 34.791470, 41.358841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409687, 35.094128, 42.197712>,  <44.043503, 34.991291, 41.782280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409687, 35.094128, 42.197712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330429, 34.828636, 41.909210>,  <43.282875, 34.669342, 41.736111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330429, 34.828636, 41.909210>,  <43.409687, 35.094128, 42.197712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330429, 34.828636, 41.909210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363663, -0.633540, 0.682917,
		-0.910213, 0.397610, -0.115840,
		-0.198146, -0.663727, -0.721252,
		43.270985, 34.629517, 41.692833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703747, 34.924763, 42.317684>,  <43.409687, 35.094128, 42.197712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703747, 34.924763, 42.317684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866508, 34.627071, 42.105816>,  <42.964165, 34.448456, 41.978695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866508, 34.627071, 42.105816>,  <42.703747, 34.924763, 42.317684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866508, 34.627071, 42.105816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393810, -0.666118, 0.633404,
		-0.824222, -0.049145, -0.564131,
		0.406906, -0.744226, -0.529675,
		42.988579, 34.403805, 41.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130199, 34.487446, 42.178997>,  <42.703747, 34.924763, 42.317684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130199, 34.487446, 42.178997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473480, 34.288063, 42.129959>,  <42.679451, 34.168434, 42.100536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473480, 34.288063, 42.129959>,  <42.130199, 34.487446, 42.178997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473480, 34.288063, 42.129959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301760, -0.683117, 0.665050,
		-0.415243, -0.533755, -0.736667,
		0.858205, -0.498454, -0.122594,
		42.730942, 34.138527, 42.093182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.825161, 38.161358, 35.502846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469269, 37.987190, 35.448009>,  <35.255733, 37.882690, 35.415108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469269, 37.987190, 35.448009>,  <35.825161, 38.161358, 35.502846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469269, 37.987190, 35.448009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436409, -0.723253, -0.535212,
		0.133891, -0.536020, 0.833520,
		-0.889730, -0.435416, -0.137087,
		35.202351, 37.856564, 35.406883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778191, 37.450375, 35.775848>,  <35.825161, 38.161358, 35.502846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778191, 37.450375, 35.775848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507317, 37.480015, 35.483021>,  <35.344791, 37.497799, 35.307323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507317, 37.480015, 35.483021>,  <35.778191, 37.450375, 35.775848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507317, 37.480015, 35.483021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468630, -0.723606, -0.506736,
		-0.567282, -0.686224, 0.455288,
		-0.677183, 0.074101, -0.732074,
		35.304161, 37.502247, 35.263397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644066, 36.804810, 35.670616>,  <35.778191, 37.450375, 35.775848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644066, 36.804810, 35.670616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490974, 36.972641, 35.341381>,  <35.399120, 37.073341, 35.143841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490974, 36.972641, 35.341381>,  <35.644066, 36.804810, 35.670616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490974, 36.972641, 35.341381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424846, -0.711197, -0.560093,
		-0.820379, -0.564050, 0.093941,
		-0.382732, 0.419579, -0.823086,
		35.376156, 37.098515, 35.094456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138359, 36.302341, 35.232430>,  <35.644066, 36.804810, 35.670616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138359, 36.302341, 35.232430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294464, 36.581646, 34.992390>,  <35.388126, 36.749229, 34.848366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294464, 36.581646, 34.992390>,  <35.138359, 36.302341, 35.232430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294464, 36.581646, 34.992390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314252, -0.713667, -0.626039,
		-0.865413, 0.055738, -0.497950,
		0.390265, 0.698264, -0.600101,
		35.411545, 36.791126, 34.812359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171108, 35.983856, 34.502674>,  <35.138359, 36.302341, 35.232430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171108, 35.983856, 34.502674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420654, 36.295666, 34.480267>,  <35.570381, 36.482750, 34.466824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420654, 36.295666, 34.480267>,  <35.171108, 35.983856, 34.502674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420654, 36.295666, 34.480267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513983, -0.463233, -0.721967,
		-0.588737, 0.421620, -0.689656,
		0.623867, 0.779520, -0.056017,
		35.607815, 36.529522, 34.463463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283340, 36.158894, 33.801723>,  <35.171108, 35.983856, 34.502674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283340, 36.158894, 33.801723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576977, 36.370041, 33.972588>,  <35.753159, 36.496727, 34.075108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576977, 36.370041, 33.972588>,  <35.283340, 36.158894, 33.801723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576977, 36.370041, 33.972588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606034, -0.225521, -0.762800,
		-0.306321, 0.818840, -0.485457,
		0.734092, 0.527865, 0.427163,
		35.797203, 36.528400, 34.100735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570568, 36.505512, 33.199497>,  <35.283340, 36.158894, 33.801723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570568, 36.505512, 33.199497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839622, 36.449230, 33.490086>,  <36.001057, 36.415462, 33.664440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839622, 36.449230, 33.490086>,  <35.570568, 36.505512, 33.199497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839622, 36.449230, 33.490086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664021, -0.318484, -0.676494,
		0.326555, 0.937428, -0.120794,
		0.672635, -0.140702, 0.726475,
		36.041412, 36.407021, 33.708027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209759, 36.647400, 32.973030>,  <35.570568, 36.505512, 33.199497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209759, 36.647400, 32.973030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329399, 36.434471, 33.289806>,  <36.401184, 36.306713, 33.479874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329399, 36.434471, 33.289806>,  <36.209759, 36.647400, 32.973030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329399, 36.434471, 33.289806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623538, -0.519205, -0.584489,
		0.722317, 0.668626, 0.176630,
		0.299097, -0.532321, 0.791944,
		36.419128, 36.274776, 33.527390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945576, 36.624935, 32.952003>,  <36.209759, 36.647400, 32.973030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945576, 36.624935, 32.952003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844639, 36.320580, 33.191128>,  <36.784077, 36.137966, 33.334602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844639, 36.320580, 33.191128>,  <36.945576, 36.624935, 32.952003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844639, 36.320580, 33.191128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669833, -0.583207, -0.459559,
		0.698319, 0.284469, 0.656832,
		-0.252339, -0.760886, 0.597811,
		36.768936, 36.092312, 33.370472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454082, 36.248802, 32.914719>,  <36.945576, 36.624935, 32.952003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454082, 36.248802, 32.914719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205090, 35.983009, 33.080120>,  <37.055695, 35.823532, 33.179359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205090, 35.983009, 33.080120>,  <37.454082, 36.248802, 32.914719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205090, 35.983009, 33.080120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525488, -0.746391, -0.408365,
		0.579985, -0.036908, 0.813790,
		-0.622478, -0.664483, 0.413501,
		37.018345, 35.783665, 33.204170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802185, 35.713856, 32.854633>,  <37.454082, 36.248802, 32.914719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802185, 35.713856, 32.854633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467606, 35.530800, 32.975243>,  <37.266857, 35.420967, 33.047607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467606, 35.530800, 32.975243>,  <37.802185, 35.713856, 32.854633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467606, 35.530800, 32.975243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384611, -0.882124, -0.271904,
		0.390413, -0.111467, 0.913867,
		-0.836452, -0.457638, 0.301521,
		37.216671, 35.393509, 33.065701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943436, 35.197815, 33.440861>,  <37.802185, 35.713856, 32.854633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943436, 35.197815, 33.440861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635120, 35.125340, 33.196545>,  <37.450130, 35.081856, 33.049957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635120, 35.125340, 33.196545>,  <37.943436, 35.197815, 33.440861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635120, 35.125340, 33.196545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330247, -0.933477, -0.139848,
		-0.544817, -0.309503, 0.779347,
		-0.770786, -0.181185, -0.610787,
		37.403885, 35.070984, 33.013309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605682, 34.513359, 33.622829>,  <37.943436, 35.197815, 33.440861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605682, 34.513359, 33.622829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553127, 34.606636, 33.237423>,  <37.521595, 34.662601, 33.006180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553127, 34.606636, 33.237423>,  <37.605682, 34.513359, 33.622829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553127, 34.606636, 33.237423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355261, -0.896308, -0.265370,
		-0.925488, -0.377164, 0.034918,
		-0.131385, 0.233191, -0.963514,
		37.513710, 34.676594, 32.948368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362019, 34.033318, 33.286575>,  <37.605682, 34.513359, 33.622829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362019, 34.033318, 33.286575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525356, 34.230240, 32.979095>,  <37.623360, 34.348392, 32.794609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525356, 34.230240, 32.979095>,  <37.362019, 34.033318, 33.286575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525356, 34.230240, 32.979095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267615, -0.869665, -0.414807,
		-0.872719, -0.036331, -0.486870,
		0.408343, 0.492303, -0.768696,
		37.647858, 34.377930, 32.748486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211170, 33.779366, 32.668270>,  <37.362019, 34.033318, 33.286575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211170, 33.779366, 32.668270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555901, 33.960732, 32.577343>,  <37.762737, 34.069550, 32.522785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555901, 33.960732, 32.577343>,  <37.211170, 33.779366, 32.668270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555901, 33.960732, 32.577343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287052, -0.805522, -0.518398,
		-0.418159, 0.381516, -0.824372,
		0.861826, 0.453410, -0.227321,
		37.814449, 34.096756, 32.509148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893463, 33.587139, 33.066757>,  <37.211170, 33.779366, 32.668270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893463, 33.587139, 33.066757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084969, 33.716713, 33.393154>,  <38.199871, 33.794456, 33.588993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084969, 33.716713, 33.393154>,  <37.893463, 33.587139, 33.066757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084969, 33.716713, 33.393154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810188, -0.195018, 0.552778,
		0.338200, -0.925760, 0.169083,
		0.478766, 0.323939, 0.815995,
		38.228600, 33.813896, 33.637951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625122, 33.136993, 33.636818>,  <37.893463, 33.587139, 33.066757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625122, 33.136993, 33.636818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808678, 33.425255, 33.844692>,  <37.918812, 33.598213, 33.969418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808678, 33.425255, 33.844692>,  <37.625122, 33.136993, 33.636818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808678, 33.425255, 33.844692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669396, -0.104186, 0.735564,
		0.584232, -0.685421, 0.434594,
		0.458892, 0.720655, 0.519687,
		37.946346, 33.641453, 34.000599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667091, 32.888813, 34.308548>,  <37.625122, 33.136993, 33.636818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667091, 32.888813, 34.308548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681751, 33.285255, 34.359722>,  <37.690548, 33.523121, 34.390427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681751, 33.285255, 34.359722>,  <37.667091, 32.888813, 34.308548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681751, 33.285255, 34.359722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734488, -0.060092, 0.675956,
		0.677631, -0.118741, 0.725752,
		0.036652, 0.991105, 0.127933,
		37.692745, 33.582588, 34.398102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552551, 33.006031, 35.111069>,  <37.667091, 32.888813, 34.308548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552551, 33.006031, 35.111069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486908, 33.363689, 34.944420>,  <37.447521, 33.578285, 34.844429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486908, 33.363689, 34.944420>,  <37.552551, 33.006031, 35.111069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486908, 33.363689, 34.944420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763468, 0.152315, 0.627628,
		0.624647, 0.421080, 0.657653,
		-0.164111, 0.894143, -0.416624,
		37.437675, 33.631931, 34.819431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588631, 33.557903, 35.687992>,  <37.552551, 33.006031, 35.111069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588631, 33.557903, 35.687992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364151, 33.703320, 35.390564>,  <37.229462, 33.790569, 35.212109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364151, 33.703320, 35.390564>,  <37.588631, 33.557903, 35.687992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364151, 33.703320, 35.390564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739393, 0.183527, 0.647778,
		0.371961, 0.913320, 0.165807,
		-0.561199, 0.363545, -0.743567,
		37.195793, 33.812382, 35.167496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285820, 34.071400, 36.012642>,  <37.588631, 33.557903, 35.687992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285820, 34.071400, 36.012642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077160, 34.038647, 35.672955>,  <36.951965, 34.018997, 35.469143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077160, 34.038647, 35.672955>,  <37.285820, 34.071400, 36.012642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077160, 34.038647, 35.672955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780927, 0.446661, 0.436632,
		0.343563, 0.890949, -0.296942,
		-0.521649, -0.081880, -0.849222,
		36.920666, 34.014084, 35.418186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859833, 34.744804, 35.929245>,  <37.285820, 34.071400, 36.012642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859833, 34.744804, 35.929245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695946, 34.479740, 35.678482>,  <36.597614, 34.320702, 35.528023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695946, 34.479740, 35.678482>,  <36.859833, 34.744804, 35.929245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695946, 34.479740, 35.678482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904918, 0.381987, 0.187643,
		0.115128, 0.644182, -0.756159,
		-0.409719, -0.662658, -0.626909,
		36.573029, 34.280941, 35.490410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403206, 35.114265, 35.659042>,  <36.859833, 34.744804, 35.929245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403206, 35.114265, 35.659042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288715, 34.735996, 35.597370>,  <36.220020, 34.509033, 35.560368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288715, 34.735996, 35.597370>,  <36.403206, 35.114265, 35.659042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288715, 34.735996, 35.597370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878517, 0.194781, 0.436198,
		-0.382472, 0.260298, -0.886544,
		-0.286224, -0.945677, -0.154178,
		36.202847, 34.452293, 35.551117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573128, 35.047794, 35.430138>,  <36.403206, 35.114265, 35.659042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573128, 35.047794, 35.430138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646572, 34.673546, 35.550735>,  <35.690639, 34.448997, 35.623093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646572, 34.673546, 35.550735>,  <35.573128, 35.047794, 35.430138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646572, 34.673546, 35.550735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897918, -0.034819, 0.438782,
		-0.400036, -0.351283, -0.846505,
		0.183611, -0.935622, 0.301494,
		35.701656, 34.392860, 35.641182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939121, 34.617615, 35.283783>,  <35.573128, 35.047794, 35.430138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939121, 34.617615, 35.283783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171711, 34.488995, 35.582714>,  <35.311264, 34.411823, 35.762074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171711, 34.488995, 35.582714>,  <34.939121, 34.617615, 35.283783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171711, 34.488995, 35.582714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781604, 0.034151, 0.622839,
		-0.225798, -0.946275, -0.231470,
		0.581473, -0.321554, 0.747324,
		35.346153, 34.392529, 35.806911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449242, 34.511536, 35.793240>,  <34.939121, 34.617615, 35.283783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449242, 34.511536, 35.793240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778629, 34.486084, 36.018753>,  <34.976261, 34.470814, 36.154060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778629, 34.486084, 36.018753>,  <34.449242, 34.511536, 35.793240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778629, 34.486084, 36.018753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552668, 0.134713, 0.822442,
		-0.128278, -0.988840, 0.075768,
		0.823470, -0.063626, 0.563781,
		35.025669, 34.466995, 36.187889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312202, 34.094933, 36.480553>,  <34.449242, 34.511536, 35.793240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312202, 34.094933, 36.480553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652508, 34.291302, 36.555595>,  <34.856689, 34.409122, 36.600620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652508, 34.291302, 36.555595>,  <34.312202, 34.094933, 36.480553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652508, 34.291302, 36.555595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259755, 0.082470, 0.962147,
		0.456872, -0.867288, 0.197683,
		0.850761, 0.490927, 0.187604,
		34.907738, 34.438580, 36.611877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652908, 33.724304, 37.111397>,  <34.312202, 34.094933, 36.480553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652908, 33.724304, 37.111397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755970, 34.109093, 37.075123>,  <34.817806, 34.339966, 37.053360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755970, 34.109093, 37.075123>,  <34.652908, 33.724304, 37.111397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755970, 34.109093, 37.075123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224256, 0.150823, 0.962789,
		0.939854, -0.227728, 0.254588,
		0.257652, 0.961973, -0.090682,
		34.833267, 34.397686, 37.047916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726376, 33.106831, 37.601612>,  <34.652908, 33.724304, 37.111397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726376, 33.106831, 37.601612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402607, 32.913151, 37.734512>,  <34.208347, 32.796944, 37.814251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402607, 32.913151, 37.734512>,  <34.726376, 33.106831, 37.601612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402607, 32.913151, 37.734512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181016, -0.332508, -0.925566,
		0.558638, -0.809312, 0.181489,
		-0.809418, -0.484204, 0.332250,
		34.159782, 32.767891, 37.834187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869545, 32.458435, 37.445770>,  <34.726376, 33.106831, 37.601612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869545, 32.458435, 37.445770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470146, 32.463509, 37.467075>,  <34.230507, 32.466553, 37.479858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470146, 32.463509, 37.467075>,  <34.869545, 32.458435, 37.445770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470146, 32.463509, 37.467075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054356, -0.346472, -0.936484,
		0.006573, -0.937974, 0.346642,
		-0.998500, 0.012687, 0.053262,
		34.170597, 32.467316, 37.483055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677277, 31.784861, 37.209938>,  <34.869545, 32.458435, 37.445770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677277, 31.784861, 37.209938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375755, 32.043400, 37.162571>,  <34.194843, 32.198524, 37.134151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375755, 32.043400, 37.162571>,  <34.677277, 31.784861, 37.209938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375755, 32.043400, 37.162571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142979, -0.337221, -0.930505,
		-0.641361, -0.684482, 0.346611,
		-0.753799, 0.646348, -0.118415,
		34.149616, 32.237305, 37.127048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134819, 31.318264, 36.912621>,  <34.677277, 31.784861, 37.209938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134819, 31.318264, 36.912621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017681, 31.693947, 36.840919>,  <33.947399, 31.919355, 36.797897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017681, 31.693947, 36.840919>,  <34.134819, 31.318264, 36.912621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017681, 31.693947, 36.840919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217165, -0.247907, -0.944130,
		-0.931171, -0.237559, 0.276562,
		-0.292848, 0.939206, -0.179255,
		33.929825, 31.975708, 36.787144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408455, 31.293510, 36.731636>,  <34.134819, 31.318264, 36.912621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408455, 31.293510, 36.731636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554176, 31.629229, 36.570213>,  <33.641609, 31.830660, 36.473358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554176, 31.629229, 36.570213>,  <33.408455, 31.293510, 36.731636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554176, 31.629229, 36.570213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456195, -0.216955, -0.863028,
		-0.811891, 0.498508, 0.303845,
		0.364306, 0.839297, -0.403561,
		33.663467, 31.881018, 36.449146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841034, 31.651020, 36.487537>,  <33.408455, 31.293510, 36.731636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841034, 31.651020, 36.487537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155197, 31.783026, 36.278072>,  <33.343697, 31.862230, 36.152393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155197, 31.783026, 36.278072>,  <32.841034, 31.651020, 36.487537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155197, 31.783026, 36.278072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510974, -0.131798, -0.849432,
		-0.349344, 0.934729, 0.065115,
		0.785407, 0.330016, -0.523665,
		33.390820, 31.882030, 36.120972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549282, 32.249527, 36.057243>,  <32.841034, 31.651020, 36.487537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549282, 32.249527, 36.057243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899872, 32.146683, 35.894428>,  <33.110226, 32.084976, 35.796741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899872, 32.146683, 35.894428>,  <32.549282, 32.249527, 36.057243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899872, 32.146683, 35.894428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398111, 0.088348, -0.913073,
		0.270726, 0.962334, -0.024925,
		0.876479, -0.257115, -0.407034,
		33.162815, 32.069550, 35.772320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540791, 32.576527, 35.406055>,  <32.549282, 32.249527, 36.057243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540791, 32.576527, 35.406055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833160, 32.310036, 35.346870>,  <33.008583, 32.150143, 35.311359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833160, 32.310036, 35.346870>,  <32.540791, 32.576527, 35.406055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833160, 32.310036, 35.346870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283456, -0.099145, -0.953846,
		0.620808, 0.739130, -0.261313,
		0.730924, -0.666226, -0.147961,
		33.052437, 32.110168, 35.302483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787792, 32.750301, 34.797810>,  <32.540791, 32.576527, 35.406055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787792, 32.750301, 34.797810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908176, 32.370510, 34.833412>,  <32.980408, 32.142635, 34.854774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908176, 32.370510, 34.833412>,  <32.787792, 32.750301, 34.797810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908176, 32.370510, 34.833412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096375, -0.123135, -0.987699,
		0.948755, 0.288678, -0.128564,
		0.300958, -0.949475, 0.089004,
		32.998463, 32.085667, 34.860115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167774, 32.649670, 34.158062>,  <32.787792, 32.750301, 34.797810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167774, 32.649670, 34.158062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102962, 32.277988, 34.290920>,  <33.064075, 32.054977, 34.370636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102962, 32.277988, 34.290920>,  <33.167774, 32.649670, 34.158062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102962, 32.277988, 34.290920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156034, -0.308233, -0.938427,
		0.974372, -0.203879, -0.095045,
		-0.162029, -0.929207, 0.332146,
		33.054352, 31.999226, 34.390564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715534, 32.203621, 33.881565>,  <33.167774, 32.649670, 34.158062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715534, 32.203621, 33.881565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391949, 31.990608, 33.981155>,  <33.197796, 31.862801, 34.040909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391949, 31.990608, 33.981155>,  <33.715534, 32.203621, 33.881565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391949, 31.990608, 33.981155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133271, -0.246374, -0.959968,
		0.572553, -0.809761, 0.128337,
		-0.808964, -0.532529, 0.248979,
		33.149258, 31.830849, 34.055851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794666, 31.656580, 33.325661>,  <33.715534, 32.203621, 33.881565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794666, 31.656580, 33.325661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422756, 31.653133, 33.472870>,  <33.199608, 31.651066, 33.561195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422756, 31.653133, 33.472870>,  <33.794666, 31.656580, 33.325661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422756, 31.653133, 33.472870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352583, -0.266532, -0.897020,
		0.105819, -0.963787, 0.244777,
		-0.929778, -0.008618, 0.368020,
		33.143822, 31.650549, 33.583275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.665989, 33.749451, 41.676132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300133, 33.817608, 41.529488>,  <34.080620, 33.858501, 41.441502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300133, 33.817608, 41.529488>,  <34.665989, 33.749451, 41.676132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300133, 33.817608, 41.529488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244989, -0.487742, -0.837907,
		-0.321580, -0.856198, 0.404365,
		-0.914640, 0.170389, -0.366608,
		34.025742, 33.868725, 41.419506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557671, 33.140614, 41.447231>,  <34.665989, 33.749451, 41.676132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557671, 33.140614, 41.447231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269482, 33.347000, 41.261890>,  <34.096569, 33.470833, 41.150684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269482, 33.347000, 41.261890>,  <34.557671, 33.140614, 41.447231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269482, 33.347000, 41.261890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195762, -0.489662, -0.849652,
		-0.665282, -0.702856, 0.251779,
		-0.720470, 0.515969, -0.463356,
		34.053341, 33.501793, 41.122883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227558, 32.665382, 41.016670>,  <34.557671, 33.140614, 41.447231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227558, 32.665382, 41.016670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159771, 33.029079, 40.864590>,  <34.119099, 33.247299, 40.773342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159771, 33.029079, 40.864590>,  <34.227558, 32.665382, 41.016670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159771, 33.029079, 40.864590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010180, -0.384150, -0.923215,
		-0.985483, -0.160326, 0.055845,
		-0.169468, 0.909244, -0.380206,
		34.108929, 33.301853, 40.750526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615623, 32.646130, 40.650913>,  <34.227558, 32.665382, 41.016670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615623, 32.646130, 40.650913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.825645, 32.953766, 40.505138>,  <33.951660, 33.138348, 40.417675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.825645, 32.953766, 40.505138>,  <33.615623, 32.646130, 40.650913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825645, 32.953766, 40.505138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152540, -0.336229, -0.929345,
		-0.837286, 0.543548, -0.059221,
		0.525056, 0.769094, -0.364433,
		33.983162, 33.184494, 40.395809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240349, 32.848099, 40.077957>,  <33.615623, 32.646130, 40.650913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240349, 32.848099, 40.077957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.585442, 33.031807, 39.993324>,  <33.792496, 33.142033, 39.942543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.585442, 33.031807, 39.993324>,  <33.240349, 32.848099, 40.077957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585442, 33.031807, 39.993324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198171, -0.077866, -0.977070,
		-0.465216, 0.884877, 0.023837,
		0.862730, 0.459272, -0.211582,
		33.844261, 33.169590, 39.929852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073315, 33.365547, 39.644608>,  <33.240349, 32.848099, 40.077957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073315, 33.365547, 39.644608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.457378, 33.274387, 39.579910>,  <33.687817, 33.219692, 39.541092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.457378, 33.274387, 39.579910>,  <33.073315, 33.365547, 39.644608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457378, 33.274387, 39.579910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180828, -0.065368, -0.981340,
		0.213070, 0.971489, -0.103973,
		0.960158, -0.227895, -0.161745,
		33.745426, 33.206020, 39.531387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270519, 33.709122, 39.104626>,  <33.073315, 33.365547, 39.644608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270519, 33.709122, 39.104626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.555767, 33.428822, 39.112713>,  <33.726913, 33.260639, 39.117565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.555767, 33.428822, 39.112713>,  <33.270519, 33.709122, 39.104626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555767, 33.428822, 39.112713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001784, -0.027024, -0.999633,
		0.701043, 0.712892, -0.018021,
		0.713117, -0.700753, 0.020217,
		33.769703, 33.218597, 39.118778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785816, 33.942726, 38.544479>,  <33.270519, 33.709122, 39.104626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785816, 33.942726, 38.544479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806892, 33.547550, 38.602707>,  <33.819538, 33.310444, 38.637646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806892, 33.547550, 38.602707>,  <33.785816, 33.942726, 38.544479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806892, 33.547550, 38.602707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176093, -0.152681, -0.972461,
		0.982962, 0.025603, -0.182015,
		0.052688, -0.987944, 0.145572,
		33.822701, 33.251167, 38.646378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125710, 33.687653, 38.021152>,  <33.785816, 33.942726, 38.544479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125710, 33.687653, 38.021152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.968662, 33.339439, 38.139832>,  <33.874435, 33.130512, 38.211040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.968662, 33.339439, 38.139832>,  <34.125710, 33.687653, 38.021152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968662, 33.339439, 38.139832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006215, -0.325106, -0.945657,
		0.919681, -0.369437, 0.133053,
		-0.392617, -0.870530, 0.296697,
		33.850876, 33.078281, 38.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889908, 33.839725, 37.815990>,  <34.125710, 33.687653, 38.021152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889908, 33.839725, 37.815990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846813, 34.209442, 37.669525>,  <34.820957, 34.431271, 37.581646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846813, 34.209442, 37.669525>,  <34.889908, 33.839725, 37.815990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846813, 34.209442, 37.669525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308893, 0.318957, 0.896020,
		0.944975, 0.209643, 0.251142,
		-0.107741, 0.924292, -0.366164,
		34.814491, 34.486729, 37.559677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194733, 34.364616, 38.348709>,  <34.889908, 33.839725, 37.815990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194733, 34.364616, 38.348709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934147, 34.558456, 38.115211>,  <34.777794, 34.674759, 37.975113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934147, 34.558456, 38.115211>,  <35.194733, 34.364616, 38.348709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934147, 34.558456, 38.115211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466948, 0.350318, 0.811934,
		0.597959, 0.801524, -0.001937,
		-0.651463, 0.484599, -0.583746,
		34.738708, 34.703835, 37.940086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166626, 35.056896, 38.518127>,  <35.194733, 34.364616, 38.348709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166626, 35.056896, 38.518127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820446, 35.011585, 38.322918>,  <34.612740, 34.984398, 38.205791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820446, 35.011585, 38.322918>,  <35.166626, 35.056896, 38.518127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820446, 35.011585, 38.322918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460867, 0.561997, 0.686849,
		0.196464, 0.819346, -0.538585,
		-0.865450, -0.113275, -0.488022,
		34.560810, 34.977604, 38.176510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977940, 35.709282, 38.450901>,  <35.166626, 35.056896, 38.518127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977940, 35.709282, 38.450901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647144, 35.487915, 38.411259>,  <34.448669, 35.355095, 38.387474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647144, 35.487915, 38.411259>,  <34.977940, 35.709282, 38.450901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647144, 35.487915, 38.411259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471293, 0.586267, 0.658919,
		-0.306559, 0.591623, -0.745657,
		-0.826985, -0.553420, -0.099103,
		34.399048, 35.321888, 38.381527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428547, 36.242531, 38.393471>,  <34.977940, 35.709282, 38.450901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428547, 36.242531, 38.393471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.256844, 35.893658, 38.487301>,  <34.153820, 35.684334, 38.543598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.256844, 35.893658, 38.487301>,  <34.428547, 36.242531, 38.393471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256844, 35.893658, 38.487301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451973, 0.432303, 0.780278,
		-0.781957, 0.228919, -0.579775,
		-0.429259, -0.872187, 0.234577,
		34.128067, 35.632000, 38.557674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801537, 36.428574, 38.314003>,  <34.428547, 36.242531, 38.393471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801537, 36.428574, 38.314003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.831631, 36.110622, 38.554840>,  <33.849686, 35.919853, 38.699341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.831631, 36.110622, 38.554840>,  <33.801537, 36.428574, 38.314003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831631, 36.110622, 38.554840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364254, 0.540167, 0.758642,
		-0.928256, -0.276390, -0.248897,
		0.075235, -0.794876, 0.602090,
		33.854202, 35.872158, 38.735466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204124, 36.311436, 38.729786>,  <33.801537, 36.428574, 38.314003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204124, 36.311436, 38.729786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482182, 36.107117, 38.932117>,  <33.649017, 35.984524, 39.053516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482182, 36.107117, 38.932117>,  <33.204124, 36.311436, 38.729786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482182, 36.107117, 38.932117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193464, 0.544749, 0.815978,
		-0.692348, -0.665082, 0.279859,
		0.695144, -0.510798, 0.505825,
		33.690723, 35.953876, 39.083866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889946, 36.375019, 39.333771>,  <33.204124, 36.311436, 38.729786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889946, 36.375019, 39.333771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.256672, 36.243568, 39.424500>,  <33.476707, 36.164696, 39.478939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.256672, 36.243568, 39.424500>,  <32.889946, 36.375019, 39.333771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256672, 36.243568, 39.424500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060423, 0.447328, 0.892327,
		-0.394711, -0.831805, 0.390261,
		0.916817, -0.328630, 0.226826,
		33.531715, 36.144978, 39.492546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849888, 36.190086, 40.022121>,  <32.889946, 36.375019, 39.333771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849888, 36.190086, 40.022121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241100, 36.242912, 39.957600>,  <33.475826, 36.274609, 39.918884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241100, 36.242912, 39.957600>,  <32.849888, 36.190086, 40.022121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241100, 36.242912, 39.957600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060899, 0.559023, 0.826912,
		0.199380, -0.818567, 0.538698,
		0.978028, 0.132064, -0.161308,
		33.534508, 36.282532, 39.909206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299435, 35.960686, 40.698483>,  <32.849888, 36.190086, 40.022121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299435, 35.960686, 40.698483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.534954, 36.195728, 40.476475>,  <33.676266, 36.336754, 40.343269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.534954, 36.195728, 40.476475>,  <33.299435, 35.960686, 40.698483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534954, 36.195728, 40.476475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231784, 0.535076, 0.812385,
		0.774334, -0.606974, 0.178855,
		0.588797, 0.587602, -0.555015,
		33.711594, 36.372009, 40.309971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884075, 36.130653, 41.037376>,  <33.299435, 35.960686, 40.698483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884075, 36.130653, 41.037376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.851669, 36.425312, 40.768810>,  <33.832226, 36.602108, 40.607670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.851669, 36.425312, 40.768810>,  <33.884075, 36.130653, 41.037376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851669, 36.425312, 40.768810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025980, 0.671836, 0.740244,
		0.996374, 0.077414, -0.035291,
		-0.081015, 0.736643, -0.671411,
		33.827366, 36.646305, 40.567387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363930, 36.603493, 41.249847>,  <33.884075, 36.130653, 41.037376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363930, 36.603493, 41.249847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132309, 36.839474, 41.024761>,  <33.993336, 36.981064, 40.889709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132309, 36.839474, 41.024761>,  <34.363930, 36.603493, 41.249847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132309, 36.839474, 41.024761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086883, 0.641625, 0.762082,
		0.810648, 0.490176, -0.320278,
		-0.579052, 0.589953, -0.562720,
		33.958591, 37.016460, 40.855946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678288, 37.228947, 41.254421>,  <34.363930, 36.603493, 41.249847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678288, 37.228947, 41.254421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.305077, 37.302425, 41.130672>,  <34.081150, 37.346512, 41.056423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.305077, 37.302425, 41.130672>,  <34.678288, 37.228947, 41.254421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305077, 37.302425, 41.130672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024747, 0.825043, 0.564527,
		0.358947, 0.534377, -0.765244,
		-0.933030, 0.183698, -0.309371,
		34.025169, 37.357536, 41.037861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624695, 37.956032, 41.248962>,  <34.678288, 37.228947, 41.254421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624695, 37.956032, 41.248962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244667, 37.831421, 41.256123>,  <34.016651, 37.756657, 41.260418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244667, 37.831421, 41.256123>,  <34.624695, 37.956032, 41.248962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244667, 37.831421, 41.256123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245133, 0.780630, 0.574915,
		-0.193074, 0.541821, -0.818018,
		-0.950070, -0.311524, 0.017901,
		33.959644, 37.737965, 41.261494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.025995, 39.134159, 38.384747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.340885, 38.931137, 38.524841>,  <27.529819, 38.809326, 38.608898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.340885, 38.931137, 38.524841>,  <27.025995, 39.134159, 38.384747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340885, 38.931137, 38.524841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178336, -0.356310, -0.917191,
		0.590316, 0.784496, -0.189981,
		0.787225, -0.507553, 0.350239,
		27.577053, 38.778870, 38.629913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618853, 39.380085, 37.955433>,  <27.025995, 39.134159, 38.384747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618853, 39.380085, 37.955433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.729239, 39.031315, 38.117218>,  <27.795471, 38.822052, 38.214291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.729239, 39.031315, 38.117218>,  <27.618853, 39.380085, 37.955433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729239, 39.031315, 38.117218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235813, -0.346525, -0.907917,
		0.931791, 0.345933, 0.109982,
		0.275967, -0.871924, 0.404464,
		27.812029, 38.769737, 38.238556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388128, 39.185406, 37.672260>,  <27.618853, 39.380085, 37.955433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388128, 39.185406, 37.672260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.230854, 38.841541, 37.802727>,  <28.136490, 38.635223, 37.881008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.230854, 38.841541, 37.802727>,  <28.388128, 39.185406, 37.672260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230854, 38.841541, 37.802727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457783, -0.490676, -0.741399,
		0.797395, -0.142194, 0.586466,
		-0.393187, -0.859662, 0.326168,
		28.112898, 38.583641, 37.900578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902805, 38.633755, 37.814304>,  <28.388128, 39.185406, 37.672260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902805, 38.633755, 37.814304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.565079, 38.428673, 37.751999>,  <28.362442, 38.305622, 37.714615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.565079, 38.428673, 37.751999>,  <28.902805, 38.633755, 37.814304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565079, 38.428673, 37.751999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443491, -0.505468, -0.740147,
		0.300741, -0.694000, 0.654155,
		-0.844317, -0.512705, -0.155767,
		28.311783, 38.274860, 37.705269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180655, 37.964275, 37.714752>,  <28.902805, 38.633755, 37.814304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180655, 37.964275, 37.714752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.796875, 37.956791, 37.602249>,  <28.566607, 37.952301, 37.534748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.796875, 37.956791, 37.602249>,  <29.180655, 37.964275, 37.714752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796875, 37.956791, 37.602249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234215, -0.608126, -0.758503,
		-0.156850, -0.793620, 0.587848,
		-0.959449, -0.018712, -0.281262,
		28.509041, 37.951176, 37.517872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076780, 37.246494, 37.542221>,  <29.180655, 37.964275, 37.714752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076780, 37.246494, 37.542221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.801464, 37.464424, 37.350628>,  <28.636274, 37.595181, 37.235672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.801464, 37.464424, 37.350628>,  <29.076780, 37.246494, 37.542221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801464, 37.464424, 37.350628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207058, -0.485261, -0.849499,
		-0.695257, -0.683880, 0.221191,
		-0.688291, 0.544821, -0.478984,
		28.594976, 37.627869, 37.206932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643591, 36.836441, 37.214233>,  <29.076780, 37.246494, 37.542221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643591, 36.836441, 37.214233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595083, 37.163414, 36.988987>,  <28.565979, 37.359596, 36.853840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595083, 37.163414, 36.988987>,  <28.643591, 36.836441, 37.214233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595083, 37.163414, 36.988987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160699, -0.543651, -0.823784,
		-0.979525, -0.190393, -0.065432,
		-0.121271, 0.817431, -0.563115,
		28.558702, 37.408642, 36.820053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244986, 36.660248, 36.687756>,  <28.643591, 36.836441, 37.214233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244986, 36.660248, 36.687756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.390425, 36.997982, 36.530331>,  <28.477688, 37.200623, 36.435875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.390425, 36.997982, 36.530331>,  <28.244986, 36.660248, 36.687756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390425, 36.997982, 36.530331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231103, -0.491027, -0.839931,
		-0.902434, 0.214445, -0.373666,
		0.363599, 0.844338, -0.393560,
		28.499504, 37.251282, 36.412262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011541, 36.652363, 36.017914>,  <28.244986, 36.660248, 36.687756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011541, 36.652363, 36.017914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.290176, 36.939140, 36.028900>,  <28.457357, 37.111206, 36.035492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.290176, 36.939140, 36.028900>,  <28.011541, 36.652363, 36.017914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290176, 36.939140, 36.028900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446054, -0.402763, -0.799261,
		-0.561964, 0.569007, -0.600357,
		0.696586, 0.716947, 0.027470,
		28.499153, 37.154224, 36.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954590, 37.006371, 35.384823>,  <28.011541, 36.652363, 36.017914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954590, 37.006371, 35.384823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.319851, 37.069626, 35.535103>,  <28.539007, 37.107578, 35.625271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.319851, 37.069626, 35.535103>,  <27.954590, 37.006371, 35.384823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319851, 37.069626, 35.535103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407596, -0.364815, -0.837123,
		0.004677, 0.917552, -0.397588,
		0.913150, 0.158140, 0.375697,
		28.593796, 37.117069, 35.647812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253145, 37.317211, 34.848564>,  <27.954590, 37.006371, 35.384823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253145, 37.317211, 34.848564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.551231, 37.170170, 35.071102>,  <28.730083, 37.081947, 35.204624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.551231, 37.170170, 35.071102>,  <28.253145, 37.317211, 34.848564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551231, 37.170170, 35.071102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491078, -0.261880, -0.830820,
		0.451107, 0.892350, -0.014636,
		0.745215, -0.367601, 0.556349,
		28.774796, 37.059891, 35.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816782, 37.344677, 34.350410>,  <28.253145, 37.317211, 34.848564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816782, 37.344677, 34.350410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.931501, 37.108063, 34.651829>,  <29.000332, 36.966095, 34.832680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.931501, 37.108063, 34.651829>,  <28.816782, 37.344677, 34.350410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931501, 37.108063, 34.651829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530620, -0.556822, -0.639055,
		0.797615, 0.583127, 0.154185,
		0.286796, -0.591534, 0.753549,
		29.017540, 36.930603, 34.877892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432276, 37.371155, 34.276196>,  <28.816782, 37.344677, 34.350410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432276, 37.371155, 34.276196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.410765, 37.016171, 34.459293>,  <29.397858, 36.803181, 34.569153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.410765, 37.016171, 34.459293>,  <29.432276, 37.371155, 34.276196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410765, 37.016171, 34.459293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617934, -0.389664, -0.682876,
		0.784389, 0.246132, 0.569344,
		-0.053776, -0.887457, 0.457742,
		29.394632, 36.749931, 34.596615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102798, 37.106213, 34.293468>,  <29.432276, 37.371155, 34.276196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102798, 37.106213, 34.293468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857124, 36.792236, 34.326061>,  <29.709721, 36.603851, 34.345619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857124, 36.792236, 34.326061>,  <30.102798, 37.106213, 34.293468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857124, 36.792236, 34.326061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559946, -0.506221, -0.655897,
		0.556092, -0.357215, 0.750439,
		-0.614184, -0.784945, 0.081484,
		29.672869, 36.556751, 34.350506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911926, 37.317440, 34.364178>,  <30.102798, 37.106213, 34.293468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911926, 37.317440, 34.364178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013851, 37.614582, 34.116554>,  <31.075006, 37.792870, 33.967979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013851, 37.614582, 34.116554>,  <30.911926, 37.317440, 34.364178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013851, 37.614582, 34.116554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181987, 0.665592, 0.723787,
		0.949711, -0.071769, 0.304792,
		0.254812, 0.742857, -0.619059,
		31.090294, 37.837440, 33.930836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503841, 37.641109, 34.749374>,  <30.911926, 37.317440, 34.364178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503841, 37.641109, 34.749374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.339531, 37.898457, 34.490967>,  <31.240944, 38.052864, 34.335922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.339531, 37.898457, 34.490967>,  <31.503841, 37.641109, 34.749374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339531, 37.898457, 34.490967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159999, 0.646696, 0.745778,
		0.897587, 0.409711, -0.162710,
		-0.410778, 0.643367, -0.646019,
		31.216297, 38.091465, 34.297161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889313, 38.271732, 34.805832>,  <31.503841, 37.641109, 34.749374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889313, 38.271732, 34.805832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529297, 38.370651, 34.662292>,  <31.313288, 38.430000, 34.576168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529297, 38.370651, 34.662292>,  <31.889313, 38.271732, 34.805832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529297, 38.370651, 34.662292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148962, 0.599246, 0.786584,
		0.409556, 0.761413, -0.502509,
		-0.900041, 0.247295, -0.358846,
		31.259285, 38.444839, 34.554638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900261, 38.923573, 34.978951>,  <31.889313, 38.271732, 34.805832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900261, 38.923573, 34.978951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.527372, 38.900650, 34.836021>,  <31.303638, 38.886894, 34.750263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.527372, 38.900650, 34.836021>,  <31.900261, 38.923573, 34.978951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527372, 38.900650, 34.836021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290269, 0.708068, 0.643726,
		0.216113, 0.703815, -0.676713,
		-0.932223, -0.057311, -0.357318,
		31.247705, 38.883457, 34.728825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654917, 39.631012, 34.917427>,  <31.900261, 38.923573, 34.978951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654917, 39.631012, 34.917427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.305056, 39.437157, 34.913208>,  <31.095139, 39.320843, 34.910675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.305056, 39.437157, 34.913208>,  <31.654917, 39.631012, 34.917427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305056, 39.437157, 34.913208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361058, 0.636797, 0.681268,
		-0.323447, 0.599683, -0.731958,
		-0.874653, -0.484634, -0.010550,
		31.042660, 39.291767, 34.910042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180222, 40.172836, 34.838070>,  <31.654917, 39.631012, 34.917427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180222, 40.172836, 34.838070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000223, 39.849949, 34.990856>,  <30.892223, 39.656216, 35.082527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000223, 39.849949, 34.990856>,  <31.180222, 40.172836, 34.838070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000223, 39.849949, 34.990856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293522, 0.537646, 0.790431,
		-0.843414, 0.243577, -0.478876,
		-0.449997, -0.807222, 0.381963,
		30.865225, 39.607780, 35.105446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506981, 40.423710, 35.017353>,  <31.180222, 40.172836, 34.838070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506981, 40.423710, 35.017353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552858, 40.092850, 35.237415>,  <30.580385, 39.894333, 35.369453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552858, 40.092850, 35.237415>,  <30.506981, 40.423710, 35.017353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552858, 40.092850, 35.237415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448542, 0.451026, 0.771612,
		-0.886372, -0.335267, -0.319281,
		0.114692, -0.827147, 0.550158,
		30.587265, 39.844707, 35.402462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927477, 40.305626, 35.435860>,  <30.506981, 40.423710, 35.017353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927477, 40.305626, 35.435860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.182261, 40.061840, 35.624680>,  <30.335131, 39.915569, 35.737972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.182261, 40.061840, 35.624680>,  <29.927477, 40.305626, 35.435860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182261, 40.061840, 35.624680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285138, 0.382655, 0.878790,
		-0.716228, -0.694352, 0.069952,
		0.636957, -0.609468, 0.472054,
		30.373348, 39.878998, 35.766296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578182, 40.053974, 35.949684>,  <29.927477, 40.305626, 35.435860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578182, 40.053974, 35.949684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959383, 40.044819, 36.070522>,  <30.188105, 40.039326, 36.143024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959383, 40.044819, 36.070522>,  <29.578182, 40.053974, 35.949684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959383, 40.044819, 36.070522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244396, 0.531217, 0.811221,
		-0.179042, -0.846927, 0.500658,
		0.953003, -0.022884, 0.302096,
		30.245283, 40.037952, 36.161152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550461, 39.821419, 36.737179>,  <29.578182, 40.053974, 35.949684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550461, 39.821419, 36.737179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886385, 40.006466, 36.623547>,  <30.087940, 40.117493, 36.555367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886385, 40.006466, 36.623547>,  <29.550461, 39.821419, 36.737179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886385, 40.006466, 36.623547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065845, 0.606219, 0.792568,
		0.538866, -0.646904, 0.539572,
		0.839814, 0.462616, -0.284075,
		30.138329, 40.145252, 36.538322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989328, 39.733955, 37.297318>,  <29.550461, 39.821419, 36.737179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989328, 39.733955, 37.297318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153725, 40.039837, 37.098801>,  <30.252363, 40.223366, 36.979691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153725, 40.039837, 37.098801>,  <29.989328, 39.733955, 37.297318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153725, 40.039837, 37.098801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031844, 0.556107, 0.830500,
		0.911082, -0.325525, 0.252907,
		0.410992, 0.764708, -0.496293,
		30.277023, 40.269249, 36.949913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637178, 40.068848, 37.646412>,  <29.989328, 39.733955, 37.297318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637178, 40.068848, 37.646412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479605, 40.357403, 37.418583>,  <30.385059, 40.530537, 37.281883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479605, 40.357403, 37.418583>,  <30.637178, 40.068848, 37.646412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479605, 40.357403, 37.418583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045848, 0.634335, 0.771698,
		0.917994, 0.277885, -0.282961,
		-0.393935, 0.721387, -0.569575,
		30.361423, 40.573818, 37.247711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090363, 40.498291, 37.828789>,  <30.637178, 40.068848, 37.646412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090363, 40.498291, 37.828789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781824, 40.691486, 37.663021>,  <30.596701, 40.807404, 37.563560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781824, 40.691486, 37.663021>,  <31.090363, 40.498291, 37.828789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781824, 40.691486, 37.663021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016047, 0.636215, 0.771345,
		0.636215, 0.601624, -0.482991,
		-0.771345, 0.482991, -0.414424,
		30.550421, 40.836384, 37.538692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194191, 41.141052, 37.908195>,  <31.090363, 40.498291, 37.828789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194191, 41.141052, 37.908195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.798462, 41.136700, 37.850063>,  <30.561024, 41.134087, 37.815186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.798462, 41.136700, 37.850063>,  <31.194191, 41.141052, 37.908195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798462, 41.136700, 37.850063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124226, 0.584398, 0.801902,
		0.076203, 0.811394, -0.579511,
		-0.989324, -0.010883, -0.145329,
		30.501665, 41.133434, 37.806465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646519, 41.610283, 38.171635>,  <31.194191, 41.141052, 37.908195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646519, 41.610283, 38.171635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916195, 41.418579, 38.396412>,  <32.077999, 41.303558, 38.531281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916195, 41.418579, 38.396412>,  <31.646519, 41.610283, 38.171635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916195, 41.418579, 38.396412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346896, -0.466233, -0.813812,
		0.652021, 0.743600, -0.148077,
		0.674189, -0.479255, 0.561946,
		32.118450, 41.274803, 38.564995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284775, 41.581657, 37.778099>,  <31.646519, 41.610283, 38.171635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284775, 41.581657, 37.778099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306862, 41.277027, 38.036388>,  <32.320114, 41.094250, 38.191360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306862, 41.277027, 38.036388>,  <32.284775, 41.581657, 37.778099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306862, 41.277027, 38.036388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503233, -0.537338, -0.676775,
		0.862385, 0.362316, 0.353580,
		0.055215, -0.761574, 0.645721,
		32.323425, 41.048553, 38.230106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994946, 41.400467, 37.748981>,  <32.284775, 41.581657, 37.778099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994946, 41.400467, 37.748981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.823547, 41.069363, 37.893871>,  <32.720707, 40.870701, 37.980804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.823547, 41.069363, 37.893871>,  <32.994946, 41.400467, 37.748981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823547, 41.069363, 37.893871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504267, -0.551733, -0.664309,
		0.749738, -0.101996, 0.653826,
		-0.428494, -0.827761, 0.362222,
		32.695000, 40.821033, 38.002537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485023, 40.960541, 37.691734>,  <32.994946, 41.400467, 37.748981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485023, 40.960541, 37.691734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174843, 40.714993, 37.750843>,  <32.988735, 40.567661, 37.786308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174843, 40.714993, 37.750843>,  <33.485023, 40.960541, 37.691734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174843, 40.714993, 37.750843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440543, -0.693672, -0.569861,
		0.452326, -0.376800, 0.808346,
		-0.775451, -0.613873, 0.147769,
		32.942207, 40.530830, 37.795174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749939, 40.321213, 38.026409>,  <33.485023, 40.960541, 37.691734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749939, 40.321213, 38.026409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403893, 40.231396, 37.847004>,  <33.196266, 40.177505, 37.739361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403893, 40.231396, 37.847004>,  <33.749939, 40.321213, 38.026409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403893, 40.231396, 37.847004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466889, -0.687254, -0.556504,
		-0.183284, -0.690843, 0.699387,
		-0.865114, -0.224538, -0.448510,
		33.144360, 40.164036, 37.712452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811066, 39.546490, 37.948288>,  <33.749939, 40.321213, 38.026409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811066, 39.546490, 37.948288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.529724, 39.693169, 37.704704>,  <33.360920, 39.781174, 37.558556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.529724, 39.693169, 37.704704>,  <33.811066, 39.546490, 37.948288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529724, 39.693169, 37.704704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349400, -0.567697, -0.745412,
		-0.619042, -0.737058, 0.271169,
		-0.703354, 0.366695, -0.608956,
		33.318718, 39.803177, 37.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401344, 39.018490, 37.755165>,  <33.811066, 39.546490, 37.948288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401344, 39.018490, 37.755165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345951, 39.303165, 37.479679>,  <33.312714, 39.473972, 37.314388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345951, 39.303165, 37.479679>,  <33.401344, 39.018490, 37.755165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345951, 39.303165, 37.479679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373814, -0.606409, -0.701805,
		-0.917107, -0.354638, -0.182062,
		-0.138483, 0.711688, -0.688711,
		33.304405, 39.516670, 37.273067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095417, 38.718372, 37.198948>,  <33.401344, 39.018490, 37.755165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095417, 38.718372, 37.198948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256104, 39.046227, 37.035568>,  <33.352516, 39.242939, 36.937542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256104, 39.046227, 37.035568>,  <33.095417, 38.718372, 37.198948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256104, 39.046227, 37.035568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327672, -0.545138, -0.771657,
		-0.855133, 0.176154, -0.487563,
		0.401719, 0.819631, -0.408445,
		33.376617, 39.292114, 36.913036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965099, 38.707020, 36.526627>,  <33.095417, 38.718372, 37.198948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965099, 38.707020, 36.526627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267521, 38.968796, 36.530323>,  <33.448975, 39.125862, 36.532543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267521, 38.968796, 36.530323>,  <32.965099, 38.707020, 36.526627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267521, 38.968796, 36.530323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419865, -0.474122, -0.773900,
		-0.502092, 0.588992, -0.633240,
		0.756054, 0.654444, 0.009244,
		33.494335, 39.165131, 36.533096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029327, 38.916920, 35.797512>,  <32.965099, 38.707020, 36.526627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029327, 38.916920, 35.797512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364056, 39.008270, 35.996540>,  <33.564892, 39.063080, 36.115955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364056, 39.008270, 35.996540>,  <33.029327, 38.916920, 35.797512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364056, 39.008270, 35.996540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538836, -0.504417, -0.674699,
		0.096898, 0.832711, -0.545164,
		0.836819, 0.228377, 0.497572,
		33.615101, 39.076782, 36.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467827, 39.110260, 35.399464>,  <33.029327, 38.916920, 35.797512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467827, 39.110260, 35.399464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691174, 38.976566, 35.703178>,  <33.825180, 38.896351, 35.885406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691174, 38.976566, 35.703178>,  <33.467827, 39.110260, 35.399464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691174, 38.976566, 35.703178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533725, -0.555957, -0.637220,
		0.635111, 0.761052, -0.132039,
		0.558365, -0.334233, 0.759287,
		33.858685, 38.876297, 35.930965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149654, 39.103176, 35.105762>,  <33.467827, 39.110260, 35.399464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149654, 39.103176, 35.105762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.178455, 38.886131, 35.440517>,  <34.195736, 38.755905, 35.641373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.178455, 38.886131, 35.440517>,  <34.149654, 39.103176, 35.105762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178455, 38.886131, 35.440517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697332, -0.572529, -0.431205,
		0.713122, 0.614641, 0.337156,
		0.072005, -0.542612, 0.836892,
		34.200058, 38.723347, 35.691586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833279, 39.003082, 35.081699>,  <34.149654, 39.103176, 35.105762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833279, 39.003082, 35.081699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665340, 38.730087, 35.321011>,  <34.564575, 38.566292, 35.464600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665340, 38.730087, 35.321011>,  <34.833279, 39.003082, 35.081699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665340, 38.730087, 35.321011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597404, -0.704067, -0.383925,
		0.683253, 0.196225, 0.703321,
		-0.419849, -0.682485, 0.598282,
		34.539387, 38.525341, 35.500496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426357, 38.755924, 35.468159>,  <34.833279, 39.003082, 35.081699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426357, 38.755924, 35.468159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142540, 38.474499, 35.483917>,  <34.972248, 38.305645, 35.493374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142540, 38.474499, 35.483917>,  <35.426357, 38.755924, 35.468159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142540, 38.474499, 35.483917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590813, -0.624448, -0.510886,
		0.384041, -0.339218, 0.858745,
		-0.709543, -0.703559, 0.039399,
		34.929676, 38.263432, 35.495735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.628017, 38.936737, 28.572506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269306, 39.022739, 28.417814>,  <27.054079, 39.074341, 28.324999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269306, 39.022739, 28.417814>,  <27.628017, 38.936737, 28.572506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269306, 39.022739, 28.417814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400571, -0.765772, 0.503127,
		-0.187970, 0.606106, 0.772854,
		-0.896778, 0.215010, -0.386730,
		27.000273, 39.087242, 28.301796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233593, 38.918255, 29.134577>,  <27.628017, 38.936737, 28.572506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233593, 38.918255, 29.134577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041899, 38.845287, 28.791170>,  <26.926882, 38.801506, 28.585125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041899, 38.845287, 28.791170>,  <27.233593, 38.918255, 29.134577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041899, 38.845287, 28.791170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384146, -0.835900, 0.392050,
		-0.789153, 0.517681, 0.330519,
		-0.479238, -0.182420, -0.858518,
		26.898127, 38.790562, 28.533615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525320, 38.852333, 29.244005>,  <27.233593, 38.918255, 29.134577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525320, 38.852333, 29.244005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629911, 38.647903, 28.916485>,  <26.692667, 38.525246, 28.719973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629911, 38.647903, 28.916485>,  <26.525320, 38.852333, 29.244005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629911, 38.647903, 28.916485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363982, -0.837895, 0.406753,
		-0.893950, 0.191672, -0.405112,
		0.261478, -0.511070, -0.818802,
		26.708355, 38.494583, 28.670845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986040, 38.403915, 29.182938>,  <26.525320, 38.852333, 29.244005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986040, 38.403915, 29.182938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.245592, 38.243011, 28.924591>,  <26.401323, 38.146469, 28.769583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.245592, 38.243011, 28.924591>,  <25.986040, 38.403915, 29.182938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245592, 38.243011, 28.924591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178676, -0.905648, 0.384548,
		-0.739615, -0.134125, -0.659531,
		0.648880, -0.402259, -0.645866,
		26.440256, 38.122334, 28.730831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649380, 37.913296, 28.940216>,  <25.986040, 38.403915, 29.182938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649380, 37.913296, 28.940216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028984, 37.814060, 28.862421>,  <26.256746, 37.754517, 28.815744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028984, 37.814060, 28.862421>,  <25.649380, 37.913296, 28.940216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028984, 37.814060, 28.862421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198466, -0.949547, 0.242840,
		-0.244921, -0.191859, -0.950370,
		0.949012, -0.248093, -0.194487,
		26.313688, 37.739632, 28.804075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612263, 37.370762, 28.480453>,  <25.649380, 37.913296, 28.940216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612263, 37.370762, 28.480453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992285, 37.344566, 28.602507>,  <26.220299, 37.328850, 28.675739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992285, 37.344566, 28.602507>,  <25.612263, 37.370762, 28.480453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992285, 37.344566, 28.602507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128373, -0.973192, 0.190832,
		0.284456, -0.220471, -0.932994,
		0.950055, -0.065488, 0.305133,
		26.277302, 37.324921, 28.694046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853983, 36.768230, 28.235239>,  <25.612263, 37.370762, 28.480453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853983, 36.768230, 28.235239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112192, 36.824589, 28.535490>,  <26.267118, 36.858406, 28.715641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112192, 36.824589, 28.535490>,  <25.853983, 36.768230, 28.235239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112192, 36.824589, 28.535490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184483, -0.924964, 0.332276,
		0.741123, -0.352971, -0.571094,
		0.645525, 0.140900, 0.750629,
		26.305849, 36.866859, 28.760679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057457, 36.118919, 28.427183>,  <25.853983, 36.768230, 28.235239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057457, 36.118919, 28.427183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191042, 36.314434, 28.749563>,  <26.271193, 36.431744, 28.942991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191042, 36.314434, 28.749563>,  <26.057457, 36.118919, 28.427183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191042, 36.314434, 28.749563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274977, -0.767328, 0.579306,
		0.901587, -0.415083, -0.121852,
		0.333961, 0.488788, 0.805951,
		26.291231, 36.461071, 28.991348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619230, 35.732944, 28.772167>,  <26.057457, 36.118919, 28.427183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619230, 35.732944, 28.772167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430763, 35.960484, 29.041809>,  <26.317684, 36.097008, 29.203594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430763, 35.960484, 29.041809>,  <26.619230, 35.732944, 28.772167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430763, 35.960484, 29.041809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192565, -0.812158, 0.550744,
		0.860768, 0.129683, 0.492200,
		-0.471166, 0.568843, 0.674107,
		26.289413, 36.131138, 29.244041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763670, 35.366791, 29.318678>,  <26.619230, 35.732944, 28.772167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763670, 35.366791, 29.318678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491941, 35.607765, 29.486292>,  <26.328903, 35.752350, 29.586861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491941, 35.607765, 29.486292>,  <26.763670, 35.366791, 29.318678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491941, 35.607765, 29.486292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153950, -0.675307, 0.721290,
		0.717509, 0.425479, 0.551497,
		-0.679323, 0.602435, 0.419036,
		26.288145, 35.788494, 29.612003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926025, 35.478222, 29.959011>,  <26.763670, 35.366791, 29.318678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926025, 35.478222, 29.959011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537022, 35.570450, 29.972019>,  <26.303619, 35.625786, 29.979824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537022, 35.570450, 29.972019>,  <26.926025, 35.478222, 29.959011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537022, 35.570450, 29.972019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109821, -0.577319, 0.809100,
		0.205330, 0.783288, 0.586771,
		-0.972512, 0.230572, 0.032519,
		26.245268, 35.639622, 29.981775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768162, 35.785854, 30.639069>,  <26.926025, 35.478222, 29.959011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768162, 35.785854, 30.639069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430277, 35.624855, 30.497957>,  <26.227545, 35.528255, 30.413290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430277, 35.624855, 30.497957>,  <26.768162, 35.785854, 30.639069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430277, 35.624855, 30.497957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193290, -0.385226, 0.902352,
		-0.499097, 0.830417, 0.247606,
		-0.844713, -0.402502, -0.352777,
		26.176863, 35.504105, 30.392124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265512, 35.887726, 31.110630>,  <26.768162, 35.785854, 30.639069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265512, 35.887726, 31.110630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101540, 35.599812, 30.886538>,  <26.003157, 35.427063, 30.752083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101540, 35.599812, 30.886538>,  <26.265512, 35.887726, 31.110630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101540, 35.599812, 30.886538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465038, -0.363452, 0.807243,
		-0.784662, 0.591444, -0.185739,
		-0.409932, -0.719790, -0.560231,
		25.978559, 35.383873, 30.718468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565332, 35.949585, 31.372416>,  <26.265512, 35.887726, 31.110630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565332, 35.949585, 31.372416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.628805, 35.599369, 31.189877>,  <25.666889, 35.389240, 31.080353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.628805, 35.599369, 31.189877>,  <25.565332, 35.949585, 31.372416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628805, 35.599369, 31.189877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524792, -0.466302, 0.712149,
		-0.836309, 0.126483, -0.533469,
		0.158683, -0.875537, -0.456349,
		25.676411, 35.336708, 31.052971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803940, 35.652905, 31.331995>,  <25.565332, 35.949585, 31.372416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803940, 35.652905, 31.331995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.080112, 35.364670, 31.306520>,  <25.245817, 35.191730, 31.291237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.080112, 35.364670, 31.306520>,  <24.803940, 35.652905, 31.331995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080112, 35.364670, 31.306520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319476, -0.382721, 0.866868,
		-0.649029, -0.578168, -0.494453,
		0.690432, -0.720588, -0.063686,
		25.287243, 35.148495, 31.287415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.439074, 35.056271, 31.495413>,  <24.803940, 35.652905, 31.331995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.439074, 35.056271, 31.495413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.821283, 34.955181, 31.556211>,  <25.050610, 34.894527, 31.592691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.821283, 34.955181, 31.556211>,  <24.439074, 35.056271, 31.495413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821283, 34.955181, 31.556211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263385, -0.499456, 0.825331,
		-0.132664, -0.828658, -0.543806,
		0.955525, -0.252722, 0.151997,
		25.107941, 34.879364, 31.601810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451321, 34.396210, 31.577564>,  <24.439074, 35.056271, 31.495413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451321, 34.396210, 31.577564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.802092, 34.494316, 31.742897>,  <25.012554, 34.553181, 31.842096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.802092, 34.494316, 31.742897>,  <24.451321, 34.396210, 31.577564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802092, 34.494316, 31.742897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233444, -0.534382, 0.812367,
		0.420125, -0.808876, -0.411358,
		0.876926, 0.245266, 0.413334,
		25.065170, 34.567898, 31.866898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781937, 33.745174, 31.780195>,  <24.451321, 34.396210, 31.577564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781937, 33.745174, 31.780195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.961075, 34.022095, 32.006523>,  <25.068558, 34.188248, 32.142319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.961075, 34.022095, 32.006523>,  <24.781937, 33.745174, 31.780195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961075, 34.022095, 32.006523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121867, -0.579660, 0.805694,
		0.885768, -0.429780, -0.175228,
		0.447843, 0.692303, 0.565820,
		25.095428, 34.229786, 32.176270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316633, 33.449921, 32.308022>,  <24.781937, 33.745174, 31.780195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316633, 33.449921, 32.308022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187193, 33.793579, 32.466591>,  <25.109528, 33.999775, 32.561733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187193, 33.793579, 32.466591>,  <25.316633, 33.449921, 32.308022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187193, 33.793579, 32.466591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058839, -0.436428, 0.897813,
		0.944362, 0.267209, 0.191780,
		-0.323602, 0.859145, 0.396424,
		25.090113, 34.051323, 32.585518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434620, 32.747784, 32.235939>,  <25.316633, 33.449921, 32.308022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434620, 32.747784, 32.235939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617193, 32.963104, 31.952559>,  <25.726736, 33.092297, 31.782532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617193, 32.963104, 31.952559>,  <25.434620, 32.747784, 32.235939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617193, 32.963104, 31.952559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746751, -0.664673, -0.023932,
		-0.483769, -0.518111, -0.705357,
		0.456432, 0.538304, -0.708448,
		25.754124, 33.124596, 31.740025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510073, 32.362167, 31.560911>,  <25.434620, 32.747784, 32.235939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510073, 32.362167, 31.560911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.791365, 32.629837, 31.656973>,  <25.960140, 32.790440, 31.714609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.791365, 32.629837, 31.656973>,  <25.510073, 32.362167, 31.560911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791365, 32.629837, 31.656973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668118, -0.737498, 0.098569,
		0.243072, 0.091134, -0.965717,
		0.703232, 0.669172, 0.240154,
		26.002335, 32.830589, 31.729019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101412, 32.206993, 31.201529>,  <25.510073, 32.362167, 31.560911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101412, 32.206993, 31.201529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219723, 32.380829, 31.541798>,  <26.290709, 32.485130, 31.745960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219723, 32.380829, 31.541798>,  <26.101412, 32.206993, 31.201529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219723, 32.380829, 31.541798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698758, -0.705636, 0.117537,
		0.651347, 0.559651, -0.512385,
		0.295778, 0.434591, 0.850674,
		26.308456, 32.511208, 31.796999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111359, 32.352558, 30.374657>,  <26.101412, 32.206993, 31.201529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111359, 32.352558, 30.374657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.148504, 32.076275, 30.087799>,  <26.170792, 31.910505, 29.915684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.148504, 32.076275, 30.087799>,  <26.111359, 32.352558, 30.374657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148504, 32.076275, 30.087799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187496, 0.719503, -0.668700,
		0.977866, -0.072363, 0.196321,
		0.092864, -0.690709, -0.717146,
		26.176363, 31.869062, 29.872656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685759, 32.582047, 30.012272>,  <26.111359, 32.352558, 30.374657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685759, 32.582047, 30.012272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514229, 32.327282, 29.756006>,  <26.411312, 32.174423, 29.602247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514229, 32.327282, 29.756006>,  <26.685759, 32.582047, 30.012272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514229, 32.327282, 29.756006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402064, 0.500514, -0.766701,
		0.808984, -0.586367, 0.041448,
		-0.428823, -0.636914, -0.640665,
		26.385582, 32.136208, 29.563807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190346, 32.427750, 29.537636>,  <26.685759, 32.582047, 30.012272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190346, 32.427750, 29.537636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852549, 32.323643, 29.350407>,  <26.649870, 32.261181, 29.238070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852549, 32.323643, 29.350407>,  <27.190346, 32.427750, 29.537636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852549, 32.323643, 29.350407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330172, 0.435139, -0.837640,
		0.421684, -0.861927, -0.281541,
		-0.844493, -0.260262, -0.468075,
		26.599201, 32.245564, 29.209984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433033, 32.279755, 28.910126>,  <27.190346, 32.427750, 29.537636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433033, 32.279755, 28.910126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038052, 32.327690, 28.868988>,  <26.801064, 32.356453, 28.844305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038052, 32.327690, 28.868988>,  <27.433033, 32.279755, 28.910126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038052, 32.327690, 28.868988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150831, 0.522798, -0.839007,
		-0.046783, -0.843990, -0.534314,
		-0.987452, 0.119843, -0.102842,
		26.741816, 32.363644, 28.838135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281221, 32.203918, 28.233515>,  <27.433033, 32.279755, 28.910126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281221, 32.203918, 28.233515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956270, 32.409512, 28.343689>,  <26.761299, 32.532867, 28.409794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956270, 32.409512, 28.343689>,  <27.281221, 32.203918, 28.233515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956270, 32.409512, 28.343689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212205, 0.700525, -0.681347,
		-0.543148, -0.495063, -0.678161,
		-0.812379, 0.513981, 0.275434,
		26.712557, 32.563705, 28.426319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010496, 32.496433, 27.648245>,  <27.281221, 32.203918, 28.233515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010496, 32.496433, 27.648245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845207, 32.731560, 27.926443>,  <26.746033, 32.872635, 28.093363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845207, 32.731560, 27.926443>,  <27.010496, 32.496433, 27.648245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845207, 32.731560, 27.926443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124817, 0.793105, -0.596159,
		-0.902035, -0.159537, -0.401100,
		-0.413224, 0.587820, 0.695495,
		26.721241, 32.907906, 28.135092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466965, 32.826397, 27.400148>,  <27.010496, 32.496433, 27.648245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466965, 32.826397, 27.400148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542437, 33.066830, 27.710787>,  <26.587719, 33.211090, 27.897169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542437, 33.066830, 27.710787>,  <26.466965, 32.826397, 27.400148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542437, 33.066830, 27.710787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055943, 0.796095, -0.602580,
		-0.980444, 0.070249, 0.183833,
		0.188679, 0.601081, 0.776597,
		26.599041, 33.247154, 27.943766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929033, 33.302170, 27.431143>,  <26.466965, 32.826397, 27.400148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929033, 33.302170, 27.431143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225267, 33.482513, 27.630445>,  <26.403008, 33.590721, 27.750027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225267, 33.482513, 27.630445>,  <25.929033, 33.302170, 27.431143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225267, 33.482513, 27.630445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105176, 0.810130, -0.576739,
		-0.663679, 0.374721, 0.647391,
		0.740586, 0.450860, 0.498254,
		26.447443, 33.617771, 27.779922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590254, 33.924763, 27.739082>,  <25.929033, 33.302170, 27.431143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590254, 33.924763, 27.739082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.980949, 34.005264, 27.768686>,  <26.215366, 34.053566, 27.786448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.980949, 34.005264, 27.768686>,  <25.590254, 33.924763, 27.739082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980949, 34.005264, 27.768686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129737, 0.829440, -0.543321,
		-0.170732, 0.521081, 0.836257,
		0.976739, 0.201256, 0.074008,
		26.273972, 34.065639, 27.790890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678476, 34.597191, 27.912077>,  <25.590254, 33.924763, 27.739082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678476, 34.597191, 27.912077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033066, 34.508003, 27.749868>,  <26.245819, 34.454491, 27.652544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033066, 34.508003, 27.749868>,  <25.678476, 34.597191, 27.912077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033066, 34.508003, 27.749868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041523, 0.834419, -0.549564,
		0.460912, 0.504012, 0.730433,
		0.886474, -0.222971, -0.405522,
		26.299007, 34.441113, 27.628212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003399, 35.252659, 27.829075>,  <25.678476, 34.597191, 27.912077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003399, 35.252659, 27.829075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219187, 35.014732, 27.590691>,  <26.348660, 34.871979, 27.447660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219187, 35.014732, 27.590691>,  <26.003399, 35.252659, 27.829075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219187, 35.014732, 27.590691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078537, 0.740247, -0.667732,
		0.838334, 0.313416, 0.446056,
		0.539470, -0.594814, -0.595960,
		26.381027, 34.836288, 27.411903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607141, 35.528576, 27.696932>,  <26.003399, 35.252659, 27.829075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607141, 35.528576, 27.696932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.560097, 35.293499, 27.376736>,  <26.531870, 35.152454, 27.184618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.560097, 35.293499, 27.376736>,  <26.607141, 35.528576, 27.696932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560097, 35.293499, 27.376736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117906, 0.792121, -0.598868,
		0.986035, -0.164816, -0.023869,
		-0.117611, -0.587691, -0.800492,
		26.524813, 35.117191, 27.136589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049742, 35.761936, 27.155020>,  <26.607141, 35.528576, 27.696932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049742, 35.761936, 27.155020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828070, 35.530197, 26.915939>,  <26.695066, 35.391155, 26.772491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828070, 35.530197, 26.915939>,  <27.049742, 35.761936, 27.155020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828070, 35.530197, 26.915939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091822, 0.671117, -0.735643,
		0.827318, -0.462559, -0.318721,
		-0.554178, -0.579346, -0.597700,
		26.661816, 35.356392, 26.736629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464901, 35.636440, 26.517097>,  <27.049742, 35.761936, 27.155020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464901, 35.636440, 26.517097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078714, 35.566971, 26.439417>,  <26.847002, 35.525288, 26.392809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078714, 35.566971, 26.439417>,  <27.464901, 35.636440, 26.517097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078714, 35.566971, 26.439417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043670, 0.626975, -0.777814,
		0.256849, -0.759433, -0.597738,
		-0.965465, -0.173677, -0.194202,
		26.789076, 35.514866, 26.381157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413204, 35.605896, 25.740509>,  <27.464901, 35.636440, 26.517097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413204, 35.605896, 25.740509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038321, 35.685982, 25.854738>,  <26.813391, 35.734035, 25.923277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038321, 35.685982, 25.854738>,  <27.413204, 35.605896, 25.740509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038321, 35.685982, 25.854738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109711, 0.607998, -0.786322,
		-0.331064, -0.768278, -0.547855,
		-0.937209, 0.200217, 0.285575,
		26.757158, 35.746048, 25.940411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090475, 35.831692, 25.084614>,  <27.413204, 35.605896, 25.740509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090475, 35.831692, 25.084614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.846407, 35.961529, 25.373705>,  <26.699966, 36.039429, 25.547159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.846407, 35.961529, 25.373705>,  <27.090475, 35.831692, 25.084614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846407, 35.961529, 25.373705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021666, 0.905046, -0.424761,
		-0.791976, -0.274834, -0.545198,
		-0.610168, 0.324588, 0.722729,
		26.663357, 36.058907, 25.590523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671467, 36.369183, 24.812719>,  <27.090475, 35.831692, 25.084614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671467, 36.369183, 24.812719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634756, 36.455421, 25.201584>,  <26.612730, 36.507164, 25.434902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634756, 36.455421, 25.201584>,  <26.671467, 36.369183, 24.812719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634756, 36.455421, 25.201584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128830, 0.970645, -0.203102,
		-0.987411, 0.106604, -0.116858,
		-0.091776, 0.215600, 0.972160,
		26.607224, 36.520100, 25.493231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372988, 37.070969, 24.845921>,  <26.671467, 36.369183, 24.812719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372988, 37.070969, 24.845921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549915, 37.042439, 25.203527>,  <26.656073, 37.025322, 25.418091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549915, 37.042439, 25.203527>,  <26.372988, 37.070969, 24.845921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549915, 37.042439, 25.203527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156792, 0.987631, 0.001216,
		-0.883046, 0.139637, 0.448031,
		0.442319, -0.071321, 0.894017,
		26.682611, 37.021042, 25.471733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172047, 37.657063, 25.208427>,  <26.372988, 37.070969, 24.845921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172047, 37.657063, 25.208427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508270, 37.555298, 25.399733>,  <26.710005, 37.494240, 25.514515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508270, 37.555298, 25.399733>,  <26.172047, 37.657063, 25.208427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508270, 37.555298, 25.399733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218296, 0.967080, 0.130776,
		-0.495790, -0.005522, 0.868425,
		0.840559, -0.254411, 0.478263,
		26.760437, 37.478973, 25.543211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187845, 38.040653, 25.843006>,  <26.172047, 37.657063, 25.208427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187845, 38.040653, 25.843006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571285, 37.938931, 25.791758>,  <26.801350, 37.877895, 25.761009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571285, 37.938931, 25.791758>,  <26.187845, 38.040653, 25.843006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571285, 37.938931, 25.791758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284759, 0.856203, 0.431078,
		0.000070, -0.449715, 0.893172,
		0.958599, -0.254309, -0.128120,
		26.858866, 37.862637, 25.753321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.078976, 38.630363, 40.784897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842609, 38.416061, 41.026154>,  <33.700790, 38.287479, 41.170910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842609, 38.416061, 41.026154>,  <34.078976, 38.630363, 40.784897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842609, 38.416061, 41.026154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055912, 0.773039, 0.631890,
		-0.804795, 0.339669, -0.486754,
		-0.590913, -0.535758, 0.603146,
		33.665337, 38.255333, 41.207096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470772, 39.078232, 40.979416>,  <34.078976, 38.630363, 40.784897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470772, 39.078232, 40.979416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472904, 38.788361, 41.255043>,  <33.474182, 38.614437, 41.420418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472904, 38.788361, 41.255043>,  <33.470772, 39.078232, 40.979416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472904, 38.788361, 41.255043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100748, 0.685184, 0.721369,
		-0.994898, -0.073266, -0.069359,
		0.005328, -0.724676, 0.689069,
		33.474503, 38.570957, 41.461765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887215, 39.175270, 41.419563>,  <33.470772, 39.078232, 40.979416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887215, 39.175270, 41.419563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.140091, 38.964943, 41.647194>,  <33.291817, 38.838745, 41.783772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.140091, 38.964943, 41.647194>,  <32.887215, 39.175270, 41.419563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140091, 38.964943, 41.647194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197840, 0.600574, 0.774706,
		-0.749130, -0.602347, 0.275648,
		0.632190, -0.525821, 0.569076,
		33.329746, 38.807198, 41.817917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566978, 39.132519, 42.092999>,  <32.887215, 39.175270, 41.419563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566978, 39.132519, 42.092999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940716, 39.023586, 42.184952>,  <33.164959, 38.958229, 42.240124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940716, 39.023586, 42.184952>,  <32.566978, 39.132519, 42.092999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940716, 39.023586, 42.184952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124083, 0.356112, 0.926168,
		-0.334088, -0.893880, 0.298938,
		0.934339, -0.272329, 0.229888,
		33.221016, 38.941887, 42.253918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540493, 38.947609, 42.798992>,  <32.566978, 39.132519, 42.092999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540493, 38.947609, 42.798992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927040, 39.021118, 42.727043>,  <33.158970, 39.065224, 42.683872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927040, 39.021118, 42.727043>,  <32.540493, 38.947609, 42.798992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927040, 39.021118, 42.727043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099464, 0.377934, 0.920474,
		0.237135, -0.907411, 0.346947,
		0.966372, 0.183768, -0.179876,
		33.216953, 39.076248, 42.673080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898342, 38.649521, 43.399658>,  <32.540493, 38.947609, 42.798992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898342, 38.649521, 43.399658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088367, 38.951214, 43.218357>,  <33.202385, 39.132229, 43.109577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088367, 38.951214, 43.218357>,  <32.898342, 38.649521, 43.399658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088367, 38.951214, 43.218357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130477, 0.569776, 0.811376,
		0.870223, -0.326317, 0.369092,
		0.475065, 0.754236, -0.453255,
		33.230888, 39.177486, 43.082382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245007, 39.020344, 43.962818>,  <32.898342, 38.649521, 43.399658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245007, 39.020344, 43.962818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321037, 39.290482, 43.677784>,  <33.366657, 39.452564, 43.506763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321037, 39.290482, 43.677784>,  <33.245007, 39.020344, 43.962818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321037, 39.290482, 43.677784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077651, 0.713202, 0.696644,
		0.978694, -0.187748, 0.083121,
		0.190075, 0.675347, -0.712585,
		33.378059, 39.493084, 43.464008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767361, 39.286366, 44.167656>,  <33.245007, 39.020344, 43.962818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767361, 39.286366, 44.167656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556568, 39.527611, 43.928143>,  <33.430092, 39.672359, 43.784435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556568, 39.527611, 43.928143>,  <33.767361, 39.286366, 44.167656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556568, 39.527611, 43.928143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053549, 0.726718, 0.684845,
		0.848188, 0.328836, -0.415263,
		-0.526981, 0.603114, -0.598786,
		33.398476, 39.708546, 43.748508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008633, 39.851864, 44.398834>,  <33.767361, 39.286366, 44.167656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008633, 39.851864, 44.398834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676685, 39.945869, 44.196415>,  <33.477516, 40.002274, 44.074963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676685, 39.945869, 44.196415>,  <34.008633, 39.851864, 44.398834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676685, 39.945869, 44.196415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272820, 0.620245, 0.735436,
		0.486712, 0.748376, -0.450605,
		-0.829868, 0.235011, -0.506053,
		33.427727, 40.016373, 44.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916615, 40.604298, 44.558464>,  <34.008633, 39.851864, 44.398834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916615, 40.604298, 44.558464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564312, 40.454365, 44.442688>,  <33.352932, 40.364407, 44.373222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564312, 40.454365, 44.442688>,  <33.916615, 40.604298, 44.558464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564312, 40.454365, 44.442688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431127, 0.381717, 0.817571,
		-0.195966, 0.844864, -0.497798,
		-0.880754, -0.374830, -0.289440,
		33.300087, 40.341915, 44.355858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366211, 41.161156, 44.617229>,  <33.916615, 40.604298, 44.558464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366211, 41.161156, 44.617229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119308, 40.846672, 44.629078>,  <32.971169, 40.657982, 44.636189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119308, 40.846672, 44.629078>,  <33.366211, 41.161156, 44.617229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119308, 40.846672, 44.629078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476387, 0.403447, 0.781208,
		-0.626140, 0.468095, -0.623567,
		-0.617256, -0.786205, 0.029620,
		32.934132, 40.610809, 44.637962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701172, 41.385506, 44.772320>,  <33.366211, 41.161156, 44.617229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701172, 41.385506, 44.772320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674637, 40.999771, 44.874817>,  <32.658714, 40.768330, 44.936317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674637, 40.999771, 44.874817>,  <32.701172, 41.385506, 44.772320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674637, 40.999771, 44.874817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676750, 0.232199, 0.698636,
		-0.733218, -0.127067, -0.668016,
		-0.066339, -0.964333, 0.256246,
		32.654736, 40.710472, 44.951691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232113, 41.916393, 45.151237>,  <32.701172, 41.385506, 44.772320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232113, 41.916393, 45.151237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413284, 41.910252, 44.794670>,  <32.521988, 41.906567, 44.580730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413284, 41.910252, 44.794670>,  <32.232113, 41.916393, 45.151237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413284, 41.910252, 44.794670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551237, -0.790654, -0.266466,
		-0.700710, 0.612071, -0.366572,
		0.452928, -0.015353, -0.891415,
		32.549164, 41.905647, 44.527245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777155, 42.440502, 44.680279>,  <32.232113, 41.916393, 45.151237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777155, 42.440502, 44.680279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.642258, 42.763355, 44.486454>,  <31.561319, 42.957066, 44.370159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.642258, 42.763355, 44.486454>,  <31.777155, 42.440502, 44.680279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642258, 42.763355, 44.486454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229103, -0.428880, -0.873827,
		-0.913114, -0.405709, -0.040278,
		-0.337245, 0.807132, -0.484565,
		31.541084, 43.005493, 44.341084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404697, 42.229050, 44.218044>,  <31.777155, 42.440502, 44.680279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404697, 42.229050, 44.218044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.468328, 42.598999, 44.079884>,  <31.506508, 42.820969, 43.996986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.468328, 42.598999, 44.079884>,  <31.404697, 42.229050, 44.218044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468328, 42.598999, 44.079884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021316, -0.346555, -0.937787,
		-0.987036, 0.156543, -0.035415,
		0.159077, 0.924875, -0.345400,
		31.516052, 42.876461, 43.976265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995199, 42.238712, 43.686691>,  <31.404697, 42.229050, 44.218044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995199, 42.238712, 43.686691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.245298, 42.542915, 43.616623>,  <31.395359, 42.725437, 43.574581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.245298, 42.542915, 43.616623>,  <30.995199, 42.238712, 43.686691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245298, 42.542915, 43.616623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026316, -0.203782, -0.978662,
		-0.779981, 0.616518, -0.107401,
		0.625249, 0.760512, -0.175171,
		31.432873, 42.771069, 43.564072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726679, 42.697933, 43.157253>,  <30.995199, 42.238712, 43.686691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726679, 42.697933, 43.157253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124128, 42.742115, 43.166306>,  <31.362598, 42.768623, 43.171738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124128, 42.742115, 43.166306>,  <30.726679, 42.697933, 43.157253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124128, 42.742115, 43.166306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039226, -0.150490, -0.987833,
		-0.105703, 0.982422, -0.153863,
		0.993624, 0.110452, 0.022629,
		31.422216, 42.775249, 43.173096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825459, 43.126389, 42.592133>,  <30.726679, 42.697933, 43.157253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825459, 43.126389, 42.592133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167955, 42.930313, 42.657326>,  <31.373453, 42.812668, 42.696442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167955, 42.930313, 42.657326>,  <30.825459, 43.126389, 42.592133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167955, 42.930313, 42.657326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022697, -0.279510, -0.959874,
		0.516079, 0.825583, -0.228202,
		0.856241, -0.490191, 0.162987,
		31.424828, 42.783257, 42.706223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201424, 43.250530, 42.006107>,  <30.825459, 43.126389, 42.592133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201424, 43.250530, 42.006107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382479, 42.930595, 42.163784>,  <31.491112, 42.738636, 42.258389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382479, 42.930595, 42.163784>,  <31.201424, 43.250530, 42.006107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382479, 42.930595, 42.163784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299499, -0.280016, -0.912081,
		0.839891, 0.530903, 0.112803,
		0.452640, -0.799833, 0.394188,
		31.518270, 42.690647, 42.282040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856777, 43.275433, 41.677917>,  <31.201424, 43.250530, 42.006107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856777, 43.275433, 41.677917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786289, 42.899120, 41.793762>,  <31.743996, 42.673332, 41.863270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786289, 42.899120, 41.793762>,  <31.856777, 43.275433, 41.677917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786289, 42.899120, 41.793762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222594, -0.324685, -0.919256,
		0.958852, -0.097526, 0.266628,
		-0.176222, -0.940781, 0.289616,
		31.733423, 42.616886, 41.880646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315712, 42.891827, 41.287605>,  <31.856777, 43.275433, 41.677917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315712, 42.891827, 41.287605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053856, 42.617531, 41.414860>,  <31.896742, 42.452953, 41.491211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053856, 42.617531, 41.414860>,  <32.315712, 42.891827, 41.287605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053856, 42.617531, 41.414860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118579, -0.508787, -0.852687,
		0.746580, -0.520482, 0.414388,
		-0.654643, -0.685736, 0.318132,
		31.857464, 42.411808, 41.510300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666409, 42.285252, 41.315701>,  <32.315712, 42.891827, 41.287605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666409, 42.285252, 41.315701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.271873, 42.226486, 41.285889>,  <32.035152, 42.191227, 41.268002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.271873, 42.226486, 41.285889>,  <32.666409, 42.285252, 41.315701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271873, 42.226486, 41.285889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141725, -0.526119, -0.838518,
		0.083977, -0.837625, 0.539753,
		-0.986337, -0.146913, -0.074530,
		31.975971, 42.182411, 41.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645058, 41.696415, 40.952553>,  <32.666409, 42.285252, 41.315701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645058, 41.696415, 40.952553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259838, 41.797882, 40.916332>,  <32.028706, 41.858761, 40.894600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259838, 41.797882, 40.916332>,  <32.645058, 41.696415, 40.952553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259838, 41.797882, 40.916332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073259, -0.570212, -0.818225,
		-0.259187, -0.781353, 0.567723,
		-0.963045, 0.253664, -0.090550,
		31.970924, 41.873981, 40.889168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245575, 41.067200, 40.870815>,  <32.645058, 41.696415, 40.952553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245575, 41.067200, 40.870815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045849, 41.373192, 40.708092>,  <31.926014, 41.556786, 40.610458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045849, 41.373192, 40.708092>,  <32.245575, 41.067200, 40.870815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045849, 41.373192, 40.708092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137127, -0.393835, -0.908895,
		-0.855501, -0.509609, 0.091748,
		-0.499314, 0.764979, -0.406807,
		31.896055, 41.602684, 40.586048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706385, 40.853607, 40.510887>,  <32.245575, 41.067200, 40.870815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706385, 40.853607, 40.510887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731901, 41.200897, 40.314068>,  <31.747211, 41.409271, 40.195976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731901, 41.200897, 40.314068>,  <31.706385, 40.853607, 40.510887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731901, 41.200897, 40.314068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121258, -0.482658, -0.867374,
		-0.990569, 0.114996, 0.074490,
		0.063791, 0.868227, -0.492050,
		31.751038, 41.461365, 40.166454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273870, 40.765438, 39.953236>,  <31.706385, 40.853607, 40.510887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273870, 40.765438, 39.953236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506926, 41.074848, 39.853485>,  <31.646759, 41.260494, 39.793636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506926, 41.074848, 39.853485>,  <31.273870, 40.765438, 39.953236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506926, 41.074848, 39.853485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045137, -0.337158, -0.940366,
		-0.811477, 0.536638, -0.231356,
		0.582639, 0.773528, -0.249374,
		31.681717, 41.306908, 39.778671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183353, 40.762451, 39.311523>,  <31.273870, 40.765438, 39.953236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183353, 40.762451, 39.311523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479851, 41.030792, 39.320572>,  <31.657749, 41.191799, 39.326000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479851, 41.030792, 39.320572>,  <31.183353, 40.762451, 39.311523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479851, 41.030792, 39.320572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127507, -0.107643, -0.985979,
		-0.659016, 0.733733, -0.165328,
		0.741242, 0.670857, 0.022617,
		31.702223, 41.232048, 39.327358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158102, 41.137585, 38.679699>,  <31.183353, 40.762451, 39.311523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158102, 41.137585, 38.679699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526384, 41.174458, 38.831387>,  <31.747353, 41.196583, 38.922398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526384, 41.174458, 38.831387>,  <31.158102, 41.137585, 38.679699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526384, 41.174458, 38.831387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388961, -0.295984, -0.872412,
		0.031819, 0.950734, -0.308370,
		0.920704, 0.092185, 0.379217,
		31.802595, 41.202114, 38.945152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959465, 41.743980, 38.308189>,  <31.158102, 41.137585, 38.679699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959465, 41.743980, 38.308189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619415, 41.560871, 38.204090>,  <30.415384, 41.451004, 38.141632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619415, 41.560871, 38.204090>,  <30.959465, 41.743980, 38.308189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619415, 41.560871, 38.204090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413231, 0.273634, 0.868542,
		-0.326383, 0.845912, -0.421790,
		-0.850126, -0.457774, -0.260247,
		30.364378, 41.423538, 38.126015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361992, 42.255539, 38.444664>,  <30.959465, 41.743980, 38.308189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361992, 42.255539, 38.444664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215282, 41.883839, 38.462395>,  <30.127256, 41.660816, 38.473034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215282, 41.883839, 38.462395>,  <30.361992, 42.255539, 38.444664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215282, 41.883839, 38.462395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430960, 0.211937, 0.877130,
		-0.824470, 0.302606, -0.478204,
		-0.366774, -0.929254, 0.044324,
		30.105249, 41.605064, 38.475693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581417, 42.342899, 38.657940>,  <30.361992, 42.255539, 38.444664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581417, 42.342899, 38.657940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.719147, 41.983669, 38.767410>,  <29.801785, 41.768131, 38.833092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.719147, 41.983669, 38.767410>,  <29.581417, 42.342899, 38.657940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719147, 41.983669, 38.767410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439026, 0.103645, 0.892476,
		-0.829878, -0.427450, -0.358592,
		0.344323, -0.898078, 0.273675,
		29.822443, 41.714245, 38.849514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044903, 42.143269, 39.041981>,  <29.581417, 42.342899, 38.657940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044903, 42.143269, 39.041981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333578, 41.886089, 39.144573>,  <29.506783, 41.731781, 39.206127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333578, 41.886089, 39.144573>,  <29.044903, 42.143269, 39.041981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333578, 41.886089, 39.144573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300644, 0.042613, 0.952784,
		-0.623524, -0.764720, -0.162546,
		0.721687, -0.642952, 0.256479,
		29.550083, 41.693203, 39.221516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642578, 41.662189, 39.352745>,  <29.044903, 42.143269, 39.041981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642578, 41.662189, 39.352745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.994808, 41.557068, 39.510490>,  <29.206146, 41.493996, 39.605137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.994808, 41.557068, 39.510490>,  <28.642578, 41.662189, 39.352745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994808, 41.557068, 39.510490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374318, 0.124647, 0.918885,
		-0.290641, -0.956764, 0.011389,
		0.880576, -0.262803, 0.394362,
		29.258982, 41.478226, 39.628799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458361, 41.306450, 39.978489>,  <28.642578, 41.662189, 39.352745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458361, 41.306450, 39.978489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840405, 41.403667, 40.046253>,  <29.069630, 41.461998, 40.086910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840405, 41.403667, 40.046253>,  <28.458361, 41.306450, 39.978489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840405, 41.403667, 40.046253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213689, 0.169099, 0.962155,
		0.205203, -0.955161, 0.213445,
		0.955106, 0.243048, 0.169408,
		29.126936, 41.476582, 40.097076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695145, 41.014252, 40.636250>,  <28.458361, 41.306450, 39.978489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695145, 41.014252, 40.636250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926647, 41.330772, 40.557377>,  <29.065550, 41.520683, 40.510052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926647, 41.330772, 40.557377>,  <28.695145, 41.014252, 40.636250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926647, 41.330772, 40.557377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120830, 0.322330, 0.938884,
		0.806498, -0.519561, 0.282164,
		0.578758, 0.791302, -0.197180,
		29.100275, 41.568165, 40.498222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691441, 40.317326, 40.870461>,  <28.695145, 41.014252, 40.636250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691441, 40.317326, 40.870461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.385738, 40.104237, 41.015854>,  <28.202318, 39.976383, 41.103088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.385738, 40.104237, 41.015854>,  <28.691441, 40.317326, 40.870461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385738, 40.104237, 41.015854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152532, -0.398308, -0.904480,
		0.626618, -0.746695, 0.223151,
		-0.764254, -0.532726, 0.363482,
		28.156462, 39.944420, 41.124897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809271, 39.598515, 40.661674>,  <28.691441, 40.317326, 40.870461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809271, 39.598515, 40.661674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.418915, 39.626583, 40.744343>,  <28.184702, 39.643425, 40.793945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.418915, 39.626583, 40.744343>,  <28.809271, 39.598515, 40.661674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418915, 39.626583, 40.744343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213780, -0.498159, -0.840319,
		0.043991, -0.864242, 0.501150,
		-0.975891, 0.070169, 0.206672,
		28.126148, 39.647633, 40.806343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596655, 38.855759, 40.677635>,  <28.809271, 39.598515, 40.661674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596655, 38.855759, 40.677635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274342, 39.083424, 40.612198>,  <28.080954, 39.220024, 40.572933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274342, 39.083424, 40.612198>,  <28.596655, 38.855759, 40.677635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274342, 39.083424, 40.612198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295844, -0.626180, -0.721370,
		-0.513019, -0.532870, 0.672950,
		-0.805784, 0.569164, -0.163596,
		28.032606, 39.254173, 40.563118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036329, 38.446819, 40.473995>,  <28.596655, 38.855759, 40.677635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036329, 38.446819, 40.473995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.891901, 38.795139, 40.340523>,  <27.805244, 39.004131, 40.260441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.891901, 38.795139, 40.340523>,  <28.036329, 38.446819, 40.473995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891901, 38.795139, 40.340523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350945, -0.458400, -0.816521,
		-0.863984, -0.177716, 0.471115,
		-0.361068, 0.870797, -0.333682,
		27.783581, 39.056377, 40.240417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386379, 38.296455, 40.084171>,  <28.036329, 38.446819, 40.473995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386379, 38.296455, 40.084171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.522490, 38.650402, 39.956913>,  <27.604156, 38.862770, 39.880558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.522490, 38.650402, 39.956913>,  <27.386379, 38.296455, 40.084171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522490, 38.650402, 39.956913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112126, -0.297736, -0.948040,
		-0.933616, 0.358268, -0.002096,
		0.340276, 0.884871, -0.318143,
		27.624573, 38.915863, 39.861469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899233, 38.361794, 39.592255>,  <27.386379, 38.296455, 40.084171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899233, 38.361794, 39.592255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.206814, 38.610226, 39.531639>,  <27.391363, 38.759285, 39.495270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.206814, 38.610226, 39.531639>,  <26.899233, 38.361794, 39.592255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206814, 38.610226, 39.531639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020753, -0.261166, -0.965071,
		-0.638968, 0.738950, -0.213714,
		0.768954, 0.621084, -0.151541,
		27.437500, 38.796551, 39.486176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758619, 38.868637, 38.995979>,  <26.899233, 38.361794, 39.592255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758619, 38.868637, 38.995979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.156103, 38.854092, 39.038342>,  <27.394594, 38.845364, 39.063759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.156103, 38.854092, 39.038342>,  <26.758619, 38.868637, 38.995979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156103, 38.854092, 39.038342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084958, -0.371213, -0.924653,
		0.072941, 0.927835, -0.365788,
		0.993711, -0.036368, 0.105904,
		27.454216, 38.843182, 39.070114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.086853, 38.120155, 46.461761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.340824, 38.325039, 46.230419>,  <32.493206, 38.447971, 46.091614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.340824, 38.325039, 46.230419>,  <32.086853, 38.120155, 46.461761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340824, 38.325039, 46.230419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235727, -0.584477, -0.776414,
		-0.735726, 0.629306, -0.250361,
		0.634932, 0.512212, -0.578360,
		32.531303, 38.478703, 46.056911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781885, 38.038078, 45.845299>,  <32.086853, 38.120155, 46.461761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781885, 38.038078, 45.845299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153831, 38.141136, 45.740253>,  <32.376999, 38.202972, 45.677227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153831, 38.141136, 45.740253>,  <31.781885, 38.038078, 45.845299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153831, 38.141136, 45.740253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088844, -0.535436, -0.839890,
		-0.357010, 0.804317, -0.474994,
		0.929866, 0.257648, -0.262615,
		32.432793, 38.218430, 45.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784060, 38.113365, 45.143635>,  <31.781885, 38.038078, 45.845299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784060, 38.113365, 45.143635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.170490, 38.049461, 45.224800>,  <32.402348, 38.011120, 45.273499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.170490, 38.049461, 45.224800>,  <31.784060, 38.113365, 45.143635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170490, 38.049461, 45.224800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050537, -0.653553, -0.755191,
		0.253266, 0.739827, -0.623308,
		0.966076, -0.159764, 0.202912,
		32.460312, 38.001534, 45.285675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012108, 38.199879, 44.564175>,  <31.784060, 38.113365, 45.143635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012108, 38.199879, 44.564175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269176, 37.969650, 44.766438>,  <32.423420, 37.831512, 44.887794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269176, 37.969650, 44.766438>,  <32.012108, 38.199879, 44.564175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269176, 37.969650, 44.766438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026905, -0.676556, -0.735900,
		0.765667, 0.459339, -0.450291,
		0.642674, -0.575569, 0.505658,
		32.461979, 37.796978, 44.918137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422413, 37.809872, 44.040924>,  <32.012108, 38.199879, 44.564175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422413, 37.809872, 44.040924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520004, 37.609070, 44.372818>,  <32.578560, 37.488590, 44.571957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520004, 37.609070, 44.372818>,  <32.422413, 37.809872, 44.040924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520004, 37.609070, 44.372818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252396, -0.793238, -0.554138,
		0.936359, 0.344622, -0.066832,
		0.243982, -0.502004, 0.829738,
		32.593201, 37.458469, 44.621738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081135, 37.507629, 43.806362>,  <32.422413, 37.809872, 44.040924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081135, 37.507629, 43.806362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927200, 37.304249, 44.114487>,  <32.834839, 37.182220, 44.299362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927200, 37.304249, 44.114487>,  <33.081135, 37.507629, 43.806362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927200, 37.304249, 44.114487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299772, -0.858194, -0.416701,
		0.872947, 0.070554, 0.482687,
		-0.384839, -0.508454, 0.770307,
		32.811749, 37.151714, 44.345577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523857, 37.006237, 44.016407>,  <33.081135, 37.507629, 43.806362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523857, 37.006237, 44.016407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190716, 36.855907, 44.178944>,  <32.990833, 36.765709, 44.276466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190716, 36.855907, 44.178944>,  <33.523857, 37.006237, 44.016407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190716, 36.855907, 44.178944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224286, -0.900314, -0.373002,
		0.506020, -0.219518, 0.834120,
		-0.832850, -0.375828, 0.406342,
		32.940861, 36.743160, 44.300846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701004, 36.301460, 44.459957>,  <33.523857, 37.006237, 44.016407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701004, 36.301460, 44.459957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.316933, 36.301632, 44.348206>,  <33.086491, 36.301735, 44.281155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.316933, 36.301632, 44.348206>,  <33.701004, 36.301460, 44.459957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316933, 36.301632, 44.348206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193165, -0.721450, -0.664979,
		-0.201841, -0.692466, 0.692641,
		-0.960181, 0.000427, -0.279378,
		33.028877, 36.301762, 44.264393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412182, 35.581905, 44.402275>,  <33.701004, 36.301460, 44.459957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412182, 35.581905, 44.402275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.145966, 35.778301, 44.177425>,  <32.986237, 35.896141, 44.042515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.145966, 35.778301, 44.177425>,  <33.412182, 35.581905, 44.402275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145966, 35.778301, 44.177425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119140, -0.813384, -0.569397,
		-0.736793, -0.311985, 0.599835,
		-0.665539, 0.490992, -0.562125,
		32.946304, 35.925598, 44.008789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721287, 35.191143, 44.382687>,  <33.412182, 35.581905, 44.402275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721287, 35.191143, 44.382687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.762100, 35.424774, 44.060581>,  <32.786591, 35.564953, 43.867317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.762100, 35.424774, 44.060581>,  <32.721287, 35.191143, 44.382687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762100, 35.424774, 44.060581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028906, -0.810886, -0.584490,
		-0.994361, 0.036362, -0.099622,
		0.102035, 0.584074, -0.805262,
		32.792709, 35.599995, 43.819004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304058, 34.846764, 43.851711>,  <32.721287, 35.191143, 44.382687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304058, 34.846764, 43.851711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.569351, 35.079010, 43.662819>,  <32.728527, 35.218357, 43.549484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.569351, 35.079010, 43.662819>,  <32.304058, 34.846764, 43.851711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569351, 35.079010, 43.662819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227596, -0.757567, -0.611794,
		-0.712967, 0.298284, -0.634590,
		0.663233, 0.580619, -0.472232,
		32.768322, 35.253197, 43.521149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228001, 34.619995, 43.180481>,  <32.304058, 34.846764, 43.851711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228001, 34.619995, 43.180481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582352, 34.805557, 43.182217>,  <32.794960, 34.916893, 43.183258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582352, 34.805557, 43.182217>,  <32.228001, 34.619995, 43.180481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582352, 34.805557, 43.182217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337414, -0.637851, -0.692313,
		-0.318396, 0.614769, -0.721584,
		0.885876, 0.463902, 0.004342,
		32.848114, 34.944729, 43.183517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586077, 34.817043, 42.944191>,  <32.228001, 34.619995, 43.180481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586077, 34.817043, 42.944191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.303513, 34.819870, 42.661083>,  <31.133974, 34.821568, 42.491219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.303513, 34.819870, 42.661083>,  <31.586077, 34.817043, 42.944191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303513, 34.819870, 42.661083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481222, 0.728490, 0.487573,
		0.519049, 0.685020, -0.511211,
		-0.706409, 0.007068, -0.707768,
		31.091589, 34.821991, 42.448753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611410, 35.433475, 42.774719>,  <31.586077, 34.817043, 42.944191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611410, 35.433475, 42.774719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256083, 35.266308, 42.698578>,  <31.042887, 35.166008, 42.652893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256083, 35.266308, 42.698578>,  <31.611410, 35.433475, 42.774719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256083, 35.266308, 42.698578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447156, 0.692731, 0.565841,
		-0.104610, 0.587766, -0.802240,
		-0.888318, -0.417918, -0.190356,
		30.989588, 35.140934, 42.641472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123625, 36.032043, 42.466728>,  <31.611410, 35.433475, 42.774719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123625, 36.032043, 42.466728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887316, 35.748848, 42.621513>,  <30.745531, 35.578930, 42.714382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887316, 35.748848, 42.621513>,  <31.123625, 36.032043, 42.466728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887316, 35.748848, 42.621513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577411, 0.705971, 0.410125,
		-0.563547, 0.018855, -0.825869,
		-0.590772, -0.707990, 0.386961,
		30.710085, 35.536449, 42.737602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421904, 36.191383, 42.289326>,  <31.123625, 36.032043, 42.466728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421904, 36.191383, 42.289326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.393333, 35.945999, 42.603920>,  <30.376190, 35.798767, 42.792675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.393333, 35.945999, 42.603920>,  <30.421904, 36.191383, 42.289326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393333, 35.945999, 42.603920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697191, 0.594598, 0.400472,
		-0.713319, -0.519726, -0.470172,
		-0.071428, -0.613464, 0.786486,
		30.371904, 35.761959, 42.839867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674061, 36.289169, 42.495453>,  <30.421904, 36.191383, 42.289326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674061, 36.289169, 42.495453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883928, 36.126476, 42.794598>,  <30.009850, 36.028862, 42.974083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883928, 36.126476, 42.794598>,  <29.674061, 36.289169, 42.495453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883928, 36.126476, 42.794598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477913, 0.586265, 0.654135,
		-0.704501, -0.700615, 0.113212,
		0.524669, -0.406733, 0.747857,
		30.041328, 36.004456, 43.018955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161882, 36.053696, 42.907402>,  <29.674061, 36.289169, 42.495453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161882, 36.053696, 42.907402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.496151, 36.116367, 43.117966>,  <29.696712, 36.153969, 43.244305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.496151, 36.116367, 43.117966>,  <29.161882, 36.053696, 42.907402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496151, 36.116367, 43.117966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497716, 0.621302, 0.605196,
		-0.232238, -0.767747, 0.597185,
		0.835670, 0.156679, 0.526410,
		29.746853, 36.163372, 43.275890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977467, 35.912178, 43.699932>,  <29.161882, 36.053696, 42.907402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977467, 35.912178, 43.699932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.319307, 36.119888, 43.701065>,  <29.524412, 36.244514, 43.701744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.319307, 36.119888, 43.701065>,  <28.977467, 35.912178, 43.699932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319307, 36.119888, 43.701065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373916, 0.611570, 0.697259,
		0.360338, -0.596938, 0.716814,
		0.854601, 0.519276, 0.002833,
		29.575687, 36.275673, 43.701916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987984, 36.285633, 44.321476>,  <28.977467, 35.912178, 43.699932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987984, 36.285633, 44.321476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.283003, 36.474392, 44.128258>,  <29.460014, 36.587646, 44.012329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.283003, 36.474392, 44.128258>,  <28.987984, 36.285633, 44.321476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283003, 36.474392, 44.128258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142934, 0.808194, 0.571307,
		0.659992, -0.352324, 0.663534,
		0.737550, 0.471900, -0.483042,
		29.504267, 36.615963, 43.983345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398525, 36.454578, 44.849220>,  <28.987984, 36.285633, 44.321476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398525, 36.454578, 44.849220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.461060, 36.695641, 44.536205>,  <29.498581, 36.840279, 44.348396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.461060, 36.695641, 44.536205>,  <29.398525, 36.454578, 44.849220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461060, 36.695641, 44.536205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224835, 0.793195, 0.565942,
		0.961774, 0.087465, 0.259503,
		0.156336, 0.602653, -0.782539,
		29.507961, 36.876438, 44.301445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677444, 37.041443, 45.152031>,  <29.398525, 36.454578, 44.849220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677444, 37.041443, 45.152031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.594860, 37.195900, 44.792416>,  <29.545309, 37.288574, 44.576645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.594860, 37.195900, 44.792416>,  <29.677444, 37.041443, 45.152031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594860, 37.195900, 44.792416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010697, 0.919669, 0.392549,
		0.978397, 0.071428, -0.194005,
		-0.206460, 0.386144, -0.899037,
		29.532923, 37.311745, 44.522705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099646, 37.655369, 45.125397>,  <29.677444, 37.041443, 45.152031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099646, 37.655369, 45.125397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.790686, 37.677761, 44.872330>,  <29.605310, 37.691196, 44.720490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.790686, 37.677761, 44.872330>,  <30.099646, 37.655369, 45.125397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790686, 37.677761, 44.872330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225489, 0.907050, 0.355548,
		0.593764, 0.417284, -0.687981,
		-0.772398, 0.055980, -0.632667,
		29.558966, 37.694553, 44.682529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075068, 38.263626, 44.810200>,  <30.099646, 37.655369, 45.125397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075068, 38.263626, 44.810200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687292, 38.166660, 44.795120>,  <29.454626, 38.108482, 44.786072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687292, 38.166660, 44.795120>,  <30.075068, 38.263626, 44.810200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687292, 38.166660, 44.795120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241059, 0.912730, 0.329870,
		-0.045551, 0.328878, -0.943273,
		-0.969441, -0.242411, -0.037703,
		29.396460, 38.093937, 44.783810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716816, 38.874710, 44.477055>,  <30.075068, 38.263626, 44.810200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716816, 38.874710, 44.477055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.432076, 38.685226, 44.684464>,  <29.261232, 38.571537, 44.808910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.432076, 38.685226, 44.684464>,  <29.716816, 38.874710, 44.477055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432076, 38.685226, 44.684464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275344, 0.867418, 0.414453,
		-0.646107, 0.152256, -0.747906,
		-0.711850, -0.473713, 0.518523,
		29.218521, 38.543114, 44.840019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247723, 39.461712, 44.454636>,  <29.716816, 38.874710, 44.477055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247723, 39.461712, 44.454636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.110596, 39.213425, 44.736683>,  <29.028318, 39.064453, 44.905910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.110596, 39.213425, 44.736683>,  <29.247723, 39.461712, 44.454636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110596, 39.213425, 44.736683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139504, 0.775917, 0.615217,
		-0.928986, 0.112542, -0.352590,
		-0.342818, -0.620715, 0.705116,
		29.007750, 39.027210, 44.948219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009626, 39.723179, 43.803848>,  <29.247723, 39.461712, 44.454636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009626, 39.723179, 43.803848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.777895, 40.045063, 43.855728>,  <28.638857, 40.238194, 43.886856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.777895, 40.045063, 43.855728>,  <29.009626, 39.723179, 43.803848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777895, 40.045063, 43.855728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395593, -0.138464, -0.907928,
		-0.712661, -0.577295, 0.398554,
		-0.579328, 0.804710, 0.129696,
		28.604097, 40.286476, 43.894638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235409, 39.584480, 43.831894>,  <29.009626, 39.723179, 43.803848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235409, 39.584480, 43.831894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.335556, 39.939774, 43.677826>,  <28.395643, 40.152950, 43.585384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.335556, 39.939774, 43.677826>,  <28.235409, 39.584480, 43.831894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335556, 39.939774, 43.677826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563846, -0.189631, -0.803814,
		-0.787016, 0.418425, 0.453350,
		0.250367, 0.888234, -0.385170,
		28.410666, 40.206245, 43.562275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611351, 39.755699, 43.403103>,  <28.235409, 39.584480, 43.831894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611351, 39.755699, 43.403103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.906471, 39.995770, 43.279530>,  <28.083544, 40.139812, 43.205387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.906471, 39.995770, 43.279530>,  <27.611351, 39.755699, 43.403103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906471, 39.995770, 43.279530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387436, 0.001747, -0.921895,
		-0.552758, 0.799868, 0.233818,
		0.737802, 0.600174, -0.308932,
		28.127811, 40.175823, 43.186852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304590, 40.325119, 42.970528>,  <27.611351, 39.755699, 43.403103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304590, 40.325119, 42.970528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.683470, 40.266785, 42.856304>,  <27.910797, 40.231785, 42.787769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.683470, 40.266785, 42.856304>,  <27.304590, 40.325119, 42.970528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683470, 40.266785, 42.856304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284029, 0.031672, -0.958292,
		0.148797, 0.988802, -0.011422,
		0.947199, -0.145835, -0.285562,
		27.967630, 40.223034, 42.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277176, 40.684021, 42.297119>,  <27.304590, 40.325119, 42.970528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277176, 40.684021, 42.297119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.618256, 40.475075, 42.294857>,  <27.822905, 40.349705, 42.293499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.618256, 40.475075, 42.294857>,  <27.277176, 40.684021, 42.297119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618256, 40.475075, 42.294857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046881, -0.065733, -0.996735,
		0.520291, 0.850183, -0.080540,
		0.852702, -0.522368, -0.005657,
		27.874065, 40.318363, 42.293159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678679, 40.899132, 41.737286>,  <27.277176, 40.684021, 42.297119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678679, 40.899132, 41.737286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.879393, 40.563309, 41.820568>,  <27.999821, 40.361813, 41.870537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.879393, 40.563309, 41.820568>,  <27.678679, 40.899132, 41.737286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879393, 40.563309, 41.820568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046710, -0.266649, -0.962661,
		0.863729, 0.473326, -0.173017,
		0.501787, -0.839560, 0.208204,
		28.029928, 40.311440, 41.883030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317471, 40.858517, 41.362103>,  <27.678679, 40.899132, 41.737286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317471, 40.858517, 41.362103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.203096, 40.481716, 41.432396>,  <28.134472, 40.255638, 41.474571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.203096, 40.481716, 41.432396>,  <28.317471, 40.858517, 41.362103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203096, 40.481716, 41.432396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120065, -0.217166, -0.968722,
		0.950697, -0.255892, 0.175196,
		-0.285935, -0.941997, 0.175736,
		28.117315, 40.199116, 41.485115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082083, 41.005695, 41.361603>,  <28.317471, 40.858517, 41.362103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082083, 41.005695, 41.361603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.134663, 41.358753, 41.181087>,  <29.166210, 41.570587, 41.072777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.134663, 41.358753, 41.181087>,  <29.082083, 41.005695, 41.361603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134663, 41.358753, 41.181087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081880, 0.444015, 0.892270,
		0.987935, -0.154242, -0.013904,
		0.131452, 0.882644, -0.451288,
		29.174099, 41.623547, 41.045700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714279, 41.333195, 41.553223>,  <29.082083, 41.005695, 41.361603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714279, 41.333195, 41.553223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.463961, 41.627323, 41.449154>,  <29.313770, 41.803799, 41.386715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.463961, 41.627323, 41.449154>,  <29.714279, 41.333195, 41.553223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463961, 41.627323, 41.449154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101634, 0.407584, 0.907494,
		0.773337, 0.541465, -0.329798,
		-0.625796, 0.735317, -0.260168,
		29.276222, 41.847919, 41.371105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003231, 41.881897, 41.868198>,  <29.714279, 41.333195, 41.553223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003231, 41.881897, 41.868198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650932, 42.052750, 41.786373>,  <29.439554, 42.155262, 41.737278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650932, 42.052750, 41.786373>,  <30.003231, 41.881897, 41.868198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650932, 42.052750, 41.786373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153274, 0.665775, 0.730241,
		0.448100, 0.611803, -0.651847,
		-0.880746, 0.427132, -0.204560,
		29.386709, 42.180889, 41.725006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087595, 42.579796, 41.901741>,  <30.003231, 41.881897, 41.868198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087595, 42.579796, 41.901741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.688227, 42.560398, 41.913071>,  <29.448605, 42.548759, 41.919868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.688227, 42.560398, 41.913071>,  <30.087595, 42.579796, 41.901741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688227, 42.560398, 41.913071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018460, 0.759715, 0.649994,
		-0.053040, 0.648446, -0.759411,
		-0.998422, -0.048494, 0.028325,
		29.388700, 42.545849, 41.921570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770567, 43.251328, 41.882065>,  <30.087595, 42.579796, 41.901741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770567, 43.251328, 41.882065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.467348, 43.044514, 42.041080>,  <29.285418, 42.920425, 42.136490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.467348, 43.044514, 42.041080>,  <29.770567, 43.251328, 41.882065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467348, 43.044514, 42.041080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017819, 0.625734, 0.779833,
		-0.651956, 0.584067, -0.483549,
		-0.758048, -0.517033, 0.397543,
		29.239933, 42.889404, 42.160343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355433, 43.796089, 42.191376>,  <29.770567, 43.251328, 41.882065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355433, 43.796089, 42.191376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.248207, 43.461304, 42.382217>,  <29.183872, 43.260433, 42.496723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.248207, 43.461304, 42.382217>,  <29.355433, 43.796089, 42.191376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248207, 43.461304, 42.382217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086848, 0.514207, 0.853257,
		-0.959479, 0.187290, -0.210528,
		-0.268061, -0.836967, 0.477106,
		29.167789, 43.210213, 42.525349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699137, 43.994881, 42.597851>,  <29.355433, 43.796089, 42.191376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699137, 43.994881, 42.597851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.880236, 43.685287, 42.774925>,  <28.988895, 43.499531, 42.881172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.880236, 43.685287, 42.774925>,  <28.699137, 43.994881, 42.597851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880236, 43.685287, 42.774925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148971, 0.423850, 0.893397,
		-0.879106, -0.470431, 0.076597,
		0.452747, -0.773980, 0.442690,
		29.016060, 43.453094, 42.907734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265242, 43.792355, 43.217106>,  <28.699137, 43.994881, 42.597851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265242, 43.792355, 43.217106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.637081, 43.660366, 43.282791>,  <28.860186, 43.581173, 43.322201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.637081, 43.660366, 43.282791>,  <28.265242, 43.792355, 43.217106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637081, 43.660366, 43.282791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000320, 0.444815, 0.895623,
		-0.368570, -0.832623, 0.413394,
		0.929600, -0.329967, 0.164212,
		28.915960, 43.561375, 43.332054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255447, 43.580898, 43.918812>,  <28.265242, 43.792355, 43.217106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255447, 43.580898, 43.918812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.644978, 43.605946, 43.831413>,  <28.878696, 43.620972, 43.778973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.644978, 43.605946, 43.831413>,  <28.255447, 43.580898, 43.918812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644978, 43.605946, 43.831413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139833, 0.592817, 0.793105,
		0.179189, -0.802900, 0.568545,
		0.973826, 0.062614, -0.218498,
		28.937126, 43.624729, 43.765865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.749870, 33.984665, 32.189877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949245, 34.302452, 32.328659>,  <34.068871, 34.493126, 32.411930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949245, 34.302452, 32.328659>,  <33.749870, 33.984665, 32.189877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949245, 34.302452, 32.328659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849835, 0.526849, 0.014490,
		-0.171281, -0.302078, 0.937769,
		0.498440, 0.794467, 0.346956,
		34.098778, 34.540791, 32.432747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593468, 34.153923, 32.992611>,  <33.749870, 33.984665, 32.189877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593468, 34.153923, 32.992611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700211, 34.496510, 32.815861>,  <33.764256, 34.702061, 32.709812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700211, 34.496510, 32.815861>,  <33.593468, 34.153923, 32.992611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700211, 34.496510, 32.815861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858525, 0.419577, 0.294774,
		0.437864, 0.300700, 0.847263,
		0.266853, 0.856466, -0.441876,
		33.780266, 34.753448, 32.683300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178902, 34.680229, 33.283375>,  <33.593468, 34.153923, 32.992611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178902, 34.680229, 33.283375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321785, 34.856525, 32.953976>,  <33.407516, 34.962303, 32.756336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321785, 34.856525, 32.953976>,  <33.178902, 34.680229, 33.283375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321785, 34.856525, 32.953976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725712, 0.686004, 0.052359,
		0.588000, 0.578920, 0.564896,
		0.357209, 0.440738, -0.823500,
		33.428947, 34.988747, 32.706924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151962, 35.335678, 33.427559>,  <33.178902, 34.680229, 33.283375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151962, 35.335678, 33.427559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192177, 35.385056, 33.032661>,  <33.216305, 35.414680, 32.795723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192177, 35.385056, 33.032661>,  <33.151962, 35.335678, 33.427559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192177, 35.385056, 33.032661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569950, 0.820471, 0.044547,
		0.815505, 0.558202, 0.152843,
		0.100537, 0.123441, -0.987246,
		33.222340, 35.422089, 32.736488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481770, 35.927971, 33.303696>,  <33.151962, 35.335678, 33.427559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481770, 35.927971, 33.303696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279137, 35.853859, 32.966877>,  <33.157558, 35.809391, 32.764786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279137, 35.853859, 32.966877>,  <33.481770, 35.927971, 33.303696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279137, 35.853859, 32.966877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460013, 0.884098, 0.082214,
		0.729221, 0.429001, -0.533099,
		-0.506582, -0.185280, -0.842049,
		33.127163, 35.798275, 32.714264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439949, 36.619686, 32.896343>,  <33.481770, 35.927971, 33.303696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439949, 36.619686, 32.896343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146576, 36.385998, 32.757343>,  <32.970551, 36.245785, 32.673943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146576, 36.385998, 32.757343>,  <33.439949, 36.619686, 32.896343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146576, 36.385998, 32.757343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671506, 0.702121, 0.236868,
		0.105605, 0.407077, -0.907268,
		-0.733436, -0.584221, -0.347502,
		32.926544, 36.210732, 32.653091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027897, 37.087936, 32.556461>,  <33.439949, 36.619686, 32.896343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027897, 37.087936, 32.556461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791523, 36.767277, 32.592571>,  <32.649700, 36.574879, 32.614235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791523, 36.767277, 32.592571>,  <33.027897, 37.087936, 32.556461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791523, 36.767277, 32.592571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792350, 0.597789, 0.121780,
		-0.151589, 0.000436, -0.988443,
		-0.590934, -0.801653, 0.090273,
		32.614243, 36.526779, 32.619652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477119, 37.244637, 32.192646>,  <33.027897, 37.087936, 32.556461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477119, 37.244637, 32.192646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348904, 36.972183, 32.455952>,  <32.271973, 36.808712, 32.613934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348904, 36.972183, 32.455952>,  <32.477119, 37.244637, 32.192646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348904, 36.972183, 32.455952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749507, 0.607317, 0.263448,
		-0.579218, -0.408927, -0.705184,
		-0.320539, -0.681135, 0.658262,
		32.252743, 36.767841, 32.653431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716455, 37.270702, 32.097729>,  <32.477119, 37.244637, 32.192646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716455, 37.270702, 32.097729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785288, 37.086117, 32.445854>,  <31.826588, 36.975365, 32.654728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785288, 37.086117, 32.445854>,  <31.716455, 37.270702, 32.097729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785288, 37.086117, 32.445854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687500, 0.576481, 0.441603,
		-0.705501, -0.674329, -0.218055,
		0.172081, -0.461465, 0.870310,
		31.836912, 36.947678, 32.706947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994781, 37.078537, 32.381794>,  <31.716455, 37.270702, 32.097729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994781, 37.078537, 32.381794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253662, 37.108994, 32.685196>,  <31.408991, 37.127266, 32.867237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253662, 37.108994, 32.685196>,  <30.994781, 37.078537, 32.381794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253662, 37.108994, 32.685196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656867, 0.560632, 0.504201,
		-0.386855, -0.824558, 0.412854,
		0.647202, 0.076137, 0.758507,
		31.447823, 37.131836, 32.912746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669893, 36.975143, 33.014229>,  <30.994781, 37.078537, 32.381794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669893, 36.975143, 33.014229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002357, 37.157455, 33.141624>,  <31.201836, 37.266842, 33.218060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002357, 37.157455, 33.141624>,  <30.669893, 36.975143, 33.014229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002357, 37.157455, 33.141624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547870, 0.573526, 0.609021,
		0.094920, -0.680683, 0.726402,
		0.831161, 0.455782, 0.318487,
		31.251705, 37.294189, 33.237171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631187, 36.986000, 33.703815>,  <30.669893, 36.975143, 33.014229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631187, 36.986000, 33.703815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872145, 37.291142, 33.609863>,  <31.016720, 37.474228, 33.553490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872145, 37.291142, 33.609863>,  <30.631187, 36.986000, 33.703815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872145, 37.291142, 33.609863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436537, 0.561225, 0.703181,
		0.668250, -0.321056, 0.671093,
		0.602394, 0.762857, -0.234886,
		31.052864, 37.519997, 33.539398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638191, 36.457642, 34.250084>,  <30.631187, 36.986000, 33.703815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638191, 36.457642, 34.250084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269939, 36.302731, 34.230259>,  <30.048988, 36.209785, 34.218365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269939, 36.302731, 34.230259>,  <30.638191, 36.457642, 34.250084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269939, 36.302731, 34.230259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319053, -0.673068, -0.667222,
		0.225044, -0.630076, 0.743209,
		-0.920630, -0.387278, -0.049558,
		29.993750, 36.186546, 34.215393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685524, 35.788383, 34.452061>,  <30.638191, 36.457642, 34.250084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685524, 35.788383, 34.452061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361843, 35.828972, 34.220577>,  <30.167635, 35.853325, 34.081688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361843, 35.828972, 34.220577>,  <30.685524, 35.788383, 34.452061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361843, 35.828972, 34.220577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355831, -0.699149, -0.620141,
		-0.467525, -0.707739, 0.529646,
		-0.809200, 0.101468, -0.578705,
		30.119083, 35.859413, 34.046967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462532, 35.093948, 34.342697>,  <30.685524, 35.788383, 34.452061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462532, 35.093948, 34.342697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311562, 35.309341, 34.041344>,  <30.220980, 35.438576, 33.860531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311562, 35.309341, 34.041344>,  <30.462532, 35.093948, 34.342697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311562, 35.309341, 34.041344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276909, -0.710702, -0.646702,
		-0.883668, -0.452702, 0.119128,
		-0.377428, 0.538483, -0.753382,
		30.198334, 35.470886, 33.815331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963747, 34.663368, 34.053452>,  <30.462532, 35.093948, 34.342697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963747, 34.663368, 34.053452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028030, 34.942757, 33.774509>,  <30.066601, 35.110390, 33.607143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028030, 34.942757, 33.774509>,  <29.963747, 34.663368, 34.053452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028030, 34.942757, 33.774509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116685, -0.715033, -0.689284,
		-0.980080, 0.029404, -0.196414,
		0.160710, 0.698472, -0.697358,
		30.076244, 35.152298, 33.565304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424231, 34.482292, 33.472534>,  <29.963747, 34.663368, 34.053452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424231, 34.482292, 33.472534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737429, 34.696026, 33.345154>,  <29.925346, 34.824265, 33.268726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737429, 34.696026, 33.345154>,  <29.424231, 34.482292, 33.472534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737429, 34.696026, 33.345154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125743, -0.637351, -0.760245,
		-0.609188, 0.555223, -0.566231,
		0.782993, 0.534332, -0.318451,
		29.972326, 34.856327, 33.249619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383047, 34.507225, 32.762352>,  <29.424231, 34.482292, 33.472534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383047, 34.507225, 32.762352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771713, 34.591274, 32.805645>,  <30.004913, 34.641705, 32.831619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771713, 34.591274, 32.805645>,  <29.383047, 34.507225, 32.762352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771713, 34.591274, 32.805645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218327, -0.622505, -0.751546,
		-0.090539, 0.753882, -0.650742,
		0.971667, 0.210119, 0.108231,
		30.063213, 34.654308, 32.838116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590414, 34.673576, 32.085369>,  <29.383047, 34.507225, 32.762352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590414, 34.673576, 32.085369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927864, 34.586025, 32.281490>,  <30.130333, 34.533497, 32.399162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927864, 34.586025, 32.281490>,  <29.590414, 34.673576, 32.085369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927864, 34.586025, 32.281490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289214, -0.584126, -0.758388,
		0.452388, 0.781595, -0.429481,
		0.843623, -0.218873, 0.490300,
		30.180950, 34.520363, 32.428581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095331, 34.545506, 31.551279>,  <29.590414, 34.673576, 32.085369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095331, 34.545506, 31.551279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276094, 34.377632, 31.866148>,  <30.384552, 34.276909, 32.055069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276094, 34.377632, 31.866148>,  <30.095331, 34.545506, 31.551279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276094, 34.377632, 31.866148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441786, -0.661314, -0.606209,
		0.774986, 0.621714, -0.113442,
		0.451909, -0.419686, 0.787173,
		30.411667, 34.251728, 32.102299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815748, 34.413017, 31.380575>,  <30.095331, 34.545506, 31.551279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815748, 34.413017, 31.380575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722183, 34.157860, 31.674072>,  <30.666044, 34.004765, 31.850170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722183, 34.157860, 31.674072>,  <30.815748, 34.413017, 31.380575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722183, 34.157860, 31.674072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450803, -0.739813, -0.499452,
		0.861430, 0.213945, 0.460615,
		-0.233914, -0.637890, 0.733745,
		30.652010, 33.966492, 31.894196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415218, 34.031570, 31.419807>,  <30.815748, 34.413017, 31.380575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415218, 34.031570, 31.419807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128922, 33.816315, 31.597853>,  <30.957144, 33.687160, 31.704679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128922, 33.816315, 31.597853>,  <31.415218, 34.031570, 31.419807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128922, 33.816315, 31.597853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315769, -0.817862, -0.481032,
		0.622900, -0.203742, 0.755304,
		-0.715741, -0.538137, 0.445111,
		30.914200, 33.654873, 31.731386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745853, 33.439213, 31.670961>,  <31.415218, 34.031570, 31.419807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745853, 33.439213, 31.670961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365971, 33.325645, 31.618130>,  <31.138041, 33.257504, 31.586432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365971, 33.325645, 31.618130>,  <31.745853, 33.439213, 31.670961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365971, 33.325645, 31.618130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311673, -0.897786, -0.311191,
		-0.030224, -0.336706, 0.941125,
		-0.949709, -0.283918, -0.132077,
		31.081059, 33.240471, 31.578506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722479, 32.786781, 31.834045>,  <31.745853, 33.439213, 31.670961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722479, 32.786781, 31.834045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388124, 32.818008, 31.616716>,  <31.187511, 32.836742, 31.486319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388124, 32.818008, 31.616716>,  <31.722479, 32.786781, 31.834045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388124, 32.818008, 31.616716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179572, -0.896477, -0.405072,
		-0.518698, -0.436159, 0.735335,
		-0.835886, 0.078065, -0.543323,
		31.137358, 32.841427, 31.453720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308678, 32.159275, 31.900990>,  <31.722479, 32.786781, 31.834045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308678, 32.159275, 31.900990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212709, 32.342014, 31.558359>,  <31.155128, 32.451660, 31.352781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212709, 32.342014, 31.558359>,  <31.308678, 32.159275, 31.900990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212709, 32.342014, 31.558359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318103, -0.796638, -0.513982,
		-0.917196, -0.395795, 0.045803,
		-0.239920, 0.456852, -0.856577,
		31.140734, 32.479069, 31.301386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685873, 31.689056, 31.728163>,  <31.308678, 32.159275, 31.900990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685873, 31.689056, 31.728163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471758, 31.774191, 31.401197>,  <30.343288, 31.825272, 31.205017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471758, 31.774191, 31.401197>,  <30.685873, 31.689056, 31.728163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471758, 31.774191, 31.401197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508838, -0.853684, 0.110934,
		-0.674204, 0.475314, 0.565266,
		-0.535287, 0.212837, -0.817415,
		30.311172, 31.838041, 31.155973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915398, 31.768219, 31.714531>,  <30.685873, 31.689056, 31.728163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915398, 31.768219, 31.714531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018579, 31.619432, 31.357857>,  <30.080488, 31.530161, 31.143852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018579, 31.619432, 31.357857>,  <29.915398, 31.768219, 31.714531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018579, 31.619432, 31.357857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525314, -0.828576, 0.193670,
		-0.810866, 0.418455, -0.409135,
		0.257957, -0.371965, -0.891683,
		30.095966, 31.507843, 31.090351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219688, 31.448120, 32.307041>,  <29.915398, 31.768219, 31.714531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219688, 31.448120, 32.307041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567616, 31.251694, 32.287971>,  <30.776371, 31.133839, 32.276531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567616, 31.251694, 32.287971>,  <30.219688, 31.448120, 32.307041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567616, 31.251694, 32.287971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000232, 0.097035, -0.995281,
		0.493373, 0.865702, 0.084517,
		0.869818, -0.491064, -0.047674,
		30.828562, 31.104374, 32.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698458, 31.848196, 32.569061>,  <30.219688, 31.448120, 32.307041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698458, 31.848196, 32.569061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064388, 31.741686, 32.690510>,  <30.283947, 31.677780, 32.763378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064388, 31.741686, 32.690510>,  <29.698458, 31.848196, 32.569061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064388, 31.741686, 32.690510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278059, 0.129914, 0.951738,
		-0.292868, -0.955102, 0.044809,
		0.914829, -0.266274, 0.303623,
		30.338837, 31.661804, 32.781597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547440, 31.255413, 32.955822>,  <29.698458, 31.848196, 32.569061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547440, 31.255413, 32.955822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868914, 31.471371, 33.055904>,  <30.061798, 31.600946, 33.115955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868914, 31.471371, 33.055904>,  <29.547440, 31.255413, 32.955822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868914, 31.471371, 33.055904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328184, 0.051410, 0.943214,
		0.496375, -0.840160, 0.218503,
		0.803684, 0.539896, 0.250208,
		30.110020, 31.633339, 33.130966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649151, 31.195557, 33.669159>,  <29.547440, 31.255413, 32.955822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649151, 31.195557, 33.669159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883131, 31.510201, 33.590088>,  <30.023520, 31.698986, 33.542645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883131, 31.510201, 33.590088>,  <29.649151, 31.195557, 33.669159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883131, 31.510201, 33.590088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070261, 0.193661, 0.978549,
		0.808019, -0.586293, 0.058015,
		0.584952, 0.786610, -0.197675,
		30.058617, 31.746183, 33.530785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227995, 31.194696, 34.134937>,  <29.649151, 31.195557, 33.669159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227995, 31.194696, 34.134937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250940, 31.580751, 34.032787>,  <30.264708, 31.812386, 33.971497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250940, 31.580751, 34.032787>,  <30.227995, 31.194696, 34.134937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250940, 31.580751, 34.032787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008288, 0.255324, 0.966820,
		0.998319, -0.057578, 0.006647,
		0.057365, 0.965139, -0.255372,
		30.268150, 31.870293, 33.956177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879824, 31.528763, 34.465488>,  <30.227995, 31.194696, 34.134937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879824, 31.528763, 34.465488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606026, 31.811396, 34.393703>,  <30.441748, 31.980976, 34.350632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606026, 31.811396, 34.393703>,  <30.879824, 31.528763, 34.465488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606026, 31.811396, 34.393703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006227, 0.240493, 0.970631,
		0.728990, 0.665510, -0.160217,
		-0.684496, 0.706583, -0.179462,
		30.400677, 32.023369, 34.339867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108698, 32.109928, 34.883644>,  <30.879824, 31.528763, 34.465488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108698, 32.109928, 34.883644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723248, 32.181095, 34.803871>,  <30.491978, 32.223797, 34.756008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723248, 32.181095, 34.803871>,  <31.108698, 32.109928, 34.883644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723248, 32.181095, 34.803871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132592, 0.329645, 0.934748,
		0.232052, 0.927189, -0.294064,
		-0.963624, 0.177919, -0.199433,
		30.434160, 32.234470, 34.744041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912001, 32.747059, 35.102398>,  <31.108698, 32.109928, 34.883644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912001, 32.747059, 35.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560297, 32.557091, 35.087669>,  <30.349276, 32.443111, 35.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560297, 32.557091, 35.087669>,  <30.912001, 32.747059, 35.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560297, 32.557091, 35.087669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130522, 0.165856, 0.977474,
		-0.458114, 0.864259, -0.207817,
		-0.879259, -0.474919, -0.036824,
		30.296520, 32.414616, 35.076622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371162, 33.312000, 35.302624>,  <30.912001, 32.747059, 35.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371162, 33.312000, 35.302624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218956, 32.943531, 35.335243>,  <30.127632, 32.722450, 35.354816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218956, 32.943531, 35.335243>,  <30.371162, 33.312000, 35.302624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218956, 32.943531, 35.335243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281683, 0.199443, 0.938551,
		-0.880831, 0.334163, -0.335370,
		-0.380516, -0.921172, 0.081548,
		30.104801, 32.667179, 35.359707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754438, 33.452988, 35.589149>,  <30.371162, 33.312000, 35.302624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754438, 33.452988, 35.589149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843836, 33.068779, 35.655415>,  <29.897474, 32.838253, 35.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843836, 33.068779, 35.655415>,  <29.754438, 33.452988, 35.589149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843836, 33.068779, 35.655415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110522, 0.143896, 0.983402,
		-0.968419, -0.238096, -0.073999,
		0.223496, -0.960523, 0.165666,
		29.910885, 32.780621, 35.705116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362938, 33.282791, 36.075802>,  <29.754438, 33.452988, 35.589149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362938, 33.282791, 36.075802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636629, 32.993809, 36.115582>,  <29.800844, 32.820419, 36.139450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636629, 32.993809, 36.115582>,  <29.362938, 33.282791, 36.075802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636629, 32.993809, 36.115582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107341, 0.234651, 0.966135,
		-0.721324, -0.650383, 0.238104,
		0.684229, -0.722455, 0.099447,
		29.841898, 32.777073, 36.145416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157213, 33.018703, 36.687107>,  <29.362938, 33.282791, 36.075802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157213, 33.018703, 36.687107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515789, 32.863434, 36.601585>,  <29.730934, 32.770271, 36.550274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515789, 32.863434, 36.601585>,  <29.157213, 33.018703, 36.687107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515789, 32.863434, 36.601585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239060, 0.017348, 0.970850,
		-0.373155, -0.921421, 0.108350,
		0.896441, -0.388179, -0.213801,
		29.784721, 32.746979, 36.537445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300350, 32.357647, 37.189701>,  <29.157213, 33.018703, 36.687107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300350, 32.357647, 37.189701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653378, 32.514599, 37.086075>,  <29.865194, 32.608768, 37.023899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653378, 32.514599, 37.086075>,  <29.300350, 32.357647, 37.189701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653378, 32.514599, 37.086075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266604, 0.036236, 0.963125,
		0.387299, -0.919089, -0.072630,
		0.882566, 0.392380, -0.259067,
		29.918148, 32.632313, 37.008354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843706, 31.930300, 37.578072>,  <29.300350, 32.357647, 37.189701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843706, 31.930300, 37.578072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044987, 32.259407, 37.472363>,  <30.165756, 32.456871, 37.408936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044987, 32.259407, 37.472363>,  <29.843706, 31.930300, 37.578072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044987, 32.259407, 37.472363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405622, 0.045152, 0.912925,
		0.763058, -0.566580, -0.311012,
		0.503202, 0.822768, -0.264271,
		30.195948, 32.506237, 37.393082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571074, 31.954744, 37.743679>,  <29.843706, 31.930300, 37.578072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571074, 31.954744, 37.743679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532883, 32.352135, 37.718723>,  <30.509968, 32.590569, 37.703751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532883, 32.352135, 37.718723>,  <30.571074, 31.954744, 37.743679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532883, 32.352135, 37.718723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476988, 0.100673, 0.873125,
		0.873709, 0.053602, -0.483488,
		-0.095475, 0.993475, -0.062391,
		30.504240, 32.650177, 37.700005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222086, 32.180664, 38.092255>,  <30.571074, 31.954744, 37.743679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222086, 32.180664, 38.092255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964010, 32.485909, 38.077370>,  <30.809164, 32.669056, 38.068439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964010, 32.485909, 38.077370>,  <31.222086, 32.180664, 38.092255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964010, 32.485909, 38.077370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245591, 0.253270, 0.935703,
		0.723475, 0.594566, -0.350821,
		-0.645189, 0.763116, -0.037215,
		30.770452, 32.714844, 38.066204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599979, 32.870831, 38.126690>,  <31.222086, 32.180664, 38.092255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599979, 32.870831, 38.126690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224743, 32.955853, 38.236095>,  <30.999601, 33.006866, 38.301739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224743, 32.955853, 38.236095>,  <31.599979, 32.870831, 38.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224743, 32.955853, 38.236095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338457, 0.394366, 0.854355,
		0.073730, 0.894034, -0.441890,
		-0.938089, 0.212552, 0.273515,
		30.943316, 33.019619, 38.318150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631275, 33.635174, 38.253830>,  <31.599979, 32.870831, 38.126690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631275, 33.635174, 38.253830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340118, 33.446167, 38.452587>,  <31.165424, 33.332764, 38.571842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340118, 33.446167, 38.452587>,  <31.631275, 33.635174, 38.253830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340118, 33.446167, 38.452587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250563, 0.491249, 0.834202,
		-0.638272, 0.731712, -0.239181,
		-0.727893, -0.472518, 0.496890,
		31.121750, 33.304413, 38.601654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475611, 34.159027, 38.692375>,  <31.631275, 33.635174, 38.253830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475611, 34.159027, 38.692375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259241, 33.862003, 38.850361>,  <31.129419, 33.683788, 38.945152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259241, 33.862003, 38.850361>,  <31.475611, 34.159027, 38.692375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259241, 33.862003, 38.850361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019056, 0.458660, 0.888408,
		-0.840855, 0.488089, -0.233950,
		-0.540925, -0.742564, 0.394967,
		31.096964, 33.639233, 38.968849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899195, 34.496937, 39.026199>,  <31.475611, 34.159027, 38.692375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899195, 34.496937, 39.026199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962231, 34.137039, 39.188992>,  <31.000051, 33.921101, 39.286667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962231, 34.137039, 39.188992>,  <30.899195, 34.496937, 39.026199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962231, 34.137039, 39.188992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052573, 0.419185, 0.906377,
		-0.986104, -0.121439, 0.113362,
		0.157589, -0.899742, 0.406976,
		31.009508, 33.867115, 39.311085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487385, 34.575623, 39.519871>,  <30.899195, 34.496937, 39.026199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487385, 34.575623, 39.519871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754635, 34.303108, 39.639515>,  <30.914984, 34.139599, 39.711300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754635, 34.303108, 39.639515>,  <30.487385, 34.575623, 39.519871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754635, 34.303108, 39.639515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014115, 0.390324, 0.920569,
		-0.743917, -0.619275, 0.251169,
		0.668123, -0.681282, 0.299110,
		30.955072, 34.098724, 39.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239544, 34.353539, 40.141125>,  <30.487385, 34.575623, 39.519871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239544, 34.353539, 40.141125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609547, 34.203499, 40.165344>,  <30.831549, 34.113476, 40.179874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609547, 34.203499, 40.165344>,  <30.239544, 34.353539, 40.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609547, 34.203499, 40.165344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031134, 0.233648, 0.971823,
		-0.378677, -0.897056, 0.227804,
		0.925005, -0.375099, 0.060548,
		30.887049, 34.090969, 40.183510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185629, 33.812023, 40.653309>,  <30.239544, 34.353539, 40.141125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185629, 33.812023, 40.653309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568825, 33.924164, 40.629105>,  <30.798742, 33.991447, 40.614582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568825, 33.924164, 40.629105>,  <30.185629, 33.812023, 40.653309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568825, 33.924164, 40.629105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025715, 0.126187, 0.991673,
		0.285650, -0.951568, 0.113676,
		0.957989, 0.280348, -0.060515,
		30.856222, 34.008266, 40.610950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619015, 33.400883, 41.080833>,  <30.185629, 33.812023, 40.653309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619015, 33.400883, 41.080833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833033, 33.738060, 41.058311>,  <30.961443, 33.940369, 41.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833033, 33.738060, 41.058311>,  <30.619015, 33.400883, 41.080833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833033, 33.738060, 41.058311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058278, 0.103316, 0.992940,
		0.842813, -0.527983, 0.104404,
		0.535042, 0.842947, -0.056306,
		30.993546, 33.990944, 41.041420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962881, 33.425018, 41.725048>,  <30.619015, 33.400883, 41.080833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962881, 33.425018, 41.725048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038376, 33.789791, 41.579308>,  <31.083673, 34.008656, 41.491863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038376, 33.789791, 41.579308>,  <30.962881, 33.425018, 41.725048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038376, 33.789791, 41.579308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060589, 0.381128, 0.922535,
		0.980157, -0.152040, 0.127186,
		0.188736, 0.911935, -0.364353,
		31.094997, 34.063370, 41.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602209, 33.666286, 42.105961>,  <30.962881, 33.425018, 41.725048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602209, 33.666286, 42.105961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440781, 33.995350, 41.945778>,  <31.343924, 34.192787, 41.849667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440781, 33.995350, 41.945778>,  <31.602209, 33.666286, 42.105961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440781, 33.995350, 41.945778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174962, 0.360221, 0.916313,
		0.898063, 0.439863, -0.001441,
		-0.403572, 0.822655, -0.400461,
		31.319710, 34.242146, 41.825642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845783, 34.271690, 42.486221>,  <31.602209, 33.666286, 42.105961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845783, 34.271690, 42.486221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530186, 34.425407, 42.294468>,  <31.340828, 34.517639, 42.179417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530186, 34.425407, 42.294468>,  <31.845783, 34.271690, 42.486221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530186, 34.425407, 42.294468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275177, 0.476590, 0.834949,
		0.549335, 0.790684, -0.270277,
		-0.788992, 0.384293, -0.479386,
		31.293488, 34.540695, 42.150654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341106, 34.850121, 42.411572>,  <31.845783, 34.271690, 42.486221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341106, 34.850121, 42.411572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687645, 34.855240, 42.611286>,  <32.895569, 34.858311, 42.731113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687645, 34.855240, 42.611286>,  <32.341106, 34.850121, 42.411572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687645, 34.855240, 42.611286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421532, -0.554915, -0.717203,
		0.267882, 0.831809, -0.486142,
		0.866343, 0.012799, 0.499286,
		32.947548, 34.859081, 42.761070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758373, 35.143230, 41.964821>,  <32.341106, 34.850121, 42.411572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758373, 35.143230, 41.964821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009968, 34.972973, 42.225037>,  <33.160927, 34.870819, 42.381165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009968, 34.972973, 42.225037>,  <32.758373, 35.143230, 41.964821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009968, 34.972973, 42.225037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539052, -0.364172, -0.759475,
		0.560176, 0.828374, 0.000387,
		0.628988, -0.425648, 0.650536,
		33.198666, 34.845280, 42.420197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531860, 35.314716, 41.773373>,  <32.758373, 35.143230, 41.964821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531860, 35.314716, 41.773373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500122, 34.980038, 41.990131>,  <33.481079, 34.779232, 42.120186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500122, 34.980038, 41.990131>,  <33.531860, 35.314716, 41.773373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500122, 34.980038, 41.990131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566469, -0.485151, -0.666140,
		0.820255, 0.254113, 0.512454,
		-0.079343, -0.836693, 0.541894,
		33.476318, 34.729031, 42.152699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175076, 35.035172, 41.793076>,  <33.531860, 35.314716, 41.773373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175076, 35.035172, 41.793076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942211, 34.722916, 41.884014>,  <33.802494, 34.535561, 41.938580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942211, 34.722916, 41.884014>,  <34.175076, 35.035172, 41.793076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942211, 34.722916, 41.884014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355394, -0.495803, -0.792385,
		0.731291, -0.380494, 0.566071,
		-0.582158, -0.780643, 0.227351,
		33.767563, 34.488724, 41.952221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598660, 34.512146, 41.770905>,  <34.175076, 35.035172, 41.793076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598660, 34.512146, 41.770905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235161, 34.351864, 41.724228>,  <34.017063, 34.255695, 41.696220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235161, 34.351864, 41.724228>,  <34.598660, 34.512146, 41.770905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235161, 34.351864, 41.724228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348239, -0.573924, -0.741176,
		0.230017, -0.714178, 0.661091,
		-0.908747, -0.400701, -0.116692,
		33.962536, 34.231655, 41.689220>
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
