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
	<24.156544, 35.256332, 35.265667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060877, 34.936928, 35.044697>,  <24.003477, 34.745285, 34.912113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060877, 34.936928, 35.044697>,  <24.156544, 35.256332, 35.265667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.060877, 34.936928, 35.044697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726560, 0.230251, -0.647376,
		0.644135, -0.556203, 0.525099,
		-0.239168, -0.798513, -0.552427,
		23.989126, 34.697372, 34.878967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803614, 35.429676, 34.856636>,  <24.156544, 35.256332, 35.265667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803614, 35.429676, 34.856636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195419, 35.450939, 34.934326>,  <25.430504, 35.463696, 34.980942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195419, 35.450939, 34.934326>,  <24.803614, 35.429676, 34.856636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195419, 35.450939, 34.934326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142302, -0.499722, 0.854417,
		0.142478, -0.864553, -0.481920,
		0.979515, 0.053158, 0.194227,
		25.489273, 35.466885, 34.992596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009340, 34.629158, 34.954041>,  <24.803614, 35.429676, 34.856636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009340, 34.629158, 34.954041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178879, 34.942360, 35.136147>,  <25.280602, 35.130280, 35.245411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178879, 34.942360, 35.136147>,  <25.009340, 34.629158, 34.954041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178879, 34.942360, 35.136147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150921, -0.434567, 0.887905,
		0.893073, -0.445042, -0.066017,
		0.423844, 0.783000, 0.455266,
		25.306032, 35.177261, 35.272728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345018, 34.755558, 34.306892>,  <25.009340, 34.629158, 34.954041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345018, 34.755558, 34.306892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538998, 35.002850, 34.059471>,  <25.655386, 35.151226, 33.911018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538998, 35.002850, 34.059471>,  <25.345018, 34.755558, 34.306892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538998, 35.002850, 34.059471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754717, 0.061496, 0.653162,
		0.441845, -0.783585, -0.436768,
		0.484948, 0.618233, -0.618557,
		25.684483, 35.188320, 33.873905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935137, 34.406673, 34.219818>,  <25.345018, 34.755558, 34.306892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935137, 34.406673, 34.219818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983805, 34.803276, 34.201458>,  <26.013004, 35.041237, 34.190441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983805, 34.803276, 34.201458>,  <25.935137, 34.406673, 34.219818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983805, 34.803276, 34.201458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710360, -0.054686, 0.701711,
		0.693243, -0.117978, -0.710982,
		0.121667, 0.991509, -0.045896,
		26.020306, 35.100727, 34.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628222, 34.741806, 33.905323>,  <25.935137, 34.406673, 34.219818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628222, 34.741806, 33.905323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462223, 34.945808, 34.206699>,  <26.362625, 35.068211, 34.387524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462223, 34.945808, 34.206699>,  <26.628222, 34.741806, 33.905323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462223, 34.945808, 34.206699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818248, -0.152865, 0.554168,
		0.397805, 0.846477, -0.353876,
		-0.414995, 0.510009, 0.753439,
		26.337725, 35.098812, 34.432732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739180, 34.356701, 34.583466>,  <26.628222, 34.741806, 33.905323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739180, 34.356701, 34.583466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110226, 34.215816, 34.633236>,  <27.332853, 34.131287, 34.663097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110226, 34.215816, 34.633236>,  <26.739180, 34.356701, 34.583466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110226, 34.215816, 34.633236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212000, 0.222146, -0.951686,
		0.307553, 0.909175, 0.280735,
		0.927614, -0.352209, 0.124424,
		27.388510, 34.110153, 34.670563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303059, 34.773102, 34.333221>,  <26.739180, 34.356701, 34.583466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303059, 34.773102, 34.333221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420027, 34.391975, 34.300663>,  <27.490208, 34.163300, 34.281128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420027, 34.391975, 34.300663>,  <27.303059, 34.773102, 34.333221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420027, 34.391975, 34.300663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102564, 0.115873, -0.987954,
		0.950773, 0.280551, 0.131609,
		0.292422, -0.952819, -0.081395,
		27.507753, 34.106129, 34.276245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915873, 34.847828, 34.016380>,  <27.303059, 34.773102, 34.333221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915873, 34.847828, 34.016380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784374, 34.480000, 33.930290>,  <27.705475, 34.259304, 33.878635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784374, 34.480000, 33.930290>,  <27.915873, 34.847828, 34.016380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784374, 34.480000, 33.930290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252670, 0.133948, -0.958236,
		0.909991, -0.369397, 0.188312,
		-0.328746, -0.919567, -0.215227,
		27.685751, 34.204128, 33.865723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397907, 34.550877, 33.525440>,  <27.915873, 34.847828, 34.016380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397907, 34.550877, 33.525440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077408, 34.312637, 33.502598>,  <27.885109, 34.169693, 33.488892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077408, 34.312637, 33.502598>,  <28.397907, 34.550877, 33.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077408, 34.312637, 33.502598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107464, -0.049357, -0.992983,
		0.588605, -0.801761, 0.103554,
		-0.801247, -0.595603, -0.057109,
		27.837034, 34.133957, 33.485466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649820, 33.927380, 33.286861>,  <28.397907, 34.550877, 33.525440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649820, 33.927380, 33.286861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266169, 33.928112, 33.173679>,  <28.035976, 33.928551, 33.105770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266169, 33.928112, 33.173679>,  <28.649820, 33.927380, 33.286861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266169, 33.928112, 33.173679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282200, -0.067185, -0.957000,
		-0.020761, -0.997739, 0.063923,
		-0.959131, 0.001829, -0.282956,
		27.978430, 33.928661, 33.088791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484200, 33.373550, 32.827934>,  <28.649820, 33.927380, 33.286861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484200, 33.373550, 32.827934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226124, 33.665947, 32.739044>,  <28.071278, 33.841385, 32.685711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226124, 33.665947, 32.739044>,  <28.484200, 33.373550, 32.827934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226124, 33.665947, 32.739044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105093, -0.203182, -0.973485,
		-0.756759, -0.651437, 0.054269,
		-0.645191, 0.730990, -0.222221,
		28.032566, 33.885242, 32.672379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637119, 33.693535, 32.097153>,  <28.484200, 33.373550, 32.827934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637119, 33.693535, 32.097153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328339, 33.803246, 31.867767>,  <28.143070, 33.869072, 31.730135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328339, 33.803246, 31.867767>,  <28.637119, 33.693535, 32.097153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328339, 33.803246, 31.867767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504054, 0.285569, 0.815095,
		0.387325, 0.918272, -0.082195,
		-0.771951, 0.274275, -0.573467,
		28.096754, 33.885529, 31.695726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483604, 34.346241, 32.061207>,  <28.637119, 33.693535, 32.097153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483604, 34.346241, 32.061207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134148, 34.160542, 32.002941>,  <27.924473, 34.049122, 31.967981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134148, 34.160542, 32.002941>,  <28.483604, 34.346241, 32.061207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134148, 34.160542, 32.002941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311613, 0.303924, 0.900293,
		-0.373693, 0.831925, -0.410188,
		-0.873642, -0.464253, -0.145665,
		27.872055, 34.021267, 31.959242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805538, 34.718994, 32.205959>,  <28.483604, 34.346241, 32.061207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805538, 34.718994, 32.205959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723078, 34.329124, 32.240631>,  <27.673601, 34.095203, 32.261436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723078, 34.329124, 32.240631>,  <27.805538, 34.718994, 32.205959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723078, 34.329124, 32.240631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285054, 0.144562, 0.947547,
		-0.936080, 0.170629, -0.307636,
		-0.206151, -0.974673, 0.086683,
		27.661232, 34.036724, 32.266636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159426, 34.634136, 32.486168>,  <27.805538, 34.718994, 32.205959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159426, 34.634136, 32.486168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363302, 34.295414, 32.547001>,  <27.485628, 34.092178, 32.583500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363302, 34.295414, 32.547001>,  <27.159426, 34.634136, 32.486168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363302, 34.295414, 32.547001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274570, 0.007421, 0.961538,
		-0.815368, -0.531845, -0.228726,
		0.509693, -0.846809, 0.152080,
		27.516211, 34.041370, 32.592625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691553, 34.076614, 32.823364>,  <27.159426, 34.634136, 32.486168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691553, 34.076614, 32.823364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080854, 34.010273, 32.886951>,  <27.314436, 33.970467, 32.925102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080854, 34.010273, 32.886951>,  <26.691553, 34.076614, 32.823364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080854, 34.010273, 32.886951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171153, -0.061867, 0.983300,
		-0.153252, -0.984207, -0.088599,
		0.973253, -0.165857, 0.158969,
		27.372829, 33.960518, 32.934643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686121, 33.540134, 33.240871>,  <26.691553, 34.076614, 32.823364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686121, 33.540134, 33.240871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042425, 33.711449, 33.301689>,  <27.256208, 33.814236, 33.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042425, 33.711449, 33.301689>,  <26.686121, 33.540134, 33.240871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042425, 33.711449, 33.301689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016350, -0.304135, 0.952489,
		0.454179, -0.850925, -0.263909,
		0.890760, 0.428286, 0.152045,
		27.309654, 33.839935, 33.347301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093157, 33.037472, 33.588402>,  <26.686121, 33.540134, 33.240871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093157, 33.037472, 33.588402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259365, 33.393375, 33.663956>,  <27.359091, 33.606918, 33.709290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259365, 33.393375, 33.663956>,  <27.093157, 33.037472, 33.588402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259365, 33.393375, 33.663956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134156, -0.265342, 0.954775,
		0.899635, -0.371390, -0.229621,
		0.415522, 0.889754, 0.188887,
		27.384022, 33.660301, 33.720623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691797, 32.882179, 33.768929>,  <27.093157, 33.037472, 33.588402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691797, 32.882179, 33.768929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610512, 33.240009, 33.928143>,  <27.561741, 33.454708, 34.023670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610512, 33.240009, 33.928143>,  <27.691797, 32.882179, 33.768929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610512, 33.240009, 33.928143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159520, -0.370839, 0.914894,
		0.966052, 0.249414, -0.067343,
		-0.203214, 0.894578, 0.398037,
		27.549547, 33.508385, 34.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229654, 33.263180, 34.226986>,  <27.691797, 32.882179, 33.768929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229654, 33.263180, 34.226986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851114, 33.309288, 34.347740>,  <27.623989, 33.336952, 34.420193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851114, 33.309288, 34.347740>,  <28.229654, 33.263180, 34.226986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851114, 33.309288, 34.347740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261472, -0.275781, 0.924974,
		0.189873, 0.954284, 0.230847,
		-0.946351, 0.115268, 0.301882,
		27.567209, 33.343868, 34.438305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229153, 33.466862, 34.903893>,  <28.229654, 33.263180, 34.226986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229153, 33.466862, 34.903893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861229, 33.313667, 34.869778>,  <27.640474, 33.221752, 34.849308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861229, 33.313667, 34.869778>,  <28.229153, 33.466862, 34.903893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861229, 33.313667, 34.869778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052660, -0.094904, 0.994093,
		-0.388819, 0.918866, 0.067125,
		-0.919808, -0.382987, -0.085288,
		27.585287, 33.198772, 34.844193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762289, 33.828243, 35.392159>,  <28.229153, 33.466862, 34.903893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762289, 33.828243, 35.392159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679459, 33.448093, 35.299294>,  <27.629761, 33.220001, 35.243572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679459, 33.448093, 35.299294>,  <27.762289, 33.828243, 35.392159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679459, 33.448093, 35.299294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067317, -0.222906, 0.972513,
		-0.976006, 0.217013, -0.017818,
		-0.207077, -0.950378, -0.232166,
		27.617336, 33.162979, 35.229645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868744, 34.140308, 36.020767>,  <27.762289, 33.828243, 35.392159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868744, 34.140308, 36.020767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820520, 34.134514, 36.417809>,  <27.791586, 34.131039, 36.656033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820520, 34.134514, 36.417809>,  <27.868744, 34.140308, 36.020767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820520, 34.134514, 36.417809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912486, -0.395388, 0.105059,
		0.390941, 0.918400, 0.060882,
		-0.120558, -0.014482, 0.992601,
		27.784353, 34.130169, 36.715588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214703, 34.707664, 36.257023>,  <27.868744, 34.140308, 36.020767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214703, 34.707664, 36.257023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945988, 34.622742, 36.540890>,  <27.784758, 34.571789, 36.711208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945988, 34.622742, 36.540890>,  <28.214703, 34.707664, 36.257023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945988, 34.622742, 36.540890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586936, 0.431898, 0.684814,
		-0.451892, 0.876579, -0.165536,
		-0.671789, -0.212303, 0.709667,
		27.744452, 34.559052, 36.753792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242228, 35.333035, 36.710258>,  <28.214703, 34.707664, 36.257023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242228, 35.333035, 36.710258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145817, 34.988483, 36.889114>,  <28.087971, 34.781754, 36.996426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145817, 34.988483, 36.889114>,  <28.242228, 35.333035, 36.710258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145817, 34.988483, 36.889114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725023, 0.146463, 0.672971,
		-0.645173, 0.486386, 0.589220,
		-0.241025, -0.861381, 0.447135,
		28.073509, 34.730068, 37.023254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463455, 34.934216, 37.268295>,  <28.242228, 35.333035, 36.710258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463455, 34.934216, 37.268295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335054, 34.609058, 37.073914>,  <28.258013, 34.413963, 36.957283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335054, 34.609058, 37.073914>,  <28.463455, 34.934216, 37.268295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335054, 34.609058, 37.073914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931531, -0.363592, -0.007124,
		-0.170899, -0.454971, 0.873953,
		-0.321004, -0.812897, -0.485957,
		28.238754, 34.365189, 36.928127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684950, 34.317635, 37.628693>,  <28.463455, 34.934216, 37.268295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684950, 34.317635, 37.628693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657469, 34.285908, 37.230900>,  <28.640980, 34.266872, 36.992226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657469, 34.285908, 37.230900>,  <28.684950, 34.317635, 37.628693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657469, 34.285908, 37.230900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969501, -0.240381, -0.047804,
		-0.235262, -0.967433, 0.093411,
		-0.068701, -0.079315, -0.994479,
		28.636858, 34.262112, 36.932556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746845, 33.545719, 37.271473>,  <28.684950, 34.317635, 37.628693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746845, 33.545719, 37.271473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885603, 33.878944, 37.099117>,  <28.968859, 34.078880, 36.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885603, 33.878944, 37.099117>,  <28.746845, 33.545719, 37.271473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885603, 33.878944, 37.099117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937573, -0.320198, 0.135753,
		-0.024879, -0.451084, -0.892135,
		0.346896, 0.833064, -0.430891,
		28.989672, 34.128864, 36.969849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799162, 33.174282, 36.579014>,  <28.746845, 33.545719, 37.271473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799162, 33.174282, 36.579014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566086, 32.857136, 36.507645>,  <28.426241, 32.666847, 36.464821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566086, 32.857136, 36.507645>,  <28.799162, 33.174282, 36.579014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566086, 32.857136, 36.507645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483960, 0.162150, 0.859936,
		-0.652884, 0.587425, -0.478199,
		-0.582688, -0.792868, -0.178425,
		28.391279, 32.619274, 36.454117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094759, 33.321194, 36.860790>,  <28.799162, 33.174282, 36.579014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094759, 33.321194, 36.860790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089891, 32.921238, 36.857559>,  <28.086971, 32.681263, 36.855621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089891, 32.921238, 36.857559>,  <28.094759, 33.321194, 36.860790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089891, 32.921238, 36.857559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544151, -0.000155, 0.838987,
		-0.838899, 0.014605, -0.544091,
		-0.012169, -0.999893, -0.008077,
		28.086241, 32.621269, 36.855137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417160, 33.054676, 36.886044>,  <28.094759, 33.321194, 36.860790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417160, 33.054676, 36.886044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623526, 32.744190, 37.030998>,  <27.747345, 32.557899, 37.117970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623526, 32.744190, 37.030998>,  <27.417160, 33.054676, 36.886044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623526, 32.744190, 37.030998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513153, 0.058697, 0.856288,
		-0.685935, -0.627729, -0.368035,
		0.515914, -0.776215, 0.362383,
		27.778299, 32.511326, 37.139713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861553, 32.679218, 37.312920>,  <27.417160, 33.054676, 36.886044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861553, 32.679218, 37.312920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220325, 32.546814, 37.430187>,  <27.435589, 32.467373, 37.500546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220325, 32.546814, 37.430187>,  <26.861553, 32.679218, 37.312920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220325, 32.546814, 37.430187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333932, -0.072495, 0.939805,
		-0.289833, -0.940838, -0.175558,
		0.896932, -0.331011, 0.293164,
		27.489405, 32.447510, 37.518135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766012, 31.982351, 37.620258>,  <26.861553, 32.679218, 37.312920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766012, 31.982351, 37.620258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092365, 32.149940, 37.779655>,  <27.288177, 32.250496, 37.875294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092365, 32.149940, 37.779655>,  <26.766012, 31.982351, 37.620258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092365, 32.149940, 37.779655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359285, -0.172645, 0.917119,
		0.453049, -0.891433, 0.009675,
		0.815880, 0.418976, 0.398495,
		27.337130, 32.275635, 37.899204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158646, 31.470427, 38.048702>,  <26.766012, 31.982351, 37.620258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158646, 31.470427, 38.048702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171659, 31.859041, 38.142563>,  <27.179468, 32.092209, 38.198879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171659, 31.859041, 38.142563>,  <27.158646, 31.470427, 38.048702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171659, 31.859041, 38.142563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305344, -0.213885, 0.927910,
		0.951686, -0.101836, 0.289695,
		0.032533, 0.971536, 0.234647,
		27.181419, 32.150501, 38.212955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579370, 31.584734, 38.657486>,  <27.158646, 31.470427, 38.048702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579370, 31.584734, 38.657486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320793, 31.886988, 38.615292>,  <27.165648, 32.068340, 38.589977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320793, 31.886988, 38.615292>,  <27.579370, 31.584734, 38.657486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320793, 31.886988, 38.615292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246668, -0.076161, 0.966103,
		0.721987, 0.650550, 0.235624,
		-0.646444, 0.755635, -0.105483,
		27.126860, 32.113678, 38.583645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127689, 31.540518, 39.107780>,  <27.579370, 31.584734, 38.657486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127689, 31.540518, 39.107780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985313, 31.912350, 39.069431>,  <27.899887, 32.135448, 39.046421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985313, 31.912350, 39.069431>,  <28.127689, 31.540518, 39.107780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985313, 31.912350, 39.069431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080650, 0.071650, 0.994164,
		0.931022, 0.361594, 0.049468,
		-0.355939, 0.929578, -0.095870,
		27.878532, 32.191223, 39.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456024, 32.079006, 39.583580>,  <28.127689, 31.540518, 39.107780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456024, 32.079006, 39.583580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103186, 32.244667, 39.493790>,  <27.891483, 32.344063, 39.439915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103186, 32.244667, 39.493790>,  <28.456024, 32.079006, 39.583580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103186, 32.244667, 39.493790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259751, -0.030082, 0.965207,
		0.392988, 0.909711, 0.134111,
		-0.882094, 0.414151, -0.224476,
		27.838558, 32.368912, 39.426445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262215, 32.645065, 40.055092>,  <28.456024, 32.079006, 39.583580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262215, 32.645065, 40.055092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942070, 32.454887, 39.909008>,  <27.749983, 32.340782, 39.821358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942070, 32.454887, 39.909008>,  <28.262215, 32.645065, 40.055092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942070, 32.454887, 39.909008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350416, -0.123289, 0.928444,
		-0.486448, 0.871065, -0.067927,
		-0.800361, -0.475442, -0.365209,
		27.701962, 32.312256, 39.799446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654495, 33.028885, 40.359261>,  <28.262215, 32.645065, 40.055092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654495, 33.028885, 40.359261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603819, 32.638237, 40.289795>,  <27.573412, 32.403847, 40.248116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603819, 32.638237, 40.289795>,  <27.654495, 33.028885, 40.359261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603819, 32.638237, 40.289795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370467, -0.115824, 0.921596,
		-0.920165, 0.181097, -0.347132,
		-0.126692, -0.976621, -0.173668,
		27.565811, 32.345249, 40.237694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256075, 32.595150, 40.766350>,  <27.654495, 33.028885, 40.359261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256075, 32.595150, 40.766350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049147, 32.862877, 40.553036>,  <26.924990, 33.023514, 40.425049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049147, 32.862877, 40.553036>,  <27.256075, 32.595150, 40.766350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049147, 32.862877, 40.553036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516041, -0.253136, -0.818306,
		-0.682701, -0.698522, -0.214443,
		-0.517321, 0.669320, -0.533282,
		26.893950, 33.063671, 40.393051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782736, 32.266857, 40.281574>,  <27.256075, 32.595150, 40.766350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782736, 32.266857, 40.281574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935226, 32.615364, 40.157928>,  <27.026722, 32.824471, 40.083740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935226, 32.615364, 40.157928>,  <26.782736, 32.266857, 40.281574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935226, 32.615364, 40.157928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433894, -0.463876, -0.772370,
		-0.816334, 0.160326, -0.554882,
		0.381227, 0.871272, -0.309113,
		27.049595, 32.876747, 40.065193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625732, 32.286484, 39.569302>,  <26.782736, 32.266857, 40.281574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625732, 32.286484, 39.569302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945375, 32.521297, 39.621178>,  <27.137161, 32.662186, 39.652302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945375, 32.521297, 39.621178>,  <26.625732, 32.286484, 39.569302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945375, 32.521297, 39.621178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310600, -0.218433, -0.925102,
		-0.514736, 0.779539, -0.356884,
		0.799109, 0.587032, 0.129689,
		27.185108, 32.697407, 39.660084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675940, 32.904636, 39.125565>,  <26.625732, 32.286484, 39.569302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675940, 32.904636, 39.125565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033241, 32.761322, 39.234173>,  <27.247623, 32.675335, 39.299339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033241, 32.761322, 39.234173>,  <26.675940, 32.904636, 39.125565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033241, 32.761322, 39.234173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274693, -0.043109, -0.960565,
		0.355862, 0.932616, 0.059912,
		0.893256, -0.358286, 0.271523,
		27.301218, 32.653835, 39.315628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097612, 33.217339, 38.701096>,  <26.675940, 32.904636, 39.125565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097612, 33.217339, 38.701096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302181, 32.899853, 38.832832>,  <27.424923, 32.709362, 38.911877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302181, 32.899853, 38.832832>,  <27.097612, 33.217339, 38.701096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302181, 32.899853, 38.832832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402932, -0.117023, -0.907718,
		0.759006, 0.596933, 0.259963,
		0.511424, -0.793711, 0.329345,
		27.455608, 32.661739, 38.931637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816509, 33.233414, 38.426212>,  <27.097612, 33.217339, 38.701096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816509, 33.233414, 38.426212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706676, 32.851177, 38.469021>,  <27.640778, 32.621838, 38.494705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706676, 32.851177, 38.469021>,  <27.816509, 33.233414, 38.426212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706676, 32.851177, 38.469021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317302, -0.195110, -0.928036,
		0.907703, -0.220864, 0.356784,
		-0.274582, -0.955589, 0.107021,
		27.624302, 32.564499, 38.501125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455866, 32.698872, 38.396400>,  <27.816509, 33.233414, 38.426212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455866, 32.698872, 38.396400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121733, 32.544804, 38.239498>,  <27.921253, 32.452362, 38.145359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121733, 32.544804, 38.239498>,  <28.455866, 32.698872, 38.396400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121733, 32.544804, 38.239498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434006, -0.024095, -0.900588,
		0.337432, -0.922529, 0.187295,
		-0.835332, -0.385174, -0.392253,
		27.871134, 32.429253, 38.121822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679348, 32.085217, 38.007038>,  <28.455866, 32.698872, 38.396400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679348, 32.085217, 38.007038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329393, 32.207729, 37.856964>,  <28.119421, 32.281235, 37.766918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329393, 32.207729, 37.856964>,  <28.679348, 32.085217, 38.007038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329393, 32.207729, 37.856964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373152, -0.067568, -0.925306,
		-0.308754, -0.949540, -0.055175,
		-0.874888, 0.306280, -0.375185,
		28.066927, 32.299614, 37.744408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430008, 31.514280, 37.584240>,  <28.679348, 32.085217, 38.007038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430008, 31.514280, 37.584240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259594, 31.849964, 37.449055>,  <28.157347, 32.051376, 37.367943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259594, 31.849964, 37.449055>,  <28.430008, 31.514280, 37.584240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259594, 31.849964, 37.449055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383796, -0.170636, -0.907515,
		-0.819266, -0.516342, -0.249389,
		-0.426033, 0.839210, -0.337966,
		28.131784, 32.101727, 37.347664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183445, 31.325836, 36.872002>,  <28.430008, 31.514280, 37.584240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183445, 31.325836, 36.872002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223867, 31.723669, 36.881721>,  <28.248121, 31.962370, 36.887554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223867, 31.723669, 36.881721>,  <28.183445, 31.325836, 36.872002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223867, 31.723669, 36.881721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498949, -0.029534, -0.866128,
		-0.860719, 0.099655, -0.499231,
		0.101058, 0.994584, 0.024302,
		28.254185, 32.022045, 36.889011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945303, 31.468487, 36.178581>,  <28.183445, 31.325836, 36.872002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945303, 31.468487, 36.178581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230577, 31.655497, 36.387497>,  <28.401743, 31.767702, 36.512848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230577, 31.655497, 36.387497>,  <27.945303, 31.468487, 36.178581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230577, 31.655497, 36.387497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669716, -0.234437, -0.704642,
		-0.206992, 0.852327, -0.480305,
		0.713187, 0.467523, 0.522290,
		28.444534, 31.795753, 36.544186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438728, 31.977966, 35.763016>,  <27.945303, 31.468487, 36.178581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438728, 31.977966, 35.763016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601902, 31.757429, 36.054111>,  <28.699806, 31.625107, 36.228771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601902, 31.757429, 36.054111>,  <28.438728, 31.977966, 35.763016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601902, 31.757429, 36.054111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730517, -0.281021, -0.622392,
		0.547662, 0.785525, 0.288126,
		0.407935, -0.551342, 0.727744,
		28.724283, 31.592026, 36.272434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233469, 32.151920, 35.802307>,  <28.438728, 31.977966, 35.763016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233469, 32.151920, 35.802307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096840, 31.792969, 35.914051>,  <29.014862, 31.577599, 35.981098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096840, 31.792969, 35.914051>,  <29.233469, 32.151920, 35.802307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096840, 31.792969, 35.914051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459201, -0.418691, -0.783475,
		0.820039, -0.139329, 0.555089,
		-0.341572, -0.897377, 0.279363,
		28.994368, 31.523756, 35.997860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794495, 31.607670, 35.860168>,  <29.233469, 32.151920, 35.802307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794495, 31.607670, 35.860168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448610, 31.429707, 35.766930>,  <29.241079, 31.322929, 35.710987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448610, 31.429707, 35.766930>,  <29.794495, 31.607670, 35.860168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448610, 31.429707, 35.766930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484702, -0.617500, -0.619481,
		0.131675, -0.648654, 0.749606,
		-0.864711, -0.444906, -0.233095,
		29.189198, 31.296234, 35.697002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746490, 30.825636, 35.998531>,  <29.794495, 31.607670, 35.860168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746490, 30.825636, 35.998531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557795, 30.954624, 35.670269>,  <29.444576, 31.032017, 35.473312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557795, 30.954624, 35.670269>,  <29.746490, 30.825636, 35.998531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557795, 30.954624, 35.670269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523394, -0.646602, -0.554945,
		-0.709591, -0.691316, 0.136248,
		-0.471740, 0.322473, -0.820653,
		29.416271, 31.051365, 35.424072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549639, 30.188505, 35.637199>,  <29.746490, 30.825636, 35.998531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549639, 30.188505, 35.637199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670288, 30.506569, 35.426773>,  <29.742678, 30.697407, 35.300518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670288, 30.506569, 35.426773>,  <29.549639, 30.188505, 35.637199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670288, 30.506569, 35.426773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711167, -0.555139, -0.431349,
		-0.635032, -0.244018, -0.732932,
		0.301622, 0.795158, -0.526069,
		29.760775, 30.745115, 35.268951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727219, 30.042866, 34.834442>,  <29.549639, 30.188505, 35.637199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727219, 30.042866, 34.834442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940372, 30.338505, 34.999256>,  <30.068264, 30.515888, 35.098145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940372, 30.338505, 34.999256>,  <29.727219, 30.042866, 34.834442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940372, 30.338505, 34.999256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831478, -0.366950, -0.417124,
		-0.157101, 0.564873, -0.810085,
		0.532883, 0.739099, 0.412031,
		30.100237, 30.560234, 35.122864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075062, 30.528484, 34.411812>,  <29.727219, 30.042866, 34.834442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075062, 30.528484, 34.411812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281872, 30.483301, 34.751205>,  <30.405958, 30.456190, 34.954842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281872, 30.483301, 34.751205>,  <30.075062, 30.528484, 34.411812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281872, 30.483301, 34.751205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843484, -0.101458, -0.527485,
		0.145671, 0.988406, 0.042823,
		0.517025, -0.112960, 0.848484,
		30.436979, 30.449413, 35.005753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642694, 31.024330, 34.458279>,  <30.075062, 30.528484, 34.411812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642694, 31.024330, 34.458279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734980, 30.683073, 34.645435>,  <30.790350, 30.478319, 34.757729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734980, 30.683073, 34.645435>,  <30.642694, 31.024330, 34.458279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734980, 30.683073, 34.645435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890626, -0.008502, -0.454656,
		0.391864, 0.521612, 0.757868,
		0.230711, -0.853140, 0.467893,
		30.804193, 30.427132, 34.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383989, 30.869221, 34.486851>,  <30.642694, 31.024330, 34.458279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383989, 30.869221, 34.486851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333790, 30.482271, 34.574890>,  <31.303671, 30.250101, 34.627712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333790, 30.482271, 34.574890>,  <31.383989, 30.869221, 34.486851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333790, 30.482271, 34.574890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893273, -0.206703, -0.399171,
		0.431641, 0.146511, 0.890068,
		-0.125497, -0.967372, 0.220096,
		31.296141, 30.192060, 34.640919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883938, 30.618637, 34.899082>,  <31.383989, 30.869221, 34.486851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883938, 30.618637, 34.899082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756378, 30.303633, 34.688129>,  <31.679842, 30.114630, 34.561558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756378, 30.303633, 34.688129>,  <31.883938, 30.618637, 34.899082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756378, 30.303633, 34.688129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940340, -0.193271, -0.280011,
		0.118584, -0.585214, 0.802161,
		-0.318901, -0.787509, -0.527381,
		31.660707, 30.067379, 34.529915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169617, 30.038919, 35.113850>,  <31.883938, 30.618637, 34.899082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169617, 30.038919, 35.113850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119179, 30.023867, 34.717327>,  <32.088917, 30.014835, 34.479416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119179, 30.023867, 34.717327>,  <32.169617, 30.038919, 35.113850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119179, 30.023867, 34.717327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989213, -0.079871, -0.122795,
		-0.074556, -0.996095, 0.047298,
		-0.126093, -0.037632, -0.991304,
		32.081352, 30.012577, 34.419937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538967, 29.421978, 34.841812>,  <32.169617, 30.038919, 35.113850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538967, 29.421978, 34.841812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504040, 29.691223, 34.548065>,  <32.483082, 29.852770, 34.371819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504040, 29.691223, 34.548065>,  <32.538967, 29.421978, 34.841812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504040, 29.691223, 34.548065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991914, -0.009401, -0.126561,
		-0.092093, -0.739481, -0.666848,
		-0.087321, 0.673112, -0.734367,
		32.477844, 29.893156, 34.327755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990314, 28.808954, 34.671219>,  <32.538967, 29.421978, 34.841812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990314, 28.808954, 34.671219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897945, 28.548901, 34.381668>,  <32.842525, 28.392868, 34.207935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897945, 28.548901, 34.381668>,  <32.990314, 28.808954, 34.671219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897945, 28.548901, 34.381668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603432, 0.487925, -0.630713,
		0.763247, -0.582457, 0.279639,
		-0.230920, -0.650133, -0.723881,
		32.828671, 28.353861, 34.164505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615559, 28.666363, 34.289089>,  <32.990314, 28.808954, 34.671219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615559, 28.666363, 34.289089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315266, 28.580982, 34.039021>,  <33.135090, 28.529755, 33.888977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315266, 28.580982, 34.039021>,  <33.615559, 28.666363, 34.289089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315266, 28.580982, 34.039021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524541, 0.382667, -0.760541,
		0.401577, -0.898889, -0.175312,
		-0.750728, -0.213457, -0.625175,
		33.090046, 28.516947, 33.851467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762245, 28.285238, 33.645531>,  <33.615559, 28.666363, 34.289089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762245, 28.285238, 33.645531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422657, 28.480247, 33.563972>,  <33.218906, 28.597254, 33.515038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422657, 28.480247, 33.563972>,  <33.762245, 28.285238, 33.645531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422657, 28.480247, 33.563972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355640, 0.241712, -0.902827,
		-0.390866, -0.838984, -0.378589,
		-0.848967, 0.487525, -0.203899,
		33.167969, 28.626505, 33.502804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468697, 28.030361, 33.022171>,  <33.762245, 28.285238, 33.645531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468697, 28.030361, 33.022171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321655, 28.396441, 33.088242>,  <33.233429, 28.616087, 33.127884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321655, 28.396441, 33.088242>,  <33.468697, 28.030361, 33.022171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321655, 28.396441, 33.088242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009100, 0.181139, -0.983416,
		-0.929938, -0.360004, -0.074915,
		-0.367604, 0.915197, 0.165172,
		33.211372, 28.671000, 33.137794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823135, 28.086996, 32.619499>,  <33.468697, 28.030361, 33.022171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823135, 28.086996, 32.619499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027802, 28.424704, 32.683262>,  <33.150600, 28.627327, 32.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027802, 28.424704, 32.683262>,  <32.823135, 28.086996, 32.619499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027802, 28.424704, 32.683262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056460, 0.152088, -0.986753,
		-0.857326, 0.513890, 0.030152,
		0.511668, 0.844267, 0.159404,
		33.181301, 28.677984, 32.731083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533958, 28.555698, 32.128239>,  <32.823135, 28.086996, 32.619499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533958, 28.555698, 32.128239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891010, 28.718256, 32.206268>,  <33.105244, 28.815790, 32.253086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891010, 28.718256, 32.206268>,  <32.533958, 28.555698, 32.128239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891010, 28.718256, 32.206268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071539, 0.299540, -0.951398,
		-0.445071, 0.863204, 0.238307,
		0.892633, 0.406392, 0.195070,
		33.158802, 28.840174, 32.264790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547695, 29.133486, 31.795683>,  <32.533958, 28.555698, 32.128239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547695, 29.133486, 31.795683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940109, 29.095501, 31.863262>,  <33.175560, 29.072710, 31.903809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940109, 29.095501, 31.863262>,  <32.547695, 29.133486, 31.795683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940109, 29.095501, 31.863262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192873, 0.392916, -0.899120,
		0.019000, 0.914658, 0.403782,
		0.981040, -0.094962, 0.168947,
		33.234421, 29.067013, 31.913946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811539, 29.752232, 31.500845>,  <32.547695, 29.133486, 31.795683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811539, 29.752232, 31.500845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116524, 29.495697, 31.535122>,  <33.299515, 29.341776, 31.555689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116524, 29.495697, 31.535122>,  <32.811539, 29.752232, 31.500845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116524, 29.495697, 31.535122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264418, 0.187966, -0.945913,
		0.590542, 0.743879, 0.312898,
		0.762459, -0.641337, 0.085693,
		33.345261, 29.303295, 31.560829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382519, 30.110909, 31.305019>,  <32.811539, 29.752232, 31.500845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382519, 30.110909, 31.305019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469929, 29.726431, 31.237663>,  <33.522373, 29.495745, 31.197248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469929, 29.726431, 31.237663>,  <33.382519, 30.110909, 31.305019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469929, 29.726431, 31.237663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050563, 0.183484, -0.981721,
		0.974520, 0.206017, 0.088696,
		0.218525, -0.961192, -0.168392,
		33.535488, 29.438072, 31.187145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759495, 30.090158, 30.694635>,  <33.382519, 30.110909, 31.305019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759495, 30.090158, 30.694635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703033, 29.695290, 30.724474>,  <33.669159, 29.458368, 30.742376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703033, 29.695290, 30.724474>,  <33.759495, 30.090158, 30.694635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703033, 29.695290, 30.724474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087331, -0.062641, -0.994208,
		0.986129, -0.146849, -0.077369,
		-0.141152, -0.987174, 0.074597,
		33.660686, 29.399137, 30.746853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189713, 29.747189, 30.215313>,  <33.759495, 30.090158, 30.694635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189713, 29.747189, 30.215313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923534, 29.464691, 30.311972>,  <33.763828, 29.295193, 30.369967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923534, 29.464691, 30.311972>,  <34.189713, 29.747189, 30.215313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923534, 29.464691, 30.311972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082467, -0.252191, -0.964157,
		0.741873, -0.661526, 0.109579,
		-0.665450, -0.706246, 0.241648,
		33.723900, 29.252817, 30.384466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495419, 29.162560, 30.036182>,  <34.189713, 29.747189, 30.215313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495419, 29.162560, 30.036182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105808, 29.073788, 30.054197>,  <33.872044, 29.020525, 30.065006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105808, 29.073788, 30.054197>,  <34.495419, 29.162560, 30.036182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105808, 29.073788, 30.054197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006627, -0.170860, -0.985273,
		0.226356, -0.959976, 0.164950,
		-0.974022, -0.221929, 0.045037,
		33.813602, 29.007210, 30.067709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322342, 28.425203, 29.703604>,  <34.495419, 29.162560, 30.036182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322342, 28.425203, 29.703604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998020, 28.658184, 29.680479>,  <33.803429, 28.797974, 29.666603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998020, 28.658184, 29.680479>,  <34.322342, 28.425203, 29.703604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998020, 28.658184, 29.680479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074908, 0.005296, -0.997177,
		-0.580503, -0.812847, -0.047925,
		-0.810806, 0.582453, -0.057814,
		33.754780, 28.832920, 29.663136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932430, 28.081026, 29.272480>,  <34.322342, 28.425203, 29.703604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932430, 28.081026, 29.272480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823860, 28.463882, 29.232063>,  <33.758720, 28.693596, 29.207813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823860, 28.463882, 29.232063>,  <33.932430, 28.081026, 29.272480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823860, 28.463882, 29.232063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116019, -0.071680, -0.990657,
		-0.955442, -0.280610, -0.091591,
		-0.271423, 0.957142, -0.101042,
		33.742432, 28.751024, 29.201750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879135, 28.100557, 28.527853>,  <33.932430, 28.081026, 29.272480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879135, 28.100557, 28.527853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821827, 28.479151, 28.643538>,  <33.787441, 28.706306, 28.712948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821827, 28.479151, 28.643538>,  <33.879135, 28.100557, 28.527853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821827, 28.479151, 28.643538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039704, 0.297488, -0.953900,
		-0.988886, -0.125187, -0.080202,
		-0.143275, 0.946483, 0.289212,
		33.778843, 28.763096, 28.730301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513756, 28.352186, 27.935314>,  <33.879135, 28.100557, 28.527853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513756, 28.352186, 27.935314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644882, 28.679489, 28.124205>,  <33.723557, 28.875870, 28.237539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644882, 28.679489, 28.124205>,  <33.513756, 28.352186, 27.935314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644882, 28.679489, 28.124205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080702, 0.473765, -0.876946,
		-0.941289, 0.325585, 0.089271,
		0.327814, 0.818256, 0.472225,
		33.743225, 28.924965, 28.265873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090408, 28.886950, 27.662317>,  <33.513756, 28.352186, 27.935314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090408, 28.886950, 27.662317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433899, 29.040409, 27.798201>,  <33.639992, 29.132484, 27.879730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433899, 29.040409, 27.798201>,  <33.090408, 28.886950, 27.662317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433899, 29.040409, 27.798201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155517, 0.436546, -0.886139,
		-0.488266, 0.813781, 0.315209,
		0.858726, 0.383651, 0.339707,
		33.691517, 29.155504, 27.900112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169167, 29.558640, 27.374477>,  <33.090408, 28.886950, 27.662317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169167, 29.558640, 27.374477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541149, 29.460918, 27.484385>,  <33.764339, 29.402285, 27.550329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541149, 29.460918, 27.484385>,  <33.169167, 29.558640, 27.374477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541149, 29.460918, 27.484385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353914, 0.392307, -0.849023,
		0.099628, 0.886798, 0.451291,
		0.929956, -0.244305, 0.274766,
		33.820137, 29.387627, 27.566814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540474, 30.220310, 27.461466>,  <33.169167, 29.558640, 27.374477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540474, 30.220310, 27.461466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803940, 29.928741, 27.386808>,  <33.962021, 29.753801, 27.342014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803940, 29.928741, 27.386808>,  <33.540474, 30.220310, 27.461466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803940, 29.928741, 27.386808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420862, 0.562518, -0.711652,
		0.623728, 0.390189, 0.677286,
		0.658664, -0.728921, -0.186643,
		34.001537, 29.710066, 27.330816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044514, 30.648796, 27.158453>,  <33.540474, 30.220310, 27.461466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044514, 30.648796, 27.158453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115620, 30.264727, 27.072226>,  <34.158283, 30.034285, 27.020489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115620, 30.264727, 27.072226>,  <34.044514, 30.648796, 27.158453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115620, 30.264727, 27.072226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444242, 0.273767, -0.853054,
		0.878094, 0.055876, 0.475214,
		0.177763, -0.960172, -0.215571,
		34.168949, 29.976675, 27.007555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689388, 30.633493, 26.899767>,  <34.044514, 30.648796, 27.158453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689388, 30.633493, 26.899767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539005, 30.286118, 26.770479>,  <34.448776, 30.077692, 26.692905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539005, 30.286118, 26.770479>,  <34.689388, 30.633493, 26.899767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539005, 30.286118, 26.770479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273098, 0.229475, -0.934216,
		0.885480, -0.439495, 0.150896,
		-0.375957, -0.868438, -0.323220,
		34.426220, 30.025585, 26.673513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249496, 30.266180, 26.575079>,  <34.689388, 30.633493, 26.899767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249496, 30.266180, 26.575079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908409, 30.130384, 26.416279>,  <34.703754, 30.048906, 26.320999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908409, 30.130384, 26.416279>,  <35.249496, 30.266180, 26.575079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908409, 30.130384, 26.416279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327034, 0.245672, -0.912521,
		0.407325, -0.907960, -0.098465,
		-0.852722, -0.339491, -0.397002,
		34.652592, 30.028538, 26.297178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446770, 29.794914, 26.025082>,  <35.249496, 30.266180, 26.575079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446770, 29.794914, 26.025082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070065, 29.907804, 25.951946>,  <34.844040, 29.975538, 25.908064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070065, 29.907804, 25.951946>,  <35.446770, 29.794914, 26.025082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070065, 29.907804, 25.951946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256079, 0.249487, -0.933906,
		-0.217956, -0.926339, -0.307230,
		-0.941763, 0.282226, -0.182839,
		34.787537, 29.992472, 25.897095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343391, 29.503119, 25.323963>,  <35.446770, 29.794914, 26.025082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343391, 29.503119, 25.323963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048450, 29.755379, 25.420778>,  <34.871487, 29.906734, 25.478867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048450, 29.755379, 25.420778>,  <35.343391, 29.503119, 25.323963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048450, 29.755379, 25.420778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007485, 0.350657, -0.936474,
		-0.675462, -0.692327, -0.253839,
		-0.737357, 0.630653, 0.242038,
		34.827244, 29.944574, 25.493389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053856, 29.489376, 24.746399>,  <35.343391, 29.503119, 25.323963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053856, 29.489376, 24.746399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924068, 29.818291, 24.933405>,  <34.846195, 30.015640, 25.045609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924068, 29.818291, 24.933405>,  <35.053856, 29.489376, 24.746399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924068, 29.818291, 24.933405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148324, 0.443910, -0.883710,
		-0.934196, -0.356076, -0.022068,
		-0.324464, 0.822286, 0.467513,
		34.826729, 30.064976, 25.073660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515675, 29.651634, 24.427217>,  <35.053856, 29.489376, 24.746399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515675, 29.651634, 24.427217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598007, 29.994278, 24.616468>,  <34.647408, 30.199863, 24.730019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598007, 29.994278, 24.616468>,  <34.515675, 29.651634, 24.427217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598007, 29.994278, 24.616468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221505, 0.511717, -0.830109,
		-0.953188, 0.066065, 0.295072,
		0.205835, 0.856610, 0.473129,
		34.659756, 30.251261, 24.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955582, 30.131088, 24.321800>,  <34.515675, 29.651634, 24.427217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955582, 30.131088, 24.321800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267334, 30.369682, 24.398510>,  <34.454384, 30.512838, 24.444536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267334, 30.369682, 24.398510>,  <33.955582, 30.131088, 24.321800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267334, 30.369682, 24.398510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087723, 0.406943, -0.909232,
		-0.620385, 0.691811, 0.369487,
		0.779377, 0.596486, 0.191773,
		34.501148, 30.548628, 24.456041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672939, 30.767725, 24.215586>,  <33.955582, 30.131088, 24.321800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672939, 30.767725, 24.215586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070068, 30.806229, 24.187214>,  <34.308346, 30.829330, 24.170191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070068, 30.806229, 24.187214>,  <33.672939, 30.767725, 24.215586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070068, 30.806229, 24.187214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094898, 0.273486, -0.957183,
		-0.072741, 0.957047, 0.280659,
		0.992826, 0.096261, -0.070928,
		34.367916, 30.835106, 24.165936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734028, 31.427633, 23.965813>,  <33.672939, 30.767725, 24.215586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734028, 31.427633, 23.965813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081230, 31.248484, 23.880045>,  <34.289551, 31.140995, 23.828585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081230, 31.248484, 23.880045>,  <33.734028, 31.427633, 23.965813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081230, 31.248484, 23.880045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047828, 0.505214, -0.861667,
		0.494244, 0.737678, 0.459950,
		0.868007, -0.447872, -0.214417,
		34.341633, 31.114122, 23.815720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050232, 31.997684, 23.632812>,  <33.734028, 31.427633, 23.965813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050232, 31.997684, 23.632812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247391, 31.667387, 23.523123>,  <34.365685, 31.469208, 23.457310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247391, 31.667387, 23.523123>,  <34.050232, 31.997684, 23.632812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247391, 31.667387, 23.523123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332395, 0.469964, -0.817709,
		0.804095, 0.311894, 0.506117,
		0.492895, -0.825746, -0.274223,
		34.395260, 31.419662, 23.440855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593853, 32.328514, 23.337399>,  <34.050232, 31.997684, 23.632812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593853, 32.328514, 23.337399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584595, 31.951540, 23.203960>,  <34.579041, 31.725357, 23.123898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584595, 31.951540, 23.203960>,  <34.593853, 32.328514, 23.337399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584595, 31.951540, 23.203960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243982, 0.318273, -0.916065,
		0.969504, -0.102591, 0.222571,
		-0.023142, -0.942432, -0.333598,
		34.577652, 31.668810, 23.103882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173683, 32.304489, 23.064545>,  <34.593853, 32.328514, 23.337399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173683, 32.304489, 23.064545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946743, 32.038177, 22.870701>,  <34.810577, 31.878391, 22.754395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946743, 32.038177, 22.870701>,  <35.173683, 32.304489, 23.064545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946743, 32.038177, 22.870701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383526, 0.307134, -0.870963,
		0.728709, -0.680006, 0.081089,
		-0.567355, -0.665778, -0.484612,
		34.776535, 31.838444, 22.725317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579952, 31.858543, 22.556913>,  <35.173683, 32.304489, 23.064545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579952, 31.858543, 22.556913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195183, 31.874918, 22.448818>,  <34.964321, 31.884743, 22.383961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195183, 31.874918, 22.448818>,  <35.579952, 31.858543, 22.556913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195183, 31.874918, 22.448818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272482, 0.066152, -0.959884,
		-0.021421, -0.996969, -0.074789,
		-0.961922, 0.040940, -0.270239,
		34.906605, 31.887199, 22.367746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582745, 31.400034, 22.072882>,  <35.579952, 31.858543, 22.556913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582745, 31.400034, 22.072882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244213, 31.604874, 22.014254>,  <35.041096, 31.727777, 21.979076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244213, 31.604874, 22.014254>,  <35.582745, 31.400034, 22.072882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244213, 31.604874, 22.014254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146334, -0.041052, -0.988383,
		-0.512170, -0.857943, -0.040194,
		-0.846327, 0.512102, -0.146572,
		34.990314, 31.758505, 21.970282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172523, 31.074318, 21.571232>,  <35.582745, 31.400034, 22.072882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172523, 31.074318, 21.571232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133728, 31.472431, 21.571526>,  <35.110451, 31.711300, 21.571701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133728, 31.472431, 21.571526>,  <35.172523, 31.074318, 21.571232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133728, 31.472431, 21.571526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253389, 0.025405, -0.967031,
		-0.962490, -0.093603, -0.254659,
		-0.096987, 0.995285, 0.000734,
		35.104633, 31.771017, 21.571745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927605, 31.213757, 20.922672>,  <35.172523, 31.074318, 21.571232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927605, 31.213757, 20.922672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009022, 31.589890, 21.031736>,  <35.057873, 31.815569, 21.097174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009022, 31.589890, 21.031736>,  <34.927605, 31.213757, 20.922672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009022, 31.589890, 21.031736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235218, 0.223366, -0.945928,
		-0.950390, 0.256675, -0.175718,
		0.203546, 0.940333, 0.272659,
		35.070087, 31.871990, 21.113535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560959, 31.744175, 20.428883>,  <34.927605, 31.213757, 20.922672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560959, 31.744175, 20.428883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866261, 31.928200, 20.610340>,  <35.049442, 32.038616, 20.719215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866261, 31.928200, 20.610340>,  <34.560959, 31.744175, 20.428883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866261, 31.928200, 20.610340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371893, 0.261328, -0.890732,
		-0.528341, 0.848558, 0.028366,
		0.763251, 0.460061, 0.453643,
		35.095234, 32.066219, 20.746433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533684, 32.482368, 20.376587>,  <34.560959, 31.744175, 20.428883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533684, 32.482368, 20.376587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922039, 32.432877, 20.458626>,  <35.155052, 32.403183, 20.507849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922039, 32.432877, 20.458626>,  <34.533684, 32.482368, 20.376587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922039, 32.432877, 20.458626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239222, 0.544176, -0.804142,
		-0.012113, 0.829797, 0.557934,
		0.970889, -0.123729, 0.205098,
		35.213306, 32.395760, 20.520155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791420, 33.101032, 20.105234>,  <34.533684, 32.482368, 20.376587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791420, 33.101032, 20.105234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114624, 32.868435, 20.143160>,  <35.308548, 32.728878, 20.165915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114624, 32.868435, 20.143160>,  <34.791420, 33.101032, 20.105234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114624, 32.868435, 20.143160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364022, 0.366191, -0.856383,
		0.463259, 0.726479, 0.507561,
		0.808009, -0.581491, 0.094813,
		35.357025, 32.693989, 20.171604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286369, 33.534798, 20.201778>,  <34.791420, 33.101032, 20.105234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286369, 33.534798, 20.201778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402973, 33.199036, 20.018291>,  <35.472935, 32.997578, 19.908199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402973, 33.199036, 20.018291>,  <35.286369, 33.534798, 20.201778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402973, 33.199036, 20.018291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365388, 0.540896, -0.757577,
		0.884031, 0.053235, 0.464386,
		0.291514, -0.839403, -0.458718,
		35.490429, 32.947216, 19.880676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993263, 33.684002, 20.034578>,  <35.286369, 33.534798, 20.201778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993263, 33.684002, 20.034578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857025, 33.390121, 19.799900>,  <35.775284, 33.213795, 19.659094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857025, 33.390121, 19.799900>,  <35.993263, 33.684002, 20.034578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857025, 33.390121, 19.799900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057602, 0.606526, -0.792974,
		0.938444, -0.303878, -0.164260,
		-0.340595, -0.734700, -0.586694,
		35.754848, 33.169712, 19.623892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529331, 33.618561, 19.521219>,  <35.993263, 33.684002, 20.034578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529331, 33.618561, 19.521219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184345, 33.471729, 19.381840>,  <35.977356, 33.383633, 19.298212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184345, 33.471729, 19.381840>,  <36.529331, 33.618561, 19.521219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184345, 33.471729, 19.381840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107977, 0.539167, -0.835249,
		0.494469, -0.757995, -0.425375,
		-0.862462, -0.367074, -0.348447,
		35.925606, 33.361607, 19.277306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613586, 33.792225, 18.799740>,  <36.529331, 33.618561, 19.521219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613586, 33.792225, 18.799740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237965, 33.660229, 18.838270>,  <36.012592, 33.581032, 18.861387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237965, 33.660229, 18.838270>,  <36.613586, 33.792225, 18.799740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237965, 33.660229, 18.838270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234016, 0.408394, -0.882298,
		0.251814, -0.851069, -0.460729,
		-0.939056, -0.329993, 0.096324,
		35.956249, 33.561230, 18.867167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419815, 33.540405, 18.045666>,  <36.613586, 33.792225, 18.799740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419815, 33.540405, 18.045666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106697, 33.621674, 18.280935>,  <35.918827, 33.670437, 18.422096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106697, 33.621674, 18.280935>,  <36.419815, 33.540405, 18.045666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106697, 33.621674, 18.280935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401836, 0.556659, -0.727089,
		-0.475139, -0.805512, -0.354108,
		-0.782796, 0.203175, 0.588175,
		35.871857, 33.682625, 18.457388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809654, 33.523758, 17.664696>,  <36.419815, 33.540405, 18.045666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809654, 33.523758, 17.664696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717243, 33.735146, 17.991463>,  <35.661797, 33.861977, 18.187523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717243, 33.735146, 17.991463>,  <35.809654, 33.523758, 17.664696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717243, 33.735146, 17.991463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277993, 0.768774, -0.575940,
		-0.932388, -0.360153, -0.030696,
		-0.231026, 0.528466, 0.816915,
		35.647934, 33.893684, 18.236538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178837, 33.899349, 17.532082>,  <35.809654, 33.523758, 17.664696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178837, 33.899349, 17.532082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330845, 34.104351, 17.840088>,  <35.422050, 34.227352, 18.024893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330845, 34.104351, 17.840088>,  <35.178837, 33.899349, 17.532082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330845, 34.104351, 17.840088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279852, 0.857160, -0.432389,
		-0.881629, -0.051175, 0.469161,
		0.380019, 0.512502, 0.770018,
		35.444851, 34.258102, 18.071093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658772, 34.365765, 17.610497>,  <35.178837, 33.899349, 17.532082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658772, 34.365765, 17.610497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980240, 34.506939, 17.802141>,  <35.173122, 34.591644, 17.917128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980240, 34.506939, 17.802141>,  <34.658772, 34.365765, 17.610497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980240, 34.506939, 17.802141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111648, 0.880264, -0.461163,
		-0.584503, 0.317132, 0.746848,
		0.803673, 0.352935, 0.479110,
		35.221340, 34.612820, 17.945873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483433, 35.013191, 17.889889>,  <34.658772, 34.365765, 17.610497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483433, 35.013191, 17.889889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879181, 34.985203, 17.838905>,  <35.116631, 34.968410, 17.808315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879181, 34.985203, 17.838905>,  <34.483433, 35.013191, 17.889889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879181, 34.985203, 17.838905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001452, 0.871808, -0.489846,
		0.145395, 0.484825, 0.862441,
		0.989373, -0.069969, -0.127461,
		35.175991, 34.964211, 17.800667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736946, 35.506958, 18.352207>,  <34.483433, 35.013191, 17.889889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736946, 35.506958, 18.352207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938354, 35.448006, 18.011679>,  <35.059200, 35.412632, 17.807362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938354, 35.448006, 18.011679>,  <34.736946, 35.506958, 18.352207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938354, 35.448006, 18.011679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122563, 0.963193, -0.239242,
		0.855248, 0.224803, 0.466920,
		0.503517, -0.147384, -0.851322,
		35.089409, 35.403790, 17.756283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252388, 35.962330, 18.266897>,  <34.736946, 35.506958, 18.352207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252388, 35.962330, 18.266897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143665, 35.866570, 17.894058>,  <35.078430, 35.809113, 17.670355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143665, 35.866570, 17.894058>,  <35.252388, 35.962330, 18.266897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143665, 35.866570, 17.894058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088443, 0.970678, -0.223523,
		0.958279, 0.021682, -0.285012,
		-0.271808, -0.239405, -0.932097,
		35.062122, 35.794746, 17.614429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651440, 36.025742, 17.680859>,  <35.252388, 35.962330, 18.266897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651440, 36.025742, 17.680859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958405, 36.263775, 17.776314>,  <36.142582, 36.406597, 17.833588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958405, 36.263775, 17.776314>,  <35.651440, 36.025742, 17.680859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958405, 36.263775, 17.776314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131028, 0.218787, -0.966936,
		-0.627622, 0.773307, 0.089927,
		0.767413, 0.595087, 0.238640,
		36.188629, 36.442303, 17.847906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519993, 36.637711, 17.306889>,  <35.651440, 36.025742, 17.680859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519993, 36.637711, 17.306889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902809, 36.703617, 17.402321>,  <36.132500, 36.743160, 17.459581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902809, 36.703617, 17.402321>,  <35.519993, 36.637711, 17.306889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902809, 36.703617, 17.402321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206893, 0.188418, -0.960049,
		-0.203134, 0.968169, 0.146235,
		0.957043, 0.164764, 0.238582,
		36.189922, 36.753048, 17.473896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943470, 36.302284, 16.755804>,  <35.519993, 36.637711, 17.306889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943470, 36.302284, 16.755804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258305, 36.505390, 16.615702>,  <36.447205, 36.627254, 16.531641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258305, 36.505390, 16.615702>,  <35.943470, 36.302284, 16.755804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258305, 36.505390, 16.615702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313174, 0.160255, 0.936077,
		0.531433, -0.846462, -0.032884,
		0.787084, 0.507761, -0.350255,
		36.494431, 36.657719, 16.510626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677013, 36.030182, 16.819679>,  <35.943470, 36.302284, 16.755804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677013, 36.030182, 16.819679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714626, 36.428234, 16.807831>,  <36.737194, 36.667065, 16.800722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714626, 36.428234, 16.807831>,  <36.677013, 36.030182, 16.819679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714626, 36.428234, 16.807831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149218, 0.015328, 0.988685,
		0.984323, -0.097389, -0.147050,
		0.094033, 0.995128, -0.029620,
		36.742836, 36.726772, 16.798944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363514, 36.249592, 17.100416>,  <36.677013, 36.030182, 16.819679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363514, 36.249592, 17.100416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052540, 36.494114, 17.159618>,  <36.865955, 36.640827, 17.195139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052540, 36.494114, 17.159618>,  <37.363514, 36.249592, 17.100416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052540, 36.494114, 17.159618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006871, -0.227046, 0.973860,
		0.628929, 0.758127, 0.172312,
		-0.777433, 0.611304, 0.148005,
		36.819309, 36.677505, 17.204020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467781, 36.767864, 17.689413>,  <37.363514, 36.249592, 17.100416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467781, 36.767864, 17.689413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074547, 36.753490, 17.617582>,  <36.838604, 36.744865, 17.574484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074547, 36.753490, 17.617582>,  <37.467781, 36.767864, 17.689413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074547, 36.753490, 17.617582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179009, -0.018453, 0.983674,
		-0.038657, 0.999184, 0.011710,
		-0.983088, -0.035930, -0.179576,
		36.779621, 36.742710, 17.563709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108578, 37.270817, 18.167276>,  <37.467781, 36.767864, 17.689413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108578, 37.270817, 18.167276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844902, 36.987156, 18.067219>,  <36.686695, 36.816959, 18.007183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844902, 36.987156, 18.067219>,  <37.108578, 37.270817, 18.167276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844902, 36.987156, 18.067219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246878, -0.110121, 0.962769,
		-0.710294, 0.696405, -0.102483,
		-0.659191, -0.709150, -0.250146,
		36.647144, 36.774410, 17.992174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455452, 37.539211, 18.347466>,  <37.108578, 37.270817, 18.167276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455452, 37.539211, 18.347466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413593, 37.141605, 18.334940>,  <36.388477, 36.903042, 18.327425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413593, 37.141605, 18.334940>,  <36.455452, 37.539211, 18.347466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413593, 37.141605, 18.334940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624405, 0.041161, 0.780016,
		-0.774059, 0.101180, -0.624976,
		-0.104646, -0.994016, -0.031316,
		36.382198, 36.843399, 18.325544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781754, 37.438663, 18.490837>,  <36.455452, 37.539211, 18.347466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781754, 37.438663, 18.490837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925957, 37.069050, 18.541740>,  <36.012478, 36.847282, 18.572283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925957, 37.069050, 18.541740>,  <35.781754, 37.438663, 18.490837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925957, 37.069050, 18.541740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481182, -0.067359, 0.874029,
		-0.799062, -0.376326, -0.468913,
		0.360505, -0.924036, 0.127257,
		36.034107, 36.791840, 18.579918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271996, 36.902985, 18.914171>,  <35.781754, 37.438663, 18.490837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271996, 36.902985, 18.914171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611355, 36.695396, 18.955898>,  <35.814972, 36.570843, 18.980934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611355, 36.695396, 18.955898>,  <35.271996, 36.902985, 18.914171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611355, 36.695396, 18.955898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229642, -0.183272, 0.955864,
		-0.476950, -0.834912, -0.274666,
		0.848401, -0.518974, 0.104319,
		35.865875, 36.539703, 18.987194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135342, 36.305752, 19.140169>,  <35.271996, 36.902985, 18.914171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135342, 36.305752, 19.140169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508156, 36.349472, 19.278364>,  <35.731846, 36.375706, 19.361280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508156, 36.349472, 19.278364>,  <35.135342, 36.305752, 19.140169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508156, 36.349472, 19.278364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281301, -0.382772, 0.879975,
		0.228427, -0.917354, -0.326010,
		0.932036, 0.109303, 0.345488,
		35.787766, 36.382263, 19.382011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160675, 35.846756, 19.721533>,  <35.135342, 36.305752, 19.140169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160675, 35.846756, 19.721533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487209, 36.061325, 19.807177>,  <35.683132, 36.190067, 19.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487209, 36.061325, 19.807177>,  <35.160675, 35.846756, 19.721533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487209, 36.061325, 19.807177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129979, -0.190577, 0.973029,
		0.562759, -0.822151, -0.085852,
		0.816338, 0.536422, 0.214111,
		35.732109, 36.222252, 19.871410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554398, 35.401283, 20.123714>,  <35.160675, 35.846756, 19.721533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554398, 35.401283, 20.123714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700825, 35.764954, 20.203112>,  <35.788681, 35.983154, 20.250750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700825, 35.764954, 20.203112>,  <35.554398, 35.401283, 20.123714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700825, 35.764954, 20.203112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093783, -0.248254, 0.964145,
		0.925850, -0.334329, -0.176143,
		0.366069, 0.909173, 0.198491,
		35.810646, 36.037704, 20.262659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272732, 35.291473, 20.361099>,  <35.554398, 35.401283, 20.123714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272732, 35.291473, 20.361099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129845, 35.644684, 20.482857>,  <36.044113, 35.856609, 20.555910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129845, 35.644684, 20.482857>,  <36.272732, 35.291473, 20.361099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129845, 35.644684, 20.482857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151937, -0.266617, 0.951751,
		0.921579, 0.386235, -0.038923,
		-0.357222, 0.883028, 0.304392,
		36.022678, 35.909592, 20.574175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782623, 35.459511, 20.804012>,  <36.272732, 35.291473, 20.361099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782623, 35.459511, 20.804012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482761, 35.705498, 20.901855>,  <36.302845, 35.853088, 20.960562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482761, 35.705498, 20.901855>,  <36.782623, 35.459511, 20.804012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482761, 35.705498, 20.901855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153234, -0.198270, 0.968095,
		0.643841, 0.763223, 0.054402,
		-0.749659, 0.614963, 0.244606,
		36.257862, 35.889988, 20.975237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002510, 36.079575, 21.280485>,  <36.782623, 35.459511, 20.804012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002510, 36.079575, 21.280485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616173, 35.985172, 21.323271>,  <36.384369, 35.928532, 21.348942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616173, 35.985172, 21.323271>,  <37.002510, 36.079575, 21.280485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616173, 35.985172, 21.323271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160051, -0.218738, 0.962568,
		-0.203779, 0.946812, 0.249041,
		-0.965846, -0.236010, 0.106964,
		36.326420, 35.914368, 21.355360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856522, 36.254822, 22.025164>,  <37.002510, 36.079575, 21.280485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856522, 36.254822, 22.025164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541153, 36.032619, 21.919481>,  <36.351933, 35.899300, 21.856071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541153, 36.032619, 21.919481>,  <36.856522, 36.254822, 22.025164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541153, 36.032619, 21.919481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106937, -0.299196, 0.948181,
		-0.605770, 0.775819, 0.176488,
		-0.788421, -0.555506, -0.264207,
		36.304626, 35.865967, 21.840219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357525, 36.373428, 22.491276>,  <36.856522, 36.254822, 22.025164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357525, 36.373428, 22.491276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259586, 36.018513, 22.334936>,  <36.200825, 35.805561, 22.241133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259586, 36.018513, 22.334936>,  <36.357525, 36.373428, 22.491276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259586, 36.018513, 22.334936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284971, -0.319458, 0.903735,
		-0.926738, 0.332653, -0.174636,
		-0.244842, -0.887293, -0.390851,
		36.186134, 35.752323, 22.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612984, 36.198708, 22.756283>,  <36.357525, 36.373428, 22.491276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612984, 36.198708, 22.756283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779373, 35.859062, 22.626070>,  <35.879208, 35.655273, 22.547943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779373, 35.859062, 22.626070>,  <35.612984, 36.198708, 22.756283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779373, 35.859062, 22.626070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556278, -0.520782, 0.647565,
		-0.719387, -0.088285, -0.688976,
		0.415977, -0.849112, -0.325533,
		35.904167, 35.604328, 22.528410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045715, 35.752293, 22.830578>,  <35.612984, 36.198708, 22.756283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045715, 35.752293, 22.830578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384655, 35.540611, 22.812944>,  <35.588020, 35.413601, 22.802364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384655, 35.540611, 22.812944>,  <35.045715, 35.752293, 22.830578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384655, 35.540611, 22.812944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332460, -0.593387, 0.733050,
		-0.414090, -0.606494, -0.678745,
		0.847349, -0.529204, -0.044081,
		35.638859, 35.381851, 22.799721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867462, 35.090576, 22.800690>,  <35.045715, 35.752293, 22.830578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867462, 35.090576, 22.800690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233463, 35.069149, 22.960642>,  <35.453064, 35.056293, 23.056614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233463, 35.069149, 22.960642>,  <34.867462, 35.090576, 22.800690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233463, 35.069149, 22.960642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347224, -0.609278, 0.712893,
		0.205450, -0.791146, -0.576090,
		0.915001, -0.053569, 0.399880,
		35.507965, 35.053078, 23.080606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724125, 34.695831, 23.337275>,  <34.867462, 35.090576, 22.800690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724125, 34.695831, 23.337275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118187, 34.731930, 23.395689>,  <35.354626, 34.753590, 23.430737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118187, 34.731930, 23.395689>,  <34.724125, 34.695831, 23.337275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118187, 34.731930, 23.395689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048952, -0.667671, 0.742845,
		0.164543, -0.738966, -0.653341,
		0.985155, 0.090248, 0.146035,
		35.413734, 34.759003, 23.439499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954723, 33.928890, 23.367434>,  <34.724125, 34.695831, 23.337275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954723, 33.928890, 23.367434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161118, 34.214073, 23.557358>,  <35.284954, 34.385185, 23.671312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161118, 34.214073, 23.557358>,  <34.954723, 33.928890, 23.367434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161118, 34.214073, 23.557358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067566, -0.518695, 0.852285,
		0.853927, -0.471850, -0.219468,
		0.515988, 0.712961, 0.474809,
		35.315914, 34.427963, 23.699800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453701, 33.646606, 23.810623>,  <34.954723, 33.928890, 23.367434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453701, 33.646606, 23.810623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386684, 34.018406, 23.942055>,  <35.346474, 34.241486, 24.020914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386684, 34.018406, 23.942055>,  <35.453701, 33.646606, 23.810623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386684, 34.018406, 23.942055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057813, -0.341982, 0.937926,
		0.984168, 0.138149, 0.111034,
		-0.167545, 0.929496, 0.328581,
		35.336422, 34.297256, 24.040628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756241, 33.714474, 24.557066>,  <35.453701, 33.646606, 23.810623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756241, 33.714474, 24.557066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497410, 34.017376, 24.521629>,  <35.342110, 34.199120, 24.500368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497410, 34.017376, 24.521629>,  <35.756241, 33.714474, 24.557066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497410, 34.017376, 24.521629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322339, -0.166417, 0.931881,
		0.690933, 0.631555, 0.351780,
		-0.647077, 0.757260, -0.088592,
		35.303288, 34.244553, 24.495052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885281, 34.052055, 25.153757>,  <35.756241, 33.714474, 24.557066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885281, 34.052055, 25.153757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514301, 34.133442, 25.028257>,  <35.291714, 34.182274, 24.952957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514301, 34.133442, 25.028257>,  <35.885281, 34.052055, 25.153757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514301, 34.133442, 25.028257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345749, -0.146962, 0.926747,
		0.142450, 0.967990, 0.206647,
		-0.927451, 0.203463, -0.313747,
		35.236065, 34.194481, 24.934134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626297, 34.520702, 25.605314>,  <35.885281, 34.052055, 25.153757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626297, 34.520702, 25.605314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297581, 34.356220, 25.447546>,  <35.100349, 34.257530, 25.352884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297581, 34.356220, 25.447546>,  <35.626297, 34.520702, 25.605314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297581, 34.356220, 25.447546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359434, -0.162995, 0.918825,
		-0.442118, 0.896850, -0.013855,
		-0.821790, -0.411209, -0.394422,
		35.051044, 34.232857, 25.329220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949471, 34.879730, 25.891212>,  <35.626297, 34.520702, 25.605314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949471, 34.879730, 25.891212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856865, 34.511250, 25.766125>,  <34.801300, 34.290161, 25.691072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856865, 34.511250, 25.766125>,  <34.949471, 34.879730, 25.891212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856865, 34.511250, 25.766125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255655, -0.252542, 0.933200,
		-0.938637, 0.296000, -0.177041,
		-0.231517, -0.921198, -0.312719,
		34.787411, 34.234890, 25.672308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475815, 34.775265, 26.300133>,  <34.949471, 34.879730, 25.891212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475815, 34.775265, 26.300133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530891, 34.412163, 26.141632>,  <34.563938, 34.194302, 26.046532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530891, 34.412163, 26.141632>,  <34.475815, 34.775265, 26.300133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530891, 34.412163, 26.141632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194055, -0.417032, 0.887934,
		-0.971279, -0.045366, -0.233577,
		0.137691, -0.907759, -0.396251,
		34.572201, 34.139835, 26.022757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059887, 34.396721, 26.719707>,  <34.475815, 34.775265, 26.300133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059887, 34.396721, 26.719707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259995, 34.102688, 26.536671>,  <34.380058, 33.926270, 26.426849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259995, 34.102688, 26.536671>,  <34.059887, 34.396721, 26.719707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259995, 34.102688, 26.536671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020968, -0.538603, 0.842299,
		-0.865619, -0.411777, -0.284857,
		0.500264, -0.735083, -0.457591,
		34.410072, 33.882164, 26.399393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626217, 33.787022, 26.723576>,  <34.059887, 34.396721, 26.719707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626217, 33.787022, 26.723576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009220, 33.672733, 26.707901>,  <34.239021, 33.604160, 26.698496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009220, 33.672733, 26.707901>,  <33.626217, 33.787022, 26.723576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009220, 33.672733, 26.707901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105666, -0.474002, 0.874160,
		-0.268339, -0.832878, -0.484054,
		0.957512, -0.285719, -0.039186,
		34.296474, 33.587017, 26.696144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655132, 33.047424, 26.777069>,  <33.626217, 33.787022, 26.723576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655132, 33.047424, 26.777069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014061, 33.182144, 26.891178>,  <34.229420, 33.262978, 26.959644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014061, 33.182144, 26.891178>,  <33.655132, 33.047424, 26.777069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014061, 33.182144, 26.891178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052316, -0.560609, 0.826426,
		0.438266, -0.756494, -0.485427,
		0.897322, 0.336799, 0.285272,
		34.283257, 33.283184, 26.976759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878567, 32.418205, 26.980536>,  <33.655132, 33.047424, 26.777069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878567, 32.418205, 26.980536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144566, 32.681446, 27.121771>,  <34.304165, 32.839390, 27.206512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144566, 32.681446, 27.121771>,  <33.878567, 32.418205, 26.980536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144566, 32.681446, 27.121771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129850, -0.567454, 0.813102,
		0.735468, -0.494865, -0.462812,
		0.665001, 0.658106, 0.353086,
		34.344067, 32.878880, 27.227697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431549, 31.973291, 27.140110>,  <33.878567, 32.418205, 26.980536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431549, 31.973291, 27.140110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473564, 32.306103, 27.357990>,  <34.498772, 32.505791, 27.488718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473564, 32.306103, 27.357990>,  <34.431549, 31.973291, 27.140110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473564, 32.306103, 27.357990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231664, -0.553131, 0.800236,
		0.967109, 0.042134, -0.250849,
		0.105035, 0.832028, 0.544699,
		34.505074, 32.555710, 27.521400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024166, 31.846493, 27.676132>,  <34.431549, 31.973291, 27.140110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024166, 31.846493, 27.676132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789867, 32.135960, 27.822121>,  <34.649288, 32.309639, 27.909714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789867, 32.135960, 27.822121>,  <35.024166, 31.846493, 27.676132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789867, 32.135960, 27.822121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191002, -0.314374, 0.929885,
		0.787663, 0.614392, 0.045924,
		-0.585751, 0.723665, 0.364971,
		34.614143, 32.353058, 27.931612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312428, 32.008911, 28.340681>,  <35.024166, 31.846493, 27.676132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312428, 32.008911, 28.340681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965130, 32.206234, 28.361832>,  <34.756752, 32.324627, 28.374523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965130, 32.206234, 28.361832>,  <35.312428, 32.008911, 28.340681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965130, 32.206234, 28.361832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027375, -0.154052, 0.987683,
		0.495378, 0.856105, 0.147259,
		-0.868246, 0.493307, 0.052878,
		34.704655, 32.354225, 28.377695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439014, 32.452892, 28.901407>,  <35.312428, 32.008911, 28.340681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439014, 32.452892, 28.901407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042049, 32.454800, 28.852264>,  <34.803871, 32.455944, 28.822779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042049, 32.454800, 28.852264>,  <35.439014, 32.452892, 28.901407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042049, 32.454800, 28.852264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122524, -0.121527, 0.984997,
		-0.010233, 0.992577, 0.121189,
		-0.992413, 0.004769, -0.122858,
		34.744324, 32.456230, 28.815407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181404, 32.952354, 29.341158>,  <35.439014, 32.452892, 28.901407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181404, 32.952354, 29.341158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902241, 32.675095, 29.269077>,  <34.734745, 32.508739, 29.225828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902241, 32.675095, 29.269077>,  <35.181404, 32.952354, 29.341158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902241, 32.675095, 29.269077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158085, -0.096311, 0.982717,
		-0.698526, 0.714330, -0.042361,
		-0.697905, -0.693150, -0.180201,
		34.692871, 32.467148, 29.215017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742928, 33.121677, 29.879360>,  <35.181404, 32.952354, 29.341158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742928, 33.121677, 29.879360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651783, 32.747955, 29.769707>,  <34.597095, 32.523720, 29.703915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651783, 32.747955, 29.769707>,  <34.742928, 33.121677, 29.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651783, 32.747955, 29.769707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210833, -0.227519, 0.950676,
		-0.950595, 0.274416, -0.145140,
		-0.227858, -0.934308, -0.274134,
		34.583427, 32.467663, 29.687466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080933, 32.983482, 30.221701>,  <34.742928, 33.121677, 29.879360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080933, 32.983482, 30.221701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259174, 32.636703, 30.132406>,  <34.366119, 32.428635, 30.078829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259174, 32.636703, 30.132406>,  <34.080933, 32.983482, 30.221701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259174, 32.636703, 30.132406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419096, -0.422366, 0.803720,
		-0.791072, -0.264583, -0.551543,
		0.445604, -0.866950, -0.223236,
		34.392857, 32.376617, 30.065435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591679, 32.506893, 30.378777>,  <34.080933, 32.983482, 30.221701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591679, 32.506893, 30.378777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934914, 32.301643, 30.386658>,  <34.140854, 32.178493, 30.391386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934914, 32.301643, 30.386658>,  <33.591679, 32.506893, 30.378777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934914, 32.301643, 30.386658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243775, -0.373286, 0.895115,
		-0.451955, -0.772888, -0.445399,
		0.858085, -0.513129, 0.019702,
		34.192341, 32.147705, 30.392569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411320, 31.808912, 30.782200>,  <33.591679, 32.506893, 30.378777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411320, 31.808912, 30.782200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810482, 31.784601, 30.790968>,  <34.049980, 31.770014, 30.796228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810482, 31.784601, 30.790968>,  <33.411320, 31.808912, 30.782200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810482, 31.784601, 30.790968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045860, -0.427272, 0.902959,
		-0.045514, -0.902078, -0.429167,
		0.997910, -0.060779, 0.021923,
		34.109856, 31.766367, 30.797544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611561, 31.114914, 30.969572>,  <33.411320, 31.808912, 30.782200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611561, 31.114914, 30.969572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934383, 31.331797, 31.063101>,  <34.128078, 31.461926, 31.119217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934383, 31.331797, 31.063101>,  <33.611561, 31.114914, 30.969572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934383, 31.331797, 31.063101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056794, -0.465432, 0.883260,
		0.587738, -0.699560, -0.406423,
		0.807055, 0.542207, 0.233821,
		34.176498, 31.494459, 31.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066212, 30.644197, 31.084187>,  <33.611561, 31.114914, 30.969572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066212, 30.644197, 31.084187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236938, 30.965471, 31.250423>,  <34.339375, 31.158236, 31.350164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236938, 30.965471, 31.250423>,  <34.066212, 30.644197, 31.084187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236938, 30.965471, 31.250423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285303, -0.555678, 0.780912,
		0.858153, -0.214741, -0.466327,
		0.426821, 0.803186, 0.415591,
		34.364986, 31.206427, 31.375101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675877, 30.392767, 31.371424>,  <34.066212, 30.644197, 31.084187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675877, 30.392767, 31.371424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628284, 30.746355, 31.552284>,  <34.599731, 30.958508, 31.660801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628284, 30.746355, 31.552284>,  <34.675877, 30.392767, 31.371424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628284, 30.746355, 31.552284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382282, -0.379495, 0.842522,
		0.916354, 0.273090, -0.292775,
		-0.118977, 0.883971, 0.452149,
		34.592590, 31.011547, 31.687929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110176, 30.399336, 31.891081>,  <34.675877, 30.392767, 31.371424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110176, 30.399336, 31.891081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870480, 30.690861, 32.023594>,  <34.726662, 30.865776, 32.103100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870480, 30.690861, 32.023594>,  <35.110176, 30.399336, 31.891081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870480, 30.690861, 32.023594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311533, -0.168905, 0.935103,
		0.737469, 0.663555, -0.125835,
		-0.599238, 0.728811, 0.331282,
		34.690708, 30.909504, 32.122978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575207, 30.581018, 32.471420>,  <35.110176, 30.399336, 31.891081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575207, 30.581018, 32.471420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955715, 30.461399, 32.441360>,  <36.184021, 30.389627, 32.423325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955715, 30.461399, 32.441360>,  <35.575207, 30.581018, 32.471420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955715, 30.461399, 32.441360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157725, 0.681347, -0.714765,
		0.264954, 0.668084, 0.695315,
		0.951274, -0.299048, -0.075152,
		36.241096, 30.371685, 32.418816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896645, 31.208527, 32.413708>,  <35.575207, 30.581018, 32.471420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896645, 31.208527, 32.413708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162849, 30.940723, 32.281734>,  <36.322571, 30.780043, 32.202549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162849, 30.940723, 32.281734>,  <35.896645, 31.208527, 32.413708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162849, 30.940723, 32.281734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282401, 0.635046, -0.719003,
		0.690903, 0.385329, 0.611699,
		0.665509, -0.669506, -0.329938,
		36.362503, 30.739872, 32.182755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439816, 31.663187, 32.226460>,  <35.896645, 31.208527, 32.413708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439816, 31.663187, 32.226460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497494, 31.311327, 32.045162>,  <36.532101, 31.100212, 31.936384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497494, 31.311327, 32.045162>,  <36.439816, 31.663187, 32.226460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497494, 31.311327, 32.045162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252199, 0.475570, -0.842750,
		0.956872, 0.007213, 0.290421,
		0.144195, -0.879648, -0.453241,
		36.540752, 31.047432, 31.909189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159508, 31.688910, 32.044823>,  <36.439816, 31.663187, 32.226460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159508, 31.688910, 32.044823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997803, 31.414726, 31.802591>,  <36.900780, 31.250217, 31.657253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997803, 31.414726, 31.802591>,  <37.159508, 31.688910, 32.044823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997803, 31.414726, 31.802591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544308, 0.351792, -0.761558,
		0.735052, -0.637488, 0.230884,
		-0.404260, -0.685457, -0.605576,
		36.876526, 31.209089, 31.620918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722603, 31.524616, 31.667362>,  <37.159508, 31.688910, 32.044823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722603, 31.524616, 31.667362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397873, 31.400349, 31.469606>,  <37.203033, 31.325788, 31.350952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397873, 31.400349, 31.469606>,  <37.722603, 31.524616, 31.667362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397873, 31.400349, 31.469606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409713, 0.300184, -0.861409,
		0.416021, -0.901873, -0.116412,
		-0.811826, -0.310669, -0.494392,
		37.154324, 31.307148, 31.321289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958538, 31.103109, 31.119614>,  <37.722603, 31.524616, 31.667362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958538, 31.103109, 31.119614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598404, 31.232836, 31.003534>,  <37.382324, 31.310673, 30.933887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598404, 31.232836, 31.003534>,  <37.958538, 31.103109, 31.119614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598404, 31.232836, 31.003534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407695, 0.395266, -0.823134,
		-0.152252, -0.859409, -0.488095,
		-0.900336, 0.324318, -0.290197,
		37.328304, 31.330132, 30.916475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958103, 31.070284, 30.462891>,  <37.958538, 31.103109, 31.119614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958103, 31.070284, 30.462891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621647, 31.284340, 30.494131>,  <37.419773, 31.412773, 30.512875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621647, 31.284340, 30.494131>,  <37.958103, 31.070284, 30.462891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621647, 31.284340, 30.494131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222849, 0.474558, -0.851548,
		-0.492762, -0.698870, -0.518427,
		-0.841145, 0.535141, 0.078102,
		37.369305, 31.444881, 30.517561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556458, 30.958134, 29.821514>,  <37.958103, 31.070284, 30.462891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556458, 30.958134, 29.821514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489574, 31.304399, 30.010265>,  <37.449444, 31.512159, 30.123516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489574, 31.304399, 30.010265>,  <37.556458, 30.958134, 29.821514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489574, 31.304399, 30.010265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274032, 0.500562, -0.821185,
		-0.947073, -0.008002, -0.320919,
		-0.167211, 0.865664, 0.471876,
		37.439411, 31.564098, 30.151829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139606, 31.333927, 29.472584>,  <37.556458, 30.958134, 29.821514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139606, 31.333927, 29.472584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306293, 31.629488, 29.684383>,  <37.406307, 31.806824, 29.811462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306293, 31.629488, 29.684383>,  <37.139606, 31.333927, 29.472584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306293, 31.629488, 29.684383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033691, 0.569531, -0.821279,
		-0.908411, 0.360081, 0.212439,
		0.416718, 0.738902, 0.529500,
		37.431309, 31.851158, 29.843233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920734, 31.843849, 29.166647>,  <37.139606, 31.333927, 29.472584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920734, 31.843849, 29.166647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197620, 32.022064, 29.393745>,  <37.363750, 32.128994, 29.530005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197620, 32.022064, 29.393745>,  <36.920734, 31.843849, 29.166647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197620, 32.022064, 29.393745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019187, 0.797769, -0.602657,
		-0.721438, 0.406274, 0.560775,
		0.692213, 0.445539, 0.567746,
		37.405285, 32.155727, 29.564070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764954, 32.603077, 29.234159>,  <36.920734, 31.843849, 29.166647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764954, 32.603077, 29.234159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158958, 32.582165, 29.299898>,  <37.395363, 32.569618, 29.339342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158958, 32.582165, 29.299898>,  <36.764954, 32.603077, 29.234159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158958, 32.582165, 29.299898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159030, 0.644029, -0.748289,
		-0.066725, 0.763213, 0.642693,
		0.985016, -0.052278, 0.164347,
		37.454464, 32.566483, 29.349203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871975, 33.203663, 29.146261>,  <36.764954, 32.603077, 29.234159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871975, 33.203663, 29.146261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232265, 33.035774, 29.101488>,  <37.448441, 32.935043, 29.074623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232265, 33.035774, 29.101488>,  <36.871975, 33.203663, 29.146261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232265, 33.035774, 29.101488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145897, 0.535020, -0.832146,
		0.409155, 0.733204, 0.543142,
		0.900725, -0.419720, -0.111934,
		37.502483, 32.909859, 29.067907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387428, 33.728809, 28.921076>,  <36.871975, 33.203663, 29.146261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387428, 33.728809, 28.921076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525604, 33.375210, 28.795084>,  <37.608509, 33.163052, 28.719488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525604, 33.375210, 28.795084>,  <37.387428, 33.728809, 28.921076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525604, 33.375210, 28.795084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173029, 0.389886, -0.904461,
		0.922350, 0.257939, 0.287641,
		0.345443, -0.884000, -0.314981,
		37.629238, 33.110008, 28.700590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014942, 33.889309, 28.666662>,  <37.387428, 33.728809, 28.921076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014942, 33.889309, 28.666662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927673, 33.541893, 28.488657>,  <37.875313, 33.333443, 28.381853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927673, 33.541893, 28.488657>,  <38.014942, 33.889309, 28.666662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927673, 33.541893, 28.488657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243731, 0.393056, -0.886624,
		0.944986, -0.301896, 0.125939,
		-0.218167, -0.868542, -0.445014,
		37.862225, 33.281330, 28.355152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435158, 33.926804, 28.108871>,  <38.014942, 33.889309, 28.666662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435158, 33.926804, 28.108871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188236, 33.626442, 28.014994>,  <38.040085, 33.446224, 27.958668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188236, 33.626442, 28.014994>,  <38.435158, 33.926804, 28.108871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188236, 33.626442, 28.014994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157066, 0.174681, -0.972017,
		0.770888, -0.636890, 0.010110,
		-0.617302, -0.750905, -0.234693,
		38.003044, 33.401169, 27.944586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764385, 33.382835, 27.720720>,  <38.435158, 33.926804, 28.108871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764385, 33.382835, 27.720720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378616, 33.373886, 27.615351>,  <38.147156, 33.368519, 27.552130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378616, 33.373886, 27.615351>,  <38.764385, 33.382835, 27.720720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378616, 33.373886, 27.615351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245524, 0.293679, -0.923835,
		0.098027, -0.955642, -0.277738,
		-0.964421, -0.022369, -0.263422,
		38.089291, 33.367176, 27.536324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818634, 33.131916, 27.012712>,  <38.764385, 33.382835, 27.720720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818634, 33.131916, 27.012712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433372, 33.236645, 27.037296>,  <38.202213, 33.299480, 27.052048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433372, 33.236645, 27.037296>,  <38.818634, 33.131916, 27.012712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433372, 33.236645, 27.037296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029202, 0.125366, -0.991681,
		-0.267346, -0.956940, -0.113102,
		-0.963158, 0.261819, 0.061461,
		38.144424, 33.315189, 27.055735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430893, 32.698410, 26.584017>,  <38.818634, 33.131916, 27.012712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430893, 32.698410, 26.584017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236225, 33.045704, 26.622623>,  <38.119423, 33.254082, 26.645788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236225, 33.045704, 26.622623>,  <38.430893, 32.698410, 26.584017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236225, 33.045704, 26.622623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041344, 0.087471, -0.995309,
		-0.872608, -0.488376, -0.006673,
		-0.486669, 0.868238, 0.096519,
		38.090225, 33.306175, 26.651579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015110, 32.663116, 26.071497>,  <38.430893, 32.698410, 26.584017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015110, 32.663116, 26.071497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006371, 33.050713, 26.169950>,  <38.001125, 33.283272, 26.229023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006371, 33.050713, 26.169950>,  <38.015110, 32.663116, 26.071497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006371, 33.050713, 26.169950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005703, 0.246311, -0.969174,
		-0.999745, -0.019773, -0.010908,
		-0.021851, 0.968989, 0.246136,
		37.999817, 33.341408, 26.243792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637039, 32.847275, 25.579254>,  <38.015110, 32.663116, 26.071497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637039, 32.847275, 25.579254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794991, 33.192398, 25.705509>,  <37.889763, 33.399471, 25.781261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794991, 33.192398, 25.705509>,  <37.637039, 32.847275, 25.579254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794991, 33.192398, 25.705509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074298, 0.312441, -0.947027,
		-0.915723, 0.397414, 0.059273,
		0.394881, 0.862811, 0.315637,
		37.913456, 33.451241, 25.800200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180836, 33.385456, 25.074949>,  <37.637039, 32.847275, 25.579254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180836, 33.385456, 25.074949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488190, 33.573990, 25.248123>,  <37.672604, 33.687111, 25.352028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488190, 33.573990, 25.248123>,  <37.180836, 33.385456, 25.074949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488190, 33.573990, 25.248123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085931, 0.594365, -0.799591,
		-0.634194, 0.651595, 0.416199,
		0.768384, 0.471331, 0.432935,
		37.718704, 33.715389, 25.378004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077034, 34.122673, 25.034761>,  <37.180836, 33.385456, 25.074949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077034, 34.122673, 25.034761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467937, 34.039375, 25.050741>,  <37.702480, 33.989395, 25.060329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467937, 34.039375, 25.050741>,  <37.077034, 34.122673, 25.034761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467937, 34.039375, 25.050741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149244, 0.541681, -0.827229,
		0.150624, 0.814381, 0.560443,
		0.977261, -0.208244, 0.039951,
		37.761116, 33.976902, 25.062727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422363, 34.733463, 24.927725>,  <37.077034, 34.122673, 25.034761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422363, 34.733463, 24.927725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698952, 34.453922, 24.854542>,  <37.864906, 34.286198, 24.810633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698952, 34.453922, 24.854542>,  <37.422363, 34.733463, 24.927725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698952, 34.453922, 24.854542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392714, 0.576211, -0.716768,
		0.606336, 0.423775, 0.672882,
		0.691471, -0.698853, -0.182955,
		37.906391, 34.244267, 24.799656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115292, 35.075775, 24.848984>,  <37.422363, 34.733463, 24.927725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115292, 35.075775, 24.848984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103104, 34.729156, 24.649721>,  <38.095791, 34.521183, 24.530163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103104, 34.729156, 24.649721>,  <38.115292, 35.075775, 24.848984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103104, 34.729156, 24.649721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359744, 0.455483, -0.814322,
		0.932553, -0.204024, 0.297857,
		-0.030472, -0.866551, -0.498158,
		38.093964, 34.469193, 24.500273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576885, 35.221394, 24.256313>,  <38.115292, 35.075775, 24.848984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576885, 35.221394, 24.256313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405392, 34.869568, 24.173798>,  <38.302494, 34.658474, 24.124289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405392, 34.869568, 24.173798>,  <38.576885, 35.221394, 24.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405392, 34.869568, 24.173798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105852, 0.177859, -0.978346,
		0.897207, -0.441289, 0.016849,
		-0.428737, -0.879563, -0.206287,
		38.276772, 34.605698, 24.111912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019722, 34.882107, 23.747952>,  <38.576885, 35.221394, 24.256313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019722, 34.882107, 23.747952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662125, 34.706665, 23.711302>,  <38.447567, 34.601398, 23.689312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662125, 34.706665, 23.711302>,  <39.019722, 34.882107, 23.747952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662125, 34.706665, 23.711302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073252, 0.058675, -0.995586,
		0.442046, -0.896762, -0.020327,
		-0.893997, -0.438606, -0.091626,
		38.393925, 34.575085, 23.683813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105236, 34.212929, 23.490007>,  <39.019722, 34.882107, 23.747952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105236, 34.212929, 23.490007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741619, 34.350502, 23.395897>,  <38.523449, 34.433044, 23.339430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741619, 34.350502, 23.395897>,  <39.105236, 34.212929, 23.490007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741619, 34.350502, 23.395897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240772, -0.027314, -0.970197,
		-0.340107, -0.938598, -0.057979,
		-0.909041, 0.343930, -0.235278,
		38.468906, 34.453682, 23.325314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959309, 33.839703, 22.885967>,  <39.105236, 34.212929, 23.490007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959309, 33.839703, 22.885967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725201, 34.162636, 22.855833>,  <38.584736, 34.356396, 22.837753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725201, 34.162636, 22.855833>,  <38.959309, 33.839703, 22.885967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725201, 34.162636, 22.855833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091917, -0.026251, -0.995421,
		-0.805612, -0.589514, -0.058844,
		-0.585270, 0.807331, -0.075335,
		38.549622, 34.404835, 22.833233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489292, 33.613369, 22.314928>,  <38.959309, 33.839703, 22.885967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489292, 33.613369, 22.314928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433765, 34.004658, 22.376648>,  <38.400448, 34.239429, 22.413679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433765, 34.004658, 22.376648>,  <38.489292, 33.613369, 22.314928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433765, 34.004658, 22.376648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067869, 0.146043, -0.986948,
		-0.987989, -0.147480, 0.046118,
		-0.138820, 0.978223, 0.154299,
		38.392120, 34.298126, 22.422937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866077, 33.845654, 21.923164>,  <38.489292, 33.613369, 22.314928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866077, 33.845654, 21.923164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089607, 34.173641, 21.972752>,  <38.223724, 34.370434, 22.002504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089607, 34.173641, 21.972752>,  <37.866077, 33.845654, 21.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089607, 34.173641, 21.972752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002555, 0.151189, -0.988502,
		-0.829281, 0.552083, 0.086583,
		0.558826, 0.819967, 0.123968,
		38.257256, 34.419632, 22.009941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575645, 34.288044, 21.445457>,  <37.866077, 33.845654, 21.923164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575645, 34.288044, 21.445457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929596, 34.451630, 21.534676>,  <38.141964, 34.549782, 21.588207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929596, 34.451630, 21.534676>,  <37.575645, 34.288044, 21.445457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929596, 34.451630, 21.534676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163876, 0.174918, -0.970849,
		-0.436053, 0.895632, 0.087762,
		0.884874, 0.408959, 0.223046,
		38.195057, 34.574318, 21.601589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605598, 34.708538, 20.872835>,  <37.575645, 34.288044, 21.445457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605598, 34.708538, 20.872835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979382, 34.696156, 21.014723>,  <38.203651, 34.688725, 21.099855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979382, 34.696156, 21.014723>,  <37.605598, 34.708538, 20.872835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979382, 34.696156, 21.014723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355770, 0.121939, -0.926584,
		-0.014572, 0.992055, 0.124960,
		0.934460, -0.030955, 0.354720,
		38.259720, 34.686871, 21.121140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951229, 35.332848, 20.668829>,  <37.605598, 34.708538, 20.872835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951229, 35.332848, 20.668829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208549, 35.035831, 20.743448>,  <38.362942, 34.857624, 20.788219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208549, 35.035831, 20.743448>,  <37.951229, 35.332848, 20.668829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208549, 35.035831, 20.743448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205256, -0.067469, -0.976380,
		0.737584, 0.666399, 0.109007,
		0.643304, -0.742537, 0.186546,
		38.401539, 34.813072, 20.799412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527325, 35.574474, 20.234642>,  <37.951229, 35.332848, 20.668829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527325, 35.574474, 20.234642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568432, 35.190052, 20.337255>,  <38.593098, 34.959400, 20.398823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568432, 35.190052, 20.337255>,  <38.527325, 35.574474, 20.234642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568432, 35.190052, 20.337255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293574, -0.217104, -0.930957,
		0.950396, 0.170986, 0.259829,
		0.102770, -0.961056, 0.256532,
		38.599262, 34.901733, 20.414215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047050, 35.379333, 19.833643>,  <38.527325, 35.574474, 20.234642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047050, 35.379333, 19.833643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896252, 35.027184, 19.948759>,  <38.805771, 34.815895, 20.017828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896252, 35.027184, 19.948759>,  <39.047050, 35.379333, 19.833643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896252, 35.027184, 19.948759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209961, -0.383856, -0.899206,
		0.902103, -0.278573, 0.329555,
		-0.376996, -0.880370, 0.287789,
		38.783154, 34.763073, 20.035095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470890, 34.820045, 19.473904>,  <39.047050, 35.379333, 19.833643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470890, 34.820045, 19.473904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126762, 34.646832, 19.581486>,  <38.920288, 34.542904, 19.646036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126762, 34.646832, 19.581486>,  <39.470890, 34.820045, 19.473904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126762, 34.646832, 19.581486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047893, -0.456615, -0.888375,
		0.507508, -0.777163, 0.372093,
		-0.860315, -0.433037, 0.268956,
		38.868668, 34.516922, 19.662172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511768, 33.997906, 19.376284>,  <39.470890, 34.820045, 19.473904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511768, 33.997906, 19.376284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142914, 34.149921, 19.347332>,  <38.921600, 34.241131, 19.329960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142914, 34.149921, 19.347332>,  <39.511768, 33.997906, 19.376284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142914, 34.149921, 19.347332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112607, -0.442658, -0.889592,
		-0.370117, -0.812174, 0.450985,
		-0.922135, 0.380037, -0.072379,
		38.866272, 34.263935, 19.325617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266388, 33.446865, 18.938721>,  <39.511768, 33.997906, 19.376284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266388, 33.446865, 18.938721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978073, 33.723869, 18.926744>,  <38.805084, 33.890072, 18.919559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978073, 33.723869, 18.926744>,  <39.266388, 33.446865, 18.938721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978073, 33.723869, 18.926744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209409, -0.258726, -0.942979,
		-0.660770, -0.673416, 0.331504,
		-0.720786, 0.692512, -0.029939,
		38.761837, 33.931622, 18.917763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656403, 33.192795, 19.230860>,  <39.266388, 33.446865, 18.938721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656403, 33.192795, 19.230860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011681, 33.059307, 19.104532>,  <39.224846, 32.979214, 19.028736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011681, 33.059307, 19.104532>,  <38.656403, 33.192795, 19.230860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011681, 33.059307, 19.104532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049543, -0.752907, 0.656259,
		-0.456789, -0.567239, -0.685262,
		0.888195, -0.333722, -0.315817,
		39.278137, 32.959190, 19.009787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622929, 32.500359, 19.155048>,  <38.656403, 33.192795, 19.230860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622929, 32.500359, 19.155048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016731, 32.570488, 19.153811>,  <39.253014, 32.612564, 19.153067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016731, 32.570488, 19.153811>,  <38.622929, 32.500359, 19.155048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016731, 32.570488, 19.153811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114443, -0.629077, 0.768873,
		0.132851, -0.757315, -0.639395,
		0.984507, 0.175320, -0.003096,
		39.312084, 32.623085, 19.152882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974953, 31.780790, 19.241745>,  <38.622929, 32.500359, 19.155048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974953, 31.780790, 19.241745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253895, 32.055656, 19.323235>,  <39.421261, 32.220577, 19.372128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253895, 32.055656, 19.323235>,  <38.974953, 31.780790, 19.241745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253895, 32.055656, 19.323235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348172, -0.573236, 0.741739,
		0.626478, -0.446324, -0.638999,
		0.697353, 0.687165, 0.203723,
		39.463100, 32.261806, 19.384352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552734, 31.412106, 19.460096>,  <38.974953, 31.780790, 19.241745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552734, 31.412106, 19.460096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604805, 31.784401, 19.596788>,  <39.636047, 32.007778, 19.678804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604805, 31.784401, 19.596788>,  <39.552734, 31.412106, 19.460096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604805, 31.784401, 19.596788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300451, -0.365489, 0.880992,
		0.944872, -0.012012, -0.327220,
		0.130178, 0.930738, 0.341732,
		39.643860, 32.063622, 19.699308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181305, 31.342077, 19.712255>,  <39.552734, 31.412106, 19.460096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181305, 31.342077, 19.712255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976608, 31.643953, 19.876478>,  <39.853790, 31.825079, 19.975012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976608, 31.643953, 19.876478>,  <40.181305, 31.342077, 19.712255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976608, 31.643953, 19.876478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260733, -0.318907, 0.911217,
		0.818617, 0.573357, -0.033573,
		-0.511746, 0.754692, 0.410555,
		39.823086, 31.870361, 19.999645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564713, 31.594563, 20.235035>,  <40.181305, 31.342077, 19.712255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564713, 31.594563, 20.235035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210175, 31.741774, 20.347431>,  <39.997452, 31.830099, 20.414869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210175, 31.741774, 20.347431>,  <40.564713, 31.594563, 20.235035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210175, 31.741774, 20.347431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251262, -0.127452, 0.959491,
		0.388930, 0.921039, 0.020495,
		-0.886341, 0.368025, 0.280992,
		39.944271, 31.852180, 20.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723457, 32.126324, 20.760725>,  <40.564713, 31.594563, 20.235035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723457, 32.126324, 20.760725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340786, 32.019558, 20.807236>,  <40.111183, 31.955500, 20.835142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340786, 32.019558, 20.807236>,  <40.723457, 32.126324, 20.760725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340786, 32.019558, 20.807236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155643, -0.131362, 0.979040,
		-0.246043, 0.954726, 0.167215,
		-0.956681, -0.266911, 0.116275,
		40.053783, 31.939484, 20.842119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549507, 32.556007, 21.335770>,  <40.723457, 32.126324, 20.760725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549507, 32.556007, 21.335770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277874, 32.266090, 21.289246>,  <40.114895, 32.092140, 21.261332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277874, 32.266090, 21.289246>,  <40.549507, 32.556007, 21.335770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277874, 32.266090, 21.289246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064964, -0.217167, 0.973970,
		-0.731182, 0.653849, 0.194560,
		-0.679082, -0.724789, -0.116312,
		40.074150, 32.048653, 21.254353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070408, 32.643684, 21.878565>,  <40.549507, 32.556007, 21.335770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070408, 32.643684, 21.878565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053146, 32.264069, 21.753695>,  <40.042789, 32.036297, 21.678772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053146, 32.264069, 21.753695>,  <40.070408, 32.643684, 21.878565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053146, 32.264069, 21.753695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121782, -0.305141, 0.944488,
		-0.991619, 0.078774, -0.102409,
		-0.043152, -0.949044, -0.312177,
		40.040199, 31.979355, 21.660042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718044, 32.452957, 22.417139>,  <40.070408, 32.643684, 21.878565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718044, 32.452957, 22.417139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824661, 32.108479, 22.244030>,  <39.888630, 31.901791, 22.140165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824661, 32.108479, 22.244030>,  <39.718044, 32.452957, 22.417139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824661, 32.108479, 22.244030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087594, -0.425512, 0.900704,
		-0.959835, -0.277984, -0.037981,
		0.266543, -0.861200, -0.432771,
		39.904625, 31.850119, 22.114199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162827, 31.955006, 22.441319>,  <39.718044, 32.452957, 22.417139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162827, 31.955006, 22.441319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510490, 31.757236, 22.437136>,  <39.719090, 31.638575, 22.434626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510490, 31.757236, 22.437136>,  <39.162827, 31.955006, 22.441319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510490, 31.757236, 22.437136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250579, -0.458530, 0.852620,
		-0.426350, -0.738441, -0.522427,
		0.869158, -0.494423, -0.010457,
		39.771236, 31.608910, 22.433998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017273, 31.191622, 22.526896>,  <39.162827, 31.955006, 22.441319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017273, 31.191622, 22.526896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399826, 31.234453, 22.635609>,  <39.629356, 31.260153, 22.700836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399826, 31.234453, 22.635609>,  <39.017273, 31.191622, 22.526896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399826, 31.234453, 22.635609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171139, -0.548620, 0.818369,
		0.236736, -0.829187, -0.506365,
		0.956383, 0.107079, 0.271784,
		39.686741, 31.266577, 22.717144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052570, 30.708538, 23.118876>,  <39.017273, 31.191622, 22.526896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052570, 30.708538, 23.118876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408722, 30.887365, 23.153172>,  <39.622414, 30.994661, 23.173750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408722, 30.887365, 23.153172>,  <39.052570, 30.708538, 23.118876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408722, 30.887365, 23.153172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066316, -0.313730, 0.947194,
		0.450359, -0.837678, -0.308987,
		0.890381, 0.447068, 0.085740,
		39.675835, 31.021486, 23.178894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535583, 30.265863, 23.356859>,  <39.052570, 30.708538, 23.118876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535583, 30.265863, 23.356859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681419, 30.625624, 23.453320>,  <39.768921, 30.841480, 23.511196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681419, 30.625624, 23.453320>,  <39.535583, 30.265863, 23.356859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681419, 30.625624, 23.453320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191438, -0.325842, 0.925839,
		0.911277, -0.291387, -0.290979,
		0.364590, 0.899400, 0.241150,
		39.790798, 30.895443, 23.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059391, 30.100988, 23.832111>,  <39.535583, 30.265863, 23.356859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059391, 30.100988, 23.832111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983299, 30.491417, 23.874249>,  <39.937645, 30.725674, 23.899530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983299, 30.491417, 23.874249>,  <40.059391, 30.100988, 23.832111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983299, 30.491417, 23.874249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134215, -0.080437, 0.987683,
		0.972522, 0.202025, -0.115701,
		-0.190230, 0.976072, 0.105341,
		39.926231, 30.784239, 23.905851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602039, 30.314615, 24.289133>,  <40.059391, 30.100988, 23.832111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602039, 30.314615, 24.289133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315922, 30.593250, 24.311481>,  <40.144253, 30.760431, 24.324890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315922, 30.593250, 24.311481>,  <40.602039, 30.314615, 24.289133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315922, 30.593250, 24.311481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233020, 0.162375, 0.958820,
		0.658829, 0.698857, -0.278464,
		-0.715294, 0.696586, 0.055870,
		40.101334, 30.802227, 24.328243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894478, 30.786226, 24.693506>,  <40.602039, 30.314615, 24.289133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894478, 30.786226, 24.693506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501236, 30.856644, 24.713598>,  <40.265293, 30.898893, 24.725655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501236, 30.856644, 24.713598>,  <40.894478, 30.786226, 24.693506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501236, 30.856644, 24.713598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100460, 0.289395, 0.951923,
		0.153042, 0.940882, -0.302190,
		-0.983100, 0.176043, 0.050232,
		40.206306, 30.909456, 24.728668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796444, 31.351068, 25.165344>,  <40.894478, 30.786226, 24.693506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796444, 31.351068, 25.165344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429981, 31.191441, 25.150375>,  <40.210102, 31.095665, 25.141394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429981, 31.191441, 25.150375>,  <40.796444, 31.351068, 25.165344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429981, 31.191441, 25.150375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159538, 0.277418, 0.947411,
		-0.367700, 0.873947, -0.317826,
		-0.916157, -0.399068, -0.037421,
		40.155132, 31.071720, 25.139149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361687, 31.853769, 25.466223>,  <40.796444, 31.351068, 25.165344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361687, 31.853769, 25.466223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161835, 31.507275, 25.467573>,  <40.041924, 31.299377, 25.468384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161835, 31.507275, 25.467573>,  <40.361687, 31.853769, 25.466223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161835, 31.507275, 25.467573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317336, 0.186655, 0.929762,
		-0.806023, 0.463462, -0.368145,
		-0.499625, -0.866235, 0.003375,
		40.011948, 31.247404, 25.468586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645248, 32.049576, 25.613371>,  <40.361687, 31.853769, 25.466223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645248, 32.049576, 25.613371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715603, 31.674606, 25.733570>,  <39.757816, 31.449623, 25.805689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715603, 31.674606, 25.733570>,  <39.645248, 32.049576, 25.613371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715603, 31.674606, 25.733570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417532, 0.205398, 0.885143,
		-0.891478, -0.281148, -0.355279,
		0.175882, -0.937426, 0.300496,
		39.768368, 31.393379, 25.823719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202534, 31.878578, 26.074070>,  <39.645248, 32.049576, 25.613371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202534, 31.878578, 26.074070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458584, 31.587450, 26.172470>,  <39.612213, 31.412773, 26.231510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458584, 31.587450, 26.172470>,  <39.202534, 31.878578, 26.074070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458584, 31.587450, 26.172470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411010, -0.053901, 0.910036,
		-0.649081, -0.683648, -0.333644,
		0.640129, -0.727819, 0.246000,
		39.650623, 31.369104, 26.246269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739269, 31.392681, 26.438585>,  <39.202534, 31.878578, 26.074070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739269, 31.392681, 26.438585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111908, 31.290848, 26.542368>,  <39.335491, 31.229748, 26.604637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111908, 31.290848, 26.542368>,  <38.739269, 31.392681, 26.438585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111908, 31.290848, 26.542368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312400, -0.195822, 0.929548,
		-0.185816, -0.947023, -0.261952,
		0.931600, -0.254559, 0.259463,
		39.391388, 31.214474, 26.620205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671886, 30.900190, 26.921778>,  <38.739269, 31.392681, 26.438585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671886, 30.900190, 26.921778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024570, 31.056021, 27.028225>,  <39.236179, 31.149519, 27.092093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024570, 31.056021, 27.028225>,  <38.671886, 30.900190, 26.921778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024570, 31.056021, 27.028225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218502, -0.162729, 0.962173,
		0.418142, -0.906505, -0.058357,
		0.881711, 0.389574, 0.266117,
		39.289085, 31.172894, 27.108061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892750, 30.389336, 27.345398>,  <38.671886, 30.900190, 26.921778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892750, 30.389336, 27.345398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147301, 30.693432, 27.397646>,  <39.300030, 30.875891, 27.428995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147301, 30.693432, 27.397646>,  <38.892750, 30.389336, 27.345398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147301, 30.693432, 27.397646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078327, -0.232139, 0.969524,
		0.767394, -0.606748, -0.207274,
		0.636373, 0.760242, 0.130618,
		39.338211, 30.921505, 27.436831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480232, 30.105295, 27.730089>,  <38.892750, 30.389336, 27.345398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480232, 30.105295, 27.730089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499996, 30.498466, 27.800978>,  <39.511856, 30.734369, 27.843512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499996, 30.498466, 27.800978>,  <39.480232, 30.105295, 27.730089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499996, 30.498466, 27.800978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273009, -0.183972, 0.944256,
		0.960741, 0.001727, -0.277439,
		0.049411, 0.982930, 0.177221,
		39.514820, 30.793346, 27.854143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099449, 30.257586, 28.240276>,  <39.480232, 30.105295, 27.730089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099449, 30.257586, 28.240276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834435, 30.555582, 28.271362>,  <39.675426, 30.734379, 28.290014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834435, 30.555582, 28.271362>,  <40.099449, 30.257586, 28.240276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834435, 30.555582, 28.271362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177312, 0.055185, 0.982606,
		0.727743, 0.664789, -0.168657,
		-0.662533, 0.744990, 0.077715,
		39.635674, 30.779079, 28.294676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306160, 30.742437, 28.600531>,  <40.099449, 30.257586, 28.240276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306160, 30.742437, 28.600531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928543, 30.873943, 28.611055>,  <39.701973, 30.952847, 28.617371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928543, 30.873943, 28.611055>,  <40.306160, 30.742437, 28.600531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928543, 30.873943, 28.611055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171556, 0.421348, 0.890525,
		0.281686, 0.845210, -0.454174,
		-0.944045, 0.328764, 0.026313,
		39.645329, 30.972572, 28.618950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305866, 31.474119, 28.831146>,  <40.306160, 30.742437, 28.600531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305866, 31.474119, 28.831146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932304, 31.352247, 28.905981>,  <39.708168, 31.279123, 28.950882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932304, 31.352247, 28.905981>,  <40.305866, 31.474119, 28.831146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932304, 31.352247, 28.905981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113067, 0.244735, 0.962975,
		-0.339185, 0.920476, -0.194109,
		-0.933900, -0.304680, 0.187086,
		39.652134, 31.260843, 28.962107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084866, 31.932098, 29.306755>,  <40.305866, 31.474119, 28.831146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084866, 31.932098, 29.306755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826065, 31.627409, 29.320442>,  <39.670784, 31.444595, 29.328655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826065, 31.627409, 29.320442>,  <40.084866, 31.932098, 29.306755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826065, 31.627409, 29.320442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079452, -0.022716, 0.996580,
		-0.758339, 0.647506, 0.075218,
		-0.647000, -0.761722, 0.034220,
		39.631966, 31.398891, 29.330708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689156, 32.113228, 29.873096>,  <40.084866, 31.932098, 29.306755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689156, 32.113228, 29.873096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659584, 31.717379, 29.823807>,  <39.641842, 31.479870, 29.794233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659584, 31.717379, 29.823807>,  <39.689156, 32.113228, 29.873096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659584, 31.717379, 29.823807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144507, -0.132887, 0.980540,
		-0.986739, 0.054681, 0.152831,
		-0.073926, -0.989622, -0.123223,
		39.637405, 31.420492, 29.786840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368832, 31.836475, 30.515551>,  <39.689156, 32.113228, 29.873096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368832, 31.836475, 30.515551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570953, 31.539558, 30.339520>,  <39.692226, 31.361408, 30.233900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570953, 31.539558, 30.339520>,  <39.368832, 31.836475, 30.515551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570953, 31.539558, 30.339520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181046, -0.407435, 0.895109,
		-0.843736, -0.531976, -0.071489,
		0.505303, -0.742292, -0.440080,
		39.722546, 31.316872, 30.207495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080921, 31.287022, 30.719639>,  <39.368832, 31.836475, 30.515551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080921, 31.287022, 30.719639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454327, 31.190056, 30.613972>,  <39.678371, 31.131876, 30.550571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454327, 31.190056, 30.613972>,  <39.080921, 31.287022, 30.719639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454327, 31.190056, 30.613972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147191, -0.412719, 0.898887,
		-0.326928, -0.878008, -0.349599,
		0.933517, -0.242413, -0.264165,
		39.734383, 31.117331, 30.534721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077606, 30.564749, 30.867434>,  <39.080921, 31.287022, 30.719639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077606, 30.564749, 30.867434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455658, 30.695278, 30.873783>,  <39.682487, 30.773596, 30.877592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455658, 30.695278, 30.873783>,  <39.077606, 30.564749, 30.867434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455658, 30.695278, 30.873783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145551, -0.464063, 0.873762,
		0.292495, -0.823504, -0.486095,
		0.945125, 0.326323, 0.015874,
		39.739197, 30.793175, 30.878546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346272, 30.037857, 31.208979>,  <39.077606, 30.564749, 30.867434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346272, 30.037857, 31.208979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605637, 30.339607, 31.249908>,  <39.761257, 30.520658, 31.274467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605637, 30.339607, 31.249908>,  <39.346272, 30.037857, 31.208979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605637, 30.339607, 31.249908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296260, -0.373863, 0.878895,
		0.701275, -0.539575, -0.465911,
		0.648416, 0.754378, 0.102327,
		39.800163, 30.565920, 31.280607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000465, 29.735100, 31.112711>,  <39.346272, 30.037857, 31.208979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000465, 29.735100, 31.112711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023472, 30.076445, 31.319965>,  <40.037273, 30.281252, 31.444317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023472, 30.076445, 31.319965>,  <40.000465, 29.735100, 31.112711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023472, 30.076445, 31.319965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422114, -0.491106, 0.761993,
		0.904716, 0.174889, -0.388461,
		0.057511, 0.853363, 0.518135,
		40.040726, 30.332453, 31.475407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612583, 29.711138, 31.420567>,  <40.000465, 29.735100, 31.112711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612583, 29.711138, 31.420567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448814, 30.008333, 31.632357>,  <40.350552, 30.186651, 31.759430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448814, 30.008333, 31.632357>,  <40.612583, 29.711138, 31.420567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448814, 30.008333, 31.632357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407347, -0.370419, 0.834780,
		0.816359, 0.557457, -0.150996,
		-0.409422, 0.742988, 0.529473,
		40.325989, 30.231230, 31.791199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167416, 30.038845, 31.778481>,  <40.612583, 29.711138, 31.420567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167416, 30.038845, 31.778481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835979, 30.116848, 31.988400>,  <40.637119, 30.163649, 32.114349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835979, 30.116848, 31.988400>,  <41.167416, 30.038845, 31.778481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835979, 30.116848, 31.988400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454723, -0.312412, 0.834042,
		0.326595, 0.929716, 0.170188,
		-0.828591, 0.195006, 0.524795,
		40.587402, 30.175350, 32.145840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371574, 30.194738, 32.418728>,  <41.167416, 30.038845, 31.778481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371574, 30.194738, 32.418728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990623, 30.106770, 32.503220>,  <40.762054, 30.053988, 32.553913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990623, 30.106770, 32.503220>,  <41.371574, 30.194738, 32.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990623, 30.106770, 32.503220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283885, -0.386586, 0.877474,
		-0.111318, 0.895648, 0.430607,
		-0.952375, -0.219922, 0.211228,
		40.704910, 30.040792, 32.566589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308609, 30.408939, 33.130127>,  <41.371574, 30.194738, 32.418728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308609, 30.408939, 33.130127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011063, 30.150955, 33.060059>,  <40.832535, 29.996164, 33.018017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011063, 30.150955, 33.060059>,  <41.308609, 30.408939, 33.130127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011063, 30.150955, 33.060059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250160, -0.511748, 0.821908,
		-0.619741, 0.567572, 0.542017,
		-0.743869, -0.644961, -0.175167,
		40.787903, 29.957466, 33.007507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855324, 30.261585, 33.783939>,  <41.308609, 30.408939, 33.130127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855324, 30.261585, 33.783939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846584, 29.950972, 33.532063>,  <40.841339, 29.764603, 33.380936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846584, 29.950972, 33.532063>,  <40.855324, 30.261585, 33.783939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846584, 29.950972, 33.532063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288044, -0.608026, 0.739821,
		-0.957368, -0.165215, 0.236962,
		-0.021850, -0.776536, -0.629694,
		40.840031, 29.718010, 33.343155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521942, 29.671509, 34.107681>,  <40.855324, 30.261585, 33.783939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521942, 29.671509, 34.107681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783348, 29.541233, 33.834377>,  <40.940193, 29.463068, 33.670395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783348, 29.541233, 33.834377>,  <40.521942, 29.671509, 34.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783348, 29.541233, 33.834377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386502, -0.632550, 0.671191,
		-0.650794, -0.702715, -0.287504,
		0.653517, -0.325686, -0.683260,
		40.979401, 29.443527, 33.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376488, 28.926039, 34.039318>,  <40.521942, 29.671509, 34.107681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376488, 28.926039, 34.039318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736771, 29.014456, 33.889721>,  <40.952938, 29.067507, 33.799961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736771, 29.014456, 33.889721>,  <40.376488, 28.926039, 34.039318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736771, 29.014456, 33.889721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434424, -0.464079, 0.771950,
		-0.002929, -0.857771, -0.514024,
		0.900704, 0.221043, -0.373995,
		41.006981, 29.080769, 33.777523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770039, 28.359631, 34.228531>,  <40.376488, 28.926039, 34.039318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770039, 28.359631, 34.228531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071030, 28.603340, 34.128475>,  <41.251625, 28.749565, 34.068439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071030, 28.603340, 34.128475>,  <40.770039, 28.359631, 34.228531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071030, 28.603340, 34.128475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618799, -0.523940, 0.585298,
		0.225545, -0.595210, -0.771268,
		0.752474, 0.609272, -0.250143,
		41.296772, 28.786121, 34.053432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409935, 27.937288, 33.957649>,  <40.770039, 28.359631, 34.228531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409935, 27.937288, 33.957649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544540, 28.274946, 34.124588>,  <41.625301, 28.477541, 34.224751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544540, 28.274946, 34.124588>,  <41.409935, 27.937288, 33.957649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544540, 28.274946, 34.124588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730745, -0.513623, 0.449671,
		0.593947, 0.153656, -0.789694,
		0.336510, 0.844145, 0.417348,
		41.645493, 28.528191, 34.249794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196342, 27.845293, 33.918255>,  <41.409935, 27.937288, 33.957649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196342, 27.845293, 33.918255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495373, 27.581669, 33.885357>,  <42.674793, 27.423494, 33.865620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495373, 27.581669, 33.885357>,  <42.196342, 27.845293, 33.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495373, 27.581669, 33.885357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617695, 0.644403, 0.450775,
		-0.244088, -0.387792, 0.888841,
		0.747579, -0.659061, -0.082246,
		42.719646, 27.383951, 33.860683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585770, 27.747896, 34.531212>,  <42.196342, 27.845293, 33.918255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585770, 27.747896, 34.531212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825466, 27.705664, 34.213783>,  <42.969284, 27.680325, 34.023327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825466, 27.705664, 34.213783>,  <42.585770, 27.747896, 34.531212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825466, 27.705664, 34.213783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710490, 0.526950, 0.466398,
		0.368929, -0.843312, 0.390788,
		0.599245, -0.105583, -0.793573,
		43.005241, 27.673988, 33.975712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160000, 27.684301, 34.844372>,  <42.585770, 27.747896, 34.531212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160000, 27.684301, 34.844372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230560, 27.804226, 34.469353>,  <43.272896, 27.876181, 34.244343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230560, 27.804226, 34.469353>,  <43.160000, 27.684301, 34.844372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230560, 27.804226, 34.469353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828614, 0.468886, 0.305850,
		0.531301, -0.830818, -0.165713,
		0.176405, 0.299811, -0.937547,
		43.283482, 27.894169, 34.188087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378910, 28.454557, 34.953899>,  <43.160000, 27.684301, 34.844372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378910, 28.454557, 34.953899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626545, 28.303761, 35.229465>,  <43.775127, 28.213284, 35.394806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626545, 28.303761, 35.229465>,  <43.378910, 28.454557, 34.953899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626545, 28.303761, 35.229465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785056, 0.319807, -0.530482,
		-0.020333, 0.869253, 0.493949,
		0.619092, -0.376991, 0.688915,
		43.812271, 28.190662, 35.436138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741516, 28.245762, 34.398197>,  <43.378910, 28.454557, 34.953899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741516, 28.245762, 34.398197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638302, 28.618074, 34.294613>,  <43.576374, 28.841463, 34.232460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638302, 28.618074, 34.294613>,  <43.741516, 28.245762, 34.398197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638302, 28.618074, 34.294613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925786, 0.314865, 0.209239,
		0.276294, -0.185753, -0.942952,
		-0.258036, 0.930782, -0.258963,
		43.560890, 28.897308, 34.216923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241951, 28.427843, 33.897850>,  <43.741516, 28.245762, 34.398197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241951, 28.427843, 33.897850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091171, 28.749296, 34.082062>,  <44.000702, 28.942167, 34.192589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091171, 28.749296, 34.082062>,  <44.241951, 28.427843, 33.897850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091171, 28.749296, 34.082062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925671, 0.344188, 0.157061,
		-0.032289, 0.485502, -0.873639,
		-0.376949, 0.803631, 0.460529,
		43.978088, 28.990385, 34.220219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465721, 29.106707, 33.636913>,  <44.241951, 28.427843, 33.897850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465721, 29.106707, 33.636913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388931, 29.151403, 34.026920>,  <44.342857, 29.178221, 34.260925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388931, 29.151403, 34.026920>,  <44.465721, 29.106707, 33.636913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388931, 29.151403, 34.026920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913766, 0.382782, 0.136051,
		-0.358017, 0.917056, -0.175590,
		-0.191979, 0.111740, 0.975017,
		44.331337, 29.184925, 34.319424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563339, 29.787851, 33.976696>,  <44.465721, 29.106707, 33.636913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563339, 29.787851, 33.976696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637024, 29.509388, 34.254234>,  <44.681236, 29.342310, 34.420757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637024, 29.509388, 34.254234>,  <44.563339, 29.787851, 33.976696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637024, 29.509388, 34.254234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830491, 0.487807, 0.268942,
		-0.525691, 0.526694, 0.668014,
		0.184212, -0.696160, 0.693850,
		44.692287, 29.300539, 34.462391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606766, 29.803221, 33.189301>,  <44.563339, 29.787851, 33.976696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606766, 29.803221, 33.189301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276581, 29.817566, 32.963970>,  <44.078472, 29.826174, 32.828773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276581, 29.817566, 32.963970>,  <44.606766, 29.803221, 33.189301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276581, 29.817566, 32.963970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436069, -0.593169, -0.676753,
		-0.358416, -0.804279, 0.473998,
		-0.825458, 0.035863, -0.563322,
		44.028942, 29.828325, 32.794971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395718, 29.101093, 32.880096>,  <44.606766, 29.803221, 33.189301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395718, 29.101093, 32.880096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290176, 29.404442, 32.641685>,  <44.226852, 29.586451, 32.498638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290176, 29.404442, 32.641685>,  <44.395718, 29.101093, 32.880096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290176, 29.404442, 32.641685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380794, -0.485834, -0.786741,
		-0.886214, -0.434551, -0.160594,
		-0.263857, 0.758373, -0.596027,
		44.211018, 29.631954, 32.462875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205391, 28.812159, 32.344139>,  <44.395718, 29.101093, 32.880096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205391, 28.812159, 32.344139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244934, 29.180710, 32.193783>,  <44.268658, 29.401840, 32.103569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244934, 29.180710, 32.193783>,  <44.205391, 28.812159, 32.344139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244934, 29.180710, 32.193783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271906, -0.388377, -0.880472,
		-0.957233, -0.015169, -0.288920,
		0.098854, 0.921376, -0.375892,
		44.274590, 29.457123, 32.081017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873192, 28.734051, 31.691633>,  <44.205391, 28.812159, 32.344139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873192, 28.734051, 31.691633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141594, 29.030115, 31.674118>,  <44.302635, 29.207754, 31.663609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141594, 29.030115, 31.674118>,  <43.873192, 28.734051, 31.691633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141594, 29.030115, 31.674118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190567, -0.229229, -0.954536,
		-0.716548, 0.632151, -0.294864,
		0.671002, 0.740162, -0.043786,
		44.342896, 29.252163, 31.660982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882469, 28.910006, 31.001928>,  <43.873192, 28.734051, 31.691633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882469, 28.910006, 31.001928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219379, 29.086843, 31.125301>,  <44.421524, 29.192945, 31.199326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219379, 29.086843, 31.125301>,  <43.882469, 28.910006, 31.001928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219379, 29.086843, 31.125301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468969, -0.318837, -0.823657,
		-0.265793, 0.838389, -0.475875,
		0.842272, 0.442093, 0.308434,
		44.472061, 29.219471, 31.217831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192009, 29.305586, 30.459948>,  <43.882469, 28.910006, 31.001928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192009, 29.305586, 30.459948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485733, 29.193081, 30.707069>,  <44.661968, 29.125578, 30.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485733, 29.193081, 30.707069>,  <44.192009, 29.305586, 30.459948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485733, 29.193081, 30.707069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512545, -0.367000, -0.776279,
		0.445072, 0.886681, -0.125331,
		0.734308, -0.281263, 0.617805,
		44.706024, 29.108702, 30.892410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749008, 29.634964, 30.247435>,  <44.192009, 29.305586, 30.459948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749008, 29.634964, 30.247435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909317, 29.327280, 30.446510>,  <45.005505, 29.142670, 30.565956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909317, 29.327280, 30.446510>,  <44.749008, 29.634964, 30.247435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909317, 29.327280, 30.446510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407154, -0.337096, -0.848877,
		0.820734, 0.542846, 0.178087,
		0.400777, -0.769211, 0.497688,
		45.029549, 29.096518, 30.595818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489147, 29.677946, 30.176126>,  <44.749008, 29.634964, 30.247435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489147, 29.677946, 30.176126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380096, 29.301834, 30.257662>,  <45.314667, 29.076166, 30.306583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380096, 29.301834, 30.257662>,  <45.489147, 29.677946, 30.176126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380096, 29.301834, 30.257662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529890, -0.323577, -0.783910,
		0.803052, -0.105701, 0.586460,
		-0.272625, -0.940279, 0.203839,
		45.298309, 29.019751, 30.318813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116982, 29.192976, 30.027628>,  <45.489147, 29.677946, 30.176126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116982, 29.192976, 30.027628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793114, 28.969276, 29.956446>,  <45.598793, 28.835056, 29.913736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793114, 28.969276, 29.956446>,  <46.116982, 29.192976, 30.027628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793114, 28.969276, 29.956446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431654, -0.362044, -0.826196,
		0.397623, -0.745763, 0.534540,
		-0.809673, -0.559251, -0.177955,
		45.550213, 28.801500, 29.903059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683113, 29.117214, 29.497192>,  <46.116982, 29.192976, 30.027628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683113, 29.117214, 29.497192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409889, 29.047270, 29.213543>,  <45.245956, 29.005302, 29.043354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409889, 29.047270, 29.213543>,  <45.683113, 29.117214, 29.497192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409889, 29.047270, 29.213543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655398, 0.575218, 0.489466,
		0.322310, 0.799091, -0.507513,
		-0.683059, -0.174863, -0.709122,
		45.204971, 28.994810, 29.000807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137123, 28.542770, 29.300936>,  <45.683113, 29.117214, 29.497192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137123, 28.542770, 29.300936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194584, 28.235010, 29.549896>,  <46.229061, 28.050354, 29.699272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194584, 28.235010, 29.549896>,  <46.137123, 28.542770, 29.300936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194584, 28.235010, 29.549896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598665, 0.433234, 0.673728,
		-0.788013, -0.469392, -0.398380,
		0.143651, -0.769402, 0.622402,
		46.237679, 28.004189, 29.736616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444950, 28.087036, 29.480839>,  <46.137123, 28.542770, 29.300936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444950, 28.087036, 29.480839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715523, 28.106293, 29.774809>,  <45.877869, 28.117847, 29.951191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715523, 28.106293, 29.774809>,  <45.444950, 28.087036, 29.480839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715523, 28.106293, 29.774809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684841, 0.408252, 0.603591,
		-0.270977, -0.911599, 0.309126,
		0.676435, 0.048143, 0.734927,
		45.918453, 28.120735, 29.995287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130173, 27.939724, 30.140158>,  <45.444950, 28.087036, 29.480839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130173, 27.939724, 30.140158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451202, 28.166204, 30.215298>,  <45.643822, 28.302094, 30.260382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451202, 28.166204, 30.215298>,  <45.130173, 27.939724, 30.140158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451202, 28.166204, 30.215298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542787, 0.562452, 0.623722,
		0.247495, -0.602548, 0.758737,
		0.802576, 0.566201, 0.187851,
		45.691975, 28.336065, 30.271652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238670, 27.933502, 30.896116>,  <45.130173, 27.939724, 30.140158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238670, 27.933502, 30.896116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378220, 28.268353, 30.727591>,  <45.461948, 28.469263, 30.626474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378220, 28.268353, 30.727591>,  <45.238670, 27.933502, 30.896116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378220, 28.268353, 30.727591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619224, 0.543357, 0.566855,
		0.703453, 0.063125, 0.707933,
		0.348877, 0.837125, -0.421315,
		45.482883, 28.519489, 30.601196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480423, 28.320753, 31.423733>,  <45.238670, 27.933502, 30.896116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480423, 28.320753, 31.423733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337029, 28.544693, 31.124920>,  <45.250992, 28.679056, 30.945631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337029, 28.544693, 31.124920>,  <45.480423, 28.320753, 31.423733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337029, 28.544693, 31.124920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578013, 0.495268, 0.648545,
		0.733068, 0.664289, 0.146053,
		-0.358486, 0.559848, -0.747033,
		45.229485, 28.712646, 30.900810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753563, 28.912443, 31.580173>,  <45.480423, 28.320753, 31.423733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753563, 28.912443, 31.580173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401306, 28.946751, 31.393793>,  <45.189953, 28.967335, 31.281965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401306, 28.946751, 31.393793>,  <45.753563, 28.912443, 31.580173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401306, 28.946751, 31.393793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272776, 0.712332, 0.646665,
		0.387378, 0.696582, -0.603913,
		-0.880642, 0.085771, -0.465953,
		45.137112, 28.972483, 31.254007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553978, 29.652399, 31.687174>,  <45.753563, 28.912443, 31.580173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553978, 29.652399, 31.687174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211456, 29.503008, 31.544485>,  <45.005943, 29.413374, 31.458872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211456, 29.503008, 31.544485>,  <45.553978, 29.652399, 31.687174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211456, 29.503008, 31.544485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508724, 0.729082, 0.457863,
		0.089078, 0.573545, -0.814317,
		-0.856309, -0.373477, -0.356721,
		44.954563, 29.390965, 31.437469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150738, 30.279369, 31.429691>,  <45.553978, 29.652399, 31.687174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150738, 30.279369, 31.429691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901505, 29.975359, 31.503576>,  <44.751965, 29.792952, 31.547907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901505, 29.975359, 31.503576>,  <45.150738, 30.279369, 31.429691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901505, 29.975359, 31.503576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548097, 0.592759, 0.590107,
		-0.557989, 0.266447, -0.785910,
		-0.623087, -0.760028, 0.184715,
		44.714577, 29.747351, 31.558990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500660, 30.626308, 31.619389>,  <45.150738, 30.279369, 31.429691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500660, 30.626308, 31.619389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409779, 30.260689, 31.753784>,  <44.355251, 30.041317, 31.834421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409779, 30.260689, 31.753784>,  <44.500660, 30.626308, 31.619389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409779, 30.260689, 31.753784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572921, 0.404448, 0.712870,
		-0.787490, -0.030531, -0.615570,
		-0.227202, -0.914051, 0.335990,
		44.341618, 29.986473, 31.854582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740078, 30.596844, 31.701801>,  <44.500660, 30.626308, 31.619389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740078, 30.596844, 31.701801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909725, 30.321781, 31.937513>,  <44.011513, 30.156744, 32.078941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909725, 30.321781, 31.937513>,  <43.740078, 30.596844, 31.701801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909725, 30.321781, 31.937513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595324, 0.278641, 0.753623,
		-0.682432, -0.670439, -0.291202,
		0.424117, -0.687656, 0.589282,
		44.036961, 30.115484, 32.114300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312748, 30.115967, 31.977571>,  <43.740078, 30.596844, 31.701801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312748, 30.115967, 31.977571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625771, 30.183729, 32.217209>,  <43.813583, 30.224386, 32.360992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625771, 30.183729, 32.217209>,  <43.312748, 30.115967, 31.977571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625771, 30.183729, 32.217209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615479, 0.355459, 0.703444,
		-0.093785, -0.919212, 0.382432,
		0.782553, 0.169406, 0.599092,
		43.860538, 30.234550, 32.396938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120914, 29.956093, 32.709949>,  <43.312748, 30.115967, 31.977571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120914, 29.956093, 32.709949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463287, 30.160124, 32.743912>,  <43.668709, 30.282541, 32.764290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463287, 30.160124, 32.743912>,  <43.120914, 29.956093, 32.709949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463287, 30.160124, 32.743912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372698, 0.494720, 0.785078,
		0.358444, -0.703616, 0.613549,
		0.855929, 0.510075, 0.084906,
		43.720066, 30.313147, 32.769382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496037, 29.979208, 33.370613>,  <43.120914, 29.956093, 32.709949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496037, 29.979208, 33.370613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524975, 30.314917, 33.155060>,  <43.542339, 30.516342, 33.025730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524975, 30.314917, 33.155060>,  <43.496037, 29.979208, 33.370613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524975, 30.314917, 33.155060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298256, 0.533778, 0.791280,
		0.951740, 0.103479, 0.288934,
		0.072346, 0.839269, -0.538881,
		43.546680, 30.566698, 32.993397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995766, 30.493807, 33.640671>,  <43.496037, 29.979208, 33.370613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995766, 30.493807, 33.640671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675751, 30.652979, 33.461071>,  <43.483742, 30.748482, 33.353313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675751, 30.652979, 33.461071>,  <43.995766, 30.493807, 33.640671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675751, 30.652979, 33.461071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212655, 0.511709, 0.832425,
		0.561001, 0.761451, -0.324764,
		-0.800035, 0.397928, -0.448996,
		43.435741, 30.772358, 33.326374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930420, 31.097538, 33.898945>,  <43.995766, 30.493807, 33.640671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930420, 31.097538, 33.898945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572666, 31.099188, 33.720032>,  <43.358013, 31.100178, 33.612686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572666, 31.099188, 33.720032>,  <43.930420, 31.097538, 33.898945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572666, 31.099188, 33.720032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380917, 0.517157, 0.766453,
		0.234475, 0.855880, -0.460966,
		-0.894385, 0.004125, -0.447280,
		43.304352, 31.100426, 33.585846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529167, 31.836359, 33.783131>,  <43.930420, 31.097538, 33.898945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529167, 31.836359, 33.783131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269859, 31.533463, 33.814964>,  <43.114277, 31.351725, 33.834064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269859, 31.533463, 33.814964>,  <43.529167, 31.836359, 33.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269859, 31.533463, 33.814964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422014, 0.444335, 0.790234,
		-0.633762, 0.478696, -0.607615,
		-0.648267, -0.757242, 0.079586,
		43.075378, 31.306290, 33.838840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790150, 32.116440, 33.882118>,  <43.529167, 31.836359, 33.783131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790150, 32.116440, 33.882118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817814, 31.759924, 34.061375>,  <42.834412, 31.546015, 34.168926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817814, 31.759924, 34.061375>,  <42.790150, 32.116440, 33.882118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817814, 31.759924, 34.061375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323478, 0.404907, 0.855227,
		-0.943705, -0.204107, -0.260309,
		0.069156, -0.891286, 0.448137,
		42.838562, 31.492538, 34.195816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147331, 31.692196, 34.127254>,  <42.790150, 32.116440, 33.882118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147331, 31.692196, 34.127254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441948, 31.632330, 34.391102>,  <42.618717, 31.596411, 34.549412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441948, 31.632330, 34.391102>,  <42.147331, 31.692196, 34.127254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441948, 31.632330, 34.391102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639230, 0.164761, 0.751158,
		-0.221103, -0.974912, 0.025683,
		0.736545, -0.149666, 0.659622,
		42.662910, 31.587431, 34.588989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994865, 31.132439, 34.651070>,  <42.147331, 31.692196, 34.127254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994865, 31.132439, 34.651070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257580, 31.360790, 34.848141>,  <42.415207, 31.497801, 34.966385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257580, 31.360790, 34.848141>,  <41.994865, 31.132439, 34.651070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257580, 31.360790, 34.848141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611630, 0.021144, 0.790861,
		0.441068, -0.820763, 0.363053,
		0.656786, 0.570878, 0.492677,
		42.454617, 31.532053, 34.995945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170780, 30.803194, 35.369671>,  <41.994865, 31.132439, 34.651070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170780, 30.803194, 35.369671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218468, 31.200249, 35.361126>,  <42.247082, 31.438482, 35.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218468, 31.200249, 35.361126>,  <42.170780, 30.803194, 35.369671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218468, 31.200249, 35.361126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784082, 0.107331, 0.611307,
		0.609100, -0.056129, 0.791105,
		0.119222, 0.992638, -0.021366,
		42.254234, 31.498039, 35.354717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126102, 31.098488, 36.086906>,  <42.170780, 30.803194, 35.369671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126102, 31.098488, 36.086906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070129, 31.418152, 35.853065>,  <42.036545, 31.609951, 35.712761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070129, 31.418152, 35.853065>,  <42.126102, 31.098488, 36.086906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070129, 31.418152, 35.853065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681927, 0.350290, 0.642085,
		0.717909, 0.488507, 0.495951,
		-0.139937, 0.799161, -0.584602,
		42.028149, 31.657900, 35.677685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226143, 31.692490, 36.533962>,  <42.126102, 31.098488, 36.086906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226143, 31.692490, 36.533962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000717, 31.821228, 36.229645>,  <41.865463, 31.898472, 36.047054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000717, 31.821228, 36.229645>,  <42.226143, 31.692490, 36.533962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000717, 31.821228, 36.229645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710842, 0.280241, 0.645111,
		0.420832, 0.904367, 0.070848,
		-0.563563, 0.321845, -0.760797,
		41.831650, 31.917782, 36.001404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985649, 32.421940, 36.417458>,  <42.226143, 31.692490, 36.533962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985649, 32.421940, 36.417458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708302, 32.174618, 36.269432>,  <41.541893, 32.026226, 36.180618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708302, 32.174618, 36.269432>,  <41.985649, 32.421940, 36.417458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708302, 32.174618, 36.269432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700486, 0.457903, 0.547398,
		-0.169005, 0.638771, -0.750606,
		-0.693367, -0.618302, -0.370062,
		41.500290, 31.989128, 36.158413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919975, 33.163345, 36.453136>,  <41.985649, 32.421940, 36.417458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919975, 33.163345, 36.453136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567413, 33.091618, 36.278339>,  <41.355877, 33.048580, 36.173462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567413, 33.091618, 36.278339>,  <41.919975, 33.163345, 36.453136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567413, 33.091618, 36.278339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179219, 0.729001, -0.660635,
		0.437034, -0.660607, -0.610410,
		-0.881409, -0.179323, -0.436991,
		41.302990, 33.037819, 36.147243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981857, 33.248329, 35.703674>,  <41.919975, 33.163345, 36.453136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981857, 33.248329, 35.703674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584118, 33.266769, 35.741936>,  <41.345474, 33.277832, 35.764893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584118, 33.266769, 35.741936>,  <41.981857, 33.248329, 35.703674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584118, 33.266769, 35.741936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056458, 0.533434, -0.843955,
		-0.089931, -0.844584, -0.527816,
		-0.994347, 0.046098, 0.095656,
		41.285812, 33.280598, 35.770634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636978, 32.940647, 35.066704>,  <41.981857, 33.248329, 35.703674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636978, 32.940647, 35.066704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471954, 33.249157, 35.260582>,  <41.372940, 33.434261, 35.376907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471954, 33.249157, 35.260582>,  <41.636978, 32.940647, 35.066704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471954, 33.249157, 35.260582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106718, 0.569349, -0.815140,
		-0.904657, -0.284570, -0.317200,
		-0.412562, 0.771273, 0.484697,
		41.348186, 33.480537, 35.405991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174850, 33.161907, 34.544384>,  <41.636978, 32.940647, 35.066704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174850, 33.161907, 34.544384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254200, 33.485264, 34.766071>,  <41.301807, 33.679276, 34.899082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254200, 33.485264, 34.766071>,  <41.174850, 33.161907, 34.544384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254200, 33.485264, 34.766071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681948, 0.292306, -0.670451,
		-0.703986, 0.510944, -0.493295,
		0.198370, 0.808389, 0.554216,
		41.313709, 33.727779, 34.932335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021133, 33.815708, 34.294052>,  <41.174850, 33.161907, 34.544384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021133, 33.815708, 34.294052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357594, 33.758274, 34.502609>,  <41.559467, 33.723816, 34.627743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357594, 33.758274, 34.502609>,  <41.021133, 33.815708, 34.294052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357594, 33.758274, 34.502609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540676, 0.202280, -0.816549,
		0.011774, 0.968745, 0.247778,
		0.841148, -0.143582, 0.521396,
		41.609940, 33.715199, 34.659027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460045, 34.436668, 34.356285>,  <41.021133, 33.815708, 34.294052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460045, 34.436668, 34.356285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651527, 34.085491, 34.359032>,  <41.766418, 33.874783, 34.360680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651527, 34.085491, 34.359032>,  <41.460045, 34.436668, 34.356285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651527, 34.085491, 34.359032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358592, 0.188377, -0.914290,
		0.801405, 0.440140, 0.405002,
		0.478709, -0.877947, 0.006865,
		41.795139, 33.822105, 34.361092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057014, 34.522758, 35.001427>,  <41.460045, 34.436668, 34.356285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057014, 34.522758, 35.001427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182434, 34.832745, 35.220924>,  <41.257687, 35.018738, 35.352623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182434, 34.832745, 35.220924>,  <41.057014, 34.522758, 35.001427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182434, 34.832745, 35.220924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947569, 0.217825, 0.233807,
		0.061663, -0.593280, 0.802631,
		0.313546, 0.774965, 0.548742,
		41.276497, 35.065235, 35.385548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711178, 34.706238, 35.243061>,  <41.057014, 34.522758, 35.001427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711178, 34.706238, 35.243061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652027, 35.021378, 35.482204>,  <41.616535, 35.210461, 35.625690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652027, 35.021378, 35.482204>,  <41.711178, 34.706238, 35.243061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652027, 35.021378, 35.482204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939190, -0.077570, 0.334524,
		0.309929, 0.610968, -0.728466,
		-0.147876, 0.787846, 0.597856,
		41.607666, 35.257732, 35.661560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261841, 35.259285, 35.117203>,  <41.711178, 34.706238, 35.243061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261841, 35.259285, 35.117203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129562, 35.283165, 35.493942>,  <42.050198, 35.297493, 35.719986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129562, 35.283165, 35.493942>,  <42.261841, 35.259285, 35.117203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129562, 35.283165, 35.493942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863932, -0.382507, 0.327581,
		0.379820, 0.922022, 0.074916,
		-0.330693, 0.059700, 0.941848,
		42.030354, 35.301075, 35.776497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765659, 35.587055, 35.605469>,  <42.261841, 35.259285, 35.117203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765659, 35.587055, 35.605469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658993, 35.224316, 35.736015>,  <42.594994, 35.006672, 35.814342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658993, 35.224316, 35.736015>,  <42.765659, 35.587055, 35.605469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658993, 35.224316, 35.736015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913516, -0.345763, -0.214329,
		0.307208, 0.240984, 0.920625,
		-0.266669, -0.906849, 0.326364,
		42.578991, 34.952263, 35.833923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311207, 35.379398, 36.030888>,  <42.765659, 35.587055, 35.605469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311207, 35.379398, 36.030888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113125, 35.052654, 35.912552>,  <42.994278, 34.856609, 35.841549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113125, 35.052654, 35.912552>,  <43.311207, 35.379398, 36.030888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113125, 35.052654, 35.912552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868718, -0.461599, -0.179596,
		0.010144, -0.345939, 0.938202,
		-0.495202, -0.816855, -0.295841,
		42.964565, 34.807598, 35.823799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470493, 34.684490, 36.208248>,  <43.311207, 35.379398, 36.030888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470493, 34.684490, 36.208248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316349, 34.649220, 35.840832>,  <43.223862, 34.628056, 35.620380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316349, 34.649220, 35.840832>,  <43.470493, 34.684490, 36.208248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316349, 34.649220, 35.840832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800222, -0.527618, -0.285066,
		-0.459505, -0.844893, 0.273883,
		-0.385356, -0.088178, -0.918545,
		43.200741, 34.622765, 35.565269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476589, 33.936440, 36.211224>,  <43.470493, 34.684490, 36.208248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476589, 33.936440, 36.211224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526676, 34.156582, 35.881027>,  <43.556728, 34.288666, 35.682911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526676, 34.156582, 35.881027>,  <43.476589, 33.936440, 36.211224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526676, 34.156582, 35.881027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910153, -0.394895, -0.125216,
		-0.394895, -0.735643, -0.550352,
		0.125216, 0.550352, -0.825490,
		43.564240, 34.321686, 35.633381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994160, 33.669304, 35.934151>,  <43.476589, 33.936440, 36.211224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994160, 33.669304, 35.934151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960415, 33.983948, 35.689487>,  <43.940166, 34.172733, 35.542690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960415, 33.983948, 35.689487>,  <43.994160, 33.669304, 35.934151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960415, 33.983948, 35.689487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966791, -0.084000, -0.241371,
		-0.241245, -0.611704, -0.753405,
		-0.084362, 0.786614, -0.611654,
		43.935108, 34.219933, 35.505993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398300, 33.507904, 35.315735>,  <43.994160, 33.669304, 35.934151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398300, 33.507904, 35.315735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341236, 33.899113, 35.376549>,  <44.306995, 34.133839, 35.413036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341236, 33.899113, 35.376549>,  <44.398300, 33.507904, 35.315735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341236, 33.899113, 35.376549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969974, 0.168718, -0.175172,
		-0.196973, 0.122480, -0.972728,
		-0.142662, 0.978025, 0.152035,
		44.298439, 34.192520, 35.422161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729698, 33.836098, 34.809299>,  <44.398300, 33.507904, 35.315735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729698, 33.836098, 34.809299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719837, 34.039364, 35.153664>,  <44.713921, 34.161324, 35.360283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719837, 34.039364, 35.153664>,  <44.729698, 33.836098, 34.809299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719837, 34.039364, 35.153664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969041, 0.223769, -0.104338,
		-0.245666, 0.831682, -0.497949,
		-0.024650, 0.508166, 0.860907,
		44.712440, 34.191814, 35.411934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875683, 34.498592, 34.690796>,  <44.729698, 33.836098, 34.809299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875683, 34.498592, 34.690796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014114, 34.386116, 35.048824>,  <45.097176, 34.318630, 35.263641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014114, 34.386116, 35.048824>,  <44.875683, 34.498592, 34.690796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014114, 34.386116, 35.048824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933973, 0.193766, -0.300249,
		-0.089007, 0.939885, 0.329687,
		0.346082, -0.281194, 0.895074,
		45.117939, 34.301758, 35.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301628, 35.019154, 34.856003>,  <44.875683, 34.498592, 34.690796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301628, 35.019154, 34.856003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409424, 34.686867, 35.050850>,  <45.474102, 34.487495, 35.167759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409424, 34.686867, 35.050850>,  <45.301628, 35.019154, 34.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409424, 34.686867, 35.050850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951165, 0.150539, -0.269486,
		0.150539, 0.535948, 0.830721,
		0.269486, -0.830721, 0.487113,
		45.490269, 34.437649, 35.196983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921917, 35.331104, 35.179913>,  <45.301628, 35.019154, 34.856003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921917, 35.331104, 35.179913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907761, 34.935181, 35.235073>,  <45.899265, 34.697624, 35.268169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907761, 34.935181, 35.235073>,  <45.921917, 35.331104, 35.179913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907761, 34.935181, 35.235073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976124, -0.063828, -0.207626,
		0.214313, 0.127260, 0.968439,
		-0.035391, -0.989814, 0.137900,
		45.897144, 34.638237, 35.276443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454712, 35.181263, 35.672684>,  <45.921917, 35.331104, 35.179913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454712, 35.181263, 35.672684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412643, 34.859390, 35.438953>,  <46.387402, 34.666267, 35.298717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412643, 34.859390, 35.438953>,  <46.454712, 35.181263, 35.672684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412643, 34.859390, 35.438953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994443, -0.082397, -0.065520,
		0.004576, -0.587966, 0.808873,
		-0.105173, -0.804678, -0.584321,
		46.381092, 34.617989, 35.263657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285351, 35.231789, 35.896347>,  <46.454712, 35.181263, 35.672684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285351, 35.231789, 35.896347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592499, 35.454811, 35.770168>,  <47.776787, 35.588623, 35.694462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592499, 35.454811, 35.770168>,  <47.285351, 35.231789, 35.896347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592499, 35.454811, 35.770168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248725, -0.713276, -0.655266,
		-0.590349, 0.424700, -0.686381,
		0.767870, 0.557556, -0.315448,
		47.822861, 35.622078, 35.675533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.293098, 35.144405, 35.100414>,  <47.285351, 35.231789, 35.896347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.293098, 35.144405, 35.100414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640881, 35.238060, 35.274414>,  <47.849552, 35.294250, 35.378815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640881, 35.238060, 35.274414>,  <47.293098, 35.144405, 35.100414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640881, 35.238060, 35.274414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449429, -0.740432, -0.499773,
		0.205074, 0.630034, -0.749001,
		0.869458, 0.234132, 0.434999,
		47.901718, 35.308300, 35.404915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.215389, 29.099741, 24.083660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841480, 29.151417, 23.951292>,  <37.617134, 29.182423, 23.871870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841480, 29.151417, 23.951292>,  <38.215389, 29.099741, 24.083660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841480, 29.151417, 23.951292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354933, -0.300666, 0.885225,
		0.014864, 0.944939, 0.326907,
		-0.934774, 0.129188, -0.330921,
		37.561047, 29.190174, 23.852016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975460, 29.482157, 24.625603>,  <38.215389, 29.099741, 24.083660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975460, 29.482157, 24.625603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668304, 29.328035, 24.420902>,  <37.484013, 29.235561, 24.298082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668304, 29.328035, 24.420902>,  <37.975460, 29.482157, 24.625603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668304, 29.328035, 24.420902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397235, -0.340319, 0.852283,
		-0.502549, 0.857742, 0.108270,
		-0.767886, -0.385305, -0.511752,
		37.437939, 29.212444, 24.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382370, 29.753511, 24.966532>,  <37.975460, 29.482157, 24.625603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382370, 29.753511, 24.966532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260353, 29.418299, 24.785578>,  <37.187145, 29.217171, 24.677006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260353, 29.418299, 24.785578>,  <37.382370, 29.753511, 24.966532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260353, 29.418299, 24.785578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563039, -0.224417, 0.795376,
		-0.768075, 0.497331, -0.403390,
		-0.305038, -0.838033, -0.452386,
		37.168842, 29.166889, 24.649862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681011, 29.617376, 25.083540>,  <37.382370, 29.753511, 24.966532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681011, 29.617376, 25.083540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829731, 29.258987, 24.986380>,  <36.918961, 29.043955, 24.928083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829731, 29.258987, 24.986380>,  <36.681011, 29.617376, 25.083540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829731, 29.258987, 24.986380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489123, -0.411466, 0.769061,
		-0.789003, -0.167125, -0.591222,
		0.371797, -0.895972, -0.242903,
		36.941269, 28.990196, 24.913509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074791, 29.199242, 25.209711>,  <36.681011, 29.617376, 25.083540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074791, 29.199242, 25.209711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409058, 28.980215, 25.192551>,  <36.609615, 28.848799, 25.182255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409058, 28.980215, 25.192551>,  <36.074791, 29.199242, 25.209711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409058, 28.980215, 25.192551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273086, -0.482002, 0.832525,
		-0.476526, -0.684003, -0.552325,
		0.835672, -0.547552, -0.042895,
		36.659756, 28.815945, 25.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796551, 28.489538, 25.251650>,  <36.074791, 29.199242, 25.209711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796551, 28.489538, 25.251650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.188564, 28.472456, 25.329332>,  <36.423771, 28.462206, 25.375942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.188564, 28.472456, 25.329332>,  <35.796551, 28.489538, 25.251650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188564, 28.472456, 25.329332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190227, -0.485815, 0.853110,
		0.057917, -0.873018, -0.484237,
		0.980030, -0.042705, 0.194209,
		36.482574, 28.459644, 25.387594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879490, 27.843224, 25.460337>,  <35.796551, 28.489538, 25.251650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879490, 27.843224, 25.460337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194431, 28.040800, 25.607897>,  <36.383396, 28.159346, 25.696432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194431, 28.040800, 25.607897>,  <35.879490, 27.843224, 25.460337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194431, 28.040800, 25.607897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174296, -0.395618, 0.901725,
		0.591344, -0.774278, -0.225401,
		0.787358, 0.493943, 0.368900,
		36.430637, 28.188984, 25.718567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124832, 27.412334, 25.952711>,  <35.879490, 27.843224, 25.460337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124832, 27.412334, 25.952711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294426, 27.757034, 26.064156>,  <36.396183, 27.963854, 26.131021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294426, 27.757034, 26.064156>,  <36.124832, 27.412334, 25.952711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294426, 27.757034, 26.064156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207605, -0.206963, 0.956068,
		0.881554, -0.463199, 0.091154,
		0.423985, 0.861750, 0.278611,
		36.421623, 28.015560, 26.147739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652466, 27.321859, 26.507608>,  <36.124832, 27.412334, 25.952711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652466, 27.321859, 26.507608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547783, 27.706917, 26.535408>,  <36.484974, 27.937950, 26.552088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547783, 27.706917, 26.535408>,  <36.652466, 27.321859, 26.507608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547783, 27.706917, 26.535408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111619, -0.101712, 0.988532,
		0.958671, 0.250949, 0.134068,
		-0.261707, 0.962642, 0.069498,
		36.469269, 27.995708, 26.556257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064636, 27.599161, 26.997879>,  <36.652466, 27.321859, 26.507608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064636, 27.599161, 26.997879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758942, 27.857109, 27.001593>,  <36.575527, 28.011879, 27.003820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758942, 27.857109, 27.001593>,  <37.064636, 27.599161, 26.997879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758942, 27.857109, 27.001593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221100, 0.248449, 0.943074,
		0.605855, 0.722782, -0.332455,
		-0.764235, 0.644872, 0.009283,
		36.529671, 28.050571, 27.004377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299618, 28.276909, 27.288565>,  <37.064636, 27.599161, 26.997879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299618, 28.276909, 27.288565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902943, 28.255175, 27.335234>,  <36.664940, 28.242134, 27.363235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902943, 28.255175, 27.335234>,  <37.299618, 28.276909, 27.288565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902943, 28.255175, 27.335234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103994, 0.195806, 0.975113,
		-0.075826, 0.979136, -0.188527,
		-0.991683, -0.054334, 0.116672,
		36.605438, 28.238874, 27.370235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079838, 28.858574, 27.633400>,  <37.299618, 28.276909, 27.288565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079838, 28.858574, 27.633400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809589, 28.571339, 27.700191>,  <36.647438, 28.398996, 27.740267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809589, 28.571339, 27.700191>,  <37.079838, 28.858574, 27.633400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809589, 28.571339, 27.700191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063202, 0.169241, 0.983546,
		-0.734534, 0.675059, -0.068959,
		-0.675623, -0.718089, 0.166978,
		36.606903, 28.355911, 27.750284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665344, 29.155210, 28.041344>,  <37.079838, 28.858574, 27.633400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665344, 29.155210, 28.041344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569771, 28.769476, 28.086895>,  <36.512428, 28.538034, 28.114225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569771, 28.769476, 28.086895>,  <36.665344, 29.155210, 28.041344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569771, 28.769476, 28.086895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090887, 0.138968, 0.986117,
		-0.966774, 0.225265, -0.120850,
		-0.238932, -0.964336, 0.113876,
		36.498093, 28.480175, 28.121058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997086, 29.031096, 28.503983>,  <36.665344, 29.155210, 28.041344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997086, 29.031096, 28.503983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154495, 28.663443, 28.511269>,  <36.248943, 28.442850, 28.515640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154495, 28.663443, 28.511269>,  <35.997086, 29.031096, 28.503983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154495, 28.663443, 28.511269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236704, -0.082160, 0.968102,
		-0.888317, -0.385286, -0.249895,
		0.393528, -0.919132, 0.018214,
		36.272552, 28.387703, 28.516733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708843, 28.778864, 29.097855>,  <35.997086, 29.031096, 28.503983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708843, 28.778864, 29.097855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025024, 28.546320, 29.020700>,  <36.214733, 28.406794, 28.974407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025024, 28.546320, 29.020700>,  <35.708843, 28.778864, 29.097855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025024, 28.546320, 29.020700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152300, -0.118472, 0.981208,
		-0.593289, -0.804973, -0.005105,
		0.790451, -0.581362, -0.192886,
		36.262161, 28.371912, 28.962835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647629, 28.332727, 29.629038>,  <35.708843, 28.778864, 29.097855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647629, 28.332727, 29.629038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024731, 28.280373, 29.506351>,  <36.250992, 28.248960, 29.432739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024731, 28.280373, 29.506351>,  <35.647629, 28.332727, 29.629038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024731, 28.280373, 29.506351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280450, -0.186446, 0.941587,
		-0.180393, -0.973712, -0.139077,
		0.942765, -0.130852, -0.306711,
		36.307560, 28.241106, 29.414337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848137, 27.718651, 29.967272>,  <35.647629, 28.332727, 29.629038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848137, 27.718651, 29.967272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175625, 27.917830, 29.852907>,  <36.372116, 28.037336, 29.784288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175625, 27.917830, 29.852907>,  <35.848137, 27.718651, 29.967272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175625, 27.917830, 29.852907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453337, -0.254963, 0.854095,
		0.352398, -0.828879, -0.434482,
		0.818719, 0.497948, -0.285913,
		36.421242, 28.067213, 29.767134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328392, 27.266336, 30.217184>,  <35.848137, 27.718651, 29.967272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328392, 27.266336, 30.217184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563496, 27.584538, 30.158243>,  <36.704559, 27.775459, 30.122879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563496, 27.584538, 30.158243>,  <36.328392, 27.266336, 30.217184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563496, 27.584538, 30.158243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341473, -0.078812, 0.936582,
		0.733442, -0.600801, -0.317965,
		0.587758, 0.795505, -0.147353,
		36.739822, 27.823189, 30.114037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143612, 27.156645, 30.410406>,  <36.328392, 27.266336, 30.217184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143612, 27.156645, 30.410406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098988, 27.554111, 30.405079>,  <37.072212, 27.792591, 30.401882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098988, 27.554111, 30.405079>,  <37.143612, 27.156645, 30.410406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098988, 27.554111, 30.405079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397335, 0.056884, 0.915909,
		0.910867, 0.096889, -0.401166,
		-0.111561, 0.993668, -0.013317,
		37.065517, 27.852213, 30.401083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837029, 27.440157, 30.626446>,  <37.143612, 27.156645, 30.410406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837029, 27.440157, 30.626446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545864, 27.707346, 30.688356>,  <37.371166, 27.867659, 30.725502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545864, 27.707346, 30.688356>,  <37.837029, 27.440157, 30.626446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545864, 27.707346, 30.688356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325134, 0.137519, 0.935616,
		0.603680, 0.731370, -0.317282,
		-0.727914, 0.667972, 0.154776,
		37.327492, 27.907738, 30.734789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155190, 27.904850, 31.075354>,  <37.837029, 27.440157, 30.626446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155190, 27.904850, 31.075354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771233, 27.998615, 31.136883>,  <37.540859, 28.054874, 31.173800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771233, 27.998615, 31.136883>,  <38.155190, 27.904850, 31.075354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771233, 27.998615, 31.136883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188194, 0.132003, 0.973221,
		0.207833, 0.963133, -0.170823,
		-0.959890, 0.234415, 0.153821,
		37.483265, 28.068939, 31.183029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618114, 27.787764, 31.626629>,  <38.155190, 27.904850, 31.075354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618114, 27.787764, 31.626629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.011032, 27.748079, 31.690197>,  <39.246784, 27.724268, 31.728338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.011032, 27.748079, 31.690197>,  <38.618114, 27.787764, 31.626629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011032, 27.748079, 31.690197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150321, -0.088891, -0.984633,
		0.111815, 0.991088, -0.072403,
		0.982294, -0.099213, 0.158921,
		39.305721, 27.718315, 31.737873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073792, 28.298822, 31.114922>,  <38.618114, 27.787764, 31.626629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073792, 28.298822, 31.114922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311703, 28.004566, 31.244583>,  <39.454449, 27.828012, 31.322380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311703, 28.004566, 31.244583>,  <39.073792, 28.298822, 31.114922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311703, 28.004566, 31.244583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269915, -0.197075, -0.942500,
		0.757222, 0.648072, 0.081344,
		0.594777, -0.735638, 0.324154,
		39.490135, 27.783875, 31.341829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560684, 28.347223, 30.603676>,  <39.073792, 28.298822, 31.114922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560684, 28.347223, 30.603676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609020, 27.989027, 30.775019>,  <39.638020, 27.774109, 30.877825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609020, 27.989027, 30.775019>,  <39.560684, 28.347223, 30.603676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609020, 27.989027, 30.775019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322716, -0.372643, -0.870053,
		0.938751, 0.243374, 0.243960,
		0.120838, -0.895492, 0.428360,
		39.645271, 27.720379, 30.903526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314613, 28.192699, 30.550417>,  <39.560684, 28.347223, 30.603676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314613, 28.192699, 30.550417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.104485, 27.855047, 30.593267>,  <39.978409, 27.652456, 30.618977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.104485, 27.855047, 30.593267>,  <40.314613, 28.192699, 30.550417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104485, 27.855047, 30.593267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533048, -0.424601, -0.731829,
		0.663246, -0.327344, 0.673016,
		-0.525323, -0.844133, 0.107124,
		39.946888, 27.601807, 30.625404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791126, 27.607647, 30.386589>,  <40.314613, 28.192699, 30.550417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791126, 27.607647, 30.386589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.440552, 27.423239, 30.331003>,  <40.230206, 27.312593, 30.297651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.440552, 27.423239, 30.331003>,  <40.791126, 27.607647, 30.386589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440552, 27.423239, 30.331003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395616, -0.524938, -0.753610,
		0.274483, -0.715470, 0.642465,
		-0.876440, -0.461023, -0.138965,
		40.177620, 27.284931, 30.289314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967548, 27.041954, 29.981710>,  <40.791126, 27.607647, 30.386589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967548, 27.041954, 29.981710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.572193, 27.088009, 29.942036>,  <40.334980, 27.115643, 29.918232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.572193, 27.088009, 29.942036>,  <40.967548, 27.041954, 29.981710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572193, 27.088009, 29.942036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045337, -0.399539, -0.915594,
		-0.145048, -0.909457, 0.389679,
		-0.988386, 0.115138, -0.099184,
		40.275677, 27.122551, 29.912281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833408, 26.473101, 29.671820>,  <40.967548, 27.041954, 29.981710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833408, 26.473101, 29.671820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.522179, 26.712912, 29.596806>,  <40.335442, 26.856798, 29.551796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.522179, 26.712912, 29.596806>,  <40.833408, 26.473101, 29.671820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522179, 26.712912, 29.596806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019506, -0.275339, -0.961149,
		-0.627874, -0.751500, 0.202539,
		-0.778070, 0.599530, -0.187537,
		40.288757, 26.892771, 29.540545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535156, 26.218861, 29.131893>,  <40.833408, 26.473101, 29.671820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535156, 26.218861, 29.131893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.367359, 26.581320, 29.110260>,  <40.266682, 26.798796, 29.097281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.367359, 26.581320, 29.110260>,  <40.535156, 26.218861, 29.131893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367359, 26.581320, 29.110260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052600, -0.083744, -0.995098,
		-0.906233, -0.414592, 0.082793,
		-0.419493, 0.906146, -0.054084,
		40.241512, 26.853163, 29.094034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996143, 26.091936, 28.643080>,  <40.535156, 26.218861, 29.131893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996143, 26.091936, 28.643080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093430, 26.479374, 28.663744>,  <40.151802, 26.711838, 28.676142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093430, 26.479374, 28.663744>,  <39.996143, 26.091936, 28.643080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093430, 26.479374, 28.663744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040357, 0.043107, -0.998255,
		-0.969133, 0.244875, -0.028606,
		0.243215, 0.968596, 0.051659,
		40.166393, 26.769953, 28.679241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522892, 26.409088, 28.124588>,  <39.996143, 26.091936, 28.643080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522892, 26.409088, 28.124588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826855, 26.663662, 28.177494>,  <40.009232, 26.816406, 28.209238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826855, 26.663662, 28.177494>,  <39.522892, 26.409088, 28.124588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826855, 26.663662, 28.177494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089549, 0.099036, -0.991046,
		-0.643834, 0.764947, 0.018266,
		0.759907, 0.636434, 0.132263,
		40.054829, 26.854591, 28.217173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391930, 26.992205, 27.857388>,  <39.522892, 26.409088, 28.124588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391930, 26.992205, 27.857388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785847, 27.060463, 27.844299>,  <40.022198, 27.101418, 27.836447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785847, 27.060463, 27.844299>,  <39.391930, 26.992205, 27.857388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785847, 27.060463, 27.844299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078083, 0.266416, -0.960690,
		-0.155220, 0.948632, 0.275688,
		0.984789, 0.170645, -0.032719,
		40.081284, 27.111656, 27.834484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434772, 27.530676, 27.415651>,  <39.391930, 26.992205, 27.857388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434772, 27.530676, 27.415651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807198, 27.387329, 27.443062>,  <40.030651, 27.301321, 27.459507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807198, 27.387329, 27.443062>,  <39.434772, 27.530676, 27.415651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807198, 27.387329, 27.443062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108622, 0.092958, -0.989727,
		0.348314, 0.928942, 0.125476,
		0.931063, -0.358366, 0.068525,
		40.086517, 27.279819, 27.463619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886414, 27.964838, 27.202030>,  <39.434772, 27.530676, 27.415651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886414, 27.964838, 27.202030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075077, 27.619015, 27.132660>,  <40.188274, 27.411520, 27.091038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075077, 27.619015, 27.132660>,  <39.886414, 27.964838, 27.202030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075077, 27.619015, 27.132660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081264, 0.238457, -0.967747,
		0.878029, 0.442351, 0.182727,
		0.471657, -0.864560, -0.173425,
		40.216576, 27.359648, 27.080633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572437, 28.160223, 26.831921>,  <39.886414, 27.964838, 27.202030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572437, 28.160223, 26.831921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.482040, 27.779171, 26.750511>,  <40.427803, 27.550539, 26.701666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.482040, 27.779171, 26.750511>,  <40.572437, 28.160223, 26.831921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482040, 27.779171, 26.750511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266359, 0.140540, -0.953573,
		0.937007, -0.269709, 0.221981,
		-0.225990, -0.952631, -0.203526,
		40.414242, 27.493382, 26.689453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147999, 27.993198, 26.536020>,  <40.572437, 28.160223, 26.831921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147999, 27.993198, 26.536020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.875156, 27.718983, 26.434225>,  <40.711449, 27.554453, 26.373148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.875156, 27.718983, 26.434225>,  <41.147999, 27.993198, 26.536020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875156, 27.718983, 26.434225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238973, 0.119933, -0.963591,
		0.691101, -0.718089, 0.082018,
		-0.682108, -0.685539, -0.254490,
		40.670525, 27.513321, 26.357878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388672, 27.774872, 25.838665>,  <41.147999, 27.993198, 26.536020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388672, 27.774872, 25.838665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.036369, 27.588243, 25.871126>,  <40.824989, 27.476267, 25.890602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.036369, 27.588243, 25.871126>,  <41.388672, 27.774872, 25.838665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036369, 27.588243, 25.871126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160394, 0.132656, -0.978098,
		0.445586, -0.874480, -0.191673,
		-0.880753, -0.466570, 0.081151,
		40.772144, 27.448273, 25.895472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434593, 27.302160, 25.294744>,  <41.388672, 27.774872, 25.838665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434593, 27.302160, 25.294744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051598, 27.373583, 25.385372>,  <40.821800, 27.416435, 25.439749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051598, 27.373583, 25.385372>,  <41.434593, 27.302160, 25.294744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051598, 27.373583, 25.385372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162482, 0.315169, -0.935023,
		-0.238360, -0.932087, -0.272759,
		-0.957488, 0.178554, 0.226571,
		40.764351, 27.427149, 25.453344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986515, 26.982378, 24.749262>,  <41.434593, 27.302160, 25.294744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986515, 26.982378, 24.749262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.771145, 27.278769, 24.909784>,  <40.641922, 27.456604, 25.006098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.771145, 27.278769, 24.909784>,  <40.986515, 26.982378, 24.749262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771145, 27.278769, 24.909784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266527, 0.302036, -0.915280,
		-0.799411, -0.599772, 0.034865,
		-0.538429, 0.740978, 0.401306,
		40.609615, 27.501062, 25.030176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344398, 26.826698, 24.479218>,  <40.986515, 26.982378, 24.749262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344398, 26.826698, 24.479218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324352, 27.213877, 24.577660>,  <40.312325, 27.446184, 24.636724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324352, 27.213877, 24.577660>,  <40.344398, 26.826698, 24.479218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324352, 27.213877, 24.577660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533793, 0.182312, -0.825729,
		-0.844129, -0.172749, 0.507547,
		-0.050112, 0.967947, 0.246107,
		40.309319, 27.504261, 24.651491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.692951, 27.052193, 24.092834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867073, 27.384953, 24.230503>,  <39.971546, 27.584608, 24.313105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867073, 27.384953, 24.230503>,  <39.692951, 27.052193, 24.092834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867073, 27.384953, 24.230503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422231, 0.526290, -0.738065,
		-0.795131, 0.175960, 0.580349,
		0.435302, 0.831899, 0.344174,
		39.997665, 27.634521, 24.333755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132450, 27.669197, 24.215384>,  <39.692951, 27.052193, 24.092834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132450, 27.669197, 24.215384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503185, 27.805387, 24.152073>,  <39.725624, 27.887102, 24.114086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503185, 27.805387, 24.152073>,  <39.132450, 27.669197, 24.215384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503185, 27.805387, 24.152073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303574, 0.431474, -0.849513,
		-0.220947, 0.835408, 0.503266,
		0.926836, 0.340475, -0.158275,
		39.781235, 27.907530, 24.104589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009541, 28.310968, 23.900190>,  <39.132450, 27.669197, 24.215384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009541, 28.310968, 23.900190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388325, 28.221151, 23.808229>,  <39.615593, 28.167261, 23.753054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388325, 28.221151, 23.808229>,  <39.009541, 28.310968, 23.900190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388325, 28.221151, 23.808229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104049, 0.462633, -0.880423,
		0.304050, 0.857643, 0.414731,
		0.946957, -0.224540, -0.229901,
		39.672413, 28.153790, 23.739260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389263, 28.942745, 23.867929>,  <39.009541, 28.310968, 23.900190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389263, 28.942745, 23.867929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595657, 28.681892, 23.645765>,  <39.719494, 28.525381, 23.512466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595657, 28.681892, 23.645765>,  <39.389263, 28.942745, 23.867929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595657, 28.681892, 23.645765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111954, 0.591487, -0.798504,
		0.849249, 0.474198, 0.232191,
		0.515988, -0.652134, -0.555408,
		39.750454, 28.486252, 23.479143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724838, 29.377897, 23.282740>,  <39.389263, 28.942745, 23.867929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724838, 29.377897, 23.282740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732887, 28.999166, 23.154293>,  <39.737717, 28.771929, 23.077225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732887, 28.999166, 23.154293>,  <39.724838, 29.377897, 23.282740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732887, 28.999166, 23.154293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116664, 0.316763, -0.941303,
		0.992968, 0.056403, -0.104087,
		0.020122, -0.946826, -0.321115,
		39.738922, 28.715118, 23.057959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185833, 29.413126, 22.738895>,  <39.724838, 29.377897, 23.282740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185833, 29.413126, 22.738895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992241, 29.067160, 22.685707>,  <39.876083, 28.859579, 22.653793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992241, 29.067160, 22.685707>,  <40.185833, 29.413126, 22.738895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992241, 29.067160, 22.685707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048959, 0.178479, -0.982725,
		0.873707, -0.469111, -0.128726,
		-0.483982, -0.864917, -0.132971,
		39.847046, 28.807684, 22.645815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479061, 29.117018, 22.137739>,  <40.185833, 29.413126, 22.738895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479061, 29.117018, 22.137739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119530, 28.945784, 22.175369>,  <39.903812, 28.843042, 22.197948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119530, 28.945784, 22.175369>,  <40.479061, 29.117018, 22.137739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119530, 28.945784, 22.175369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162185, 0.125438, -0.978755,
		0.407193, -0.894989, -0.182177,
		-0.898827, -0.428089, 0.094076,
		39.849880, 28.817358, 22.203592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408207, 28.769592, 21.568974>,  <40.479061, 29.117018, 22.137739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408207, 28.769592, 21.568974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.026268, 28.781166, 21.687243>,  <39.797104, 28.788111, 21.758204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.026268, 28.781166, 21.687243>,  <40.408207, 28.769592, 21.568974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026268, 28.781166, 21.687243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293579, 0.060517, -0.954017,
		-0.045499, -0.997748, -0.049289,
		-0.954852, 0.028936, 0.295671,
		39.739811, 28.789846, 21.775944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013393, 28.188911, 21.327518>,  <40.408207, 28.769592, 21.568974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013393, 28.188911, 21.327518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749870, 28.485111, 21.380644>,  <39.591759, 28.662830, 21.412519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749870, 28.485111, 21.380644>,  <40.013393, 28.188911, 21.327518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749870, 28.485111, 21.380644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135372, 0.056974, -0.989155,
		-0.740034, -0.669639, 0.062708,
		-0.658805, 0.740498, 0.132813,
		39.552227, 28.707260, 21.420488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468067, 27.985090, 20.921484>,  <40.013393, 28.188911, 21.327518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468067, 27.985090, 20.921484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450447, 28.378956, 20.989008>,  <39.439873, 28.615274, 21.029522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450447, 28.378956, 20.989008>,  <39.468067, 27.985090, 20.921484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450447, 28.378956, 20.989008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026908, 0.167741, -0.985464,
		-0.998667, -0.047954, 0.019106,
		-0.044052, 0.984664, 0.168808,
		39.437233, 28.674355, 21.039650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994854, 28.189522, 20.372583>,  <39.468067, 27.985090, 20.921484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994854, 28.189522, 20.372583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180237, 28.520674, 20.498960>,  <39.291466, 28.719366, 20.574787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180237, 28.520674, 20.498960>,  <38.994854, 28.189522, 20.372583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180237, 28.520674, 20.498960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016119, 0.348611, -0.937129,
		-0.885973, 0.439412, 0.148222,
		0.463457, 0.827881, 0.315943,
		39.319275, 28.769037, 20.593742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614483, 28.837627, 20.163260>,  <38.994854, 28.189522, 20.372583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614483, 28.837627, 20.163260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.999977, 28.940269, 20.192551>,  <39.231274, 29.001854, 20.210125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.999977, 28.940269, 20.192551>,  <38.614483, 28.837627, 20.163260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999977, 28.940269, 20.192551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068054, 0.501683, -0.862370,
		-0.258025, 0.826116, 0.500955,
		0.963738, 0.256605, 0.073226,
		39.289097, 29.017252, 20.214520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624374, 29.451757, 19.945446>,  <38.614483, 28.837627, 20.163260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624374, 29.451757, 19.945446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017147, 29.381128, 19.918205>,  <39.252811, 29.338751, 19.901861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017147, 29.381128, 19.918205>,  <38.624374, 29.451757, 19.945446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017147, 29.381128, 19.918205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078546, 0.707625, -0.702209,
		0.172181, 0.684170, 0.708707,
		0.981929, -0.176573, -0.068101,
		39.311726, 29.328157, 19.897776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882107, 30.159800, 19.824102>,  <38.624374, 29.451757, 19.945446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882107, 30.159800, 19.824102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191257, 29.930832, 19.714561>,  <39.376747, 29.793451, 19.648836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191257, 29.930832, 19.714561>,  <38.882107, 30.159800, 19.824102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191257, 29.930832, 19.714561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084082, 0.520145, -0.849929,
		0.628958, 0.633867, 0.450139,
		0.772879, -0.572418, -0.273852,
		39.423122, 29.759106, 19.632406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346859, 30.583990, 19.481312>,  <38.882107, 30.159800, 19.824102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346859, 30.583990, 19.481312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503605, 30.231573, 19.375326>,  <39.597652, 30.020123, 19.311735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503605, 30.231573, 19.375326>,  <39.346859, 30.583990, 19.481312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503605, 30.231573, 19.375326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364870, 0.413208, -0.834344,
		0.844577, 0.230275, 0.483388,
		0.391868, -0.881041, -0.264965,
		39.621166, 29.967260, 19.295837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024807, 30.785278, 19.264187>,  <39.346859, 30.583990, 19.481312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024807, 30.785278, 19.264187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.908150, 30.438925, 19.101614>,  <39.838154, 30.231113, 19.004070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.908150, 30.438925, 19.101614>,  <40.024807, 30.785278, 19.264187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908150, 30.438925, 19.101614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411349, 0.270070, -0.870548,
		0.863559, -0.421078, 0.277415,
		-0.291647, -0.865884, -0.406431,
		39.820656, 30.179159, 18.979685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666912, 30.559587, 18.923285>,  <40.024807, 30.785278, 19.264187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666912, 30.559587, 18.923285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363014, 30.372398, 18.742712>,  <40.180676, 30.260084, 18.634369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363014, 30.372398, 18.742712>,  <40.666912, 30.559587, 18.923285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363014, 30.372398, 18.742712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204560, 0.486994, -0.849113,
		0.617207, -0.737452, -0.274261,
		-0.759744, -0.467975, -0.451430,
		40.135090, 30.232006, 18.607283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827595, 30.405449, 18.144995>,  <40.666912, 30.559587, 18.923285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827595, 30.405449, 18.144995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.429554, 30.369616, 18.161736>,  <40.190731, 30.348116, 18.171780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.429554, 30.369616, 18.161736>,  <40.827595, 30.405449, 18.144995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429554, 30.369616, 18.161736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085906, 0.573730, -0.814526,
		0.048958, -0.814130, -0.578615,
		-0.995100, -0.089584, 0.041850,
		40.131023, 30.342741, 18.174290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596912, 30.047560, 17.466520>,  <40.827595, 30.405449, 18.144995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596912, 30.047560, 17.466520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.291561, 30.244043, 17.634314>,  <40.108349, 30.361933, 17.734989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.291561, 30.244043, 17.634314>,  <40.596912, 30.047560, 17.466520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291561, 30.244043, 17.634314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091363, 0.560768, -0.822917,
		-0.639456, -0.666523, -0.383201,
		-0.763380, 0.491208, 0.419482,
		40.062546, 30.391405, 17.760159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211800, 30.117645, 16.881790>,  <40.596912, 30.047560, 17.466520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211800, 30.117645, 16.881790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096897, 30.379444, 17.161537>,  <40.027954, 30.536524, 17.329386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096897, 30.379444, 17.161537>,  <40.211800, 30.117645, 16.881790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096897, 30.379444, 17.161537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229710, 0.661762, -0.713655,
		-0.929902, -0.365653, -0.039750,
		-0.287255, 0.654499, 0.699368,
		40.010719, 30.575794, 17.371347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519806, 30.249599, 16.677160>,  <40.211800, 30.117645, 16.881790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519806, 30.249599, 16.677160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.647423, 30.560871, 16.893547>,  <39.723991, 30.747635, 17.023380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.647423, 30.560871, 16.893547>,  <39.519806, 30.249599, 16.677160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647423, 30.560871, 16.893547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543557, 0.617832, -0.568181,
		-0.776376, -0.112774, 0.620099,
		0.319041, 0.778181, 0.540969,
		39.743134, 30.794325, 17.055838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934414, 30.651190, 16.616190>,  <39.519806, 30.249599, 16.677160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934414, 30.651190, 16.616190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235653, 30.888994, 16.728905>,  <39.416397, 31.031677, 16.796534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235653, 30.888994, 16.728905>,  <38.934414, 30.651190, 16.616190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235653, 30.888994, 16.728905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334402, 0.714749, -0.614255,
		-0.566588, 0.368363, 0.737080,
		0.753096, 0.594511, 0.281787,
		39.461582, 31.067347, 16.813440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660915, 31.272352, 16.744524>,  <38.934414, 30.651190, 16.616190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660915, 31.272352, 16.744524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044903, 31.350544, 16.664278>,  <39.275295, 31.397459, 16.616131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044903, 31.350544, 16.664278>,  <38.660915, 31.272352, 16.744524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044903, 31.350544, 16.664278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278474, 0.588894, -0.758720,
		-0.030175, 0.784214, 0.619756,
		0.959970, 0.195480, -0.200613,
		39.332893, 31.409187, 16.604094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749992, 32.028759, 16.728165>,  <38.660915, 31.272352, 16.744524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749992, 32.028759, 16.728165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971359, 31.780842, 16.505604>,  <39.104179, 31.632092, 16.372066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971359, 31.780842, 16.505604>,  <38.749992, 32.028759, 16.728165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971359, 31.780842, 16.505604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401573, 0.386703, -0.830181,
		0.729704, 0.682873, -0.034885,
		0.553418, -0.619795, -0.556402,
		39.137386, 31.594904, 16.338684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119259, 31.835262, 16.429289>,  <38.749992, 32.028759, 16.728165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119259, 31.835262, 16.429289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762600, 32.016354, 16.428350>,  <37.548607, 32.125008, 16.427788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762600, 32.016354, 16.428350>,  <38.119259, 31.835262, 16.429289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762600, 32.016354, 16.428350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261202, -0.510192, 0.819438,
		0.369786, 0.731260, 0.573163,
		-0.891645, 0.452728, -0.002345,
		37.495106, 32.152172, 16.427647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910618, 32.262241, 17.074816>,  <38.119259, 31.835262, 16.429289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910618, 32.262241, 17.074816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556473, 32.154514, 16.923235>,  <37.343987, 32.089878, 16.832287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556473, 32.154514, 16.923235>,  <37.910618, 32.262241, 17.074816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556473, 32.154514, 16.923235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254405, -0.401579, 0.879780,
		-0.389122, 0.875329, 0.287025,
		-0.885360, -0.269321, -0.378951,
		37.290863, 32.073719, 16.809549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506401, 32.498814, 17.628946>,  <37.910618, 32.262241, 17.074816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506401, 32.498814, 17.628946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351780, 32.222084, 17.384995>,  <37.259007, 32.056046, 17.238623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351780, 32.222084, 17.384995>,  <37.506401, 32.498814, 17.628946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351780, 32.222084, 17.384995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346957, -0.503619, 0.791195,
		-0.854517, 0.517438, -0.045361,
		-0.386550, -0.691828, -0.609880,
		37.235813, 32.014534, 17.202030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782009, 32.403015, 17.914776>,  <37.506401, 32.498814, 17.628946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782009, 32.403015, 17.914776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838615, 32.082024, 17.682911>,  <36.872578, 31.889429, 17.543793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838615, 32.082024, 17.682911>,  <36.782009, 32.403015, 17.914776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838615, 32.082024, 17.682911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363861, -0.586731, 0.723431,
		-0.920640, 0.108538, -0.375022,
		0.141517, -0.802475, -0.579661,
		36.881069, 31.841282, 17.509012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143883, 32.011044, 17.945858>,  <36.782009, 32.403015, 17.914776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143883, 32.011044, 17.945858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427158, 31.752407, 17.832447>,  <36.597126, 31.597225, 17.764400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427158, 31.752407, 17.832447>,  <36.143883, 32.011044, 17.945858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427158, 31.752407, 17.832447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399087, -0.697889, 0.594710,
		-0.582403, -0.308017, -0.752285,
		0.708192, -0.646588, -0.283527,
		36.639614, 31.558430, 17.747389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843716, 31.347574, 18.041767>,  <36.143883, 32.011044, 17.945858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843716, 31.347574, 18.041767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231743, 31.258759, 18.002453>,  <36.464561, 31.205469, 17.978865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231743, 31.258759, 18.002453>,  <35.843716, 31.347574, 18.041767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231743, 31.258759, 18.002453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087057, -0.695895, 0.712847,
		-0.226675, -0.682957, -0.694398,
		0.970072, -0.222037, -0.098286,
		36.522766, 31.192148, 17.972967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908268, 30.618368, 18.093061>,  <35.843716, 31.347574, 18.041767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908268, 30.618368, 18.093061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.253372, 30.800684, 18.180609>,  <36.460434, 30.910072, 18.233137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.253372, 30.800684, 18.180609>,  <35.908268, 30.618368, 18.093061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253372, 30.800684, 18.180609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130361, -0.618762, 0.774687,
		0.488521, -0.639836, -0.593259,
		0.862759, 0.455789, 0.218869,
		36.512199, 30.937420, 18.246269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379864, 30.078510, 18.342857>,  <35.908268, 30.618368, 18.093061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379864, 30.078510, 18.342857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543365, 30.414768, 18.484976>,  <36.641464, 30.616524, 18.570246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543365, 30.414768, 18.484976>,  <36.379864, 30.078510, 18.342857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543365, 30.414768, 18.484976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167059, -0.451644, 0.876418,
		0.897225, -0.298883, -0.325049,
		0.408753, 0.840647, 0.355295,
		36.665993, 30.666962, 18.591564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037285, 29.865507, 18.656973>,  <36.379864, 30.078510, 18.342857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037285, 29.865507, 18.656973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969864, 30.227272, 18.813753>,  <36.929413, 30.444332, 18.907822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969864, 30.227272, 18.813753>,  <37.037285, 29.865507, 18.656973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969864, 30.227272, 18.813753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360858, -0.313416, 0.878380,
		0.917263, 0.289492, -0.273538,
		-0.168553, 0.904414, 0.391951,
		36.919296, 30.498596, 18.931339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671688, 30.053503, 18.984825>,  <37.037285, 29.865507, 18.656973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671688, 30.053503, 18.984825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390495, 30.292095, 19.139759>,  <37.221779, 30.435249, 19.232719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390495, 30.292095, 19.139759>,  <37.671688, 30.053503, 18.984825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390495, 30.292095, 19.139759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395808, -0.124362, 0.909874,
		0.590890, 0.792936, -0.148666,
		-0.702983, 0.596478, 0.387335,
		37.179600, 30.471039, 19.255959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025444, 30.501768, 19.500454>,  <37.671688, 30.053503, 18.984825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025444, 30.501768, 19.500454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645798, 30.503891, 19.626411>,  <37.418011, 30.505165, 19.701986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645798, 30.503891, 19.626411>,  <38.025444, 30.501768, 19.500454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645798, 30.503891, 19.626411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308489, -0.185604, 0.932944,
		0.063398, 0.982610, 0.174522,
		-0.949113, 0.005309, 0.314892,
		37.361065, 30.505484, 19.720879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010109, 30.930210, 20.128633>,  <38.025444, 30.501768, 19.500454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010109, 30.930210, 20.128633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683559, 30.699478, 20.139912>,  <37.487629, 30.561039, 20.146679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683559, 30.699478, 20.139912>,  <38.010109, 30.930210, 20.128633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683559, 30.699478, 20.139912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170332, -0.193839, 0.966133,
		-0.551830, 0.793531, 0.256498,
		-0.816376, -0.576831, 0.028197,
		37.438648, 30.526428, 20.148371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784672, 30.990885, 20.842890>,  <38.010109, 30.930210, 20.128633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784672, 30.990885, 20.842890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594711, 30.663586, 20.713310>,  <37.480736, 30.467205, 20.635563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594711, 30.663586, 20.713310>,  <37.784672, 30.990885, 20.842890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594711, 30.663586, 20.713310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119538, -0.304715, 0.944912,
		-0.871885, 0.487460, 0.046896,
		-0.474897, -0.818249, -0.323947,
		37.452244, 30.418112, 20.616127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257801, 30.895121, 21.278381>,  <37.784672, 30.990885, 20.842890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257801, 30.895121, 21.278381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275105, 30.528904, 21.118425>,  <37.285488, 30.309174, 21.022451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275105, 30.528904, 21.118425>,  <37.257801, 30.895121, 21.278381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275105, 30.528904, 21.118425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032912, -0.398741, 0.916473,
		-0.998522, -0.052807, 0.012883,
		0.043259, -0.915542, -0.399889,
		37.288082, 30.254242, 20.998459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622437, 30.577257, 21.478403>,  <37.257801, 30.895121, 21.278381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622437, 30.577257, 21.478403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895744, 30.294827, 21.404007>,  <37.059731, 30.125368, 21.359369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895744, 30.294827, 21.404007>,  <36.622437, 30.577257, 21.478403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895744, 30.294827, 21.404007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219197, -0.441331, 0.870161,
		-0.696485, -0.553787, -0.456319,
		0.683272, -0.706078, -0.185992,
		37.100727, 30.083004, 21.348209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279522, 29.951050, 21.657377>,  <36.622437, 30.577257, 21.478403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279522, 29.951050, 21.657377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663139, 29.837868, 21.662506>,  <36.893311, 29.769958, 21.665585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663139, 29.837868, 21.662506>,  <36.279522, 29.951050, 21.657377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663139, 29.837868, 21.662506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128976, -0.395950, 0.909169,
		-0.252175, -0.873591, -0.416229,
		0.959048, -0.282953, 0.012824,
		36.950855, 29.752981, 21.666353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326710, 29.325483, 21.904631>,  <36.279522, 29.951050, 21.657377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326710, 29.325483, 21.904631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698685, 29.449240, 21.984121>,  <36.921871, 29.523495, 22.031815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698685, 29.449240, 21.984121>,  <36.326710, 29.325483, 21.904631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698685, 29.449240, 21.984121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053112, -0.421747, 0.905156,
		0.363860, -0.852294, -0.375766,
		0.929938, 0.309392, 0.198724,
		36.977665, 29.542057, 22.043739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701027, 28.750395, 22.127459>,  <36.326710, 29.325483, 21.904631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701027, 28.750395, 22.127459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904446, 29.059265, 22.279837>,  <37.026497, 29.244587, 22.371264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904446, 29.059265, 22.279837>,  <36.701027, 28.750395, 22.127459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904446, 29.059265, 22.279837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075266, -0.400868, 0.913039,
		0.857738, -0.492997, -0.145742,
		0.508548, 0.772178, 0.380946,
		37.057011, 29.290918, 22.394121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143494, 28.355986, 22.632441>,  <36.701027, 28.750395, 22.127459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143494, 28.355986, 22.632441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197933, 28.733810, 22.751963>,  <37.230598, 28.960505, 22.823675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197933, 28.733810, 22.751963>,  <37.143494, 28.355986, 22.632441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197933, 28.733810, 22.751963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130360, -0.281913, 0.950543,
		0.982081, -0.168320, 0.084765,
		0.136099, 0.944560, 0.298803,
		37.238762, 29.017178, 22.841604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758598, 28.418764, 23.059877>,  <37.143494, 28.355986, 22.632441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758598, 28.418764, 23.059877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517464, 28.724348, 23.151924>,  <37.372784, 28.907700, 23.207151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517464, 28.724348, 23.151924>,  <37.758598, 28.418764, 23.059877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517464, 28.724348, 23.151924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019917, -0.302736, 0.952867,
		0.797618, 0.569838, 0.197716,
		-0.602835, 0.763961, 0.230117,
		37.336613, 28.953537, 23.220959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.142273, 26.528248, 26.954823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.827015, 26.770245, 27.000101>,  <40.637859, 26.915443, 27.027267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.827015, 26.770245, 27.000101>,  <41.142273, 26.528248, 26.954823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827015, 26.770245, 27.000101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253421, 0.151372, 0.955439,
		0.560900, 0.781709, -0.272621,
		-0.788143, 0.604994, 0.113197,
		40.590572, 26.951742, 27.034060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270550, 26.735355, 27.517292>,  <41.142273, 26.528248, 26.954823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270550, 26.735355, 27.517292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907272, 26.902216, 27.503567>,  <40.689308, 27.002333, 27.495331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907272, 26.902216, 27.503567>,  <41.270550, 26.735355, 27.517292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907272, 26.902216, 27.503567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071437, 0.235260, 0.969303,
		0.412417, 0.877860, -0.243461,
		-0.908190, 0.417149, -0.034313,
		40.634815, 27.027361, 27.493273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351978, 27.266481, 27.881851>,  <41.270550, 26.735355, 27.517292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351978, 27.266481, 27.881851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957809, 27.200531, 27.865059>,  <40.721310, 27.160961, 27.854982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957809, 27.200531, 27.865059>,  <41.351978, 27.266481, 27.881851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957809, 27.200531, 27.865059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069598, 0.165480, 0.983754,
		-0.155250, 0.972334, -0.174542,
		-0.985421, -0.164876, -0.041982,
		40.662182, 27.151068, 27.852465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016266, 27.753883, 28.348305>,  <41.351978, 27.266481, 27.881851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016266, 27.753883, 28.348305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732254, 27.475540, 28.305134>,  <40.561848, 27.308535, 28.279232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732254, 27.475540, 28.305134>,  <41.016266, 27.753883, 28.348305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732254, 27.475540, 28.305134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243494, 0.098802, 0.964857,
		-0.660738, 0.711353, -0.239589,
		-0.710025, -0.695856, -0.107928,
		40.519245, 27.266783, 28.272755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393108, 28.039011, 28.626783>,  <41.016266, 27.753883, 28.348305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393108, 28.039011, 28.626783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351448, 27.643030, 28.665045>,  <40.326450, 27.405441, 28.688002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351448, 27.643030, 28.665045>,  <40.393108, 28.039011, 28.626783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351448, 27.643030, 28.665045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355389, 0.126869, 0.926069,
		-0.928898, 0.062459, -0.365031,
		-0.104153, -0.989951, 0.095651,
		40.320202, 27.346045, 28.693741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766048, 28.031118, 28.900198>,  <40.393108, 28.039011, 28.626783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766048, 28.031118, 28.900198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931114, 27.671749, 28.960257>,  <40.030151, 27.456127, 28.996292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931114, 27.671749, 28.960257>,  <39.766048, 28.031118, 28.900198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931114, 27.671749, 28.960257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511164, -0.091972, 0.854548,
		-0.753937, -0.429390, -0.497195,
		0.412663, -0.898424, 0.150147,
		40.054913, 27.402222, 29.005301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249371, 27.647999, 29.248821>,  <39.766048, 28.031118, 28.900198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249371, 27.647999, 29.248821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574894, 27.429369, 29.327780>,  <39.770210, 27.298191, 29.375154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574894, 27.429369, 29.327780>,  <39.249371, 27.647999, 29.248821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574894, 27.429369, 29.327780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254953, -0.030566, 0.966470,
		-0.522215, -0.836852, -0.164226,
		0.813812, -0.546575, 0.197396,
		39.819038, 27.265396, 29.386999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967915, 27.215504, 29.649944>,  <39.249371, 27.647999, 29.248821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967915, 27.215504, 29.649944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354698, 27.182821, 29.746538>,  <39.586769, 27.163212, 29.804495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354698, 27.182821, 29.746538>,  <38.967915, 27.215504, 29.649944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354698, 27.182821, 29.746538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242584, -0.003663, 0.970123,
		-0.078386, -0.996649, -0.023364,
		0.966958, -0.081712, 0.241484,
		39.644787, 27.158308, 29.818983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004562, 26.759449, 30.218796>,  <38.967915, 27.215504, 29.649944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004562, 26.759449, 30.218796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.365128, 26.931719, 30.236584>,  <39.581467, 27.035082, 30.247257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.365128, 26.931719, 30.236584>,  <39.004562, 26.759449, 30.218796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365128, 26.931719, 30.236584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126507, 0.163760, 0.978355,
		0.414074, -0.887524, 0.202099,
		0.901409, 0.430678, 0.044469,
		39.635551, 27.060923, 30.249924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420902, 26.449022, 30.699398>,  <39.004562, 26.759449, 30.218796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420902, 26.449022, 30.699398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576920, 26.816748, 30.678501>,  <39.670528, 27.037384, 30.665962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576920, 26.816748, 30.678501>,  <39.420902, 26.449022, 30.699398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576920, 26.816748, 30.678501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089354, 0.094259, 0.991530,
		0.916452, -0.382068, 0.118909,
		0.390040, 0.919315, -0.052244,
		39.693932, 27.092543, 30.662828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761818, 26.487722, 31.244902>,  <39.420902, 26.449022, 30.699398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761818, 26.487722, 31.244902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751801, 26.877670, 31.156357>,  <39.745789, 27.111639, 31.103230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751801, 26.877670, 31.156357>,  <39.761818, 26.487722, 31.244902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751801, 26.877670, 31.156357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005664, 0.221566, 0.975129,
		0.999670, 0.023166, -0.011070,
		-0.025043, 0.974870, -0.221361,
		39.744289, 27.170132, 31.089949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309368, 26.833002, 31.664259>,  <39.761818, 26.487722, 31.244902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309368, 26.833002, 31.664259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067089, 27.133909, 31.560553>,  <39.921722, 27.314453, 31.498329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067089, 27.133909, 31.560553>,  <40.309368, 26.833002, 31.664259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067089, 27.133909, 31.560553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104472, 0.247830, 0.963154,
		0.788806, 0.610468, -0.071519,
		-0.605699, 0.752270, -0.259266,
		39.885380, 27.359591, 31.482773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581036, 27.508818, 31.936031>,  <40.309368, 26.833002, 31.664259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581036, 27.508818, 31.936031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186745, 27.552465, 31.884748>,  <39.950169, 27.578653, 31.853979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186745, 27.552465, 31.884748>,  <40.581036, 27.508818, 31.936031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186745, 27.552465, 31.884748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101873, 0.219701, 0.970234,
		0.134038, 0.969446, -0.205449,
		-0.985726, 0.109118, -0.128208,
		39.891026, 27.585201, 31.846287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222637, 28.178743, 32.277126>,  <40.581036, 27.508818, 31.936031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222637, 28.178743, 32.277126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947376, 27.890827, 32.240574>,  <39.782219, 27.718077, 32.218643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947376, 27.890827, 32.240574>,  <40.222637, 28.178743, 32.277126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947376, 27.890827, 32.240574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311372, 0.179207, 0.933238,
		-0.655360, 0.670661, -0.347444,
		-0.688151, -0.719791, -0.091380,
		39.740932, 27.674891, 32.213161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295498, 28.908403, 32.562412>,  <40.222637, 28.178743, 32.277126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295498, 28.908403, 32.562412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439072, 29.173552, 32.825249>,  <40.525215, 29.332640, 32.982952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439072, 29.173552, 32.825249>,  <40.295498, 28.908403, 32.562412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439072, 29.173552, 32.825249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466820, 0.737119, -0.488604,
		-0.808237, -0.131369, 0.574017,
		0.358932, 0.662870, 0.657092,
		40.546753, 29.372414, 33.022377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721733, 29.216209, 32.792034>,  <40.295498, 28.908403, 32.562412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721733, 29.216209, 32.792034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046055, 29.443905, 32.846542>,  <40.240646, 29.580523, 32.879246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046055, 29.443905, 32.846542>,  <39.721733, 29.216209, 32.792034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046055, 29.443905, 32.846542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416926, 0.725069, -0.548132,
		-0.410823, 0.387611, 0.825216,
		0.810800, 0.569239, 0.136270,
		40.289295, 29.614677, 32.887424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456207, 29.906981, 32.888897>,  <39.721733, 29.216209, 32.792034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456207, 29.906981, 32.888897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836761, 29.943987, 32.771378>,  <40.065094, 29.966190, 32.700867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836761, 29.943987, 32.771378>,  <39.456207, 29.906981, 32.888897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836761, 29.943987, 32.771378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241550, 0.815937, -0.525263,
		0.191122, 0.570691, 0.798614,
		0.951381, 0.092516, -0.293794,
		40.122177, 29.971741, 32.683239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666454, 30.599035, 32.970570>,  <39.456207, 29.906981, 32.888897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666454, 30.599035, 32.970570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908092, 30.438715, 32.695053>,  <40.053074, 30.342522, 32.529743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908092, 30.438715, 32.695053>,  <39.666454, 30.599035, 32.970570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908092, 30.438715, 32.695053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250430, 0.725059, -0.641541,
		0.756544, 0.560043, 0.337629,
		0.604091, -0.400802, -0.688790,
		40.089321, 30.318474, 32.488415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745644, 31.162968, 32.461357>,  <39.666454, 30.599035, 32.970570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745644, 31.162968, 32.461357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948727, 30.892765, 32.247467>,  <40.070576, 30.730644, 32.119133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948727, 30.892765, 32.247467>,  <39.745644, 31.162968, 32.461357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948727, 30.892765, 32.247467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034795, 0.604081, -0.796163,
		0.860827, 0.422823, 0.283192,
		0.507707, -0.675505, -0.534721,
		40.101040, 30.690113, 32.087051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286057, 31.511095, 32.026669>,  <39.745644, 31.162968, 32.461357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286057, 31.511095, 32.026669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218750, 31.152050, 31.863707>,  <40.178364, 30.936623, 31.765928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218750, 31.152050, 31.863707>,  <40.286057, 31.511095, 32.026669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218750, 31.152050, 31.863707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132180, 0.430114, -0.893046,
		0.976839, -0.096421, -0.191022,
		-0.168269, -0.897611, -0.407407,
		40.168270, 30.882767, 31.741484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700867, 31.497700, 31.289518>,  <40.286057, 31.511095, 32.026669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700867, 31.497700, 31.289518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.428917, 31.204556, 31.279020>,  <40.265747, 31.028669, 31.272722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.428917, 31.204556, 31.279020>,  <40.700867, 31.497700, 31.289518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428917, 31.204556, 31.279020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102069, 0.130006, -0.986246,
		0.726191, -0.667844, -0.163190,
		-0.679874, -0.732860, -0.026243,
		40.224957, 30.984697, 31.271147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004627, 31.118896, 30.761650>,  <40.700867, 31.497700, 31.289518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004627, 31.118896, 30.761650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616001, 31.032604, 30.800695>,  <40.382828, 30.980829, 30.824123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616001, 31.032604, 30.800695>,  <41.004627, 31.118896, 30.761650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616001, 31.032604, 30.800695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126001, 0.121981, -0.984502,
		0.200486, -0.968802, -0.145695,
		-0.971560, -0.215737, 0.097615,
		40.324532, 30.967884, 30.829981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822468, 30.517946, 30.327715>,  <41.004627, 31.118896, 30.761650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822468, 30.517946, 30.327715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509514, 30.760990, 30.382380>,  <40.321739, 30.906816, 30.415178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509514, 30.760990, 30.382380>,  <40.822468, 30.517946, 30.327715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509514, 30.760990, 30.382380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140445, 0.041650, -0.989212,
		-0.606747, -0.793142, 0.052749,
		-0.782389, 0.607610, 0.136664,
		40.274796, 30.943274, 30.423378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255939, 30.284966, 29.744162>,  <40.822468, 30.517946, 30.327715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255939, 30.284966, 29.744162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101425, 30.616850, 29.905338>,  <40.008717, 30.815981, 30.002045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101425, 30.616850, 29.905338>,  <40.255939, 30.284966, 29.744162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101425, 30.616850, 29.905338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553185, 0.141170, -0.821010,
		-0.738084, -0.540049, 0.404450,
		-0.386289, 0.829710, 0.402942,
		39.985538, 30.865763, 30.026220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491100, 30.128729, 29.654280>,  <40.255939, 30.284966, 29.744162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491100, 30.128729, 29.654280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.519955, 30.524582, 29.703957>,  <39.537270, 30.762094, 29.733763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.519955, 30.524582, 29.703957>,  <39.491100, 30.128729, 29.654280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519955, 30.524582, 29.703957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623497, 0.141933, -0.768834,
		-0.778490, -0.021970, 0.627272,
		0.072139, 0.989632, 0.124192,
		39.541595, 30.821472, 29.741215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714291, 30.488022, 29.648256>,  <39.491100, 30.128729, 29.654280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714291, 30.488022, 29.648256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992443, 30.748377, 29.526411>,  <39.159336, 30.904591, 29.453304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992443, 30.748377, 29.526411>,  <38.714291, 30.488022, 29.648256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992443, 30.748377, 29.526411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555125, 0.217337, -0.802870,
		-0.456375, 0.727400, 0.512456,
		0.695383, 0.650887, -0.304611,
		39.201057, 30.943644, 29.435028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393841, 30.948030, 29.112698>,  <38.714291, 30.488022, 29.648256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393841, 30.948030, 29.112698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.781246, 31.040720, 29.076279>,  <39.013687, 31.096334, 29.054428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.781246, 31.040720, 29.076279>,  <38.393841, 30.948030, 29.112698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781246, 31.040720, 29.076279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162814, 0.312831, -0.935750,
		-0.188353, 0.921108, 0.340709,
		0.968512, 0.231724, -0.091047,
		39.071800, 31.110237, 29.048965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454597, 31.521082, 28.819229>,  <38.393841, 30.948030, 29.112698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454597, 31.521082, 28.819229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815151, 31.362101, 28.750477>,  <39.031483, 31.266712, 28.709225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815151, 31.362101, 28.750477>,  <38.454597, 31.521082, 28.819229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815151, 31.362101, 28.750477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103654, 0.187350, -0.976809,
		0.420436, 0.898294, 0.127677,
		0.901382, -0.397451, -0.171880,
		39.085567, 31.242865, 28.698914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640350, 32.215786, 28.966183>,  <38.454597, 31.521082, 28.819229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640350, 32.215786, 28.966183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.299225, 32.422462, 28.996508>,  <38.094551, 32.546467, 29.014702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.299225, 32.422462, 28.996508>,  <38.640350, 32.215786, 28.966183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299225, 32.422462, 28.996508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105039, -0.311920, 0.944284,
		0.511548, 0.797332, 0.320281,
		-0.852810, 0.516689, 0.075811,
		38.043381, 32.577469, 29.019251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688400, 32.647274, 29.699932>,  <38.640350, 32.215786, 28.966183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688400, 32.647274, 29.699932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304550, 32.608337, 29.594378>,  <38.074238, 32.584976, 29.531044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304550, 32.608337, 29.594378>,  <38.688400, 32.647274, 29.699932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304550, 32.608337, 29.594378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187203, -0.479180, 0.857520,
		-0.209923, 0.872302, 0.441612,
		-0.959629, -0.097342, -0.263889,
		38.016663, 32.579136, 29.515211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321541, 32.790600, 30.282833>,  <38.688400, 32.647274, 29.699932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321541, 32.790600, 30.282833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.046318, 32.597931, 30.065735>,  <37.881184, 32.482330, 29.935476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.046318, 32.597931, 30.065735>,  <38.321541, 32.790600, 30.282833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046318, 32.597931, 30.065735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324567, -0.464674, 0.823853,
		-0.649029, 0.743012, 0.163385,
		-0.688054, -0.481675, -0.542744,
		37.839901, 32.453430, 29.902912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781940, 32.785336, 30.616480>,  <38.321541, 32.790600, 30.282833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781940, 32.785336, 30.616480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680183, 32.487751, 30.369316>,  <37.619129, 32.309200, 30.221018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680183, 32.487751, 30.369316>,  <37.781940, 32.785336, 30.616480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680183, 32.487751, 30.369316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413872, -0.493717, 0.764822,
		-0.874069, 0.450297, -0.182307,
		-0.254389, -0.743959, -0.617908,
		37.603867, 32.264565, 30.183943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117561, 32.644535, 30.794928>,  <37.781940, 32.785336, 30.616480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117561, 32.644535, 30.794928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.220928, 32.316566, 30.590597>,  <37.282948, 32.119785, 30.467999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.220928, 32.316566, 30.590597>,  <37.117561, 32.644535, 30.794928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220928, 32.316566, 30.590597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573597, -0.555715, 0.601804,
		-0.777308, 0.137494, -0.613912,
		0.258415, -0.819925, -0.510828,
		37.298454, 32.070587, 30.437349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495518, 32.354839, 30.565590>,  <37.117561, 32.644535, 30.794928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495518, 32.354839, 30.565590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.786438, 32.082241, 30.598080>,  <36.960991, 31.918682, 30.617573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.786438, 32.082241, 30.598080>,  <36.495518, 32.354839, 30.565590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786438, 32.082241, 30.598080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617451, -0.598049, 0.510972,
		-0.299648, -0.421782, -0.855751,
		0.727300, -0.681496, 0.081225,
		37.004627, 31.877792, 30.622448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136066, 31.755838, 30.629606>,  <36.495518, 32.354839, 30.565590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136066, 31.755838, 30.629606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505627, 31.624983, 30.708982>,  <36.727364, 31.546469, 30.756609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505627, 31.624983, 30.708982>,  <36.136066, 31.755838, 30.629606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505627, 31.624983, 30.708982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382588, -0.782854, 0.490679,
		-0.005169, -0.529263, -0.848442,
		0.923904, -0.327141, 0.198443,
		36.782799, 31.526840, 30.768515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087955, 31.060835, 30.614037>,  <36.136066, 31.755838, 30.629606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087955, 31.060835, 30.614037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425171, 31.110510, 30.823366>,  <36.627499, 31.140314, 30.948963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425171, 31.110510, 30.823366>,  <36.087955, 31.060835, 30.614037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425171, 31.110510, 30.823366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334824, -0.640288, 0.691320,
		0.420930, -0.758029, -0.498206,
		0.843036, 0.124186, 0.523323,
		36.678082, 31.147766, 30.980364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383991, 30.370810, 30.774954>,  <36.087955, 31.060835, 30.614037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383991, 30.370810, 30.774954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547237, 30.608740, 31.051973>,  <36.645184, 30.751497, 31.218185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547237, 30.608740, 31.051973>,  <36.383991, 30.370810, 30.774954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547237, 30.608740, 31.051973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067017, -0.737034, 0.672525,
		0.910468, -0.320878, -0.260930,
		0.408113, 0.594826, 0.692551,
		36.669670, 30.787188, 31.259739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705238, 29.890379, 31.300699>,  <36.383991, 30.370810, 30.774954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705238, 29.890379, 31.300699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.675293, 30.243382, 31.486422>,  <36.657326, 30.455183, 31.597855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.675293, 30.243382, 31.486422>,  <36.705238, 29.890379, 31.300699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675293, 30.243382, 31.486422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212625, -0.469032, 0.857205,
		0.974262, -0.034548, 0.222757,
		-0.074866, 0.882505, 0.464306,
		36.652832, 30.508133, 31.625713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260185, 29.862722, 31.723633>,  <36.705238, 29.890379, 31.300699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260185, 29.862722, 31.723633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983772, 30.118538, 31.858372>,  <36.817924, 30.272028, 31.939215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983772, 30.118538, 31.858372>,  <37.260185, 29.862722, 31.723633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983772, 30.118538, 31.858372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110474, -0.553985, 0.825164,
		0.714334, 0.533001, 0.453473,
		-0.691031, 0.639539, 0.336848,
		36.776463, 30.310400, 31.959427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406582, 29.797729, 32.480869>,  <37.260185, 29.862722, 31.723633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406582, 29.797729, 32.480869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053844, 29.983452, 32.447941>,  <36.842201, 30.094885, 32.428185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053844, 29.983452, 32.447941>,  <37.406582, 29.797729, 32.480869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053844, 29.983452, 32.447941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230768, -0.272681, 0.934019,
		0.411223, 0.842653, 0.347608,
		-0.881840, 0.464307, -0.082325,
		36.789291, 30.122744, 32.423244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.852901, 33.987263, 25.818188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494942, 33.892063, 25.667179>,  <38.280167, 33.834946, 25.576574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494942, 33.892063, 25.667179>,  <38.852901, 33.987263, 25.818188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494942, 33.892063, 25.667179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347341, -0.159706, 0.924039,
		-0.280209, 0.958046, 0.060254,
		-0.894895, -0.237996, -0.377520,
		38.226475, 33.820663, 25.553923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494713, 34.566513, 26.105587>,  <38.852901, 33.987263, 25.818188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494713, 34.566513, 26.105587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292038, 34.229965, 26.030365>,  <38.170433, 34.028034, 25.985231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292038, 34.229965, 26.030365>,  <38.494713, 34.566513, 26.105587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292038, 34.229965, 26.030365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280394, -0.045445, 0.958809,
		-0.815261, 0.538542, -0.212889,
		-0.506684, -0.841372, -0.188054,
		38.140034, 33.977554, 25.973949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048275, 34.558365, 26.602461>,  <38.494713, 34.566513, 26.105587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048275, 34.558365, 26.602461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004951, 34.177914, 26.486788>,  <37.978958, 33.949642, 26.417385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004951, 34.177914, 26.486788>,  <38.048275, 34.558365, 26.602461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004951, 34.177914, 26.486788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265082, -0.252728, 0.930516,
		-0.958124, 0.177441, -0.224753,
		-0.108310, -0.951127, -0.289181,
		37.972458, 33.892574, 26.400034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381329, 34.390919, 26.829447>,  <38.048275, 34.558365, 26.602461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381329, 34.390919, 26.829447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607754, 34.066547, 26.770168>,  <37.743607, 33.871925, 26.734600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607754, 34.066547, 26.770168>,  <37.381329, 34.390919, 26.829447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607754, 34.066547, 26.770168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215223, -0.318916, 0.923023,
		-0.795772, -0.490592, -0.355058,
		0.566061, -0.810933, -0.148198,
		37.777573, 33.823269, 26.725708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004719, 33.861984, 27.156605>,  <37.381329, 34.390919, 26.829447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004719, 33.861984, 27.156605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354012, 33.672634, 27.110336>,  <37.563587, 33.559025, 27.082575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354012, 33.672634, 27.110336>,  <37.004719, 33.861984, 27.156605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354012, 33.672634, 27.110336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179677, -0.533417, 0.826548,
		-0.452970, -0.700984, -0.550852,
		0.873232, -0.473378, -0.115671,
		37.615982, 33.530621, 27.075634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885578, 33.159603, 27.180727>,  <37.004719, 33.861984, 27.156605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885578, 33.159603, 27.180727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257355, 33.240986, 27.303854>,  <37.480419, 33.289814, 27.377729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257355, 33.240986, 27.303854>,  <36.885578, 33.159603, 27.180727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257355, 33.240986, 27.303854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073679, -0.715102, 0.695127,
		0.361550, -0.668756, -0.649651,
		0.929437, 0.203458, 0.307818,
		37.536186, 33.302025, 27.396200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237637, 32.512352, 27.475626>,  <36.885578, 33.159603, 27.180727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237637, 32.512352, 27.475626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491760, 32.779919, 27.629997>,  <37.644234, 32.940456, 27.722620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491760, 32.779919, 27.629997>,  <37.237637, 32.512352, 27.475626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491760, 32.779919, 27.629997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174037, -0.610896, 0.772345,
		0.752394, -0.423510, -0.504522,
		0.635306, 0.668914, 0.385929,
		37.682354, 32.980595, 27.745775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728344, 32.178570, 27.675827>,  <37.237637, 32.512352, 27.475626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728344, 32.178570, 27.675827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767281, 32.517418, 27.884789>,  <37.790642, 32.720726, 28.010166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767281, 32.517418, 27.884789>,  <37.728344, 32.178570, 27.675827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767281, 32.517418, 27.884789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047617, -0.528259, 0.847747,
		0.994112, -0.057642, -0.091757,
		0.097337, 0.847125, 0.522404,
		37.796482, 32.771557, 28.041510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119774, 31.976818, 28.335615>,  <37.728344, 32.178570, 27.675827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119774, 31.976818, 28.335615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965969, 32.329975, 28.443428>,  <37.873688, 32.541870, 28.508116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965969, 32.329975, 28.443428>,  <38.119774, 31.976818, 28.335615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965969, 32.329975, 28.443428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128387, -0.340292, 0.931514,
		0.914149, 0.323572, 0.244198,
		-0.384511, 0.882894, 0.269534,
		37.850616, 32.594845, 28.524288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978714, 31.937826, 28.242830>,  <38.119774, 31.976818, 28.335615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978714, 31.937826, 28.242830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180355, 31.595448, 28.288839>,  <39.301342, 31.390020, 28.316444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180355, 31.595448, 28.288839>,  <38.978714, 31.937826, 28.242830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180355, 31.595448, 28.288839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372090, 0.095066, -0.923315,
		0.779376, 0.508246, 0.366413,
		0.504105, -0.855949, 0.115021,
		39.331585, 31.338663, 28.323345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667591, 32.067764, 28.192526>,  <38.978714, 31.937826, 28.242830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667591, 32.067764, 28.192526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634468, 31.683422, 28.086779>,  <39.614594, 31.452816, 28.023331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634468, 31.683422, 28.086779>,  <39.667591, 32.067764, 28.192526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634468, 31.683422, 28.086779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376034, 0.215546, -0.901187,
		0.922899, -0.174033, 0.343468,
		-0.082803, -0.960860, -0.264370,
		39.609627, 31.395164, 28.007467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176151, 31.906361, 27.815636>,  <39.667591, 32.067764, 28.192526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176151, 31.906361, 27.815636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928528, 31.611309, 27.707804>,  <39.779953, 31.434278, 27.643105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928528, 31.611309, 27.707804>,  <40.176151, 31.906361, 27.815636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928528, 31.611309, 27.707804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205542, 0.179124, -0.962116,
		0.757974, -0.651012, 0.040727,
		-0.619054, -0.737630, -0.269582,
		39.742813, 31.390020, 27.626928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516903, 31.547745, 27.219179>,  <40.176151, 31.906361, 27.815636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516903, 31.547745, 27.219179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136280, 31.428831, 27.187773>,  <39.907906, 31.357483, 27.168928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136280, 31.428831, 27.187773>,  <40.516903, 31.547745, 27.219179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136280, 31.428831, 27.187773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157194, -0.250875, -0.955171,
		0.264260, -0.921240, 0.285453,
		-0.951555, -0.297285, -0.078518,
		39.850815, 31.339645, 27.164217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613979, 30.864048, 26.867470>,  <40.516903, 31.547745, 27.219179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613979, 30.864048, 26.867470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232265, 30.976852, 26.827854>,  <40.003239, 31.044535, 26.804085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232265, 30.976852, 26.827854>,  <40.613979, 30.864048, 26.867470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232265, 30.976852, 26.827854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014657, -0.375101, -0.926868,
		-0.298533, -0.883047, 0.362087,
		-0.954287, 0.282008, -0.099037,
		39.945980, 31.061455, 26.798143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352608, 30.330759, 26.413794>,  <40.613979, 30.864048, 26.867470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352608, 30.330759, 26.413794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131660, 30.660866, 26.366770>,  <39.999092, 30.858931, 26.338556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131660, 30.660866, 26.366770>,  <40.352608, 30.330759, 26.413794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131660, 30.660866, 26.366770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069396, -0.095013, -0.993054,
		-0.830704, -0.556694, -0.004788,
		-0.552372, 0.825266, -0.117560,
		39.965950, 30.908445, 26.331501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796326, 30.152336, 25.994097>,  <40.352608, 30.330759, 26.413794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796326, 30.152336, 25.994097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791050, 30.550091, 25.952103>,  <39.787884, 30.788744, 25.926907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791050, 30.550091, 25.952103>,  <39.796326, 30.152336, 25.994097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791050, 30.550091, 25.952103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273037, -0.104586, -0.956302,
		-0.961913, 0.016055, 0.272883,
		-0.013186, 0.994386, -0.104986,
		39.787094, 30.848406, 25.920607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241829, 30.198099, 25.503542>,  <39.796326, 30.152336, 25.994097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241829, 30.198099, 25.503542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474007, 30.523668, 25.513472>,  <39.613312, 30.719009, 25.519428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474007, 30.523668, 25.513472>,  <39.241829, 30.198099, 25.503542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474007, 30.523668, 25.513472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053113, -0.007423, -0.998561,
		-0.812567, 0.580927, -0.047538,
		0.580444, 0.813922, 0.024823,
		39.648140, 30.767845, 25.520918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909542, 30.607937, 25.159748>,  <39.241829, 30.198099, 25.503542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909542, 30.607937, 25.159748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288601, 30.735647, 25.157932>,  <39.516037, 30.812273, 25.156843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288601, 30.735647, 25.157932>,  <38.909542, 30.607937, 25.159748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288601, 30.735647, 25.157932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047873, 0.128014, -0.990616,
		-0.315698, 0.938976, 0.136597,
		0.947651, 0.319275, -0.004537,
		39.572895, 30.831430, 25.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864147, 31.086578, 24.803745>,  <38.909542, 30.607937, 25.159748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864147, 31.086578, 24.803745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259773, 31.036562, 24.772478>,  <39.497150, 31.006552, 24.753717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259773, 31.036562, 24.772478>,  <38.864147, 31.086578, 24.803745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259773, 31.036562, 24.772478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047919, 0.228793, -0.972295,
		0.139460, 0.965411, 0.220300,
		0.989068, -0.125040, -0.078169,
		39.556492, 30.999050, 24.749027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125652, 31.635836, 24.466297>,  <38.864147, 31.086578, 24.803745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125652, 31.635836, 24.466297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413437, 31.364647, 24.405987>,  <39.586109, 31.201935, 24.369801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413437, 31.364647, 24.405987>,  <39.125652, 31.635836, 24.466297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413437, 31.364647, 24.405987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131386, 0.346024, -0.928981,
		0.681992, 0.648556, 0.338026,
		0.719461, -0.677969, -0.150775,
		39.629276, 31.161257, 24.360754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613708, 32.000858, 24.122913>,  <39.125652, 31.635836, 24.466297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613708, 32.000858, 24.122913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722595, 31.619686, 24.069521>,  <39.787926, 31.390982, 24.037485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722595, 31.619686, 24.069521>,  <39.613708, 32.000858, 24.122913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722595, 31.619686, 24.069521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185711, 0.188141, -0.964424,
		0.944144, 0.237745, 0.228186,
		0.272218, -0.952932, -0.133480,
		39.804260, 31.333807, 24.029476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261272, 32.034710, 23.826775>,  <39.613708, 32.000858, 24.122913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261272, 32.034710, 23.826775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087559, 31.684017, 23.744080>,  <39.983330, 31.473602, 23.694464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087559, 31.684017, 23.744080>,  <40.261272, 32.034710, 23.826775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087559, 31.684017, 23.744080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234395, 0.111613, -0.965713,
		0.869746, -0.467849, 0.157031,
		-0.434281, -0.876732, -0.206736,
		39.957275, 31.420998, 23.682058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633579, 31.856419, 23.316559>,  <40.261272, 32.034710, 23.826775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633579, 31.856419, 23.316559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348370, 31.579369, 23.272989>,  <40.177242, 31.413137, 23.246847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348370, 31.579369, 23.272989>,  <40.633579, 31.856419, 23.316559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348370, 31.579369, 23.272989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217704, -0.071031, -0.973427,
		0.666484, -0.717790, 0.201434,
		-0.713024, -0.692627, -0.108925,
		40.134460, 31.371580, 23.240313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.150917, 30.852129, 22.202232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345203, 31.152283, 22.381565>,  <34.461777, 31.332375, 22.489164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345203, 31.152283, 22.381565>,  <34.150917, 30.852129, 22.202232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345203, 31.152283, 22.381565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152198, -0.432463, 0.888713,
		0.860763, -0.499899, -0.095849,
		0.485718, 0.750384, 0.448332,
		34.490917, 31.377398, 22.516066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540272, 30.422049, 22.707001>,  <34.150917, 30.852129, 22.202232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540272, 30.422049, 22.707001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572220, 30.804611, 22.819361>,  <34.591389, 31.034149, 22.886778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572220, 30.804611, 22.819361>,  <34.540272, 30.422049, 22.707001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572220, 30.804611, 22.819361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053442, -0.285505, 0.956886,
		0.995372, -0.061413, -0.073915,
		0.079868, 0.956408, 0.280901,
		34.596180, 31.091534, 22.903631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128605, 30.386284, 23.074377>,  <34.540272, 30.422049, 22.707001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128605, 30.386284, 23.074377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907120, 30.697016, 23.194340>,  <34.774231, 30.883455, 23.266317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907120, 30.697016, 23.194340>,  <35.128605, 30.386284, 23.074377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907120, 30.697016, 23.194340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055490, -0.324936, 0.944107,
		0.830859, 0.539402, 0.136814,
		-0.553709, 0.776828, 0.299908,
		34.741009, 30.930065, 23.284311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485638, 30.646875, 23.614222>,  <35.128605, 30.386284, 23.074377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485638, 30.646875, 23.614222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130985, 30.815245, 23.690861>,  <34.918194, 30.916267, 23.736845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130985, 30.815245, 23.690861>,  <35.485638, 30.646875, 23.614222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130985, 30.815245, 23.690861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079872, -0.268697, 0.959907,
		0.455531, 0.866386, 0.204615,
		-0.886629, 0.420925, 0.191600,
		34.864998, 30.941523, 23.748341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590107, 31.247761, 24.132929>,  <35.485638, 30.646875, 23.614222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590107, 31.247761, 24.132929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233513, 31.066664, 24.126343>,  <35.019554, 30.958006, 24.122391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233513, 31.066664, 24.126343>,  <35.590107, 31.247761, 24.132929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233513, 31.066664, 24.126343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122496, -0.275873, 0.953357,
		-0.436168, 0.847890, 0.301397,
		-0.891489, -0.452744, -0.016464,
		34.966064, 30.930841, 24.121403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428600, 31.346733, 24.797010>,  <35.590107, 31.247761, 24.132929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428600, 31.346733, 24.797010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144417, 31.089376, 24.682962>,  <34.973907, 30.934963, 24.614532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144417, 31.089376, 24.682962>,  <35.428600, 31.346733, 24.797010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144417, 31.089376, 24.682962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187565, -0.217378, 0.957897,
		-0.678281, 0.734027, 0.033762,
		-0.710461, -0.643390, -0.285121,
		34.931278, 30.896358, 24.597425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023041, 31.369741, 25.328239>,  <35.428600, 31.346733, 24.797010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023041, 31.369741, 25.328239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927967, 31.018587, 25.161951>,  <34.870922, 30.807894, 25.062178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927967, 31.018587, 25.161951>,  <35.023041, 31.369741, 25.328239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927967, 31.018587, 25.161951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214195, -0.370081, 0.903969,
		-0.947432, 0.303903, -0.100077,
		-0.237682, -0.877886, -0.415721,
		34.856663, 30.755222, 25.037235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473633, 31.187277, 25.703566>,  <35.023041, 31.369741, 25.328239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473633, 31.187277, 25.703566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.563068, 30.842405, 25.521729>,  <34.616730, 30.635483, 25.412626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.563068, 30.842405, 25.521729>,  <34.473633, 31.187277, 25.703566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563068, 30.842405, 25.521729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156579, -0.492114, 0.856333,
		-0.962025, -0.120288, -0.245030,
		0.223589, -0.862180, -0.454591,
		34.630146, 30.583752, 25.385351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893742, 30.779907, 25.860985>,  <34.473633, 31.187277, 25.703566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893742, 30.779907, 25.860985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.188835, 30.542549, 25.732216>,  <34.365891, 30.400135, 25.654955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.188835, 30.542549, 25.732216>,  <33.893742, 30.779907, 25.860985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188835, 30.542549, 25.732216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078771, -0.549260, 0.831930,
		-0.670483, -0.588383, -0.451949,
		0.737732, -0.593396, -0.321922,
		34.410156, 30.364531, 25.635639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502750, 30.182924, 25.676147>,  <33.893742, 30.779907, 25.860985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502750, 30.182924, 25.676147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892429, 30.114796, 25.735394>,  <34.126236, 30.073917, 25.770941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892429, 30.114796, 25.735394>,  <33.502750, 30.182924, 25.676147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892429, 30.114796, 25.735394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220741, -0.581866, 0.782755,
		-0.047138, -0.795250, -0.604447,
		0.974193, -0.170323, 0.148116,
		34.184689, 30.063698, 25.779829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571869, 29.547274, 25.788385>,  <33.502750, 30.182924, 25.676147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571869, 29.547274, 25.788385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915871, 29.674351, 25.948112>,  <34.122272, 29.750597, 26.043949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915871, 29.674351, 25.948112>,  <33.571869, 29.547274, 25.788385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915871, 29.674351, 25.948112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279840, -0.360744, 0.889693,
		0.426702, -0.876889, -0.221339,
		0.860009, 0.317694, 0.399319,
		34.173874, 29.769659, 26.067907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939110, 29.022167, 26.072174>,  <33.571869, 29.547274, 25.788385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939110, 29.022167, 26.072174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067913, 29.340273, 26.277645>,  <34.145195, 29.531136, 26.400928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067913, 29.340273, 26.277645>,  <33.939110, 29.022167, 26.072174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067913, 29.340273, 26.277645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075200, -0.519378, 0.851229,
		0.943746, -0.312731, -0.107440,
		0.322008, 0.795264, 0.513678,
		34.164516, 29.578852, 26.431749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494892, 28.791639, 26.555523>,  <33.939110, 29.022167, 26.072174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494892, 28.791639, 26.555523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.380402, 29.141838, 26.711256>,  <34.311707, 29.351957, 26.804695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.380402, 29.141838, 26.711256>,  <34.494892, 28.791639, 26.555523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380402, 29.141838, 26.711256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020821, -0.400555, 0.916036,
		0.957936, 0.270301, 0.096421,
		-0.286227, 0.875496, 0.389333,
		34.294533, 29.404488, 26.828056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859779, 28.718542, 27.127480>,  <34.494892, 28.791639, 26.555523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859779, 28.718542, 27.127480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596832, 29.013306, 27.190523>,  <34.439064, 29.190163, 27.228350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596832, 29.013306, 27.190523>,  <34.859779, 28.718542, 27.127480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596832, 29.013306, 27.190523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072985, -0.270426, 0.959970,
		0.750031, 0.619546, 0.231552,
		-0.657364, 0.736907, 0.157610,
		34.399624, 29.234377, 27.237806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635967, 28.989941, 26.929451>,  <34.859779, 28.718542, 27.127480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635967, 28.989941, 26.929451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907856, 28.697824, 26.956713>,  <36.070992, 28.522554, 26.973070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907856, 28.697824, 26.956713>,  <35.635967, 28.989941, 26.929451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907856, 28.697824, 26.956713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256627, 0.149745, -0.954840,
		0.687106, 0.666520, 0.289198,
		0.679726, -0.730293, 0.068156,
		36.111774, 28.478737, 26.977160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209244, 29.277573, 26.604483>,  <35.635967, 28.989941, 26.929451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209244, 29.277573, 26.604483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277931, 28.883951, 26.585922>,  <36.319141, 28.647778, 26.574787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277931, 28.883951, 26.585922>,  <36.209244, 29.277573, 26.604483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277931, 28.883951, 26.585922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339197, 0.103276, -0.935029,
		0.924911, 0.144820, 0.351521,
		0.171714, -0.984053, -0.046399,
		36.329445, 28.588736, 26.572002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926319, 29.206978, 26.340870>,  <36.209244, 29.277573, 26.604483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926319, 29.206978, 26.340870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.789783, 28.833139, 26.300833>,  <36.707863, 28.608837, 26.276810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.789783, 28.833139, 26.300833>,  <36.926319, 29.206978, 26.340870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789783, 28.833139, 26.300833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427875, -0.059683, -0.901865,
		0.836905, -0.350670, 0.420262,
		-0.341339, -0.934596, -0.100094,
		36.687382, 28.552761, 26.270805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531940, 28.636816, 26.212933>,  <36.926319, 29.206978, 26.340870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531940, 28.636816, 26.212933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189148, 28.504181, 26.055128>,  <36.983475, 28.424601, 25.960445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189148, 28.504181, 26.055128>,  <37.531940, 28.636816, 26.212933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189148, 28.504181, 26.055128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402509, 0.047401, -0.914188,
		0.321833, -0.942233, 0.092845,
		-0.856977, -0.331587, -0.394513,
		36.932056, 28.404705, 25.936775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776009, 28.273279, 25.678202>,  <37.531940, 28.636816, 26.212933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776009, 28.273279, 25.678202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388351, 28.315577, 25.589142>,  <37.155758, 28.340956, 25.535706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388351, 28.315577, 25.589142>,  <37.776009, 28.273279, 25.678202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388351, 28.315577, 25.589142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243318, 0.266090, -0.932734,
		-0.039387, -0.958130, -0.283610,
		-0.969146, 0.105745, -0.222650,
		37.097607, 28.347300, 25.522346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654675, 27.905012, 25.129189>,  <37.776009, 28.273279, 25.678202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654675, 27.905012, 25.129189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368019, 28.183435, 25.146778>,  <37.196026, 28.350491, 25.157331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368019, 28.183435, 25.146778>,  <37.654675, 27.905012, 25.129189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368019, 28.183435, 25.146778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254159, 0.319344, -0.912920,
		-0.649489, -0.643055, -0.405764,
		-0.716636, 0.696060, 0.043972,
		37.153027, 28.392254, 25.159969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333855, 27.837372, 24.559526>,  <37.654675, 27.905012, 25.129189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333855, 27.837372, 24.559526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173084, 28.184963, 24.674995>,  <37.076622, 28.393518, 24.744276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173084, 28.184963, 24.674995>,  <37.333855, 27.837372, 24.559526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173084, 28.184963, 24.674995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076395, 0.345980, -0.935127,
		-0.912480, -0.353799, -0.205444,
		-0.401926, 0.868979, 0.288671,
		37.052505, 28.445658, 24.761597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901558, 28.019842, 24.013954>,  <37.333855, 27.837372, 24.559526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901558, 28.019842, 24.013954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961056, 28.362226, 24.212027>,  <36.996754, 28.567657, 24.330870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961056, 28.362226, 24.212027>,  <36.901558, 28.019842, 24.013954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961056, 28.362226, 24.212027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035563, 0.495798, -0.867710,
		-0.988236, 0.146679, 0.043308,
		0.148747, 0.855961, 0.495182,
		37.005680, 28.619015, 24.360580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418060, 28.544355, 23.739855>,  <36.901558, 28.019842, 24.013954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418060, 28.544355, 23.739855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.709480, 28.772552, 23.891516>,  <36.884331, 28.909472, 23.982512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.709480, 28.772552, 23.891516>,  <36.418060, 28.544355, 23.739855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709480, 28.772552, 23.891516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069820, 0.488780, -0.869609,
		-0.681426, 0.660025, 0.316268,
		0.728549, 0.570492, 0.379150,
		36.928043, 28.943701, 24.005260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275776, 29.375700, 23.697767>,  <36.418060, 28.544355, 23.739855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275776, 29.375700, 23.697767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666088, 29.288195, 23.697027>,  <36.900276, 29.235691, 23.696583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666088, 29.288195, 23.697027>,  <36.275776, 29.375700, 23.697767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666088, 29.288195, 23.697027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113434, 0.513156, -0.850767,
		0.187064, 0.829948, 0.525541,
		0.975777, -0.218762, -0.001849,
		36.958820, 29.222567, 23.696472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702335, 29.993599, 23.509182>,  <36.275776, 29.375700, 23.697767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702335, 29.993599, 23.509182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922840, 29.672031, 23.419891>,  <37.055141, 29.479092, 23.366318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922840, 29.672031, 23.419891>,  <36.702335, 29.993599, 23.509182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922840, 29.672031, 23.419891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148432, 0.357777, -0.921934,
		0.821026, 0.475089, 0.316555,
		0.551257, -0.803919, -0.223226,
		37.088219, 29.430855, 23.352924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349907, 30.262922, 23.152885>,  <36.702335, 29.993599, 23.509182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349907, 30.262922, 23.152885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314342, 29.875692, 23.059143>,  <37.293003, 29.643354, 23.002897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314342, 29.875692, 23.059143>,  <37.349907, 30.262922, 23.152885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314342, 29.875692, 23.059143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213538, 0.211292, -0.953812,
		0.972880, -0.134848, 0.187935,
		-0.088910, -0.968076, -0.234357,
		37.287670, 29.585270, 22.988836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977932, 30.154747, 22.690735>,  <37.349907, 30.262922, 23.152885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977932, 30.154747, 22.690735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694218, 29.889568, 22.594889>,  <37.523991, 29.730461, 22.537382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694218, 29.889568, 22.594889>,  <37.977932, 30.154747, 22.690735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694218, 29.889568, 22.594889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148254, 0.192023, -0.970128,
		0.689155, -0.723621, -0.037914,
		-0.709285, -0.662947, -0.239614,
		37.481430, 29.690683, 22.523005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281010, 29.735586, 22.234058>,  <37.977932, 30.154747, 22.690735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281010, 29.735586, 22.234058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885799, 29.715115, 22.175844>,  <37.648674, 29.702831, 22.140917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885799, 29.715115, 22.175844>,  <38.281010, 29.735586, 22.234058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885799, 29.715115, 22.175844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132519, 0.201406, -0.970502,
		0.078981, -0.978170, -0.192212,
		-0.988029, -0.051179, -0.145533,
		37.589390, 29.699760, 22.132185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531757, 29.049423, 22.164295>,  <38.281010, 29.735586, 22.234058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531757, 29.049423, 22.164295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895912, 28.941053, 22.039209>,  <39.114407, 28.876032, 21.964157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895912, 28.941053, 22.039209>,  <38.531757, 29.049423, 22.164295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895912, 28.941053, 22.039209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256386, -0.223814, 0.940305,
		-0.324745, -0.936219, -0.134296,
		0.910388, -0.270928, -0.312716,
		39.169029, 28.859776, 21.945395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641598, 28.350956, 22.466387>,  <38.531757, 29.049423, 22.164295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641598, 28.350956, 22.466387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.006187, 28.490602, 22.379356>,  <39.224941, 28.574390, 22.327139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.006187, 28.490602, 22.379356>,  <38.641598, 28.350956, 22.466387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006187, 28.490602, 22.379356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342271, -0.350223, 0.871891,
		0.228194, -0.869172, -0.438711,
		0.911470, 0.349119, -0.217574,
		39.279629, 28.595339, 22.314085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148895, 27.756535, 22.533117>,  <38.641598, 28.350956, 22.466387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148895, 27.756535, 22.533117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.338634, 28.106865, 22.568729>,  <39.452477, 28.317062, 22.590096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.338634, 28.106865, 22.568729>,  <39.148895, 27.756535, 22.533117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338634, 28.106865, 22.568729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414565, -0.311448, 0.855065,
		0.776614, -0.368691, -0.510821,
		0.474348, 0.875824, 0.089028,
		39.480938, 28.369612, 22.595438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822533, 27.523260, 22.591724>,  <39.148895, 27.756535, 22.533117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822533, 27.523260, 22.591724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.782158, 27.890760, 22.744413>,  <39.757931, 28.111259, 22.836027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.782158, 27.890760, 22.744413>,  <39.822533, 27.523260, 22.591724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782158, 27.890760, 22.744413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371407, -0.321145, 0.871162,
		0.922967, 0.229710, -0.308813,
		-0.100941, 0.918749, 0.381722,
		39.751877, 28.166386, 22.858931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472897, 27.633610, 22.830126>,  <39.822533, 27.523260, 22.591724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472897, 27.633610, 22.830126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.244083, 27.892914, 23.031137>,  <40.106796, 28.048496, 23.151745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.244083, 27.892914, 23.031137>,  <40.472897, 27.633610, 22.830126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244083, 27.892914, 23.031137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418731, -0.296021, 0.858508,
		0.705297, 0.701519, -0.102114,
		-0.572032, 0.648261, 0.502530,
		40.072475, 28.087393, 23.181896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872494, 27.874409, 23.369232>,  <40.472897, 27.633610, 22.830126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872494, 27.874409, 23.369232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497723, 27.962646, 23.477678>,  <40.272861, 28.015589, 23.542746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497723, 27.962646, 23.477678>,  <40.872494, 27.874409, 23.369232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497723, 27.962646, 23.477678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236115, -0.172455, 0.956299,
		0.257708, 0.959999, 0.109493,
		-0.936929, 0.220594, 0.271113,
		40.216644, 28.028824, 23.559011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954422, 28.383207, 23.882959>,  <40.872494, 27.874409, 23.369232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954422, 28.383207, 23.882959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588257, 28.231005, 23.935465>,  <40.368557, 28.139683, 23.966969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588257, 28.231005, 23.935465>,  <40.954422, 28.383207, 23.882959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588257, 28.231005, 23.935465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269824, -0.338111, 0.901597,
		-0.298681, 0.860753, 0.412181,
		-0.915415, -0.380506, 0.131264,
		40.313633, 28.116854, 23.974844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727604, 28.686974, 24.516947>,  <40.954422, 28.383207, 23.882959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727604, 28.686974, 24.516947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486923, 28.369381, 24.482201>,  <40.342514, 28.178825, 24.461353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486923, 28.369381, 24.482201>,  <40.727604, 28.686974, 24.516947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486923, 28.369381, 24.482201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170727, -0.234097, 0.957105,
		-0.780259, 0.561064, 0.276412,
		-0.601705, -0.793981, -0.086867,
		40.306412, 28.131187, 24.456141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353168, 28.742268, 25.055592>,  <40.727604, 28.686974, 24.516947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353168, 28.742268, 25.055592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.332024, 28.364086, 24.927017>,  <40.319336, 28.137177, 24.849873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.332024, 28.364086, 24.927017>,  <40.353168, 28.742268, 25.055592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332024, 28.364086, 24.927017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179570, -0.325639, 0.928285,
		-0.982324, -0.008645, 0.186990,
		-0.052866, -0.945455, -0.321435,
		40.316162, 28.080450, 24.830587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868114, 28.422205, 25.501274>,  <40.353168, 28.742268, 25.055592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868114, 28.422205, 25.501274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103035, 28.128504, 25.365068>,  <40.243988, 27.952284, 25.283344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103035, 28.128504, 25.365068>,  <39.868114, 28.422205, 25.501274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103035, 28.128504, 25.365068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126563, -0.332227, 0.934670,
		-0.799411, -0.592031, -0.102188,
		0.587303, -0.734252, -0.340515,
		40.279224, 27.908228, 25.262915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635174, 27.909288, 25.836464>,  <39.868114, 28.422205, 25.501274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635174, 27.909288, 25.836464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974663, 27.748243, 25.699312>,  <40.178356, 27.651617, 25.617022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974663, 27.748243, 25.699312>,  <39.635174, 27.909288, 25.836464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974663, 27.748243, 25.699312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074991, -0.550193, 0.831663,
		-0.523486, -0.731568, -0.436772,
		0.848728, -0.402610, -0.342879,
		40.229282, 27.627460, 25.596449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500813, 27.243382, 25.927046>,  <39.635174, 27.909288, 25.836464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500813, 27.243382, 25.927046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899891, 27.270504, 25.928282>,  <40.139336, 27.286777, 25.929024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899891, 27.270504, 25.928282>,  <39.500813, 27.243382, 25.927046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899891, 27.270504, 25.928282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027465, -0.444912, 0.895153,
		0.062073, -0.893004, -0.445748,
		0.997694, 0.067807, 0.003090,
		40.199200, 27.290846, 25.929209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835510, 26.511024, 26.060436>,  <39.500813, 27.243382, 25.927046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835510, 26.511024, 26.060436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080387, 26.810001, 26.163626>,  <40.227314, 26.989388, 26.225540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080387, 26.810001, 26.163626>,  <39.835510, 26.511024, 26.060436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080387, 26.810001, 26.163626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040329, -0.355347, 0.933864,
		0.789679, -0.561301, -0.247685,
		0.612193, 0.747442, 0.257973,
		40.264046, 27.034233, 26.241018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262722, 26.234768, 26.467911>,  <39.835510, 26.511024, 26.060436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262722, 26.234768, 26.467911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348057, 26.619186, 26.538195>,  <40.399258, 26.849838, 26.580366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348057, 26.619186, 26.538195>,  <40.262722, 26.234768, 26.467911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348057, 26.619186, 26.538195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050105, -0.168852, 0.984367,
		0.975692, -0.218809, 0.012130,
		0.213340, 0.961047, 0.175711,
		40.412060, 26.907501, 26.590908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.926643, 31.283972, 22.979698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535892, 31.276863, 22.894476>,  <40.301441, 31.272598, 22.843344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535892, 31.276863, 22.894476>,  <40.926643, 31.283972, 22.979698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535892, 31.276863, 22.894476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213714, -0.053975, -0.975404,
		0.005839, -0.998384, 0.056526,
		-0.976879, -0.017775, -0.213053,
		40.242828, 31.271532, 22.830561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918701, 31.023394, 22.305716>,  <40.926643, 31.283972, 22.979698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918701, 31.023394, 22.305716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.547729, 31.169922, 22.335884>,  <40.325146, 31.257839, 22.353985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.547729, 31.169922, 22.335884>,  <40.918701, 31.023394, 22.305716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547729, 31.169922, 22.335884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018419, 0.246145, -0.969058,
		-0.373551, -0.897341, -0.235029,
		-0.927427, 0.366321, 0.075419,
		40.269501, 31.279818, 22.358509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613220, 30.867613, 21.585352>,  <40.918701, 31.023394, 22.305716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613220, 30.867613, 21.585352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377850, 31.152479, 21.738491>,  <40.236629, 31.323399, 21.830376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377850, 31.152479, 21.738491>,  <40.613220, 30.867613, 21.585352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377850, 31.152479, 21.738491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342132, 0.209716, -0.915950,
		-0.732600, -0.669953, 0.120254,
		-0.588424, 0.712168, 0.382850,
		40.201321, 31.366129, 21.853346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854561, 30.750153, 21.343962>,  <40.613220, 30.867613, 21.585352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854561, 30.750153, 21.343962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.928204, 31.131880, 21.438093>,  <39.972389, 31.360916, 21.494572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.928204, 31.131880, 21.438093>,  <39.854561, 30.750153, 21.343962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928204, 31.131880, 21.438093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462936, 0.295394, -0.835723,
		-0.867061, 0.044923, 0.496173,
		0.184110, 0.954319, 0.235328,
		39.983437, 31.418175, 21.508692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215122, 31.034487, 21.253269>,  <39.854561, 30.750153, 21.343962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215122, 31.034487, 21.253269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.481705, 31.332218, 21.236242>,  <39.641655, 31.510857, 21.226027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.481705, 31.332218, 21.236242>,  <39.215122, 31.034487, 21.253269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481705, 31.332218, 21.236242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488842, 0.393162, -0.778753,
		-0.562911, 0.539814, 0.625885,
		0.666456, 0.744328, -0.042569,
		39.681641, 31.555517, 21.223473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817451, 31.642788, 21.132568>,  <39.215122, 31.034487, 21.253269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817451, 31.642788, 21.132568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194031, 31.749857, 21.050575>,  <39.419979, 31.814098, 21.001379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194031, 31.749857, 21.050575>,  <38.817451, 31.642788, 21.132568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194031, 31.749857, 21.050575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296269, 0.366656, -0.881923,
		-0.160909, 0.891019, 0.424492,
		0.941453, 0.267673, -0.204983,
		39.476467, 31.830158, 20.989080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804916, 32.387394, 20.797876>,  <38.817451, 31.642788, 21.132568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804916, 32.387394, 20.797876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141441, 32.211468, 20.672178>,  <39.343357, 32.105911, 20.596760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141441, 32.211468, 20.672178>,  <38.804916, 32.387394, 20.797876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141441, 32.211468, 20.672178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174254, 0.329638, -0.927887,
		0.511688, 0.835404, 0.200690,
		0.841315, -0.439817, -0.314245,
		39.393837, 32.079521, 20.577906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214775, 32.949261, 20.513742>,  <38.804916, 32.387394, 20.797876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214775, 32.949261, 20.513742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371708, 32.610416, 20.370365>,  <39.465866, 32.407108, 20.284340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371708, 32.610416, 20.370365>,  <39.214775, 32.949261, 20.513742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371708, 32.610416, 20.370365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075278, 0.417947, -0.905347,
		0.916738, 0.328214, 0.227742,
		0.392332, -0.847110, -0.358441,
		39.489407, 32.356285, 20.262833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800980, 33.275459, 20.178932>,  <39.214775, 32.949261, 20.513742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800980, 33.275459, 20.178932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.743938, 32.903698, 20.042774>,  <39.709713, 32.680641, 19.961079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.743938, 32.903698, 20.042774>,  <39.800980, 33.275459, 20.178932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743938, 32.903698, 20.042774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231598, 0.303033, -0.924410,
		0.962304, -0.210655, 0.172036,
		-0.142598, -0.929406, -0.340397,
		39.701160, 32.624878, 19.940655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350452, 33.134201, 19.712454>,  <39.800980, 33.275459, 20.178932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350452, 33.134201, 19.712454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066975, 32.866604, 19.622829>,  <39.896889, 32.706047, 19.569054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066975, 32.866604, 19.622829>,  <40.350452, 33.134201, 19.712454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066975, 32.866604, 19.622829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031988, 0.347727, -0.937050,
		0.704793, -0.656912, -0.267831,
		-0.708691, -0.668994, -0.224063,
		39.854366, 32.665905, 19.555611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606155, 32.794434, 19.110907>,  <40.350452, 33.134201, 19.712454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606155, 32.794434, 19.110907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.210224, 32.742111, 19.133274>,  <39.972664, 32.710716, 19.146694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.210224, 32.742111, 19.133274>,  <40.606155, 32.794434, 19.110907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210224, 32.742111, 19.133274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088156, 0.255489, -0.962784,
		0.111654, -0.957922, -0.264423,
		-0.989829, -0.130809, 0.055920,
		39.913277, 32.702869, 19.150051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448803, 32.500408, 18.586794>,  <40.606155, 32.794434, 19.110907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448803, 32.500408, 18.586794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084679, 32.635807, 18.682083>,  <39.866203, 32.717045, 18.739256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084679, 32.635807, 18.682083>,  <40.448803, 32.500408, 18.586794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084679, 32.635807, 18.682083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210787, 0.116209, -0.970600,
		-0.356227, -0.933764, -0.034436,
		-0.910313, 0.338496, 0.238223,
		39.811584, 32.737354, 18.753550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908672, 32.086815, 18.089884>,  <40.448803, 32.500408, 18.586794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908672, 32.086815, 18.089884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098606, 31.912699, 17.783930>,  <41.212566, 31.808228, 17.600357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098606, 31.912699, 17.783930>,  <40.908672, 32.086815, 18.089884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098606, 31.912699, 17.783930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370478, -0.887222, 0.274924,
		-0.798295, 0.152828, -0.582554,
		0.474838, -0.435294, -0.764884,
		41.241058, 31.782110, 17.554464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829338, 32.427406, 17.396957>,  <40.908672, 32.086815, 18.089884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829338, 32.427406, 17.396957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227261, 32.465397, 17.411634>,  <41.466015, 32.488194, 17.420441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227261, 32.465397, 17.411634>,  <40.829338, 32.427406, 17.396957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227261, 32.465397, 17.411634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079730, -0.950767, 0.299474,
		0.063328, -0.294993, -0.953398,
		0.994803, 0.094979, 0.036691,
		41.525700, 32.493889, 17.422642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386040, 31.869308, 17.255806>,  <40.829338, 32.427406, 17.396957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386040, 31.869308, 17.255806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.083000, 31.640221, 17.130568>,  <39.901176, 31.502768, 17.055426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.083000, 31.640221, 17.130568>,  <40.386040, 31.869308, 17.255806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083000, 31.640221, 17.130568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149978, -0.619589, 0.770465,
		-0.635252, 0.536749, 0.555298,
		-0.757603, -0.572721, -0.313095,
		39.855721, 31.468405, 17.036638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064224, 31.713846, 17.837122>,  <40.386040, 31.869308, 17.255806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064224, 31.713846, 17.837122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965717, 31.433702, 17.569138>,  <39.906612, 31.265615, 17.408346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965717, 31.433702, 17.569138>,  <40.064224, 31.713846, 17.837122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965717, 31.433702, 17.569138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086487, -0.704374, 0.704541,
		-0.965335, 0.115564, 0.234037,
		-0.246269, -0.700359, -0.669962,
		39.891838, 31.223595, 17.368149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373436, 31.501425, 17.998255>,  <40.064224, 31.713846, 17.837122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373436, 31.501425, 17.998255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.553654, 31.205942, 17.797729>,  <39.661785, 31.028652, 17.677414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.553654, 31.205942, 17.797729>,  <39.373436, 31.501425, 17.998255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553654, 31.205942, 17.797729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172354, -0.622948, 0.763041,
		-0.875957, -0.257383, -0.407987,
		0.450548, -0.738709, -0.501314,
		39.688820, 30.984329, 17.647335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006256, 30.957451, 18.214617>,  <39.373436, 31.501425, 17.998255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006256, 30.957451, 18.214617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.346397, 30.825171, 18.050894>,  <39.550484, 30.745802, 17.952660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.346397, 30.825171, 18.050894>,  <39.006256, 30.957451, 18.214617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346397, 30.825171, 18.050894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119164, -0.636612, 0.761922,
		-0.512536, -0.696680, -0.501940,
		0.850356, -0.330700, -0.409306,
		39.601505, 30.725960, 17.928102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858929, 30.262478, 18.259996>,  <39.006256, 30.957451, 18.214617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858929, 30.262478, 18.259996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257252, 30.280251, 18.228010>,  <39.496246, 30.290915, 18.208818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257252, 30.280251, 18.228010>,  <38.858929, 30.262478, 18.259996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257252, 30.280251, 18.228010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083803, -0.793623, 0.602610,
		-0.036688, -0.606785, -0.794019,
		0.995806, 0.044432, -0.079967,
		39.555992, 30.293581, 18.204020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069012, 29.562489, 18.168335>,  <38.858929, 30.262478, 18.259996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069012, 29.562489, 18.168335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.388412, 29.771109, 18.288591>,  <39.580051, 29.896280, 18.360744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.388412, 29.771109, 18.288591>,  <39.069012, 29.562489, 18.168335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388412, 29.771109, 18.288591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097867, -0.605228, 0.790013,
		0.593986, -0.601403, -0.534317,
		0.798500, 0.521549, 0.300640,
		39.627964, 29.927574, 18.378784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478050, 29.077620, 18.417625>,  <39.069012, 29.562489, 18.168335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478050, 29.077620, 18.417625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598091, 29.418501, 18.589062>,  <39.670116, 29.623030, 18.691923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598091, 29.418501, 18.589062>,  <39.478050, 29.077620, 18.417625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598091, 29.418501, 18.589062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078508, -0.469841, 0.879253,
		0.950671, -0.230216, -0.207904,
		0.300101, 0.852203, 0.428591,
		39.688122, 29.674162, 18.717640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927311, 28.824490, 18.903030>,  <39.478050, 29.077620, 18.417625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927311, 28.824490, 18.903030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.840366, 29.191845, 19.035282>,  <39.788200, 29.412258, 19.114634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.840366, 29.191845, 19.035282>,  <39.927311, 28.824490, 18.903030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840366, 29.191845, 19.035282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075754, -0.321833, 0.943761,
		0.973147, 0.230184, 0.000382,
		-0.217361, 0.918389, 0.330629,
		39.775158, 29.467361, 19.134470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461876, 28.994293, 19.328287>,  <39.927311, 28.824490, 18.903030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461876, 28.994293, 19.328287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.141418, 29.216063, 19.418421>,  <39.949142, 29.349125, 19.472502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.141418, 29.216063, 19.418421>,  <40.461876, 28.994293, 19.328287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141418, 29.216063, 19.418421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081640, -0.271754, 0.958898,
		0.592872, 0.786615, 0.172452,
		-0.801148, 0.554424, 0.225334,
		39.901073, 29.382389, 19.486021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598030, 29.294357, 19.909910>,  <40.461876, 28.994293, 19.328287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598030, 29.294357, 19.909910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198448, 29.289158, 19.892351>,  <39.958698, 29.286037, 19.881817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198448, 29.289158, 19.892351>,  <40.598030, 29.294357, 19.909910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198448, 29.289158, 19.892351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038774, -0.269542, 0.962208,
		-0.024341, 0.962901, 0.268755,
		-0.998951, -0.013000, -0.043896,
		39.898762, 29.285257, 19.879183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435131, 29.610098, 20.458185>,  <40.598030, 29.294357, 19.909910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435131, 29.610098, 20.458185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087555, 29.422865, 20.393879>,  <39.879009, 29.310524, 20.355295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087555, 29.422865, 20.393879>,  <40.435131, 29.610098, 20.458185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087555, 29.422865, 20.393879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020507, -0.290498, 0.956656,
		-0.494498, 0.834570, 0.242825,
		-0.868937, -0.468085, -0.160765,
		39.826874, 29.282440, 20.345650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950764, 29.897694, 20.973223>,  <40.435131, 29.610098, 20.458185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950764, 29.897694, 20.973223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781948, 29.554428, 20.856304>,  <39.680660, 29.348469, 20.786152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781948, 29.554428, 20.856304>,  <39.950764, 29.897694, 20.973223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781948, 29.554428, 20.856304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348772, -0.143912, 0.926093,
		-0.836805, 0.492790, -0.238568,
		-0.422037, -0.858165, -0.292298,
		39.655338, 29.296978, 20.768616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418549, 29.927719, 21.391268>,  <39.950764, 29.897694, 20.973223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418549, 29.927719, 21.391268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396416, 29.548988, 21.264486>,  <39.383137, 29.321751, 21.188417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396416, 29.548988, 21.264486>,  <39.418549, 29.927719, 21.391268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396416, 29.548988, 21.264486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287890, -0.288828, 0.913071,
		-0.956064, 0.141771, -0.256599,
		-0.055334, -0.946826, -0.316952,
		39.379814, 29.264940, 21.169401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766357, 29.690998, 21.640465>,  <39.418549, 29.927719, 21.391268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766357, 29.690998, 21.640465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.013073, 29.383301, 21.573734>,  <39.161102, 29.198683, 21.533697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.013073, 29.383301, 21.573734>,  <38.766357, 29.690998, 21.640465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013073, 29.383301, 21.573734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200922, -0.358786, 0.911539,
		-0.761051, -0.528710, -0.375854,
		0.616791, -0.769245, -0.166825,
		39.198109, 29.152527, 21.523687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151470, 29.287422, 21.598455>,  <38.766357, 29.690998, 21.640465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151470, 29.287422, 21.598455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.785652, 29.447010, 21.625055>,  <37.566162, 29.542763, 21.641016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.785652, 29.447010, 21.625055>,  <38.151470, 29.287422, 21.598455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785652, 29.447010, 21.625055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000524, 0.165583, -0.986196,
		-0.404474, -0.901890, -0.151643,
		-0.914550, 0.398970, 0.066501,
		37.511288, 29.566702, 21.645006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880566, 29.114124, 20.975117>,  <38.151470, 29.287422, 21.598455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880566, 29.114124, 20.975117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.632313, 29.399422, 21.105410>,  <37.483360, 29.570601, 21.183584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.632313, 29.399422, 21.105410>,  <37.880566, 29.114124, 20.975117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632313, 29.399422, 21.105410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289356, 0.177763, -0.940571,
		-0.728759, -0.678000, 0.096056,
		-0.620631, 0.713244, 0.325730,
		37.446125, 29.613396, 21.203129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413692, 29.022322, 20.516371>,  <37.880566, 29.114124, 20.975117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413692, 29.022322, 20.516371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330143, 29.380913, 20.672676>,  <37.280014, 29.596067, 20.766459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330143, 29.380913, 20.672676>,  <37.413692, 29.022322, 20.516371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330143, 29.380913, 20.672676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127142, 0.371291, -0.919771,
		-0.969642, -0.241799, 0.036427,
		-0.208874, 0.896480, 0.390762,
		37.267479, 29.649857, 20.789906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886826, 29.320147, 20.124285>,  <37.413692, 29.022322, 20.516371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886826, 29.320147, 20.124285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043793, 29.656202, 20.274046>,  <37.137974, 29.857836, 20.363903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043793, 29.656202, 20.274046>,  <36.886826, 29.320147, 20.124285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043793, 29.656202, 20.274046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138556, 0.456402, -0.878920,
		-0.909291, 0.293028, 0.295506,
		0.392418, 0.840138, 0.374401,
		37.161518, 29.908243, 20.386366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358540, 29.802582, 20.214420>,  <36.886826, 29.320147, 20.124285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358540, 29.802582, 20.214420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691147, 30.024357, 20.200689>,  <36.890713, 30.157421, 20.192451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691147, 30.024357, 20.200689>,  <36.358540, 29.802582, 20.214420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691147, 30.024357, 20.200689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315761, 0.420914, -0.850368,
		-0.457025, 0.717936, 0.525067,
		0.831518, 0.554435, -0.034328,
		36.940601, 30.190687, 20.190392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185863, 30.551523, 20.248022>,  <36.358540, 29.802582, 20.214420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185863, 30.551523, 20.248022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536560, 30.520536, 20.058151>,  <36.746979, 30.501944, 19.944229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536560, 30.520536, 20.058151>,  <36.185863, 30.551523, 20.248022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536560, 30.520536, 20.058151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352145, 0.568828, -0.743256,
		0.327588, 0.818800, 0.471436,
		0.876744, -0.077468, -0.474678,
		36.799583, 30.497295, 19.915749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327209, 31.253864, 19.920038>,  <36.185863, 30.551523, 20.248022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327209, 31.253864, 19.920038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571754, 31.016573, 19.710539>,  <36.718483, 30.874197, 19.584839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571754, 31.016573, 19.710539>,  <36.327209, 31.253864, 19.920038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571754, 31.016573, 19.710539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274824, 0.461484, -0.843507,
		0.742094, 0.659629, 0.119102,
		0.611366, -0.593230, -0.523747,
		36.755165, 30.838604, 19.553415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482555, 31.961815, 20.200947>,  <36.327209, 31.253864, 19.920038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482555, 31.961815, 20.200947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162956, 32.202309, 20.205242>,  <35.971195, 32.346607, 20.207819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162956, 32.202309, 20.205242>,  <36.482555, 31.961815, 20.200947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162956, 32.202309, 20.205242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237714, -0.332204, 0.912761,
		0.552351, 0.726743, 0.408353,
		-0.798999, 0.601236, 0.010736,
		35.923256, 32.382679, 20.208464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429192, 32.221485, 20.841928>,  <36.482555, 31.961815, 20.200947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429192, 32.221485, 20.841928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.050941, 32.241531, 20.713377>,  <35.823990, 32.253559, 20.636246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.050941, 32.241531, 20.713377>,  <36.429192, 32.221485, 20.841928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050941, 32.241531, 20.713377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322955, -0.262122, 0.909391,
		-0.038666, 0.963733, 0.264054,
		-0.945624, 0.050115, -0.321378,
		35.767254, 32.256565, 20.616964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134045, 32.603443, 21.381256>,  <36.429192, 32.221485, 20.841928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134045, 32.603443, 21.381256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831017, 32.462227, 21.161638>,  <35.649200, 32.377499, 21.029867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831017, 32.462227, 21.161638>,  <36.134045, 32.603443, 21.381256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831017, 32.462227, 21.161638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595451, 0.029142, 0.802863,
		-0.267441, 0.935155, -0.232294,
		-0.757571, -0.353038, -0.549046,
		35.603745, 32.356316, 20.996925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482601, 33.101036, 21.479677>,  <36.134045, 32.603443, 21.381256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482601, 33.101036, 21.479677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355408, 32.735348, 21.379210>,  <35.279091, 32.515934, 21.318928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355408, 32.735348, 21.379210>,  <35.482601, 33.101036, 21.479677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355408, 32.735348, 21.379210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581448, -0.021204, 0.813307,
		-0.748867, 0.404664, -0.524829,
		-0.317987, -0.914220, -0.251171,
		35.260010, 32.461082, 21.303858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831905, 33.047474, 21.594025>,  <35.482601, 33.101036, 21.479677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831905, 33.047474, 21.594025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918571, 32.656975, 21.593273>,  <34.970570, 32.422676, 21.592821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918571, 32.656975, 21.593273>,  <34.831905, 33.047474, 21.594025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918571, 32.656975, 21.593273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568354, -0.127704, 0.812813,
		-0.793745, -0.175038, -0.582521,
		0.216664, -0.976244, -0.001880,
		34.983570, 32.364101, 21.592709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120766, 32.731197, 21.824018>,  <34.831905, 33.047474, 21.594025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120766, 32.731197, 21.824018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406475, 32.454903, 21.869085>,  <34.577900, 32.289124, 21.896126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406475, 32.454903, 21.869085>,  <34.120766, 32.731197, 21.824018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406475, 32.454903, 21.869085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345770, -0.208319, 0.914902,
		-0.608490, -0.692444, -0.387634,
		0.714271, -0.690742, 0.112666,
		34.620758, 32.247681, 21.902885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724464, 32.242970, 22.224550>,  <34.120766, 32.731197, 21.824018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724464, 32.242970, 22.224550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108047, 32.134853, 22.258831>,  <34.338196, 32.069984, 22.279400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108047, 32.134853, 22.258831>,  <33.724464, 32.242970, 22.224550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108047, 32.134853, 22.258831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166155, -0.290734, 0.942266,
		-0.229773, -0.917831, -0.323712,
		0.958956, -0.270293, 0.085699,
		34.395733, 32.053764, 22.284540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.015545, 35.012749, 18.975136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.213726, 34.665924, 18.954218>,  <38.332634, 34.457829, 18.941668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.213726, 34.665924, 18.954218>,  <38.015545, 35.012749, 18.975136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213726, 34.665924, 18.954218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081901, -0.013303, 0.996552,
		-0.864764, -0.498029, 0.064422,
		0.495454, -0.867058, -0.052293,
		38.362362, 34.405807, 18.938530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623180, 34.461720, 19.457376>,  <38.015545, 35.012749, 18.975136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623180, 34.461720, 19.457376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.014927, 34.400333, 19.404791>,  <38.249977, 34.363503, 19.373240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.014927, 34.400333, 19.404791>,  <37.623180, 34.461720, 19.457376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014927, 34.400333, 19.404791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150338, 0.118640, 0.981490,
		-0.135032, -0.981006, 0.139265,
		0.979370, -0.153469, -0.131462,
		38.308739, 34.354294, 19.365353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705139, 33.991295, 19.961674>,  <37.623180, 34.461720, 19.457376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705139, 33.991295, 19.961674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066166, 34.133400, 19.864380>,  <38.282784, 34.218662, 19.806004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066166, 34.133400, 19.864380>,  <37.705139, 33.991295, 19.961674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066166, 34.133400, 19.864380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180586, 0.200474, 0.962912,
		0.390851, -0.913015, 0.116785,
		0.902565, 0.355265, -0.243234,
		38.336937, 34.239979, 19.791410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223713, 33.654797, 20.370899>,  <37.705139, 33.991295, 19.961674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223713, 33.654797, 20.370899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397076, 34.002434, 20.275534>,  <38.501095, 34.211014, 20.218315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397076, 34.002434, 20.275534>,  <38.223713, 33.654797, 20.370899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397076, 34.002434, 20.275534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132332, 0.200311, 0.970754,
		0.891428, -0.452284, -0.028191,
		0.433410, 0.869088, -0.238414,
		38.527100, 34.263161, 20.204010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870739, 33.685547, 20.768581>,  <38.223713, 33.654797, 20.370899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870739, 33.685547, 20.768581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750523, 34.054729, 20.672394>,  <38.678391, 34.276237, 20.614681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750523, 34.054729, 20.672394>,  <38.870739, 33.685547, 20.768581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750523, 34.054729, 20.672394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183690, 0.303416, 0.934985,
		0.935912, 0.236831, -0.260728,
		-0.300543, 0.922957, -0.240467,
		38.660358, 34.331615, 20.600254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365135, 34.061996, 21.082884>,  <38.870739, 33.685547, 20.768581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365135, 34.061996, 21.082884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057076, 34.297756, 20.985338>,  <38.872238, 34.439213, 20.926811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057076, 34.297756, 20.985338>,  <39.365135, 34.061996, 21.082884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057076, 34.297756, 20.985338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064133, 0.308830, 0.948953,
		0.634627, 0.746478, -0.200046,
		-0.770153, 0.589402, -0.243866,
		38.826031, 34.474575, 20.912178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510574, 34.547535, 21.475592>,  <39.365135, 34.061996, 21.082884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510574, 34.547535, 21.475592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.124565, 34.609631, 21.391096>,  <38.892960, 34.646889, 21.340399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.124565, 34.609631, 21.391096>,  <39.510574, 34.547535, 21.475592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124565, 34.609631, 21.391096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131187, 0.411651, 0.901850,
		0.226963, 0.898022, -0.376888,
		-0.965027, 0.155243, -0.211238,
		38.835056, 34.656204, 21.327724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358459, 35.125736, 21.942045>,  <39.510574, 34.547535, 21.475592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358459, 35.125736, 21.942045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011700, 34.961586, 21.828852>,  <38.803646, 34.863094, 21.760935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011700, 34.961586, 21.828852>,  <39.358459, 35.125736, 21.942045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011700, 34.961586, 21.828852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356523, 0.113658, 0.927347,
		-0.348398, 0.904805, -0.244839,
		-0.866897, -0.410377, -0.282986,
		38.751629, 34.838474, 21.743956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833424, 35.611210, 22.125103>,  <39.358459, 35.125736, 21.942045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833424, 35.611210, 22.125103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.684196, 35.241928, 22.088196>,  <38.594662, 35.020359, 22.066051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.684196, 35.241928, 22.088196>,  <38.833424, 35.611210, 22.125103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684196, 35.241928, 22.088196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279134, 0.016841, 0.960105,
		-0.884818, 0.383941, -0.263980,
		-0.373069, -0.923204, -0.092270,
		38.572277, 34.964966, 22.060514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220085, 35.628761, 22.559462>,  <38.833424, 35.611210, 22.125103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220085, 35.628761, 22.559462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.299164, 35.238998, 22.516665>,  <38.346611, 35.005142, 22.490986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.299164, 35.238998, 22.516665>,  <38.220085, 35.628761, 22.559462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299164, 35.238998, 22.516665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620103, -0.208844, 0.756212,
		-0.759204, -0.083151, -0.645520,
		0.197693, -0.974407, -0.106993,
		38.358471, 34.946674, 22.484568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570789, 35.340607, 22.670952>,  <38.220085, 35.628761, 22.559462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570789, 35.340607, 22.670952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852413, 35.063988, 22.735521>,  <38.021389, 34.898014, 22.774263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852413, 35.063988, 22.735521>,  <37.570789, 35.340607, 22.670952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852413, 35.063988, 22.735521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461019, -0.272211, 0.844608,
		-0.540147, -0.669074, -0.510471,
		0.704061, -0.691550, 0.161422,
		38.063633, 34.856522, 22.783947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279446, 34.840485, 23.008820>,  <37.570789, 35.340607, 22.670952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279446, 34.840485, 23.008820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650665, 34.716728, 23.091770>,  <37.873398, 34.642475, 23.141541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650665, 34.716728, 23.091770>,  <37.279446, 34.840485, 23.008820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650665, 34.716728, 23.091770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252154, -0.112112, 0.961171,
		-0.274129, -0.944303, -0.182059,
		0.928047, -0.309392, 0.207377,
		37.929081, 34.623913, 23.153984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711063, 34.625027, 22.707975>,  <37.279446, 34.840485, 23.008820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711063, 34.625027, 22.707975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.376266, 34.842186, 22.735407>,  <36.175388, 34.972481, 22.751865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.376266, 34.842186, 22.735407>,  <36.711063, 34.625027, 22.707975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376266, 34.842186, 22.735407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125381, 0.312259, -0.941687,
		-0.532652, -0.779589, -0.329428,
		-0.836995, 0.542895, 0.068580,
		36.125168, 35.005054, 22.755981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433502, 34.537868, 22.076672>,  <36.711063, 34.625027, 22.707975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433502, 34.537868, 22.076672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.227531, 34.847710, 22.223553>,  <36.103951, 35.033615, 22.311682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.227531, 34.847710, 22.223553>,  <36.433502, 34.537868, 22.076672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227531, 34.847710, 22.223553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111452, 0.364227, -0.924617,
		-0.849960, -0.517033, -0.101217,
		-0.514924, 0.774607, 0.367203,
		36.073055, 35.080093, 22.333714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785439, 34.658360, 21.710752>,  <36.433502, 34.537868, 22.076672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785439, 34.658360, 21.710752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912910, 35.004173, 21.866203>,  <35.989391, 35.211662, 21.959475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912910, 35.004173, 21.866203>,  <35.785439, 34.658360, 21.710752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912910, 35.004173, 21.866203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202178, 0.462566, -0.863225,
		-0.926050, 0.196518, 0.322198,
		0.318678, 0.864530, 0.388628,
		36.008514, 35.263531, 21.982792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241119, 35.233070, 21.425934>,  <35.785439, 34.658360, 21.710752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241119, 35.233070, 21.425934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.567871, 35.424290, 21.555042>,  <35.763920, 35.539021, 21.632507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.567871, 35.424290, 21.555042>,  <35.241119, 35.233070, 21.425934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567871, 35.424290, 21.555042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059188, 0.487153, -0.871309,
		-0.573767, 0.730857, 0.369649,
		0.816877, 0.478049, 0.322770,
		35.812935, 35.567703, 21.651873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062870, 35.858250, 21.590374>,  <35.241119, 35.233070, 21.425934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062870, 35.858250, 21.590374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.452816, 35.891903, 21.507858>,  <35.686783, 35.912094, 21.458349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.452816, 35.891903, 21.507858>,  <35.062870, 35.858250, 21.590374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452816, 35.891903, 21.507858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220222, 0.503961, -0.835180,
		0.033694, 0.859619, 0.509823,
		0.974868, 0.084134, -0.206287,
		35.745277, 35.917145, 21.445972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152542, 36.541492, 21.314247>,  <35.062870, 35.858250, 21.590374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152542, 36.541492, 21.314247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.484722, 36.346371, 21.206621>,  <35.684029, 36.229298, 21.142046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.484722, 36.346371, 21.206621>,  <35.152542, 36.541492, 21.314247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484722, 36.346371, 21.206621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023840, 0.451420, -0.891993,
		0.556582, 0.747171, 0.363253,
		0.830451, -0.487807, -0.269065,
		35.733856, 36.200027, 21.125902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652405, 37.119068, 21.004461>,  <35.152542, 36.541492, 21.314247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652405, 37.119068, 21.004461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.756653, 36.755131, 20.875299>,  <35.819202, 36.536770, 20.797802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.756653, 36.755131, 20.875299>,  <35.652405, 37.119068, 21.004461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756653, 36.755131, 20.875299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085466, 0.354895, -0.930991,
		0.961651, 0.215037, 0.170253,
		0.260619, -0.909840, -0.322907,
		35.834839, 36.482178, 20.778427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145672, 37.244354, 20.568819>,  <35.652405, 37.119068, 21.004461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145672, 37.244354, 20.568819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054852, 36.867451, 20.470354>,  <36.000359, 36.641308, 20.411274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054852, 36.867451, 20.470354>,  <36.145672, 37.244354, 20.568819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054852, 36.867451, 20.470354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334880, 0.161813, -0.928263,
		0.914496, -0.293200, 0.278803,
		-0.227052, -0.942258, -0.246164,
		35.986736, 36.584774, 20.396505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661709, 37.105892, 20.071552>,  <36.145672, 37.244354, 20.568819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661709, 37.105892, 20.071552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391468, 36.820328, 19.997915>,  <36.229324, 36.648987, 19.953733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391468, 36.820328, 19.997915>,  <36.661709, 37.105892, 20.071552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391468, 36.820328, 19.997915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217359, 0.045730, -0.975020,
		0.704499, -0.698738, 0.124281,
		-0.675601, -0.713914, -0.184094,
		36.188789, 36.606155, 19.942688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998756, 36.608875, 19.727297>,  <36.661709, 37.105892, 20.071552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998756, 36.608875, 19.727297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618954, 36.552765, 19.615046>,  <36.391071, 36.519100, 19.547695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618954, 36.552765, 19.615046>,  <36.998756, 36.608875, 19.727297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618954, 36.552765, 19.615046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286634, -0.024192, -0.957735,
		0.127561, -0.989816, 0.063179,
		-0.949510, -0.140278, -0.280629,
		36.334099, 36.510681, 19.530857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037098, 36.120373, 19.189438>,  <36.998756, 36.608875, 19.727297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037098, 36.120373, 19.189438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.669609, 36.267452, 19.131824>,  <36.449116, 36.355698, 19.097258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.669609, 36.267452, 19.131824>,  <37.037098, 36.120373, 19.189438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669609, 36.267452, 19.131824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080194, -0.183414, -0.979759,
		-0.386671, -0.911679, 0.139020,
		-0.918724, 0.367695, -0.144032,
		36.393993, 36.377762, 19.088615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723732, 35.724758, 18.749147>,  <37.037098, 36.120373, 19.189438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723732, 35.724758, 18.749147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.509220, 36.059444, 18.704760>,  <36.380512, 36.260254, 18.678127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.509220, 36.059444, 18.704760>,  <36.723732, 35.724758, 18.749147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509220, 36.059444, 18.704760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082063, -0.079161, -0.993478,
		-0.840041, -0.541890, -0.026211,
		-0.536281, 0.836713, -0.110967,
		36.348335, 36.310459, 18.671469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127914, 35.596222, 18.180212>,  <36.723732, 35.724758, 18.749147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127914, 35.596222, 18.180212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199387, 35.988213, 18.215359>,  <36.242271, 36.223408, 18.236446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199387, 35.988213, 18.215359>,  <36.127914, 35.596222, 18.180212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199387, 35.988213, 18.215359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011777, 0.087168, -0.996124,
		-0.983837, 0.179022, 0.004034,
		0.178679, 0.979976, 0.087867,
		36.252991, 36.282204, 18.241718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172779, 35.110260, 18.755970>,  <36.127914, 35.596222, 18.180212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172779, 35.110260, 18.755970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.867657, 34.975857, 18.534979>,  <35.684586, 34.895214, 18.402384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.867657, 34.975857, 18.534979>,  <36.172779, 35.110260, 18.755970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867657, 34.975857, 18.534979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095335, -0.786619, 0.610034,
		-0.639564, 0.518006, 0.568003,
		-0.762803, -0.336005, -0.552478,
		35.638817, 34.875053, 18.369236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778355, 34.853100, 19.205696>,  <36.172779, 35.110260, 18.755970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778355, 34.853100, 19.205696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.694397, 34.678047, 18.855970>,  <35.644024, 34.573017, 18.646135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.694397, 34.678047, 18.855970>,  <35.778355, 34.853100, 19.205696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694397, 34.678047, 18.855970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123630, -0.875178, 0.467738,
		-0.969877, 0.206265, 0.129587,
		-0.209890, -0.437628, -0.874316,
		35.631432, 34.546761, 18.593676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200275, 34.484756, 19.351851>,  <35.778355, 34.853100, 19.205696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200275, 34.484756, 19.351851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.358669, 34.323311, 19.021931>,  <35.453705, 34.226444, 18.823978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.358669, 34.323311, 19.021931>,  <35.200275, 34.484756, 19.351851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358669, 34.323311, 19.021931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221668, -0.913672, 0.340686,
		-0.891102, 0.047925, -0.451266,
		0.395982, -0.403617, -0.824798,
		35.477463, 34.202225, 18.774492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825043, 33.987286, 19.246084>,  <35.200275, 34.484756, 19.351851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825043, 33.987286, 19.246084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.133434, 33.906281, 19.004562>,  <35.318470, 33.857677, 18.859650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.133434, 33.906281, 19.004562>,  <34.825043, 33.987286, 19.246084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133434, 33.906281, 19.004562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025583, -0.937482, 0.347091,
		-0.636349, -0.283047, -0.717597,
		0.770977, -0.202513, -0.603806,
		35.364727, 33.845528, 18.823420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683857, 33.349216, 18.908159>,  <34.825043, 33.987286, 19.246084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683857, 33.349216, 18.908159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.081554, 33.382786, 18.881516>,  <35.320171, 33.402927, 18.865530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.081554, 33.382786, 18.881516>,  <34.683857, 33.349216, 18.908159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081554, 33.382786, 18.881516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105776, -0.867839, 0.485455,
		-0.017065, -0.489706, -0.871720,
		0.994243, 0.083923, -0.066609,
		35.379826, 33.407963, 18.861532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940414, 32.655712, 18.674404>,  <34.683857, 33.349216, 18.908159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940414, 32.655712, 18.674404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.220303, 32.873482, 18.859446>,  <35.388233, 33.004143, 18.970470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.220303, 32.873482, 18.859446>,  <34.940414, 32.655712, 18.674404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220303, 32.873482, 18.859446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142391, -0.740804, 0.656455,
		0.700086, -0.393463, -0.595874,
		0.699717, 0.544422, 0.462601,
		35.430218, 33.036808, 18.998226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256073, 32.154610, 18.941843>,  <34.940414, 32.655712, 18.674404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256073, 32.154610, 18.941843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.427025, 32.462070, 19.132223>,  <35.529594, 32.646545, 19.246450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.427025, 32.462070, 19.132223>,  <35.256073, 32.154610, 18.941843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427025, 32.462070, 19.132223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034180, -0.539812, 0.841091,
		0.903426, -0.343197, -0.256977,
		0.427379, 0.768647, 0.475950,
		35.555237, 32.692665, 19.275007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904140, 31.892050, 19.270460>,  <35.256073, 32.154610, 18.941843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904140, 31.892050, 19.270460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.748299, 32.213245, 19.450867>,  <35.654793, 32.405964, 19.559111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.748299, 32.213245, 19.450867>,  <35.904140, 31.892050, 19.270460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748299, 32.213245, 19.450867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136747, -0.534722, 0.833890,
		0.910772, 0.263215, 0.318138,
		-0.389608, 0.802988, 0.451016,
		35.631416, 32.454144, 19.586172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668255, 31.708761, 19.447708>,  <35.904140, 31.892050, 19.270460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668255, 31.708761, 19.447708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753609, 31.349312, 19.294374>,  <36.804821, 31.133642, 19.202374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753609, 31.349312, 19.294374>,  <36.668255, 31.708761, 19.447708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753609, 31.349312, 19.294374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069218, 0.377480, -0.923427,
		0.974513, 0.223580, 0.018347,
		0.213385, -0.898622, -0.383334,
		36.817623, 31.079725, 19.179375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219730, 31.757076, 19.025705>,  <36.668255, 31.708761, 19.447708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219730, 31.757076, 19.025705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039406, 31.422573, 18.900841>,  <36.931213, 31.221870, 18.825922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039406, 31.422573, 18.900841>,  <37.219730, 31.757076, 19.025705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039406, 31.422573, 18.900841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069810, 0.315614, -0.946317,
		0.889887, -0.448399, -0.083902,
		-0.450808, -0.836257, -0.312163,
		36.904163, 31.171696, 18.807192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682652, 31.506037, 18.544407>,  <37.219730, 31.757076, 19.025705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682652, 31.506037, 18.544407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334465, 31.329294, 18.457645>,  <37.125553, 31.223249, 18.405588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334465, 31.329294, 18.457645>,  <37.682652, 31.506037, 18.544407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334465, 31.329294, 18.457645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149799, 0.181957, -0.971829,
		0.468874, -0.878440, -0.092199,
		-0.870470, -0.441854, -0.216904,
		37.073322, 31.196737, 18.392574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770103, 31.047171, 18.028667>,  <37.682652, 31.506037, 18.544407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770103, 31.047171, 18.028667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.372547, 31.077559, 17.996622>,  <37.134014, 31.095791, 17.977394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.372547, 31.077559, 17.996622>,  <37.770103, 31.047171, 18.028667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372547, 31.077559, 17.996622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103645, 0.391990, -0.914112,
		-0.038042, -0.916827, -0.397468,
		-0.993886, 0.075971, -0.080113,
		37.074383, 31.100349, 17.972588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610672, 30.792692, 17.380299>,  <37.770103, 31.047171, 18.028667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610672, 30.792692, 17.380299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.298531, 31.014687, 17.495565>,  <37.111244, 31.147882, 17.564726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.298531, 31.014687, 17.495565>,  <37.610672, 30.792692, 17.380299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298531, 31.014687, 17.495565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048138, 0.406136, -0.912544,
		-0.623485, -0.725978, -0.290213,
		-0.780352, 0.554987, 0.288167,
		37.064426, 31.181183, 17.582016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937981, 30.791927, 16.897905>,  <37.610672, 30.792692, 17.380299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937981, 30.791927, 16.897905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007801, 31.144825, 17.072802>,  <37.049694, 31.356564, 17.177738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007801, 31.144825, 17.072802>,  <36.937981, 30.791927, 16.897905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007801, 31.144825, 17.072802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117786, 0.459576, -0.880294,
		-0.977578, 0.102154, 0.184135,
		0.174549, 0.882244, 0.437239,
		37.060165, 31.409498, 17.203974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593449, 31.187412, 16.456583>,  <36.937981, 30.791927, 16.897905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593449, 31.187412, 16.456583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780544, 31.454170, 16.688608>,  <36.892799, 31.614225, 16.827824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780544, 31.454170, 16.688608>,  <36.593449, 31.187412, 16.456583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780544, 31.454170, 16.688608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056565, 0.677517, -0.733329,
		-0.882057, 0.310193, 0.354621,
		0.467735, 0.666897, 0.580063,
		36.920864, 31.654240, 16.862627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125683, 31.712868, 16.454939>,  <36.593449, 31.187412, 16.456583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125683, 31.712868, 16.454939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497337, 31.835373, 16.537804>,  <36.720329, 31.908876, 16.587523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497337, 31.835373, 16.537804>,  <36.125683, 31.712868, 16.454939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497337, 31.835373, 16.537804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015945, 0.592945, -0.805085,
		-0.369401, 0.744728, 0.555808,
		0.929133, 0.306261, 0.207160,
		36.776077, 31.927252, 16.599951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114143, 32.375717, 16.247730>,  <36.125683, 31.712868, 16.454939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114143, 32.375717, 16.247730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.512161, 32.353207, 16.280523>,  <36.750973, 32.339699, 16.300200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.512161, 32.353207, 16.280523>,  <36.114143, 32.375717, 16.247730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512161, 32.353207, 16.280523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099376, 0.592239, -0.799611,
		-0.003554, 0.803795, 0.594896,
		0.995044, -0.056276, 0.081983,
		36.810673, 32.336323, 16.305119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.401543, 27.998236, 31.952036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769253, 28.073053, 31.813501>,  <36.989880, 28.117945, 31.730381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769253, 28.073053, 31.813501>,  <36.401543, 27.998236, 31.952036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769253, 28.073053, 31.813501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283534, -0.295648, -0.912250,
		-0.273027, 0.936806, -0.218748,
		0.919274, 0.187046, -0.346337,
		37.045036, 28.129168, 31.709600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214893, 28.357183, 31.425173>,  <36.401543, 27.998236, 31.952036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214893, 28.357183, 31.425173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594185, 28.255390, 31.349165>,  <36.821758, 28.194313, 31.303560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594185, 28.255390, 31.349165>,  <36.214893, 28.357183, 31.425173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594185, 28.255390, 31.349165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185934, 0.040253, -0.981737,
		0.257487, 0.966238, -0.009149,
		0.948224, -0.254485, -0.190021,
		36.878651, 28.179045, 31.292158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456615, 28.855608, 30.949169>,  <36.214893, 28.357183, 31.425173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456615, 28.855608, 30.949169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729263, 28.573067, 30.872789>,  <36.892853, 28.403542, 30.826962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729263, 28.573067, 30.872789>,  <36.456615, 28.855608, 30.949169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729263, 28.573067, 30.872789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070750, 0.196121, -0.978024,
		0.728280, 0.680148, 0.083705,
		0.681617, -0.706354, -0.190951,
		36.933750, 28.361160, 30.815504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893337, 29.115980, 30.455812>,  <36.456615, 28.855608, 30.949169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893337, 29.115980, 30.455812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939442, 28.718769, 30.445913>,  <36.967106, 28.480442, 30.439974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939442, 28.718769, 30.445913>,  <36.893337, 29.115980, 30.455812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939442, 28.718769, 30.445913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132987, 0.009262, -0.991075,
		0.984393, 0.117527, -0.130992,
		0.115265, -0.993027, -0.024747,
		36.974022, 28.420860, 30.438490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463314, 29.008953, 29.979259>,  <36.893337, 29.115980, 30.455812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463314, 29.008953, 29.979259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214111, 28.696577, 29.997149>,  <37.064590, 28.509151, 30.007883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214111, 28.696577, 29.997149>,  <37.463314, 29.008953, 29.979259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214111, 28.696577, 29.997149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238051, 0.134824, -0.961849,
		0.745116, -0.609883, -0.269899,
		-0.623004, -0.780939, 0.044724,
		37.027210, 28.462296, 30.010565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551407, 28.655346, 29.394968>,  <37.463314, 29.008953, 29.979259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551407, 28.655346, 29.394968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205009, 28.503559, 29.525240>,  <36.997173, 28.412487, 29.603403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205009, 28.503559, 29.525240>,  <37.551407, 28.655346, 29.394968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205009, 28.503559, 29.525240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360542, 0.022505, -0.932471,
		0.346511, -0.924932, -0.156302,
		-0.865991, -0.379465, 0.325679,
		36.945213, 28.389719, 29.622944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497921, 28.151207, 28.979336>,  <37.551407, 28.655346, 29.394968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497921, 28.151207, 28.979336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129070, 28.190956, 29.128901>,  <36.907761, 28.214806, 29.218639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129070, 28.190956, 29.128901>,  <37.497921, 28.151207, 28.979336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129070, 28.190956, 29.128901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386807, -0.256934, -0.885644,
		0.008064, -0.961307, 0.275362,
		-0.922125, 0.099370, 0.373912,
		36.852432, 28.220768, 29.241074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274822, 27.591673, 28.744680>,  <37.497921, 28.151207, 28.979336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274822, 27.591673, 28.744680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951435, 27.817709, 28.810467>,  <36.757401, 27.953331, 28.849939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951435, 27.817709, 28.810467>,  <37.274822, 27.591673, 28.744680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951435, 27.817709, 28.810467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295023, -0.147323, -0.944064,
		-0.509252, -0.811768, 0.285821,
		-0.808470, 0.565091, 0.164466,
		36.708893, 27.987236, 28.859806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721573, 27.201990, 28.478371>,  <37.274822, 27.591673, 28.744680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721573, 27.201990, 28.478371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581749, 27.576729, 28.482893>,  <36.497852, 27.801571, 28.485607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581749, 27.576729, 28.482893>,  <36.721573, 27.201990, 28.478371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581749, 27.576729, 28.482893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303359, -0.101757, -0.947428,
		-0.886443, -0.334614, 0.319771,
		-0.349562, 0.936845, 0.011306,
		36.476879, 27.857782, 28.486284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062305, 27.206045, 28.147442>,  <36.721573, 27.201990, 28.478371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062305, 27.206045, 28.147442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216766, 27.574507, 28.127991>,  <36.309441, 27.795584, 28.116320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216766, 27.574507, 28.127991>,  <36.062305, 27.206045, 28.147442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216766, 27.574507, 28.127991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199100, 0.031756, -0.979465,
		-0.900693, 0.387902, 0.195664,
		0.386149, 0.921153, -0.048629,
		36.332611, 27.850853, 28.113401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557251, 27.628099, 27.905840>,  <36.062305, 27.206045, 28.147442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557251, 27.628099, 27.905840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898563, 27.827259, 27.843863>,  <36.103352, 27.946754, 27.806677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898563, 27.827259, 27.843863>,  <35.557251, 27.628099, 27.905840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898563, 27.827259, 27.843863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244347, 0.119287, -0.962323,
		-0.460655, 0.858993, 0.223445,
		0.853283, 0.497897, -0.154943,
		36.154549, 27.976627, 27.797380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370728, 28.386587, 27.630182>,  <35.557251, 27.628099, 27.905840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370728, 28.386587, 27.630182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748993, 28.309561, 27.525385>,  <35.975952, 28.263346, 27.462505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748993, 28.309561, 27.525385>,  <35.370728, 28.386587, 27.630182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748993, 28.309561, 27.525385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217170, 0.225621, -0.949701,
		0.241992, 0.954994, 0.171542,
		0.945662, -0.192566, -0.261995,
		36.032692, 28.251791, 27.446787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064262, 29.038843, 27.733246>,  <35.370728, 28.386587, 27.630182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064262, 29.038843, 27.733246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682854, 29.154631, 27.699774>,  <34.454006, 29.224102, 27.679691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682854, 29.154631, 27.699774>,  <35.064262, 29.038843, 27.733246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682854, 29.154631, 27.699774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156589, -0.238771, 0.958367,
		0.257436, 0.926929, 0.273002,
		-0.953523, 0.289467, -0.083679,
		34.396797, 29.241470, 27.674669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936413, 29.550329, 28.314266>,  <35.064262, 29.038843, 27.733246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936413, 29.550329, 28.314266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562988, 29.467308, 28.197390>,  <34.338932, 29.417496, 28.127264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562988, 29.467308, 28.197390>,  <34.936413, 29.550329, 28.314266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562988, 29.467308, 28.197390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272712, -0.117628, 0.954878,
		-0.232559, 0.971125, 0.053211,
		-0.933566, -0.207554, -0.292193,
		34.282917, 29.405043, 28.109732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392418, 30.007744, 28.735064>,  <34.936413, 29.550329, 28.314266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392418, 30.007744, 28.735064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191952, 29.688551, 28.601164>,  <34.071671, 29.497036, 28.520824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191952, 29.688551, 28.601164>,  <34.392418, 30.007744, 28.735064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191952, 29.688551, 28.601164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250768, -0.236309, 0.938761,
		-0.828219, 0.554421, -0.081678,
		-0.501168, -0.797982, -0.334747,
		34.041603, 29.449156, 28.500740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751305, 30.016714, 28.964495>,  <34.392418, 30.007744, 28.735064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751305, 30.016714, 28.964495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750053, 29.622065, 28.899298>,  <33.749302, 29.385275, 28.860180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750053, 29.622065, 28.899298>,  <33.751305, 30.016714, 28.964495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750053, 29.622065, 28.899298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517363, -0.137885, 0.844585,
		-0.855760, 0.086970, -0.510011,
		-0.003131, -0.986622, -0.162992,
		33.749115, 29.326078, 28.850401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128563, 29.858105, 29.094627>,  <33.751305, 30.016714, 28.964495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128563, 29.858105, 29.094627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338291, 29.520424, 29.139181>,  <33.464130, 29.317816, 29.165915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338291, 29.520424, 29.139181>,  <33.128563, 29.858105, 29.094627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338291, 29.520424, 29.139181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446507, -0.161193, 0.880141,
		-0.725062, -0.511213, -0.461460,
		0.524324, -0.844202, 0.111386,
		33.495590, 29.267162, 29.172596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639790, 29.343521, 29.397284>,  <33.128563, 29.858105, 29.094627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639790, 29.343521, 29.397284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008186, 29.220383, 29.492792>,  <33.229225, 29.146500, 29.550098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008186, 29.220383, 29.492792>,  <32.639790, 29.343521, 29.397284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008186, 29.220383, 29.492792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300838, -0.172531, 0.937939,
		-0.247548, -0.935661, -0.251512,
		0.920987, -0.307849, 0.238773,
		33.284481, 29.128029, 29.564425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518456, 29.030449, 30.011436>,  <32.639790, 29.343521, 29.397284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518456, 29.030449, 30.011436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917576, 29.015226, 30.033152>,  <33.157047, 29.006094, 30.046181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917576, 29.015226, 30.033152>,  <32.518456, 29.030449, 30.011436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917576, 29.015226, 30.033152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059716, -0.160140, 0.985286,
		-0.028799, -0.986360, -0.162060,
		0.997800, -0.038052, 0.054289,
		33.216915, 29.003809, 30.049438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646667, 28.575296, 30.542215>,  <32.518456, 29.030449, 30.011436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646667, 28.575296, 30.542215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988567, 28.774576, 30.483982>,  <33.193707, 28.894144, 30.449043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988567, 28.774576, 30.483982>,  <32.646667, 28.575296, 30.542215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988567, 28.774576, 30.483982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171122, -0.005690, 0.985233,
		0.490016, -0.867043, -0.090117,
		0.854752, 0.498202, -0.145582,
		33.244991, 28.924036, 30.440308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157970, 28.203207, 30.809025>,  <32.646667, 28.575296, 30.542215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157970, 28.203207, 30.809025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307934, 28.574026, 30.806732>,  <33.397911, 28.796516, 30.805357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307934, 28.574026, 30.806732>,  <33.157970, 28.203207, 30.809025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307934, 28.574026, 30.806732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270397, -0.103432, 0.957177,
		0.886754, -0.360399, -0.289448,
		0.374904, 0.927046, -0.005732,
		33.420406, 28.852140, 30.805012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862751, 28.188374, 31.079950>,  <33.157970, 28.203207, 30.809025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862751, 28.188374, 31.079950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760448, 28.573744, 31.111946>,  <33.699066, 28.804966, 31.131144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760448, 28.573744, 31.111946>,  <33.862751, 28.188374, 31.079950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760448, 28.573744, 31.111946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193610, -0.030019, 0.980619,
		0.947157, 0.266282, -0.178851,
		-0.255752, 0.963428, 0.079988,
		33.683723, 28.862772, 31.135942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393898, 28.554705, 31.482798>,  <33.862751, 28.188374, 31.079950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393898, 28.554705, 31.482798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042477, 28.744099, 31.507978>,  <33.831623, 28.857735, 31.523087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042477, 28.744099, 31.507978>,  <34.393898, 28.554705, 31.482798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042477, 28.744099, 31.507978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079834, 0.015619, 0.996686,
		0.470933, 0.880663, -0.051523,
		-0.878549, 0.473486, 0.062951,
		33.778912, 28.886145, 31.526863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447968, 28.759537, 32.088726>,  <34.393898, 28.554705, 31.482798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447968, 28.759537, 32.088726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064289, 28.855835, 32.029427>,  <33.834080, 28.913614, 31.993845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064289, 28.855835, 32.029427>,  <34.447968, 28.759537, 32.088726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064289, 28.855835, 32.029427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126229, 0.104548, 0.986477,
		0.252989, 0.964941, -0.069893,
		-0.959199, 0.240745, -0.148253,
		33.776531, 28.928059, 31.984951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360325, 29.354803, 32.560101>,  <34.447968, 28.759537, 32.088726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360325, 29.354803, 32.560101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997253, 29.206041, 32.482327>,  <33.779411, 29.116785, 32.435661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997253, 29.206041, 32.482327>,  <34.360325, 29.354803, 32.560101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997253, 29.206041, 32.482327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223215, 0.035503, 0.974123,
		-0.355378, 0.927592, -0.115240,
		-0.907679, -0.371905, -0.194435,
		33.724949, 29.094469, 32.423996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854851, 29.749552, 32.902412>,  <34.360325, 29.354803, 32.560101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854851, 29.749552, 32.902412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640163, 29.416540, 32.847519>,  <33.511353, 29.216734, 32.814583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640163, 29.416540, 32.847519>,  <33.854851, 29.749552, 32.902412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640163, 29.416540, 32.847519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229553, -0.012433, 0.973217,
		-0.811937, 0.553843, -0.184437,
		-0.536716, -0.832529, -0.137231,
		33.479149, 29.166782, 32.806351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960564, 30.419054, 32.776894>,  <33.854851, 29.749552, 32.902412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960564, 30.419054, 32.776894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262207, 30.666277, 32.865738>,  <34.443192, 30.814611, 32.919044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262207, 30.666277, 32.865738>,  <33.960564, 30.419054, 32.776894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262207, 30.666277, 32.865738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192932, 0.531747, -0.824635,
		-0.627777, 0.579009, 0.520235,
		0.754104, 0.618057, 0.222109,
		34.488438, 30.851694, 32.932369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633430, 31.049620, 32.811684>,  <33.960564, 30.419054, 32.776894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633430, 31.049620, 32.811684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024769, 31.069521, 32.731319>,  <34.259571, 31.081461, 32.683102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024769, 31.069521, 32.731319>,  <33.633430, 31.049620, 32.811684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024769, 31.069521, 32.731319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197462, 0.515263, -0.833974,
		0.062028, 0.855587, 0.513930,
		0.978346, 0.049752, -0.200906,
		34.318272, 31.084446, 32.671047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799850, 31.761683, 32.470249>,  <33.633430, 31.049620, 32.811684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799850, 31.761683, 32.470249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094952, 31.507202, 32.379948>,  <34.272011, 31.354513, 32.325768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094952, 31.507202, 32.379948>,  <33.799850, 31.761683, 32.470249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094952, 31.507202, 32.379948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010031, 0.344714, -0.938654,
		0.674995, 0.690231, 0.260696,
		0.737754, -0.636202, -0.225756,
		34.316277, 31.316341, 32.312222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297970, 32.124542, 32.275635>,  <33.799850, 31.761683, 32.470249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297970, 32.124542, 32.275635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383980, 31.779701, 32.092094>,  <34.435585, 31.572796, 31.981970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383980, 31.779701, 32.092094>,  <34.297970, 32.124542, 32.275635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383980, 31.779701, 32.092094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115173, 0.488946, -0.864678,
		0.969793, 0.133080, 0.204427,
		0.215025, -0.862103, -0.458850,
		34.448486, 31.521070, 31.954439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948334, 32.224190, 31.909367>,  <34.297970, 32.124542, 32.275635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948334, 32.224190, 31.909367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738708, 31.924139, 31.748034>,  <34.612934, 31.744110, 31.651234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738708, 31.924139, 31.748034>,  <34.948334, 32.224190, 31.909367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738708, 31.924139, 31.748034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046617, 0.498125, -0.865851,
		0.850405, -0.434955, -0.296016,
		-0.524060, -0.750123, -0.403331,
		34.581490, 31.699102, 31.627033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311195, 32.207310, 31.356129>,  <34.948334, 32.224190, 31.909367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311195, 32.207310, 31.356129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005486, 31.955488, 31.300207>,  <34.822060, 31.804394, 31.266655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005486, 31.955488, 31.300207>,  <35.311195, 32.207310, 31.356129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005486, 31.955488, 31.300207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019699, 0.239474, -0.970703,
		0.644591, -0.739128, -0.195425,
		-0.764274, -0.629557, -0.139802,
		34.776203, 31.766621, 31.258266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425247, 31.847950, 30.797775>,  <35.311195, 32.207310, 31.356129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425247, 31.847950, 30.797775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025623, 31.831253, 30.793032>,  <34.785851, 31.821234, 30.790186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025623, 31.831253, 30.793032>,  <35.425247, 31.847950, 30.797775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025623, 31.831253, 30.793032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001171, 0.247236, -0.968955,
		0.043378, -0.968056, -0.246955,
		-0.999058, -0.041742, -0.011858,
		34.725906, 31.818729, 30.789474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245934, 31.394272, 30.226349>,  <35.425247, 31.847950, 30.797775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245934, 31.394272, 30.226349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938572, 31.637371, 30.306555>,  <34.754154, 31.783230, 30.354679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938572, 31.637371, 30.306555>,  <35.245934, 31.394272, 30.226349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938572, 31.637371, 30.306555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030925, 0.348213, -0.936905,
		-0.639222, -0.713717, -0.286361,
		-0.768400, 0.607746, 0.200514,
		34.708054, 31.819695, 30.366709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798038, 31.219515, 29.735769>,  <35.245934, 31.394272, 30.226349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798038, 31.219515, 29.735769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665054, 31.583290, 29.835680>,  <34.585262, 31.801556, 29.895626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665054, 31.583290, 29.835680>,  <34.798038, 31.219515, 29.735769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665054, 31.583290, 29.835680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029906, 0.254542, -0.966599,
		-0.942642, -0.328829, -0.057428,
		-0.332464, 0.909439, 0.249776,
		34.565315, 31.856121, 29.910612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286869, 31.241896, 29.302223>,  <34.798038, 31.219515, 29.735769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286869, 31.241896, 29.302223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380878, 31.614058, 29.414726>,  <34.437286, 31.837355, 29.482229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380878, 31.614058, 29.414726>,  <34.286869, 31.241896, 29.302223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380878, 31.614058, 29.414726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165604, 0.323463, -0.931637,
		-0.957778, 0.172381, 0.230101,
		0.235026, 0.930407, 0.281259,
		34.451385, 31.893179, 29.499104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716595, 31.615856, 29.135342>,  <34.286869, 31.241896, 29.302223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716595, 31.615856, 29.135342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017143, 31.878391, 29.162645>,  <34.197472, 32.035912, 29.179028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017143, 31.878391, 29.162645>,  <33.716595, 31.615856, 29.135342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017143, 31.878391, 29.162645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235240, 0.363069, -0.901578,
		-0.616521, 0.661366, 0.427197,
		0.751375, 0.656335, 0.068260,
		34.242558, 32.075291, 29.183123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476635, 32.151638, 28.605484>,  <33.716595, 31.615856, 29.135342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476635, 32.151638, 28.605484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849308, 32.272629, 28.685963>,  <34.072910, 32.345222, 28.734249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849308, 32.272629, 28.685963>,  <33.476635, 32.151638, 28.605484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849308, 32.272629, 28.685963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105089, 0.305741, -0.946297,
		-0.347750, 0.902789, 0.253065,
		0.931679, 0.302480, 0.201195,
		34.128811, 32.363373, 28.746321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542519, 32.914898, 28.513638>,  <33.476635, 32.151638, 28.605484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542519, 32.914898, 28.513638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891083, 32.726093, 28.460196>,  <34.100220, 32.612808, 28.428131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891083, 32.726093, 28.460196>,  <33.542519, 32.914898, 28.513638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891083, 32.726093, 28.460196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068010, 0.385962, -0.920004,
		0.485821, 0.792613, 0.368432,
		0.871408, -0.472015, -0.133603,
		34.152504, 32.584488, 28.420115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028156, 33.371544, 28.413265>,  <33.542519, 32.914898, 28.513638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028156, 33.371544, 28.413265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187180, 33.040096, 28.255610>,  <34.282593, 32.841228, 28.161016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187180, 33.040096, 28.255610>,  <34.028156, 33.371544, 28.413265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187180, 33.040096, 28.255610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151490, 0.482920, -0.862461,
		0.904985, 0.283170, 0.317515,
		0.397558, -0.828615, -0.394138,
		34.306446, 32.791512, 28.137367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706287, 33.626919, 28.283983>,  <34.028156, 33.371544, 28.413265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706287, 33.626919, 28.283983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637424, 33.305805, 28.055632>,  <34.596107, 33.113136, 27.918621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637424, 33.305805, 28.055632>,  <34.706287, 33.626919, 28.283983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637424, 33.305805, 28.055632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030453, 0.574919, -0.817644,
		0.984598, -0.158149, -0.074530,
		-0.172159, -0.802781, -0.570880,
		34.585777, 33.064972, 27.884367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187298, 33.699440, 27.757883>,  <34.706287, 33.626919, 28.283983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187298, 33.699440, 27.757883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.920872, 33.451813, 27.591455>,  <34.761017, 33.303238, 27.491600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.920872, 33.451813, 27.591455>,  <35.187298, 33.699440, 27.757883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920872, 33.451813, 27.591455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097578, 0.480699, -0.871440,
		0.739481, -0.621037, -0.259771,
		-0.666068, -0.619066, -0.416067,
		34.721050, 33.266094, 27.466635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467487, 33.658127, 27.179085>,  <35.187298, 33.699440, 27.757883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467487, 33.658127, 27.179085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110363, 33.495884, 27.100729>,  <34.896088, 33.398537, 27.053717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110363, 33.495884, 27.100729>,  <35.467487, 33.658127, 27.179085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110363, 33.495884, 27.100729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033063, 0.374704, -0.926555,
		0.449218, -0.833714, -0.321129,
		-0.892810, -0.405608, -0.195889,
		34.842518, 33.374203, 27.041962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560249, 33.237286, 26.612257>,  <35.467487, 33.658127, 27.179085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560249, 33.237286, 26.612257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171856, 33.332920, 26.614653>,  <34.938820, 33.390301, 26.616091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171856, 33.332920, 26.614653>,  <35.560249, 33.237286, 26.612257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171856, 33.332920, 26.614653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094982, 0.408482, -0.907811,
		-0.219491, -0.880897, -0.419337,
		-0.970980, 0.239086, 0.005988,
		34.880562, 33.404644, 26.616449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216545, 32.939468, 25.915787>,  <35.560249, 33.237286, 26.612257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216545, 32.939468, 25.915787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967957, 33.224377, 26.046288>,  <34.818802, 33.395321, 26.124588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967957, 33.224377, 26.046288>,  <35.216545, 32.939468, 25.915787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967957, 33.224377, 26.046288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102584, 0.486838, -0.867447,
		-0.776691, -0.505626, -0.375624,
		-0.621472, 0.712271, 0.326254,
		34.781513, 33.438057, 26.144163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687401, 32.985081, 25.404804>,  <35.216545, 32.939468, 25.915787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687401, 32.985081, 25.404804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686497, 33.330544, 25.606436>,  <34.685955, 33.537819, 25.727415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686497, 33.330544, 25.606436>,  <34.687401, 32.985081, 25.404804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686497, 33.330544, 25.606436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016806, 0.504041, -0.863516,
		-0.999856, 0.006524, -0.015652,
		-0.002256, 0.863655, 0.504078,
		34.685822, 33.589642, 25.757660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099571, 33.200119, 25.178028>,  <34.687401, 32.985081, 25.404804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099571, 33.200119, 25.178028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326912, 33.503181, 25.306362>,  <34.463318, 33.685020, 25.383364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326912, 33.503181, 25.306362>,  <34.099571, 33.200119, 25.178028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326912, 33.503181, 25.306362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041820, 0.416036, -0.908386,
		-0.821723, 0.502865, 0.268139,
		0.568351, 0.757655, 0.320836,
		34.497417, 33.730476, 25.402613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018517, 33.680351, 24.728207>,  <34.099571, 33.200119, 25.178028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018517, 33.680351, 24.728207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328815, 33.853741, 24.911648>,  <34.514996, 33.957775, 25.021713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328815, 33.853741, 24.911648>,  <34.018517, 33.680351, 24.728207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328815, 33.853741, 24.911648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294013, 0.394762, -0.870471,
		-0.558368, 0.810099, 0.178787,
		0.775746, 0.433477, 0.458602,
		34.561539, 33.983784, 25.049229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993713, 34.444801, 24.628967>,  <34.018517, 33.680351, 24.728207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993713, 34.444801, 24.628967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379318, 34.365089, 24.699368>,  <34.610680, 34.317261, 24.741608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379318, 34.365089, 24.699368>,  <33.993713, 34.444801, 24.628967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379318, 34.365089, 24.699368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256604, 0.524106, -0.812076,
		0.069587, 0.828011, 0.556378,
		0.964008, -0.199278, 0.176000,
		34.668522, 34.305305, 24.752167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358788, 35.155407, 24.519014>,  <33.993713, 34.444801, 24.628967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358788, 35.155407, 24.519014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650444, 34.882286, 24.500502>,  <34.825439, 34.718414, 24.489395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650444, 34.882286, 24.500502>,  <34.358788, 35.155407, 24.519014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650444, 34.882286, 24.500502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364458, 0.444651, -0.818203,
		0.579246, 0.579717, 0.573064,
		0.729140, -0.682798, -0.046280,
		34.869186, 34.677448, 24.486618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085728, 35.520306, 24.438345>,  <34.358788, 35.155407, 24.519014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085728, 35.520306, 24.438345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156361, 35.143265, 24.324987>,  <35.198742, 34.917038, 24.256973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156361, 35.143265, 24.324987>,  <35.085728, 35.520306, 24.438345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156361, 35.143265, 24.324987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548382, 0.333308, -0.766931,
		0.817371, -0.019983, 0.575765,
		0.176581, -0.942606, -0.283395,
		35.209335, 34.860481, 24.239969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782063, 35.529633, 24.282473>,  <35.085728, 35.520306, 24.438345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782063, 35.529633, 24.282473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645840, 35.191753, 24.117302>,  <35.564106, 34.989025, 24.018200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645840, 35.191753, 24.117302>,  <35.782063, 35.529633, 24.282473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645840, 35.191753, 24.117302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526556, 0.192503, -0.828059,
		0.778949, -0.499428, 0.379223,
		-0.340555, -0.844698, -0.412927,
		35.543674, 34.938343, 23.993423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362324, 35.215221, 24.025936>,  <35.782063, 35.529633, 24.282473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362324, 35.215221, 24.025936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087776, 35.025867, 23.805101>,  <35.923046, 34.912254, 23.672600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087776, 35.025867, 23.805101>,  <36.362324, 35.215221, 24.025936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087776, 35.025867, 23.805101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508227, 0.230780, -0.829727,
		0.520192, -0.850086, 0.082187,
		-0.686371, -0.473387, -0.552086,
		35.881866, 34.883850, 23.639475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738022, 34.752758, 23.454210>,  <36.362324, 35.215221, 24.025936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738022, 34.752758, 23.454210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368168, 34.853436, 23.339876>,  <36.146255, 34.913841, 23.271275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368168, 34.853436, 23.339876>,  <36.738022, 34.752758, 23.454210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368168, 34.853436, 23.339876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354164, 0.292189, -0.888366,
		-0.140081, -0.922645, -0.359309,
		-0.924632, 0.251698, -0.285837,
		36.090778, 34.928944, 23.254126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181698, 34.196507, 23.645267>,  <36.738022, 34.752758, 23.454210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181698, 34.196507, 23.645267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570953, 34.288475, 23.640692>,  <37.804508, 34.343655, 23.637947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570953, 34.288475, 23.640692>,  <37.181698, 34.196507, 23.645267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570953, 34.288475, 23.640692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100052, -0.377685, 0.920513,
		0.207322, -0.896935, -0.390545,
		0.973143, 0.229918, -0.011438,
		37.862896, 34.357449, 23.637260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618172, 33.474644, 23.741915>,  <37.181698, 34.196507, 23.645267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618172, 33.474644, 23.741915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823147, 33.801373, 23.847908>,  <37.946133, 33.997410, 23.911505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823147, 33.801373, 23.847908>,  <37.618172, 33.474644, 23.741915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823147, 33.801373, 23.847908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135459, -0.381604, 0.914346,
		0.847973, -0.432651, -0.306194,
		0.512437, 0.816818, 0.264984,
		37.976879, 34.046417, 23.927402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211517, 33.238636, 24.058134>,  <37.618172, 33.474644, 23.741915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211517, 33.238636, 24.058134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192184, 33.618179, 24.182922>,  <38.180584, 33.845905, 24.257795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192184, 33.618179, 24.182922>,  <38.211517, 33.238636, 24.058134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192184, 33.618179, 24.182922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069755, -0.308368, 0.948706,
		0.996392, 0.067618, -0.051282,
		-0.048336, 0.948861, 0.311972,
		38.177685, 33.902836, 24.276514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755234, 33.313190, 24.499371>,  <38.211517, 33.238636, 24.058134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755234, 33.313190, 24.499371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512680, 33.614300, 24.601849>,  <38.367149, 33.794964, 24.663336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512680, 33.614300, 24.601849>,  <38.755234, 33.313190, 24.499371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512680, 33.614300, 24.601849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056523, -0.280570, 0.958168,
		0.793163, 0.595496, 0.127583,
		-0.606381, 0.752772, 0.256197,
		38.330765, 33.840130, 24.678707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955765, 33.576332, 25.110464>,  <38.755234, 33.313190, 24.499371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955765, 33.576332, 25.110464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592136, 33.742847, 25.103643>,  <38.373959, 33.842754, 25.099552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592136, 33.742847, 25.103643>,  <38.955765, 33.576332, 25.110464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592136, 33.742847, 25.103643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062253, -0.095255, 0.993504,
		0.411958, 0.904230, 0.112509,
		-0.909074, 0.416286, -0.017050,
		38.319416, 33.867733, 25.098528>
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
