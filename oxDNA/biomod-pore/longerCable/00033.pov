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
	<24.519127, 35.055340, 35.404839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361572, 34.851456, 35.098885>,  <24.267040, 34.729126, 34.915310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361572, 34.851456, 35.098885>,  <24.519127, 35.055340, 35.404839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361572, 34.851456, 35.098885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061828, 0.844968, -0.531232,
		0.917077, -0.161953, -0.364335,
		-0.393886, -0.509707, -0.764887,
		24.243406, 34.698544, 34.869419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978035, 35.060661, 34.816311>,  <24.519127, 35.055340, 35.404839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978035, 35.060661, 34.816311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606699, 35.013813, 34.675190>,  <24.383898, 34.985703, 34.590519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606699, 35.013813, 34.675190>,  <24.978035, 35.060661, 34.816311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606699, 35.013813, 34.675190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146231, 0.757499, -0.636248,
		0.341766, -0.642244, -0.686089,
		-0.928339, -0.117120, -0.352803,
		24.328197, 34.978676, 34.569347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908014, 34.952595, 33.919483>,  <24.978035, 35.060661, 34.816311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908014, 34.952595, 33.919483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617315, 35.151104, 34.109451>,  <24.442896, 35.270210, 34.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617315, 35.151104, 34.109451>,  <24.908014, 34.952595, 33.919483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617315, 35.151104, 34.109451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172647, 0.801164, -0.573000,
		-0.664856, -0.334432, -0.667924,
		-0.726746, 0.496277, 0.474920,
		24.399292, 35.299988, 34.251926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398546, 35.201115, 33.403259>,  <24.908014, 34.952595, 33.919483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398546, 35.201115, 33.403259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414225, 35.443180, 33.721313>,  <24.423632, 35.588421, 33.912144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414225, 35.443180, 33.721313>,  <24.398546, 35.201115, 33.403259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414225, 35.443180, 33.721313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061503, 0.792774, -0.606404,
		-0.997337, 0.072673, -0.006144,
		0.039198, 0.605168, 0.795133,
		24.425983, 35.624729, 33.959854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.892841, 35.761196, 33.472221>,  <24.398546, 35.201115, 33.403259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.892841, 35.761196, 33.472221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256723, 35.851852, 33.611401>,  <24.475052, 35.906246, 33.694908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256723, 35.851852, 33.611401>,  <23.892841, 35.761196, 33.472221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256723, 35.851852, 33.611401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023351, 0.808674, -0.587794,
		-0.414597, 0.542845, 0.730362,
		0.909705, 0.226643, 0.347950,
		24.529634, 35.919846, 33.715786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.029747, 36.388790, 33.490974>,  <23.892841, 35.761196, 33.472221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.029747, 36.388790, 33.490974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407755, 36.268097, 33.440548>,  <24.634560, 36.195683, 33.410294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407755, 36.268097, 33.440548>,  <24.029747, 36.388790, 33.490974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407755, 36.268097, 33.440548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097301, 0.627512, -0.772504,
		0.312196, 0.717766, 0.622371,
		0.945022, -0.301730, -0.126067,
		24.691261, 36.177578, 33.402729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568922, 36.900894, 33.541843>,  <24.029747, 36.388790, 33.490974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568922, 36.900894, 33.541843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731079, 36.675583, 33.253853>,  <24.828373, 36.540394, 33.081059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731079, 36.675583, 33.253853>,  <24.568922, 36.900894, 33.541843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.731079, 36.675583, 33.253853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240282, 0.825566, -0.510594,
		0.881999, 0.033992, 0.470024,
		0.405392, -0.563282, -0.719980,
		24.852697, 36.506599, 33.037857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301363, 37.095951, 33.398819>,  <24.568922, 36.900894, 33.541843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301363, 37.095951, 33.398819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146870, 36.923054, 33.072876>,  <25.054174, 36.819317, 32.877312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146870, 36.923054, 33.072876>,  <25.301363, 37.095951, 33.398819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146870, 36.923054, 33.072876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260142, 0.796502, -0.545812,
		0.884958, -0.422788, -0.195190,
		-0.386232, -0.432244, -0.814856,
		25.031000, 36.793381, 32.828419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663532, 37.382431, 32.858715>,  <25.301363, 37.095951, 33.398819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663532, 37.382431, 32.858715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372822, 37.191689, 32.660965>,  <25.198395, 37.077244, 32.542316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372822, 37.191689, 32.660965>,  <25.663532, 37.382431, 32.858715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372822, 37.191689, 32.660965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044651, 0.685422, -0.726776,
		0.685422, -0.550277, -0.476856,
		0.726776, 0.476856, 0.494374,
		25.154789, 37.048634, 32.512653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991722, 37.173557, 32.225460>,  <25.663532, 37.382431, 32.858715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991722, 37.173557, 32.225460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595081, 37.181065, 32.174274>,  <25.357098, 37.185570, 32.143562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595081, 37.181065, 32.174274>,  <25.991722, 37.173557, 32.225460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595081, 37.181065, 32.174274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109324, 0.650289, -0.751780,
		0.069100, -0.759455, -0.646879,
		-0.991601, 0.018772, -0.127962,
		25.297602, 37.186695, 32.135887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875204, 37.197147, 31.475090>,  <25.991722, 37.173557, 32.225460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875204, 37.197147, 31.475090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530449, 37.334026, 31.624786>,  <25.323597, 37.416153, 31.714603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530449, 37.334026, 31.624786>,  <25.875204, 37.197147, 31.475090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530449, 37.334026, 31.624786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002412, 0.735222, -0.677822,
		-0.507095, -0.585108, -0.632853,
		-0.861887, 0.342194, 0.374239,
		25.271883, 37.436684, 31.737059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233818, 37.312347, 30.893970>,  <25.875204, 37.197147, 31.475090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233818, 37.312347, 30.893970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185915, 37.538536, 31.220383>,  <25.157173, 37.674248, 31.416229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185915, 37.538536, 31.220383>,  <25.233818, 37.312347, 30.893970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185915, 37.538536, 31.220383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237620, 0.781729, -0.576574,
		-0.963948, -0.262953, 0.040749,
		-0.119757, 0.565470, 0.816028,
		25.149988, 37.708176, 31.465191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650606, 37.666916, 30.669874>,  <25.233818, 37.312347, 30.893970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650606, 37.666916, 30.669874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912613, 37.811913, 30.935068>,  <25.069817, 37.898911, 31.094185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912613, 37.811913, 30.935068>,  <24.650606, 37.666916, 30.669874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912613, 37.811913, 30.935068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261185, 0.931947, -0.251508,
		-0.709040, -0.008420, 0.705118,
		0.655015, 0.362496, 0.662987,
		25.109118, 37.920662, 31.133965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.356812, 38.093113, 31.222729>,  <24.650606, 37.666916, 30.669874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.356812, 38.093113, 31.222729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729912, 38.198086, 31.123852>,  <24.953772, 38.261070, 31.064526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729912, 38.198086, 31.123852>,  <24.356812, 38.093113, 31.222729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729912, 38.198086, 31.123852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289947, 0.953544, -0.081758,
		0.214252, 0.147932, 0.965511,
		0.932752, 0.262430, -0.247191,
		25.009737, 38.276814, 31.049694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730465, 38.601570, 31.750193>,  <24.356812, 38.093113, 31.222729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730465, 38.601570, 31.750193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863586, 38.625710, 31.373768>,  <24.943459, 38.640194, 31.147913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863586, 38.625710, 31.373768>,  <24.730465, 38.601570, 31.750193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863586, 38.625710, 31.373768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458983, 0.882129, -0.105744,
		0.823758, 0.467124, 0.321275,
		0.332802, 0.060353, -0.941064,
		24.963427, 38.643814, 31.091448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693008, 38.293804, 32.457958>,  <24.730465, 38.601570, 31.750193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693008, 38.293804, 32.457958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764742, 38.112225, 32.108841>,  <24.807783, 38.003277, 31.899370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764742, 38.112225, 32.108841>,  <24.693008, 38.293804, 32.457958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764742, 38.112225, 32.108841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209482, -0.884452, 0.416968,
		-0.961226, 0.108058, -0.253707,
		0.179335, -0.453947, -0.872795,
		24.818542, 37.976040, 31.847002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166550, 37.818710, 32.355427>,  <24.693008, 38.293804, 32.457958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166550, 37.818710, 32.355427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496386, 37.699818, 32.162884>,  <24.694288, 37.628483, 32.047359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496386, 37.699818, 32.162884>,  <24.166550, 37.818710, 32.355427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496386, 37.699818, 32.162884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026429, -0.870170, 0.492043,
		-0.565111, -0.393012, -0.725390,
		0.824591, -0.297230, -0.481356,
		24.743763, 37.610649, 32.018478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.014313, 37.187809, 31.937164>,  <24.166550, 37.818710, 32.355427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.014313, 37.187809, 31.937164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410959, 37.175373, 31.987329>,  <24.648947, 37.167912, 32.017429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410959, 37.175373, 31.987329>,  <24.014313, 37.187809, 31.937164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.410959, 37.175373, 31.987329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094493, -0.836476, 0.539795,
		0.088122, -0.547120, -0.832402,
		0.991617, -0.031088, 0.125411,
		24.708445, 37.166046, 32.024952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.197487, 36.595341, 31.803234>,  <24.014313, 37.187809, 31.937164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.197487, 36.595341, 31.803234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516966, 36.703808, 32.018101>,  <24.708654, 36.768887, 32.147022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516966, 36.703808, 32.018101>,  <24.197487, 36.595341, 31.803234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516966, 36.703808, 32.018101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061901, -0.850944, 0.521597,
		0.598539, -0.449850, -0.662863,
		0.798699, 0.271164, 0.537169,
		24.756577, 36.785156, 32.179253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.662865, 36.079098, 31.788671>,  <24.197487, 36.595341, 31.803234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.662865, 36.079098, 31.788671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763474, 36.299877, 32.106689>,  <24.823839, 36.432343, 32.297501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763474, 36.299877, 32.106689>,  <24.662865, 36.079098, 31.788671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.763474, 36.299877, 32.106689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122913, -0.833016, 0.539422,
		0.960015, -0.037956, -0.277363,
		0.251522, 0.551945, 0.795043,
		24.838930, 36.465462, 32.345203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380295, 36.022026, 32.003185>,  <24.662865, 36.079098, 31.788671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380295, 36.022026, 32.003185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104626, 36.084499, 32.286209>,  <24.939224, 36.121983, 32.456024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104626, 36.084499, 32.286209>,  <25.380295, 36.022026, 32.003185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104626, 36.084499, 32.286209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182406, -0.907651, 0.378018,
		0.701262, 0.389584, 0.597039,
		-0.689173, 0.156186, 0.707564,
		24.897875, 36.131355, 32.498478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041880, 36.243393, 31.838701>,  <25.380295, 36.022026, 32.003185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041880, 36.243393, 31.838701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242529, 36.095531, 32.151554>,  <26.362919, 36.006813, 32.339264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242529, 36.095531, 32.151554>,  <26.041880, 36.243393, 31.838701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242529, 36.095531, 32.151554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280937, -0.924713, -0.256865,
		0.818199, -0.090880, -0.567708,
		0.501623, -0.369657, 0.782131,
		26.393015, 35.984634, 32.386192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580706, 35.755802, 31.645456>,  <26.041880, 36.243393, 31.838701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580706, 35.755802, 31.645456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434195, 35.672832, 32.008293>,  <26.346289, 35.623051, 32.225994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434195, 35.672832, 32.008293>,  <26.580706, 35.755802, 31.645456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434195, 35.672832, 32.008293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286468, -0.902356, -0.322010,
		0.885311, -0.377798, 0.271094,
		-0.366278, -0.207420, 0.907093,
		26.324310, 35.610607, 32.280422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099220, 35.261055, 32.079010>,  <26.580706, 35.755802, 31.645456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099220, 35.261055, 32.079010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701565, 35.268700, 32.121571>,  <26.462971, 35.273285, 32.147106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701565, 35.268700, 32.121571>,  <27.099220, 35.261055, 32.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701565, 35.268700, 32.121571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046264, -0.964768, -0.259004,
		0.097701, -0.262408, 0.959998,
		-0.994140, 0.019109, 0.106399,
		26.403322, 35.274433, 32.153492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784515, 35.414436, 31.844414>,  <27.099220, 35.261055, 32.079010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784515, 35.414436, 31.844414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537256, 35.337032, 31.539665>,  <27.388901, 35.290592, 31.356817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537256, 35.337032, 31.539665>,  <27.784515, 35.414436, 31.844414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537256, 35.337032, 31.539665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772581, 0.029164, -0.634247,
		0.144951, -0.980665, 0.131473,
		-0.618149, -0.193508, -0.761870,
		27.351812, 35.278980, 31.311104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021849, 34.863674, 31.338799>,  <27.784515, 35.414436, 31.844414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021849, 34.863674, 31.338799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770086, 35.090080, 31.125828>,  <27.619030, 35.225925, 30.998045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770086, 35.090080, 31.125828>,  <28.021849, 34.863674, 31.338799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770086, 35.090080, 31.125828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593438, -0.092231, -0.799578,
		-0.501679, -0.819220, -0.277844,
		-0.629404, 0.566015, -0.532427,
		27.581264, 35.259884, 30.966101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674059, 34.763302, 31.681215>,  <28.021849, 34.863674, 31.338799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674059, 34.763302, 31.681215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825731, 35.007954, 31.403473>,  <28.916735, 35.154747, 31.236828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825731, 35.007954, 31.403473>,  <28.674059, 34.763302, 31.681215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825731, 35.007954, 31.403473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732633, -0.656807, -0.178472,
		-0.565216, -0.441034, -0.697151,
		0.379182, 0.611631, -0.694355,
		28.939486, 35.191444, 31.195166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849134, 34.402168, 31.229782>,  <28.674059, 34.763302, 31.681215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849134, 34.402168, 31.229782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044796, 34.710758, 31.067030>,  <29.162193, 34.895912, 30.969379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044796, 34.710758, 31.067030>,  <28.849134, 34.402168, 31.229782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044796, 34.710758, 31.067030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727026, -0.618362, -0.298434,
		-0.481834, -0.149832, -0.863358,
		0.489152, 0.771479, -0.406879,
		29.191542, 34.942204, 30.944965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051504, 34.274658, 30.608852>,  <28.849134, 34.402168, 31.229782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051504, 34.274658, 30.608852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321983, 34.525269, 30.763885>,  <29.484270, 34.675636, 30.856905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321983, 34.525269, 30.763885>,  <29.051504, 34.274658, 30.608852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321983, 34.525269, 30.763885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708919, -0.696516, -0.110899,
		0.200478, 0.349755, -0.915139,
		0.676197, 0.626527, 0.387584,
		29.524843, 34.713226, 30.880161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591795, 34.112587, 30.231110>,  <29.051504, 34.274658, 30.608852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591795, 34.112587, 30.231110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708876, 34.288616, 30.570677>,  <29.779125, 34.394234, 30.774416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708876, 34.288616, 30.570677>,  <29.591795, 34.112587, 30.231110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708876, 34.288616, 30.570677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744048, -0.662454, 0.086868,
		0.600597, 0.606208, -0.521340,
		0.292704, 0.440075, 0.848916,
		29.796686, 34.420639, 30.825352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092510, 34.813152, 30.201210>,  <29.591795, 34.112587, 30.231110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092510, 34.813152, 30.201210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209805, 34.816833, 30.583609>,  <30.280180, 34.819042, 30.813047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209805, 34.816833, 30.583609>,  <30.092510, 34.813152, 30.201210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209805, 34.816833, 30.583609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378466, -0.919383, -0.107233,
		0.877939, 0.393256, -0.273079,
		0.293234, 0.009207, 0.955996,
		30.297775, 34.819595, 30.870407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729197, 34.578518, 30.287619>,  <30.092510, 34.813152, 30.201210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729197, 34.578518, 30.287619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557281, 34.506378, 30.641512>,  <30.454132, 34.463093, 30.853848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557281, 34.506378, 30.641512>,  <30.729197, 34.578518, 30.287619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557281, 34.506378, 30.641512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247328, -0.965887, -0.076747,
		0.868395, 0.185835, 0.459735,
		-0.429790, -0.180352, 0.884734,
		30.428345, 34.452274, 30.906933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251963, 34.110008, 30.592262>,  <30.729197, 34.578518, 30.287619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251963, 34.110008, 30.592262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939589, 34.059498, 30.836948>,  <30.752165, 34.029190, 30.983759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939589, 34.059498, 30.836948>,  <31.251963, 34.110008, 30.592262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939589, 34.059498, 30.836948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301675, -0.933803, 0.192363,
		0.546929, 0.334762, 0.767335,
		-0.780936, -0.126277, 0.611714,
		30.705307, 34.021614, 31.020462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587748, 33.873898, 31.292709>,  <31.251963, 34.110008, 30.592262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587748, 33.873898, 31.292709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207233, 33.766697, 31.231739>,  <30.978926, 33.702377, 31.195158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207233, 33.766697, 31.231739>,  <31.587748, 33.873898, 31.292709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207233, 33.766697, 31.231739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263682, -0.963401, 0.048275,
		-0.159783, 0.005731, 0.987135,
		-0.951284, -0.268004, -0.152424,
		30.921848, 33.686295, 31.186012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539619, 33.356243, 31.785297>,  <31.587748, 33.873898, 31.292709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539619, 33.356243, 31.785297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254787, 33.312908, 31.507822>,  <31.083887, 33.286907, 31.341337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254787, 33.312908, 31.507822>,  <31.539619, 33.356243, 31.785297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254787, 33.312908, 31.507822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135711, -0.990629, 0.015406,
		-0.688855, -0.083171, 0.720112,
		-0.712082, -0.108340, -0.693687,
		31.041162, 33.280407, 31.299715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576727, 32.566422, 31.618023>,  <31.539619, 33.356243, 31.785297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576727, 32.566422, 31.618023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262833, 32.324272, 31.671255>,  <31.074495, 32.178982, 31.703196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262833, 32.324272, 31.671255>,  <31.576727, 32.566422, 31.618023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262833, 32.324272, 31.671255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619583, 0.772182, -0.140896,
		-0.017468, -0.193021, -0.981039,
		-0.784737, -0.605374, 0.133082,
		31.027412, 32.142658, 31.711180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200943, 32.542751, 30.948486>,  <31.576727, 32.566422, 31.618023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200943, 32.542751, 30.948486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960800, 32.463676, 31.258451>,  <30.816715, 32.416229, 31.444431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960800, 32.463676, 31.258451>,  <31.200943, 32.542751, 30.948486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960800, 32.463676, 31.258451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629995, 0.713778, -0.305986,
		-0.492626, -0.671892, -0.553065,
		-0.600355, -0.197691, 0.774914,
		30.780693, 32.404369, 31.490925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562166, 32.363312, 30.585760>,  <31.200943, 32.542751, 30.948486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562166, 32.363312, 30.585760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610611, 32.530880, 30.945724>,  <30.639679, 32.631420, 31.161703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610611, 32.530880, 30.945724>,  <30.562166, 32.363312, 30.585760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610611, 32.530880, 30.945724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454254, 0.829476, -0.324998,
		-0.882601, -0.369426, 0.290758,
		0.121114, 0.418921, 0.899909,
		30.646946, 32.656555, 31.215696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129475, 32.930794, 30.584223>,  <30.562166, 32.363312, 30.585760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129475, 32.930794, 30.584223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328949, 33.036926, 30.914291>,  <30.448633, 33.100605, 31.112333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328949, 33.036926, 30.914291>,  <30.129475, 32.930794, 30.584223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328949, 33.036926, 30.914291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399935, 0.915037, -0.052535,
		-0.769003, -0.303817, 0.562432,
		0.498685, 0.265336, 0.825173,
		30.478554, 33.116528, 31.161842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720089, 33.267323, 31.010483>,  <30.129475, 32.930794, 30.584223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720089, 33.267323, 31.010483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088507, 33.395153, 31.099518>,  <30.309557, 33.471851, 31.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088507, 33.395153, 31.099518>,  <29.720089, 33.267323, 31.010483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088507, 33.395153, 31.099518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320605, 0.946655, -0.032520,
		-0.221107, -0.041410, 0.974370,
		0.921045, 0.319578, 0.222588,
		30.364820, 33.491028, 31.166294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681955, 33.561260, 31.635382>,  <29.720089, 33.267323, 31.010483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681955, 33.561260, 31.635382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994406, 33.719864, 31.442457>,  <30.181875, 33.815025, 31.326702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994406, 33.719864, 31.442457>,  <29.681955, 33.561260, 31.635382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994406, 33.719864, 31.442457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459388, 0.888127, -0.013861,
		0.422857, 0.232395, 0.875891,
		0.781124, 0.396513, -0.482310,
		30.228743, 33.838818, 31.297764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829233, 34.289223, 32.019821>,  <29.681955, 33.561260, 31.635382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829233, 34.289223, 32.019821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990166, 34.305939, 31.654005>,  <30.086725, 34.315968, 31.434515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990166, 34.305939, 31.654005>,  <29.829233, 34.289223, 32.019821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990166, 34.305939, 31.654005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288899, 0.953710, -0.083512,
		0.868715, 0.297809, 0.395782,
		0.402332, 0.041793, -0.914539,
		30.110865, 34.318478, 31.379642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254721, 34.830780, 32.054493>,  <29.829233, 34.289223, 32.019821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254721, 34.830780, 32.054493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143286, 34.735096, 31.682434>,  <30.076426, 34.677685, 31.459200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143286, 34.735096, 31.682434>,  <30.254721, 34.830780, 32.054493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143286, 34.735096, 31.682434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385416, 0.914925, -0.119865,
		0.879684, 0.325099, -0.347083,
		-0.278587, -0.239214, -0.930143,
		30.059710, 34.663330, 31.403391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528254, 35.225849, 31.491005>,  <30.254721, 34.830780, 32.054493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528254, 35.225849, 31.491005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216707, 35.071476, 31.293249>,  <30.029779, 34.978851, 31.174595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216707, 35.071476, 31.293249>,  <30.528254, 35.225849, 31.491005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216707, 35.071476, 31.293249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237461, 0.911035, -0.337087,
		0.580502, -0.145146, -0.801218,
		-0.778865, -0.385937, -0.494391,
		29.983047, 34.955696, 31.144932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389542, 35.732109, 30.974573>,  <30.528254, 35.225849, 31.491005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389542, 35.732109, 30.974573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091070, 35.471649, 30.919119>,  <29.911987, 35.315372, 30.885847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091070, 35.471649, 30.919119>,  <30.389542, 35.732109, 30.974573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091070, 35.471649, 30.919119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541006, 0.714430, -0.443735,
		0.387985, -0.256103, -0.885370,
		-0.746177, -0.651153, -0.138635,
		29.867218, 35.276302, 30.877529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186962, 35.648258, 30.222675>,  <30.389542, 35.732109, 30.974573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186962, 35.648258, 30.222675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874638, 35.586292, 30.464777>,  <29.687243, 35.549110, 30.610037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874638, 35.586292, 30.464777>,  <30.186962, 35.648258, 30.222675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874638, 35.586292, 30.464777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511981, 0.713871, -0.477769,
		-0.358058, -0.682927, -0.636715,
		-0.780813, -0.154917, 0.605253,
		29.640394, 35.539818, 30.646353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532408, 35.569820, 29.869354>,  <30.186962, 35.648258, 30.222675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532408, 35.569820, 29.869354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516169, 35.707081, 30.244715>,  <29.506426, 35.789436, 30.469931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516169, 35.707081, 30.244715>,  <29.532408, 35.569820, 29.869354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516169, 35.707081, 30.244715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432576, 0.840562, -0.326087,
		-0.900683, -0.419169, 0.114314,
		-0.040598, 0.343150, 0.938403,
		29.503990, 35.810024, 30.526236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814779, 35.822525, 30.148882>,  <29.532408, 35.569820, 29.869354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814779, 35.822525, 30.148882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122559, 36.022236, 30.308214>,  <29.307226, 36.142063, 30.403814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122559, 36.022236, 30.308214>,  <28.814779, 35.822525, 30.148882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122559, 36.022236, 30.308214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460461, 0.865820, -0.195786,
		-0.442637, -0.032770, 0.896102,
		0.769447, 0.499282, 0.398333,
		29.353394, 36.172020, 30.427713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595276, 36.267353, 30.708672>,  <28.814779, 35.822525, 30.148882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595276, 36.267353, 30.708672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925070, 36.394550, 30.521437>,  <29.122946, 36.470867, 30.409096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925070, 36.394550, 30.521437>,  <28.595276, 36.267353, 30.708672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925070, 36.394550, 30.521437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486926, 0.820115, -0.300524,
		0.288322, 0.475701, 0.831010,
		0.824484, 0.317993, -0.468089,
		29.172415, 36.489948, 30.381010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700773, 36.971619, 30.761513>,  <28.595276, 36.267353, 30.708672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700773, 36.971619, 30.761513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874132, 36.873779, 30.414564>,  <28.978148, 36.815075, 30.206394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874132, 36.873779, 30.414564>,  <28.700773, 36.971619, 30.761513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874132, 36.873779, 30.414564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416262, 0.799307, -0.433398,
		0.799307, 0.548888, 0.244600,
		0.433398, -0.244600, -0.867374,
		29.004152, 36.800400, 30.154352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237244, 37.421471, 30.482183>,  <28.700773, 36.971619, 30.761513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237244, 37.421471, 30.482183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017094, 37.251072, 30.194958>,  <28.885004, 37.148834, 30.022623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017094, 37.251072, 30.194958>,  <29.237244, 37.421471, 30.482183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017094, 37.251072, 30.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133103, 0.893809, -0.428240,
		0.824241, -0.140116, -0.548630,
		-0.550373, -0.425997, -0.718064,
		28.851982, 37.123272, 29.979538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010326, 37.649960, 29.712372>,  <29.237244, 37.421471, 30.482183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010326, 37.649960, 29.712372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022495, 37.997749, 29.909588>,  <29.029797, 38.206425, 30.027918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022495, 37.997749, 29.909588>,  <29.010326, 37.649960, 29.712372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022495, 37.997749, 29.909588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954605, -0.171503, 0.243547,
		0.296316, 0.463248, -0.835223,
		0.030421, 0.869476, 0.493039,
		29.031622, 38.258591, 30.057499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633907, 37.952034, 29.483860>,  <29.010326, 37.649960, 29.712372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633907, 37.952034, 29.483860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525665, 38.092999, 29.842207>,  <29.460720, 38.177578, 30.057215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525665, 38.092999, 29.842207>,  <29.633907, 37.952034, 29.483860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525665, 38.092999, 29.842207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951238, -0.045231, 0.305123,
		0.148050, 0.934750, -0.322992,
		-0.270604, 0.352415, 0.895866,
		29.444485, 38.198723, 30.110968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114204, 38.405247, 29.675150>,  <29.633907, 37.952034, 29.483860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114204, 38.405247, 29.675150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976173, 38.253441, 30.018518>,  <29.893354, 38.162357, 30.224539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976173, 38.253441, 30.018518>,  <30.114204, 38.405247, 29.675150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976173, 38.253441, 30.018518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924832, -0.293422, 0.242051,
		0.160017, 0.877422, 0.452244,
		-0.345079, -0.379517, 0.858421,
		29.872650, 38.139587, 30.276045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473616, 38.617870, 30.331730>,  <30.114204, 38.405247, 29.675150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473616, 38.617870, 30.331730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314156, 38.254715, 30.383595>,  <30.218479, 38.036819, 30.414713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314156, 38.254715, 30.383595>,  <30.473616, 38.617870, 30.331730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314156, 38.254715, 30.383595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878756, -0.337690, 0.337273,
		-0.262422, 0.248395, 0.932435,
		-0.398651, -0.907891, 0.129662,
		30.194561, 37.982349, 30.422493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641359, 38.302227, 31.025160>,  <30.473616, 38.617870, 30.331730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641359, 38.302227, 31.025160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600286, 38.034103, 30.731184>,  <30.575642, 37.873230, 30.554798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600286, 38.034103, 30.731184>,  <30.641359, 38.302227, 31.025160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600286, 38.034103, 30.731184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879653, -0.406135, 0.247519,
		-0.464400, -0.621075, 0.631347,
		-0.102684, -0.670313, -0.734939,
		30.569481, 37.833008, 30.510702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583689, 37.651497, 31.247549>,  <30.641359, 38.302227, 31.025160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583689, 37.651497, 31.247549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774857, 37.680038, 30.897348>,  <30.889557, 37.697163, 30.687227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774857, 37.680038, 30.897348>,  <30.583689, 37.651497, 31.247549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774857, 37.680038, 30.897348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778826, -0.495357, 0.384775,
		-0.406231, -0.865754, -0.292311,
		0.477919, 0.071352, -0.875501,
		30.918232, 37.701443, 30.634697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757637, 37.770653, 31.960518>,  <30.583689, 37.651497, 31.247549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757637, 37.770653, 31.960518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445173, 37.700985, 32.200336>,  <30.257696, 37.659184, 32.344227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445173, 37.700985, 32.200336>,  <30.757637, 37.770653, 31.960518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445173, 37.700985, 32.200336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622651, -0.146894, 0.768588,
		-0.045794, 0.973698, 0.223194,
		-0.781158, -0.174169, 0.599547,
		30.210825, 37.648735, 32.380199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961685, 37.866577, 32.560516>,  <30.757637, 37.770653, 31.960518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961685, 37.866577, 32.560516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618858, 37.691811, 32.669727>,  <30.413162, 37.586952, 32.735252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618858, 37.691811, 32.669727>,  <30.961685, 37.866577, 32.560516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618858, 37.691811, 32.669727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431016, -0.317731, 0.844554,
		-0.282249, 0.841518, 0.460634,
		-0.857065, -0.436915, 0.273028,
		30.361738, 37.560738, 32.751637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517670, 37.862659, 32.959377>,  <30.961685, 37.866577, 32.560516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517670, 37.862659, 32.959377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537056, 37.484825, 32.829514>,  <31.548687, 37.258125, 32.751595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537056, 37.484825, 32.829514>,  <31.517670, 37.862659, 32.959377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537056, 37.484825, 32.829514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768357, -0.172420, 0.616360,
		-0.638184, -0.279323, 0.717426,
		0.048465, -0.944590, -0.324655,
		31.551596, 37.201447, 32.732117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732037, 38.009201, 32.227985>,  <31.517670, 37.862659, 32.959377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732037, 38.009201, 32.227985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861401, 38.322071, 32.014969>,  <31.939020, 38.509792, 31.887157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861401, 38.322071, 32.014969>,  <31.732037, 38.009201, 32.227985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861401, 38.322071, 32.014969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676231, -0.584715, -0.448129,
		-0.661903, -0.215193, -0.718036,
		0.323412, 0.782176, -0.532545,
		31.958424, 38.556725, 31.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074883, 37.687450, 31.632317>,  <31.732037, 38.009201, 32.227985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074883, 37.687450, 31.632317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202457, 38.063309, 31.582760>,  <32.279003, 38.288822, 31.553026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202457, 38.063309, 31.582760>,  <32.074883, 37.687450, 31.632317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202457, 38.063309, 31.582760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826980, -0.339758, -0.447960,
		-0.463017, 0.040412, -0.885427,
		0.318935, 0.939644, -0.123894,
		32.298138, 38.345203, 31.545591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334492, 37.783920, 30.848125>,  <32.074883, 37.687450, 31.632317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334492, 37.783920, 30.848125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540974, 38.005814, 31.109140>,  <32.664864, 38.138950, 31.265749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540974, 38.005814, 31.109140>,  <32.334492, 37.783920, 30.848125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540974, 38.005814, 31.109140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843484, -0.197119, -0.499679,
		-0.148562, 0.808340, -0.569663,
		0.516202, 0.554735, 0.652537,
		32.695835, 38.172234, 31.304901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514557, 38.439167, 30.691675>,  <32.334492, 37.783920, 30.848125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514557, 38.439167, 30.691675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794266, 38.209892, 30.862543>,  <32.962090, 38.072327, 30.965065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794266, 38.209892, 30.862543>,  <32.514557, 38.439167, 30.691675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794266, 38.209892, 30.862543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540562, 0.032966, -0.840658,
		0.467772, 0.818762, 0.332895,
		0.699273, -0.573186, 0.427171,
		33.004047, 38.037937, 30.990694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334293, 38.674706, 30.760183>,  <32.514557, 38.439167, 30.691675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334293, 38.674706, 30.760183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239552, 38.291462, 30.695786>,  <33.182705, 38.061516, 30.657146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239552, 38.291462, 30.695786>,  <33.334293, 38.674706, 30.760183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239552, 38.291462, 30.695786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574201, -0.004381, -0.818703,
		0.783704, -0.286360, 0.551187,
		-0.236858, -0.958112, -0.160995,
		33.168495, 38.004028, 30.647488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933308, 38.464596, 30.648838>,  <33.334293, 38.674706, 30.760183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933308, 38.464596, 30.648838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652027, 38.252384, 30.459505>,  <33.483257, 38.125057, 30.345905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652027, 38.252384, 30.459505>,  <33.933308, 38.464596, 30.648838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652027, 38.252384, 30.459505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541998, 0.030869, -0.839812,
		0.460156, -0.847105, 0.265838,
		-0.703203, -0.530528, -0.473334,
		33.441067, 38.093227, 30.317505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281353, 37.901100, 30.161196>,  <33.933308, 38.464596, 30.648838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281353, 37.901100, 30.161196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925472, 38.016289, 30.019485>,  <33.711945, 38.085400, 29.934460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925472, 38.016289, 30.019485>,  <34.281353, 37.901100, 30.161196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925472, 38.016289, 30.019485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355351, -0.050406, -0.933373,
		-0.286640, -0.956312, -0.057484,
		-0.889698, 0.287969, -0.354275,
		33.658562, 38.102680, 29.913202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977840, 37.392284, 29.679689>,  <34.281353, 37.901100, 30.161196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977840, 37.392284, 29.679689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866615, 37.765640, 29.588945>,  <33.799881, 37.989655, 29.534500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866615, 37.765640, 29.588945>,  <33.977840, 37.392284, 29.679689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866615, 37.765640, 29.588945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447528, -0.083087, -0.890402,
		-0.849940, -0.349115, -0.394614,
		-0.278066, 0.933389, -0.226858,
		33.783195, 38.045658, 29.520887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623699, 37.418499, 29.012781>,  <33.977840, 37.392284, 29.679689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623699, 37.418499, 29.012781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756355, 37.792122, 29.065786>,  <33.835949, 38.016296, 29.097589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756355, 37.792122, 29.065786>,  <33.623699, 37.418499, 29.012781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756355, 37.792122, 29.065786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390993, -0.008255, -0.920357,
		-0.858568, 0.357039, -0.367946,
		0.331640, 0.934053, 0.132512,
		33.855846, 38.072338, 29.105539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402271, 37.838905, 28.421818>,  <33.623699, 37.418499, 29.012781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402271, 37.838905, 28.421818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727097, 38.005646, 28.585178>,  <33.921993, 38.105690, 28.683195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727097, 38.005646, 28.585178>,  <33.402271, 37.838905, 28.421818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727097, 38.005646, 28.585178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470188, -0.052844, -0.880983,
		-0.345656, 0.907438, -0.238911,
		0.812062, 0.416850, 0.408401,
		33.970715, 38.130699, 28.707699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644909, 38.397305, 28.030071>,  <33.402271, 37.838905, 28.421818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644909, 38.397305, 28.030071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976986, 38.298321, 28.229885>,  <34.176231, 38.238930, 28.349773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976986, 38.298321, 28.229885>,  <33.644909, 38.397305, 28.030071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976986, 38.298321, 28.229885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448634, -0.235327, -0.862177,
		0.330911, 0.939885, -0.084348,
		0.830196, -0.247462, 0.499536,
		34.226044, 38.224083, 28.379745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273296, 38.613304, 27.637192>,  <33.644909, 38.397305, 28.030071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273296, 38.613304, 27.637192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418446, 38.354298, 27.905235>,  <34.505535, 38.198895, 28.066061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418446, 38.354298, 27.905235>,  <34.273296, 38.613304, 27.637192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418446, 38.354298, 27.905235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530499, -0.447658, -0.719842,
		0.766089, 0.616704, 0.181063,
		0.362875, -0.647517, 0.670107,
		34.527309, 38.160042, 28.106268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959663, 38.666107, 27.610895>,  <34.273296, 38.613304, 27.637192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959663, 38.666107, 27.610895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881138, 38.296448, 27.741989>,  <34.834023, 38.074654, 27.820646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881138, 38.296448, 27.741989>,  <34.959663, 38.666107, 27.610895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881138, 38.296448, 27.741989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610165, -0.376778, -0.696948,
		0.767567, 0.063150, 0.637851,
		-0.196316, -0.924148, 0.327735,
		34.822243, 38.019203, 27.840309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554825, 38.384407, 27.547449>,  <34.959663, 38.666107, 27.610895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554825, 38.384407, 27.547449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293789, 38.081676, 27.562071>,  <35.137165, 37.900040, 27.570845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293789, 38.081676, 27.562071>,  <35.554825, 38.384407, 27.547449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293789, 38.081676, 27.562071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499161, -0.465709, -0.730721,
		0.570052, -0.458618, 0.681697,
		-0.652594, -0.756826, 0.036554,
		35.098011, 37.854630, 27.573038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939011, 37.882507, 27.641573>,  <35.554825, 38.384407, 27.547449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939011, 37.882507, 27.641573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614273, 37.723816, 27.470221>,  <35.419430, 37.628601, 27.367409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614273, 37.723816, 27.470221>,  <35.939011, 37.882507, 27.641573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614273, 37.723816, 27.470221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549364, -0.270546, -0.790572,
		0.197746, -0.877161, 0.437591,
		-0.811847, -0.396729, -0.428381,
		35.370720, 37.604797, 27.341705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136097, 37.093880, 27.383795>,  <35.939011, 37.882507, 27.641573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136097, 37.093880, 27.383795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801529, 37.164646, 27.176292>,  <35.600788, 37.207108, 27.051790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801529, 37.164646, 27.176292>,  <36.136097, 37.093880, 27.383795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801529, 37.164646, 27.176292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453717, -0.307488, -0.836416,
		-0.307488, -0.934961, 0.176917,
		0.836416, -0.176917, 0.518757,
		35.550606, 37.217720, 27.020666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024220, 36.508022, 27.032518>,  <36.136097, 37.093880, 27.383795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024220, 36.508022, 27.032518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846874, 36.812115, 26.842583>,  <35.740467, 36.994572, 26.728621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846874, 36.812115, 26.842583>,  <36.024220, 36.508022, 27.032518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846874, 36.812115, 26.842583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530424, -0.204514, -0.822693,
		-0.722551, -0.616618, -0.312573,
		-0.443362, 0.760234, -0.474841,
		35.713867, 37.040184, 26.700130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957649, 36.242336, 26.420479>,  <36.024220, 36.508022, 27.032518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957649, 36.242336, 26.420479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887058, 36.631233, 26.359032>,  <35.844704, 36.864571, 26.322163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887058, 36.631233, 26.359032>,  <35.957649, 36.242336, 26.420479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887058, 36.631233, 26.359032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466421, -0.054831, -0.882862,
		-0.866779, -0.227459, -0.443798,
		-0.176481, 0.972243, -0.153618,
		35.834114, 36.922905, 26.312946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667202, 36.241829, 25.675032>,  <35.957649, 36.242336, 26.420479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667202, 36.241829, 25.675032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785477, 36.610611, 25.775091>,  <35.856441, 36.831879, 25.835127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785477, 36.610611, 25.775091>,  <35.667202, 36.241829, 25.675032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785477, 36.610611, 25.775091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524648, 0.062105, -0.849051,
		-0.798318, 0.382296, -0.465336,
		0.295689, 0.921950, 0.250151,
		35.874184, 36.887196, 25.850136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651531, 36.675762, 25.060022>,  <35.667202, 36.241829, 25.675032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651531, 36.675762, 25.060022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898396, 36.864513, 25.311878>,  <36.046513, 36.977764, 25.462992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898396, 36.864513, 25.311878>,  <35.651531, 36.675762, 25.060022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898396, 36.864513, 25.311878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603183, 0.230120, -0.763685,
		-0.505261, 0.851102, -0.142611,
		0.617156, 0.471880, 0.629640,
		36.083542, 37.006077, 25.500771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696445, 37.271397, 24.633751>,  <35.651531, 36.675762, 25.060022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696445, 37.271397, 24.633751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009392, 37.252640, 24.882174>,  <36.197159, 37.241386, 25.031227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009392, 37.252640, 24.882174>,  <35.696445, 37.271397, 24.633751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009392, 37.252640, 24.882174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609788, 0.260607, -0.748493,
		-0.126751, 0.964306, 0.232485,
		0.782363, -0.046894, 0.621054,
		36.244102, 37.238571, 25.068489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063328, 37.871067, 24.505653>,  <35.696445, 37.271397, 24.633751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063328, 37.871067, 24.505653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338718, 37.625404, 24.659956>,  <36.503952, 37.478004, 24.752537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338718, 37.625404, 24.659956>,  <36.063328, 37.871067, 24.505653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338718, 37.625404, 24.659956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597887, 0.179552, -0.781212,
		0.410527, 0.768484, 0.490816,
		0.688476, -0.614161, 0.385755,
		36.545261, 37.441154, 24.775682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705696, 38.218067, 24.498861>,  <36.063328, 37.871067, 24.505653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705696, 38.218067, 24.498861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818829, 37.835320, 24.525440>,  <36.886707, 37.605671, 24.541388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818829, 37.835320, 24.525440>,  <36.705696, 38.218067, 24.498861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818829, 37.835320, 24.525440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525787, 0.096723, -0.845099,
		0.802220, 0.273954, 0.530463,
		0.282827, -0.956867, 0.066449,
		36.903675, 37.548260, 24.545374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319244, 38.171761, 24.280241>,  <36.705696, 38.218067, 24.498861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319244, 38.171761, 24.280241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213070, 37.789310, 24.230650>,  <37.149364, 37.559841, 24.200895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213070, 37.789310, 24.230650>,  <37.319244, 38.171761, 24.280241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213070, 37.789310, 24.230650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647809, -0.081629, -0.757417,
		0.714064, -0.281361, 0.641053,
		-0.265436, -0.956124, -0.123980,
		37.133438, 37.502472, 24.193457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968391, 37.884682, 24.142990>,  <37.319244, 38.171761, 24.280241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968391, 37.884682, 24.142990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735321, 37.586685, 24.013084>,  <37.595478, 37.407887, 23.935141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735321, 37.586685, 24.013084>,  <37.968391, 37.884682, 24.142990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735321, 37.586685, 24.013084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567945, -0.087431, -0.818409,
		0.581316, -0.661315, 0.474061,
		-0.582675, -0.744995, -0.324766,
		37.560520, 37.363186, 23.915655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387157, 37.350266, 23.886650>,  <37.968391, 37.884682, 24.142990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387157, 37.350266, 23.886650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044010, 37.280632, 23.693258>,  <37.838123, 37.238850, 23.577223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044010, 37.280632, 23.693258>,  <38.387157, 37.350266, 23.886650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044010, 37.280632, 23.693258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480307, 0.062794, -0.874850,
		0.182661, -0.982726, 0.029748,
		-0.857869, -0.174089, -0.483480,
		37.786648, 37.228405, 23.548214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548954, 36.944611, 23.343184>,  <38.387157, 37.350266, 23.886650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548954, 36.944611, 23.343184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183350, 37.059677, 23.228760>,  <37.963985, 37.128716, 23.160105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183350, 37.059677, 23.228760>,  <38.548954, 36.944611, 23.343184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183350, 37.059677, 23.228760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281614, -0.057670, -0.957793,
		-0.292024, -0.955992, -0.028300,
		-0.914011, 0.287668, -0.286062,
		37.909145, 37.145977, 23.142941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270660, 36.482651, 22.791325>,  <38.548954, 36.944611, 23.343184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270660, 36.482651, 22.791325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079060, 36.831528, 22.751642>,  <37.964100, 37.040852, 22.727833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079060, 36.831528, 22.751642>,  <38.270660, 36.482651, 22.791325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079060, 36.831528, 22.751642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285386, 0.047857, -0.957217,
		-0.830128, -0.486820, -0.271835,
		-0.479002, 0.872190, -0.099204,
		37.935360, 37.093185, 22.721882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890488, 36.399975, 22.128613>,  <38.270660, 36.482651, 22.791325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890488, 36.399975, 22.128613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877312, 36.791172, 22.211023>,  <37.869408, 37.025890, 22.260469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877312, 36.791172, 22.211023>,  <37.890488, 36.399975, 22.128613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877312, 36.791172, 22.211023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262487, 0.207365, -0.942390,
		-0.964373, 0.023039, -0.263541,
		-0.032938, 0.977992, 0.206025,
		37.867432, 37.084568, 22.272831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444370, 36.684940, 21.578268>,  <37.890488, 36.399975, 22.128613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444370, 36.684940, 21.578268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672398, 36.971073, 21.739920>,  <37.809216, 37.142754, 21.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672398, 36.971073, 21.739920>,  <37.444370, 36.684940, 21.578268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672398, 36.971073, 21.739920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310766, 0.267601, -0.912039,
		-0.760555, 0.645516, -0.069749,
		0.570071, 0.715331, 0.404130,
		37.843418, 37.185673, 21.861158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382355, 37.153088, 21.086603>,  <37.444370, 36.684940, 21.578268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382355, 37.153088, 21.086603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714771, 37.257336, 21.283152>,  <37.914223, 37.319885, 21.401081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714771, 37.257336, 21.283152>,  <37.382355, 37.153088, 21.086603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714771, 37.257336, 21.283152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433133, 0.251005, -0.865674,
		-0.348950, 0.932241, 0.095711,
		0.831041, 0.260621, 0.491373,
		37.964085, 37.335522, 21.430563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591095, 37.707611, 20.715309>,  <37.382355, 37.153088, 21.086603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591095, 37.707611, 20.715309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903393, 37.601032, 20.941385>,  <38.090771, 37.537083, 21.077030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903393, 37.601032, 20.941385>,  <37.591095, 37.707611, 20.715309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903393, 37.601032, 20.941385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620692, 0.226544, -0.750612,
		0.071961, 0.936846, 0.342258,
		0.780745, -0.266451, 0.565191,
		38.137615, 37.521095, 21.110943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152054, 38.165398, 20.623648>,  <37.591095, 37.707611, 20.715309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152054, 38.165398, 20.623648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339806, 37.843304, 20.768579>,  <38.452457, 37.650047, 20.855537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339806, 37.843304, 20.768579>,  <38.152054, 38.165398, 20.623648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339806, 37.843304, 20.768579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754340, 0.152390, -0.638552,
		0.458967, 0.573045, 0.678947,
		0.469384, -0.805231, 0.362328,
		38.480621, 37.601734, 20.877277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912090, 38.331921, 20.761875>,  <38.152054, 38.165398, 20.623648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912090, 38.331921, 20.761875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904610, 37.933636, 20.725628>,  <38.900120, 37.694664, 20.703878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904610, 37.933636, 20.725628>,  <38.912090, 38.331921, 20.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904610, 37.933636, 20.725628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763020, 0.044356, -0.644851,
		0.646104, -0.081204, 0.758917,
		-0.018702, -0.995710, -0.090620,
		38.898998, 37.634922, 20.698442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582222, 38.125168, 20.824301>,  <38.912090, 38.331921, 20.761875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582222, 38.125168, 20.824301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430637, 37.802158, 20.643505>,  <39.339687, 37.608353, 20.535028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430637, 37.802158, 20.643505>,  <39.582222, 38.125168, 20.824301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430637, 37.802158, 20.643505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788923, -0.026609, -0.613916,
		0.483725, -0.589234, 0.647158,
		-0.378960, -0.807524, -0.451989,
		39.316948, 37.559902, 20.507908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165260, 37.694611, 20.707909>,  <39.582222, 38.125168, 20.824301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165260, 37.694611, 20.707909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883736, 37.576286, 20.449562>,  <39.714821, 37.505291, 20.294554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883736, 37.576286, 20.449562>,  <40.165260, 37.694611, 20.707909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883736, 37.576286, 20.449562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671755, 0.018585, -0.740541,
		0.231062, -0.955067, 0.185631,
		-0.703815, -0.295809, -0.645865,
		39.672592, 37.487545, 20.255802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509548, 37.189770, 20.414471>,  <40.165260, 37.694611, 20.707909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509548, 37.189770, 20.414471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206909, 37.311127, 20.182775>,  <40.025326, 37.383942, 20.043758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206909, 37.311127, 20.182775>,  <40.509548, 37.189770, 20.414471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206909, 37.311127, 20.182775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635922, 0.135198, -0.759819,
		-0.152211, -0.943226, -0.295224,
		-0.756595, 0.303392, -0.579239,
		39.979931, 37.402145, 20.009005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616222, 36.753471, 19.854359>,  <40.509548, 37.189770, 20.414471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616222, 36.753471, 19.854359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434608, 37.086094, 19.726377>,  <40.325642, 37.285667, 19.649588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434608, 37.086094, 19.726377>,  <40.616222, 36.753471, 19.854359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434608, 37.086094, 19.726377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739969, 0.151907, -0.655263,
		-0.496283, -0.534269, -0.684295,
		-0.454036, 0.831553, -0.319954,
		40.298397, 37.335560, 19.630392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624893, 36.772278, 19.106606>,  <40.616222, 36.753471, 19.854359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624893, 36.772278, 19.106606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586872, 37.159679, 19.198656>,  <40.564060, 37.392120, 19.253887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586872, 37.159679, 19.198656>,  <40.624893, 36.772278, 19.106606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586872, 37.159679, 19.198656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820633, 0.207096, -0.532610,
		-0.563495, 0.138223, -0.814474,
		-0.095055, 0.968507, 0.230128,
		40.558357, 37.450230, 19.267694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053486, 37.078579, 18.577198>,  <40.624893, 36.772278, 19.106606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053486, 37.078579, 18.577198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022430, 37.410603, 18.798096>,  <41.003796, 37.609818, 18.930635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022430, 37.410603, 18.798096>,  <41.053486, 37.078579, 18.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022430, 37.410603, 18.798096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718872, 0.430412, -0.545866,
		-0.690793, 0.354613, -0.630122,
		-0.077641, 0.830058, 0.552247,
		40.999138, 37.659618, 18.963770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052555, 37.643265, 18.134056>,  <41.053486, 37.078579, 18.577198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052555, 37.643265, 18.134056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157604, 37.777676, 18.495855>,  <41.220634, 37.858322, 18.712934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157604, 37.777676, 18.495855>,  <41.052555, 37.643265, 18.134056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157604, 37.777676, 18.495855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835461, 0.389790, -0.387386,
		-0.482737, 0.857408, -0.178371,
		0.262621, 0.336028, 0.904497,
		41.236389, 37.878483, 18.767204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116745, 38.390156, 18.047976>,  <41.052555, 37.643265, 18.134056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116745, 38.390156, 18.047976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340298, 38.227211, 18.336893>,  <41.474430, 38.129444, 18.510244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340298, 38.227211, 18.336893>,  <41.116745, 38.390156, 18.047976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340298, 38.227211, 18.336893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787479, 0.533674, -0.308333,
		-0.259865, 0.741112, 0.619050,
		0.558880, -0.407364, 0.722293,
		41.507961, 38.105003, 18.553581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359440, 38.868591, 18.378428>,  <41.116745, 38.390156, 18.047976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359440, 38.868591, 18.378428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609585, 38.586651, 18.512363>,  <41.759670, 38.417488, 18.592726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609585, 38.586651, 18.512363>,  <41.359440, 38.868591, 18.378428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609585, 38.586651, 18.512363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779649, 0.582382, -0.230169,
		-0.032771, 0.404996, 0.913731,
		0.625358, -0.704847, 0.334840,
		41.797192, 38.375198, 18.612816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846287, 39.225651, 18.698063>,  <41.359440, 38.868591, 18.378428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846287, 39.225651, 18.698063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019630, 38.875412, 18.612711>,  <42.123638, 38.665268, 18.561501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019630, 38.875412, 18.612711>,  <41.846287, 39.225651, 18.698063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019630, 38.875412, 18.612711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823484, 0.480916, -0.300990,
		0.366163, -0.045276, 0.929449,
		0.433359, -0.875597, -0.213377,
		42.149639, 38.612732, 18.548698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441032, 39.010605, 19.170746>,  <41.846287, 39.225651, 18.698063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441032, 39.010605, 19.170746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476357, 38.839115, 18.811102>,  <42.497551, 38.736221, 18.595316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476357, 38.839115, 18.811102>,  <42.441032, 39.010605, 19.170746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476357, 38.839115, 18.811102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799713, 0.568651, -0.192601,
		0.593852, -0.702019, 0.393077,
		0.088314, -0.428725, -0.899108,
		42.502850, 38.710499, 18.541370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210724, 38.975517, 19.079119>,  <42.441032, 39.010605, 19.170746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210724, 38.975517, 19.079119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056835, 38.902073, 18.717283>,  <42.964504, 38.858006, 18.500183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056835, 38.902073, 18.717283>,  <43.210724, 38.975517, 19.079119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056835, 38.902073, 18.717283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786480, 0.447777, -0.425376,
		0.483157, -0.875090, -0.027861,
		-0.384718, -0.183612, -0.904588,
		42.941422, 38.846989, 18.445908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705078, 38.638695, 18.759794>,  <43.210724, 38.975517, 19.079119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705078, 38.638695, 18.759794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480301, 38.767109, 18.454861>,  <43.345436, 38.844158, 18.271900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480301, 38.767109, 18.454861>,  <43.705078, 38.638695, 18.759794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480301, 38.767109, 18.454861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805081, 0.423855, -0.414959,
		0.189902, -0.846925, -0.496644,
		-0.561944, 0.321037, -0.762334,
		43.311718, 38.863419, 18.226160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054718, 38.366650, 18.071354>,  <43.705078, 38.638695, 18.759794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054718, 38.366650, 18.071354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848301, 38.693386, 17.968231>,  <43.724449, 38.889427, 17.906357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848301, 38.693386, 17.968231>,  <44.054718, 38.366650, 18.071354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848301, 38.693386, 17.968231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837246, 0.417460, -0.353194,
		-0.180881, -0.398110, -0.899328,
		-0.516044, 0.816844, -0.257806,
		43.693489, 38.938438, 17.890890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173786, 38.542976, 17.379557>,  <44.054718, 38.366650, 18.071354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173786, 38.542976, 17.379557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039864, 38.891590, 17.522846>,  <43.959511, 39.100758, 17.608820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039864, 38.891590, 17.522846>,  <44.173786, 38.542976, 17.379557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039864, 38.891590, 17.522846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788077, 0.467398, -0.400592,
		-0.516565, 0.148189, -0.843327,
		-0.334805, 0.871539, 0.358226,
		43.939423, 39.153053, 17.630314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212555, 39.050755, 16.844728>,  <44.173786, 38.542976, 17.379557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212555, 39.050755, 16.844728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221924, 39.275124, 17.175743>,  <44.227543, 39.409744, 17.374352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221924, 39.275124, 17.175743>,  <44.212555, 39.050755, 16.844728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221924, 39.275124, 17.175743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671984, 0.604043, -0.428450,
		-0.740195, 0.566126, -0.362784,
		0.023420, 0.560921, 0.827538,
		44.228951, 39.443401, 17.424004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158039, 39.740410, 16.669411>,  <44.212555, 39.050755, 16.844728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158039, 39.740410, 16.669411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378876, 39.715107, 17.001963>,  <44.511379, 39.699924, 17.201494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378876, 39.715107, 17.001963>,  <44.158039, 39.740410, 16.669411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378876, 39.715107, 17.001963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736542, 0.504318, -0.450743,
		-0.390766, 0.861198, 0.325025,
		0.552095, -0.063259, 0.831378,
		44.544502, 39.696129, 17.251375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507317, 40.347824, 16.734146>,  <44.158039, 39.740410, 16.669411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507317, 40.347824, 16.734146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693516, 40.096172, 16.983147>,  <44.805233, 39.945183, 17.132547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693516, 40.096172, 16.983147>,  <44.507317, 40.347824, 16.734146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693516, 40.096172, 16.983147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884529, 0.354846, -0.302809,
		-0.030387, 0.691578, 0.721662,
		0.465495, -0.629129, 0.622504,
		44.833164, 39.907433, 17.169897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360413, 41.041409, 16.880291>,  <44.507317, 40.347824, 16.734146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360413, 41.041409, 16.880291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628166, 41.307579, 17.012432>,  <44.788818, 41.467281, 17.091717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628166, 41.307579, 17.012432>,  <44.360413, 41.041409, 16.880291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628166, 41.307579, 17.012432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605426, -0.230893, -0.761675,
		-0.430558, 0.709861, -0.557420,
		0.669387, 0.665422, 0.330355,
		44.828983, 41.507206, 17.111538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442596, 41.511494, 16.323509>,  <44.360413, 41.041409, 16.880291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442596, 41.511494, 16.323509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770878, 41.544506, 16.549656>,  <44.967846, 41.564312, 16.685345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770878, 41.544506, 16.549656>,  <44.442596, 41.511494, 16.323509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770878, 41.544506, 16.549656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560506, -0.308242, -0.768648,
		0.110836, 0.947721, -0.299231,
		0.820700, 0.082527, 0.565368,
		45.017086, 41.569263, 16.719267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830986, 41.887733, 15.899172>,  <44.442596, 41.511494, 16.323509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830986, 41.887733, 15.899172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066143, 41.676510, 16.144297>,  <45.207237, 41.549778, 16.291372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066143, 41.676510, 16.144297>,  <44.830986, 41.887733, 15.899172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066143, 41.676510, 16.144297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489257, -0.371183, -0.789209,
		0.644212, 0.763793, 0.040139,
		0.587893, -0.528056, 0.612812,
		45.242512, 41.518093, 16.328140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106960, 41.105568, 15.870779>,  <44.830986, 41.887733, 15.899172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106960, 41.105568, 15.870779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494690, 41.193665, 15.914439>,  <45.727325, 41.246521, 15.940635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494690, 41.193665, 15.914439>,  <45.106960, 41.105568, 15.870779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494690, 41.193665, 15.914439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184094, 0.356227, 0.916085,
		0.162876, -0.908073, 0.385842,
		0.969319, 0.220239, 0.109150,
		45.785484, 41.259735, 15.947184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430790, 40.789837, 16.500683>,  <45.106960, 41.105568, 15.870779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430790, 40.789837, 16.500683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617882, 41.129253, 16.401718>,  <45.730137, 41.332901, 16.342340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617882, 41.129253, 16.401718>,  <45.430790, 40.789837, 16.500683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617882, 41.129253, 16.401718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223024, 0.384163, 0.895924,
		0.855270, -0.363874, 0.368929,
		0.467732, 0.848537, -0.247410,
		45.758202, 41.383816, 16.327496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856262, 40.949188, 17.203999>,  <45.430790, 40.789837, 16.500683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856262, 40.949188, 17.203999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750175, 41.238266, 16.948698>,  <45.686523, 41.411713, 16.795517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750175, 41.238266, 16.948698>,  <45.856262, 40.949188, 17.203999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750175, 41.238266, 16.948698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486723, 0.471076, 0.735655,
		0.832321, 0.505763, 0.226814,
		-0.265221, 0.722697, -0.638253,
		45.670609, 41.455074, 16.757221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056072, 41.730160, 17.465921>,  <45.856262, 40.949188, 17.203999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056072, 41.730160, 17.465921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739132, 41.726025, 17.221931>,  <45.548969, 41.723545, 17.075537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739132, 41.726025, 17.221931>,  <46.056072, 41.730160, 17.465921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739132, 41.726025, 17.221931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556284, 0.422715, 0.715444,
		0.250453, 0.906204, -0.340688,
		-0.792352, -0.010334, -0.609977,
		45.501427, 41.722923, 17.038939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725632, 42.351070, 17.568739>,  <46.056072, 41.730160, 17.465921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725632, 42.351070, 17.568739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435246, 42.121574, 17.417063>,  <45.261013, 41.983875, 17.326057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435246, 42.121574, 17.417063>,  <45.725632, 42.351070, 17.568739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435246, 42.121574, 17.417063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663126, 0.437832, 0.607097,
		-0.182296, 0.692186, -0.698317,
		-0.725970, -0.573744, -0.379192,
		45.217453, 41.949451, 17.303305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130894, 42.786282, 17.741819>,  <45.725632, 42.351070, 17.568739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130894, 42.786282, 17.741819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978085, 42.422272, 17.677416>,  <44.886398, 42.203865, 17.638773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978085, 42.422272, 17.677416>,  <45.130894, 42.786282, 17.741819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978085, 42.422272, 17.677416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718544, 0.182919, 0.670995,
		-0.581168, 0.372025, -0.723769,
		-0.382018, -0.910021, -0.161009,
		44.863480, 42.149265, 17.629112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434853, 42.927231, 17.551388>,  <45.130894, 42.786282, 17.741819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434853, 42.927231, 17.551388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440071, 42.548096, 17.678785>,  <44.443203, 42.320614, 17.755224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440071, 42.548096, 17.678785>,  <44.434853, 42.927231, 17.551388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440071, 42.548096, 17.678785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737796, 0.205867, 0.642865,
		-0.674898, -0.243369, -0.696624,
		0.013042, -0.947835, 0.318496,
		44.443985, 42.263744, 17.774334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748020, 42.595188, 17.554445>,  <44.434853, 42.927231, 17.551388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748020, 42.595188, 17.554445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947319, 42.362331, 17.811462>,  <44.066898, 42.222618, 17.965673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947319, 42.362331, 17.811462>,  <43.748020, 42.595188, 17.554445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947319, 42.362331, 17.811462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776178, 0.030782, 0.629763,
		-0.386387, -0.812507, -0.436505,
		0.498250, -0.582138, 0.642544,
		44.096794, 42.187691, 18.004225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195526, 42.212997, 17.693254>,  <43.748020, 42.595188, 17.554445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195526, 42.212997, 17.693254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473801, 42.151176, 17.973864>,  <43.640766, 42.114086, 18.142229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473801, 42.151176, 17.973864>,  <43.195526, 42.212997, 17.693254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473801, 42.151176, 17.973864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718231, -0.166894, 0.675493,
		0.012682, -0.973787, -0.227108,
		0.695689, -0.154550, 0.701521,
		43.682507, 42.104813, 18.184320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095493, 41.505054, 18.002611>,  <43.195526, 42.212997, 17.693254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095493, 41.505054, 18.002611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295437, 41.738197, 18.258865>,  <43.415401, 41.878082, 18.412619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295437, 41.738197, 18.258865>,  <43.095493, 41.505054, 18.002611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295437, 41.738197, 18.258865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673370, -0.203666, 0.710699,
		0.544714, -0.786635, 0.290676,
		0.499860, 0.582861, 0.640636,
		43.445396, 41.913055, 18.451056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980423, 41.156818, 18.618315>,  <43.095493, 41.505054, 18.002611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980423, 41.156818, 18.618315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094513, 41.523544, 18.730099>,  <43.162968, 41.743580, 18.797169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094513, 41.523544, 18.730099>,  <42.980423, 41.156818, 18.618315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094513, 41.523544, 18.730099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691346, -0.005148, 0.722506,
		0.663841, -0.399282, 0.632367,
		0.285228, 0.916813, 0.279459,
		43.180080, 41.798588, 18.813936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174038, 41.135223, 19.322866>,  <42.980423, 41.156818, 18.618315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174038, 41.135223, 19.322866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120380, 41.530846, 19.298279>,  <43.088184, 41.768219, 19.283527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120380, 41.530846, 19.298279>,  <43.174038, 41.135223, 19.322866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120380, 41.530846, 19.298279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475406, -0.009808, 0.879712,
		0.869479, 0.147233, 0.471518,
		-0.134147, 0.989053, -0.061467,
		43.080135, 41.827560, 19.279839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134239, 41.367779, 20.039301>,  <43.174038, 41.135223, 19.322866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134239, 41.367779, 20.039301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969475, 41.664635, 19.827810>,  <42.870617, 41.842751, 19.700916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969475, 41.664635, 19.827810>,  <43.134239, 41.367779, 20.039301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969475, 41.664635, 19.827810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676914, 0.139217, 0.722776,
		0.610010, 0.655624, 0.445021,
		-0.411915, 0.742142, -0.528726,
		42.845901, 41.887276, 19.669193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022030, 41.995201, 20.539396>,  <43.134239, 41.367779, 20.039301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022030, 41.995201, 20.539396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772011, 42.024387, 20.228529>,  <42.621998, 42.041901, 20.042009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772011, 42.024387, 20.228529>,  <43.022030, 41.995201, 20.539396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772011, 42.024387, 20.228529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745088, 0.241052, 0.621882,
		0.232712, 0.967766, -0.096304,
		-0.625051, 0.072964, -0.777166,
		42.584496, 42.046276, 19.995378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516533, 42.433414, 20.791206>,  <43.022030, 41.995201, 20.539396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516533, 42.433414, 20.791206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327595, 42.278591, 20.474455>,  <42.214230, 42.185696, 20.284405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327595, 42.278591, 20.474455>,  <42.516533, 42.433414, 20.791206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327595, 42.278591, 20.474455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771860, -0.252150, 0.583655,
		-0.425581, 0.886908, -0.179653,
		-0.472349, -0.387059, -0.791879,
		42.185890, 42.162472, 20.236891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911633, 42.691563, 20.834253>,  <42.516533, 42.433414, 20.791206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911633, 42.691563, 20.834253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835640, 42.407772, 20.562796>,  <41.790047, 42.237499, 20.399921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835640, 42.407772, 20.562796>,  <41.911633, 42.691563, 20.834253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835640, 42.407772, 20.562796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628275, -0.443312, 0.639331,
		-0.754439, 0.547834, -0.361525,
		-0.189979, -0.709473, -0.678643,
		41.778645, 42.194931, 20.359203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064503, 42.687607, 20.651968>,  <41.911633, 42.691563, 20.834253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064503, 42.687607, 20.651968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235764, 42.336899, 20.564369>,  <41.338520, 42.126472, 20.511810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235764, 42.336899, 20.564369>,  <41.064503, 42.687607, 20.651968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235764, 42.336899, 20.564369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765286, -0.480651, 0.428150,
		-0.480651, -0.015716, -0.876771,
		-0.428150, 0.876771, 0.218998,
		41.364208, 42.073868, 20.498671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543484, 42.305599, 20.242331>,  <41.064503, 42.687607, 20.651968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543484, 42.305599, 20.242331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777988, 42.013695, 20.383041>,  <40.918694, 41.838554, 20.467468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777988, 42.013695, 20.383041>,  <40.543484, 42.305599, 20.242331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777988, 42.013695, 20.383041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785901, -0.406942, 0.465573,
		-0.196603, -0.549410, -0.812093,
		0.586265, -0.729758, 0.351776,
		40.953869, 41.794769, 20.488575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123249, 41.801929, 20.277905>,  <40.543484, 42.305599, 20.242331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123249, 41.801929, 20.277905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417023, 41.665024, 20.512327>,  <40.593288, 41.582882, 20.652981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417023, 41.665024, 20.512327>,  <40.123249, 41.801929, 20.277905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417023, 41.665024, 20.512327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674717, -0.461393, 0.576084,
		0.073232, -0.818519, -0.569792,
		0.734434, -0.342261, 0.586058,
		40.637352, 41.562344, 20.688145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107239, 41.004536, 20.377504>,  <40.123249, 41.801929, 20.277905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107239, 41.004536, 20.377504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271584, 41.167267, 20.703863>,  <40.370190, 41.264904, 20.899679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271584, 41.167267, 20.703863>,  <40.107239, 41.004536, 20.377504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271584, 41.167267, 20.703863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576286, -0.577572, 0.578191,
		0.706462, -0.707745, -0.002852,
		0.410859, 0.406826, 0.815896,
		40.394840, 41.289314, 20.948631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138187, 40.386784, 20.871618>,  <40.107239, 41.004536, 20.377504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138187, 40.386784, 20.871618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208561, 40.707695, 21.099791>,  <40.250786, 40.900242, 21.236694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208561, 40.707695, 21.099791>,  <40.138187, 40.386784, 20.871618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208561, 40.707695, 21.099791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668269, -0.328150, 0.667633,
		0.722816, -0.498663, 0.478406,
		0.175935, 0.802280, 0.570433,
		40.261341, 40.948380, 21.270920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130901, 40.075306, 21.564850>,  <40.138187, 40.386784, 20.871618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130901, 40.075306, 21.564850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075111, 40.470448, 21.592224>,  <40.041637, 40.707535, 21.608648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075111, 40.470448, 21.592224>,  <40.130901, 40.075306, 21.564850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075111, 40.470448, 21.592224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653490, -0.143750, 0.743160,
		0.743975, 0.058929, 0.665604,
		-0.139474, 0.987858, 0.068438,
		40.033268, 40.766804, 21.612755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280655, 40.314148, 22.279091>,  <40.130901, 40.075306, 21.564850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280655, 40.314148, 22.279091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055676, 40.602158, 22.116505>,  <39.920689, 40.774963, 22.018953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055676, 40.602158, 22.116505>,  <40.280655, 40.314148, 22.279091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055676, 40.602158, 22.116505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467835, 0.128199, 0.874469,
		0.681747, 0.682005, 0.264746,
		-0.562452, 0.720024, -0.406465,
		39.886940, 40.818165, 21.994566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415478, 41.020657, 22.624542>,  <40.280655, 40.314148, 22.279091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415478, 41.020657, 22.624542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052517, 41.015686, 22.456507>,  <39.834740, 41.012703, 22.355684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052517, 41.015686, 22.456507>,  <40.415478, 41.020657, 22.624542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052517, 41.015686, 22.456507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420130, 0.053009, 0.905915,
		0.011011, 0.998516, -0.053321,
		-0.907397, -0.012427, -0.420090,
		39.780296, 41.011959, 22.330481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062263, 41.153645, 23.178680>,  <40.415478, 41.020657, 22.624542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062263, 41.153645, 23.178680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744877, 41.094395, 22.942554>,  <39.554447, 41.058846, 22.800879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744877, 41.094395, 22.942554>,  <40.062263, 41.153645, 23.178680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744877, 41.094395, 22.942554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565233, -0.180289, 0.804989,
		-0.225668, 0.972396, 0.059328,
		-0.793465, -0.148126, -0.590316,
		39.506836, 41.049957, 22.765459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535294, 41.433231, 23.560589>,  <40.062263, 41.153645, 23.178680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535294, 41.433231, 23.560589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352863, 41.196598, 23.294651>,  <39.243404, 41.054619, 23.135088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352863, 41.196598, 23.294651>,  <39.535294, 41.433231, 23.560589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352863, 41.196598, 23.294651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731072, -0.176946, 0.658956,
		-0.507470, 0.786586, -0.351790,
		-0.456078, -0.591584, -0.664846,
		39.216042, 41.019123, 23.095198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894852, 41.647308, 23.508440>,  <39.535294, 41.433231, 23.560589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894852, 41.647308, 23.508440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875969, 41.268486, 23.381413>,  <38.864639, 41.041191, 23.305197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875969, 41.268486, 23.381413>,  <38.894852, 41.647308, 23.508440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875969, 41.268486, 23.381413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771073, -0.167555, 0.614306,
		-0.634995, 0.273867, -0.722342,
		-0.047206, -0.947060, -0.317568,
		38.861809, 40.984367, 23.286142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208847, 41.625053, 23.366863>,  <38.894852, 41.647308, 23.508440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208847, 41.625053, 23.366863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344490, 41.249371, 23.388395>,  <38.425877, 41.023960, 23.401314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344490, 41.249371, 23.388395>,  <38.208847, 41.625053, 23.366863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344490, 41.249371, 23.388395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755430, -0.237756, 0.610572,
		-0.560656, -0.247713, -0.790129,
		0.339104, -0.939208, 0.053831,
		38.446220, 40.967609, 23.404545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642612, 41.156693, 23.197672>,  <38.208847, 41.625053, 23.366863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642612, 41.156693, 23.197672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903370, 40.954742, 23.423992>,  <38.059826, 40.833572, 23.559784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903370, 40.954742, 23.423992>,  <37.642612, 41.156693, 23.197672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903370, 40.954742, 23.423992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747229, -0.300601, 0.592695,
		-0.129157, -0.809159, -0.573219,
		0.651895, -0.504877, 0.565802,
		38.098938, 40.803280, 23.593733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541611, 40.436043, 23.276716>,  <37.642612, 41.156693, 23.197672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541611, 40.436043, 23.276716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735882, 40.532604, 23.612774>,  <37.852444, 40.590542, 23.814409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735882, 40.532604, 23.612774>,  <37.541611, 40.436043, 23.276716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735882, 40.532604, 23.612774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791911, -0.285447, 0.539812,
		0.370130, -0.927493, 0.052535,
		0.485676, 0.241403, 0.840145,
		37.881584, 40.605026, 23.864817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117157, 40.060932, 23.709185>,  <37.541611, 40.436043, 23.276716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117157, 40.060932, 23.709185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364819, 40.237335, 23.969080>,  <37.513416, 40.343178, 24.125017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364819, 40.237335, 23.969080>,  <37.117157, 40.060932, 23.709185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364819, 40.237335, 23.969080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660462, -0.155117, 0.734662,
		0.424775, -0.883998, 0.195226,
		0.619157, 0.441005, 0.649737,
		37.550568, 40.369637, 24.164001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019917, 39.697598, 24.345501>,  <37.117157, 40.060932, 23.709185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019917, 39.697598, 24.345501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183811, 40.042938, 24.463310>,  <37.282146, 40.250141, 24.533995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183811, 40.042938, 24.463310>,  <37.019917, 39.697598, 24.345501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183811, 40.042938, 24.463310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617200, 0.024639, 0.786420,
		0.671699, -0.504003, 0.542956,
		0.409737, 0.863350, 0.294521,
		37.306732, 40.301945, 24.551666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236809, 39.645390, 25.075686>,  <37.019917, 39.697598, 24.345501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236809, 39.645390, 25.075686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203163, 40.037399, 25.003597>,  <37.182976, 40.272606, 24.960344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203163, 40.037399, 25.003597>,  <37.236809, 39.645390, 25.075686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203163, 40.037399, 25.003597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556982, 0.103730, 0.824021,
		0.826254, 0.169690, 0.537131,
		-0.084112, 0.980023, -0.180222,
		37.177929, 40.331406, 24.949532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468163, 39.945827, 25.696386>,  <37.236809, 39.645390, 25.075686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468163, 39.945827, 25.696386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256653, 40.227589, 25.506981>,  <37.129745, 40.396645, 25.393337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256653, 40.227589, 25.506981>,  <37.468163, 39.945827, 25.696386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256653, 40.227589, 25.506981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616119, 0.065158, 0.784953,
		0.583775, 0.706805, 0.399542,
		-0.528775, 0.704402, -0.473513,
		37.098019, 40.438908, 25.364927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391148, 40.385426, 26.191217>,  <37.468163, 39.945827, 25.696386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391148, 40.385426, 26.191217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134254, 40.509830, 25.910988>,  <36.980118, 40.584473, 25.742849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134254, 40.509830, 25.910988>,  <37.391148, 40.385426, 26.191217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134254, 40.509830, 25.910988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647882, 0.268165, 0.712977,
		0.409612, 0.911790, 0.029272,
		-0.642236, 0.311009, -0.700576,
		36.941586, 40.603134, 25.700815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193775, 41.096832, 26.281513>,  <37.391148, 40.385426, 26.191217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193775, 41.096832, 26.281513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897987, 40.888367, 26.111069>,  <36.720516, 40.763287, 26.008802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897987, 40.888367, 26.111069>,  <37.193775, 41.096832, 26.281513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897987, 40.888367, 26.111069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557701, 0.119755, 0.821358,
		-0.377037, 0.845010, -0.379211,
		-0.739468, -0.521168, -0.426111,
		36.676147, 40.732018, 25.983236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561516, 41.404488, 26.507635>,  <37.193775, 41.096832, 26.281513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561516, 41.404488, 26.507635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416389, 41.063110, 26.357969>,  <36.329311, 40.858284, 26.268169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416389, 41.063110, 26.357969>,  <36.561516, 41.404488, 26.507635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416389, 41.063110, 26.357969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687545, -0.025860, 0.725681,
		-0.629002, 0.520547, -0.577397,
		-0.362819, -0.853441, -0.374166,
		36.307545, 40.807079, 26.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950550, 41.440773, 26.692095>,  <36.561516, 41.404488, 26.507635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950550, 41.440773, 26.692095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972851, 41.056000, 26.585079>,  <35.986229, 40.825134, 26.520870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972851, 41.056000, 26.585079>,  <35.950550, 41.440773, 26.692095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972851, 41.056000, 26.585079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605962, -0.245559, 0.756644,
		-0.793538, 0.119937, -0.596585,
		0.055747, -0.961934, -0.267537,
		35.989574, 40.767418, 26.504818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273735, 41.174557, 26.463593>,  <35.950550, 41.440773, 26.692095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273735, 41.174557, 26.463593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505829, 40.876175, 26.594366>,  <35.645084, 40.697147, 26.672831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505829, 40.876175, 26.594366>,  <35.273735, 41.174557, 26.463593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505829, 40.876175, 26.594366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631954, -0.159131, 0.758493,
		-0.513773, -0.646711, -0.563740,
		0.580234, -0.745951, 0.326934,
		35.679901, 40.652390, 26.692446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834743, 40.650524, 26.696472>,  <35.273735, 41.174557, 26.463593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834743, 40.650524, 26.696472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192604, 40.582134, 26.861570>,  <35.407322, 40.541100, 26.960629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192604, 40.582134, 26.861570>,  <34.834743, 40.650524, 26.696472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192604, 40.582134, 26.861570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427711, -0.060919, 0.901860,
		-0.129046, -0.983391, -0.127627,
		0.894657, -0.170969, 0.412747,
		35.461002, 40.530842, 26.985394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721592, 40.051590, 27.007036>,  <34.834743, 40.650524, 26.696472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721592, 40.051590, 27.007036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048149, 40.193207, 27.189531>,  <35.244083, 40.278175, 27.299028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048149, 40.193207, 27.189531>,  <34.721592, 40.051590, 27.007036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048149, 40.193207, 27.189531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455206, -0.091628, 0.885659,
		0.355363, -0.930731, 0.086356,
		0.816397, 0.354040, 0.456235,
		35.293068, 40.299419, 27.326403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911488, 39.530170, 27.386049>,  <34.721592, 40.051590, 27.007036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911488, 39.530170, 27.386049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073566, 39.845783, 27.570766>,  <35.170815, 40.035149, 27.681597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073566, 39.845783, 27.570766>,  <34.911488, 39.530170, 27.386049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073566, 39.845783, 27.570766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473075, -0.251276, 0.844429,
		0.782316, -0.560620, 0.271454,
		0.405194, 0.789028, 0.461793,
		35.195126, 40.082493, 27.709305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005676, 39.272068, 28.030396>,  <34.911488, 39.530170, 27.386049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005676, 39.272068, 28.030396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048481, 39.665550, 28.088186>,  <35.074165, 39.901638, 28.122860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048481, 39.665550, 28.088186>,  <35.005676, 39.272068, 28.030396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048481, 39.665550, 28.088186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433190, -0.084664, 0.897317,
		0.894927, -0.158613, 0.417071,
		0.107015, 0.983704, 0.144477,
		35.080585, 39.960663, 28.131529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513062, 39.346153, 28.518757>,  <35.005676, 39.272068, 28.030396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513062, 39.346153, 28.518757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287411, 39.676243, 28.529802>,  <35.152020, 39.874298, 28.536428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287411, 39.676243, 28.529802>,  <35.513062, 39.346153, 28.518757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287411, 39.676243, 28.529802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210121, -0.175821, 0.961736,
		0.798503, 0.536742, 0.272583,
		-0.564130, 0.825224, 0.027613,
		35.118172, 39.923809, 28.538086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826534, 39.488853, 29.156887>,  <35.513062, 39.346153, 28.518757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826534, 39.488853, 29.156887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117870, 39.387085, 29.411379>,  <36.292671, 39.326023, 29.564074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117870, 39.387085, 29.411379>,  <35.826534, 39.488853, 29.156887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117870, 39.387085, 29.411379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684839, 0.300880, -0.663677,
		-0.022576, 0.919099, 0.393380,
		0.728345, -0.254419, 0.636227,
		36.336372, 39.310760, 29.602247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259506, 40.048332, 29.178967>,  <35.826534, 39.488853, 29.156887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259506, 40.048332, 29.178967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478851, 39.730713, 29.283875>,  <36.610458, 39.540142, 29.346819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478851, 39.730713, 29.283875>,  <36.259506, 40.048332, 29.178967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478851, 39.730713, 29.283875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663817, 0.222596, -0.714002,
		0.508571, 0.565631, 0.649166,
		0.548364, -0.794048, 0.262269,
		36.643360, 39.492500, 29.362555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819878, 40.298828, 29.088541>,  <36.259506, 40.048332, 29.178967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819878, 40.298828, 29.088541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913921, 39.910069, 29.093254>,  <36.970348, 39.676811, 29.096081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913921, 39.910069, 29.093254>,  <36.819878, 40.298828, 29.088541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913921, 39.910069, 29.093254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686865, 0.157555, -0.709502,
		0.687708, 0.174901, 0.704605,
		0.235107, -0.971898, 0.011781,
		36.984455, 39.618500, 29.096788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460186, 40.327377, 29.199770>,  <36.819878, 40.298828, 29.088541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460186, 40.327377, 29.199770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406670, 39.964344, 29.040571>,  <37.374561, 39.746525, 28.945051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406670, 39.964344, 29.040571>,  <37.460186, 40.327377, 29.199770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406670, 39.964344, 29.040571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730910, 0.180840, -0.658078,
		0.669232, -0.378942, 0.639165,
		-0.133787, -0.907579, -0.397996,
		37.366535, 39.692070, 28.921173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073978, 39.894318, 29.296015>,  <37.460186, 40.327377, 29.199770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073978, 39.894318, 29.296015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886074, 39.737476, 28.979639>,  <37.773331, 39.643372, 28.789814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886074, 39.737476, 28.979639>,  <38.073978, 39.894318, 29.296015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886074, 39.737476, 28.979639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844563, 0.061198, -0.531947,
		0.256982, -0.917883, 0.302408,
		-0.469759, -0.392104, -0.790937,
		37.745148, 39.619846, 28.742357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554905, 39.443996, 28.956764>,  <38.073978, 39.894318, 29.296015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554905, 39.443996, 28.956764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266682, 39.500454, 28.685213>,  <38.093746, 39.534328, 28.522284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266682, 39.500454, 28.685213>,  <38.554905, 39.443996, 28.956764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266682, 39.500454, 28.685213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691762, 0.079231, -0.717766,
		-0.047517, -0.986814, -0.154725,
		-0.720561, 0.141139, -0.678875,
		38.050514, 39.542797, 28.481550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872707, 39.163906, 28.367155>,  <38.554905, 39.443996, 28.956764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872707, 39.163906, 28.367155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593655, 39.408802, 28.218309>,  <38.426224, 39.555740, 28.129002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593655, 39.408802, 28.218309>,  <38.872707, 39.163906, 28.367155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593655, 39.408802, 28.218309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603753, 0.222748, -0.765419,
		-0.385736, -0.758644, -0.525040,
		-0.697632, 0.612244, -0.372112,
		38.384365, 39.592476, 28.106676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960186, 39.031662, 27.676308>,  <38.872707, 39.163906, 28.367155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960186, 39.031662, 27.676308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760178, 39.377876, 27.687817>,  <38.640171, 39.585606, 27.694721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760178, 39.377876, 27.687817>,  <38.960186, 39.031662, 27.676308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760178, 39.377876, 27.687817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585566, 0.362391, -0.725111,
		-0.638034, -0.345725, -0.688031,
		-0.500025, 0.865533, 0.028773,
		38.610168, 39.637535, 27.696449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687389, 39.143517, 26.991268>,  <38.960186, 39.031662, 27.676308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687389, 39.143517, 26.991268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721390, 39.495228, 27.178734>,  <38.741791, 39.706253, 27.291214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721390, 39.495228, 27.178734>,  <38.687389, 39.143517, 26.991268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721390, 39.495228, 27.178734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617708, 0.322565, -0.717209,
		-0.781800, 0.350463, -0.515717,
		0.085003, 0.879277, 0.468665,
		38.746891, 39.759010, 27.319334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657242, 39.661396, 26.483335>,  <38.687389, 39.143517, 26.991268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657242, 39.661396, 26.483335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860439, 39.821945, 26.788187>,  <38.982357, 39.918274, 26.971098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860439, 39.821945, 26.788187>,  <38.657242, 39.661396, 26.483335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860439, 39.821945, 26.788187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677144, 0.360766, -0.641345,
		-0.532369, 0.841871, -0.088520,
		0.507995, 0.401373, 0.762129,
		39.012836, 39.942356, 27.016827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860916, 40.313908, 26.236969>,  <38.657242, 39.661396, 26.483335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860916, 40.313908, 26.236969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115837, 40.249657, 26.538445>,  <39.268791, 40.211105, 26.719330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115837, 40.249657, 26.538445>,  <38.860916, 40.313908, 26.236969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115837, 40.249657, 26.538445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750074, 0.353606, -0.558884,
		-0.176737, 0.921500, 0.345835,
		0.637301, -0.160626, 0.753688,
		39.307026, 40.201469, 26.764551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207275, 40.961075, 26.340202>,  <38.860916, 40.313908, 26.236969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207275, 40.961075, 26.340202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452072, 40.701530, 26.521065>,  <39.598949, 40.545803, 26.629581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452072, 40.701530, 26.521065>,  <39.207275, 40.961075, 26.340202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452072, 40.701530, 26.521065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781499, 0.408435, -0.471636,
		0.121352, 0.641995, 0.757045,
		0.611991, -0.648863, 0.452154,
		39.635670, 40.506870, 26.656712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862381, 41.333748, 26.558990>,  <39.207275, 40.961075, 26.340202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862381, 41.333748, 26.558990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985130, 40.953354, 26.574282>,  <40.058781, 40.725117, 26.583456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985130, 40.953354, 26.574282>,  <39.862381, 41.333748, 26.558990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985130, 40.953354, 26.574282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874332, 0.265815, -0.406061,
		0.375995, 0.158035, 0.913046,
		0.306874, -0.950982, 0.038230,
		40.077194, 40.668060, 26.585751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582848, 41.367111, 26.900101>,  <39.862381, 41.333748, 26.558990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582848, 41.367111, 26.900101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533493, 41.039066, 26.676603>,  <40.503880, 40.842239, 26.542505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533493, 41.039066, 26.676603>,  <40.582848, 41.367111, 26.900101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533493, 41.039066, 26.676603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782972, 0.265479, -0.562562,
		0.609698, -0.506890, 0.609369,
		-0.123382, -0.820112, -0.558742,
		40.496479, 40.793034, 26.508980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251080, 41.230839, 26.819473>,  <40.582848, 41.367111, 26.900101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251080, 41.230839, 26.819473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055992, 41.026932, 26.535990>,  <40.938938, 40.904587, 26.365900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055992, 41.026932, 26.535990>,  <41.251080, 41.230839, 26.819473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055992, 41.026932, 26.535990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702603, 0.252624, -0.665229,
		0.518152, -0.822383, 0.234958,
		-0.487717, -0.509772, -0.708706,
		40.909676, 40.874001, 26.323378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755337, 40.741402, 26.544125>,  <41.251080, 41.230839, 26.819473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755337, 40.741402, 26.544125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479088, 40.767971, 26.256060>,  <41.313339, 40.783913, 26.083221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479088, 40.767971, 26.256060>,  <41.755337, 40.741402, 26.544125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479088, 40.767971, 26.256060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723219, 0.063070, -0.687732,
		-0.000260, -0.995796, -0.091595,
		-0.690618, 0.066422, -0.720163,
		41.271904, 40.787895, 26.040010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013557, 40.296574, 26.049524>,  <41.755337, 40.741402, 26.544125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013557, 40.296574, 26.049524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747814, 40.521141, 25.852165>,  <41.588367, 40.655880, 25.733749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747814, 40.521141, 25.852165>,  <42.013557, 40.296574, 26.049524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747814, 40.521141, 25.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670821, 0.156781, -0.724858,
		-0.329594, -0.812544, -0.480770,
		-0.664355, 0.561419, -0.493398,
		41.548508, 40.689568, 25.704145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099258, 40.102547, 25.417719>,  <42.013557, 40.296574, 26.049524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099258, 40.102547, 25.417719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900578, 40.445065, 25.361082>,  <41.781368, 40.650574, 25.327101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900578, 40.445065, 25.361082>,  <42.099258, 40.102547, 25.417719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900578, 40.445065, 25.361082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408704, 0.086848, -0.908526,
		-0.765666, -0.509139, -0.393107,
		-0.496707, 0.856291, -0.141590,
		41.751564, 40.701950, 25.318605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604897, 40.077972, 24.698259>,  <42.099258, 40.102547, 25.417719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604897, 40.077972, 24.698259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708233, 40.449894, 24.803116>,  <41.770237, 40.673046, 24.866030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708233, 40.449894, 24.803116>,  <41.604897, 40.077972, 24.698259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708233, 40.449894, 24.803116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385101, 0.149738, -0.910646,
		-0.885978, 0.336210, -0.319385,
		0.258344, 0.929807, 0.262139,
		41.785736, 40.728836, 24.881758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513046, 40.396080, 24.119177>,  <41.604897, 40.077972, 24.698259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513046, 40.396080, 24.119177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736893, 40.647224, 24.335554>,  <41.871201, 40.797913, 24.465380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736893, 40.647224, 24.335554>,  <41.513046, 40.396080, 24.119177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736893, 40.647224, 24.335554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498655, 0.266249, -0.824897,
		-0.661950, 0.731366, -0.164092,
		0.559612, 0.627866, 0.540943,
		41.904778, 40.835583, 24.497837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597328, 41.038067, 23.776047>,  <41.513046, 40.396080, 24.119177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597328, 41.038067, 23.776047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917503, 41.035877, 24.015804>,  <42.109608, 41.034565, 24.159658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917503, 41.035877, 24.015804>,  <41.597328, 41.038067, 23.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917503, 41.035877, 24.015804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590605, 0.178051, -0.787073,
		-0.102416, 0.984006, 0.145750,
		0.800436, -0.005472, 0.599394,
		42.157635, 41.034237, 24.195621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093887, 41.677433, 23.712383>,  <41.597328, 41.038067, 23.776047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093887, 41.677433, 23.712383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296597, 41.346237, 23.808392>,  <42.418224, 41.147518, 23.865995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296597, 41.346237, 23.808392>,  <42.093887, 41.677433, 23.712383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296597, 41.346237, 23.808392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542294, 0.089752, -0.835381,
		0.670146, 0.553513, 0.494498,
		0.506776, -0.827991, 0.240020,
		42.448631, 41.097839, 23.880398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721943, 41.828537, 23.530777>,  <42.093887, 41.677433, 23.712383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721943, 41.828537, 23.530777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712994, 41.428646, 23.533482>,  <42.707623, 41.188713, 23.535105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712994, 41.428646, 23.533482>,  <42.721943, 41.828537, 23.530777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712994, 41.428646, 23.533482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301418, -0.013192, -0.953401,
		0.953230, -0.019292, 0.301631,
		-0.022372, -0.999727, 0.006760,
		42.706284, 41.128727, 23.535509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329399, 41.691452, 23.256277>,  <42.721943, 41.828537, 23.530777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329399, 41.691452, 23.256277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094833, 41.370018, 23.215528>,  <42.954094, 41.177158, 23.191080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094833, 41.370018, 23.215528>,  <43.329399, 41.691452, 23.256277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094833, 41.370018, 23.215528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281799, -0.084484, -0.955747,
		0.759414, -0.589169, 0.275991,
		-0.586413, -0.803581, -0.101869,
		42.918911, 41.128944, 23.184967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693684, 41.340591, 22.812843>,  <43.329399, 41.691452, 23.256277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693684, 41.340591, 22.812843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346348, 41.143139, 22.793583>,  <43.137947, 41.024666, 22.782026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346348, 41.143139, 22.793583>,  <43.693684, 41.340591, 22.812843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346348, 41.143139, 22.793583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159052, -0.185189, -0.969746,
		0.469784, -0.849723, 0.239319,
		-0.868335, -0.493635, -0.048151,
		43.085846, 40.995049, 22.779137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968979, 40.779217, 22.541563>,  <43.693684, 41.340591, 22.812843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968979, 40.779217, 22.541563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574703, 40.763493, 22.475990>,  <43.338139, 40.754059, 22.436647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574703, 40.763493, 22.475990>,  <43.968979, 40.779217, 22.541563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574703, 40.763493, 22.475990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166973, -0.361546, -0.917281,
		-0.023207, -0.931525, 0.362936,
		-0.985688, -0.039313, -0.163930,
		43.278996, 40.751698, 22.426811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762768, 40.142841, 22.467781>,  <43.968979, 40.779217, 22.541563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762768, 40.142841, 22.467781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504738, 40.369350, 22.262564>,  <43.349922, 40.505257, 22.139433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504738, 40.369350, 22.262564>,  <43.762768, 40.142841, 22.467781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504738, 40.369350, 22.262564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284444, -0.445210, -0.849046,
		-0.709207, -0.693628, 0.126119,
		-0.645071, 0.566275, -0.513044,
		43.311218, 40.539234, 22.108650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587437, 39.648750, 21.988579>,  <43.762768, 40.142841, 22.467781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587437, 39.648750, 21.988579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488686, 40.004322, 21.834249>,  <43.429436, 40.217663, 21.741652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488686, 40.004322, 21.834249>,  <43.587437, 39.648750, 21.988579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488686, 40.004322, 21.834249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294893, -0.310345, -0.903728,
		-0.923086, -0.336888, -0.185521,
		-0.246880, 0.888928, -0.385821,
		43.414623, 40.271000, 21.718504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347202, 39.550148, 21.303551>,  <43.587437, 39.648750, 21.988579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347202, 39.550148, 21.303551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466766, 39.931667, 21.315634>,  <43.538506, 40.160580, 21.322884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466766, 39.931667, 21.315634>,  <43.347202, 39.550148, 21.303551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466766, 39.931667, 21.315634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460136, -0.116327, -0.880195,
		-0.836017, 0.277002, -0.473651,
		0.298914, 0.953802, 0.030208,
		43.556442, 40.217808, 21.324696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070702, 39.939274, 20.619165>,  <43.347202, 39.550148, 21.303551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070702, 39.939274, 20.619165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394283, 40.109211, 20.781696>,  <43.588432, 40.211174, 20.879215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394283, 40.109211, 20.781696>,  <43.070702, 39.939274, 20.619165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394283, 40.109211, 20.781696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534673, -0.244381, -0.808952,
		-0.244381, 0.871656, -0.424845,
		0.808952, 0.424845, 0.406329,
		43.636971, 40.236664, 20.903595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377895, 40.130547, 20.076063>,  <43.070702, 39.939274, 20.619165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377895, 40.130547, 20.076063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665401, 40.161564, 20.352430>,  <43.837906, 40.180172, 20.518251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665401, 40.161564, 20.352430>,  <43.377895, 40.130547, 20.076063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665401, 40.161564, 20.352430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692772, -0.163825, -0.702303,
		0.058733, 0.983437, -0.171469,
		0.718761, 0.077541, 0.690919,
		43.881031, 40.184826, 20.559706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794285, 40.657856, 19.760063>,  <43.377895, 40.130547, 20.076063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794285, 40.657856, 19.760063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022545, 40.459187, 20.021648>,  <44.159500, 40.339985, 20.178600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022545, 40.459187, 20.021648>,  <43.794285, 40.657856, 19.760063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022545, 40.459187, 20.021648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722447, -0.074974, -0.687350,
		0.390422, 0.864690, 0.316040,
		0.570650, -0.496678, 0.653964,
		44.193741, 40.310184, 20.217838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484653, 40.837330, 19.744293>,  <43.794285, 40.657856, 19.760063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484653, 40.837330, 19.744293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558361, 40.512840, 19.966270>,  <44.602585, 40.318146, 20.099457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558361, 40.512840, 19.966270>,  <44.484653, 40.837330, 19.744293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558361, 40.512840, 19.966270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825238, -0.178990, -0.535673,
		0.533879, 0.556670, 0.636468,
		0.184272, -0.811222, 0.554944,
		44.613644, 40.269474, 20.132753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152885, 40.845108, 19.884308>,  <44.484653, 40.837330, 19.744293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152885, 40.845108, 19.884308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049789, 40.459641, 19.912355>,  <44.987930, 40.228359, 19.929184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049789, 40.459641, 19.912355>,  <45.152885, 40.845108, 19.884308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049789, 40.459641, 19.912355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758113, -0.246689, -0.603662,
		0.599026, -0.102430, 0.794150,
		-0.257742, -0.963666, 0.070120,
		44.972466, 40.170540, 19.933392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757889, 40.469452, 19.967533>,  <45.152885, 40.845108, 19.884308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757889, 40.469452, 19.967533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522041, 40.166866, 19.854321>,  <45.380531, 39.985313, 19.786392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522041, 40.166866, 19.854321>,  <45.757889, 40.469452, 19.967533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522041, 40.166866, 19.854321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688378, -0.287364, -0.666001,
		0.422475, -0.587519, 0.690171,
		-0.589619, -0.756468, -0.283031,
		45.345154, 39.939926, 19.769411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130486, 39.805756, 20.025841>,  <45.757889, 40.469452, 19.967533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130486, 39.805756, 20.025841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846958, 39.732975, 19.753231>,  <45.676842, 39.689308, 19.589664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846958, 39.732975, 19.753231>,  <46.130486, 39.805756, 20.025841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846958, 39.732975, 19.753231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656331, -0.524151, -0.542675,
		-0.258481, -0.831962, 0.490946,
		-0.708814, -0.181951, -0.681525,
		45.634315, 39.678391, 19.548773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207874, 39.126484, 19.726170>,  <46.130486, 39.805756, 20.025841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207874, 39.126484, 19.726170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937679, 39.266029, 19.466320>,  <45.775562, 39.349758, 19.310411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937679, 39.266029, 19.466320>,  <46.207874, 39.126484, 19.726170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937679, 39.266029, 19.466320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366339, -0.605802, -0.706257,
		-0.639929, -0.715051, 0.281412,
		-0.675490, 0.348862, -0.649622,
		45.735031, 39.370689, 19.271433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762032, 38.519794, 19.537243>,  <46.207874, 39.126484, 19.726170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762032, 38.519794, 19.537243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777927, 38.814499, 19.267248>,  <45.787464, 38.991322, 19.105251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777927, 38.814499, 19.267248>,  <45.762032, 38.519794, 19.537243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777927, 38.814499, 19.267248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357687, -0.641244, -0.678870,
		-0.932995, -0.214455, -0.289013,
		0.039741, 0.736759, -0.674986,
		45.789848, 39.035526, 19.064753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955696, 37.871246, 19.392733>,  <45.762032, 38.519794, 19.537243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955696, 37.871246, 19.392733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242874, 37.622425, 19.517698>,  <46.415180, 37.473133, 19.592678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242874, 37.622425, 19.517698>,  <45.955696, 37.871246, 19.392733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242874, 37.622425, 19.517698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463583, -0.092470, 0.881215,
		-0.519277, -0.777493, -0.354763,
		0.717944, -0.622056, 0.312415,
		46.458256, 37.435810, 19.611423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627327, 37.282665, 19.596937>,  <45.955696, 37.871246, 19.392733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627327, 37.282665, 19.596937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973026, 37.367886, 19.779224>,  <46.180447, 37.419018, 19.888597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973026, 37.367886, 19.779224>,  <45.627327, 37.282665, 19.596937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973026, 37.367886, 19.779224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474518, 0.044455, 0.879122,
		0.167035, -0.976030, 0.139514,
		0.864252, 0.213046, 0.455718,
		46.232304, 37.431801, 19.915939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551060, 36.925625, 20.267050>,  <45.627327, 37.282665, 19.596937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551060, 36.925625, 20.267050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856930, 37.179955, 20.308987>,  <46.040451, 37.332554, 20.334148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856930, 37.179955, 20.308987>,  <45.551060, 36.925625, 20.267050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856930, 37.179955, 20.308987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231525, 0.119240, 0.965494,
		0.601384, -0.762567, 0.238389,
		0.764679, 0.635825, 0.104844,
		46.086334, 37.370701, 20.340441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721622, 36.798206, 20.914780>,  <45.551060, 36.925625, 20.267050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721622, 36.798206, 20.914780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891949, 37.155182, 20.855141>,  <45.994144, 37.369370, 20.819357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891949, 37.155182, 20.855141>,  <45.721622, 36.798206, 20.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891949, 37.155182, 20.855141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203274, 0.254925, 0.945353,
		0.881681, -0.372237, 0.289961,
		0.425814, 0.892442, -0.149096,
		46.019691, 37.422913, 20.810411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103710, 36.929470, 21.449564>,  <45.721622, 36.798206, 20.914780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103710, 36.929470, 21.449564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107685, 37.300983, 21.301371>,  <46.110069, 37.523891, 21.212454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107685, 37.300983, 21.301371>,  <46.103710, 36.929470, 21.449564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107685, 37.300983, 21.301371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176083, 0.366339, 0.913669,
		0.984325, 0.056154, 0.167185,
		0.009940, 0.928785, -0.370484,
		46.110668, 37.579620, 21.190226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426575, 37.243763, 21.989172>,  <46.103710, 36.929470, 21.449564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426575, 37.243763, 21.989172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238129, 37.516331, 21.765127>,  <46.125061, 37.679871, 21.630699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238129, 37.516331, 21.765127>,  <46.426575, 37.243763, 21.989172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238129, 37.516331, 21.765127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287702, 0.481564, 0.827843,
		0.833835, 0.551153, -0.030827,
		-0.471113, 0.681415, -0.560113,
		46.096794, 37.720757, 21.597094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686729, 37.970467, 22.136198>,  <46.426575, 37.243763, 21.989172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686729, 37.970467, 22.136198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311619, 37.973606, 21.997337>,  <46.086552, 37.975491, 21.914021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311619, 37.973606, 21.997337>,  <46.686729, 37.970467, 22.136198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311619, 37.973606, 21.997337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294434, 0.512017, 0.806937,
		0.184078, 0.858939, -0.477847,
		-0.937776, 0.007845, -0.347152,
		46.030285, 37.975960, 21.893192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438889, 38.563145, 22.272385>,  <46.686729, 37.970467, 22.136198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438889, 38.563145, 22.272385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095581, 38.365490, 22.216946>,  <45.889599, 38.246899, 22.183681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095581, 38.365490, 22.216946>,  <46.438889, 38.563145, 22.272385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095581, 38.365490, 22.216946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351071, 0.368315, 0.860868,
		-0.374335, 0.787513, -0.489588,
		-0.858267, -0.494133, -0.138600,
		45.838100, 38.217251, 22.175365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896072, 39.095909, 22.471094>,  <46.438889, 38.563145, 22.272385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896072, 39.095909, 22.471094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732025, 38.731297, 22.483232>,  <45.633598, 38.512531, 22.490515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732025, 38.731297, 22.483232>,  <45.896072, 39.095909, 22.471094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732025, 38.731297, 22.483232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394341, 0.207226, 0.895295,
		-0.822376, 0.355207, -0.444440,
		-0.410114, -0.911529, 0.030345,
		45.608990, 38.457836, 22.492336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233112, 39.169514, 22.641159>,  <45.896072, 39.095909, 22.471094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233112, 39.169514, 22.641159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324028, 38.796116, 22.752102>,  <45.378578, 38.572079, 22.818668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324028, 38.796116, 22.752102>,  <45.233112, 39.169514, 22.641159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324028, 38.796116, 22.752102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305111, 0.202210, 0.930601,
		-0.924796, -0.296140, -0.238859,
		0.227288, -0.933495, 0.277358,
		45.392216, 38.516068, 22.835310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637901, 38.879463, 23.026325>,  <45.233112, 39.169514, 22.641159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637901, 38.879463, 23.026325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952450, 38.656937, 23.133755>,  <45.141178, 38.523422, 23.198214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952450, 38.656937, 23.133755>,  <44.637901, 38.879463, 23.026325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952450, 38.656937, 23.133755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381704, -0.095734, 0.919313,
		-0.485714, -0.825440, -0.287630,
		0.786374, -0.556313, 0.268575,
		45.188362, 38.490044, 23.214327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270424, 38.390251, 23.411793>,  <44.637901, 38.879463, 23.026325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270424, 38.390251, 23.411793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655766, 38.343983, 23.508600>,  <44.886971, 38.316223, 23.566685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655766, 38.343983, 23.508600>,  <44.270424, 38.390251, 23.411793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655766, 38.343983, 23.508600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259210, -0.169292, 0.950868,
		-0.069008, -0.978755, -0.193069,
		0.963352, -0.115663, 0.242020,
		44.944771, 38.309280, 23.581205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231136, 37.878494, 23.826965>,  <44.270424, 38.390251, 23.411793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231136, 37.878494, 23.826965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559906, 38.092636, 23.904776>,  <44.757168, 38.221123, 23.951462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559906, 38.092636, 23.904776>,  <44.231136, 37.878494, 23.826965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559906, 38.092636, 23.904776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313082, 0.139313, 0.939453,
		0.475841, -0.833059, 0.282115,
		0.821922, 0.535355, 0.194525,
		44.806484, 38.253242, 23.963133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332863, 37.650890, 24.422228>,  <44.231136, 37.878494, 23.826965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332863, 37.650890, 24.422228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571495, 37.970901, 24.396757>,  <44.714676, 38.162907, 24.381475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571495, 37.970901, 24.396757>,  <44.332863, 37.650890, 24.422228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571495, 37.970901, 24.396757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265453, 0.271579, 0.925084,
		0.757382, -0.534984, 0.374387,
		0.596580, 0.800024, -0.063676,
		44.750469, 38.210907, 24.377655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716358, 37.636467, 25.025213>,  <44.332863, 37.650890, 24.422228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716358, 37.636467, 25.025213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709362, 38.029022, 24.948717>,  <44.705166, 38.264557, 24.902819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709362, 38.029022, 24.948717>,  <44.716358, 37.636467, 25.025213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709362, 38.029022, 24.948717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361753, 0.172102, 0.916251,
		0.932110, 0.085208, 0.352009,
		-0.017491, 0.981387, -0.191242,
		44.704113, 38.323437, 24.891344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901348, 38.123344, 25.673916>,  <44.716358, 37.636467, 25.025213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901348, 38.123344, 25.673916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.681732, 38.328728, 25.410122>,  <44.549965, 38.451958, 25.251846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.681732, 38.328728, 25.410122>,  <44.901348, 38.123344, 25.673916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681732, 38.328728, 25.410122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643159, 0.244359, 0.725696,
		0.533766, 0.822587, 0.196073,
		-0.549036, 0.513458, -0.659485,
		44.517021, 38.482765, 25.212276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570900, 38.481659, 26.082045>,  <44.901348, 38.123344, 25.673916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570900, 38.481659, 26.082045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374252, 38.565556, 25.743975>,  <44.256264, 38.615894, 25.541132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374252, 38.565556, 25.743975>,  <44.570900, 38.481659, 26.082045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374252, 38.565556, 25.743975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806983, 0.255000, 0.532684,
		0.327248, 0.943918, 0.043898,
		-0.491616, 0.209745, -0.845175,
		44.226768, 38.628479, 25.490421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313137, 39.218430, 26.131813>,  <44.570900, 38.481659, 26.082045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313137, 39.218430, 26.131813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079666, 39.017372, 25.876730>,  <43.939583, 38.896736, 25.723680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079666, 39.017372, 25.876730>,  <44.313137, 39.218430, 26.131813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079666, 39.017372, 25.876730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808064, 0.282447, 0.516969,
		-0.079733, 0.817050, -0.571027,
		-0.583675, -0.502645, -0.637708,
		43.904564, 38.866577, 25.685417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660480, 39.563351, 26.118713>,  <44.313137, 39.218430, 26.131813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660480, 39.563351, 26.118713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552475, 39.223621, 25.937277>,  <43.487671, 39.019783, 25.828415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552475, 39.223621, 25.937277>,  <43.660480, 39.563351, 26.118713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552475, 39.223621, 25.937277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902832, 0.059602, 0.425841,
		-0.334642, 0.524499, -0.782889,
		-0.270015, -0.849322, -0.453589,
		43.471470, 38.968826, 25.801201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101639, 39.650723, 25.841022>,  <43.660480, 39.563351, 26.118713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101639, 39.650723, 25.841022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100979, 39.253666, 25.889462>,  <43.100582, 39.015434, 25.918526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100979, 39.253666, 25.889462>,  <43.101639, 39.650723, 25.841022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100979, 39.253666, 25.889462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898647, 0.054591, 0.435263,
		-0.438670, -0.108108, -0.892122,
		-0.001646, -0.992639, 0.121098,
		43.100487, 38.955875, 25.925791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480614, 39.422321, 25.567299>,  <43.101639, 39.650723, 25.841022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480614, 39.422321, 25.567299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610931, 39.131092, 25.808552>,  <42.689121, 38.956356, 25.953304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610931, 39.131092, 25.808552>,  <42.480614, 39.422321, 25.567299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610931, 39.131092, 25.808552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872848, 0.013515, 0.487805,
		-0.363307, -0.685370, -0.631090,
		0.325799, -0.728069, 0.603134,
		42.708672, 38.912670, 25.989492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918335, 39.074493, 25.556122>,  <42.480614, 39.422321, 25.567299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918335, 39.074493, 25.556122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138863, 38.956585, 25.868315>,  <42.271179, 38.885838, 26.055630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138863, 38.956585, 25.868315>,  <41.918335, 39.074493, 25.556122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138863, 38.956585, 25.868315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831765, -0.121437, 0.541682,
		-0.064894, -0.947819, -0.312133,
		0.551322, -0.294773, 0.780482,
		42.304260, 38.868153, 26.102459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523521, 38.489182, 25.846497>,  <41.918335, 39.074493, 25.556122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523521, 38.489182, 25.846497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773182, 38.591045, 26.141951>,  <41.922977, 38.652164, 26.319223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773182, 38.591045, 26.141951>,  <41.523521, 38.489182, 25.846497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773182, 38.591045, 26.141951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763395, -0.002486, 0.645927,
		0.166329, -0.967027, 0.192855,
		0.624150, 0.254661, 0.738637,
		41.960426, 38.667442, 26.363543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220619, 38.124397, 26.498816>,  <41.523521, 38.489182, 25.846497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220619, 38.124397, 26.498816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491402, 38.366459, 26.666397>,  <41.653870, 38.511696, 26.766947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491402, 38.366459, 26.666397>,  <41.220619, 38.124397, 26.498816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491402, 38.366459, 26.666397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517850, -0.012892, 0.855374,
		0.523034, -0.796004, 0.304652,
		0.676954, 0.605154, 0.418954,
		41.694489, 38.548004, 26.792084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402275, 37.785862, 27.124987>,  <41.220619, 38.124397, 26.498816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402275, 37.785862, 27.124987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519085, 38.164616, 27.178848>,  <41.589172, 38.391869, 27.211164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519085, 38.164616, 27.178848>,  <41.402275, 37.785862, 27.124987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519085, 38.164616, 27.178848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319448, -0.036138, 0.946914,
		0.901484, -0.319540, 0.291927,
		0.292027, 0.946883, 0.134654,
		41.606693, 38.448681, 27.219244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739025, 37.758522, 27.712906>,  <41.402275, 37.785862, 27.124987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739025, 37.758522, 27.712906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620758, 38.134022, 27.642096>,  <41.549797, 38.359322, 27.599609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620758, 38.134022, 27.642096>,  <41.739025, 37.758522, 27.712906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620758, 38.134022, 27.642096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391167, 0.050092, 0.918956,
		0.871532, 0.340953, 0.352395,
		-0.295669, 0.938745, -0.177027,
		41.532059, 38.415646, 27.588987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814018, 38.287720, 28.351933>,  <41.739025, 37.758522, 27.712906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814018, 38.287720, 28.351933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512054, 38.461582, 28.155489>,  <41.330875, 38.565899, 28.037622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512054, 38.461582, 28.155489>,  <41.814018, 38.287720, 28.351933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512054, 38.461582, 28.155489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475338, 0.153296, 0.866345,
		0.451851, 0.887452, 0.090886,
		-0.754907, 0.434661, -0.491107,
		41.285583, 38.591980, 28.008158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673412, 39.037277, 28.525349>,  <41.814018, 38.287720, 28.351933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673412, 39.037277, 28.525349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357506, 38.830135, 28.393833>,  <41.167961, 38.705849, 28.314924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357506, 38.830135, 28.393833>,  <41.673412, 39.037277, 28.525349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357506, 38.830135, 28.393833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544322, 0.344512, 0.764869,
		-0.282819, 0.783032, -0.553962,
		-0.789764, -0.517853, -0.328787,
		41.120575, 38.674778, 28.295197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101295, 39.488102, 28.727251>,  <41.673412, 39.037277, 28.525349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101295, 39.488102, 28.727251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926437, 39.140560, 28.634298>,  <40.821522, 38.932037, 28.578527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926437, 39.140560, 28.634298>,  <41.101295, 39.488102, 28.727251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926437, 39.140560, 28.634298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540115, 0.047010, 0.840277,
		-0.719150, 0.492839, -0.489829,
		-0.437148, -0.868850, -0.232382,
		40.795292, 38.879906, 28.564583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407574, 39.560623, 28.962416>,  <41.101295, 39.488102, 28.727251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407574, 39.560623, 28.962416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450718, 39.169403, 28.891115>,  <40.476604, 38.934669, 28.848335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450718, 39.169403, 28.891115>,  <40.407574, 39.560623, 28.962416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450718, 39.169403, 28.891115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597808, -0.207070, 0.774434,
		-0.794350, 0.023027, -0.607024,
		0.107864, -0.978055, -0.178252,
		40.483078, 38.875988, 28.837639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743935, 39.228241, 28.995363>,  <40.407574, 39.560623, 28.962416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743935, 39.228241, 28.995363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009453, 38.942833, 29.085045>,  <40.168762, 38.771587, 29.138853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009453, 38.942833, 29.085045>,  <39.743935, 39.228241, 28.995363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009453, 38.942833, 29.085045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480410, -0.177013, 0.858995,
		-0.573226, -0.677902, -0.460283,
		0.663790, -0.713523, 0.224203,
		40.208591, 38.728775, 29.152306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357815, 38.798908, 29.330465>,  <39.743935, 39.228241, 28.995363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357815, 38.798908, 29.330465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730221, 38.696728, 29.434732>,  <39.953667, 38.635418, 29.497293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730221, 38.696728, 29.434732>,  <39.357815, 38.798908, 29.330465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730221, 38.696728, 29.434732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310144, -0.177243, 0.934021,
		-0.192411, -0.950432, -0.244248,
		0.931015, -0.255469, 0.260667,
		40.009525, 38.620090, 29.512934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351070, 38.202858, 29.747513>,  <39.357815, 38.798908, 29.330465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351070, 38.202858, 29.747513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720993, 38.307014, 29.858454>,  <39.942947, 38.369511, 29.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720993, 38.307014, 29.858454>,  <39.351070, 38.202858, 29.747513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720993, 38.307014, 29.858454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174310, -0.357986, 0.917313,
		0.338154, -0.896683, -0.285678,
		0.924807, 0.260396, 0.277355,
		39.998436, 38.385132, 29.941660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635826, 37.610161, 29.995502>,  <39.351070, 38.202858, 29.747513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635826, 37.610161, 29.995502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846687, 37.916985, 30.141781>,  <39.973202, 38.101078, 30.229548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846687, 37.916985, 30.141781>,  <39.635826, 37.610161, 29.995502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846687, 37.916985, 30.141781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043585, -0.405373, 0.913112,
		0.848655, -0.497284, -0.180260,
		0.527149, 0.767060, 0.365696,
		40.004833, 38.147102, 30.251490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075752, 37.361439, 30.494701>,  <39.635826, 37.610161, 29.995502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075752, 37.361439, 30.494701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082577, 37.747353, 30.599703>,  <40.086670, 37.978901, 30.662704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082577, 37.747353, 30.599703>,  <40.075752, 37.361439, 30.494701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082577, 37.747353, 30.599703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028190, -0.262902, 0.964411,
		0.999457, -0.009053, -0.031682,
		0.017060, 0.964780, 0.262504,
		40.087696, 38.036785, 30.678453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608032, 37.474545, 31.022717>,  <40.075752, 37.361439, 30.494701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608032, 37.474545, 31.022717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351482, 37.779999, 31.052406>,  <40.197552, 37.963272, 31.070219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351482, 37.779999, 31.052406>,  <40.608032, 37.474545, 31.022717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351482, 37.779999, 31.052406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062984, -0.044009, 0.997044,
		0.764642, 0.644149, -0.019871,
		-0.641371, 0.763633, 0.074223,
		40.159073, 38.009090, 31.074673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999321, 37.867611, 31.466963>,  <40.608032, 37.474545, 31.022717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999321, 37.867611, 31.466963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629761, 38.019131, 31.488592>,  <40.408024, 38.110043, 31.501570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629761, 38.019131, 31.488592>,  <40.999321, 37.867611, 31.466963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629761, 38.019131, 31.488592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078121, 0.048392, 0.995769,
		0.374580, 0.924213, -0.074301,
		-0.923898, 0.378800, 0.054074,
		40.352592, 38.132771, 31.504814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079433, 38.475384, 31.872807>,  <40.999321, 37.867611, 31.466963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079433, 38.475384, 31.872807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704548, 38.336224, 31.882530>,  <40.479618, 38.252728, 31.888365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704548, 38.336224, 31.882530>,  <41.079433, 38.475384, 31.872807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704548, 38.336224, 31.882530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048054, -0.059787, 0.997054,
		-0.345426, 0.935622, 0.072751,
		-0.937215, -0.347905, 0.024308,
		40.423382, 38.231853, 31.889822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717194, 38.825600, 32.505642>,  <41.079433, 38.475384, 31.872807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717194, 38.825600, 32.505642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537369, 38.479404, 32.417252>,  <40.429474, 38.271687, 32.364216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537369, 38.479404, 32.417252>,  <40.717194, 38.825600, 32.505642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537369, 38.479404, 32.417252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060934, -0.217094, 0.974247,
		-0.891170, 0.451447, 0.044860,
		-0.449559, -0.865486, -0.220976,
		40.402500, 38.219757, 32.350960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064442, 38.878658, 32.785866>,  <40.717194, 38.825600, 32.505642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064442, 38.878658, 32.785866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218826, 38.510181, 32.766109>,  <40.311459, 38.289097, 32.754253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218826, 38.510181, 32.766109>,  <40.064442, 38.878658, 32.785866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218826, 38.510181, 32.766109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312351, -0.180875, 0.932588,
		-0.868026, -0.344518, -0.357546,
		0.385964, -0.921191, -0.049393,
		40.334614, 38.233826, 32.751293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624161, 38.379269, 33.107464>,  <40.064442, 38.878658, 32.785866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624161, 38.379269, 33.107464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991432, 38.222416, 33.130020>,  <40.211796, 38.128304, 33.143555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991432, 38.222416, 33.130020>,  <39.624161, 38.379269, 33.107464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991432, 38.222416, 33.130020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144493, -0.198945, 0.969300,
		-0.368877, -0.898138, -0.239328,
		0.918178, -0.392134, 0.056388,
		40.266888, 38.104774, 33.146938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449348, 37.786221, 33.545486>,  <39.624161, 38.379269, 33.107464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449348, 37.786221, 33.545486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837406, 37.881157, 33.565418>,  <40.070240, 37.938118, 33.577377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837406, 37.881157, 33.565418>,  <39.449348, 37.786221, 33.545486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837406, 37.881157, 33.565418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000054, -0.205685, 0.978618,
		0.242512, -0.949402, -0.199558,
		0.970148, 0.237337, 0.049830,
		40.128452, 37.952358, 33.580368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738003, 37.224709, 33.911442>,  <39.449348, 37.786221, 33.545486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738003, 37.224709, 33.911442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002209, 37.520676, 33.962425>,  <40.160732, 37.698257, 33.993015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002209, 37.520676, 33.962425>,  <39.738003, 37.224709, 33.911442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002209, 37.520676, 33.962425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152410, -0.298358, 0.942207,
		0.735185, -0.602912, -0.309840,
		0.660511, 0.739919, 0.127458,
		40.200363, 37.742653, 34.000664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356709, 36.913845, 34.338146>,  <39.738003, 37.224709, 33.911442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356709, 36.913845, 34.338146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375458, 37.313404, 34.337608>,  <40.386707, 37.553139, 34.337284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375458, 37.313404, 34.337608>,  <40.356709, 36.913845, 34.338146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375458, 37.313404, 34.337608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020038, 0.000407, 0.999799,
		0.998700, -0.046893, -0.019997,
		0.046876, 0.998900, -0.001347,
		40.389519, 37.613075, 34.337204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901627, 36.978069, 34.768902>,  <40.356709, 36.913845, 34.338146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901627, 36.978069, 34.768902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737366, 37.342613, 34.780060>,  <40.638809, 37.561340, 34.786755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737366, 37.342613, 34.780060>,  <40.901627, 36.978069, 34.768902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737366, 37.342613, 34.780060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035995, -0.046779, 0.998257,
		0.911081, 0.408934, 0.052015,
		-0.410654, 0.911365, 0.027900,
		40.614170, 37.616024, 34.788429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033085, 37.142483, 35.372288>,  <40.901627, 36.978069, 34.768902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033085, 37.142483, 35.372288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761635, 37.425877, 35.294815>,  <40.598763, 37.595913, 35.248333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761635, 37.425877, 35.294815>,  <41.033085, 37.142483, 35.372288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761635, 37.425877, 35.294815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095310, 0.176519, 0.979672,
		0.728271, 0.683293, -0.052265,
		-0.678629, 0.708485, -0.193679,
		40.558044, 37.638424, 35.236710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337547, 37.667496, 35.704201>,  <41.033085, 37.142483, 35.372288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337547, 37.667496, 35.704201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939590, 37.681698, 35.666416>,  <40.700817, 37.690220, 35.643745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939590, 37.681698, 35.666416>,  <41.337547, 37.667496, 35.704201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939590, 37.681698, 35.666416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095877, -0.040681, 0.994562,
		0.031471, 0.998541, 0.043878,
		-0.994896, 0.035507, -0.094457,
		40.641121, 37.692348, 35.638081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044888, 38.297832, 36.175457>,  <41.337547, 37.667496, 35.704201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044888, 38.297832, 36.175457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737282, 38.056099, 36.092125>,  <40.552719, 37.911060, 36.042126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737282, 38.056099, 36.092125>,  <41.044888, 38.297832, 36.175457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737282, 38.056099, 36.092125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109596, -0.196431, 0.974374,
		-0.629771, 0.772136, 0.084824,
		-0.769011, -0.604335, -0.208329,
		40.506580, 37.874798, 36.029625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543358, 38.421829, 36.742355>,  <41.044888, 38.297832, 36.175457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543358, 38.421829, 36.742355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463661, 38.063274, 36.583965>,  <40.415844, 37.848141, 36.488930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463661, 38.063274, 36.583965>,  <40.543358, 38.421829, 36.742355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463661, 38.063274, 36.583965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242919, -0.346287, 0.906132,
		-0.949364, 0.276733, -0.148753,
		-0.199246, -0.896384, -0.395976,
		40.403889, 37.794357, 36.465172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061901, 38.190105, 37.144627>,  <40.543358, 38.421829, 36.742355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061901, 38.190105, 37.144627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178123, 37.850746, 36.967628>,  <40.247856, 37.647133, 36.861427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178123, 37.850746, 36.967628>,  <40.061901, 38.190105, 37.144627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178123, 37.850746, 36.967628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298378, -0.519724, 0.800535,
		-0.909146, -0.100571, -0.404152,
		0.290558, -0.848394, -0.442497,
		40.265289, 37.596230, 36.834881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479687, 37.708858, 37.068623>,  <40.061901, 38.190105, 37.144627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479687, 37.708858, 37.068623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816975, 37.493877, 37.064331>,  <40.019348, 37.364887, 37.061756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816975, 37.493877, 37.064331>,  <39.479687, 37.708858, 37.068623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816975, 37.493877, 37.064331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303331, -0.492192, 0.815927,
		-0.443804, -0.684756, -0.578055,
		0.843225, -0.537454, -0.010730,
		40.069942, 37.332642, 37.061111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289928, 37.126709, 37.490437>,  <39.479687, 37.708858, 37.068623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289928, 37.126709, 37.490437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685745, 37.144119, 37.435429>,  <39.923237, 37.154568, 37.402424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685745, 37.144119, 37.435429>,  <39.289928, 37.126709, 37.490437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685745, 37.144119, 37.435429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144247, -0.298317, 0.943504,
		0.000046, -0.953474, -0.301476,
		0.989541, 0.043530, -0.137522,
		39.982609, 37.157177, 37.394173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622162, 36.453949, 37.855103>,  <39.289928, 37.126709, 37.490437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622162, 36.453949, 37.855103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912571, 36.728813, 37.844501>,  <40.086815, 36.893734, 37.838139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912571, 36.728813, 37.844501>,  <39.622162, 36.453949, 37.855103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912571, 36.728813, 37.844501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304927, -0.287143, 0.908057,
		0.616373, -0.667349, -0.418006,
		0.726019, 0.687164, -0.026506,
		40.130375, 36.934963, 37.836548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203068, 36.010960, 37.910027>,  <39.622162, 36.453949, 37.855103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203068, 36.010960, 37.910027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214653, 36.372433, 38.080917>,  <40.221603, 36.589317, 38.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214653, 36.372433, 38.080917>,  <40.203068, 36.010960, 37.910027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214653, 36.372433, 38.080917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233108, -0.421726, 0.876246,
		0.972019, 0.074208, -0.222871,
		0.028966, 0.903682, 0.427224,
		40.223343, 36.643536, 38.209084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780735, 35.934608, 38.398548>,  <40.203068, 36.010960, 37.910027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780735, 35.934608, 38.398548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590065, 36.267239, 38.512581>,  <40.475662, 36.466816, 38.581001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590065, 36.267239, 38.512581>,  <40.780735, 35.934608, 38.398548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590065, 36.267239, 38.512581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098688, -0.271624, 0.957330,
		0.873523, 0.484469, 0.047410,
		-0.476674, 0.831571, 0.285081,
		40.447063, 36.516708, 38.598106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269199, 36.389870, 38.858822>,  <40.780735, 35.934608, 38.398548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269199, 36.389870, 38.858822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886028, 36.454685, 38.953579>,  <40.656124, 36.493576, 39.010433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886028, 36.454685, 38.953579>,  <41.269199, 36.389870, 38.858822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886028, 36.454685, 38.953579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199536, -0.217268, 0.955500,
		0.206297, 0.962568, 0.175794,
		-0.957928, 0.162039, 0.236889,
		40.598648, 36.503296, 39.024647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252106, 36.561684, 39.583427>,  <41.269199, 36.389870, 38.858822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252106, 36.561684, 39.583427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867699, 36.467602, 39.525295>,  <40.637054, 36.411152, 39.490414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867699, 36.467602, 39.525295>,  <41.252106, 36.561684, 39.583427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867699, 36.467602, 39.525295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097787, -0.202527, 0.974382,
		-0.258613, 0.950611, 0.171633,
		-0.961019, -0.235204, -0.145334,
		40.579391, 36.397041, 39.481693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891399, 36.880417, 40.170242>,  <41.252106, 36.561684, 39.583427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891399, 36.880417, 40.170242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670990, 36.590393, 40.004993>,  <40.538746, 36.416378, 39.905846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670990, 36.590393, 40.004993>,  <40.891399, 36.880417, 40.170242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670990, 36.590393, 40.004993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115856, -0.423792, 0.898320,
		-0.826410, 0.542856, 0.149516,
		-0.551022, -0.725057, -0.413119,
		40.505684, 36.372875, 39.881058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433117, 36.816006, 40.594677>,  <40.891399, 36.880417, 40.170242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433117, 36.816006, 40.594677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416538, 36.467388, 40.399250>,  <40.406593, 36.258217, 40.281994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416538, 36.467388, 40.399250>,  <40.433117, 36.816006, 40.594677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416538, 36.467388, 40.399250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187342, -0.473535, 0.860621,
		-0.981420, 0.127197, -0.143651,
		-0.041444, -0.871542, -0.488566,
		40.404106, 36.205925, 40.252682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823593, 36.461071, 40.490211>,  <40.433117, 36.816006, 40.594677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823593, 36.461071, 40.490211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163399, 36.261608, 40.559097>,  <40.367283, 36.141930, 40.600430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163399, 36.261608, 40.559097>,  <39.823593, 36.461071, 40.490211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163399, 36.261608, 40.559097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141458, 0.099180, 0.984963,
		-0.508241, -0.861105, 0.013716,
		0.849517, -0.498659, 0.172218,
		40.418255, 36.112011, 40.610764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612007, 35.839260, 40.723408>,  <39.823593, 36.461071, 40.490211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612007, 35.839260, 40.723408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974323, 35.955811, 40.846470>,  <40.191711, 36.025742, 40.920307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974323, 35.955811, 40.846470>,  <39.612007, 35.839260, 40.723408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974323, 35.955811, 40.846470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335817, 0.050846, 0.940554,
		0.258415, -0.955255, 0.143906,
		0.905786, 0.291379, 0.307652,
		40.246059, 36.043224, 40.938766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740105, 35.849422, 41.484516>,  <39.612007, 35.839260, 40.723408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740105, 35.849422, 41.484516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887676, 35.497398, 41.604103>,  <39.976219, 35.286182, 41.675854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887676, 35.497398, 41.604103>,  <39.740105, 35.849422, 41.484516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887676, 35.497398, 41.604103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503665, -0.081038, -0.860090,
		0.781159, 0.467894, 0.413358,
		0.368934, -0.880061, 0.298965,
		39.998356, 35.233379, 41.693794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495934, 35.900040, 41.454666>,  <39.740105, 35.849422, 41.484516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495934, 35.900040, 41.454666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390217, 35.514988, 41.431026>,  <40.326786, 35.283955, 41.416843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390217, 35.514988, 41.431026>,  <40.495934, 35.900040, 41.454666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390217, 35.514988, 41.431026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502575, -0.085164, -0.860329,
		0.823147, -0.257076, 0.506302,
		-0.264288, -0.962631, -0.059098,
		40.310928, 35.226200, 41.413296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054089, 35.407848, 41.290771>,  <40.495934, 35.900040, 41.454666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054089, 35.407848, 41.290771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723366, 35.199577, 41.205654>,  <40.524933, 35.074615, 41.154583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723366, 35.199577, 41.205654>,  <41.054089, 35.407848, 41.290771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723366, 35.199577, 41.205654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259485, -0.017432, -0.965590,
		0.499050, -0.853576, 0.149521,
		-0.826811, -0.520676, -0.212791,
		40.475323, 35.043373, 41.141815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201557, 35.306091, 40.535851>,  <41.054089, 35.407848, 41.290771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201557, 35.306091, 40.535851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808559, 35.292450, 40.609112>,  <40.572762, 35.284264, 40.653069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808559, 35.292450, 40.609112>,  <41.201557, 35.306091, 40.535851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808559, 35.292450, 40.609112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169281, 0.573924, -0.801221,
		-0.077791, -0.818198, -0.569649,
		-0.982493, -0.034103, 0.183151,
		40.513813, 35.282219, 40.664059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854393, 35.096561, 39.976524>,  <41.201557, 35.306091, 40.535851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854393, 35.096561, 39.976524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592659, 35.316166, 40.184536>,  <40.435619, 35.447929, 40.309341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592659, 35.316166, 40.184536>,  <40.854393, 35.096561, 39.976524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592659, 35.316166, 40.184536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223566, 0.516497, -0.826589,
		-0.722400, -0.657129, -0.215223,
		-0.654337, 0.549011, 0.520029,
		40.396358, 35.480869, 40.340546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282104, 35.146896, 39.612965>,  <40.854393, 35.096561, 39.976524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282104, 35.146896, 39.612965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270298, 35.485725, 39.825226>,  <40.263214, 35.689022, 39.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270298, 35.485725, 39.825226>,  <40.282104, 35.146896, 39.612965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270298, 35.485725, 39.825226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175708, 0.518222, -0.837002,
		-0.984000, -0.117946, 0.133542,
		-0.029517, 0.847074, 0.530654,
		40.261444, 35.739849, 39.984421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707527, 35.539490, 39.315422>,  <40.282104, 35.146896, 39.612965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707527, 35.539490, 39.315422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951389, 35.791744, 39.507515>,  <40.097706, 35.943096, 39.622772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951389, 35.791744, 39.507515>,  <39.707527, 35.539490, 39.315422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951389, 35.791744, 39.507515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020857, 0.618399, -0.785588,
		-0.792396, 0.468918, 0.390160,
		0.609651, 0.630634, 0.480236,
		40.134285, 35.980934, 39.651585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318611, 36.121445, 39.227821>,  <39.707527, 35.539490, 39.315422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318611, 36.121445, 39.227821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698368, 36.214947, 39.311741>,  <39.926224, 36.271049, 39.362091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698368, 36.214947, 39.311741>,  <39.318611, 36.121445, 39.227821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698368, 36.214947, 39.311741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013838, 0.636160, -0.771433,
		-0.313791, 0.735295, 0.600730,
		0.949391, 0.233756, 0.209797,
		39.983185, 36.285072, 39.374680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286655, 36.844208, 38.943672>,  <39.318611, 36.121445, 39.227821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286655, 36.844208, 38.943672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655621, 36.716141, 39.030064>,  <39.876999, 36.639301, 39.081898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655621, 36.716141, 39.030064>,  <39.286655, 36.844208, 38.943672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655621, 36.716141, 39.030064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362506, 0.524896, -0.770113,
		0.133195, 0.788657, 0.600232,
		0.922414, -0.320163, 0.215980,
		39.932346, 36.620090, 39.094856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600826, 37.443901, 38.928337>,  <39.286655, 36.844208, 38.943672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600826, 37.443901, 38.928337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888287, 37.180038, 38.840336>,  <40.060760, 37.021721, 38.787537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888287, 37.180038, 38.840336>,  <39.600826, 37.443901, 38.928337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888287, 37.180038, 38.840336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228784, 0.523060, -0.821015,
		0.656660, 0.539689, 0.526815,
		0.718649, -0.659654, -0.220000,
		40.103882, 36.982143, 38.774334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242920, 37.835278, 38.850079>,  <39.600826, 37.443901, 38.928337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242920, 37.835278, 38.850079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334267, 37.499733, 38.652431>,  <40.389072, 37.298405, 38.533844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334267, 37.499733, 38.652431>,  <40.242920, 37.835278, 38.850079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334267, 37.499733, 38.652431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158045, 0.532741, -0.831390,
		0.960663, 0.111765, 0.254236,
		0.228362, -0.838866, -0.494121,
		40.402775, 37.248074, 38.504196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877857, 37.977352, 38.437088>,  <40.242920, 37.835278, 38.850079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877857, 37.977352, 38.437088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668713, 37.668163, 38.293343>,  <40.543228, 37.482651, 38.207096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668713, 37.668163, 38.293343>,  <40.877857, 37.977352, 38.437088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668713, 37.668163, 38.293343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288222, 0.236437, -0.927915,
		0.802215, -0.588743, 0.099163,
		-0.522857, -0.772968, -0.359362,
		40.511856, 37.436272, 38.185535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030338, 37.815720, 37.797764>,  <40.877857, 37.977352, 38.437088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030338, 37.815720, 37.797764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725258, 37.557220, 37.807987>,  <40.542210, 37.402122, 37.814121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725258, 37.557220, 37.807987>,  <41.030338, 37.815720, 37.797764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725258, 37.557220, 37.807987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020983, -0.014774, -0.999671,
		0.646414, -0.762983, -0.002292,
		-0.762698, -0.646250, 0.025560,
		40.496449, 37.363346, 37.815655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341949, 37.121880, 37.574364>,  <41.030338, 37.815720, 37.797764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341949, 37.121880, 37.574364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947956, 37.168934, 37.523800>,  <40.711559, 37.197166, 37.493462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947956, 37.168934, 37.523800>,  <41.341949, 37.121880, 37.574364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947956, 37.168934, 37.523800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111462, -0.125980, -0.985751,
		-0.131919, -0.985029, 0.110972,
		-0.984974, 0.117671, -0.126412,
		40.652462, 37.204224, 37.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206757, 36.687481, 36.953297>,  <41.341949, 37.121880, 37.574364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206757, 36.687481, 36.953297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871681, 36.899879, 37.004387>,  <40.670635, 37.027321, 37.035042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871681, 36.899879, 37.004387>,  <41.206757, 36.687481, 36.953297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871681, 36.899879, 37.004387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028370, 0.191248, -0.981132,
		-0.545410, -0.825507, -0.145142,
		-0.837689, 0.531001, 0.127729,
		40.620373, 37.059181, 37.042706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762280, 36.511066, 36.317547>,  <41.206757, 36.687481, 36.953297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762280, 36.511066, 36.317547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673958, 36.860592, 36.490841>,  <40.620964, 37.070309, 36.594818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673958, 36.860592, 36.490841>,  <40.762280, 36.511066, 36.317547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673958, 36.860592, 36.490841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066544, 0.456663, -0.887148,
		-0.973046, -0.167053, -0.158978,
		-0.220800, 0.873815, 0.433238,
		40.607719, 37.122738, 36.620811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153625, 36.764191, 36.010677>,  <40.762280, 36.511066, 36.317547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153625, 36.764191, 36.010677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364132, 37.067978, 36.163651>,  <40.490437, 37.250252, 36.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364132, 37.067978, 36.163651>,  <40.153625, 36.764191, 36.010677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364132, 37.067978, 36.163651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031808, 0.467019, -0.883675,
		-0.849725, 0.452883, 0.269933,
		0.526266, 0.759467, 0.382433,
		40.522011, 37.295818, 36.278381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510857, 37.084579, 35.935024>,  <40.153625, 36.764191, 36.010677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510857, 37.084579, 35.935024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811123, 37.348625, 35.945969>,  <39.991283, 37.507053, 35.952538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811123, 37.348625, 35.945969>,  <39.510857, 37.084579, 35.935024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811123, 37.348625, 35.945969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207500, 0.274880, -0.938821,
		-0.627253, 0.699061, 0.343317,
		0.750664, 0.660117, 0.027364,
		40.036324, 37.546661, 35.954178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315964, 37.739929, 35.554279>,  <39.510857, 37.084579, 35.935024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315964, 37.739929, 35.554279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715851, 37.743683, 35.563080>,  <39.955784, 37.745934, 35.568359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715851, 37.743683, 35.563080>,  <39.315964, 37.739929, 35.554279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715851, 37.743683, 35.563080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019595, 0.206023, -0.978351,
		-0.013713, 0.978502, 0.205780,
		0.999714, 0.009384, 0.021999,
		40.015766, 37.746498, 35.569679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491047, 38.321121, 35.175873>,  <39.315964, 37.739929, 35.554279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491047, 38.321121, 35.175873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835949, 38.119637, 35.196972>,  <40.042892, 37.998745, 35.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835949, 38.119637, 35.196972>,  <39.491047, 38.321121, 35.175873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835949, 38.119637, 35.196972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182204, 0.211337, -0.960280,
		0.472560, 0.837620, 0.274006,
		0.862258, -0.503715, 0.052748,
		40.094627, 37.968521, 35.212795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938255, 38.750271, 34.908501>,  <39.491047, 38.321121, 35.175873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938255, 38.750271, 34.908501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151794, 38.414219, 34.870155>,  <40.279919, 38.212589, 34.847149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151794, 38.414219, 34.870155>,  <39.938255, 38.750271, 34.908501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151794, 38.414219, 34.870155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137089, 0.197864, -0.970596,
		0.834391, 0.505012, 0.220802,
		0.533851, -0.840126, -0.095865,
		40.311951, 38.162182, 34.841396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543522, 38.850945, 34.539551>,  <39.938255, 38.750271, 34.908501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543522, 38.850945, 34.539551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457722, 38.464104, 34.484844>,  <40.406242, 38.231998, 34.452023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457722, 38.464104, 34.484844>,  <40.543522, 38.850945, 34.539551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457722, 38.464104, 34.484844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295405, 0.069231, -0.952861,
		0.930982, -0.244787, 0.270837,
		-0.214497, -0.967102, -0.136764,
		40.393372, 38.173973, 34.443813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157734, 38.662281, 34.159264>,  <40.543522, 38.850945, 34.539551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157734, 38.662281, 34.159264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878769, 38.384830, 34.087154>,  <40.711391, 38.218361, 34.043888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878769, 38.384830, 34.087154>,  <41.157734, 38.662281, 34.159264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878769, 38.384830, 34.087154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134467, 0.120428, -0.983573,
		0.703941, -0.710198, 0.009282,
		-0.697413, -0.693626, -0.180272,
		40.669544, 38.176743, 34.033073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394165, 38.335545, 33.694321>,  <41.157734, 38.662281, 34.159264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394165, 38.335545, 33.694321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014755, 38.215851, 33.652821>,  <40.787109, 38.144035, 33.627922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014755, 38.215851, 33.652821>,  <41.394165, 38.335545, 33.694321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014755, 38.215851, 33.652821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074528, 0.107492, -0.991409,
		0.307814, -0.948106, -0.079657,
		-0.948523, -0.299233, -0.103748,
		40.730198, 38.126080, 33.621696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494797, 37.799938, 33.134590>,  <41.394165, 38.335545, 33.694321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494797, 37.799938, 33.134590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112923, 37.911133, 33.177128>,  <40.883801, 37.977848, 33.202652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112923, 37.911133, 33.177128>,  <41.494797, 37.799938, 33.134590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112923, 37.911133, 33.177128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147560, -0.131760, -0.980237,
		-0.258481, -0.951505, 0.166808,
		-0.954680, 0.277987, 0.106347,
		40.826519, 37.994530, 33.209030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152954, 37.409199, 32.568859>,  <41.494797, 37.799938, 33.134590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152954, 37.409199, 32.568859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965393, 37.742779, 32.685249>,  <40.852856, 37.942924, 32.755081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965393, 37.742779, 32.685249>,  <41.152954, 37.409199, 32.568859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965393, 37.742779, 32.685249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410977, 0.085600, -0.907618,
		-0.781813, -0.545165, 0.302595,
		-0.468899, 0.833947, 0.290973,
		40.824722, 37.992962, 32.772541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319027, 36.678017, 32.703815>,  <41.152954, 37.409199, 32.568859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319027, 36.678017, 32.703815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332771, 36.801586, 32.323627>,  <41.341019, 36.875729, 32.095516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332771, 36.801586, 32.323627>,  <41.319027, 36.678017, 32.703815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332771, 36.801586, 32.323627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932729, -0.351474, -0.080515,
		-0.358937, -0.883760, -0.300220,
		0.034364, 0.308923, -0.950466,
		41.343079, 36.894264, 32.038486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576393, 36.005928, 32.190483>,  <41.319027, 36.678017, 32.703815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576393, 36.005928, 32.190483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669884, 36.391090, 32.136559>,  <41.725979, 36.622189, 32.104202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669884, 36.391090, 32.136559>,  <41.576393, 36.005928, 32.190483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669884, 36.391090, 32.136559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945429, -0.192702, 0.262736,
		0.227012, -0.188867, -0.955403,
		0.233730, 0.962910, -0.134815,
		41.740002, 36.679962, 32.096115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125568, 36.063545, 31.661772>,  <41.576393, 36.005928, 32.190483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125568, 36.063545, 31.661772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124092, 36.343060, 31.947899>,  <42.123207, 36.510769, 32.119576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124092, 36.343060, 31.947899>,  <42.125568, 36.063545, 31.661772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124092, 36.343060, 31.947899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873709, -0.345704, 0.342230,
		0.486435, 0.626243, -0.609262,
		-0.003694, 0.698790, 0.715317,
		42.122982, 36.552696, 32.162495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171650, 35.723713, 30.972429>,  <42.125568, 36.063545, 31.661772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171650, 35.723713, 30.972429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516945, 35.851826, 30.816362>,  <42.724121, 35.928692, 30.722721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516945, 35.851826, 30.816362>,  <42.171650, 35.723713, 30.972429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516945, 35.851826, 30.816362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443606, -0.112485, 0.889135,
		0.240888, -0.940619, -0.239182,
		0.863242, 0.320284, -0.390168,
		42.775917, 35.947910, 30.699312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701660, 35.216320, 31.168882>,  <42.171650, 35.723713, 30.972429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701660, 35.216320, 31.168882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807957, 35.594540, 31.093700>,  <42.871735, 35.821472, 31.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807957, 35.594540, 31.093700>,  <42.701660, 35.216320, 31.168882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807957, 35.594540, 31.093700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528582, 0.020138, 0.848643,
		0.806216, -0.324865, -0.494447,
		0.265737, 0.945546, -0.187953,
		42.887676, 35.878204, 31.037313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424465, 35.182030, 31.246655>,  <42.701660, 35.216320, 31.168882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424465, 35.182030, 31.246655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275696, 35.541306, 31.340412>,  <43.186436, 35.756870, 31.396666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275696, 35.541306, 31.340412>,  <43.424465, 35.182030, 31.246655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275696, 35.541306, 31.340412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498316, -0.019851, 0.866768,
		0.783171, 0.439170, -0.440197,
		-0.371920, 0.898185, 0.234392,
		43.164120, 35.810760, 31.410730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890175, 35.538910, 31.516020>,  <43.424465, 35.182030, 31.246655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890175, 35.538910, 31.516020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566433, 35.733841, 31.647144>,  <43.372189, 35.850800, 31.725819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566433, 35.733841, 31.647144>,  <43.890175, 35.538910, 31.516020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566433, 35.733841, 31.647144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434071, 0.120339, 0.892805,
		0.395637, 0.864889, -0.308930,
		-0.809354, 0.487325, 0.327813,
		43.323627, 35.880039, 31.745489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035431, 36.086094, 32.052353>,  <43.890175, 35.538910, 31.516020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035431, 36.086094, 32.052353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652027, 35.984161, 32.103462>,  <43.421986, 35.923000, 32.134129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652027, 35.984161, 32.103462>,  <44.035431, 36.086094, 32.052353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652027, 35.984161, 32.103462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174162, -0.168645, 0.970168,
		-0.225684, 0.952165, 0.206030,
		-0.958506, -0.254834, 0.127770,
		43.364475, 35.907711, 32.141792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542015, 36.546749, 32.551716>,  <44.035431, 36.086094, 32.052353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542015, 36.546749, 32.551716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454517, 36.156944, 32.531830>,  <43.402020, 35.923061, 32.519897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454517, 36.156944, 32.531830>,  <43.542015, 36.546749, 32.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454517, 36.156944, 32.531830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144029, -0.018149, 0.989407,
		-0.965095, 0.223585, -0.136389,
		-0.218741, -0.974515, -0.049718,
		43.388893, 35.864590, 32.516914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886059, 36.379459, 32.892258>,  <43.542015, 36.546749, 32.551716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886059, 36.379459, 32.892258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120720, 36.055569, 32.897636>,  <43.261517, 35.861233, 32.900864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120720, 36.055569, 32.897636>,  <42.886059, 36.379459, 32.892258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120720, 36.055569, 32.897636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100790, -0.056527, 0.993301,
		-0.803545, -0.584074, -0.114774,
		0.586648, -0.809730, 0.013447,
		43.296715, 35.812649, 32.901672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716217, 35.990074, 33.512451>,  <42.886059, 36.379459, 32.892258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716217, 35.990074, 33.512451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082481, 35.842266, 33.449181>,  <43.302238, 35.753582, 33.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082481, 35.842266, 33.449181>,  <42.716217, 35.990074, 33.512451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082481, 35.842266, 33.449181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208219, 0.099446, 0.973014,
		-0.343817, -0.923887, 0.168000,
		0.915661, -0.369520, -0.158180,
		43.357182, 35.731411, 33.401726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806995, 35.372150, 33.881409>,  <42.716217, 35.990074, 33.512451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806995, 35.372150, 33.881409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137283, 35.592609, 33.833359>,  <43.335457, 35.724884, 33.804527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137283, 35.592609, 33.833359>,  <42.806995, 35.372150, 33.881409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137283, 35.592609, 33.833359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093419, 0.076409, 0.992690,
		0.556294, -0.830904, 0.011605,
		0.825718, 0.551144, -0.120128,
		43.384998, 35.757954, 33.797321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403019, 34.999752, 34.141033>,  <42.806995, 35.372150, 33.881409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403019, 34.999752, 34.141033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462936, 35.395172, 34.133743>,  <43.498886, 35.632423, 34.129368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462936, 35.395172, 34.133743>,  <43.403019, 34.999752, 34.141033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462936, 35.395172, 34.133743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345971, -0.035140, 0.937587,
		0.926210, -0.146754, -0.347273,
		0.149797, 0.988549, -0.018226,
		43.507877, 35.691738, 34.128277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185619, 35.317833, 34.214886>,  <43.403019, 34.999752, 34.141033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185619, 35.317833, 34.214886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862404, 35.499012, 34.365570>,  <43.668472, 35.607719, 34.455982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862404, 35.499012, 34.365570>,  <44.185619, 35.317833, 34.214886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862404, 35.499012, 34.365570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374728, -0.098242, 0.921915,
		0.454584, 0.886110, -0.090347,
		-0.808042, 0.452943, 0.376710,
		43.619991, 35.634895, 34.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399822, 35.833748, 34.567333>,  <44.185619, 35.317833, 34.214886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399822, 35.833748, 34.567333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056290, 35.680676, 34.703548>,  <43.850170, 35.588833, 34.785278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056290, 35.680676, 34.703548>,  <44.399822, 35.833748, 34.567333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056290, 35.680676, 34.703548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419483, -0.143833, 0.896296,
		-0.294012, 0.912617, 0.284055,
		-0.858831, -0.382678, 0.340539,
		43.798641, 35.565872, 34.805710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151436, 35.725433, 34.394764>,  <44.399822, 35.833748, 34.567333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151436, 35.725433, 34.394764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456722, 35.830635, 34.158684>,  <45.639893, 35.893757, 34.017036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456722, 35.830635, 34.158684>,  <45.151436, 35.725433, 34.394764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456722, 35.830635, 34.158684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578056, 0.130222, 0.805539,
		0.288717, -0.955966, -0.052644,
		0.763213, 0.263004, -0.590199,
		45.685688, 35.909534, 33.981625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750935, 35.298443, 34.597729>,  <45.151436, 35.725433, 34.394764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750935, 35.298443, 34.597729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895638, 35.635338, 34.437847>,  <45.982460, 35.837475, 34.341919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895638, 35.635338, 34.437847>,  <45.750935, 35.298443, 34.597729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895638, 35.635338, 34.437847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393885, 0.250516, 0.884362,
		0.844977, -0.477363, -0.241119,
		0.361758, 0.842239, -0.399706,
		46.004166, 35.888008, 34.317936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592598, 35.356750, 34.586830>,  <45.750935, 35.298443, 34.597729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592598, 35.356750, 34.586830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383289, 35.694679, 34.631481>,  <46.257702, 35.897434, 34.658272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383289, 35.694679, 34.631481>,  <46.592598, 35.356750, 34.586830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383289, 35.694679, 34.631481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486220, 0.188415, 0.853282,
		0.699837, 0.500778, -0.509362,
		-0.523276, 0.844820, 0.111629,
		46.226307, 35.948124, 34.664970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057106, 35.784237, 34.966206>,  <46.592598, 35.356750, 34.586830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057106, 35.784237, 34.966206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688145, 35.929688, 35.018288>,  <46.466770, 36.016956, 35.049538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688145, 35.929688, 35.018288>,  <47.057106, 35.784237, 34.966206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688145, 35.929688, 35.018288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199076, 0.158716, 0.967046,
		0.330979, 0.917924, -0.218789,
		-0.922400, 0.363628, 0.130205,
		46.411427, 36.038776, 35.057350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254620, 35.094845, 35.152653>,  <47.057106, 35.784237, 34.966206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254620, 35.094845, 35.152653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549099, 34.858261, 35.021084>,  <47.725784, 34.716312, 34.942142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549099, 34.858261, 35.021084>,  <47.254620, 35.094845, 35.152653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.549099, 34.858261, 35.021084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148763, -0.615561, 0.773921,
		-0.660218, -0.520824, -0.541160,
		0.736194, -0.591461, -0.328926,
		47.769958, 34.680824, 34.922405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.319584, 34.627632, 23.232552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126984, 34.935825, 23.065449>,  <40.011425, 35.120739, 22.965187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126984, 34.935825, 23.065449>,  <40.319584, 34.627632, 23.232552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126984, 34.935825, 23.065449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456640, 0.186307, 0.869925,
		0.748092, 0.609630, 0.262126,
		-0.481496, 0.770481, -0.417756,
		39.982536, 35.166969, 22.940123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406090, 35.093754, 23.702599>,  <40.319584, 34.627632, 23.232552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406090, 35.093754, 23.702599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114689, 35.236679, 23.468809>,  <39.939846, 35.322433, 23.328535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114689, 35.236679, 23.468809>,  <40.406090, 35.093754, 23.702599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114689, 35.236679, 23.468809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544061, 0.216661, 0.810590,
		0.416263, 0.908509, 0.036560,
		-0.728507, 0.357309, -0.584473,
		39.896137, 35.343872, 23.293467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153549, 35.808407, 23.925158>,  <40.406090, 35.093754, 23.702599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153549, 35.808407, 23.925158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.841774, 35.662189, 23.721645>,  <39.654709, 35.574459, 23.599537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.841774, 35.662189, 23.721645>,  <40.153549, 35.808407, 23.925158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841774, 35.662189, 23.721645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618039, 0.315758, 0.719947,
		-0.102522, 0.875599, -0.472034,
		-0.779433, -0.365546, -0.508782,
		39.607944, 35.552525, 23.569010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677174, 36.360657, 23.857761>,  <40.153549, 35.808407, 23.925158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677174, 36.360657, 23.857761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.460629, 36.031158, 23.790382>,  <39.330700, 35.833462, 23.749954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.460629, 36.031158, 23.790382>,  <39.677174, 36.360657, 23.857761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460629, 36.031158, 23.790382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607937, 0.245101, 0.755207,
		-0.580809, 0.511247, -0.633472,
		-0.541362, -0.823743, -0.168449,
		39.298222, 35.784035, 23.739847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995083, 36.588947, 23.876875>,  <39.677174, 36.360657, 23.857761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995083, 36.588947, 23.876875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952381, 36.198235, 23.951168>,  <38.926762, 35.963806, 23.995745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952381, 36.198235, 23.951168>,  <38.995083, 36.588947, 23.876875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952381, 36.198235, 23.951168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604829, 0.212058, 0.767602,
		-0.789168, -0.030393, -0.613425,
		-0.106752, -0.976784, 0.185733,
		38.920357, 35.905201, 24.006887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299747, 36.447567, 23.899996>,  <38.995083, 36.588947, 23.876875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299747, 36.447567, 23.899996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449966, 36.137650, 24.103432>,  <38.540096, 35.951698, 24.225492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449966, 36.137650, 24.103432>,  <38.299747, 36.447567, 23.899996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449966, 36.137650, 24.103432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793153, 0.015201, 0.608832,
		-0.479449, -0.632034, -0.608819,
		0.375549, -0.774791, 0.508588,
		38.562630, 35.905212, 24.256008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739029, 35.995178, 24.203854>,  <38.299747, 36.447567, 23.899996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739029, 35.995178, 24.203854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060101, 35.892792, 24.419331>,  <38.252743, 35.831360, 24.548616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060101, 35.892792, 24.419331>,  <37.739029, 35.995178, 24.203854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060101, 35.892792, 24.419331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558533, -0.005844, 0.829462,
		-0.209171, -0.966667, -0.147660,
		0.802675, -0.255972, 0.538693,
		38.300903, 35.816002, 24.580938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450317, 35.486034, 24.645758>,  <37.739029, 35.995178, 24.203854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450317, 35.486034, 24.645758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785625, 35.615845, 24.821020>,  <37.986813, 35.693729, 24.926178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785625, 35.615845, 24.821020>,  <37.450317, 35.486034, 24.645758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785625, 35.615845, 24.821020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462873, -0.001171, 0.886424,
		0.288178, -0.945877, 0.149231,
		0.838274, 0.324523, 0.438158,
		38.037109, 35.713200, 24.952467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482403, 35.062042, 25.185387>,  <37.450317, 35.486034, 24.645758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482403, 35.062042, 25.185387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728367, 35.362225, 25.282301>,  <37.875946, 35.542336, 25.340450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728367, 35.362225, 25.282301>,  <37.482403, 35.062042, 25.185387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728367, 35.362225, 25.282301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398414, 0.030497, 0.916699,
		0.680552, -0.660218, 0.317745,
		0.614911, 0.750455, 0.242285,
		37.912842, 35.587360, 25.354986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666744, 34.943253, 25.789246>,  <37.482403, 35.062042, 25.185387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666744, 34.943253, 25.789246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778522, 35.327259, 25.782553>,  <37.845589, 35.557663, 25.778538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778522, 35.327259, 25.782553>,  <37.666744, 34.943253, 25.789246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778522, 35.327259, 25.782553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217633, 0.080304, 0.972722,
		0.935171, -0.268183, 0.231372,
		0.279447, 0.960015, -0.016732,
		37.862358, 35.615265, 25.777533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254604, 35.032143, 26.278839>,  <37.666744, 34.943253, 25.789246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254604, 35.032143, 26.278839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058434, 35.377266, 26.229790>,  <37.940731, 35.584339, 26.200359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058434, 35.377266, 26.229790>,  <38.254604, 35.032143, 26.278839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058434, 35.377266, 26.229790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264095, -0.013051, 0.964408,
		0.830502, 0.505357, 0.234265,
		-0.490428, 0.862811, -0.122623,
		37.911304, 35.636108, 26.193003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515640, 35.473618, 26.937204>,  <38.254604, 35.032143, 26.278839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515640, 35.473618, 26.937204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172035, 35.635380, 26.811632>,  <37.965874, 35.732437, 26.736288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172035, 35.635380, 26.811632>,  <38.515640, 35.473618, 26.937204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172035, 35.635380, 26.811632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298535, 0.102468, 0.948882,
		0.415900, 0.908822, 0.032707,
		-0.859014, 0.404404, -0.313932,
		37.914330, 35.756702, 26.717453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465679, 36.090363, 27.319376>,  <38.515640, 35.473618, 26.937204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465679, 36.090363, 27.319376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095055, 36.006897, 27.194187>,  <37.872681, 35.956818, 27.119074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095055, 36.006897, 27.194187>,  <38.465679, 36.090363, 27.319376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095055, 36.006897, 27.194187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333932, 0.073303, 0.939742,
		-0.173144, 0.975237, -0.137598,
		-0.926558, -0.208659, -0.312971,
		37.817085, 35.944298, 27.100296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059887, 36.622253, 27.657272>,  <38.465679, 36.090363, 27.319376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059887, 36.622253, 27.657272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802921, 36.335289, 27.549477>,  <37.648743, 36.163109, 27.484798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802921, 36.335289, 27.549477>,  <38.059887, 36.622253, 27.657272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802921, 36.335289, 27.549477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380847, -0.006291, 0.924617,
		-0.665027, 0.696620, -0.269183,
		-0.642414, -0.717412, -0.269489,
		37.610199, 36.120064, 27.468630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417435, 36.885555, 27.926374>,  <38.059887, 36.622253, 27.657272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417435, 36.885555, 27.926374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381519, 36.493076, 27.858034>,  <37.359970, 36.257587, 27.817030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381519, 36.493076, 27.858034>,  <37.417435, 36.885555, 27.926374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381519, 36.493076, 27.858034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437888, -0.115183, 0.891621,
		-0.894535, 0.154866, -0.419313,
		-0.089784, -0.981198, -0.170850,
		37.354584, 36.198715, 27.806780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597733, 36.723724, 28.008459>,  <37.417435, 36.885555, 27.926374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597733, 36.723724, 28.008459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831985, 36.409950, 28.090143>,  <36.972538, 36.221687, 28.139154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831985, 36.409950, 28.090143>,  <36.597733, 36.723724, 28.008459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831985, 36.409950, 28.090143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438036, -0.094288, 0.893999,
		-0.682030, -0.613002, -0.398828,
		0.585628, -0.784435, 0.204210,
		37.007675, 36.174622, 28.151405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188927, 36.264515, 28.247244>,  <36.597733, 36.723724, 28.008459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188927, 36.264515, 28.247244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538593, 36.127041, 28.384483>,  <36.748394, 36.044556, 28.466827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538593, 36.127041, 28.384483>,  <36.188927, 36.264515, 28.247244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538593, 36.127041, 28.384483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410990, -0.147213, 0.899675,
		-0.258698, -0.927474, -0.269940,
		0.874164, -0.343686, 0.343099,
		36.800842, 36.023937, 28.487413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023037, 35.688869, 28.651522>,  <36.188927, 36.264515, 28.247244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023037, 35.688869, 28.651522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382034, 35.817513, 28.772234>,  <36.597435, 35.894699, 28.844662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382034, 35.817513, 28.772234>,  <36.023037, 35.688869, 28.651522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382034, 35.817513, 28.772234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306764, -0.036379, 0.951090,
		0.316857, -0.946174, 0.066008,
		0.897495, 0.321608, 0.301779,
		36.651283, 35.913994, 28.862768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000618, 35.392300, 29.297562>,  <36.023037, 35.688869, 28.651522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000618, 35.392300, 29.297562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349201, 35.585922, 29.329166>,  <36.558353, 35.702095, 29.348129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349201, 35.585922, 29.329166>,  <36.000618, 35.392300, 29.297562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349201, 35.585922, 29.329166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154584, 0.118195, 0.980884,
		0.465468, -0.867016, 0.177830,
		0.871461, 0.484060, 0.079011,
		36.610638, 35.731140, 29.352869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551826, 35.003414, 29.663145>,  <36.000618, 35.392300, 29.297562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551826, 35.003414, 29.663145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609020, 35.395706, 29.716394>,  <36.643337, 35.631081, 29.748344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609020, 35.395706, 29.716394>,  <36.551826, 35.003414, 29.663145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609020, 35.395706, 29.716394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315248, -0.082370, 0.945428,
		0.938176, -0.177150, 0.297395,
		0.142987, 0.980731, 0.133124,
		36.651917, 35.689926, 29.756332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748615, 35.182678, 30.367575>,  <36.551826, 35.003414, 29.663145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748615, 35.182678, 30.367575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622623, 35.536732, 30.230558>,  <36.547028, 35.749165, 30.148350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622623, 35.536732, 30.230558>,  <36.748615, 35.182678, 30.367575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622623, 35.536732, 30.230558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543529, 0.127643, 0.829628,
		0.778052, 0.447496, 0.440889,
		-0.314979, 0.885130, -0.342540,
		36.528130, 35.802269, 30.127796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973442, 35.678642, 30.902027>,  <36.748615, 35.182678, 30.367575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973442, 35.678642, 30.902027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658710, 35.801327, 30.687801>,  <36.469872, 35.874935, 30.559265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658710, 35.801327, 30.687801>,  <36.973442, 35.678642, 30.902027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658710, 35.801327, 30.687801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528543, 0.113177, 0.841329,
		0.318655, 0.945051, 0.073057,
		-0.786830, 0.306707, -0.535564,
		36.422661, 35.893337, 30.527132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539558, 35.809731, 30.476921>,  <36.973442, 35.678642, 30.902027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539558, 35.809731, 30.476921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837418, 35.894398, 30.730122>,  <38.016132, 35.945198, 30.882042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837418, 35.894398, 30.730122>,  <37.539558, 35.809731, 30.476921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837418, 35.894398, 30.730122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644080, 0.020899, -0.764673,
		-0.175088, 0.977117, -0.120771,
		0.744651, 0.211671, 0.633000,
		38.060814, 35.957901, 30.920021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976295, 36.386860, 30.158691>,  <37.539558, 35.809731, 30.476921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976295, 36.386860, 30.158691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227837, 36.191452, 30.400646>,  <38.378761, 36.074207, 30.545818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227837, 36.191452, 30.400646>,  <37.976295, 36.386860, 30.158691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227837, 36.191452, 30.400646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691109, -0.005250, -0.722732,
		0.356247, 0.872535, 0.334321,
		0.628853, -0.488523, 0.604887,
		38.416492, 36.044895, 30.582111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563305, 36.802048, 30.097174>,  <37.976295, 36.386860, 30.158691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563305, 36.802048, 30.097174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656845, 36.442760, 30.246046>,  <38.712967, 36.227188, 30.335369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656845, 36.442760, 30.246046>,  <38.563305, 36.802048, 30.097174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656845, 36.442760, 30.246046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789080, -0.048313, -0.612388,
		0.568040, 0.436886, 0.697468,
		0.233847, -0.898219, 0.372181,
		38.726997, 36.173294, 30.357700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310589, 36.814873, 30.120405>,  <38.563305, 36.802048, 30.097174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310589, 36.814873, 30.120405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221115, 36.425522, 30.140423>,  <39.167431, 36.191910, 30.152433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221115, 36.425522, 30.140423>,  <39.310589, 36.814873, 30.120405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221115, 36.425522, 30.140423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775226, -0.208802, -0.596176,
		0.590753, -0.094560, 0.801292,
		-0.223685, -0.973376, 0.050045,
		39.154011, 36.133511, 30.155436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946156, 36.538548, 30.122730>,  <39.310589, 36.814873, 30.120405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946156, 36.538548, 30.122730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703495, 36.226891, 30.059591>,  <39.557899, 36.039898, 30.021708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703495, 36.226891, 30.059591>,  <39.946156, 36.538548, 30.122730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703495, 36.226891, 30.059591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541352, -0.259483, -0.799754,
		0.582160, -0.570625, 0.579204,
		-0.606653, -0.779138, -0.157848,
		39.521500, 35.993149, 30.012238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297852, 35.862740, 30.136488>,  <39.946156, 36.538548, 30.122730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297852, 35.862740, 30.136488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975048, 35.838593, 29.901510>,  <39.781364, 35.824104, 29.760525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975048, 35.838593, 29.901510>,  <40.297852, 35.862740, 30.136488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975048, 35.838593, 29.901510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588016, -0.173961, -0.789921,
		-0.054508, -0.982901, 0.175884,
		-0.807011, -0.060366, -0.587443,
		39.732944, 35.820484, 29.725277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540413, 35.327446, 29.784739>,  <40.297852, 35.862740, 30.136488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540413, 35.327446, 29.784739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233948, 35.495689, 29.590387>,  <40.050068, 35.596634, 29.473776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233948, 35.495689, 29.590387>,  <40.540413, 35.327446, 29.784739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233948, 35.495689, 29.590387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446920, -0.194561, -0.873160,
		-0.461792, -0.886134, -0.038912,
		-0.766166, 0.420609, -0.485877,
		40.004097, 35.621872, 29.444624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277973, 34.817398, 29.311117>,  <40.540413, 35.327446, 29.784739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277973, 34.817398, 29.311117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193909, 35.189716, 29.191488>,  <40.143471, 35.413109, 29.119711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193909, 35.189716, 29.191488>,  <40.277973, 34.817398, 29.311117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193909, 35.189716, 29.191488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379382, -0.204289, -0.902405,
		-0.901056, -0.303113, -0.310195,
		-0.210161, 0.930800, -0.299072,
		40.130859, 35.468956, 29.101767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957928, 34.786140, 28.642517>,  <40.277973, 34.817398, 29.311117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957928, 34.786140, 28.642517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081120, 35.166210, 28.661791>,  <40.155033, 35.394253, 28.673355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081120, 35.166210, 28.661791>,  <39.957928, 34.786140, 28.642517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081120, 35.166210, 28.661791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466729, -0.106759, -0.877933,
		-0.829043, 0.292873, -0.476353,
		0.307978, 0.950172, 0.048185,
		40.173512, 35.451263, 28.676247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901760, 35.044308, 27.981958>,  <39.957928, 34.786140, 28.642517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901760, 35.044308, 27.981958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152527, 35.301949, 28.157278>,  <40.302986, 35.456532, 28.262470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152527, 35.301949, 28.157278>,  <39.901760, 35.044308, 27.981958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152527, 35.301949, 28.157278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512937, 0.082208, -0.854481,
		-0.586404, 0.760510, -0.278846,
		0.626918, 0.644101, 0.438301,
		40.340603, 35.495178, 28.288769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040276, 35.402241, 27.528847>,  <39.901760, 35.044308, 27.981958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040276, 35.402241, 27.528847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343662, 35.495693, 27.772207>,  <40.525692, 35.551765, 27.918222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343662, 35.495693, 27.772207>,  <40.040276, 35.402241, 27.528847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343662, 35.495693, 27.772207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615901, 0.048249, -0.786345,
		-0.213067, 0.971128, -0.107297,
		0.758465, 0.233629, 0.608399,
		40.571201, 35.565781, 27.954727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330074, 36.137413, 27.307310>,  <40.040276, 35.402241, 27.528847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330074, 36.137413, 27.307310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.565910, 35.844090, 27.442739>,  <40.707413, 35.668095, 27.523996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.565910, 35.844090, 27.442739>,  <40.330074, 36.137413, 27.307310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565910, 35.844090, 27.442739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488862, -0.009693, -0.872307,
		0.642956, 0.679822, 0.352774,
		0.589594, -0.733313, 0.338571,
		40.742790, 35.624096, 27.544312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893181, 36.127041, 26.921795>,  <40.330074, 36.137413, 27.307310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893181, 36.127041, 26.921795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.901634, 35.750572, 27.056707>,  <40.906708, 35.524693, 27.137655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.901634, 35.750572, 27.056707>,  <40.893181, 36.127041, 26.921795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901634, 35.750572, 27.056707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407448, -0.299959, -0.862561,
		0.912984, 0.155656, 0.377136,
		0.021138, -0.941167, 0.337280,
		40.907974, 35.468224, 27.157892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552517, 35.870213, 26.733774>,  <40.893181, 36.127041, 26.921795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552517, 35.870213, 26.733774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286060, 35.578949, 26.798317>,  <41.126186, 35.404190, 26.837042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286060, 35.578949, 26.798317>,  <41.552517, 35.870213, 26.733774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286060, 35.578949, 26.798317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352001, -0.497681, -0.792722,
		0.657536, -0.471266, 0.587839,
		-0.666139, -0.728164, 0.161357,
		41.086220, 35.360500, 26.846724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947762, 35.266441, 26.740097>,  <41.552517, 35.870213, 26.733774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947762, 35.266441, 26.740097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.583042, 35.166523, 26.609724>,  <41.364212, 35.106571, 26.531500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.583042, 35.166523, 26.609724>,  <41.947762, 35.266441, 26.740097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583042, 35.166523, 26.609724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405687, -0.424966, -0.809210,
		0.063625, -0.870061, 0.488821,
		-0.911795, -0.249795, -0.325934,
		41.309505, 35.091583, 26.511944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142456, 34.701927, 26.407900>,  <41.947762, 35.266441, 26.740097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142456, 34.701927, 26.407900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.771168, 34.763680, 26.272511>,  <41.548393, 34.800732, 26.191277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.771168, 34.763680, 26.272511>,  <42.142456, 34.701927, 26.407900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771168, 34.763680, 26.272511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208046, -0.538839, -0.816315,
		-0.308408, -0.828142, 0.468045,
		-0.928225, 0.154383, -0.338474,
		41.492699, 34.809994, 26.170969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952770, 34.109295, 26.164854>,  <42.142456, 34.701927, 26.407900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952770, 34.109295, 26.164854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725002, 34.375095, 25.971277>,  <41.588341, 34.534576, 25.855131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725002, 34.375095, 25.971277>,  <41.952770, 34.109295, 26.164854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725002, 34.375095, 25.971277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241498, -0.427506, -0.871158,
		-0.785771, -0.612929, 0.082958,
		-0.569424, 0.664497, -0.483943,
		41.554176, 34.574444, 25.826094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626511, 33.742508, 25.650471>,  <41.952770, 34.109295, 26.164854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626511, 33.742508, 25.650471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600090, 34.116211, 25.510303>,  <41.584236, 34.340435, 25.426203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600090, 34.116211, 25.510303>,  <41.626511, 33.742508, 25.650471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600090, 34.116211, 25.510303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091669, -0.344020, -0.934477,
		-0.993597, -0.093846, -0.062920,
		-0.066051, 0.934261, -0.350420,
		41.580276, 34.396488, 25.405178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.681755, 33.779629, 24.883865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971024, 34.053501, 24.920151>,  <41.144585, 34.217823, 24.941923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971024, 34.053501, 24.920151>,  <40.681755, 33.779629, 24.883865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971024, 34.053501, 24.920151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295782, -0.188331, -0.936506,
		-0.624124, 0.704090, -0.338713,
		0.723175, 0.684682, 0.090715,
		41.187977, 34.258907, 24.947365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657856, 34.071270, 24.219725>,  <40.681755, 33.779629, 24.883865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657856, 34.071270, 24.219725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997597, 34.227654, 24.361570>,  <41.201443, 34.321484, 24.446678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997597, 34.227654, 24.361570>,  <40.657856, 34.071270, 24.219725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997597, 34.227654, 24.361570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379573, 0.014442, -0.925049,
		-0.366780, 0.920294, -0.136132,
		0.849351, 0.390962, 0.354616,
		41.252403, 34.344940, 24.467955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931496, 34.584980, 23.781837>,  <40.657856, 34.071270, 24.219725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931496, 34.584980, 23.781837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.254723, 34.488132, 23.996651>,  <41.448658, 34.430023, 24.125538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.254723, 34.488132, 23.996651>,  <40.931496, 34.584980, 23.781837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254723, 34.488132, 23.996651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555255, 0.008538, -0.831636,
		0.196767, 0.970210, 0.141335,
		0.808069, -0.242115, 0.537034,
		41.497143, 34.415497, 24.157761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349224, 35.164299, 23.737610>,  <40.931496, 34.584980, 23.781837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349224, 35.164299, 23.737610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.558559, 34.829765, 23.802929>,  <41.684162, 34.629047, 23.842119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.558559, 34.829765, 23.802929>,  <41.349224, 35.164299, 23.737610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558559, 34.829765, 23.802929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496724, 0.143707, -0.855929,
		0.692371, 0.529057, 0.490632,
		0.523342, -0.836329, 0.163297,
		41.715561, 34.578865, 23.851917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101200, 35.360451, 23.688528>,  <41.349224, 35.164299, 23.737610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101200, 35.360451, 23.688528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060776, 34.966026, 23.635666>,  <42.036522, 34.729370, 23.603949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060776, 34.966026, 23.635666>,  <42.101200, 35.360451, 23.688528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060776, 34.966026, 23.635666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661090, 0.032704, -0.749594,
		0.743469, -0.163122, 0.648571,
		-0.101064, -0.986064, -0.132153,
		42.030457, 34.670208, 23.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588436, 35.286045, 23.304865>,  <42.101200, 35.360451, 23.688528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588436, 35.286045, 23.304865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.447174, 34.917664, 23.238981>,  <42.362419, 34.696636, 23.199451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.447174, 34.917664, 23.238981>,  <42.588436, 35.286045, 23.304865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447174, 34.917664, 23.238981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657759, -0.119213, -0.743735,
		0.665309, -0.370991, 0.647865,
		-0.353153, -0.920952, -0.164709,
		42.341228, 34.641376, 23.189568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140144, 34.893787, 23.218201>,  <42.588436, 35.286045, 23.304865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140144, 34.893787, 23.218201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850330, 34.675873, 23.049320>,  <42.676441, 34.545124, 22.947992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850330, 34.675873, 23.049320>,  <43.140144, 34.893787, 23.218201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850330, 34.675873, 23.049320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578260, -0.147142, -0.802474,
		0.375057, -0.825562, 0.421640,
		-0.724533, -0.544791, -0.422202,
		42.632969, 34.512436, 22.922659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495628, 34.308193, 22.941509>,  <43.140144, 34.893787, 23.218201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495628, 34.308193, 22.941509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.153263, 34.342793, 22.737576>,  <42.947845, 34.363552, 22.615215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.153263, 34.342793, 22.737576>,  <43.495628, 34.308193, 22.941509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153263, 34.342793, 22.737576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478755, -0.240117, -0.844475,
		-0.195469, -0.966882, 0.164106,
		-0.855912, 0.086502, -0.509835,
		42.896488, 34.368744, 22.584625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464611, 33.728500, 22.529772>,  <43.495628, 34.308193, 22.941509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464611, 33.728500, 22.529772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.218815, 33.993382, 22.358244>,  <43.071339, 34.152309, 22.255327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.218815, 33.993382, 22.358244>,  <43.464611, 33.728500, 22.529772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218815, 33.993382, 22.358244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428258, -0.176506, -0.886251,
		-0.662567, -0.728240, -0.175133,
		-0.614491, 0.662203, -0.428822,
		43.034466, 34.192043, 22.229597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251728, 33.466839, 21.957052>,  <43.464611, 33.728500, 22.529772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251728, 33.466839, 21.957052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.185123, 33.851562, 21.870159>,  <43.145161, 34.082397, 21.818024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.185123, 33.851562, 21.870159>,  <43.251728, 33.466839, 21.957052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185123, 33.851562, 21.870159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654175, -0.057086, -0.754186,
		-0.737787, -0.267688, -0.619689,
		-0.166511, 0.961813, -0.217232,
		43.135170, 34.140106, 21.804989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295845, 33.494682, 21.212301>,  <43.251728, 33.466839, 21.957052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295845, 33.494682, 21.212301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.297390, 33.875061, 21.336039>,  <43.298317, 34.103287, 21.410280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.297390, 33.875061, 21.336039>,  <43.295845, 33.494682, 21.212301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297390, 33.875061, 21.336039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553277, 0.255651, -0.792797,
		-0.832989, 0.174211, -0.525148,
		0.003860, 0.950943, 0.309341,
		43.298550, 34.160343, 21.428841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077354, 33.923447, 20.685413>,  <43.295845, 33.494682, 21.212301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077354, 33.923447, 20.685413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.313770, 34.147282, 20.917807>,  <43.455620, 34.281582, 21.057241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.313770, 34.147282, 20.917807>,  <43.077354, 33.923447, 20.685413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313770, 34.147282, 20.917807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471894, 0.344276, -0.811659,
		-0.654209, 0.753883, -0.060584,
		0.591038, 0.559584, 0.580982,
		43.491081, 34.315155, 21.092102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017963, 34.541557, 20.429682>,  <43.077354, 33.923447, 20.685413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017963, 34.541557, 20.429682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.363304, 34.494659, 20.625999>,  <43.570507, 34.466518, 20.743790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.363304, 34.494659, 20.625999>,  <43.017963, 34.541557, 20.429682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363304, 34.494659, 20.625999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502969, 0.278239, -0.818294,
		-0.040616, 0.953329, 0.299190,
		0.863350, -0.117248, 0.490795,
		43.622311, 34.459484, 20.773237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438305, 35.155804, 20.295656>,  <43.017963, 34.541557, 20.429682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438305, 35.155804, 20.295656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.727436, 34.909443, 20.420994>,  <43.900913, 34.761627, 20.496197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.727436, 34.909443, 20.420994>,  <43.438305, 35.155804, 20.295656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727436, 34.909443, 20.420994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621111, 0.380310, -0.685263,
		0.302887, 0.689948, 0.657443,
		0.722828, -0.615902, 0.313343,
		43.944286, 34.724670, 20.514997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983856, 35.610172, 20.350039>,  <43.438305, 35.155804, 20.295656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983856, 35.610172, 20.350039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138477, 35.241390, 20.340441>,  <44.231251, 35.020123, 20.334682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138477, 35.241390, 20.340441>,  <43.983856, 35.610172, 20.350039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138477, 35.241390, 20.340441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746954, 0.328232, -0.578207,
		0.540956, 0.205587, 0.815537,
		0.386557, -0.921953, -0.023995,
		44.254444, 34.964806, 20.333242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726719, 35.749462, 20.271719>,  <43.983856, 35.610172, 20.350039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726719, 35.749462, 20.271719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.700516, 35.356949, 20.199280>,  <44.684795, 35.121441, 20.155815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.700516, 35.356949, 20.199280>,  <44.726719, 35.749462, 20.271719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700516, 35.356949, 20.199280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691802, 0.086131, -0.716932,
		0.719110, -0.172247, 0.673210,
		-0.065505, -0.981281, -0.181099,
		44.680866, 35.062565, 20.144951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352093, 35.462658, 20.398434>,  <44.726719, 35.749462, 20.271719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352093, 35.462658, 20.398434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165123, 35.218826, 20.142330>,  <45.052940, 35.072529, 19.988668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165123, 35.218826, 20.142330>,  <45.352093, 35.462658, 20.398434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165123, 35.218826, 20.142330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720836, 0.156460, -0.675216,
		0.511771, -0.777133, 0.366272,
		-0.467425, -0.609578, -0.640257,
		45.024895, 35.035954, 19.950253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813564, 34.836296, 20.416695>,  <45.352093, 35.462658, 20.398434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813564, 34.836296, 20.416695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.575245, 34.860077, 20.096323>,  <45.432251, 34.874344, 19.904100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.575245, 34.860077, 20.096323>,  <45.813564, 34.836296, 20.416695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575245, 34.860077, 20.096323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802846, 0.070701, -0.591980,
		0.021433, -0.995724, -0.089854,
		-0.595801, 0.059451, -0.800928,
		45.396503, 34.877911, 19.856045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235432, 34.387600, 20.025492>,  <45.813564, 34.836296, 20.416695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235432, 34.387600, 20.025492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.976654, 34.592667, 19.799700>,  <45.821388, 34.715706, 19.664225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.976654, 34.592667, 19.799700>,  <46.235432, 34.387600, 20.025492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976654, 34.592667, 19.799700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716189, 0.154369, -0.680620,
		-0.261794, -0.844596, -0.467035,
		-0.646944, 0.512668, -0.564478,
		45.782570, 34.746468, 19.630356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391712, 34.182041, 19.389147>,  <46.235432, 34.387600, 20.025492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391712, 34.182041, 19.389147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.195988, 34.526165, 19.331961>,  <46.078552, 34.732639, 19.297649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.195988, 34.526165, 19.331961>,  <46.391712, 34.182041, 19.389147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195988, 34.526165, 19.331961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660015, 0.258156, -0.705504,
		-0.570044, -0.439572, -0.694136,
		-0.489315, 0.860309, -0.142964,
		46.049194, 34.784256, 19.289072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376461, 34.295681, 18.680660>,  <46.391712, 34.182041, 19.389147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376461, 34.295681, 18.680660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.311573, 34.653149, 18.848015>,  <46.272640, 34.867630, 18.948427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.311573, 34.653149, 18.848015>,  <46.376461, 34.295681, 18.680660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311573, 34.653149, 18.848015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592769, 0.427229, -0.682715,
		-0.788865, 0.137254, -0.599043,
		-0.162223, 0.893664, 0.418387,
		46.262905, 34.921249, 18.973532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190758, 34.748325, 18.099672>,  <46.376461, 34.295681, 18.680660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190758, 34.748325, 18.099672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.316971, 34.972157, 18.406218>,  <46.392700, 35.106453, 18.590145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.316971, 34.972157, 18.406218>,  <46.190758, 34.748325, 18.099672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316971, 34.972157, 18.406218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640087, 0.470700, -0.607232,
		-0.700520, 0.682141, -0.209656,
		0.315532, 0.559576, 0.766364,
		46.411629, 35.140030, 18.636127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065620, 35.389404, 17.993366>,  <46.190758, 34.748325, 18.099672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065620, 35.389404, 17.993366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.421047, 35.383595, 18.176773>,  <46.634304, 35.380108, 18.286818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.421047, 35.383595, 18.176773>,  <46.065620, 35.389404, 17.993366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421047, 35.383595, 18.176773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365653, 0.626015, -0.688770,
		-0.277031, 0.779676, 0.561569,
		0.888567, -0.014528, 0.458516,
		46.687618, 35.379234, 18.314327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502422, 35.239609, 17.502272>,  <46.065620, 35.389404, 17.993366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502422, 35.239609, 17.502272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.481499, 35.634819, 17.444210>,  <45.468945, 35.871944, 17.409372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.481499, 35.634819, 17.444210>,  <45.502422, 35.239609, 17.502272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481499, 35.634819, 17.444210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969526, -0.015405, 0.244502,
		0.239338, 0.153520, 0.958722,
		-0.052305, 0.988026, -0.145154,
		45.465809, 35.931225, 17.400663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180111, 35.406971, 18.054256>,  <45.502422, 35.239609, 17.502272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180111, 35.406971, 18.054256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.143402, 35.697960, 17.782267>,  <45.121376, 35.872551, 17.619072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.143402, 35.697960, 17.782267>,  <45.180111, 35.406971, 18.054256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143402, 35.697960, 17.782267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943167, 0.155528, 0.293681,
		0.319399, 0.668280, 0.671852,
		-0.091769, 0.727470, -0.679975,
		45.115871, 35.916203, 17.578274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062721, 36.042900, 18.353313>,  <45.180111, 35.406971, 18.054256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062721, 36.042900, 18.353313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.896889, 36.066238, 17.990057>,  <44.797390, 36.080242, 17.772102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.896889, 36.066238, 17.990057>,  <45.062721, 36.042900, 18.353313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896889, 36.066238, 17.990057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836396, 0.368774, 0.405521,
		0.358559, 0.927686, -0.104087,
		-0.414580, 0.058345, -0.908140,
		44.772514, 36.083740, 17.717615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695332, 36.651237, 18.451969>,  <45.062721, 36.042900, 18.353313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695332, 36.651237, 18.451969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.541313, 36.475819, 18.127151>,  <44.448902, 36.370567, 17.932261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.541313, 36.475819, 18.127151>,  <44.695332, 36.651237, 18.451969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541313, 36.475819, 18.127151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922463, 0.209888, 0.324052,
		0.028325, 0.873854, -0.485363,
		-0.385046, -0.438550, -0.812043,
		44.425800, 36.344254, 17.883539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131096, 37.082237, 18.413254>,  <44.695332, 36.651237, 18.451969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131096, 37.082237, 18.413254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.068138, 36.778435, 18.160786>,  <44.030365, 36.596153, 18.009304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.068138, 36.778435, 18.160786>,  <44.131096, 37.082237, 18.413254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068138, 36.778435, 18.160786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962534, -0.024926, 0.270015,
		-0.220811, 0.650021, -0.727129,
		-0.157391, -0.759508, -0.631171,
		44.020920, 36.550583, 17.971434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551857, 37.220409, 17.835064>,  <44.131096, 37.082237, 18.413254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551857, 37.220409, 17.835064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.582840, 36.825882, 17.893280>,  <43.601429, 36.589165, 17.928209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.582840, 36.825882, 17.893280>,  <43.551857, 37.220409, 17.835064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582840, 36.825882, 17.893280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971905, -0.042157, 0.231567,
		-0.222262, -0.159389, -0.961870,
		0.077459, -0.986315, 0.145541,
		43.606079, 36.529987, 17.936943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997818, 36.860302, 17.530315>,  <43.551857, 37.220409, 17.835064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997818, 36.860302, 17.530315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.132545, 36.622135, 17.822077>,  <43.213383, 36.479237, 17.997133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.132545, 36.622135, 17.822077>,  <42.997818, 36.860302, 17.530315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132545, 36.622135, 17.822077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940925, -0.241482, 0.237376,
		0.034801, -0.766269, -0.641577,
		0.336823, -0.595415, 0.729406,
		43.233593, 36.443512, 18.040899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477142, 36.467728, 17.624352>,  <42.997818, 36.860302, 17.530315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477142, 36.467728, 17.624352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.715775, 36.342434, 17.919912>,  <42.858952, 36.267258, 18.097250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.715775, 36.342434, 17.919912>,  <42.477142, 36.467728, 17.624352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715775, 36.342434, 17.919912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788860, -0.398237, 0.468089,
		0.147637, -0.862143, -0.484677,
		0.596577, -0.313235, 0.738905,
		42.894749, 36.248463, 18.141584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169994, 35.794636, 17.899792>,  <42.477142, 36.467728, 17.624352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169994, 35.794636, 17.899792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.403233, 35.940735, 18.190060>,  <42.543175, 36.028393, 18.364220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.403233, 35.940735, 18.190060>,  <42.169994, 35.794636, 17.899792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403233, 35.940735, 18.190060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679695, -0.269935, 0.682019,
		0.444990, -0.890914, 0.090859,
		0.583095, 0.365248, 0.725668,
		42.578159, 36.050308, 18.407761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225983, 35.276611, 18.480457>,  <42.169994, 35.794636, 17.899792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225983, 35.276611, 18.480457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330818, 35.615864, 18.664621>,  <42.393719, 35.819416, 18.775120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330818, 35.615864, 18.664621>,  <42.225983, 35.276611, 18.480457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330818, 35.615864, 18.664621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550040, -0.260724, 0.793397,
		0.792948, -0.461182, 0.398177,
		0.262086, 0.848136, 0.460410,
		42.409443, 35.870304, 18.802744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447990, 35.057934, 19.153776>,  <42.225983, 35.276611, 18.480457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447990, 35.057934, 19.153776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347458, 35.444756, 19.169992>,  <42.287140, 35.676849, 19.179722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347458, 35.444756, 19.169992>,  <42.447990, 35.057934, 19.153776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347458, 35.444756, 19.169992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553925, -0.178056, 0.813304,
		0.793725, 0.181953, 0.580425,
		-0.251331, 0.967052, 0.040539,
		42.272057, 35.734871, 19.182154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608093, 35.245632, 19.862825>,  <42.447990, 35.057934, 19.153776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608093, 35.245632, 19.862825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.358963, 35.527298, 19.726450>,  <42.209484, 35.696297, 19.644625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.358963, 35.527298, 19.726450>,  <42.608093, 35.245632, 19.862825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358963, 35.527298, 19.726450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462024, 0.020624, 0.886628,
		0.631361, 0.709739, 0.312495,
		-0.622830, 0.704162, -0.340937,
		42.172115, 35.738548, 19.624168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592163, 35.757133, 20.310606>,  <42.608093, 35.245632, 19.862825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592163, 35.757133, 20.310606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245579, 35.782684, 20.112553>,  <42.037628, 35.798016, 19.993721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245579, 35.782684, 20.112553>,  <42.592163, 35.757133, 20.310606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245579, 35.782684, 20.112553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497720, -0.033238, 0.866700,
		0.038906, 0.997404, 0.060594,
		-0.866465, 0.063879, -0.495135,
		41.985638, 35.801849, 19.964012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229610, 36.283989, 20.691961>,  <42.592163, 35.757133, 20.310606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229610, 36.283989, 20.691961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929356, 36.122379, 20.482841>,  <41.749203, 36.025414, 20.357370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929356, 36.122379, 20.482841>,  <42.229610, 36.283989, 20.691961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929356, 36.122379, 20.482841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551731, -0.052047, 0.832397,
		-0.363516, 0.913268, -0.183843,
		-0.750633, -0.404021, -0.522798,
		41.704166, 36.001171, 20.326002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568699, 36.588634, 20.866261>,  <42.229610, 36.283989, 20.691961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568699, 36.588634, 20.866261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430450, 36.256474, 20.691452>,  <41.347504, 36.057178, 20.586567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430450, 36.256474, 20.691452>,  <41.568699, 36.588634, 20.866261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430450, 36.256474, 20.691452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721844, -0.062296, 0.689246,
		-0.599573, 0.553677, -0.577887,
		-0.345619, -0.830398, -0.437020,
		41.326763, 36.007355, 20.560347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836281, 36.634880, 20.894447>,  <41.568699, 36.588634, 20.866261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836281, 36.634880, 20.894447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927837, 36.247612, 20.853943>,  <40.982769, 36.015251, 20.829641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927837, 36.247612, 20.853943>,  <40.836281, 36.634880, 20.894447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927837, 36.247612, 20.853943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687547, -0.234423, 0.687258,
		-0.689122, -0.087684, -0.719321,
		0.228887, -0.968172, -0.101259,
		40.996502, 35.957161, 20.823565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146347, 36.208397, 20.860565>,  <40.836281, 36.634880, 20.894447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146347, 36.208397, 20.860565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437008, 35.953869, 20.964155>,  <40.611404, 35.801151, 21.026308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437008, 35.953869, 20.964155>,  <40.146347, 36.208397, 20.860565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437008, 35.953869, 20.964155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484653, -0.207639, 0.849704,
		-0.486912, -0.742954, -0.459277,
		0.726655, -0.636321, 0.258973,
		40.655006, 35.762974, 21.041847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872959, 35.670376, 21.079315>,  <40.146347, 36.208397, 20.860565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872959, 35.670376, 21.079315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.229462, 35.572380, 21.231968>,  <40.443363, 35.513584, 21.323561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.229462, 35.572380, 21.231968>,  <39.872959, 35.670376, 21.079315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229462, 35.572380, 21.231968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436906, -0.238278, 0.867373,
		-0.121561, -0.939790, -0.319403,
		0.891255, -0.244988, 0.381635,
		40.496838, 35.498882, 21.346458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848049, 34.977295, 21.299028>,  <39.872959, 35.670376, 21.079315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848049, 34.977295, 21.299028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139492, 35.147514, 21.513704>,  <40.314358, 35.249645, 21.642509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139492, 35.147514, 21.513704>,  <39.848049, 34.977295, 21.299028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139492, 35.147514, 21.513704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527151, -0.151883, 0.836088,
		0.437308, -0.892100, 0.113664,
		0.728610, 0.425547, 0.536691,
		40.358074, 35.275177, 21.674711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938992, 34.550240, 21.820938>,  <39.848049, 34.977295, 21.299028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938992, 34.550240, 21.820938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102573, 34.882442, 21.972206>,  <40.200722, 35.081764, 22.062967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102573, 34.882442, 21.972206>,  <39.938992, 34.550240, 21.820938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102573, 34.882442, 21.972206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424751, -0.193548, 0.884379,
		0.807678, -0.522298, 0.273607,
		0.408953, 0.830508, 0.378171,
		40.225258, 35.131596, 22.085657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026325, 34.424294, 22.516069>,  <39.938992, 34.550240, 21.820938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026325, 34.424294, 22.516069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047981, 34.823586, 22.525866>,  <40.060974, 35.063160, 22.531742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047981, 34.823586, 22.525866>,  <40.026325, 34.424294, 22.516069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047981, 34.823586, 22.525866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262331, -0.009446, 0.964932,
		0.963458, -0.058661, 0.261356,
		0.054135, 0.998233, 0.024489,
		40.064220, 35.123055, 22.533213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.807125, 35.448601, 28.610287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.559944, 35.604301, 28.337048>,  <41.411636, 35.697720, 28.173103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.559944, 35.604301, 28.337048>,  <41.807125, 35.448601, 28.610287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559944, 35.604301, 28.337048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699722, 0.123900, 0.703589,
		0.358508, 0.912762, 0.195802,
		-0.617949, 0.389250, -0.683098,
		41.374557, 35.721077, 28.132118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450935, 36.018318, 28.859367>,  <41.807125, 35.448601, 28.610287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450935, 36.018318, 28.859367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.207775, 35.881413, 28.572784>,  <41.061878, 35.799271, 28.400835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.207775, 35.881413, 28.572784>,  <41.450935, 36.018318, 28.859367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207775, 35.881413, 28.572784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789534, 0.164883, 0.591142,
		-0.084193, 0.925025, -0.370460,
		-0.607904, -0.342261, -0.716457,
		41.025406, 35.778736, 28.357847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998619, 36.509502, 28.878286>,  <41.450935, 36.018318, 28.859367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998619, 36.509502, 28.878286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811077, 36.196304, 28.714785>,  <40.698551, 36.008385, 28.616684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811077, 36.196304, 28.714785>,  <40.998619, 36.509502, 28.878286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811077, 36.196304, 28.714785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846502, 0.266193, 0.461060,
		-0.252202, 0.562185, -0.787618,
		-0.468859, -0.783000, -0.408756,
		40.670418, 35.961403, 28.592157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351109, 36.711189, 28.733810>,  <40.998619, 36.509502, 28.878286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351109, 36.711189, 28.733810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310871, 36.313873, 28.710993>,  <40.286728, 36.075485, 28.697302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310871, 36.313873, 28.710993>,  <40.351109, 36.711189, 28.733810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310871, 36.313873, 28.710993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795083, 0.045790, 0.604769,
		-0.598099, 0.106194, -0.794355,
		-0.100596, -0.993290, -0.057046,
		40.280693, 36.015884, 28.693878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620289, 36.600605, 28.766287>,  <40.351109, 36.711189, 28.733810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620289, 36.600605, 28.766287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.797283, 36.253208, 28.855671>,  <39.903481, 36.044769, 28.909302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.797283, 36.253208, 28.855671>,  <39.620289, 36.600605, 28.766287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797283, 36.253208, 28.855671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740824, -0.213589, 0.636836,
		-0.505356, -0.447335, -0.737907,
		0.442488, -0.868488, 0.223458,
		39.930031, 35.992661, 28.922709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070721, 36.029331, 28.674274>,  <39.620289, 36.600605, 28.766287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070721, 36.029331, 28.674274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344967, 35.923199, 28.945429>,  <39.509514, 35.859520, 29.108122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344967, 35.923199, 28.945429>,  <39.070721, 36.029331, 28.674274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344967, 35.923199, 28.945429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726113, -0.182894, 0.662804,
		-0.051881, -0.946652, -0.318055,
		0.685615, -0.265331, 0.677888,
		39.550652, 35.843597, 29.148794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692360, 35.515148, 29.059752>,  <39.070721, 36.029331, 28.674274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692360, 35.515148, 29.059752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028744, 35.572880, 29.268347>,  <39.230576, 35.607517, 29.393503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028744, 35.572880, 29.268347>,  <38.692360, 35.515148, 29.059752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028744, 35.572880, 29.268347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509524, -0.113153, 0.852984,
		0.182115, -0.983039, -0.021620,
		0.840963, 0.144326, 0.521489,
		39.281033, 35.616177, 29.424793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604172, 35.127960, 29.645617>,  <38.692360, 35.515148, 29.059752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604172, 35.127960, 29.645617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905865, 35.364323, 29.760132>,  <39.086880, 35.506138, 29.828840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905865, 35.364323, 29.760132>,  <38.604172, 35.127960, 29.645617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905865, 35.364323, 29.760132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357423, 0.003734, 0.933935,
		0.550797, -0.806733, 0.214019,
		0.754235, 0.590904, 0.286289,
		39.132133, 35.541595, 29.846018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775253, 34.925667, 30.324787>,  <38.604172, 35.127960, 29.645617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775253, 34.925667, 30.324787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927410, 35.293304, 30.283680>,  <39.018703, 35.513889, 30.259016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927410, 35.293304, 30.283680>,  <38.775253, 34.925667, 30.324787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927410, 35.293304, 30.283680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377614, 0.255795, 0.889930,
		0.844220, -0.299718, 0.444367,
		0.380395, 0.919096, -0.102770,
		39.041527, 35.569035, 30.252850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109722, 35.114006, 30.975159>,  <38.775253, 34.925667, 30.324787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109722, 35.114006, 30.975159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013474, 35.450310, 30.781157>,  <38.955723, 35.652092, 30.664755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013474, 35.450310, 30.781157>,  <39.109722, 35.114006, 30.975159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013474, 35.450310, 30.781157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359029, 0.387150, 0.849242,
		0.901776, 0.378478, 0.208699,
		-0.240622, 0.840755, -0.485007,
		38.941288, 35.702538, 30.635654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309998, 35.671356, 31.489344>,  <39.109722, 35.114006, 30.975159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309998, 35.671356, 31.489344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052330, 35.793331, 31.208755>,  <38.897732, 35.866516, 31.040401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052330, 35.793331, 31.208755>,  <39.309998, 35.671356, 31.489344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052330, 35.793331, 31.208755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615740, 0.337342, 0.712085,
		0.453780, 0.890624, -0.029540,
		-0.644165, 0.304941, -0.701472,
		38.859081, 35.884815, 30.998314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051311, 36.311134, 31.683943>,  <39.309998, 35.671356, 31.489344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051311, 36.311134, 31.683943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750706, 36.183048, 31.453224>,  <38.570343, 36.106197, 31.314793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750706, 36.183048, 31.453224>,  <39.051311, 36.311134, 31.683943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750706, 36.183048, 31.453224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658832, 0.409660, 0.630967,
		0.034244, 0.854190, -0.518833,
		-0.751510, -0.320217, -0.576796,
		38.525253, 36.086983, 31.280186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731953, 36.663895, 31.249857>,  <39.051311, 36.311134, 31.683943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731953, 36.663895, 31.249857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819946, 37.051743, 31.207079>,  <39.872742, 37.284451, 31.181412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819946, 37.051743, 31.207079>,  <39.731953, 36.663895, 31.249857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819946, 37.051743, 31.207079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120686, 0.135842, 0.983352,
		0.968009, -0.203418, 0.146904,
		0.219987, 0.969623, -0.106946,
		39.885941, 37.342628, 31.174995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154587, 36.359386, 31.850576>,  <39.731953, 36.663895, 31.249857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154587, 36.359386, 31.850576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230904, 36.074806, 31.580042>,  <40.276695, 35.904057, 31.417721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230904, 36.074806, 31.580042>,  <40.154587, 36.359386, 31.850576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230904, 36.074806, 31.580042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074610, -0.697511, 0.712679,
		-0.978790, -0.085514, -0.186163,
		0.190795, -0.711453, -0.676337,
		40.288143, 35.861370, 31.377140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149433, 36.909012, 32.258110>,  <40.154587, 36.359386, 31.850576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149433, 36.909012, 32.258110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114952, 37.272499, 32.421474>,  <40.094261, 37.490593, 32.519493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114952, 37.272499, 32.421474>,  <40.149433, 36.909012, 32.258110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114952, 37.272499, 32.421474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151365, 0.393230, -0.906895,
		-0.984712, -0.139998, 0.103650,
		-0.086205, 0.908719, 0.408409,
		40.089092, 37.545116, 32.543999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532196, 37.225716, 32.092632>,  <40.149433, 36.909012, 32.258110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532196, 37.225716, 32.092632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804192, 37.513599, 32.148685>,  <39.967388, 37.686329, 32.182320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804192, 37.513599, 32.148685>,  <39.532196, 37.225716, 32.092632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804192, 37.513599, 32.148685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136335, 0.311895, -0.940284,
		-0.720440, 0.620273, 0.310205,
		0.679984, 0.719710, 0.140137,
		40.008186, 37.729511, 32.190727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150997, 37.867687, 31.860569>,  <39.532196, 37.225716, 32.092632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150997, 37.867687, 31.860569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543919, 37.941055, 31.875704>,  <39.779671, 37.985077, 31.884785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543919, 37.941055, 31.875704>,  <39.150997, 37.867687, 31.860569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543919, 37.941055, 31.875704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039908, 0.402395, -0.914596,
		-0.182979, 0.896904, 0.402595,
		0.982307, 0.183418, 0.037836,
		39.838612, 37.996082, 31.887054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106655, 38.506603, 31.640802>,  <39.150997, 37.867687, 31.860569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106655, 38.506603, 31.640802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484337, 38.380287, 31.603363>,  <39.710945, 38.304497, 31.580900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484337, 38.380287, 31.603363>,  <39.106655, 38.506603, 31.640802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484337, 38.380287, 31.603363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089902, 0.520485, -0.849125,
		0.316858, 0.793331, 0.519834,
		0.944203, -0.315787, -0.093598,
		39.767597, 38.285553, 31.575283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379807, 39.055592, 31.162260>,  <39.106655, 38.506603, 31.640802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379807, 39.055592, 31.162260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632748, 38.745792, 31.155537>,  <39.784512, 38.559914, 31.151503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632748, 38.745792, 31.155537>,  <39.379807, 39.055592, 31.162260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632748, 38.745792, 31.155537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228753, 0.207408, -0.951133,
		0.740138, 0.597605, 0.308323,
		0.632351, -0.774500, -0.016807,
		39.822453, 38.513443, 31.150496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127522, 39.269276, 31.031002>,  <39.379807, 39.055592, 31.162260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127522, 39.269276, 31.031002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094906, 38.891621, 30.903280>,  <40.075336, 38.665028, 30.826647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094906, 38.891621, 30.903280>,  <40.127522, 39.269276, 31.031002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094906, 38.891621, 30.903280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288271, 0.284338, -0.914359,
		0.954071, -0.166600, 0.248984,
		-0.081537, -0.944138, -0.319304,
		40.070446, 38.608379, 30.807489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666256, 39.173069, 30.714718>,  <40.127522, 39.269276, 31.031002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666256, 39.173069, 30.714718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447254, 38.868504, 30.575871>,  <40.315853, 38.685764, 30.492561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447254, 38.868504, 30.575871>,  <40.666256, 39.173069, 30.714718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447254, 38.868504, 30.575871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288679, 0.217491, -0.932396,
		0.785434, -0.610694, 0.100728,
		-0.547502, -0.761414, -0.347119,
		40.283005, 38.640079, 30.471735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139030, 38.818954, 30.288494>,  <40.666256, 39.173069, 30.714718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139030, 38.818954, 30.288494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781887, 38.675964, 30.178936>,  <40.567600, 38.590172, 30.113201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781887, 38.675964, 30.178936>,  <41.139030, 38.818954, 30.288494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781887, 38.675964, 30.178936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309227, -0.044509, -0.949946,
		0.327392, -0.932861, 0.150281,
		-0.892856, -0.357475, -0.273895,
		40.514030, 38.568722, 30.096767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265285, 38.353184, 29.763008>,  <41.139030, 38.818954, 30.288494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265285, 38.353184, 29.763008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876926, 38.412983, 29.688166>,  <40.643909, 38.448864, 29.643261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876926, 38.412983, 29.688166>,  <41.265285, 38.353184, 29.763008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876926, 38.412983, 29.688166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166880, -0.138058, -0.976264,
		-0.171782, -0.979076, 0.109092,
		-0.970897, 0.149500, -0.187105,
		40.585655, 38.457832, 29.632034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970261, 37.703060, 29.444082>,  <41.265285, 38.353184, 29.763008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970261, 37.703060, 29.444082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749237, 38.023708, 29.352793>,  <40.616623, 38.216099, 29.298019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749237, 38.023708, 29.352793>,  <40.970261, 37.703060, 29.444082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749237, 38.023708, 29.352793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142657, -0.178820, -0.973485,
		-0.821175, -0.570464, -0.015548,
		-0.552558, 0.801620, -0.228223,
		40.583469, 38.264194, 29.284327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618095, 37.584961, 28.844296>,  <40.970261, 37.703060, 29.444082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618095, 37.584961, 28.844296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583748, 37.983372, 28.834892>,  <40.563141, 38.222420, 28.829250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583748, 37.983372, 28.834892>,  <40.618095, 37.584961, 28.844296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583748, 37.983372, 28.834892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166417, -0.008922, -0.986015,
		-0.982309, -0.088579, -0.164990,
		-0.085868, 0.996029, -0.023506,
		40.557987, 38.282181, 28.827841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306652, 37.735027, 28.250975>,  <40.618095, 37.584961, 28.844296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306652, 37.735027, 28.250975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459721, 38.093777, 28.339684>,  <40.551563, 38.309025, 28.392908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459721, 38.093777, 28.339684>,  <40.306652, 37.735027, 28.250975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459721, 38.093777, 28.339684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299391, 0.106707, -0.948145,
		-0.874029, 0.429225, -0.227682,
		0.382672, 0.896872, 0.221771,
		40.574524, 38.362839, 28.406216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108101, 38.152008, 27.702364>,  <40.306652, 37.735027, 28.250975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108101, 38.152008, 27.702364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396389, 38.345486, 27.901001>,  <40.569363, 38.461571, 28.020184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396389, 38.345486, 27.901001>,  <40.108101, 38.152008, 27.702364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396389, 38.345486, 27.901001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516304, 0.103491, -0.850129,
		-0.462593, 0.869098, -0.175144,
		0.720720, 0.483692, 0.496593,
		40.612606, 38.490593, 28.049978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262493, 38.787952, 27.331993>,  <40.108101, 38.152008, 27.702364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262493, 38.787952, 27.331993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.606709, 38.731949, 27.527901>,  <40.813236, 38.698345, 27.645445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.606709, 38.731949, 27.527901>,  <40.262493, 38.787952, 27.331993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606709, 38.731949, 27.527901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508978, 0.274916, -0.815698,
		-0.020441, 0.951220, 0.307836,
		0.860537, -0.140008, 0.489770,
		40.864868, 38.689945, 27.674831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120060, 39.505707, 27.326899>,  <40.262493, 38.787952, 27.331993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120060, 39.505707, 27.326899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998596, 39.831215, 27.128679>,  <39.925716, 40.026520, 27.009748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998596, 39.831215, 27.128679>,  <40.120060, 39.505707, 27.326899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998596, 39.831215, 27.128679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841518, 0.014834, 0.540025,
		0.446807, 0.580999, 0.680297,
		-0.303662, 0.813769, -0.495549,
		39.907497, 40.075344, 26.980015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040272, 40.058281, 27.856089>,  <40.120060, 39.505707, 27.326899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040272, 40.058281, 27.856089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816921, 40.117107, 27.529510>,  <39.682911, 40.152405, 27.333563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816921, 40.117107, 27.529510>,  <40.040272, 40.058281, 27.856089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816921, 40.117107, 27.529510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826113, -0.008596, 0.563439,
		0.075847, 0.989088, 0.126297,
		-0.558377, 0.147070, -0.816447,
		39.649406, 40.161228, 27.284576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504509, 40.492493, 28.052263>,  <40.040272, 40.058281, 27.856089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504509, 40.492493, 28.052263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344669, 40.340660, 27.718502>,  <39.248764, 40.249561, 27.518246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344669, 40.340660, 27.718502>,  <39.504509, 40.492493, 28.052263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344669, 40.340660, 27.718502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901557, -0.001963, 0.432656,
		-0.165868, 0.925154, -0.341434,
		-0.399603, -0.379586, -0.834405,
		39.224789, 40.226784, 27.468180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772930, 40.873150, 27.962786>,  <39.504509, 40.492493, 28.052263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772930, 40.873150, 27.962786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770882, 40.536625, 27.746576>,  <38.769653, 40.334709, 27.616850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770882, 40.536625, 27.746576>,  <38.772930, 40.873150, 27.962786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770882, 40.536625, 27.746576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864088, -0.268336, 0.425850,
		-0.503315, 0.469242, -0.725593,
		-0.005125, -0.841313, -0.540524,
		38.769344, 40.284229, 27.584419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145279, 40.844177, 27.653839>,  <38.772930, 40.873150, 27.962786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145279, 40.844177, 27.653839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297600, 40.475681, 27.685585>,  <38.388992, 40.254581, 27.704632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297600, 40.475681, 27.685585>,  <38.145279, 40.844177, 27.653839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297600, 40.475681, 27.685585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874019, -0.330610, 0.356073,
		-0.301789, -0.204965, -0.931081,
		0.380807, -0.921242, 0.079369,
		38.411842, 40.199310, 27.709394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596199, 40.327610, 27.474512>,  <38.145279, 40.844177, 27.653839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596199, 40.327610, 27.474512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842762, 40.105808, 27.698145>,  <37.990700, 39.972729, 27.832325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842762, 40.105808, 27.698145>,  <37.596199, 40.327610, 27.474512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842762, 40.105808, 27.698145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787299, -0.446879, 0.424806,
		0.014286, -0.702017, -0.712017,
		0.616407, -0.554501, 0.559081,
		38.027683, 39.939457, 27.865870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179913, 39.731293, 27.513371>,  <37.596199, 40.327610, 27.474512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179913, 39.731293, 27.513371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.450508, 39.672894, 27.802105>,  <37.612865, 39.637856, 27.975346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.450508, 39.672894, 27.802105>,  <37.179913, 39.731293, 27.513371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450508, 39.672894, 27.802105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705832, -0.408229, 0.578921,
		0.210156, -0.901130, -0.379209,
		0.676487, -0.145994, 0.721838,
		37.653454, 39.629093, 28.018656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090858, 39.055069, 27.763123>,  <37.179913, 39.731293, 27.513371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090858, 39.055069, 27.763123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.286911, 39.251858, 28.050938>,  <37.404541, 39.369930, 28.223627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.286911, 39.251858, 28.050938>,  <37.090858, 39.055069, 27.763123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286911, 39.251858, 28.050938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708109, -0.256638, 0.657814,
		0.508289, -0.831924, 0.222587,
		0.490127, 0.491975, 0.719539,
		37.433949, 39.399452, 28.266800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985081, 38.578480, 28.338465>,  <37.090858, 39.055069, 27.763123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985081, 38.578480, 28.338465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.128353, 38.889935, 28.544544>,  <37.214317, 39.076809, 28.668192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.128353, 38.889935, 28.544544>,  <36.985081, 38.578480, 28.338465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128353, 38.889935, 28.544544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658469, -0.180534, 0.730634,
		0.661911, -0.600940, 0.448046,
		0.358180, 0.778640, 0.515197,
		37.235806, 39.123528, 28.699104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224995, 38.361183, 29.059383>,  <36.985081, 38.578480, 28.338465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224995, 38.361183, 29.059383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134018, 38.750126, 29.080532>,  <37.079433, 38.983490, 29.093222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134018, 38.750126, 29.080532>,  <37.224995, 38.361183, 29.059383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134018, 38.750126, 29.080532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490406, -0.161278, 0.856441,
		0.841293, 0.168860, 0.513530,
		-0.227440, 0.972356, 0.052872,
		37.065784, 39.041832, 29.096394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358101, 38.458248, 29.733568>,  <37.224995, 38.361183, 29.059383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358101, 38.458248, 29.733568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134987, 38.772438, 29.626310>,  <37.001118, 38.960953, 29.561956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134987, 38.772438, 29.626310>,  <37.358101, 38.458248, 29.733568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134987, 38.772438, 29.626310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597853, -0.156144, 0.786251,
		0.575712, 0.598872, 0.556694,
		-0.557788, 0.785476, -0.268143,
		36.967651, 39.008080, 29.545868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290993, 38.779140, 30.346754>,  <37.358101, 38.458248, 29.733568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290993, 38.779140, 30.346754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005817, 38.919815, 30.104092>,  <36.834713, 39.004219, 29.958494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005817, 38.919815, 30.104092>,  <37.290993, 38.779140, 30.346754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005817, 38.919815, 30.104092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683064, -0.152687, 0.714220,
		0.158552, 0.923582, 0.349080,
		-0.712941, 0.351686, -0.606657,
		36.791935, 39.025322, 29.922094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.178215, 40.982536, 25.004866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864571, 41.030827, 24.761358>,  <42.676384, 41.059803, 24.615253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864571, 41.030827, 24.761358>,  <43.178215, 40.982536, 25.004866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864571, 41.030827, 24.761358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618811, -0.077197, 0.781738,
		0.047382, 0.989680, 0.135239,
		-0.784110, 0.120728, -0.608766,
		42.629337, 41.067043, 24.578728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735878, 41.511246, 25.232832>,  <43.178215, 40.982536, 25.004866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735878, 41.511246, 25.232832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478394, 41.293541, 25.017643>,  <42.323902, 41.162918, 24.888531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478394, 41.293541, 25.017643>,  <42.735878, 41.511246, 25.232832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478394, 41.293541, 25.017643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719172, 0.189948, 0.668364,
		-0.261577, 0.817130, -0.513689,
		-0.643715, -0.544259, -0.537971,
		42.285278, 41.130264, 24.856251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179070, 41.983913, 25.078302>,  <42.735878, 41.511246, 25.232832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179070, 41.983913, 25.078302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058899, 41.603485, 25.049438>,  <41.986797, 41.375229, 25.032120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058899, 41.603485, 25.049438>,  <42.179070, 41.983913, 25.078302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058899, 41.603485, 25.049438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713603, 0.173925, 0.678617,
		-0.632862, 0.255370, -0.730939,
		-0.300427, -0.951071, -0.072162,
		41.968769, 41.318165, 25.027790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398964, 41.972145, 25.009798>,  <42.179070, 41.983913, 25.078302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398964, 41.972145, 25.009798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507397, 41.602245, 25.116646>,  <41.572456, 41.380306, 25.180754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507397, 41.602245, 25.116646>,  <41.398964, 41.972145, 25.009798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507397, 41.602245, 25.116646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806314, -0.066600, 0.587726,
		-0.525709, -0.374705, -0.763692,
		0.271086, -0.924749, 0.267118,
		41.588722, 41.324821, 25.196781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750996, 41.584858, 25.102190>,  <41.398964, 41.972145, 25.009798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750996, 41.584858, 25.102190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984894, 41.313538, 25.280170>,  <41.125233, 41.150745, 25.386959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984894, 41.313538, 25.280170>,  <40.750996, 41.584858, 25.102190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984894, 41.313538, 25.280170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733469, -0.207760, 0.647193,
		-0.346548, -0.704802, -0.618998,
		0.584746, -0.678299, 0.444952,
		41.160316, 41.110046, 25.413656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234108, 40.993195, 25.313240>,  <40.750996, 41.584858, 25.102190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234108, 40.993195, 25.313240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583279, 40.940159, 25.501036>,  <40.792782, 40.908337, 25.613714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583279, 40.940159, 25.501036>,  <40.234108, 40.993195, 25.313240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583279, 40.940159, 25.501036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471793, -0.474344, 0.743242,
		0.124152, -0.870297, -0.476622,
		0.872925, -0.132593, 0.469491,
		40.845158, 40.900379, 25.641884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231239, 40.271770, 25.387388>,  <40.234108, 40.993195, 25.313240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231239, 40.271770, 25.387388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453671, 40.460773, 25.660889>,  <40.587128, 40.574173, 25.824989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453671, 40.460773, 25.660889>,  <40.231239, 40.271770, 25.387388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453671, 40.460773, 25.660889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507912, -0.457995, 0.729566,
		0.657878, -0.752981, -0.014690,
		0.556077, 0.472504, 0.683753,
		40.620495, 40.602524, 25.866014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395267, 39.654186, 25.820337>,  <40.231239, 40.271770, 25.387388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395267, 39.654186, 25.820337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418953, 39.998562, 26.022440>,  <40.433163, 40.205185, 26.143702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418953, 39.998562, 26.022440>,  <40.395267, 39.654186, 25.820337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418953, 39.998562, 26.022440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440841, -0.431563, 0.787028,
		0.895630, -0.269338, 0.353983,
		0.059211, 0.860936, 0.505256,
		40.436718, 40.256844, 26.174017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480885, 39.437389, 26.516430>,  <40.395267, 39.654186, 25.820337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480885, 39.437389, 26.516430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348877, 39.814255, 26.539833>,  <40.269672, 40.040375, 26.553875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348877, 39.814255, 26.539833>,  <40.480885, 39.437389, 26.516430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348877, 39.814255, 26.539833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489971, -0.223943, 0.842483,
		0.806857, 0.249366, 0.535536,
		-0.330016, 0.942161, 0.058508,
		40.249870, 40.096905, 26.557384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954700, 39.503418, 27.148399>,  <40.480885, 39.437389, 26.516430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954700, 39.503418, 27.148399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115231, 39.167156, 27.293859>,  <41.211548, 38.965401, 27.381136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115231, 39.167156, 27.293859>,  <40.954700, 39.503418, 27.148399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115231, 39.167156, 27.293859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840213, 0.179816, -0.511574,
		0.364667, 0.510849, 0.778493,
		0.401323, -0.840654, 0.363649,
		41.235626, 38.914959, 27.402954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626877, 39.746437, 27.387547>,  <40.954700, 39.503418, 27.148399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626877, 39.746437, 27.387547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617481, 39.352879, 27.316679>,  <41.611843, 39.116741, 27.274158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617481, 39.352879, 27.316679>,  <41.626877, 39.746437, 27.387547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617481, 39.352879, 27.316679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763318, 0.096793, -0.638731,
		0.645596, -0.150236, 0.748755,
		-0.023486, -0.983900, -0.177167,
		41.610435, 39.057709, 27.263529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340878, 39.553577, 27.255756>,  <41.626877, 39.746437, 27.387547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340878, 39.553577, 27.255756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146450, 39.229416, 27.124928>,  <42.029793, 39.034920, 27.046431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146450, 39.229416, 27.124928>,  <42.340878, 39.553577, 27.255756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146450, 39.229416, 27.124928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651167, -0.086247, -0.754018,
		0.582853, -0.579484, 0.569633,
		-0.486070, -0.810408, -0.327072,
		42.000629, 38.986294, 27.026806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810974, 38.989506, 27.267509>,  <42.340878, 39.553577, 27.255756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810974, 38.989506, 27.267509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539253, 38.857220, 27.005463>,  <42.376221, 38.777847, 26.848234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539253, 38.857220, 27.005463>,  <42.810974, 38.989506, 27.267509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539253, 38.857220, 27.005463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733341, -0.272297, -0.622949,
		0.027634, -0.903593, 0.427500,
		-0.679299, -0.330718, -0.655117,
		42.335464, 38.758003, 26.808928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866592, 38.290295, 27.205978>,  <42.810974, 38.989506, 27.267509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866592, 38.290295, 27.205978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712242, 38.456470, 26.876493>,  <42.619633, 38.556175, 26.678802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712242, 38.456470, 26.876493>,  <42.866592, 38.290295, 27.205978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712242, 38.456470, 26.876493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830743, -0.231819, -0.506088,
		-0.401204, -0.879583, -0.255674,
		-0.385876, 0.415445, -0.823714,
		42.596478, 38.581104, 26.629379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018414, 37.894981, 26.690586>,  <42.866592, 38.290295, 27.205978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018414, 37.894981, 26.690586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945732, 38.226906, 26.479536>,  <42.902122, 38.426060, 26.352905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945732, 38.226906, 26.479536>,  <43.018414, 37.894981, 26.690586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945732, 38.226906, 26.479536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821290, -0.167019, -0.545516,
		-0.540801, -0.532460, -0.651169,
		-0.181708, 0.829814, -0.527627,
		42.891220, 38.475849, 26.321247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323933, 37.696583, 26.152174>,  <43.018414, 37.894981, 26.690586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323933, 37.696583, 26.152174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242748, 38.082905, 26.087637>,  <43.194038, 38.314697, 26.048914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242748, 38.082905, 26.087637>,  <43.323933, 37.696583, 26.152174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242748, 38.082905, 26.087637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719173, 0.035209, -0.693939,
		-0.664527, -0.256880, -0.701725,
		-0.202965, 0.965802, -0.161344,
		43.181858, 38.372646, 26.039234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193726, 37.790680, 25.313908>,  <43.323933, 37.696583, 26.152174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193726, 37.790680, 25.313908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293041, 38.138271, 25.485130>,  <43.352631, 38.346825, 25.587864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293041, 38.138271, 25.485130>,  <43.193726, 37.790680, 25.313908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293041, 38.138271, 25.485130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753175, 0.104710, -0.649433,
		-0.609164, 0.483648, -0.628493,
		0.248287, 0.868977, 0.428057,
		43.367527, 38.398964, 25.613548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212029, 38.295254, 24.778448>,  <43.193726, 37.790680, 25.313908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212029, 38.295254, 24.778448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427998, 38.442699, 25.081133>,  <43.557579, 38.531166, 25.262743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427998, 38.442699, 25.081133>,  <43.212029, 38.295254, 24.778448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427998, 38.442699, 25.081133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784659, 0.104944, -0.610980,
		-0.304626, 0.923641, -0.232572,
		0.539919, 0.368611, 0.756712,
		43.589973, 38.553284, 25.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458824, 38.846767, 24.429867>,  <43.212029, 38.295254, 24.778448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458824, 38.846767, 24.429867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705048, 38.769604, 24.735514>,  <43.852783, 38.723305, 24.918901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705048, 38.769604, 24.735514>,  <43.458824, 38.846767, 24.429867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705048, 38.769604, 24.735514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787710, 0.180774, -0.588926,
		-0.024521, 0.964420, 0.263236,
		0.615558, -0.192913, 0.764116,
		43.889713, 38.711731, 24.964748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006359, 39.290989, 24.327040>,  <43.458824, 38.846767, 24.429867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006359, 39.290989, 24.327040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162300, 39.047428, 24.603371>,  <44.255867, 38.901291, 24.769169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162300, 39.047428, 24.603371>,  <44.006359, 39.290989, 24.327040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162300, 39.047428, 24.603371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819652, -0.112492, -0.561708,
		0.419740, 0.785225, 0.455236,
		0.389857, -0.608906, 0.690829,
		44.279259, 38.864758, 24.810619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657803, 39.486862, 24.274155>,  <44.006359, 39.290989, 24.327040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657803, 39.486862, 24.274155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670692, 39.134113, 24.462307>,  <44.678425, 38.922462, 24.575199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670692, 39.134113, 24.462307>,  <44.657803, 39.486862, 24.274155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670692, 39.134113, 24.462307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799132, -0.259926, -0.542057,
		0.600291, 0.393366, 0.696358,
		0.032226, -0.881874, 0.470382,
		44.680359, 38.869553, 24.603422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375607, 39.382835, 24.385733>,  <44.657803, 39.486862, 24.274155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375607, 39.382835, 24.385733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208076, 39.020046, 24.403557>,  <45.107559, 38.802372, 24.414251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208076, 39.020046, 24.403557>,  <45.375607, 39.382835, 24.385733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208076, 39.020046, 24.403557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605732, -0.315599, -0.730401,
		0.676518, -0.278916, 0.681563,
		-0.418821, -0.906975, 0.044560,
		45.082432, 38.747955, 24.416925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936504, 38.811028, 24.337442>,  <45.375607, 39.382835, 24.385733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936504, 38.811028, 24.337442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585629, 38.679817, 24.197195>,  <45.375103, 38.601089, 24.113047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585629, 38.679817, 24.197195>,  <45.936504, 38.811028, 24.337442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585629, 38.679817, 24.197195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456267, -0.342073, -0.821466,
		0.149529, -0.880557, 0.449733,
		-0.877190, -0.328031, -0.350619,
		45.322472, 38.581409, 24.092009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.901424, 36.519466, 19.861488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038754, 36.830189, 20.072659>,  <39.121151, 37.016621, 20.199360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038754, 36.830189, 20.072659>,  <38.901424, 36.519466, 19.861488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038754, 36.830189, 20.072659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643245, -0.215100, 0.734825,
		0.684371, -0.591867, 0.425827,
		0.343324, 0.776804, 0.527924,
		39.141750, 37.063229, 20.231035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947762, 36.363773, 20.562424>,  <38.901424, 36.519466, 19.861488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947762, 36.363773, 20.562424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915920, 36.760223, 20.605001>,  <38.896816, 36.998093, 20.630548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915920, 36.760223, 20.605001>,  <38.947762, 36.363773, 20.562424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915920, 36.760223, 20.605001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635016, -0.132729, 0.761011,
		0.768387, -0.007017, 0.639947,
		-0.079599, 0.991128, 0.106443,
		38.892040, 37.057560, 20.636934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087734, 36.451279, 21.222683>,  <38.947762, 36.363773, 20.562424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087734, 36.451279, 21.222683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896496, 36.787895, 21.122099>,  <38.781754, 36.989864, 21.061749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896496, 36.787895, 21.122099>,  <39.087734, 36.451279, 21.222683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896496, 36.787895, 21.122099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513022, -0.035178, 0.857655,
		0.712907, 0.539044, 0.448548,
		-0.478093, 0.841543, -0.251463,
		38.753067, 37.040359, 21.046659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142597, 37.027020, 21.775328>,  <39.087734, 36.451279, 21.222683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142597, 37.027020, 21.775328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.821712, 37.159477, 21.576609>,  <38.629181, 37.238953, 21.457376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.821712, 37.159477, 21.576609>,  <39.142597, 37.027020, 21.775328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821712, 37.159477, 21.576609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423277, 0.271406, 0.864393,
		0.421070, 0.903706, -0.077560,
		-0.802208, 0.331141, -0.496798,
		38.581051, 37.258820, 21.427568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031288, 37.692364, 22.085732>,  <39.142597, 37.027020, 21.775328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031288, 37.692364, 22.085732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701485, 37.573269, 21.893257>,  <38.503601, 37.501812, 21.777773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701485, 37.573269, 21.893257>,  <39.031288, 37.692364, 22.085732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701485, 37.573269, 21.893257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544315, 0.184959, 0.818237,
		-0.154619, 0.936560, -0.314562,
		-0.824508, -0.297735, -0.481185,
		38.454132, 37.483948, 21.748901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543026, 38.236126, 22.210896>,  <39.031288, 37.692364, 22.085732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543026, 38.236126, 22.210896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.333920, 37.908726, 22.115593>,  <38.208454, 37.712284, 22.058413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.333920, 37.908726, 22.115593>,  <38.543026, 38.236126, 22.210896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333920, 37.908726, 22.115593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607446, 0.161573, 0.777756,
		-0.598102, 0.551311, -0.581662,
		-0.522766, -0.818505, -0.238255,
		38.177090, 37.663174, 22.044117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836006, 38.414921, 22.435560>,  <38.543026, 38.236126, 22.210896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836006, 38.414921, 22.435560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834888, 38.017776, 22.387852>,  <37.834217, 37.779491, 22.359226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834888, 38.017776, 22.387852>,  <37.836006, 38.414921, 22.435560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834888, 38.017776, 22.387852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509803, -0.101194, 0.854319,
		-0.860287, 0.063197, -0.505878,
		-0.002799, -0.992857, -0.119274,
		37.834049, 37.719921, 22.352070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195217, 38.121353, 22.572321>,  <37.836006, 38.414921, 22.435560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195217, 38.121353, 22.572321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447174, 37.814777, 22.622589>,  <37.598351, 37.630829, 22.652750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447174, 37.814777, 22.622589>,  <37.195217, 38.121353, 22.572321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447174, 37.814777, 22.622589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437736, -0.216671, 0.872606,
		-0.641574, -0.604662, -0.471981,
		0.629896, -0.766445, 0.125672,
		37.636143, 37.584843, 22.660292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755653, 37.627575, 22.825809>,  <37.195217, 38.121353, 22.572321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755653, 37.627575, 22.825809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110832, 37.464954, 22.911846>,  <37.323940, 37.367382, 22.963469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110832, 37.464954, 22.911846>,  <36.755653, 37.627575, 22.825809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110832, 37.464954, 22.911846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351117, -0.297096, 0.887948,
		-0.297096, -0.863973, -0.406553,
		-0.887948, 0.406553, -0.215090,
		37.377216, 37.342987, 22.976374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671471, 36.937344, 23.003605>,  <36.755653, 37.627575, 22.825809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671471, 36.937344, 23.003605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.020618, 37.050358, 23.162741>,  <37.230106, 37.118164, 23.258223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.020618, 37.050358, 23.162741>,  <36.671471, 36.937344, 23.003605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020618, 37.050358, 23.162741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324585, -0.272579, 0.905729,
		0.364341, -0.919715, -0.146220,
		0.872869, 0.282533, 0.397838,
		37.282478, 37.135117, 23.282091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738419, 36.422703, 23.503931>,  <36.671471, 36.937344, 23.003605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738419, 36.422703, 23.503931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996258, 36.695576, 23.641989>,  <37.150963, 36.859299, 23.724823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996258, 36.695576, 23.641989>,  <36.738419, 36.422703, 23.503931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996258, 36.695576, 23.641989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404290, -0.079002, 0.911213,
		0.648879, -0.726903, 0.224874,
		0.644598, 0.682181, 0.345142,
		37.189636, 36.900230, 23.745531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016647, 36.180000, 24.199850>,  <36.738419, 36.422703, 23.503931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016647, 36.180000, 24.199850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032890, 36.578983, 24.176455>,  <37.042637, 36.818375, 24.162418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032890, 36.578983, 24.176455>,  <37.016647, 36.180000, 24.199850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032890, 36.578983, 24.176455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382073, 0.069589, 0.921508,
		0.923239, -0.015075, 0.383930,
		0.040609, 0.997462, -0.058488,
		37.045074, 36.878223, 24.158909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338306, 36.275082, 24.730892>,  <37.016647, 36.180000, 24.199850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338306, 36.275082, 24.730892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172348, 36.632801, 24.663845>,  <37.072773, 36.847431, 24.623617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172348, 36.632801, 24.663845>,  <37.338306, 36.275082, 24.730892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172348, 36.632801, 24.663845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296903, 0.041067, 0.954024,
		0.860062, 0.445591, 0.248480,
		-0.414900, 0.894294, -0.167618,
		37.047878, 36.901089, 24.613560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472084, 36.748913, 25.296627>,  <37.338306, 36.275082, 24.730892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472084, 36.748913, 25.296627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166958, 36.930981, 25.112919>,  <36.983883, 37.040222, 25.002695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166958, 36.930981, 25.112919>,  <37.472084, 36.748913, 25.296627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166958, 36.930981, 25.112919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474160, 0.089155, 0.875913,
		0.439636, 0.885930, 0.147815,
		-0.762819, 0.455171, -0.459268,
		36.938110, 37.067532, 24.975138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065357, 36.881561, 25.832420>,  <37.472084, 36.748913, 25.296627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065357, 36.881561, 25.832420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011520, 36.485767, 25.811258>,  <37.979218, 36.248291, 25.798561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011520, 36.485767, 25.811258>,  <38.065357, 36.881561, 25.832420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011520, 36.485767, 25.811258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457422, -0.014681, -0.889128,
		0.879005, -0.143870, 0.454590,
		-0.134593, -0.989488, -0.052905,
		37.971142, 36.188923, 25.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632660, 36.663494, 25.539860>,  <38.065357, 36.881561, 25.832420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632660, 36.663494, 25.539860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.416409, 36.328781, 25.505173>,  <38.286659, 36.127953, 25.484360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.416409, 36.328781, 25.505173>,  <38.632660, 36.663494, 25.539860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416409, 36.328781, 25.505173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432568, -0.188094, -0.881763,
		0.721530, -0.514219, 0.463653,
		-0.540629, -0.836780, -0.086719,
		38.254219, 36.077747, 25.479156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101036, 36.145283, 25.519676>,  <38.632660, 36.663494, 25.539860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101036, 36.145283, 25.519676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765636, 36.033611, 25.332495>,  <38.564396, 35.966610, 25.220186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765636, 36.033611, 25.332495>,  <39.101036, 36.145283, 25.519676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765636, 36.033611, 25.332495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535483, -0.263165, -0.802498,
		0.100888, -0.923475, 0.370157,
		-0.838499, -0.279175, -0.467955,
		38.514088, 35.949860, 25.192108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309658, 35.454590, 25.306175>,  <39.101036, 36.145283, 25.519676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309658, 35.454590, 25.306175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992985, 35.552441, 25.082245>,  <38.802982, 35.611149, 24.947887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992985, 35.552441, 25.082245>,  <39.309658, 35.454590, 25.306175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992985, 35.552441, 25.082245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440404, -0.406578, -0.800462,
		-0.423430, -0.880256, 0.214142,
		-0.791676, 0.244630, -0.559826,
		38.755482, 35.625828, 24.914297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057232, 34.785236, 24.840992>,  <39.309658, 35.454590, 25.306175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057232, 34.785236, 24.840992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.921974, 35.118828, 24.666571>,  <38.840820, 35.318981, 24.561918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.921974, 35.118828, 24.666571>,  <39.057232, 34.785236, 24.840992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921974, 35.118828, 24.666571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355422, -0.315861, -0.879720,
		-0.871398, -0.452454, -0.189607,
		-0.338143, 0.833977, -0.436052,
		38.820530, 35.369022, 24.535755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774288, 34.640789, 24.111715>,  <39.057232, 34.785236, 24.840992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774288, 34.640789, 24.111715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814571, 35.038242, 24.091526>,  <38.838741, 35.276714, 24.079412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814571, 35.038242, 24.091526>,  <38.774288, 34.640789, 24.111715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814571, 35.038242, 24.091526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380670, -0.085354, -0.920763,
		-0.919211, 0.073510, -0.386843,
		0.100704, 0.993635, -0.050475,
		38.844784, 35.336334, 24.076384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587124, 34.779335, 23.388758>,  <38.774288, 34.640789, 24.111715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587124, 34.779335, 23.388758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.800533, 35.092602, 23.516516>,  <38.928577, 35.280560, 23.593170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.800533, 35.092602, 23.516516>,  <38.587124, 34.779335, 23.388758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800533, 35.092602, 23.516516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547142, -0.031610, -0.836443,
		-0.644975, 0.621013, -0.445365,
		0.533520, 0.783163, 0.319395,
		38.960590, 35.327549, 23.612333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620399, 35.170937, 22.827745>,  <38.587124, 34.779335, 23.388758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620399, 35.170937, 22.827745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936642, 35.284565, 23.044722>,  <39.126389, 35.352741, 23.174908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936642, 35.284565, 23.044722>,  <38.620399, 35.170937, 22.827745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936642, 35.284565, 23.044722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558493, 0.028664, -0.829014,
		-0.251051, 0.958373, -0.135992,
		0.790607, 0.284075, 0.542441,
		39.173824, 35.369789, 23.207455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903385, 35.705563, 22.460159>,  <38.620399, 35.170937, 22.827745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903385, 35.705563, 22.460159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195061, 35.604774, 22.714655>,  <39.370064, 35.544300, 22.867352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195061, 35.604774, 22.714655>,  <38.903385, 35.705563, 22.460159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195061, 35.604774, 22.714655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682697, 0.331797, -0.651027,
		-0.047063, 0.909077, 0.413961,
		0.729185, -0.251970, 0.636239,
		39.413815, 35.529182, 22.905527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436172, 36.187050, 22.407665>,  <38.903385, 35.705563, 22.460159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436172, 36.187050, 22.407665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.642132, 35.891647, 22.581785>,  <39.765705, 35.714405, 22.686258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.642132, 35.891647, 22.581785>,  <39.436172, 36.187050, 22.407665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642132, 35.891647, 22.581785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686352, 0.050908, -0.725486,
		0.513617, 0.672319, 0.533089,
		0.514896, -0.738509, 0.435301,
		39.796600, 35.670094, 22.712376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061420, 36.409252, 22.439539>,  <39.436172, 36.187050, 22.407665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061420, 36.409252, 22.439539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.106243, 36.014267, 22.484020>,  <40.133137, 35.777275, 22.510708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.106243, 36.014267, 22.484020>,  <40.061420, 36.409252, 22.439539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106243, 36.014267, 22.484020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720589, 0.003691, -0.693353,
		0.684248, 0.157825, 0.711967,
		0.112056, -0.987460, 0.111202,
		40.139858, 35.718029, 22.517380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723148, 36.174629, 22.629568>,  <40.061420, 36.409252, 22.439539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723148, 36.174629, 22.629568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558178, 35.860497, 22.444893>,  <40.459194, 35.672016, 22.334087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558178, 35.860497, 22.444893>,  <40.723148, 36.174629, 22.629568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558178, 35.860497, 22.444893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723384, 0.025730, -0.689967,
		0.553734, -0.618536, 0.557487,
		-0.412425, -0.785335, -0.461686,
		40.434452, 35.624897, 22.306387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331749, 35.786015, 22.424837>,  <40.723148, 36.174629, 22.629568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331749, 35.786015, 22.424837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.035786, 35.643898, 22.196344>,  <40.858208, 35.558628, 22.059248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.035786, 35.643898, 22.196344>,  <41.331749, 35.786015, 22.424837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035786, 35.643898, 22.196344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600949, 0.032519, -0.798626,
		0.302317, -0.934191, 0.189449,
		-0.739909, -0.355287, -0.571232,
		40.813812, 35.537312, 22.024975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499477, 35.162781, 22.067019>,  <41.331749, 35.786015, 22.424837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499477, 35.162781, 22.067019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204094, 35.292931, 21.830776>,  <41.026863, 35.371021, 21.689032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204094, 35.292931, 21.830776>,  <41.499477, 35.162781, 22.067019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204094, 35.292931, 21.830776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606580, -0.062017, -0.792600,
		-0.294517, -0.943550, -0.151567,
		-0.738458, 0.325371, -0.590604,
		40.982555, 35.390541, 21.653595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809265, 34.496292, 21.948765>,  <41.499477, 35.162781, 22.067019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809265, 34.496292, 21.948765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.152576, 34.476555, 22.153088>,  <42.358562, 34.464714, 22.275682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.152576, 34.476555, 22.153088>,  <41.809265, 34.496292, 21.948765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152576, 34.476555, 22.153088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512998, -0.055549, 0.856590,
		-0.013883, -0.997236, -0.072984,
		0.858277, -0.049333, 0.510809,
		42.410061, 34.461754, 22.306330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703579, 33.864994, 22.293036>,  <41.809265, 34.496292, 21.948765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703579, 33.864994, 22.293036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.976017, 34.077530, 22.494547>,  <42.139481, 34.205051, 22.615454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.976017, 34.077530, 22.494547>,  <41.703579, 33.864994, 22.293036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976017, 34.077530, 22.494547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576825, -0.034409, 0.816143,
		0.450984, -0.846459, 0.283055,
		0.681092, 0.531340, 0.503777,
		42.180344, 34.236931, 22.645679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683849, 33.562000, 22.969950>,  <41.703579, 33.864994, 22.293036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683849, 33.562000, 22.969950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885208, 33.902515, 23.029154>,  <42.006023, 34.106823, 23.064676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885208, 33.902515, 23.029154>,  <41.683849, 33.562000, 22.969950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885208, 33.902515, 23.029154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289052, 0.004487, 0.957303,
		0.814272, -0.524687, 0.248324,
		0.503398, 0.851283, 0.148008,
		42.036228, 34.157902, 23.073557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102955, 33.336273, 23.558748>,  <41.683849, 33.562000, 22.969950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102955, 33.336273, 23.558748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070099, 33.734917, 23.560925>,  <42.050385, 33.974102, 23.562231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070099, 33.734917, 23.560925>,  <42.102955, 33.336273, 23.558748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070099, 33.734917, 23.560925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279291, -0.028259, 0.959791,
		0.956687, 0.077314, 0.280664,
		-0.082137, 0.996606, 0.005442,
		42.045456, 34.033897, 23.562557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464069, 33.571087, 24.289858>,  <42.102955, 33.336273, 23.558748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464069, 33.571087, 24.289858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.258530, 33.882988, 24.146778>,  <42.135204, 34.070129, 24.060930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.258530, 33.882988, 24.146778>,  <42.464069, 33.571087, 24.289858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258530, 33.882988, 24.146778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338943, 0.198503, 0.919627,
		0.788083, 0.593791, 0.162290,
		-0.513851, 0.779750, -0.357698,
		42.104374, 34.116913, 24.039469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562309, 34.086021, 24.845333>,  <42.464069, 33.571087, 24.289858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562309, 34.086021, 24.845333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246166, 34.204636, 24.630894>,  <42.056480, 34.275803, 24.502230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246166, 34.204636, 24.630894>,  <42.562309, 34.086021, 24.845333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246166, 34.204636, 24.630894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439145, 0.335937, 0.833245,
		0.427182, 0.893987, -0.135289,
		-0.790359, 0.296536, -0.536096,
		42.009060, 34.293598, 24.470064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397518, 34.804440, 24.881495>,  <42.562309, 34.086021, 24.845333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397518, 34.804440, 24.881495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.049473, 34.642574, 24.768953>,  <41.840645, 34.545456, 24.701427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.049473, 34.642574, 24.768953>,  <42.397518, 34.804440, 24.881495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049473, 34.642574, 24.768953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464229, 0.481172, 0.743616,
		-0.165532, 0.777640, -0.606527,
		-0.870110, -0.404659, -0.281354,
		41.788441, 34.521175, 24.684547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933289, 35.324879, 24.836813>,  <42.397518, 34.804440, 24.881495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933289, 35.324879, 24.836813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.713364, 34.994629, 24.887491>,  <41.581409, 34.796478, 24.917898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.713364, 34.994629, 24.887491>,  <41.933289, 35.324879, 24.836813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713364, 34.994629, 24.887491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433985, 0.411959, 0.801216,
		-0.713696, 0.385535, -0.584808,
		-0.549814, -0.825623, 0.126697,
		41.548420, 34.746941, 24.925501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418468, 35.634235, 25.073278>,  <41.933289, 35.324879, 24.836813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418468, 35.634235, 25.073278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432968, 35.243950, 25.159685>,  <41.441666, 35.009777, 25.211529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432968, 35.243950, 25.159685>,  <41.418468, 35.634235, 25.073278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432968, 35.243950, 25.159685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387416, 0.185537, 0.903042,
		-0.921192, -0.116420, -0.371284,
		0.036246, -0.975716, 0.216018,
		41.443840, 34.951237, 25.224491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814419, 35.497025, 25.271183>,  <41.418468, 35.634235, 25.073278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814419, 35.497025, 25.271183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019722, 35.188553, 25.421831>,  <41.142906, 35.003471, 25.512220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019722, 35.188553, 25.421831>,  <40.814419, 35.497025, 25.271183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019722, 35.188553, 25.421831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323757, 0.232430, 0.917147,
		-0.794824, -0.592669, -0.130378,
		0.513261, -0.771181, 0.376622,
		41.173698, 34.957199, 25.534817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386322, 35.201263, 25.683403>,  <40.814419, 35.497025, 25.271183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386322, 35.201263, 25.683403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725079, 35.052967, 25.835890>,  <40.928333, 34.963989, 25.927383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725079, 35.052967, 25.835890>,  <40.386322, 35.201263, 25.683403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725079, 35.052967, 25.835890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245481, 0.363367, 0.898723,
		-0.471718, -0.854701, 0.216721,
		0.846889, -0.370743, 0.381219,
		40.979145, 34.941746, 25.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129524, 34.733536, 26.190573>,  <40.386322, 35.201263, 25.683403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129524, 34.733536, 26.190573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.499729, 34.839737, 26.298601>,  <40.721851, 34.903458, 26.363419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.499729, 34.839737, 26.298601>,  <40.129524, 34.733536, 26.190573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499729, 34.839737, 26.298601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317844, 0.156796, 0.935088,
		0.205928, -0.951273, 0.229506,
		0.925510, 0.265508, 0.270068,
		40.777382, 34.919388, 26.379622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210884, 34.429821, 26.946127>,  <40.129524, 34.733536, 26.190573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210884, 34.429821, 26.946127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.482155, 34.719387, 26.895494>,  <40.644917, 34.893127, 26.865114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.482155, 34.719387, 26.895494>,  <40.210884, 34.429821, 26.946127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482155, 34.719387, 26.895494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100427, 0.261920, 0.959850,
		0.728003, -0.638237, 0.250330,
		0.678179, 0.723914, -0.126582,
		40.685608, 34.936562, 26.857519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763489, 34.321243, 27.406427>,  <40.210884, 34.429821, 26.946127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763489, 34.321243, 27.406427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684406, 34.701813, 27.312023>,  <40.636955, 34.930157, 27.255381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684406, 34.701813, 27.312023>,  <40.763489, 34.321243, 27.406427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684406, 34.701813, 27.312023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104160, 0.219009, 0.970147,
		0.974712, 0.216387, 0.055801,
		-0.197706, 0.951426, -0.236009,
		40.625095, 34.987240, 27.241220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<46.122910, 38.102116, 24.064104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.756775, 38.167973, 23.917101>,  <45.537094, 38.207485, 23.828899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.756775, 38.167973, 23.917101>,  <46.122910, 38.102116, 24.064104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756775, 38.167973, 23.917101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293388, -0.352484, -0.888638,
		-0.275843, -0.921222, 0.274337,
		-0.915333, 0.164638, -0.367506,
		45.482174, 38.217365, 23.806849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030418, 37.491726, 23.558228>,  <46.122910, 38.102116, 24.064104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030418, 37.491726, 23.558228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.774940, 37.775547, 23.439167>,  <45.621655, 37.945839, 23.367731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.774940, 37.775547, 23.439167>,  <46.030418, 37.491726, 23.558228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774940, 37.775547, 23.439167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309327, -0.117429, -0.943678,
		-0.704545, -0.694796, -0.144483,
		-0.638697, 0.709556, -0.297653,
		45.583332, 37.988415, 23.349871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737831, 37.264721, 22.990896>,  <46.030418, 37.491726, 23.558228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737831, 37.264721, 22.990896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.623966, 37.645676, 22.947206>,  <45.555649, 37.874249, 22.920994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.623966, 37.645676, 22.947206>,  <45.737831, 37.264721, 22.990896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623966, 37.645676, 22.947206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067025, -0.093885, -0.993325,
		-0.956282, -0.290082, -0.037108,
		-0.284661, 0.952386, -0.109223,
		45.538567, 37.931393, 22.914440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147926, 37.272102, 22.588499>,  <45.737831, 37.264721, 22.990896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147926, 37.272102, 22.588499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.311546, 37.635864, 22.558393>,  <45.409718, 37.854122, 22.540331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.311546, 37.635864, 22.558393>,  <45.147926, 37.272102, 22.588499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311546, 37.635864, 22.558393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052910, -0.105977, -0.992960,
		-0.910979, 0.402183, -0.091466,
		0.409045, 0.909405, -0.075264,
		45.434261, 37.908688, 22.535814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727257, 37.650211, 22.076742>,  <45.147926, 37.272102, 22.588499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727257, 37.650211, 22.076742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.086197, 37.826248, 22.089952>,  <45.301559, 37.931870, 22.097878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.086197, 37.826248, 22.089952>,  <44.727257, 37.650211, 22.076742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086197, 37.826248, 22.089952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119768, -0.170821, -0.977996,
		-0.424764, 0.881557, -0.205994,
		0.897347, 0.440088, 0.033023,
		45.355400, 37.958275, 22.099859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824699, 38.072102, 21.498552>,  <44.727257, 37.650211, 22.076742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824699, 38.072102, 21.498552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.205479, 38.073509, 21.621048>,  <45.433945, 38.074356, 21.694546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.205479, 38.073509, 21.621048>,  <44.824699, 38.072102, 21.498552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205479, 38.073509, 21.621048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303868, -0.135560, -0.943020,
		0.038192, 0.990763, -0.130117,
		0.951948, 0.003522, 0.306238,
		45.491062, 38.074566, 21.712919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271782, 38.486233, 20.972569>,  <44.824699, 38.072102, 21.498552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271782, 38.486233, 20.972569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.559982, 38.285870, 21.164391>,  <45.732903, 38.165653, 21.279484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.559982, 38.285870, 21.164391>,  <45.271782, 38.486233, 20.972569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559982, 38.285870, 21.164391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522815, -0.061935, -0.850193,
		0.455569, 0.863282, 0.217258,
		0.720500, -0.500907, 0.479553,
		45.776131, 38.135597, 21.308256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906067, 38.728577, 20.669376>,  <45.271782, 38.486233, 20.972569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906067, 38.728577, 20.669376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.979012, 38.372215, 20.835768>,  <46.022778, 38.158398, 20.935602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.979012, 38.372215, 20.835768>,  <45.906067, 38.728577, 20.669376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979012, 38.372215, 20.835768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579703, -0.244294, -0.777345,
		0.794159, 0.382903, 0.471908,
		0.182363, -0.890902, 0.415978,
		46.033722, 38.104946, 20.960562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632622, 38.541676, 20.563318>,  <45.906067, 38.728577, 20.669376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632622, 38.541676, 20.563318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.442291, 38.195911, 20.628281>,  <46.328091, 37.988453, 20.667257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.442291, 38.195911, 20.628281>,  <46.632622, 38.541676, 20.563318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442291, 38.195911, 20.628281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600330, -0.454141, -0.658300,
		0.642799, -0.215740, 0.735027,
		-0.475828, -0.864414, 0.162407,
		46.299541, 37.936588, 20.677002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157928, 38.059155, 20.692940>,  <46.632622, 38.541676, 20.563318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157928, 38.059155, 20.692940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.828705, 37.861298, 20.581289>,  <46.631172, 37.742584, 20.514299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.828705, 37.861298, 20.581289>,  <47.157928, 38.059155, 20.692940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828705, 37.861298, 20.581289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506372, -0.416492, -0.755064,
		0.257232, -0.762800, 0.593268,
		-0.823055, -0.494641, -0.279125,
		46.581787, 37.712906, 20.497551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411774, 37.362934, 20.400854>,  <47.157928, 38.059155, 20.692940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411774, 37.362934, 20.400854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.039795, 37.396099, 20.257565>,  <46.816608, 37.416000, 20.171591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.039795, 37.396099, 20.257565>,  <47.411774, 37.362934, 20.400854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039795, 37.396099, 20.257565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267746, -0.515035, -0.814279,
		-0.252012, -0.853149, 0.456756,
		-0.929947, 0.082914, -0.358223,
		46.760811, 37.420975, 20.150097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278118, 36.693405, 20.236776>,  <47.411774, 37.362934, 20.400854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278118, 36.693405, 20.236776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.044430, 36.942741, 20.028883>,  <46.904217, 37.092346, 19.904148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.044430, 36.942741, 20.028883>,  <47.278118, 36.693405, 20.236776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.044430, 36.942741, 20.028883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298517, -0.430450, -0.851822,
		-0.754698, -0.652804, 0.065400,
		-0.584224, 0.623346, -0.519733,
		46.869164, 37.129745, 19.872963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210648, 36.397266, 19.571701>,  <47.278118, 36.693405, 20.236776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210648, 36.397266, 19.571701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.087536, 36.768559, 19.488117>,  <47.013668, 36.991333, 19.437967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.087536, 36.768559, 19.488117>,  <47.210648, 36.397266, 19.571701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.087536, 36.768559, 19.488117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320186, -0.105768, -0.941432,
		-0.895966, -0.356656, -0.264653,
		-0.307775, 0.928229, -0.208960,
		46.995205, 37.047028, 19.425428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697727, 36.365047, 19.107481>,  <47.210648, 36.397266, 19.571701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697727, 36.365047, 19.107481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.912697, 36.700665, 19.073582>,  <47.041679, 36.902035, 19.053242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.912697, 36.700665, 19.073582>,  <46.697727, 36.365047, 19.107481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912697, 36.700665, 19.073582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235346, -0.245723, -0.940336,
		-0.809810, 0.485410, -0.329522,
		0.537420, 0.839046, -0.084750,
		47.073921, 36.952377, 19.048157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673550, 35.861919, 19.644489>,  <46.697727, 36.365047, 19.107481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673550, 35.861919, 19.644489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.585449, 35.673561, 19.302788>,  <46.532589, 35.560547, 19.097767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.585449, 35.673561, 19.302788>,  <46.673550, 35.861919, 19.644489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585449, 35.673561, 19.302788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911022, -0.213681, 0.352675,
		-0.348609, 0.855921, -0.381929,
		-0.220251, -0.470892, -0.854255,
		46.519375, 35.532295, 19.046511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076466, 36.091896, 19.526449>,  <46.673550, 35.861919, 19.644489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076466, 36.091896, 19.526449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.112846, 35.738560, 19.342516>,  <46.134674, 35.526558, 19.232157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.112846, 35.738560, 19.342516>,  <46.076466, 36.091896, 19.526449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112846, 35.738560, 19.342516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952284, -0.212234, 0.219347,
		-0.291349, 0.417940, -0.860489,
		0.090951, -0.883336, -0.459832,
		46.140133, 35.473560, 19.204567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417637, 35.861588, 19.031891>,  <46.076466, 36.091896, 19.526449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417637, 35.861588, 19.031891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.618629, 35.523411, 19.104259>,  <45.739223, 35.320503, 19.147680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.618629, 35.523411, 19.104259>,  <45.417637, 35.861588, 19.031891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618629, 35.523411, 19.104259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863782, -0.481868, 0.147254,
		-0.037314, -0.230271, -0.972411,
		0.502482, -0.845446, 0.180923,
		45.769375, 35.269775, 19.158537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035801, 35.336502, 18.738775>,  <45.417637, 35.861588, 19.031891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035801, 35.336502, 18.738775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264061, 35.150429, 19.009468>,  <45.401016, 35.038784, 19.171883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264061, 35.150429, 19.009468>,  <45.035801, 35.336502, 18.738775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264061, 35.150429, 19.009468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791654, -0.530671, 0.302774,
		0.218276, -0.708514, -0.671092,
		0.570649, -0.465184, 0.676730,
		45.435257, 35.010872, 19.212486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630936, 34.822475, 18.787340>,  <45.035801, 35.336502, 18.738775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630936, 34.822475, 18.787340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.863331, 34.844574, 19.112154>,  <45.002769, 34.857834, 19.307041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.863331, 34.844574, 19.112154>,  <44.630936, 34.822475, 18.787340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863331, 34.844574, 19.112154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720382, -0.429449, 0.544632,
		0.378813, -0.901400, -0.209710,
		0.580991, 0.055243, 0.812033,
		45.037628, 34.861145, 19.355764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522934, 34.182610, 19.105562>,  <44.630936, 34.822475, 18.787340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522934, 34.182610, 19.105562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.675304, 34.440807, 19.370356>,  <44.766727, 34.595726, 19.529232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.675304, 34.440807, 19.370356>,  <44.522934, 34.182610, 19.105562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675304, 34.440807, 19.370356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716877, -0.245976, 0.652367,
		0.583935, -0.723068, 0.369044,
		0.380930, 0.645499, 0.661985,
		44.789585, 34.634457, 19.568951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525948, 33.802876, 19.773132>,  <44.522934, 34.182610, 19.105562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525948, 33.802876, 19.773132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.570477, 34.185822, 19.879761>,  <44.597195, 34.415588, 19.943739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.570477, 34.185822, 19.879761>,  <44.525948, 33.802876, 19.773132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570477, 34.185822, 19.879761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567974, -0.158822, 0.807577,
		0.815483, -0.241307, 0.526078,
		0.111321, 0.957364, 0.266573,
		44.603874, 34.473030, 19.959732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741337, 33.781586, 20.360134>,  <44.525948, 33.802876, 19.773132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741337, 33.781586, 20.360134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.590961, 34.152031, 20.347540>,  <44.500736, 34.374298, 20.339983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.590961, 34.152031, 20.347540>,  <44.741337, 33.781586, 20.360134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590961, 34.152031, 20.347540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527281, -0.185852, 0.829116,
		0.762002, 0.328294, 0.558190,
		-0.375935, 0.926111, -0.031483,
		44.478180, 34.429863, 20.338095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904343, 34.028740, 21.001385>,  <44.741337, 33.781586, 20.360134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904343, 34.028740, 21.001385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.597317, 34.235840, 20.850239>,  <44.413101, 34.360100, 20.759552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.597317, 34.235840, 20.850239>,  <44.904343, 34.028740, 21.001385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597317, 34.235840, 20.850239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546592, -0.220796, 0.807767,
		0.334794, 0.826547, 0.452475,
		-0.767562, 0.517754, -0.377862,
		44.367046, 34.391167, 20.736879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728611, 34.499752, 21.494122>,  <44.904343, 34.028740, 21.001385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728611, 34.499752, 21.494122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.404888, 34.476093, 21.260359>,  <44.210655, 34.461899, 21.120102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.404888, 34.476093, 21.260359>,  <44.728611, 34.499752, 21.494122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404888, 34.476093, 21.260359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578324, -0.093902, 0.810385,
		-0.102805, 0.993823, 0.041792,
		-0.809303, -0.059142, -0.584406,
		44.162098, 34.458351, 21.085037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288845, 34.976219, 21.829824>,  <44.728611, 34.499752, 21.494122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288845, 34.976219, 21.829824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.005882, 34.816051, 21.596846>,  <43.836105, 34.719952, 21.457058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.005882, 34.816051, 21.596846>,  <44.288845, 34.976219, 21.829824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005882, 34.816051, 21.596846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642735, 0.021597, 0.765784,
		-0.294053, 0.916079, -0.272640,
		-0.707407, -0.400416, -0.582445,
		43.793659, 34.695927, 21.422112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665421, 35.314560, 21.958437>,  <44.288845, 34.976219, 21.829824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665421, 35.314560, 21.958437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.550804, 34.970516, 21.789623>,  <43.482033, 34.764091, 21.688335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.550804, 34.970516, 21.789623>,  <43.665421, 35.314560, 21.958437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550804, 34.970516, 21.789623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798725, -0.028808, 0.601007,
		-0.529087, 0.509301, -0.678733,
		-0.286541, -0.860106, -0.422033,
		43.464844, 34.712486, 21.663013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931953, 35.396984, 21.761658>,  <43.665421, 35.314560, 21.958437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931953, 35.396984, 21.761658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.982273, 35.000160, 21.761642>,  <43.012466, 34.762066, 21.761633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.982273, 35.000160, 21.761642>,  <42.931953, 35.396984, 21.761658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982273, 35.000160, 21.761642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855067, -0.108447, 0.507050,
		-0.503026, -0.063755, -0.861917,
		0.125799, -0.992056, -0.000037,
		43.020012, 34.702545, 21.761631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318810, 35.123329, 21.609783>,  <42.931953, 35.396984, 21.761658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318810, 35.123329, 21.609783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.520145, 34.839329, 21.806782>,  <42.640945, 34.668930, 21.924982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.520145, 34.839329, 21.806782>,  <42.318810, 35.123329, 21.609783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520145, 34.839329, 21.806782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743203, -0.064967, 0.665904,
		-0.440795, -0.701200, -0.560373,
		0.503338, -0.709998, 0.492497,
		42.671146, 34.626331, 21.954531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652187, 34.930435, 21.368042>,  <42.318810, 35.123329, 21.609783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652187, 34.930435, 21.368042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.348942, 35.166580, 21.257231>,  <41.166996, 35.308266, 21.190744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.348942, 35.166580, 21.257231>,  <41.652187, 34.930435, 21.368042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348942, 35.166580, 21.257231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404208, 0.092036, -0.910025,
		-0.511745, -0.801877, -0.308401,
		-0.758112, 0.590359, -0.277026,
		41.121510, 35.343689, 21.174124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548912, 34.761883, 20.692307>,  <41.652187, 34.930435, 21.368042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548912, 34.761883, 20.692307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.346985, 35.104980, 20.731148>,  <41.225830, 35.310841, 20.754454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.346985, 35.104980, 20.731148>,  <41.548912, 34.761883, 20.692307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346985, 35.104980, 20.731148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201672, 0.226566, -0.952888,
		-0.839339, -0.461450, -0.287358,
		-0.504816, 0.857748, 0.097104,
		41.195541, 35.362305, 20.760279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062111, 34.836514, 20.046198>,  <41.548912, 34.761883, 20.692307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062111, 34.836514, 20.046198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.157219, 35.191341, 20.204479>,  <41.214283, 35.404236, 20.299448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.157219, 35.191341, 20.204479>,  <41.062111, 34.836514, 20.046198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157219, 35.191341, 20.204479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380523, 0.289754, -0.878205,
		-0.893682, 0.359385, -0.268654,
		0.237770, 0.887065, 0.395703,
		41.228550, 35.457462, 20.323191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947819, 35.387875, 19.568893>,  <41.062111, 34.836514, 20.046198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947819, 35.387875, 19.568893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.166451, 35.616100, 19.814074>,  <41.297630, 35.753036, 19.961182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.166451, 35.616100, 19.814074>,  <40.947819, 35.387875, 19.568893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166451, 35.616100, 19.814074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359844, 0.500906, -0.787151,
		-0.756150, 0.650806, 0.068470,
		0.546580, 0.570566, 0.612948,
		41.330425, 35.787270, 19.997957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904377, 36.001831, 19.306911>,  <40.947819, 35.387875, 19.568893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904377, 36.001831, 19.306911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239025, 35.963364, 19.522625>,  <41.439812, 35.940285, 19.652052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239025, 35.963364, 19.522625>,  <40.904377, 36.001831, 19.306911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239025, 35.963364, 19.522625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522690, 0.434729, -0.733352,
		-0.163915, 0.895411, 0.413969,
		0.836616, -0.096170, 0.539281,
		41.490009, 35.934513, 19.684410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297905, 36.674984, 19.301567>,  <40.904377, 36.001831, 19.306911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297905, 36.674984, 19.301567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.556950, 36.378075, 19.370419>,  <41.712376, 36.199928, 19.411730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.556950, 36.378075, 19.370419>,  <41.297905, 36.674984, 19.301567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556950, 36.378075, 19.370419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611753, 0.371825, -0.698215,
		0.454262, 0.557476, 0.694886,
		0.647614, -0.742271, 0.172131,
		41.751232, 36.155392, 19.422058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005440, 36.966537, 19.418837>,  <41.297905, 36.674984, 19.301567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005440, 36.966537, 19.418837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.077679, 36.579319, 19.349243>,  <42.121021, 36.346989, 19.307487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.077679, 36.579319, 19.349243>,  <42.005440, 36.966537, 19.418837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077679, 36.579319, 19.349243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639126, 0.249960, -0.727350,
		0.747597, 0.020159, 0.663846,
		0.180598, -0.968046, -0.173985,
		42.131859, 36.288906, 19.297047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068623, 37.696945, 19.601458>,  <42.005440, 36.966537, 19.418837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068623, 37.696945, 19.601458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904819, 37.807461, 19.253670>,  <41.806538, 37.873768, 19.044998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904819, 37.807461, 19.253670>,  <42.068623, 37.696945, 19.601458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904819, 37.807461, 19.253670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911548, -0.162822, 0.377584,
		-0.037248, 0.947183, 0.318524,
		-0.409503, 0.276285, -0.869467,
		41.781967, 37.890347, 18.992830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628094, 38.307274, 19.839365>,  <42.068623, 37.696945, 19.601458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628094, 38.307274, 19.839365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513256, 38.115765, 19.507496>,  <41.444355, 38.000858, 19.308374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513256, 38.115765, 19.507496>,  <41.628094, 38.307274, 19.839365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513256, 38.115765, 19.507496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950061, 0.031714, 0.310447,
		-0.122320, 0.877368, -0.463964,
		-0.287090, -0.478769, -0.829674,
		41.427128, 37.972134, 19.258593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907982, 38.723896, 19.660868>,  <41.628094, 38.307274, 19.839365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907982, 38.723896, 19.660868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.945934, 38.368649, 19.480980>,  <40.968704, 38.155502, 19.373047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.945934, 38.368649, 19.480980>,  <40.907982, 38.723896, 19.660868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945934, 38.368649, 19.480980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921652, -0.249108, 0.297495,
		-0.376238, 0.386256, -0.842171,
		0.094882, -0.888117, -0.449718,
		40.974400, 38.102215, 19.346066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266846, 38.674812, 19.416870>,  <40.907982, 38.723896, 19.660868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266846, 38.674812, 19.416870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383694, 38.293625, 19.384604>,  <40.453804, 38.064911, 19.365244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383694, 38.293625, 19.384604>,  <40.266846, 38.674812, 19.416870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383694, 38.293625, 19.384604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886932, -0.301502, 0.349926,
		-0.357791, -0.030674, -0.933298,
		0.292125, -0.952972, -0.080669,
		40.471333, 38.007732, 19.360403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661377, 38.403667, 19.254869>,  <40.266846, 38.674812, 19.416870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661377, 38.403667, 19.254869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.857891, 38.077217, 19.376579>,  <39.975800, 37.881348, 19.449606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.857891, 38.077217, 19.376579>,  <39.661377, 38.403667, 19.254869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857891, 38.077217, 19.376579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825605, -0.325028, 0.461230,
		-0.277521, -0.477808, -0.833475,
		0.491282, -0.816122, 0.304279,
		40.005276, 37.832378, 19.467861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105007, 37.875324, 19.253639>,  <39.661377, 38.403667, 19.254869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105007, 37.875324, 19.253639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380161, 37.715763, 19.496189>,  <39.545254, 37.620026, 19.641720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380161, 37.715763, 19.496189>,  <39.105007, 37.875324, 19.253639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380161, 37.715763, 19.496189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725173, -0.412914, 0.551022,
		0.030580, -0.818769, -0.573308,
		0.687887, -0.398898, 0.606377,
		39.586529, 37.596092, 19.678102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777775, 37.209560, 19.377728>,  <39.105007, 37.875324, 19.253639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777775, 37.209560, 19.377728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.054192, 37.303226, 19.651260>,  <39.220043, 37.359428, 19.815380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.054192, 37.303226, 19.651260>,  <38.777775, 37.209560, 19.377728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054192, 37.303226, 19.651260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558335, -0.427895, 0.710751,
		0.459042, -0.872967, -0.164951,
		0.691044, 0.234167, 0.683830,
		39.261505, 37.373478, 19.856409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.737328, 40.048771, 18.140171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.740730, 39.747410, 18.403172>,  <45.742771, 39.566593, 18.560972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.740730, 39.747410, 18.403172>,  <45.737328, 40.048771, 18.140171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740730, 39.747410, 18.403172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703400, 0.462838, 0.539452,
		-0.710743, -0.467077, -0.526007,
		0.008510, -0.753406, 0.657501,
		45.743282, 39.521389, 18.600422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020195, 39.902466, 18.322233>,  <45.737328, 40.048771, 18.140171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020195, 39.902466, 18.322233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.232071, 39.724380, 18.611013>,  <45.359196, 39.617531, 18.784281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.232071, 39.724380, 18.611013>,  <45.020195, 39.902466, 18.322233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232071, 39.724380, 18.611013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658425, 0.320745, 0.680882,
		-0.534698, -0.836008, -0.123243,
		0.529693, -0.445212, 0.721950,
		45.390980, 39.590816, 18.827599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623898, 39.623123, 18.691231>,  <45.020195, 39.902466, 18.322233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623898, 39.623123, 18.691231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.918671, 39.627331, 18.961582>,  <45.095535, 39.629856, 19.123793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.918671, 39.627331, 18.961582>,  <44.623898, 39.623123, 18.691231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918671, 39.627331, 18.961582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674709, 0.072326, 0.734532,
		-0.041157, -0.997326, 0.060397,
		0.736936, 0.010519, 0.675881,
		45.139751, 39.630486, 19.164347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469273, 39.138515, 19.328182>,  <44.623898, 39.623123, 18.691231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469273, 39.138515, 19.328182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.745060, 39.391975, 19.468540>,  <44.910530, 39.544052, 19.552755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.745060, 39.391975, 19.468540>,  <44.469273, 39.138515, 19.328182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745060, 39.391975, 19.468540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625592, 0.276776, 0.729404,
		0.365067, -0.722415, 0.587233,
		0.689465, 0.633649, 0.350895,
		44.951900, 39.582069, 19.573809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477882, 38.955605, 20.064283>,  <44.469273, 39.138515, 19.328182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477882, 38.955605, 20.064283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.619347, 39.328327, 20.031635>,  <44.704227, 39.551960, 20.012047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.619347, 39.328327, 20.031635>,  <44.477882, 38.955605, 20.064283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619347, 39.328327, 20.031635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596977, 0.292032, 0.747219,
		0.720097, -0.215540, 0.659547,
		0.353665, 0.931805, -0.081619,
		44.725445, 39.607868, 20.007151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654884, 39.196388, 20.767010>,  <44.477882, 38.955605, 20.064283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654884, 39.196388, 20.767010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.636204, 39.530571, 20.547981>,  <44.624996, 39.731079, 20.416563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.636204, 39.530571, 20.547981>,  <44.654884, 39.196388, 20.767010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636204, 39.530571, 20.547981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624123, 0.403596, 0.669015,
		0.779929, 0.372996, 0.502577,
		-0.046702, 0.835454, -0.547572,
		44.622192, 39.781208, 20.383709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930389, 39.726624, 21.201641>,  <44.654884, 39.196388, 20.767010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930389, 39.726624, 21.201641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.696808, 39.892887, 20.922722>,  <44.556660, 39.992645, 20.755371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.696808, 39.892887, 20.922722>,  <44.930389, 39.726624, 21.201641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696808, 39.892887, 20.922722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555235, 0.422121, 0.716609,
		0.592207, 0.805633, -0.015714,
		-0.583957, 0.415656, -0.697298,
		44.521622, 40.017586, 20.713533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840511, 40.487316, 21.368975>,  <44.930389, 39.726624, 21.201641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840511, 40.487316, 21.368975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.546291, 40.406242, 21.110399>,  <44.369759, 40.357597, 20.955254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.546291, 40.406242, 21.110399>,  <44.840511, 40.487316, 21.368975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546291, 40.406242, 21.110399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670639, 0.352986, 0.652414,
		0.095948, 0.913411, -0.395569,
		-0.735553, -0.202685, -0.646437,
		44.325626, 40.345436, 20.916468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558086, 41.111084, 21.290630>,  <44.840511, 40.487316, 21.368975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558086, 41.111084, 21.290630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.279415, 40.844036, 21.185623>,  <44.112213, 40.683807, 21.122620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.279415, 40.844036, 21.185623>,  <44.558086, 41.111084, 21.290630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279415, 40.844036, 21.185623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639529, 0.412207, 0.648913,
		-0.325017, 0.619973, -0.714141,
		-0.696682, -0.667622, -0.262517,
		44.070412, 40.643749, 21.106869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859589, 41.485718, 21.315718>,  <44.558086, 41.111084, 21.290630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859589, 41.485718, 21.315718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.791847, 41.092278, 21.340544>,  <43.751202, 40.856213, 21.355440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.791847, 41.092278, 21.340544>,  <43.859589, 41.485718, 21.315718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791847, 41.092278, 21.340544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722293, 0.166718, 0.671191,
		-0.670530, 0.068842, -0.738682,
		-0.169358, -0.983598, 0.062065,
		43.741039, 40.797199, 21.359163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166275, 41.454212, 21.298946>,  <43.859589, 41.485718, 21.315718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166275, 41.454212, 21.298946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.231594, 41.081802, 21.429495>,  <43.270786, 40.858356, 21.507824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.231594, 41.081802, 21.429495>,  <43.166275, 41.454212, 21.298946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231594, 41.081802, 21.429495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653884, 0.145579, 0.742457,
		-0.738762, -0.334651, -0.585012,
		0.163299, -0.931029, 0.326371,
		43.280582, 40.802494, 21.527407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440414, 41.133381, 21.405479>,  <43.166275, 41.454212, 21.298946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440414, 41.133381, 21.405479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.725903, 40.977089, 21.638010>,  <42.897194, 40.883316, 21.777529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.725903, 40.977089, 21.638010>,  <42.440414, 41.133381, 21.405479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725903, 40.977089, 21.638010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610078, 0.060964, 0.789992,
		-0.344112, -0.918485, -0.194864,
		0.713717, -0.390728, 0.581326,
		42.940018, 40.859871, 21.812408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806870, 40.989864, 21.006855>,  <42.440414, 41.133381, 21.405479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806870, 40.989864, 21.006855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.530540, 41.227856, 20.842527>,  <41.364742, 41.370651, 20.743931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.530540, 41.227856, 20.842527>,  <41.806870, 40.989864, 21.006855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530540, 41.227856, 20.842527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664074, 0.297398, -0.685974,
		-0.285962, -0.746698, -0.600556,
		-0.690820, 0.594976, -0.410818,
		41.323296, 41.406349, 20.719282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854389, 40.874344, 20.256226>,  <41.806870, 40.989864, 21.006855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854389, 40.874344, 20.256226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706470, 41.236458, 20.339853>,  <41.617722, 41.453728, 20.390030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706470, 41.236458, 20.339853>,  <41.854389, 40.874344, 20.256226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706470, 41.236458, 20.339853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468332, 0.375960, -0.799574,
		-0.802444, -0.197765, -0.563003,
		-0.369795, 0.905286, 0.209067,
		41.595531, 41.508045, 20.402573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641960, 41.160873, 19.616728>,  <41.854389, 40.874344, 20.256226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641960, 41.160873, 19.616728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680031, 41.486675, 19.845646>,  <41.702873, 41.682156, 19.982996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680031, 41.486675, 19.845646>,  <41.641960, 41.160873, 19.616728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680031, 41.486675, 19.845646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685336, 0.363346, -0.631106,
		-0.721980, 0.452284, -0.523626,
		0.095181, 0.814505, 0.572295,
		41.708584, 41.731026, 20.017334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505077, 41.755379, 19.183933>,  <41.641960, 41.160873, 19.616728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505077, 41.755379, 19.183933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.722397, 41.877907, 19.496599>,  <41.852787, 41.951424, 19.684198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.722397, 41.877907, 19.496599>,  <41.505077, 41.755379, 19.183933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722397, 41.877907, 19.496599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580815, 0.535145, -0.613412,
		-0.606205, 0.787265, 0.112825,
		0.543295, 0.306323, 0.781663,
		41.885384, 41.969803, 19.731098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765030, 42.487408, 19.103848>,  <41.505077, 41.755379, 19.183933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765030, 42.487408, 19.103848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.028290, 42.326092, 19.358154>,  <42.186245, 42.229301, 19.510738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.028290, 42.326092, 19.358154>,  <41.765030, 42.487408, 19.103848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028290, 42.326092, 19.358154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750086, 0.424010, -0.507530,
		-0.064889, 0.810909, 0.581564,
		0.658149, -0.403290, 0.635765,
		42.225735, 42.205105, 19.548883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327404, 42.745373, 18.845592>,  <41.765030, 42.487408, 19.103848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327404, 42.745373, 18.845592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.484951, 42.514496, 19.131729>,  <42.579479, 42.375969, 19.303411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.484951, 42.514496, 19.131729>,  <42.327404, 42.745373, 18.845592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484951, 42.514496, 19.131729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914345, 0.166412, -0.369162,
		0.094038, 0.799470, 0.593300,
		0.393866, -0.577196, 0.715342,
		42.603111, 42.341335, 19.346333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916664, 43.077816, 19.295912>,  <42.327404, 42.745373, 18.845592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916664, 43.077816, 19.295912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.949455, 42.679523, 19.278936>,  <42.969131, 42.440548, 19.268751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.949455, 42.679523, 19.278936>,  <42.916664, 43.077816, 19.295912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949455, 42.679523, 19.278936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870543, 0.092275, -0.483363,
		0.485215, 0.002680, 0.874391,
		0.081980, -0.995730, -0.042440,
		42.974049, 42.380806, 19.266205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553135, 42.985199, 19.153873>,  <42.916664, 43.077816, 19.295912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553135, 42.985199, 19.153873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.422676, 42.616947, 19.068018>,  <43.344398, 42.395996, 19.016504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.422676, 42.616947, 19.068018>,  <43.553135, 42.985199, 19.153873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422676, 42.616947, 19.068018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752791, -0.115607, -0.648028,
		0.571779, -0.372934, 0.730746,
		-0.326150, -0.920628, -0.214640,
		43.324829, 42.340759, 19.003626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128250, 42.575836, 19.329937>,  <43.553135, 42.985199, 19.153873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128250, 42.575836, 19.329937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.913853, 42.372543, 19.060297>,  <43.785213, 42.250568, 18.898514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.913853, 42.372543, 19.060297>,  <44.128250, 42.575836, 19.329937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913853, 42.372543, 19.060297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822255, -0.133320, -0.553283,
		0.191325, -0.850839, 0.489355,
		-0.535996, -0.508231, -0.674099,
		43.753056, 42.220074, 18.858067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566528, 42.056660, 19.175690>,  <44.128250, 42.575836, 19.329937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566528, 42.056660, 19.175690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.309151, 42.070324, 18.869799>,  <44.154724, 42.078522, 18.686264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.309151, 42.070324, 18.869799>,  <44.566528, 42.056660, 19.175690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309151, 42.070324, 18.869799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730235, -0.272296, -0.626587,
		-0.229638, -0.961607, 0.150262,
		-0.643446, 0.034162, -0.764729,
		44.116116, 42.080570, 18.640381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685448, 41.396416, 18.789568>,  <44.566528, 42.056660, 19.175690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685448, 41.396416, 18.789568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.498688, 41.646084, 18.538994>,  <44.386631, 41.795883, 18.388649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.498688, 41.646084, 18.538994>,  <44.685448, 41.396416, 18.789568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498688, 41.646084, 18.538994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519310, -0.379850, -0.765527,
		-0.715768, -0.682737, -0.146785,
		-0.466897, 0.624167, -0.626436,
		44.358620, 41.833332, 18.351063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690506, 41.067627, 18.212748>,  <44.685448, 41.396416, 18.789568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690506, 41.067627, 18.212748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603825, 41.435303, 18.081213>,  <44.551815, 41.655907, 18.002293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603825, 41.435303, 18.081213>,  <44.690506, 41.067627, 18.212748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603825, 41.435303, 18.081213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541446, -0.167119, -0.823958,
		-0.812328, -0.356600, -0.461476,
		-0.216702, 0.919188, -0.328836,
		44.538815, 41.711060, 17.982563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360027, 40.916462, 17.646217>,  <44.690506, 41.067627, 18.212748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360027, 40.916462, 17.646217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.494770, 41.291588, 17.612665>,  <44.575615, 41.516663, 17.592533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.494770, 41.291588, 17.612665>,  <44.360027, 40.916462, 17.646217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494770, 41.291588, 17.612665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480726, -0.247906, -0.841098,
		-0.809587, 0.243005, -0.534339,
		0.336856, 0.937812, -0.083882,
		44.595825, 41.572933, 17.587500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254726, 40.390198, 18.235142>,  <44.360027, 40.916462, 17.646217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254726, 40.390198, 18.235142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.211735, 40.101883, 17.961233>,  <44.185940, 39.928894, 17.796888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.211735, 40.101883, 17.961233>,  <44.254726, 40.390198, 18.235142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211735, 40.101883, 17.961233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846771, -0.294563, 0.442958,
		-0.520988, 0.627450, -0.578686,
		-0.107475, -0.720791, -0.684770,
		44.179493, 39.885647, 17.755802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481937, 40.329441, 17.988577>,  <44.254726, 40.390198, 18.235142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481937, 40.329441, 17.988577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.641350, 39.971657, 17.907471>,  <43.736996, 39.756985, 17.858807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.641350, 39.971657, 17.907471>,  <43.481937, 40.329441, 17.988577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641350, 39.971657, 17.907471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880764, -0.434903, 0.187388,
		-0.255796, 0.103910, -0.961130,
		0.398527, -0.894462, -0.202766,
		43.760906, 39.703320, 17.846642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952850, 39.970573, 17.679611>,  <43.481937, 40.329441, 17.988577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952850, 39.970573, 17.679611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.185760, 39.651836, 17.744110>,  <43.325508, 39.460594, 17.782808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.185760, 39.651836, 17.744110>,  <42.952850, 39.970573, 17.679611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185760, 39.651836, 17.744110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812987, -0.570125, 0.118359,
		-0.002382, -0.200009, -0.979791,
		0.582276, -0.796840, 0.161246,
		43.360443, 39.412785, 17.792484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703762, 39.431015, 17.266911>,  <42.952850, 39.970573, 17.679611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703762, 39.431015, 17.266911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.876598, 39.272205, 17.590805>,  <42.980301, 39.176918, 17.785141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.876598, 39.272205, 17.590805>,  <42.703762, 39.431015, 17.266911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876598, 39.272205, 17.590805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785308, -0.607087, 0.121391,
		0.443385, -0.688344, -0.574101,
		0.432089, -0.397023, 0.809736,
		43.006226, 39.153099, 17.833725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468964, 38.707233, 17.264427>,  <42.703762, 39.431015, 17.266911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468964, 38.707233, 17.264427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.626732, 38.720009, 17.631777>,  <42.721394, 38.727673, 17.852186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.626732, 38.720009, 17.631777>,  <42.468964, 38.707233, 17.264427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626732, 38.720009, 17.631777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549314, -0.792984, 0.263495,
		0.736672, -0.608404, -0.295226,
		0.394421, 0.031937, 0.918375,
		42.745060, 38.729591, 17.907290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520206, 38.081169, 17.437336>,  <42.468964, 38.707233, 17.264427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520206, 38.081169, 17.437336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540600, 38.265003, 17.792004>,  <42.552837, 38.375301, 18.004805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540600, 38.265003, 17.792004>,  <42.520206, 38.081169, 17.437336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540600, 38.265003, 17.792004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581428, -0.708193, 0.400506,
		0.811999, -0.535954, 0.231109,
		0.050983, 0.459583, 0.886670,
		42.555893, 38.402878, 18.058004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668179, 37.544739, 18.047424>,  <42.520206, 38.081169, 17.437336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668179, 37.544739, 18.047424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.500427, 37.869583, 18.209709>,  <42.399776, 38.064491, 18.307079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.500427, 37.869583, 18.209709>,  <42.668179, 37.544739, 18.047424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500427, 37.869583, 18.209709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693996, -0.574907, 0.433419,
		0.585230, -0.099798, 0.804703,
		-0.419375, 0.812110, 0.405712,
		42.374615, 38.113216, 18.331423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484390, 37.267754, 18.770145>,  <42.668179, 37.544739, 18.047424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484390, 37.267754, 18.770145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.284462, 37.605850, 18.694517>,  <42.164505, 37.808708, 18.649139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.284462, 37.605850, 18.694517>,  <42.484390, 37.267754, 18.770145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284462, 37.605850, 18.694517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698273, -0.264086, 0.665338,
		0.512439, 0.464574, 0.722203,
		-0.499822, 0.845240, -0.189071,
		42.134514, 37.859421, 18.637796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745079, 36.996265, 19.297546>,  <42.484390, 37.267754, 18.770145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745079, 36.996265, 19.297546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.629879, 36.644226, 19.146563>,  <42.560760, 36.433002, 19.055971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.629879, 36.644226, 19.146563>,  <42.745079, 36.996265, 19.297546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629879, 36.644226, 19.146563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835771, -0.038583, -0.547720,
		0.467486, -0.473214, 0.746676,
		-0.287998, -0.880103, -0.377461,
		42.543480, 36.380196, 19.033323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313175, 36.546730, 19.394667>,  <42.745079, 36.996265, 19.297546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313175, 36.546730, 19.394667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.097473, 36.400570, 19.091169>,  <42.968052, 36.312874, 18.909071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.097473, 36.400570, 19.091169>,  <43.313175, 36.546730, 19.394667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097473, 36.400570, 19.091169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816441, -0.005949, -0.577398,
		0.206466, -0.930833, 0.301532,
		-0.539255, -0.365396, -0.758742,
		42.935696, 36.290951, 18.863546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613888, 35.859550, 19.157480>,  <43.313175, 36.546730, 19.394667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613888, 35.859550, 19.157480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.393848, 36.024242, 18.866861>,  <43.261826, 36.123058, 18.692490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.393848, 36.024242, 18.866861>,  <43.613888, 35.859550, 19.157480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393848, 36.024242, 18.866861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710833, -0.225766, -0.666143,
		-0.438299, -0.882899, -0.168476,
		-0.550101, 0.411728, -0.726546,
		43.228817, 36.147762, 18.648897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841766, 35.491150, 18.645561>,  <43.613888, 35.859550, 19.157480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841766, 35.491150, 18.645561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.642921, 35.795841, 18.479359>,  <43.523613, 35.978657, 18.379637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.642921, 35.795841, 18.479359>,  <43.841766, 35.491150, 18.645561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642921, 35.795841, 18.479359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611481, -0.032194, -0.790604,
		-0.615603, -0.647096, -0.449778,
		-0.497116, 0.761729, -0.415505,
		43.493786, 36.024361, 18.354708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674683, 35.210533, 17.940969>,  <43.841766, 35.491150, 18.645561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674683, 35.210533, 17.940969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.667919, 35.609024, 17.975010>,  <43.663860, 35.848118, 17.995434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.667919, 35.609024, 17.975010>,  <43.674683, 35.210533, 17.940969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667919, 35.609024, 17.975010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821469, 0.062360, -0.566833,
		-0.570002, 0.060326, -0.819426,
		-0.016904, 0.996229, 0.085101,
		43.662849, 35.907894, 18.000540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918793, 35.411289, 17.372601>,  <43.674683, 35.210533, 17.940969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918793, 35.411289, 17.372601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.940632, 35.767323, 17.553608>,  <43.953735, 35.980942, 17.662212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.940632, 35.767323, 17.553608>,  <43.918793, 35.411289, 17.372601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940632, 35.767323, 17.553608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799759, 0.232356, -0.553531,
		-0.597833, 0.392128, -0.699164,
		0.054600, 0.890082, 0.452518,
		43.957012, 36.034348, 17.689363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911125, 35.810890, 16.776493>,  <43.918793, 35.411289, 17.372601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911125, 35.810890, 16.776493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.078533, 35.958931, 17.108244>,  <44.178978, 36.047756, 17.307295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.078533, 35.958931, 17.108244>,  <43.911125, 35.810890, 16.776493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078533, 35.958931, 17.108244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795547, 0.291130, -0.531364,
		-0.438116, 0.882194, -0.172590,
		0.418520, 0.370103, 0.829376,
		44.204090, 36.069962, 17.357058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301758, 36.275707, 16.540224>,  <43.911125, 35.810890, 16.776493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301758, 36.275707, 16.540224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.448212, 36.220066, 16.908266>,  <44.536083, 36.186680, 17.129091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.448212, 36.220066, 16.908266>,  <44.301758, 36.275707, 16.540224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448212, 36.220066, 16.908266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930545, 0.049085, -0.362873,
		0.005313, 0.989061, 0.147412,
		0.366139, -0.139102, 0.920105,
		44.558052, 36.178337, 17.184298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707420, 36.874027, 16.688896>,  <44.301758, 36.275707, 16.540224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707420, 36.874027, 16.688896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.829445, 36.556103, 16.898743>,  <44.902660, 36.365349, 17.024651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.829445, 36.556103, 16.898743>,  <44.707420, 36.874027, 16.688896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829445, 36.556103, 16.898743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885121, 0.033348, -0.464164,
		0.351426, 0.605945, 0.713674,
		0.305058, -0.794807, 0.524615,
		44.920963, 36.317661, 17.056128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.493740, 36.533962, 29.877510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820492, 36.411358, 30.072962>,  <36.016544, 36.337795, 30.190233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820492, 36.411358, 30.072962>,  <35.493740, 36.533962, 29.877510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820492, 36.411358, 30.072962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506893, -0.022797, -0.861708,
		0.275261, 0.951595, 0.136745,
		0.816879, -0.306509, 0.488632,
		36.065556, 36.319405, 30.219551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074528, 36.879513, 29.619612>,  <35.493740, 36.533962, 29.877510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074528, 36.879513, 29.619612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.217030, 36.545174, 29.786676>,  <36.302528, 36.344570, 29.886915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.217030, 36.545174, 29.786676>,  <36.074528, 36.879513, 29.619612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217030, 36.545174, 29.786676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762806, 0.002012, -0.646625,
		0.539640, 0.548956, 0.638307,
		0.356253, -0.835849, 0.417661,
		36.323906, 36.294418, 29.911974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795918, 37.042053, 29.668552>,  <36.074528, 36.879513, 29.619612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795918, 37.042053, 29.668552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741634, 36.645760, 29.666546>,  <36.709064, 36.407982, 29.665342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741634, 36.645760, 29.666546>,  <36.795918, 37.042053, 29.668552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741634, 36.645760, 29.666546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602412, -0.078491, -0.794317,
		0.786565, -0.110816, 0.607483,
		-0.135705, -0.990737, -0.005018,
		36.700924, 36.348537, 29.665041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422176, 36.769169, 29.396927>,  <36.795918, 37.042053, 29.668552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422176, 36.769169, 29.396927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211147, 36.429379, 29.394047>,  <37.084530, 36.225506, 29.392319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211147, 36.429379, 29.394047>,  <37.422176, 36.769169, 29.396927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211147, 36.429379, 29.394047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518528, -0.315300, -0.794805,
		0.672898, -0.423054, 0.606822,
		-0.527576, -0.849477, -0.007200,
		37.052876, 36.174534, 29.391886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840069, 36.248341, 29.191879>,  <37.422176, 36.769169, 29.396927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840069, 36.248341, 29.191879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474777, 36.128235, 29.081718>,  <37.255600, 36.056171, 29.015621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474777, 36.128235, 29.081718>,  <37.840069, 36.248341, 29.191879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474777, 36.128235, 29.081718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356755, -0.262786, -0.896476,
		0.196811, -0.916942, 0.347107,
		-0.913231, -0.300268, -0.275404,
		37.200809, 36.038155, 28.999098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938538, 35.559605, 28.777327>,  <37.840069, 36.248341, 29.191879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938538, 35.559605, 28.777327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574551, 35.710621, 28.708710>,  <37.356159, 35.801231, 28.667540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574551, 35.710621, 28.708710>,  <37.938538, 35.559605, 28.777327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574551, 35.710621, 28.708710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167436, -0.043940, -0.984903,
		-0.379379, -0.924950, -0.023230,
		-0.909965, 0.377541, -0.171540,
		37.301559, 35.823883, 28.657248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648071, 35.012211, 28.293367>,  <37.938538, 35.559605, 28.777327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648071, 35.012211, 28.293367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471207, 35.367878, 28.246244>,  <37.365089, 35.581276, 28.217972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471207, 35.367878, 28.246244>,  <37.648071, 35.012211, 28.293367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471207, 35.367878, 28.246244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015150, -0.123920, -0.992176,
		-0.896807, -0.440488, 0.041322,
		-0.442162, 0.889165, -0.117806,
		37.338558, 35.634628, 28.210903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270676, 34.933121, 27.635038>,  <37.648071, 35.012211, 28.293367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270676, 34.933121, 27.635038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267033, 35.331295, 27.673027>,  <37.264847, 35.570202, 27.695820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267033, 35.331295, 27.673027>,  <37.270676, 34.933121, 27.635038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267033, 35.331295, 27.673027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247333, 0.094269, -0.964334,
		-0.968888, 0.014706, -0.247063,
		-0.009109, 0.995438, 0.094973,
		37.264301, 35.629925, 27.701519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852928, 35.139069, 27.173376>,  <37.270676, 34.933121, 27.635038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852928, 35.139069, 27.173376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073906, 35.465569, 27.240957>,  <37.206493, 35.661469, 27.281506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073906, 35.465569, 27.240957>,  <36.852928, 35.139069, 27.173376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073906, 35.465569, 27.240957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263296, 0.021434, -0.964477,
		-0.790871, 0.577307, -0.203073,
		0.552447, 0.816246, 0.168954,
		37.239639, 35.710442, 27.291643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619213, 35.666660, 26.686068>,  <36.852928, 35.139069, 27.173376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619213, 35.666660, 26.686068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984680, 35.776306, 26.806110>,  <37.203960, 35.842094, 26.878136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984680, 35.776306, 26.806110>,  <36.619213, 35.666660, 26.686068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984680, 35.776306, 26.806110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305712, 0.023117, -0.951844,
		-0.267852, 0.961419, -0.062679,
		0.913672, 0.274115, 0.300109,
		37.258781, 35.858540, 26.896143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808617, 36.305138, 26.287189>,  <36.619213, 35.666660, 26.686068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808617, 36.305138, 26.287189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155842, 36.153259, 26.415129>,  <37.364178, 36.062134, 26.491892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155842, 36.153259, 26.415129>,  <36.808617, 36.305138, 26.287189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155842, 36.153259, 26.415129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391587, 0.127634, -0.911246,
		0.305171, 0.916265, 0.259478,
		0.868061, -0.379694, 0.319847,
		37.416260, 36.039352, 26.511084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303539, 36.756195, 26.159470>,  <36.808617, 36.305138, 26.287189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303539, 36.756195, 26.159470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479649, 36.397053, 26.161100>,  <37.585312, 36.181568, 26.162079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479649, 36.397053, 26.161100>,  <37.303539, 36.756195, 26.159470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479649, 36.397053, 26.161100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400478, 0.192310, -0.895899,
		0.803604, 0.396070, 0.444240,
		0.440270, -0.897856, 0.004076,
		37.611729, 36.127697, 26.162323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345966, 37.324589, 25.760624>,  <37.303539, 36.756195, 26.159470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345966, 37.324589, 25.760624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994339, 37.339840, 25.570555>,  <36.783363, 37.348991, 25.456512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994339, 37.339840, 25.570555>,  <37.345966, 37.324589, 25.760624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994339, 37.339840, 25.570555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475686, -0.005139, 0.879600,
		0.031098, 0.999260, 0.022655,
		-0.879065, 0.038131, -0.475174,
		36.730618, 37.351280, 25.428003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967091, 37.565166, 26.245825>,  <37.345966, 37.324589, 25.760624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967091, 37.565166, 26.245825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690994, 37.426418, 25.991817>,  <36.525337, 37.343170, 25.839413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690994, 37.426418, 25.991817>,  <36.967091, 37.565166, 26.245825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690994, 37.426418, 25.991817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675225, -0.006666, 0.737582,
		-0.260076, 0.937890, -0.229613,
		-0.690240, -0.346868, -0.635020,
		36.483921, 37.322357, 25.801311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369991, 38.074810, 26.226767>,  <36.967091, 37.565166, 26.245825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369991, 38.074810, 26.226767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242393, 37.709328, 26.126064>,  <36.165836, 37.490036, 26.065643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242393, 37.709328, 26.126064>,  <36.369991, 38.074810, 26.226767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242393, 37.709328, 26.126064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696985, 0.046160, 0.715599,
		-0.642228, 0.403741, -0.651565,
		-0.318993, -0.913708, -0.251756,
		36.146694, 37.435215, 26.050537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672939, 38.111156, 26.030960>,  <36.369991, 38.074810, 26.226767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672939, 38.111156, 26.030960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716446, 37.728611, 26.139435>,  <35.742550, 37.499084, 26.204519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716446, 37.728611, 26.139435>,  <35.672939, 38.111156, 26.030960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716446, 37.728611, 26.139435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688234, 0.124405, 0.714743,
		-0.717290, -0.264378, -0.644670,
		0.108762, -0.956362, 0.271188,
		35.749073, 37.441704, 26.220791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993767, 37.917503, 26.030611>,  <35.672939, 38.111156, 26.030960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993767, 37.917503, 26.030611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238842, 37.694805, 26.254988>,  <35.385887, 37.561188, 26.389614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238842, 37.694805, 26.254988>,  <34.993767, 37.917503, 26.030611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238842, 37.694805, 26.254988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723178, -0.108635, 0.682064,
		-0.318798, -0.823549, -0.469185,
		0.612684, -0.556745, 0.560941,
		35.422646, 37.527782, 26.423269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498890, 37.400089, 26.319399>,  <34.993767, 37.917503, 26.030611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498890, 37.400089, 26.319399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830048, 37.386509, 26.543341>,  <35.028744, 37.378361, 26.677706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830048, 37.386509, 26.543341>,  <34.498890, 37.400089, 26.319399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830048, 37.386509, 26.543341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558396, -0.143722, 0.817030,
		0.052730, -0.989036, -0.137941,
		0.827897, -0.033944, 0.559853,
		35.078415, 37.376324, 26.711296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376110, 36.970631, 26.832743>,  <34.498890, 37.400089, 26.319399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376110, 36.970631, 26.832743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667217, 37.195198, 26.990301>,  <34.841881, 37.329941, 27.084837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667217, 37.195198, 26.990301>,  <34.376110, 36.970631, 26.832743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667217, 37.195198, 26.990301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467992, -0.013304, 0.883633,
		0.501331, -0.827423, 0.253059,
		0.727771, 0.561422, 0.393897,
		34.885548, 37.363625, 27.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318363, 36.853268, 27.654390>,  <34.376110, 36.970631, 26.832743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318363, 36.853268, 27.654390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571980, 37.161789, 27.632175>,  <34.724148, 37.346901, 27.618847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571980, 37.161789, 27.632175>,  <34.318363, 36.853268, 27.654390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571980, 37.161789, 27.632175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340346, 0.342822, 0.875579,
		0.694378, -0.536248, 0.479873,
		0.634038, 0.771305, -0.055538,
		34.762192, 37.393181, 27.615515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552555, 36.816051, 28.349846>,  <34.318363, 36.853268, 27.654390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552555, 36.816051, 28.349846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648129, 37.174915, 28.201246>,  <34.705471, 37.390232, 28.112085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648129, 37.174915, 28.201246>,  <34.552555, 36.816051, 28.349846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648129, 37.174915, 28.201246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255320, 0.427164, 0.867376,
		0.936868, -0.112395, 0.331127,
		0.238935, 0.897161, -0.371500,
		34.719810, 37.444065, 28.089796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975079, 37.171581, 28.849964>,  <34.552555, 36.816051, 28.349846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975079, 37.171581, 28.849964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846252, 37.475189, 28.623632>,  <34.768959, 37.657352, 28.487833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846252, 37.475189, 28.623632>,  <34.975079, 37.171581, 28.849964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846252, 37.475189, 28.623632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314076, 0.478166, 0.820191,
		0.893102, 0.441868, 0.084390,
		-0.322063, 0.759019, -0.565831,
		34.749634, 37.702896, 28.453882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206337, 37.847557, 29.180357>,  <34.975079, 37.171581, 28.849964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206337, 37.847557, 29.180357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896297, 37.936863, 28.943926>,  <34.710274, 37.990448, 28.802067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896297, 37.936863, 28.943926>,  <35.206337, 37.847557, 29.180357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896297, 37.936863, 28.943926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350883, 0.625878, 0.696533,
		0.525455, 0.747281, -0.406777,
		-0.775099, 0.223266, -0.591079,
		34.663769, 38.003841, 28.766602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072929, 38.630463, 29.223574>,  <35.206337, 37.847557, 29.180357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072929, 38.630463, 29.223574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744987, 38.477463, 29.053148>,  <34.548222, 38.385662, 28.950893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744987, 38.477463, 29.053148>,  <35.072929, 38.630463, 29.223574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744987, 38.477463, 29.053148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570624, 0.484494, 0.663064,
		-0.047200, 0.786738, -0.615480,
		-0.819854, -0.382504, -0.426064,
		34.499031, 38.362713, 28.925329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460869, 39.216412, 29.287003>,  <35.072929, 38.630463, 29.223574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460869, 39.216412, 29.287003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266167, 38.870308, 29.239021>,  <34.149345, 38.662643, 29.210232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266167, 38.870308, 29.239021>,  <34.460869, 39.216412, 29.287003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266167, 38.870308, 29.239021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396477, 0.096476, 0.912961,
		-0.778377, 0.491951, -0.390017,
		-0.486759, -0.865261, -0.119953,
		34.120140, 38.610729, 29.203035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683857, 39.290924, 29.344065>,  <34.460869, 39.216412, 29.287003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683857, 39.290924, 29.344065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696918, 38.892685, 29.379189>,  <33.704758, 38.653740, 29.400263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696918, 38.892685, 29.379189>,  <33.683857, 39.290924, 29.344065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696918, 38.892685, 29.379189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430016, 0.065315, 0.900456,
		-0.902231, -0.067166, -0.425991,
		0.032656, -0.995602, 0.087812,
		33.706715, 38.594006, 29.405533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059299, 39.887577, 28.942217>,  <33.683857, 39.290924, 29.344065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059299, 39.887577, 28.942217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271362, 40.203499, 29.065598>,  <34.398602, 40.393051, 29.139626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271362, 40.203499, 29.065598>,  <34.059299, 39.887577, 28.942217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271362, 40.203499, 29.065598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549073, -0.042588, -0.834689,
		-0.646104, 0.611880, -0.456238,
		0.530160, 0.789803, 0.308450,
		34.430408, 40.440441, 29.158133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144028, 40.471283, 28.360180>,  <34.059299, 39.887577, 28.942217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144028, 40.471283, 28.360180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450317, 40.475719, 28.617409>,  <34.634090, 40.478382, 28.771746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450317, 40.475719, 28.617409>,  <34.144028, 40.471283, 28.360180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450317, 40.475719, 28.617409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639224, 0.097403, -0.762827,
		-0.071097, 0.995183, 0.067495,
		0.765727, 0.011091, 0.643070,
		34.680035, 40.479046, 28.810329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492794, 41.048813, 28.237114>,  <34.144028, 40.471283, 28.360180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492794, 41.048813, 28.237114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700916, 40.737255, 28.377174>,  <34.825790, 40.550320, 28.461210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700916, 40.737255, 28.377174>,  <34.492794, 41.048813, 28.237114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700916, 40.737255, 28.377174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591964, 0.033427, -0.805271,
		0.615515, 0.626267, 0.478468,
		0.520308, -0.778892, 0.350152,
		34.857010, 40.503586, 28.482220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179329, 41.276356, 28.250492>,  <34.492794, 41.048813, 28.237114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179329, 41.276356, 28.250492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176205, 40.878284, 28.211382>,  <35.174332, 40.639442, 28.187916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176205, 40.878284, 28.211382>,  <35.179329, 41.276356, 28.250492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176205, 40.878284, 28.211382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648240, 0.069413, -0.758265,
		0.761396, -0.069301, 0.644572,
		-0.007807, -0.995178, -0.097775,
		35.173862, 40.579731, 28.182049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852043, 41.096500, 28.238939>,  <35.179329, 41.276356, 28.250492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852043, 41.096500, 28.238939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652397, 40.789165, 28.078672>,  <35.532608, 40.604763, 27.982512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652397, 40.789165, 28.078672>,  <35.852043, 41.096500, 28.238939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652397, 40.789165, 28.078672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611731, 0.015061, -0.790922,
		0.613731, -0.639865, 0.462500,
		-0.499118, -0.768339, -0.400669,
		35.502663, 40.558662, 27.958471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390526, 40.739185, 27.882490>,  <35.852043, 41.096500, 28.238939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390526, 40.739185, 27.882490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058121, 40.588322, 27.718943>,  <35.858677, 40.497803, 27.620815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058121, 40.588322, 27.718943>,  <36.390526, 40.739185, 27.882490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058121, 40.588322, 27.718943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441819, -0.000957, -0.897104,
		0.337959, -0.926148, 0.167431,
		-0.831011, -0.377159, -0.408867,
		35.808819, 40.475174, 27.596283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550709, 40.120907, 27.581011>,  <36.390526, 40.739185, 27.882490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550709, 40.120907, 27.581011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222694, 40.262142, 27.400845>,  <36.025887, 40.346886, 27.292746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222694, 40.262142, 27.400845>,  <36.550709, 40.120907, 27.581011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222694, 40.262142, 27.400845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457336, -0.068870, -0.886623,
		-0.344078, -0.933051, -0.105005,
		-0.820033, 0.353090, -0.450414,
		35.976685, 40.368069, 27.265720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402981, 39.661659, 26.970488>,  <36.550709, 40.120907, 27.581011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402981, 39.661659, 26.970488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.192623, 39.991993, 26.889059>,  <36.066410, 40.190193, 26.840202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.192623, 39.991993, 26.889059>,  <36.402981, 39.661659, 26.970488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192623, 39.991993, 26.889059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395536, 0.025563, -0.918094,
		-0.752986, -0.563340, -0.340089,
		-0.525893, 0.825830, -0.203572,
		36.034855, 40.239742, 26.827988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109447, 39.502586, 26.253006>,  <36.402981, 39.661659, 26.970488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109447, 39.502586, 26.253006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075535, 39.895878, 26.317602>,  <36.055187, 40.131851, 26.356359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075535, 39.895878, 26.317602>,  <36.109447, 39.502586, 26.253006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075535, 39.895878, 26.317602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432556, 0.182325, -0.882980,
		-0.897612, -0.005011, -0.440758,
		-0.084786, 0.983226, 0.161489,
		36.050098, 40.190845, 26.366049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876369, 39.714970, 25.654993>,  <36.109447, 39.502586, 26.253006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876369, 39.714970, 25.654993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009315, 40.045677, 25.836535>,  <36.089085, 40.244102, 25.945459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009315, 40.045677, 25.836535>,  <35.876369, 39.714970, 25.654993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009315, 40.045677, 25.836535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463497, 0.275915, -0.842046,
		-0.821404, 0.490227, -0.291501,
		0.332364, 0.826770, 0.453856,
		36.109024, 40.293709, 25.972691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617706, 40.356712, 25.382103>,  <35.876369, 39.714970, 25.654993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617706, 40.356712, 25.382103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966110, 40.442265, 25.559010>,  <36.175152, 40.493595, 25.665154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966110, 40.442265, 25.559010>,  <35.617706, 40.356712, 25.382103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966110, 40.442265, 25.559010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373490, 0.296532, -0.878962,
		-0.319138, 0.930766, 0.178401,
		0.871009, 0.213879, 0.442266,
		36.227413, 40.506428, 25.691689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865425, 40.897488, 24.972473>,  <35.617706, 40.356712, 25.382103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865425, 40.897488, 24.972473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190235, 40.788464, 25.178902>,  <36.385120, 40.723049, 25.302759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190235, 40.788464, 25.178902>,  <35.865425, 40.897488, 24.972473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190235, 40.788464, 25.178902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583070, 0.340401, -0.737670,
		0.025386, 0.899911, 0.435333,
		0.812025, -0.272556, 0.516070,
		36.433842, 40.706696, 25.333723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362251, 41.258137, 24.741146>,  <35.865425, 40.897488, 24.972473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362251, 41.258137, 24.741146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607838, 41.002941, 24.927053>,  <36.755192, 40.849823, 25.038597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607838, 41.002941, 24.927053>,  <36.362251, 41.258137, 24.741146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607838, 41.002941, 24.927053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686174, 0.140372, -0.713765,
		0.390135, 0.757141, 0.523957,
		0.613970, -0.637991, 0.464767,
		36.792030, 40.811543, 25.066484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060043, 41.609730, 24.838909>,  <36.362251, 41.258137, 24.741146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060043, 41.609730, 24.838909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078918, 41.210247, 24.846449>,  <37.090244, 40.970558, 24.850973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078918, 41.210247, 24.846449>,  <37.060043, 41.609730, 24.838909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078918, 41.210247, 24.846449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835664, 0.029136, -0.548468,
		0.547210, 0.041636, 0.835959,
		0.047192, -0.998708, 0.018850,
		37.093075, 40.910633, 24.852104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740314, 41.481075, 24.817183>,  <37.060043, 41.609730, 24.838909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740314, 41.481075, 24.817183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622028, 41.104469, 24.752563>,  <37.551056, 40.878506, 24.713793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622028, 41.104469, 24.752563>,  <37.740314, 41.481075, 24.817183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622028, 41.104469, 24.752563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854036, -0.184799, -0.486285,
		0.427993, -0.281766, 0.858738,
		-0.295712, -0.941519, -0.161546,
		37.533314, 40.822014, 24.704100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375530, 41.057911, 24.930473>,  <37.740314, 41.481075, 24.817183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375530, 41.057911, 24.930473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117638, 40.862778, 24.695070>,  <37.962902, 40.745697, 24.553829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117638, 40.862778, 24.695070>,  <38.375530, 41.057911, 24.930473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117638, 40.862778, 24.695070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752448, -0.269352, -0.601059,
		0.134701, -0.830343, 0.540727,
		-0.644731, -0.487832, -0.588508,
		37.924217, 40.716427, 24.518518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811653, 40.596176, 24.676466>,  <38.375530, 41.057911, 24.930473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811653, 40.596176, 24.676466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.507290, 40.580349, 24.417406>,  <38.324673, 40.570854, 24.261971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.507290, 40.580349, 24.417406>,  <38.811653, 40.596176, 24.676466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507290, 40.580349, 24.417406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647302, -0.115318, -0.753460,
		-0.044871, -0.992540, 0.113360,
		-0.760912, -0.039570, -0.647648,
		38.279015, 40.568478, 24.223112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999962, 40.116203, 24.226675>,  <38.811653, 40.596176, 24.676466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999962, 40.116203, 24.226675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712486, 40.312263, 24.029400>,  <38.540001, 40.429901, 23.911034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712486, 40.312263, 24.029400>,  <38.999962, 40.116203, 24.226675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712486, 40.312263, 24.029400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580873, 0.033361, -0.813311,
		-0.382192, -0.870999, -0.308692,
		-0.718691, 0.490151, -0.493189,
		38.496880, 40.459309, 23.881443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914825, 39.782085, 23.563210>,  <38.999962, 40.116203, 24.226675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914825, 39.782085, 23.563210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770531, 40.150425, 23.504011>,  <38.683952, 40.371429, 23.468493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770531, 40.150425, 23.504011>,  <38.914825, 39.782085, 23.563210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770531, 40.150425, 23.504011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473847, 0.044278, -0.879494,
		-0.803330, -0.387392, -0.452315,
		-0.360736, 0.920851, -0.147994,
		38.662312, 40.426682, 23.459612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828926, 39.778000, 22.886700>,  <38.914825, 39.782085, 23.563210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828926, 39.778000, 22.886700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825394, 40.159912, 23.005569>,  <38.823273, 40.389061, 23.076891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825394, 40.159912, 23.005569>,  <38.828926, 39.778000, 22.886700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825394, 40.159912, 23.005569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424538, 0.272655, -0.863381,
		-0.905367, 0.118535, -0.407750,
		-0.008834, 0.954782, 0.297176,
		38.822742, 40.446346, 23.094723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809055, 40.072842, 22.243065>,  <38.828926, 39.778000, 22.886700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809055, 40.072842, 22.243065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934334, 40.348419, 22.504528>,  <39.009499, 40.513763, 22.661406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934334, 40.348419, 22.504528>,  <38.809055, 40.072842, 22.243065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934334, 40.348419, 22.504528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398302, 0.529538, -0.748963,
		-0.862128, 0.494925, -0.108558,
		0.313194, 0.688941, 0.653659,
		39.028294, 40.555099, 22.700626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521458, 40.666771, 22.021475>,  <38.809055, 40.072842, 22.243065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521458, 40.666771, 22.021475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840057, 40.752731, 22.247540>,  <39.031216, 40.804310, 22.383179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840057, 40.752731, 22.247540>,  <38.521458, 40.666771, 22.021475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840057, 40.752731, 22.247540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367098, 0.570839, -0.734427,
		-0.480448, 0.792439, 0.375781,
		0.796498, 0.214906, 0.565161,
		39.079006, 40.817204, 22.417088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778061, 41.355106, 21.614355>,  <38.521458, 40.666771, 22.021475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778061, 41.355106, 21.614355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.076641, 41.246792, 21.857498>,  <39.255791, 41.181805, 22.003384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.076641, 41.246792, 21.857498>,  <38.778061, 41.355106, 21.614355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076641, 41.246792, 21.857498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660573, 0.411829, -0.627726,
		-0.080357, 0.870100, 0.486281,
		0.746449, -0.270782, 0.607858,
		39.300575, 41.165558, 22.039856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224197, 41.881512, 21.547440>,  <38.778061, 41.355106, 21.614355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224197, 41.881512, 21.547440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.426723, 41.570309, 21.696217>,  <39.548241, 41.383587, 21.785482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.426723, 41.570309, 21.696217>,  <39.224197, 41.881512, 21.547440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426723, 41.570309, 21.696217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791581, 0.248204, -0.558386,
		0.342112, 0.577144, 0.741528,
		0.506319, -0.778010, 0.371943,
		39.578621, 41.336906, 21.807800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891602, 42.036793, 21.722195>,  <39.224197, 41.881512, 21.547440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891602, 42.036793, 21.722195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939877, 41.640820, 21.692640>,  <39.968842, 41.403236, 21.674908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939877, 41.640820, 21.692640>,  <39.891602, 42.036793, 21.722195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939877, 41.640820, 21.692640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869217, 0.141330, -0.473801,
		0.479476, -0.007045, 0.877527,
		0.120683, -0.989937, -0.073888,
		39.976082, 41.343838, 21.670473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489273, 41.972782, 22.023428>,  <39.891602, 42.036793, 21.722195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489273, 41.972782, 22.023428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.423698, 41.655640, 21.788651>,  <40.384354, 41.465355, 21.647783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.423698, 41.655640, 21.788651>,  <40.489273, 41.972782, 22.023428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423698, 41.655640, 21.788651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832059, 0.208479, -0.514018,
		0.529908, -0.572638, 0.625526,
		-0.163937, -0.792857, -0.586944,
		40.374516, 41.417782, 21.612568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114422, 41.868347, 21.827005>,  <40.489273, 41.972782, 22.023428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114422, 41.868347, 21.827005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903702, 41.636570, 21.578253>,  <40.777271, 41.497505, 21.429001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903702, 41.636570, 21.578253>,  <41.114422, 41.868347, 21.827005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903702, 41.636570, 21.578253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761570, 0.003165, -0.648075,
		0.377488, -0.815010, 0.439615,
		-0.526796, -0.579438, -0.621882,
		40.745663, 41.462738, 21.391687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450871, 41.262276, 21.607172>,  <41.114422, 41.868347, 21.827005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450871, 41.262276, 21.607172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.202541, 41.338287, 21.302942>,  <41.053543, 41.383892, 21.120405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.202541, 41.338287, 21.302942>,  <41.450871, 41.262276, 21.607172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202541, 41.338287, 21.302942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779098, 0.041754, -0.625511,
		-0.087106, -0.980891, -0.173971,
		-0.620821, 0.190026, -0.760572,
		41.016296, 41.395294, 21.074770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983528, 40.818016, 21.939413>,  <41.450871, 41.262276, 21.607172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983528, 40.818016, 21.939413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.352238, 40.795658, 22.092884>,  <42.573463, 40.782242, 22.184967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.352238, 40.795658, 22.092884>,  <41.983528, 40.818016, 21.939413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352238, 40.795658, 22.092884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386615, -0.057510, 0.920447,
		-0.029383, -0.996779, -0.074621,
		0.921773, -0.055895, 0.383680,
		42.628769, 40.778889, 22.207989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957382, 40.399158, 22.654978>,  <41.983528, 40.818016, 21.939413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957382, 40.399158, 22.654978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311741, 40.576000, 22.711159>,  <42.524357, 40.682106, 22.744867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311741, 40.576000, 22.711159>,  <41.957382, 40.399158, 22.654978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311741, 40.576000, 22.711159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225909, 0.146728, 0.963035,
		0.405157, -0.884879, 0.229862,
		0.885896, 0.442109, 0.140454,
		42.577511, 40.708633, 22.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271923, 39.941471, 23.071308>,  <41.957382, 40.399158, 22.654978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271923, 39.941471, 23.071308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.474129, 40.282845, 23.122072>,  <42.595451, 40.487671, 23.152531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.474129, 40.282845, 23.122072>,  <42.271923, 39.941471, 23.071308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474129, 40.282845, 23.122072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181755, -0.038461, 0.982591,
		0.843460, -0.519776, 0.135674,
		0.505509, 0.853436, 0.126912,
		42.625782, 40.538876, 23.160147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608238, 39.821430, 23.596363>,  <42.271923, 39.941471, 23.071308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608238, 39.821430, 23.596363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.645874, 40.219398, 23.582058>,  <42.668453, 40.458179, 23.573475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.645874, 40.219398, 23.582058>,  <42.608238, 39.821430, 23.596363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645874, 40.219398, 23.582058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067426, 0.042209, 0.996831,
		0.993278, -0.091377, 0.071055,
		0.094087, 0.994921, -0.035765,
		42.674099, 40.517876, 23.571329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043468, 40.002438, 24.150803>,  <42.608238, 39.821430, 23.596363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043468, 40.002438, 24.150803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.845997, 40.341721, 24.074045>,  <42.727512, 40.545292, 24.027990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.845997, 40.341721, 24.074045>,  <43.043468, 40.002438, 24.150803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845997, 40.341721, 24.074045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175797, 0.118768, 0.977236,
		0.851690, 0.516177, 0.090479,
		-0.493680, 0.848208, -0.191896,
		42.697891, 40.596184, 24.016476>
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
