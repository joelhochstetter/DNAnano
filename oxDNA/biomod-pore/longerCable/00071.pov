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
	<24.536629, 34.637062, 35.417736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429697, 34.907257, 35.142857>,  <24.365538, 35.069374, 34.977928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429697, 34.907257, 35.142857>,  <24.536629, 34.637062, 35.417736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429697, 34.907257, 35.142857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161977, 0.671510, 0.723076,
		0.949894, 0.304610, -0.070099,
		-0.267328, 0.675491, -0.687203,
		24.349499, 35.109905, 34.936695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830923, 35.357834, 35.516220>,  <24.536629, 34.637062, 35.417736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830923, 35.357834, 35.516220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488302, 35.389069, 35.312172>,  <24.282730, 35.407810, 35.189743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488302, 35.389069, 35.312172>,  <24.830923, 35.357834, 35.516220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488302, 35.389069, 35.312172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245269, 0.808114, 0.535532,
		0.454052, 0.583827, -0.673040,
		-0.856551, 0.078084, -0.510121,
		24.231337, 35.412495, 35.159134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147036, 34.695213, 35.822227>,  <24.830923, 35.357834, 35.516220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147036, 34.695213, 35.822227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.972044, 34.352989, 35.711502>,  <24.867048, 34.147655, 35.645069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.972044, 34.352989, 35.711502>,  <25.147036, 34.695213, 35.822227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972044, 34.352989, 35.711502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421652, 0.467065, -0.777212,
		0.794243, -0.223296, -0.565081,
		-0.437478, -0.855563, -0.276811,
		24.840801, 34.096321, 35.628460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318138, 34.638165, 35.156322>,  <25.147036, 34.695213, 35.822227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318138, 34.638165, 35.156322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984919, 34.416885, 35.156120>,  <24.784986, 34.284119, 35.155998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984919, 34.416885, 35.156120>,  <25.318138, 34.638165, 35.156322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984919, 34.416885, 35.156120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256639, 0.387279, -0.885523,
		0.490065, -0.737556, -0.464595,
		-0.833050, -0.553197, -0.000506,
		24.735003, 34.250927, 35.155968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473164, 34.322987, 34.501476>,  <25.318138, 34.638165, 35.156322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473164, 34.322987, 34.501476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102688, 34.305176, 34.651245>,  <24.880404, 34.294487, 34.741108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102688, 34.305176, 34.651245>,  <25.473164, 34.322987, 34.501476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102688, 34.305176, 34.651245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375502, 0.199134, -0.905176,
		-0.034254, -0.978960, -0.201157,
		-0.926189, -0.044528, 0.374422,
		24.824831, 34.291817, 34.763573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673435, 34.138149, 33.761539>,  <25.473164, 34.322987, 34.501476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673435, 34.138149, 33.761539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053171, 34.013863, 33.742741>,  <26.281013, 33.939289, 33.731461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053171, 34.013863, 33.742741>,  <25.673435, 34.138149, 33.761539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053171, 34.013863, 33.742741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300722, -0.941658, 0.151152,
		-0.091217, -0.129363, -0.987393,
		0.949340, -0.310718, -0.046992,
		26.337973, 33.920647, 33.728642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689898, 33.435299, 33.378338>,  <25.673435, 34.138149, 33.761539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689898, 33.435299, 33.378338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000481, 33.505322, 33.620483>,  <26.186831, 33.547337, 33.765770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000481, 33.505322, 33.620483>,  <25.689898, 33.435299, 33.378338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000481, 33.505322, 33.620483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029289, -0.949578, 0.312159,
		0.629488, -0.260109, -0.732180,
		0.776458, 0.175056, 0.605367,
		26.233418, 33.557838, 33.802094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215725, 32.956253, 33.316597>,  <25.689898, 33.435299, 33.378338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215725, 32.956253, 33.316597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261406, 33.102440, 33.686115>,  <26.288815, 33.190151, 33.907825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261406, 33.102440, 33.686115>,  <26.215725, 32.956253, 33.316597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261406, 33.102440, 33.686115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195265, -0.903480, 0.381570,
		0.974079, -0.223960, -0.031816,
		0.114202, 0.365466, 0.923792,
		26.295666, 33.212078, 33.963253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690479, 32.480366, 33.641014>,  <26.215725, 32.956253, 33.316597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690479, 32.480366, 33.641014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486736, 32.666950, 33.930283>,  <26.364491, 32.778900, 34.103844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486736, 32.666950, 33.930283>,  <26.690479, 32.480366, 33.641014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486736, 32.666950, 33.930283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241202, -0.884051, 0.400344,
		0.826061, 0.029488, 0.562808,
		-0.509357, 0.466459, 0.723168,
		26.333929, 32.806889, 34.147232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815792, 32.112450, 34.322380>,  <26.690479, 32.480366, 33.641014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815792, 32.112450, 34.322380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463093, 32.301102, 34.326019>,  <26.251472, 32.414295, 34.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463093, 32.301102, 34.326019>,  <26.815792, 32.112450, 34.322380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463093, 32.301102, 34.326019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450761, -0.848097, 0.278470,
		0.139049, 0.241441, 0.960402,
		-0.881748, 0.471633, 0.009095,
		26.198568, 32.442593, 34.328747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466307, 32.055641, 35.033077>,  <26.815792, 32.112450, 34.322380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466307, 32.055641, 35.033077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206696, 32.054695, 34.728771>,  <26.050930, 32.054127, 34.546188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206696, 32.054695, 34.728771>,  <26.466307, 32.055641, 35.033077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206696, 32.054695, 34.728771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256625, -0.940704, 0.221855,
		-0.716176, 0.339220, 0.609935,
		-0.649026, -0.002363, -0.760762,
		26.011988, 32.053986, 34.500542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793207, 31.809124, 35.214085>,  <26.466307, 32.055641, 35.033077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793207, 31.809124, 35.214085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916460, 31.725430, 34.842865>,  <25.990412, 31.675213, 34.620132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916460, 31.725430, 34.842865>,  <25.793207, 31.809124, 35.214085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916460, 31.725430, 34.842865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168282, -0.972119, 0.163299,
		-0.936342, 0.105857, -0.334752,
		0.308132, -0.209237, -0.928049,
		26.008900, 31.662659, 34.564449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261013, 31.435223, 34.928154>,  <25.793207, 31.809124, 35.214085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261013, 31.435223, 34.928154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617134, 31.360723, 34.761936>,  <25.830807, 31.316025, 34.662205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617134, 31.360723, 34.761936>,  <25.261013, 31.435223, 34.928154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617134, 31.360723, 34.761936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142563, -0.980660, 0.134093,
		-0.432482, -0.060142, -0.899635,
		0.890301, -0.186247, -0.415544,
		25.884224, 31.304850, 34.637272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109909, 30.925079, 34.398991>,  <25.261013, 31.435223, 34.928154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109909, 30.925079, 34.398991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485636, 30.912613, 34.535641>,  <25.711073, 30.905132, 34.617630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485636, 30.912613, 34.535641>,  <25.109909, 30.925079, 34.398991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485636, 30.912613, 34.535641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084111, -0.986391, 0.141277,
		0.332576, -0.161438, -0.929156,
		0.939318, -0.031167, 0.341629,
		25.767431, 30.903263, 34.638130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685896, 31.256891, 34.034233>,  <25.109909, 30.925079, 34.398991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685896, 31.256891, 34.034233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431061, 31.472723, 34.254406>,  <25.278160, 31.602222, 34.386509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431061, 31.472723, 34.254406>,  <25.685896, 31.256891, 34.034233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431061, 31.472723, 34.254406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555242, 0.816578, -0.157819,
		-0.534624, 0.205076, -0.819830,
		-0.637090, 0.539578, 0.550429,
		25.239933, 31.634596, 34.419533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353230, 31.859661, 33.733486>,  <25.685896, 31.256891, 34.034233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353230, 31.859661, 33.733486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383530, 31.932592, 34.125614>,  <25.401709, 31.976351, 34.360889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383530, 31.932592, 34.125614>,  <25.353230, 31.859661, 33.733486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383530, 31.932592, 34.125614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611839, 0.767804, -0.190079,
		-0.787347, 0.614194, -0.053395,
		0.075748, 0.182327, 0.980316,
		25.406254, 31.987289, 34.419708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992002, 32.535046, 34.049999>,  <25.353230, 31.859661, 33.733486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992002, 32.535046, 34.049999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318937, 32.428207, 34.254204>,  <25.515099, 32.364105, 34.376728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318937, 32.428207, 34.254204>,  <24.992002, 32.535046, 34.049999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318937, 32.428207, 34.254204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352290, 0.932802, -0.075980,
		-0.455912, 0.241949, 0.856507,
		0.817335, -0.267098, 0.510511,
		25.564138, 32.348080, 34.407356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078049, 33.050308, 34.633327>,  <24.992002, 32.535046, 34.049999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078049, 33.050308, 34.633327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426014, 32.885540, 34.524826>,  <25.634792, 32.786678, 34.459724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426014, 32.885540, 34.524826>,  <25.078049, 33.050308, 34.633327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426014, 32.885540, 34.524826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398619, 0.911069, -0.105144,
		0.290441, -0.016661, 0.956748,
		0.869912, -0.411916, -0.271253,
		25.686987, 32.761967, 34.443451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580408, 33.433208, 35.002449>,  <25.078049, 33.050308, 34.633327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580408, 33.433208, 35.002449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801001, 33.240372, 34.730141>,  <25.933355, 33.124668, 34.566753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801001, 33.240372, 34.730141>,  <25.580408, 33.433208, 35.002449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801001, 33.240372, 34.730141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475865, 0.852092, -0.217927,
		0.685144, -0.203775, 0.699323,
		0.551479, -0.482095, -0.680775,
		25.966444, 33.095741, 34.525909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291645, 33.562687, 35.186146>,  <25.580408, 33.433208, 35.002449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291645, 33.562687, 35.186146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265512, 33.482147, 34.795212>,  <26.249834, 33.433823, 34.560650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265512, 33.482147, 34.795212>,  <26.291645, 33.562687, 35.186146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265512, 33.482147, 34.795212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485884, 0.849059, -0.207402,
		0.871579, -0.488422, 0.042364,
		-0.065330, -0.201351, -0.977338,
		26.245913, 33.421741, 34.502010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933868, 33.507076, 34.798634>,  <26.291645, 33.562687, 35.186146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933868, 33.507076, 34.798634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635727, 33.653488, 34.575756>,  <26.456842, 33.741337, 34.442028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635727, 33.653488, 34.575756>,  <26.933868, 33.507076, 34.798634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635727, 33.653488, 34.575756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508352, 0.852774, -0.119815,
		0.431306, -0.372556, -0.821691,
		-0.745354, 0.366032, -0.557196,
		26.412121, 33.763298, 34.408596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036392, 33.699303, 34.147373>,  <26.933868, 33.507076, 34.798634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036392, 33.699303, 34.147373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745670, 33.924915, 34.304153>,  <26.571238, 34.060284, 34.398220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745670, 33.924915, 34.304153>,  <27.036392, 33.699303, 34.147373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745670, 33.924915, 34.304153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638805, 0.764766, 0.084024,
		-0.252356, 0.311447, -0.916143,
		-0.726804, 0.564033, 0.391947,
		26.527630, 34.094124, 34.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783838, 33.903873, 33.702923>,  <27.036392, 33.699303, 34.147373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783838, 33.903873, 33.702923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576046, 34.155964, 33.472115>,  <27.451370, 34.307217, 33.333630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576046, 34.155964, 33.472115>,  <27.783838, 33.903873, 33.702923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576046, 34.155964, 33.472115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140690, 0.602987, 0.785247,
		0.842820, 0.489102, -0.224574,
		-0.519482, 0.630226, -0.577021,
		27.420202, 34.345032, 33.299007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089176, 34.586636, 33.608273>,  <27.783838, 33.903873, 33.702923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089176, 34.586636, 33.608273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689779, 34.601841, 33.592419>,  <27.450142, 34.610966, 33.582905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689779, 34.601841, 33.592419>,  <28.089176, 34.586636, 33.608273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689779, 34.601841, 33.592419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005203, 0.652986, 0.757352,
		0.054671, 0.756416, -0.651803,
		-0.998491, 0.038014, -0.039635,
		27.390232, 34.613247, 33.580528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796406, 35.242130, 33.341690>,  <28.089176, 34.586636, 33.608273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796406, 35.242130, 33.341690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573441, 35.065990, 33.623222>,  <27.439661, 34.960308, 33.792141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573441, 35.065990, 33.623222>,  <27.796406, 35.242130, 33.341690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573441, 35.065990, 33.623222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022759, 0.855538, 0.517239,
		-0.829922, 0.272298, -0.486912,
		-0.557415, -0.440349, 0.703833,
		27.406216, 34.933887, 33.834373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244164, 35.672520, 33.602200>,  <27.796406, 35.242130, 33.341690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244164, 35.672520, 33.602200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258337, 35.417980, 33.910435>,  <27.266842, 35.265259, 34.095375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258337, 35.417980, 33.910435>,  <27.244164, 35.672520, 33.602200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258337, 35.417980, 33.910435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137669, 0.760615, 0.634439,
		-0.989844, -0.128566, -0.060654,
		0.035433, -0.636346, 0.770590,
		27.268967, 35.227077, 34.141613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014763, 36.119942, 34.129955>,  <27.244164, 35.672520, 33.602200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014763, 36.119942, 34.129955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138313, 35.780457, 34.301662>,  <27.212444, 35.576763, 34.404686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138313, 35.780457, 34.301662>,  <27.014763, 36.119942, 34.129955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138313, 35.780457, 34.301662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305327, 0.515935, 0.800366,
		-0.900762, -0.116145, 0.418496,
		0.308875, -0.848717, 0.429273,
		27.230976, 35.525841, 34.430443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680138, 36.032291, 34.794571>,  <27.014763, 36.119942, 34.129955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680138, 36.032291, 34.794571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045767, 35.871487, 34.773209>,  <27.265144, 35.775002, 34.760391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045767, 35.871487, 34.773209>,  <26.680138, 36.032291, 34.794571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045767, 35.871487, 34.773209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286020, 0.545706, 0.787653,
		-0.287506, -0.735248, 0.613800,
		0.914075, -0.402014, -0.053402,
		27.319990, 35.750881, 34.757187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023441, 35.797241, 35.358494>,  <26.680138, 36.032291, 34.794571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023441, 35.797241, 35.358494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351845, 35.894295, 35.151775>,  <27.548887, 35.952526, 35.027744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351845, 35.894295, 35.151775>,  <27.023441, 35.797241, 35.358494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351845, 35.894295, 35.151775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278956, 0.619297, 0.733931,
		0.498128, -0.746725, 0.440761,
		0.821007, 0.242638, -0.516793,
		27.598146, 35.967087, 34.996738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445721, 35.161148, 35.526573>,  <27.023441, 35.797241, 35.358494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445721, 35.161148, 35.526573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812922, 35.208511, 35.375179>,  <28.033241, 35.236931, 35.284344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812922, 35.208511, 35.375179>,  <27.445721, 35.161148, 35.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812922, 35.208511, 35.375179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382304, 0.010531, -0.923976,
		-0.105424, 0.992909, 0.054937,
		0.918003, 0.118412, -0.378483,
		28.088322, 35.244034, 35.261635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605394, 35.297535, 36.189522>,  <27.445721, 35.161148, 35.526573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605394, 35.297535, 36.189522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849710, 35.267338, 36.504795>,  <27.996300, 35.249222, 36.693958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849710, 35.267338, 36.504795>,  <27.605394, 35.297535, 36.189522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849710, 35.267338, 36.504795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791777, -0.064775, 0.607366,
		0.005205, -0.995040, -0.099335,
		0.610788, -0.075489, 0.788187,
		28.032948, 35.244690, 36.741253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395857, 34.731647, 36.492653>,  <27.605394, 35.297535, 36.189522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395857, 34.731647, 36.492653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574640, 34.972767, 36.757034>,  <27.681910, 35.117439, 36.915665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574640, 34.972767, 36.757034>,  <27.395857, 34.731647, 36.492653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574640, 34.972767, 36.757034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757799, -0.137490, 0.637838,
		0.475361, -0.785960, 0.395346,
		0.446959, 0.602796, 0.660957,
		27.708729, 35.153606, 36.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307468, 34.360886, 37.112099>,  <27.395857, 34.731647, 36.492653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307468, 34.360886, 37.112099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371872, 34.750534, 37.175556>,  <27.410515, 34.984322, 37.213631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371872, 34.750534, 37.175556>,  <27.307468, 34.360886, 37.112099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371872, 34.750534, 37.175556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795143, 0.032808, 0.605534,
		0.584657, -0.223643, 0.779846,
		0.161009, 0.974119, 0.158647,
		27.420176, 35.042770, 37.223152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279022, 34.524605, 37.796551>,  <27.307468, 34.360886, 37.112099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279022, 34.524605, 37.796551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223724, 34.898899, 37.666759>,  <27.190546, 35.123478, 37.588886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223724, 34.898899, 37.666759>,  <27.279022, 34.524605, 37.796551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223724, 34.898899, 37.666759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759265, 0.110232, 0.641379,
		0.635929, 0.335028, 0.695234,
		-0.138243, 0.935738, -0.324475,
		27.182251, 35.179619, 37.569416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249163, 34.958618, 38.384773>,  <27.279022, 34.524605, 37.796551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249163, 34.958618, 38.384773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059269, 35.142773, 38.084728>,  <26.945332, 35.253265, 37.904701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059269, 35.142773, 38.084728>,  <27.249163, 34.958618, 38.384773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059269, 35.142773, 38.084728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757518, 0.220181, 0.614562,
		0.448098, 0.859978, 0.244225,
		-0.474736, 0.460389, -0.750112,
		26.916847, 35.280888, 37.859695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196554, 35.644337, 38.604595>,  <27.249163, 34.958618, 38.384773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196554, 35.644337, 38.604595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879324, 35.509445, 38.401695>,  <26.688986, 35.428509, 38.279953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879324, 35.509445, 38.401695>,  <27.196554, 35.644337, 38.604595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879324, 35.509445, 38.401695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607272, 0.502590, 0.615324,
		0.047436, 0.796040, -0.603382,
		-0.793077, -0.337229, -0.507254,
		26.641401, 35.408276, 38.249519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737711, 36.305424, 38.265160>,  <27.196554, 35.644337, 38.604595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737711, 36.305424, 38.265160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537079, 35.979115, 38.380348>,  <26.416700, 35.783329, 38.449459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537079, 35.979115, 38.380348>,  <26.737711, 36.305424, 38.265160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537079, 35.979115, 38.380348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587370, 0.565516, 0.578955,
		-0.635148, 0.121249, -0.762814,
		-0.501581, -0.815776, 0.287968,
		26.386604, 35.734383, 38.466740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025322, 36.369717, 37.972599>,  <26.737711, 36.305424, 38.265160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025322, 36.369717, 37.972599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088531, 36.181961, 38.320091>,  <26.126457, 36.069305, 38.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088531, 36.181961, 38.320091>,  <26.025322, 36.369717, 37.972599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088531, 36.181961, 38.320091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651809, 0.611288, 0.448855,
		-0.741737, -0.637178, -0.209358,
		0.158023, -0.469394, 0.868734,
		26.135939, 36.041142, 38.580711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435257, 36.315903, 37.436798>,  <26.025322, 36.369717, 37.972599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435257, 36.315903, 37.436798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620245, 36.004208, 37.605988>,  <26.731237, 35.817192, 37.707500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620245, 36.004208, 37.605988>,  <26.435257, 36.315903, 37.436798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620245, 36.004208, 37.605988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673838, -0.001152, -0.738878,
		0.576249, 0.626727, 0.524547,
		0.462471, -0.779238, 0.422976,
		26.758986, 35.770435, 37.732880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974741, 36.328640, 37.188221>,  <26.435257, 36.315903, 37.436798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974741, 36.328640, 37.188221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064281, 35.965466, 37.329948>,  <27.118006, 35.747559, 37.414986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064281, 35.965466, 37.329948>,  <26.974741, 36.328640, 37.188221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064281, 35.965466, 37.329948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833571, -0.010021, -0.552322,
		0.505025, 0.418985, 0.754587,
		0.223852, -0.907938, 0.354314,
		27.131437, 35.693085, 37.436241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662020, 36.333576, 37.516064>,  <26.974741, 36.328640, 37.188221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662020, 36.333576, 37.516064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591524, 35.950436, 37.425327>,  <27.549227, 35.720551, 37.370888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591524, 35.950436, 37.425327>,  <27.662020, 36.333576, 37.516064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591524, 35.950436, 37.425327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955348, -0.110919, -0.273873,
		0.237170, -0.264977, 0.934632,
		-0.176238, -0.957854, -0.226838,
		27.538652, 35.663078, 37.357277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163603, 36.025860, 37.898060>,  <27.662020, 36.333576, 37.516064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163603, 36.025860, 37.898060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030445, 35.784470, 37.608231>,  <27.950550, 35.639637, 37.434334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030445, 35.784470, 37.608231>,  <28.163603, 36.025860, 37.898060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030445, 35.784470, 37.608231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875585, 0.087426, -0.475086,
		0.350047, -0.792577, 0.499287,
		-0.332892, -0.603471, -0.724572,
		27.930578, 35.603428, 37.390858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630785, 35.407623, 37.708988>,  <28.163603, 36.025860, 37.898060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630785, 35.407623, 37.708988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409088, 35.520897, 37.395908>,  <28.276070, 35.588860, 37.208061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409088, 35.520897, 37.395908>,  <28.630785, 35.407623, 37.708988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409088, 35.520897, 37.395908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832179, 0.169101, -0.528094,
		-0.017192, -0.944040, -0.329382,
		-0.554240, 0.283183, -0.782703,
		28.242817, 35.605850, 37.161098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810375, 35.010971, 37.161076>,  <28.630785, 35.407623, 37.708988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810375, 35.010971, 37.161076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677229, 35.377068, 37.070278>,  <28.597342, 35.596725, 37.015800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677229, 35.377068, 37.070278>,  <28.810375, 35.010971, 37.161076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677229, 35.377068, 37.070278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898894, 0.235237, -0.369666,
		-0.284937, -0.327094, -0.901011,
		-0.332867, 0.915245, -0.226995,
		28.577370, 35.651642, 37.002178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958525, 35.326416, 36.463123>,  <28.810375, 35.010971, 37.161076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958525, 35.326416, 36.463123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915649, 35.657139, 36.683994>,  <28.889925, 35.855572, 36.816517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915649, 35.657139, 36.683994>,  <28.958525, 35.326416, 36.463123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915649, 35.657139, 36.683994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846124, 0.367499, -0.386030,
		-0.522097, 0.425831, -0.738974,
		-0.107189, 0.826809, 0.552176,
		28.883493, 35.905182, 36.849648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226547, 35.869778, 36.058666>,  <28.958525, 35.326416, 36.463123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226547, 35.869778, 36.058666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257858, 35.997238, 36.436520>,  <29.276644, 36.073715, 36.663231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257858, 35.997238, 36.436520>,  <29.226547, 35.869778, 36.058666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257858, 35.997238, 36.436520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892777, 0.399262, -0.208659,
		-0.443646, 0.859682, -0.253228,
		0.078276, 0.318647, 0.944636,
		29.281342, 36.092831, 36.719910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289209, 36.496601, 36.134563>,  <29.226547, 35.869778, 36.058666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289209, 36.496601, 36.134563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463654, 36.349060, 36.462894>,  <29.568321, 36.260536, 36.659893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463654, 36.349060, 36.462894>,  <29.289209, 36.496601, 36.134563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463654, 36.349060, 36.462894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827241, 0.523375, -0.204331,
		-0.354229, 0.768130, 0.533384,
		0.436112, -0.368857, 0.820823,
		29.594488, 36.238403, 36.709141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906736, 36.975346, 36.191162>,  <29.289209, 36.496601, 36.134563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906736, 36.975346, 36.191162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985176, 36.664261, 36.430061>,  <30.032240, 36.477612, 36.573402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985176, 36.664261, 36.430061>,  <29.906736, 36.975346, 36.191162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985176, 36.664261, 36.430061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980516, 0.162667, -0.110125,
		-0.011507, 0.607209, 0.794459,
		0.196101, -0.777712, 0.597250,
		30.044006, 36.430946, 36.609238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302238, 37.190319, 36.746246>,  <29.906736, 36.975346, 36.191162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302238, 37.190319, 36.746246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358713, 36.810116, 36.635540>,  <30.392599, 36.581993, 36.569115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358713, 36.810116, 36.635540>,  <30.302238, 37.190319, 36.746246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358713, 36.810116, 36.635540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947522, 0.210743, -0.240393,
		0.286822, -0.228303, 0.930382,
		0.141189, -0.950508, -0.276768,
		30.401070, 36.524963, 36.552509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983685, 36.961926, 36.905952>,  <30.302238, 37.190319, 36.746246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983685, 36.961926, 36.905952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865967, 36.715126, 36.614006>,  <30.795336, 36.567047, 36.438839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865967, 36.715126, 36.614006>,  <30.983685, 36.961926, 36.905952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865967, 36.715126, 36.614006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753910, 0.319481, -0.574066,
		0.587377, -0.719195, 0.371143,
		-0.294292, -0.617001, -0.729864,
		30.777679, 36.530025, 36.395046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440496, 36.330746, 36.763897>,  <30.983685, 36.961926, 36.905952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440496, 36.330746, 36.763897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235989, 36.523521, 36.479267>,  <31.113283, 36.639187, 36.308491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235989, 36.523521, 36.479267>,  <31.440496, 36.330746, 36.763897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235989, 36.523521, 36.479267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858175, 0.330844, -0.392529,
		0.046243, -0.811341, -0.582741,
		-0.511271, 0.481942, -0.711572,
		31.082607, 36.668102, 36.265797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558765, 36.085896, 35.969707>,  <31.440496, 36.330746, 36.763897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558765, 36.085896, 35.969707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485760, 36.453503, 36.109478>,  <31.441956, 36.674065, 36.193340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485760, 36.453503, 36.109478>,  <31.558765, 36.085896, 35.969707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485760, 36.453503, 36.109478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975104, 0.214718, -0.055394,
		-0.125936, 0.330619, -0.935324,
		-0.182517, 0.919014, 0.349429,
		31.431005, 36.729206, 36.214306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914204, 36.544353, 35.454117>,  <31.558765, 36.085896, 35.969707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914204, 36.544353, 35.454117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887663, 36.689926, 35.825741>,  <31.871738, 36.777271, 36.048714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887663, 36.689926, 35.825741>,  <31.914204, 36.544353, 35.454117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887663, 36.689926, 35.825741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946212, -0.272558, 0.174343,
		0.316672, 0.890653, -0.326276,
		-0.066350, 0.363935, 0.929058,
		31.867758, 36.799107, 36.104458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471931, 36.874832, 35.501083>,  <31.914204, 36.544353, 35.454117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471931, 36.874832, 35.501083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385254, 36.817780, 35.887390>,  <32.333248, 36.783546, 36.119175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385254, 36.817780, 35.887390>,  <32.471931, 36.874832, 35.501083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385254, 36.817780, 35.887390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953169, -0.244706, 0.177730,
		0.210978, 0.959049, 0.188979,
		-0.216696, -0.142632, 0.965763,
		32.320244, 36.774990, 36.177120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847561, 37.191025, 36.224266>,  <32.471931, 36.874832, 35.501083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847561, 37.191025, 36.224266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708080, 36.820381, 36.280540>,  <32.624390, 36.597996, 36.314304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708080, 36.820381, 36.280540>,  <32.847561, 37.191025, 36.224266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708080, 36.820381, 36.280540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928498, -0.321097, 0.186517,
		-0.127656, 0.195663, 0.972327,
		-0.348706, -0.926613, 0.140683,
		32.603470, 36.542397, 36.322746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943810, 36.879227, 36.818855>,  <32.847561, 37.191025, 36.224266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943810, 36.879227, 36.818855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928673, 36.539227, 36.608688>,  <32.919590, 36.335228, 36.482586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928673, 36.539227, 36.608688>,  <32.943810, 36.879227, 36.818855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928673, 36.539227, 36.608688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951567, -0.191189, 0.240760,
		-0.305101, -0.490862, 0.816068,
		-0.037843, -0.850001, -0.525421,
		32.917320, 36.284225, 36.451061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042091, 36.266792, 37.187691>,  <32.943810, 36.879227, 36.818855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042091, 36.266792, 37.187691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152821, 36.170959, 36.815460>,  <33.219257, 36.113461, 36.592121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152821, 36.170959, 36.815460>,  <33.042091, 36.266792, 37.187691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152821, 36.170959, 36.815460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887623, -0.307214, 0.343139,
		-0.368095, -0.920989, 0.127614,
		0.276822, -0.239581, -0.930575,
		33.235867, 36.099087, 36.536289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399563, 35.635166, 37.294640>,  <33.042091, 36.266792, 37.187691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399563, 35.635166, 37.294640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526951, 35.727608, 36.926907>,  <33.603386, 35.783073, 36.706268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526951, 35.727608, 36.926907>,  <33.399563, 35.635166, 37.294640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526951, 35.727608, 36.926907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924475, -0.290135, 0.247320,
		-0.209573, -0.928661, -0.306051,
		0.318473, 0.231105, -0.919329,
		33.622494, 35.796940, 36.651108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737568, 35.027676, 36.986607>,  <33.399563, 35.635166, 37.294640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737568, 35.027676, 36.986607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858116, 35.396912, 36.891037>,  <33.930447, 35.618454, 36.833694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858116, 35.396912, 36.891037>,  <33.737568, 35.027676, 36.986607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858116, 35.396912, 36.891037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949487, -0.267544, 0.163996,
		0.087460, -0.276280, -0.957089,
		0.301373, 0.923087, -0.238925,
		33.948528, 35.673836, 36.819359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345867, 35.245464, 36.352421>,  <33.737568, 35.027676, 36.986607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345867, 35.245464, 36.352421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263439, 35.605381, 36.198589>,  <33.213982, 35.821331, 36.106289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263439, 35.605381, 36.198589>,  <33.345867, 35.245464, 36.352421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263439, 35.605381, 36.198589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253490, -0.428685, -0.867163,
		-0.945133, -0.081214, 0.316431,
		-0.206075, 0.899797, -0.384577,
		33.201618, 35.875320, 36.083218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671795, 35.342533, 36.138607>,  <33.345867, 35.245464, 36.352421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671795, 35.342533, 36.138607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852879, 35.630188, 35.927742>,  <32.961529, 35.802780, 35.801224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852879, 35.630188, 35.927742>,  <32.671795, 35.342533, 36.138607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852879, 35.630188, 35.927742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444828, -0.330241, -0.832507,
		-0.772775, 0.611382, 0.170386,
		0.452711, 0.719133, -0.527162,
		32.988693, 35.845928, 35.769592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153542, 35.693062, 35.662682>,  <32.671795, 35.342533, 36.138607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153542, 35.693062, 35.662682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531113, 35.708565, 35.531536>,  <32.757656, 35.717869, 35.452847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531113, 35.708565, 35.531536>,  <32.153542, 35.693062, 35.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531113, 35.708565, 35.531536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284993, -0.405662, -0.868457,
		-0.166665, 0.913201, -0.371870,
		0.943929, 0.038761, -0.327866,
		32.814293, 35.720192, 35.433178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146057, 36.020031, 35.007385>,  <32.153542, 35.693062, 35.662682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146057, 36.020031, 35.007385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465591, 35.783802, 35.053135>,  <32.657310, 35.642063, 35.080585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465591, 35.783802, 35.053135>,  <32.146057, 36.020031, 35.007385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465591, 35.783802, 35.053135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152077, -0.382229, -0.911468,
		0.582009, 0.710719, -0.395151,
		0.798836, -0.590576, 0.114377,
		32.705242, 35.606628, 35.087448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332302, 35.980736, 34.368759>,  <32.146057, 36.020031, 35.007385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332302, 35.980736, 34.368759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490856, 35.683346, 34.584213>,  <32.585987, 35.504913, 34.713486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490856, 35.683346, 34.584213>,  <32.332302, 35.980736, 34.368759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490856, 35.683346, 34.584213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257963, -0.653249, -0.711843,
		0.881098, 0.143217, -0.450727,
		0.396385, -0.743475, 0.538632,
		32.609772, 35.460304, 34.745804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979183, 35.635643, 33.985085>,  <32.332302, 35.980736, 34.368759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979183, 35.635643, 33.985085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762894, 35.404312, 34.229431>,  <32.633121, 35.265514, 34.376038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762894, 35.404312, 34.229431>,  <32.979183, 35.635643, 33.985085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762894, 35.404312, 34.229431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051271, -0.702174, -0.710157,
		0.839637, -0.415318, 0.350031,
		-0.540723, -0.578327, 0.610865,
		32.600677, 35.230812, 34.412689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285030, 34.970478, 34.182411>,  <32.979183, 35.635643, 33.985085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285030, 34.970478, 34.182411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885170, 34.965946, 34.172909>,  <32.645252, 34.963226, 34.167206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885170, 34.965946, 34.172909>,  <33.285030, 34.970478, 34.182411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885170, 34.965946, 34.172909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024420, -0.736100, -0.676432,
		-0.009821, -0.676778, 0.736122,
		-0.999654, -0.011332, -0.023756,
		32.585274, 34.962547, 34.165783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091988, 34.328808, 34.241898>,  <33.285030, 34.970478, 34.182411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091988, 34.328808, 34.241898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786842, 34.510059, 34.057419>,  <32.603756, 34.618813, 33.946732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786842, 34.510059, 34.057419>,  <33.091988, 34.328808, 34.241898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786842, 34.510059, 34.057419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167771, -0.550152, -0.818037,
		-0.624411, -0.701429, 0.343670,
		-0.762866, 0.453134, -0.461201,
		32.557983, 34.646000, 33.919060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676899, 33.828831, 33.954472>,  <33.091988, 34.328808, 34.241898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676899, 33.828831, 33.954472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654030, 34.178246, 33.761116>,  <32.640308, 34.387894, 33.645103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654030, 34.178246, 33.761116>,  <32.676899, 33.828831, 33.954472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654030, 34.178246, 33.761116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046166, -0.481350, -0.875312,
		-0.997296, -0.072358, -0.012809,
		-0.057170, 0.873537, -0.483389,
		32.636879, 34.440308, 33.616100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158802, 33.760593, 33.505222>,  <32.676899, 33.828831, 33.954472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158802, 33.760593, 33.505222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399227, 34.045517, 33.360260>,  <32.543484, 34.216473, 33.273281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399227, 34.045517, 33.360260>,  <32.158802, 33.760593, 33.505222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399227, 34.045517, 33.360260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012233, -0.461607, -0.887000,
		-0.799106, 0.528712, -0.286170,
		0.601065, 0.712308, -0.362405,
		32.579548, 34.259209, 33.251537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817545, 33.906208, 32.870743>,  <32.158802, 33.760593, 33.505222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817545, 33.906208, 32.870743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185459, 34.060612, 32.842468>,  <32.406208, 34.153252, 32.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185459, 34.060612, 32.842468>,  <31.817545, 33.906208, 32.870743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185459, 34.060612, 32.842468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011866, -0.207404, -0.978183,
		-0.392247, 0.898878, -0.195348,
		0.919784, 0.386007, -0.070688,
		32.461395, 34.176414, 32.821262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843435, 34.311848, 32.327312>,  <31.817545, 33.906208, 32.870743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843435, 34.311848, 32.327312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220413, 34.191494, 32.385643>,  <32.446602, 34.119282, 32.420643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220413, 34.191494, 32.385643>,  <31.843435, 34.311848, 32.327312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220413, 34.191494, 32.385643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119906, -0.102988, -0.987429,
		0.312119, 0.948084, -0.060983,
		0.942446, -0.300883, 0.145826,
		32.503147, 34.101231, 32.429390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096252, 34.461208, 31.705120>,  <31.843435, 34.311848, 32.327312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096252, 34.461208, 31.705120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427654, 34.293667, 31.853790>,  <32.626495, 34.193142, 31.942993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427654, 34.293667, 31.853790>,  <32.096252, 34.461208, 31.705120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427654, 34.293667, 31.853790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334169, -0.162791, -0.928348,
		0.449352, 0.893340, 0.005097,
		0.828501, -0.418858, 0.371677,
		32.676205, 34.168011, 31.965294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517006, 34.733212, 31.241917>,  <32.096252, 34.461208, 31.705120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517006, 34.733212, 31.241917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725456, 34.436821, 31.411333>,  <32.850525, 34.258987, 31.512983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725456, 34.436821, 31.411333>,  <32.517006, 34.733212, 31.241917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725456, 34.436821, 31.411333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425965, -0.204222, -0.881389,
		0.739581, 0.639729, 0.209203,
		0.521127, -0.740972, 0.423541,
		32.881794, 34.214531, 31.538395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203968, 34.859200, 31.137299>,  <32.517006, 34.733212, 31.241917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203968, 34.859200, 31.137299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182663, 34.461094, 31.169844>,  <33.169880, 34.222233, 31.189371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182663, 34.461094, 31.169844>,  <33.203968, 34.859200, 31.137299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182663, 34.461094, 31.169844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577564, -0.097168, -0.810542,
		0.814606, 0.003821, 0.580002,
		-0.053261, -0.995261, 0.081360,
		33.166683, 34.162518, 31.194252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913853, 34.589554, 31.168749>,  <33.203968, 34.859200, 31.137299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913853, 34.589554, 31.168749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671055, 34.297581, 31.043045>,  <33.525375, 34.122398, 30.967623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671055, 34.297581, 31.043045>,  <33.913853, 34.589554, 31.168749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671055, 34.297581, 31.043045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580279, -0.136899, -0.802829,
		0.542988, -0.669671, 0.506661,
		-0.606993, -0.729931, -0.314262,
		33.488956, 34.078602, 30.948767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344738, 34.081898, 30.993917>,  <33.913853, 34.589554, 31.168749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344738, 34.081898, 30.993917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011715, 33.956181, 30.811460>,  <33.811901, 33.880753, 30.701986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011715, 33.956181, 30.811460>,  <34.344738, 34.081898, 30.993917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011715, 33.956181, 30.811460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531253, -0.219812, -0.818201,
		0.156886, -0.923529, 0.349973,
		-0.832561, -0.314289, -0.456142,
		33.761948, 33.861893, 30.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588329, 33.531933, 30.591391>,  <34.344738, 34.081898, 30.993917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588329, 33.531933, 30.591391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238716, 33.615185, 30.415777>,  <34.028950, 33.665138, 30.310410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238716, 33.615185, 30.415777>,  <34.588329, 33.531933, 30.591391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238716, 33.615185, 30.415777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422855, -0.119196, -0.898324,
		-0.239306, -0.970810, 0.016169,
		-0.874029, 0.208137, -0.439036,
		33.976509, 33.677624, 30.284067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442566, 33.048832, 30.006584>,  <34.588329, 33.531933, 30.591391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442566, 33.048832, 30.006584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230717, 33.382069, 29.942768>,  <34.103607, 33.582012, 29.904478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230717, 33.382069, 29.942768>,  <34.442566, 33.048832, 30.006584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230717, 33.382069, 29.942768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305357, 0.011781, -0.952165,
		-0.791365, -0.553004, -0.260631,
		-0.529621, 0.833096, -0.159540,
		34.071831, 33.631996, 29.894905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314190, 32.987625, 29.314613>,  <34.442566, 33.048832, 30.006584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314190, 32.987625, 29.314613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187096, 33.364979, 29.352703>,  <34.110840, 33.591393, 29.375557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187096, 33.364979, 29.352703>,  <34.314190, 32.987625, 29.314613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187096, 33.364979, 29.352703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147091, 0.148255, -0.977949,
		-0.936701, -0.296722, -0.185870,
		-0.317736, 0.943386, 0.095226,
		34.091774, 33.647995, 29.381271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780430, 33.160187, 28.775702>,  <34.314190, 32.987625, 29.314613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780430, 33.160187, 28.775702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931297, 33.509026, 28.900408>,  <34.021816, 33.718327, 28.975231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931297, 33.509026, 28.900408>,  <33.780430, 33.160187, 28.775702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931297, 33.509026, 28.900408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109094, 0.376119, -0.920127,
		-0.919697, 0.313032, 0.237000,
		0.377169, 0.872093, 0.311766,
		34.044449, 33.770653, 28.993938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394653, 33.710659, 28.430155>,  <33.780430, 33.160187, 28.775702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394653, 33.710659, 28.430155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747452, 33.873699, 28.524773>,  <33.959129, 33.971523, 28.581543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747452, 33.873699, 28.524773>,  <33.394653, 33.710659, 28.430155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747452, 33.873699, 28.524773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081744, 0.362006, -0.928585,
		-0.464121, 0.838340, 0.285968,
		0.881992, 0.407600, 0.236544,
		34.012051, 33.995979, 28.595736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326027, 34.362263, 28.408840>,  <33.394653, 33.710659, 28.430155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326027, 34.362263, 28.408840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708241, 34.275368, 28.329081>,  <33.937569, 34.223228, 28.281225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708241, 34.275368, 28.329081>,  <33.326027, 34.362263, 28.408840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708241, 34.275368, 28.329081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089546, 0.430500, -0.898137,
		0.280952, 0.876057, 0.391905,
		0.955535, -0.217240, -0.199398,
		33.994900, 34.210197, 28.269260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696548, 35.030956, 28.102762>,  <33.326027, 34.362263, 28.408840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696548, 35.030956, 28.102762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887154, 34.702332, 27.977560>,  <34.001518, 34.505157, 27.902439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887154, 34.702332, 27.977560>,  <33.696548, 35.030956, 28.102762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887154, 34.702332, 27.977560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050177, 0.330030, -0.942636,
		0.877733, 0.464886, 0.116041,
		0.476516, -0.821560, -0.313005,
		34.030109, 34.455864, 27.883659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301033, 35.324398, 27.630474>,  <33.696548, 35.030956, 28.102762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301033, 35.324398, 27.630474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239220, 34.941139, 27.534079>,  <34.202129, 34.711185, 27.476242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239220, 34.941139, 27.534079>,  <34.301033, 35.324398, 27.630474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239220, 34.941139, 27.534079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126111, 0.261054, -0.957051,
		0.979905, -0.117507, -0.161175,
		-0.154536, -0.958146, -0.240989,
		34.192860, 34.653694, 27.461782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748211, 35.252361, 26.998457>,  <34.301033, 35.324398, 27.630474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748211, 35.252361, 26.998457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485218, 34.952148, 27.025064>,  <34.327423, 34.772022, 27.041029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485218, 34.952148, 27.025064>,  <34.748211, 35.252361, 26.998457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485218, 34.952148, 27.025064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135778, 0.031180, -0.990249,
		0.741136, -0.660101, -0.122406,
		-0.657481, -0.750529, 0.066519,
		34.287975, 34.726990, 27.045021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902870, 34.724426, 26.433424>,  <34.748211, 35.252361, 26.998457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902870, 34.724426, 26.433424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530750, 34.636311, 26.550735>,  <34.307480, 34.583443, 26.621122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530750, 34.636311, 26.550735>,  <34.902870, 34.724426, 26.433424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530750, 34.636311, 26.550735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303302, 0.012346, -0.952815,
		0.206273, -0.975357, -0.078299,
		-0.930301, -0.220288, 0.293281,
		34.251659, 34.570225, 26.638720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722378, 34.215042, 25.979460>,  <34.902870, 34.724426, 26.433424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722378, 34.215042, 25.979460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377827, 34.369217, 26.111807>,  <34.171097, 34.461723, 26.191216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377827, 34.369217, 26.111807>,  <34.722378, 34.215042, 25.979460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377827, 34.369217, 26.111807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320194, 0.093668, -0.942710,
		-0.394346, -0.917968, 0.042731,
		-0.861374, 0.385436, 0.330866,
		34.119415, 34.484848, 26.211067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237831, 33.856808, 25.692225>,  <34.722378, 34.215042, 25.979460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237831, 33.856808, 25.692225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033573, 34.184502, 25.796606>,  <33.911018, 34.381119, 25.859236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033573, 34.184502, 25.796606>,  <34.237831, 33.856808, 25.692225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033573, 34.184502, 25.796606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365782, 0.067677, -0.928237,
		-0.778102, -0.569454, 0.265102,
		-0.510647, 0.819233, 0.260956,
		33.880379, 34.430271, 25.874893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437305, 33.801414, 25.342558>,  <34.237831, 33.856808, 25.692225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437305, 33.801414, 25.342558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512180, 34.173599, 25.468544>,  <33.557106, 34.396912, 25.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512180, 34.173599, 25.468544>,  <33.437305, 33.801414, 25.342558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512180, 34.173599, 25.468544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445943, 0.366179, -0.816730,
		-0.875270, 0.012421, 0.483475,
		0.187183, 0.930462, 0.314966,
		33.568336, 34.452736, 25.563034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779808, 34.123486, 25.321400>,  <33.437305, 33.801414, 25.342558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779808, 34.123486, 25.321400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060413, 34.405113, 25.277271>,  <33.228775, 34.574089, 25.250793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060413, 34.405113, 25.277271>,  <32.779808, 34.123486, 25.321400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060413, 34.405113, 25.277271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537217, 0.420718, -0.731023,
		-0.468278, 0.572085, 0.673376,
		0.701509, 0.704070, -0.110321,
		33.270866, 34.616333, 25.244175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415497, 34.639793, 25.100994>,  <32.779808, 34.123486, 25.321400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415497, 34.639793, 25.100994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792656, 34.758820, 25.041132>,  <33.018951, 34.830235, 25.005215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792656, 34.758820, 25.041132>,  <32.415497, 34.639793, 25.100994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792656, 34.758820, 25.041132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259300, 0.373756, -0.890545,
		-0.209060, 0.878500, 0.429572,
		0.942898, 0.297565, -0.149657,
		33.075527, 34.848087, 24.996235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286537, 35.273819, 24.808836>,  <32.415497, 34.639793, 25.100994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286537, 35.273819, 24.808836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653942, 35.158241, 24.700869>,  <32.874386, 35.088894, 24.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653942, 35.158241, 24.700869>,  <32.286537, 35.273819, 24.808836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653942, 35.158241, 24.700869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196444, 0.258961, -0.945700,
		0.343151, 0.921657, 0.181097,
		0.918508, -0.288942, -0.269917,
		32.929493, 35.071560, 24.619894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454231, 35.870491, 24.441099>,  <32.286537, 35.273819, 24.808836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454231, 35.870491, 24.441099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708294, 35.583252, 24.327324>,  <32.860733, 35.410908, 24.259060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708294, 35.583252, 24.327324>,  <32.454231, 35.870491, 24.441099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708294, 35.583252, 24.327324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033835, 0.393775, -0.918584,
		0.771639, 0.573824, 0.274408,
		0.635161, -0.718100, -0.284436,
		32.898842, 35.367821, 24.241993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011280, 36.166351, 24.081444>,  <32.454231, 35.870491, 24.441099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011280, 36.166351, 24.081444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002159, 35.791008, 23.943481>,  <32.996685, 35.565800, 23.860704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002159, 35.791008, 23.943481>,  <33.011280, 36.166351, 24.081444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002159, 35.791008, 23.943481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100767, 0.345396, -0.933031,
		0.994649, 0.013476, -0.102433,
		-0.022806, -0.938360, -0.344906,
		32.995316, 35.509499, 23.840010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389599, 36.189182, 23.404736>,  <33.011280, 36.166351, 24.081444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389599, 36.189182, 23.404736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196217, 35.839096, 23.398085>,  <33.080189, 35.629044, 23.394094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196217, 35.839096, 23.398085>,  <33.389599, 36.189182, 23.404736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196217, 35.839096, 23.398085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233143, 0.147044, -0.961261,
		0.843752, -0.460848, -0.275138,
		-0.483453, -0.875213, -0.016626,
		33.051182, 35.576530, 23.393097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602009, 35.860683, 22.873453>,  <33.389599, 36.189182, 23.404736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602009, 35.860683, 22.873453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261463, 35.659901, 22.934399>,  <33.057137, 35.539429, 22.970966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261463, 35.659901, 22.934399>,  <33.602009, 35.860683, 22.873453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261463, 35.659901, 22.934399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240641, 0.115624, -0.963703,
		0.466125, -0.857126, -0.219231,
		-0.851363, -0.501962, 0.152365,
		33.006054, 35.509312, 22.980108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627228, 35.209293, 22.395338>,  <33.602009, 35.860683, 22.873453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627228, 35.209293, 22.395338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256756, 35.305717, 22.511332>,  <33.034473, 35.363571, 22.580927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256756, 35.305717, 22.511332>,  <33.627228, 35.209293, 22.395338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256756, 35.305717, 22.511332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264712, 0.132054, -0.955243,
		-0.268563, -0.961484, -0.058495,
		-0.926176, 0.241058, 0.289982,
		32.978905, 35.378036, 22.598326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152096, 34.829300, 22.011915>,  <33.627228, 35.209293, 22.395338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152096, 34.829300, 22.011915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940601, 35.152412, 22.116165>,  <32.813705, 35.346279, 22.178715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940601, 35.152412, 22.116165>,  <33.152096, 34.829300, 22.011915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940601, 35.152412, 22.116165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261085, 0.137390, -0.955489,
		-0.807634, -0.573248, 0.138257,
		-0.528737, 0.807781, 0.260627,
		32.781979, 35.394749, 22.194353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642803, 34.827656, 21.539274>,  <33.152096, 34.829300, 22.011915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642803, 34.827656, 21.539274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636436, 35.213123, 21.645918>,  <32.632614, 35.444405, 21.709904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636436, 35.213123, 21.645918>,  <32.642803, 34.827656, 21.539274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636436, 35.213123, 21.645918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100956, 0.263731, -0.959299,
		-0.994763, -0.042189, 0.093090,
		-0.015921, 0.963673, 0.266609,
		32.631660, 35.502224, 21.725901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189896, 35.180290, 21.004721>,  <32.642803, 34.827656, 21.539274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189896, 35.180290, 21.004721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361382, 35.485485, 21.198238>,  <32.464275, 35.668602, 21.314348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361382, 35.485485, 21.198238>,  <32.189896, 35.180290, 21.004721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361382, 35.485485, 21.198238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024985, 0.525285, -0.850560,
		-0.903093, 0.376738, 0.206136,
		0.428718, 0.762984, 0.483794,
		32.489998, 35.714382, 21.343376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893919, 35.879025, 20.773537>,  <32.189896, 35.180290, 21.004721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893919, 35.879025, 20.773537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242310, 36.015285, 20.915155>,  <32.451344, 36.097042, 21.000128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242310, 36.015285, 20.915155>,  <31.893919, 35.879025, 20.773537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242310, 36.015285, 20.915155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034360, 0.676607, -0.735542,
		-0.490119, 0.652806, 0.577605,
		0.870978, 0.340657, 0.354048,
		32.503605, 36.117481, 21.021370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900583, 36.590675, 20.669708>,  <31.893919, 35.879025, 20.773537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900583, 36.590675, 20.669708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283966, 36.491650, 20.726376>,  <32.513996, 36.432236, 20.760376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283966, 36.491650, 20.726376>,  <31.900583, 36.590675, 20.669708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283966, 36.491650, 20.726376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278182, 0.701558, -0.656073,
		0.063030, 0.668228, 0.741281,
		0.958458, -0.247564, 0.141670,
		32.571503, 36.417381, 20.768877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118866, 37.266842, 20.726780>,  <31.900583, 36.590675, 20.669708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118866, 37.266842, 20.726780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416466, 37.011768, 20.646961>,  <32.595028, 36.858723, 20.599070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416466, 37.011768, 20.646961>,  <32.118866, 37.266842, 20.726780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416466, 37.011768, 20.646961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415061, 0.675111, -0.609877,
		0.523625, 0.370926, 0.766963,
		0.744004, -0.637683, -0.199548,
		32.639668, 36.820465, 20.587097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844967, 37.676544, 20.712381>,  <32.118866, 37.266842, 20.726780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844967, 37.676544, 20.712381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888996, 37.347858, 20.488712>,  <32.915413, 37.150646, 20.354511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888996, 37.347858, 20.488712>,  <32.844967, 37.676544, 20.712381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888996, 37.347858, 20.488712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460576, 0.540711, -0.703919,
		0.880769, -0.180058, 0.437978,
		0.110073, -0.821712, -0.559172,
		32.922016, 37.101345, 20.320961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537624, 37.701633, 20.268394>,  <32.844967, 37.676544, 20.712381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537624, 37.701633, 20.268394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329746, 37.422924, 20.070639>,  <33.205017, 37.255699, 19.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329746, 37.422924, 20.070639>,  <33.537624, 37.701633, 20.268394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329746, 37.422924, 20.070639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262874, 0.420190, -0.868526,
		0.812902, -0.581335, -0.035210,
		-0.519699, -0.696771, -0.494392,
		33.173836, 37.213894, 19.922321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899757, 37.510551, 19.731756>,  <33.537624, 37.701633, 20.268394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899757, 37.510551, 19.731756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537357, 37.382267, 19.621264>,  <33.319916, 37.305298, 19.554968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537357, 37.382267, 19.621264>,  <33.899757, 37.510551, 19.731756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537357, 37.382267, 19.621264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159051, 0.346832, -0.924343,
		0.392251, -0.881393, -0.263222,
		-0.906003, -0.320709, -0.276232,
		33.265556, 37.286057, 19.538395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990345, 37.193153, 19.108727>,  <33.899757, 37.510551, 19.731756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990345, 37.193153, 19.108727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597836, 37.269627, 19.099365>,  <33.362328, 37.315510, 19.093748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597836, 37.269627, 19.099365>,  <33.990345, 37.193153, 19.108727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597836, 37.269627, 19.099365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086800, 0.330477, -0.939814,
		-0.171938, -0.924249, -0.340883,
		-0.981277, 0.191178, -0.023403,
		33.303452, 37.326981, 19.092344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720184, 37.103905, 18.390760>,  <33.990345, 37.193153, 19.108727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720184, 37.103905, 18.390760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398079, 37.291958, 18.535276>,  <33.204815, 37.404789, 18.621986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398079, 37.291958, 18.535276>,  <33.720184, 37.103905, 18.390760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398079, 37.291958, 18.535276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116092, 0.472532, -0.873634,
		-0.581442, -0.745447, -0.325935,
		-0.805263, 0.470129, 0.361291,
		33.156502, 37.432995, 18.643663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103508, 37.026939, 17.878633>,  <33.720184, 37.103905, 18.390760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103508, 37.026939, 17.878633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029308, 37.362114, 18.083941>,  <32.984787, 37.563221, 18.207125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029308, 37.362114, 18.083941>,  <33.103508, 37.026939, 17.878633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029308, 37.362114, 18.083941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257824, 0.462531, -0.848288,
		-0.948218, -0.289690, 0.130242,
		-0.185500, 0.837941, 0.513269,
		32.973660, 37.613495, 18.237921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418552, 37.267281, 17.718864>,  <33.103508, 37.026939, 17.878633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418552, 37.267281, 17.718864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664425, 37.569489, 17.809513>,  <32.811951, 37.750813, 17.863903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664425, 37.569489, 17.809513>,  <32.418552, 37.267281, 17.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664425, 37.569489, 17.809513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151585, 0.395104, -0.906043,
		-0.774069, 0.522579, 0.357390,
		0.614685, 0.755515, 0.226623,
		32.848831, 37.796143, 17.877501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072647, 37.848682, 17.614273>,  <32.418552, 37.267281, 17.718864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072647, 37.848682, 17.614273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457008, 37.939445, 17.550814>,  <32.687626, 37.993904, 17.512737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457008, 37.939445, 17.550814>,  <32.072647, 37.848682, 17.614273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457008, 37.939445, 17.550814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217678, 0.265058, -0.939340,
		-0.171094, 0.937153, 0.304090,
		0.960907, 0.226909, -0.158648,
		32.745281, 38.007519, 17.503220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378742, 38.114941, 17.245966>,  <32.072647, 37.848682, 17.614273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378742, 38.114941, 17.245966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564329, 38.408630, 17.444214>,  <31.675682, 38.584846, 17.563164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564329, 38.408630, 17.444214>,  <31.378742, 38.114941, 17.245966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564329, 38.408630, 17.444214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828809, 0.162273, 0.535483,
		0.312741, -0.659224, 0.683825,
		0.463970, 0.734228, 0.495622,
		31.703520, 38.628899, 17.592901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240932, 38.807503, 17.299799>,  <31.378742, 38.114941, 17.245966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240932, 38.807503, 17.299799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612190, 38.679737, 17.223358>,  <31.834946, 38.603077, 17.177494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612190, 38.679737, 17.223358>,  <31.240932, 38.807503, 17.299799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612190, 38.679737, 17.223358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370439, 0.742595, 0.557967,
		-0.036310, -0.588667, 0.807560,
		0.928147, -0.319411, -0.191102,
		31.890635, 38.583912, 17.166027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585756, 39.179005, 17.848967>,  <31.240932, 38.807503, 17.299799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585756, 39.179005, 17.848967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858109, 39.075191, 17.575020>,  <32.021519, 39.012905, 17.410652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858109, 39.075191, 17.575020>,  <31.585756, 39.179005, 17.848967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858109, 39.075191, 17.575020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677356, 0.578796, 0.454076,
		0.278550, -0.773070, 0.569888,
		0.680881, -0.259534, -0.684868,
		32.062374, 38.997330, 17.369560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207291, 38.898937, 18.008827>,  <31.585756, 39.179005, 17.848967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207291, 38.898937, 18.008827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313999, 39.083496, 17.670372>,  <32.378025, 39.194229, 17.467299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313999, 39.083496, 17.670372>,  <32.207291, 38.898937, 18.008827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313999, 39.083496, 17.670372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703681, 0.506652, 0.498134,
		0.658533, -0.728299, -0.189514,
		0.266773, 0.461395, -0.846137,
		32.394032, 39.221916, 17.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998447, 38.768932, 17.677620>,  <32.207291, 38.898937, 18.008827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998447, 38.768932, 17.677620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831730, 39.131516, 17.650438>,  <32.731697, 39.349064, 17.634129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831730, 39.131516, 17.650438>,  <32.998447, 38.768932, 17.677620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831730, 39.131516, 17.650438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730147, 0.378380, 0.568958,
		0.541448, 0.187523, -0.819554,
		-0.416796, 0.906457, -0.067954,
		32.706692, 39.403454, 17.630053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562977, 39.305557, 17.461823>,  <32.998447, 38.768932, 17.677620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562977, 39.305557, 17.461823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256157, 39.450611, 17.673531>,  <33.072063, 39.537643, 17.800554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256157, 39.450611, 17.673531>,  <33.562977, 39.305557, 17.461823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256157, 39.450611, 17.673531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640242, 0.379322, 0.667986,
		0.041471, 0.851241, -0.523134,
		-0.767053, 0.362634, 0.529269,
		33.026039, 39.559402, 17.832312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047478, 39.772587, 17.359650>,  <33.562977, 39.305557, 17.461823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047478, 39.772587, 17.359650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178566, 39.741642, 17.736290>,  <34.257221, 39.723076, 17.962275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178566, 39.741642, 17.736290>,  <34.047478, 39.772587, 17.359650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178566, 39.741642, 17.736290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436325, -0.871596, -0.223473,
		0.837984, 0.484081, -0.251889,
		0.327725, -0.077361, 0.941601,
		34.276882, 39.718433, 18.018770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747032, 40.313034, 17.793379>,  <34.047478, 39.772587, 17.359650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747032, 40.313034, 17.793379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365719, 40.372883, 17.688410>,  <33.136932, 40.408791, 17.625427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365719, 40.372883, 17.688410>,  <33.747032, 40.313034, 17.793379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365719, 40.372883, 17.688410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241429, 0.144781, 0.959558,
		0.181564, 0.978086, -0.101894,
		-0.953282, 0.149621, -0.262425,
		33.079735, 40.417770, 17.609682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488781, 40.996353, 18.071367>,  <33.747032, 40.313034, 17.793379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488781, 40.996353, 18.071367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159412, 40.776390, 18.015408>,  <32.961792, 40.644413, 17.981833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159412, 40.776390, 18.015408>,  <33.488781, 40.996353, 18.071367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159412, 40.776390, 18.015408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232450, 0.101994, 0.967246,
		-0.517627, 0.828974, -0.211810,
		-0.823425, -0.549908, -0.139900,
		32.912384, 40.611416, 17.973438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826790, 41.388206, 18.290956>,  <33.488781, 40.996353, 18.071367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826790, 41.388206, 18.290956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826271, 40.990810, 18.336521>,  <32.825958, 40.752373, 18.363859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826271, 40.990810, 18.336521>,  <32.826790, 41.388206, 18.290956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826271, 40.990810, 18.336521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211988, 0.111596, 0.970880,
		-0.977271, -0.022887, -0.210752,
		-0.001298, -0.993490, 0.113912,
		32.825882, 40.692764, 18.370695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317215, 41.327625, 18.745798>,  <32.826790, 41.388206, 18.290956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317215, 41.327625, 18.745798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513130, 40.980385, 18.778059>,  <32.630680, 40.772041, 18.797417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513130, 40.980385, 18.778059>,  <32.317215, 41.327625, 18.745798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513130, 40.980385, 18.778059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227626, -0.038027, 0.973006,
		-0.841604, -0.494923, -0.216228,
		0.489785, -0.868104, 0.080654,
		32.660065, 40.719952, 18.802256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857365, 40.897923, 19.078140>,  <32.317215, 41.327625, 18.745798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857365, 40.897923, 19.078140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220966, 40.742046, 19.137272>,  <32.439129, 40.648521, 19.172750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220966, 40.742046, 19.137272>,  <31.857365, 40.897923, 19.078140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220966, 40.742046, 19.137272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195380, -0.085109, 0.977028,
		-0.368158, -0.917004, -0.153502,
		0.909003, -0.389692, 0.147831,
		32.493668, 40.625137, 19.181622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767776, 40.295330, 19.489021>,  <31.857365, 40.897923, 19.078140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767776, 40.295330, 19.489021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161083, 40.352314, 19.534437>,  <32.397068, 40.386505, 19.561687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161083, 40.352314, 19.534437>,  <31.767776, 40.295330, 19.489021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161083, 40.352314, 19.534437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095440, -0.128043, 0.987166,
		0.155166, -0.981484, -0.112305,
		0.983268, 0.142456, 0.113541,
		32.456062, 40.395050, 19.568499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047146, 39.649101, 19.728386>,  <31.767776, 40.295330, 19.489021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047146, 39.649101, 19.728386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274712, 39.958252, 19.840820>,  <32.411251, 40.143742, 19.908281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274712, 39.958252, 19.840820>,  <32.047146, 39.649101, 19.728386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274712, 39.958252, 19.840820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059138, -0.302460, 0.951326,
		0.820271, -0.557841, -0.126366,
		0.568909, 0.772872, 0.281088,
		32.445385, 40.190113, 19.925146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351032, 39.368382, 20.277092>,  <32.047146, 39.649101, 19.728386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351032, 39.368382, 20.277092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452251, 39.754444, 20.303724>,  <32.512985, 39.986084, 20.319704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452251, 39.754444, 20.303724>,  <32.351032, 39.368382, 20.277092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452251, 39.754444, 20.303724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058470, -0.083955, 0.994753,
		0.965684, -0.247831, -0.077678,
		0.253052, 0.965159, 0.066583,
		32.528168, 40.043991, 20.323700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000744, 39.466763, 20.600117>,  <32.351032, 39.368382, 20.277092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000744, 39.466763, 20.600117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832222, 39.824947, 20.657593>,  <32.731110, 40.039860, 20.692080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832222, 39.824947, 20.657593>,  <33.000744, 39.466763, 20.600117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832222, 39.824947, 20.657593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164327, -0.080445, 0.983120,
		0.891910, 0.437801, -0.113258,
		-0.421300, 0.895466, 0.143692,
		32.705833, 40.093586, 20.700701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478306, 39.878086, 20.952656>,  <33.000744, 39.466763, 20.600117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478306, 39.878086, 20.952656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118286, 40.037350, 21.023500>,  <32.902275, 40.132908, 21.066008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118286, 40.037350, 21.023500>,  <33.478306, 39.878086, 20.952656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118286, 40.037350, 21.023500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175283, -0.041322, 0.983651,
		0.398972, 0.916383, -0.032599,
		-0.900054, 0.398163, 0.177113,
		32.848270, 40.156799, 21.076633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612629, 40.309387, 21.398760>,  <33.478306, 39.878086, 20.952656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612629, 40.309387, 21.398760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216457, 40.296059, 21.452324>,  <32.978752, 40.288063, 21.484463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216457, 40.296059, 21.452324>,  <33.612629, 40.309387, 21.398760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216457, 40.296059, 21.452324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133660, 0.009584, 0.990981,
		-0.034301, 0.999399, -0.005039,
		-0.990433, -0.033318, 0.133909,
		32.919327, 40.286064, 21.492496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490459, 40.837521, 22.033783>,  <33.612629, 40.309387, 21.398760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490459, 40.837521, 22.033783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193077, 40.573811, 21.988825>,  <33.014648, 40.415585, 21.961851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193077, 40.573811, 21.988825>,  <33.490459, 40.837521, 22.033783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193077, 40.573811, 21.988825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049259, -0.113619, 0.992302,
		-0.666971, 0.743267, 0.051996,
		-0.743453, -0.659276, -0.112393,
		32.970039, 40.376026, 21.955107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114857, 41.057899, 22.529608>,  <33.490459, 40.837521, 22.033783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114857, 41.057899, 22.529608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004200, 40.681423, 22.452009>,  <32.937805, 40.455540, 22.405451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004200, 40.681423, 22.452009>,  <33.114857, 41.057899, 22.529608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004200, 40.681423, 22.452009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019710, -0.196275, 0.980351,
		-0.960771, 0.275028, 0.035747,
		-0.276640, -0.941189, -0.193996,
		32.921207, 40.399067, 22.393810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598583, 40.896942, 23.091993>,  <33.114857, 41.057899, 22.529608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598583, 40.896942, 23.091993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672325, 40.534718, 22.939167>,  <32.716572, 40.317383, 22.847471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672325, 40.534718, 22.939167>,  <32.598583, 40.896942, 23.091993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672325, 40.534718, 22.939167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084096, -0.401836, 0.911842,
		-0.979255, -0.135974, -0.150235,
		0.184357, -0.905560, -0.382065,
		32.727631, 40.263050, 22.824547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108170, 40.416687, 23.308323>,  <32.598583, 40.896942, 23.091993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108170, 40.416687, 23.308323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402012, 40.159584, 23.221405>,  <32.578316, 40.005322, 23.169254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402012, 40.159584, 23.221405>,  <32.108170, 40.416687, 23.308323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402012, 40.159584, 23.221405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084170, -0.404118, 0.910826,
		-0.673257, -0.650805, -0.350967,
		0.734603, -0.642761, -0.217297,
		32.622395, 39.966755, 23.156216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879505, 39.686890, 23.526939>,  <32.108170, 40.416687, 23.308323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879505, 39.686890, 23.526939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274982, 39.637280, 23.493227>,  <32.512268, 39.607513, 23.473000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274982, 39.637280, 23.493227>,  <31.879505, 39.686890, 23.526939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274982, 39.637280, 23.493227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009475, -0.509252, 0.860566,
		-0.149656, -0.851634, -0.502318,
		0.988693, -0.124029, -0.084282,
		32.571590, 39.600071, 23.467943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961605, 38.928062, 23.576593>,  <31.879505, 39.686890, 23.526939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961605, 38.928062, 23.576593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294926, 39.132030, 23.662001>,  <32.494919, 39.254410, 23.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294926, 39.132030, 23.662001>,  <31.961605, 38.928062, 23.576593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294926, 39.132030, 23.662001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162922, -0.595606, 0.786581,
		0.528266, -0.620673, -0.579396,
		0.833301, 0.509921, 0.213517,
		32.544918, 39.285007, 23.726055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460487, 38.445530, 23.758549>,  <31.961605, 38.928062, 23.576593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460487, 38.445530, 23.758549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629303, 38.783295, 23.890514>,  <32.730595, 38.985954, 23.969694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629303, 38.783295, 23.890514>,  <32.460487, 38.445530, 23.758549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629303, 38.783295, 23.890514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270854, -0.464739, 0.843004,
		0.865170, -0.266424, -0.424852,
		0.422042, 0.844415, 0.329916,
		32.755917, 39.036617, 23.989489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114834, 38.294628, 24.145443>,  <32.460487, 38.445530, 23.758549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114834, 38.294628, 24.145443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979828, 38.645840, 24.281178>,  <32.898823, 38.856567, 24.362619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979828, 38.645840, 24.281178>,  <33.114834, 38.294628, 24.145443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979828, 38.645840, 24.281178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257242, -0.260736, 0.930507,
		0.905489, 0.401351, -0.137863,
		-0.337514, 0.878029, 0.339338,
		32.878574, 38.909248, 24.382978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619469, 38.558624, 24.589390>,  <33.114834, 38.294628, 24.145443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619469, 38.558624, 24.589390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270153, 38.726170, 24.688923>,  <33.060562, 38.826698, 24.748642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270153, 38.726170, 24.688923>,  <33.619469, 38.558624, 24.589390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270153, 38.726170, 24.688923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097212, -0.350661, 0.931443,
		0.477405, 0.837609, 0.265509,
		-0.873290, 0.418865, 0.248833,
		33.008167, 38.851830, 24.763573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472458, 38.334370, 25.263737>,  <33.619469, 38.558624, 24.589390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472458, 38.334370, 25.263737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119690, 38.521358, 25.239426>,  <32.908031, 38.633553, 25.224840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119690, 38.521358, 25.239426>,  <33.472458, 38.334370, 25.263737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119690, 38.521358, 25.239426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248614, -0.351693, 0.902498,
		0.400519, 0.811038, 0.426384,
		-0.881916, 0.467472, -0.060776,
		32.855114, 38.661602, 25.221193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412960, 38.733738, 25.882700>,  <33.472458, 38.334370, 25.263737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412960, 38.733738, 25.882700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056923, 38.638680, 25.727127>,  <32.843300, 38.581646, 25.633783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056923, 38.638680, 25.727127>,  <33.412960, 38.733738, 25.882700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056923, 38.638680, 25.727127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207610, -0.548268, 0.810124,
		-0.405760, 0.801828, 0.438669,
		-0.890088, -0.237643, -0.388933,
		32.789898, 38.567387, 25.610447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966640, 38.845352, 26.431484>,  <33.412960, 38.733738, 25.882700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966640, 38.845352, 26.431484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733456, 38.646976, 26.174051>,  <32.593544, 38.527950, 26.019590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733456, 38.646976, 26.174051>,  <32.966640, 38.845352, 26.431484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733456, 38.646976, 26.174051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433171, -0.480437, 0.762590,
		-0.687400, 0.723342, 0.065249,
		-0.582961, -0.495940, -0.643583,
		32.558567, 38.498196, 25.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212780, 38.961781, 26.603224>,  <32.966640, 38.845352, 26.431484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212780, 38.961781, 26.603224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192642, 38.626518, 26.385983>,  <32.180557, 38.425362, 26.255638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192642, 38.626518, 26.385983>,  <32.212780, 38.961781, 26.603224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192642, 38.626518, 26.385983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545919, -0.432267, 0.717717,
		-0.836324, 0.332625, -0.435801,
		-0.050348, -0.838156, -0.543102,
		32.177536, 38.375072, 26.223051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460903, 38.764992, 26.464853>,  <32.212780, 38.961781, 26.603224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460903, 38.764992, 26.464853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696119, 38.442703, 26.436522>,  <31.837250, 38.249329, 26.419523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696119, 38.442703, 26.436522>,  <31.460903, 38.764992, 26.464853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696119, 38.442703, 26.436522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457132, -0.403313, 0.792698,
		-0.667262, -0.433760, -0.605486,
		0.588040, -0.805724, -0.070830,
		31.872532, 38.200985, 26.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094088, 38.159340, 26.686703>,  <31.460903, 38.764992, 26.464853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094088, 38.159340, 26.686703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459404, 37.996712, 26.676929>,  <31.678595, 37.899136, 26.671066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459404, 37.996712, 26.676929>,  <31.094088, 38.159340, 26.686703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459404, 37.996712, 26.676929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187157, -0.472181, 0.861404,
		-0.361760, -0.782140, -0.507332,
		0.913292, -0.406572, -0.024433,
		31.733391, 37.874741, 26.669600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072783, 37.409359, 26.850719>,  <31.094088, 38.159340, 26.686703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072783, 37.409359, 26.850719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455025, 37.485634, 26.940567>,  <31.684370, 37.531399, 26.994476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455025, 37.485634, 26.940567>,  <31.072783, 37.409359, 26.850719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455025, 37.485634, 26.940567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052216, -0.640678, 0.766032,
		0.289981, -0.743754, -0.602279,
		0.955607, 0.190687, 0.224620,
		31.741707, 37.542839, 27.007954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436628, 36.724724, 27.030643>,  <31.072783, 37.409359, 26.850719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436628, 36.724724, 27.030643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662514, 37.000050, 27.212772>,  <31.798044, 37.165245, 27.322050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662514, 37.000050, 27.212772>,  <31.436628, 36.724724, 27.030643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662514, 37.000050, 27.212772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172975, -0.440741, 0.880811,
		0.806957, -0.576164, -0.129830,
		0.564712, 0.688319, 0.455321,
		31.831928, 37.206547, 27.349369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923540, 36.347004, 27.462502>,  <31.436628, 36.724724, 27.030643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923540, 36.347004, 27.462502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849874, 36.712761, 27.606705>,  <31.805676, 36.932217, 27.693228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849874, 36.712761, 27.606705>,  <31.923540, 36.347004, 27.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849874, 36.712761, 27.606705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060187, -0.376587, 0.924424,
		0.981051, 0.148549, 0.124389,
		-0.184165, 0.914394, 0.360510,
		31.794624, 36.987080, 27.714857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371754, 36.391464, 28.064142>,  <31.923540, 36.347004, 27.462502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371754, 36.391464, 28.064142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144161, 36.715805, 28.118959>,  <32.007607, 36.910408, 28.151850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144161, 36.715805, 28.118959>,  <32.371754, 36.391464, 28.064142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144161, 36.715805, 28.118959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014509, -0.156725, 0.987536,
		0.822221, 0.563880, 0.077409,
		-0.568984, 0.810849, 0.137044,
		31.973467, 36.959061, 28.160072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775230, 36.853767, 28.708530>,  <32.371754, 36.391464, 28.064142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775230, 36.853767, 28.708530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392784, 36.955494, 28.650343>,  <32.163315, 37.016529, 28.615431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392784, 36.955494, 28.650343>,  <32.775230, 36.853767, 28.708530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392784, 36.955494, 28.650343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170926, -0.080927, 0.981955,
		0.237951, 0.963730, 0.120845,
		-0.956119, 0.254312, -0.145470,
		32.105949, 37.031788, 28.606703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626606, 37.478020, 29.168400>,  <32.775230, 36.853767, 28.708530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626606, 37.478020, 29.168400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262550, 37.337852, 29.079996>,  <32.044117, 37.253750, 29.026955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262550, 37.337852, 29.079996>,  <32.626606, 37.478020, 29.168400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262550, 37.337852, 29.079996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180777, -0.144084, 0.972913,
		-0.372772, 0.925444, 0.067789,
		-0.910143, -0.350420, -0.221009,
		31.989508, 37.232727, 29.013693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196297, 37.814480, 29.555685>,  <32.626606, 37.478020, 29.168400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196297, 37.814480, 29.555685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992056, 37.479259, 29.478786>,  <31.869511, 37.278130, 29.432648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992056, 37.479259, 29.478786>,  <32.196297, 37.814480, 29.555685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992056, 37.479259, 29.478786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173509, -0.118560, 0.977670,
		-0.842127, 0.532559, -0.084872,
		-0.510604, -0.838048, -0.192247,
		31.838875, 37.227844, 29.421112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668278, 37.792530, 30.024366>,  <32.196297, 37.814480, 29.555685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668278, 37.792530, 30.024366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688944, 37.411373, 29.904818>,  <31.701344, 37.182678, 29.833088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688944, 37.411373, 29.904818>,  <31.668278, 37.792530, 30.024366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688944, 37.411373, 29.904818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203164, -0.303043, 0.931069,
		-0.977781, 0.012617, -0.209250,
		0.051665, -0.952893, -0.298873,
		31.704443, 37.125504, 29.815155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146685, 37.415054, 30.415930>,  <31.668278, 37.792530, 30.024366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146685, 37.415054, 30.415930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362446, 37.098900, 30.299770>,  <31.491901, 36.909206, 30.230076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362446, 37.098900, 30.299770>,  <31.146685, 37.415054, 30.415930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362446, 37.098900, 30.299770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000129, -0.344946, 0.938623,
		-0.842049, -0.506257, -0.186166,
		0.539401, -0.790390, -0.290396,
		31.524265, 36.861782, 30.212652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854883, 36.836006, 30.721235>,  <31.146685, 37.415054, 30.415930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854883, 36.836006, 30.721235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195639, 36.654312, 30.616962>,  <31.400093, 36.545296, 30.554399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195639, 36.654312, 30.616962>,  <30.854883, 36.836006, 30.721235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195639, 36.654312, 30.616962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083749, -0.373193, 0.923966,
		-0.516982, -0.808949, -0.279878,
		0.851890, -0.454234, -0.260682,
		31.451206, 36.518044, 30.538757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836245, 36.113911, 31.040789>,  <30.854883, 36.836006, 30.721235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836245, 36.113911, 31.040789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216028, 36.197174, 30.946814>,  <31.443899, 36.247131, 30.890429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216028, 36.197174, 30.946814>,  <30.836245, 36.113911, 31.040789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216028, 36.197174, 30.946814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281469, -0.233335, 0.930768,
		0.138931, -0.949854, -0.280133,
		0.949459, 0.208161, -0.234937,
		31.500866, 36.259621, 30.876333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102932, 35.531681, 31.277287>,  <30.836245, 36.113911, 31.040789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102932, 35.531681, 31.277287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388947, 35.811077, 31.265751>,  <31.560555, 35.978714, 31.258829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388947, 35.811077, 31.265751>,  <31.102932, 35.531681, 31.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388947, 35.811077, 31.265751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239231, -0.205718, 0.948920,
		0.656881, -0.685411, -0.314197,
		0.715036, 0.698493, -0.028839,
		31.603456, 36.020626, 31.257099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751352, 35.203758, 31.583578>,  <31.102932, 35.531681, 31.277287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751352, 35.203758, 31.583578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822256, 35.596962, 31.602678>,  <31.864798, 35.832882, 31.614138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822256, 35.596962, 31.602678>,  <31.751352, 35.203758, 31.583578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822256, 35.596962, 31.602678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276838, -0.096361, 0.956073,
		0.944426, -0.156252, -0.289214,
		0.177257, 0.983006, 0.047749,
		31.875433, 35.891865, 31.617002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433083, 35.197395, 31.913759>,  <31.751352, 35.203758, 31.583578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433083, 35.197395, 31.913759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295288, 35.568329, 31.972256>,  <32.212612, 35.790890, 32.007355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295288, 35.568329, 31.972256>,  <32.433083, 35.197395, 31.913759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295288, 35.568329, 31.972256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234849, -0.065697, 0.969809,
		0.908942, 0.368429, -0.195151,
		-0.344485, 0.927332, 0.146240,
		32.191944, 35.846527, 32.016129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967213, 35.616367, 32.062263>,  <32.433083, 35.197395, 31.913759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967213, 35.616367, 32.062263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630306, 35.740047, 32.238888>,  <32.428162, 35.814255, 32.344864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630306, 35.740047, 32.238888>,  <32.967213, 35.616367, 32.062263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630306, 35.740047, 32.238888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380484, -0.239261, 0.893301,
		0.381854, 0.920408, 0.083878,
		-0.842270, 0.309197, 0.441564,
		32.377625, 35.832806, 32.371357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377567, 36.186111, 32.337624>,  <32.967213, 35.616367, 32.062263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377567, 36.186111, 32.337624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769508, 36.215260, 32.412003>,  <34.004673, 36.232746, 32.456631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769508, 36.215260, 32.412003>,  <33.377567, 36.186111, 32.337624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769508, 36.215260, 32.412003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154680, 0.312073, -0.937382,
		-0.126334, 0.947259, 0.294515,
		0.979854, 0.072868, 0.185947,
		34.063465, 36.237122, 32.467785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602093, 36.908192, 32.131641>,  <33.377567, 36.186111, 32.337624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602093, 36.908192, 32.131641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933327, 36.684025, 32.125820>,  <34.132065, 36.549522, 32.122330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933327, 36.684025, 32.125820>,  <33.602093, 36.908192, 32.131641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933327, 36.684025, 32.125820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285330, 0.443665, -0.849558,
		0.482564, 0.699351, 0.527295,
		0.828081, -0.560419, -0.014551,
		34.181751, 36.515900, 32.121456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189156, 37.385971, 32.080021>,  <33.602093, 36.908192, 32.131641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189156, 37.385971, 32.080021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298328, 37.020947, 31.958210>,  <34.363831, 36.801929, 31.885124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298328, 37.020947, 31.958210>,  <34.189156, 37.385971, 32.080021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298328, 37.020947, 31.958210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360390, 0.390480, -0.847139,
		0.891979, 0.121464, 0.435453,
		0.272933, -0.912563, -0.304526,
		34.380207, 36.747177, 31.866852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848030, 37.391724, 31.823320>,  <34.189156, 37.385971, 32.080021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848030, 37.391724, 31.823320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714851, 37.052471, 31.658485>,  <34.634945, 36.848919, 31.559586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714851, 37.052471, 31.658485>,  <34.848030, 37.391724, 31.823320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714851, 37.052471, 31.658485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572912, 0.165158, -0.802804,
		0.748946, -0.503379, 0.430917,
		-0.332945, -0.848135, -0.412086,
		34.614967, 36.798031, 31.534859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457973, 37.052917, 31.591236>,  <34.848030, 37.391724, 31.823320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457973, 37.052917, 31.591236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151840, 36.889256, 31.392494>,  <34.968163, 36.791058, 31.273249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151840, 36.889256, 31.392494>,  <35.457973, 37.052917, 31.591236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151840, 36.889256, 31.392494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496852, 0.115161, -0.860161,
		0.409157, -0.905169, 0.115153,
		-0.765329, -0.409155, -0.496854,
		34.922241, 36.766510, 31.243439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770458, 36.573303, 31.121584>,  <35.457973, 37.052917, 31.591236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770458, 36.573303, 31.121584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400757, 36.628208, 30.979084>,  <35.178936, 36.661152, 30.893583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400757, 36.628208, 30.979084>,  <35.770458, 36.573303, 31.121584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400757, 36.628208, 30.979084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372082, 0.114888, -0.921063,
		-0.085496, -0.983850, -0.157258,
		-0.924254, 0.137260, -0.356250,
		35.123482, 36.669384, 30.872210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698433, 36.184494, 30.518084>,  <35.770458, 36.573303, 31.121584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698433, 36.184494, 30.518084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444328, 36.491482, 30.483595>,  <35.291866, 36.675674, 30.462902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444328, 36.491482, 30.483595>,  <35.698433, 36.184494, 30.518084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444328, 36.491482, 30.483595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371841, 0.206102, -0.905128,
		-0.676885, -0.607057, -0.416304,
		-0.635265, 0.767466, -0.086222,
		35.253750, 36.721722, 30.457729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442734, 36.096622, 29.798521>,  <35.698433, 36.184494, 30.518084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442734, 36.096622, 29.798521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336384, 36.458454, 29.931816>,  <35.272575, 36.675552, 30.011793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336384, 36.458454, 29.931816>,  <35.442734, 36.096622, 29.798521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336384, 36.458454, 29.931816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005675, 0.344206, -0.938877,
		-0.963991, -0.251516, -0.086382,
		-0.265876, 0.904578, 0.333239,
		35.256622, 36.729828, 30.031788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850372, 36.398289, 29.380751>,  <35.442734, 36.096622, 29.798521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850372, 36.398289, 29.380751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013256, 36.724430, 29.545370>,  <35.110985, 36.920116, 29.644142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013256, 36.724430, 29.545370>,  <34.850372, 36.398289, 29.380751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013256, 36.724430, 29.545370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091305, 0.412003, -0.906596,
		-0.908760, 0.406750, 0.093325,
		0.407208, 0.815358, 0.411550,
		35.135418, 36.969036, 29.668835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397236, 36.930302, 29.037163>,  <34.850372, 36.398289, 29.380751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397236, 36.930302, 29.037163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731846, 37.102764, 29.172415>,  <34.932613, 37.206242, 29.253567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731846, 37.102764, 29.172415>,  <34.397236, 36.930302, 29.037163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731846, 37.102764, 29.172415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121288, 0.456092, -0.881629,
		-0.534335, 0.778516, 0.329240,
		0.836526, 0.431152, 0.338131,
		34.982803, 37.232109, 29.273853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366383, 37.627373, 28.778717>,  <34.397236, 36.930302, 29.037163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366383, 37.627373, 28.778717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754295, 37.584949, 28.866600>,  <34.987041, 37.559494, 28.919331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754295, 37.584949, 28.866600>,  <34.366383, 37.627373, 28.778717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754295, 37.584949, 28.866600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243509, 0.476084, -0.845013,
		-0.014978, 0.872981, 0.487524,
		0.969783, -0.106060, 0.219710,
		35.045231, 37.553131, 28.932512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658272, 38.209667, 28.598461>,  <34.366383, 37.627373, 28.778717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658272, 38.209667, 28.598461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965508, 37.953732, 28.608549>,  <35.149849, 37.800171, 28.614601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965508, 37.953732, 28.608549>,  <34.658272, 38.209667, 28.598461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965508, 37.953732, 28.608549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370222, 0.411606, -0.832776,
		0.522465, 0.648986, 0.553035,
		0.768093, -0.639842, 0.025219,
		35.195934, 37.761780, 28.616116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246151, 38.614529, 28.493044>,  <34.658272, 38.209667, 28.598461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246151, 38.614529, 28.493044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320152, 38.236279, 28.386030>,  <35.364552, 38.009331, 28.321821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320152, 38.236279, 28.386030>,  <35.246151, 38.614529, 28.493044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320152, 38.236279, 28.386030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388303, 0.320419, -0.864033,
		0.902770, 0.055965, 0.426466,
		0.185004, -0.945621, -0.267534,
		35.375652, 37.952591, 28.305771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009151, 38.614754, 28.344975>,  <35.246151, 38.614529, 28.493044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009151, 38.614754, 28.344975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874535, 38.289261, 28.155413>,  <35.793766, 38.093967, 28.041676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874535, 38.289261, 28.155413>,  <36.009151, 38.614754, 28.344975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874535, 38.289261, 28.155413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479205, 0.285230, -0.830064,
		0.810619, -0.506448, 0.293951,
		-0.336541, -0.813729, -0.473906,
		35.773571, 38.045143, 28.013241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551998, 38.414837, 27.832651>,  <36.009151, 38.614754, 28.344975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551998, 38.414837, 27.832651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214859, 38.243320, 27.702576>,  <36.012577, 38.140411, 27.624531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214859, 38.243320, 27.702576>,  <36.551998, 38.414837, 27.832651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214859, 38.243320, 27.702576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209381, 0.295364, -0.932159,
		0.495753, -0.853754, -0.159165,
		-0.842846, -0.428794, -0.325187,
		35.962006, 38.114681, 27.605019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728115, 38.213642, 27.148834>,  <36.551998, 38.414837, 27.832651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728115, 38.213642, 27.148834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328697, 38.195637, 27.160736>,  <36.089046, 38.184834, 27.167877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328697, 38.195637, 27.160736>,  <36.728115, 38.213642, 27.148834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328697, 38.195637, 27.160736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042411, 0.313776, -0.948549,
		0.033358, -0.948430, -0.315228,
		-0.998543, -0.045011, 0.029757,
		36.029133, 38.182133, 27.169662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503807, 37.774956, 26.534639>,  <36.728115, 38.213642, 27.148834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503807, 37.774956, 26.534639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199200, 38.012272, 26.639027>,  <36.016438, 38.154659, 26.701660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199200, 38.012272, 26.639027>,  <36.503807, 37.774956, 26.534639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199200, 38.012272, 26.639027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075509, 0.318690, -0.944846,
		-0.643734, -0.739220, -0.197889,
		-0.761515, 0.593287, 0.260969,
		35.970745, 38.190258, 26.717318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938942, 37.625824, 25.989510>,  <36.503807, 37.774956, 26.534639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938942, 37.625824, 25.989510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842243, 37.961967, 26.183559>,  <35.784222, 38.163654, 26.299990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842243, 37.961967, 26.183559>,  <35.938942, 37.625824, 25.989510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842243, 37.961967, 26.183559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217545, 0.440290, -0.871102,
		-0.945638, -0.316125, 0.076377,
		-0.241749, 0.840363, 0.485126,
		35.769718, 38.214077, 26.329098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232735, 37.762962, 25.805368>,  <35.938942, 37.625824, 25.989510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232735, 37.762962, 25.805368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382732, 38.120670, 25.903070>,  <35.472733, 38.335297, 25.961691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382732, 38.120670, 25.903070>,  <35.232735, 37.762962, 25.805368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382732, 38.120670, 25.903070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247770, 0.350580, -0.903163,
		-0.893302, 0.278163, 0.353040,
		0.374996, 0.894270, 0.244254,
		35.495232, 38.388950, 25.976347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742584, 38.214489, 25.699261>,  <35.232735, 37.762962, 25.805368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742584, 38.214489, 25.699261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085579, 38.417072, 25.662996>,  <35.291374, 38.538624, 25.641237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085579, 38.417072, 25.662996>,  <34.742584, 38.214489, 25.699261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085579, 38.417072, 25.662996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335450, 0.416708, -0.844883,
		-0.390118, 0.754888, 0.527212,
		0.857486, 0.506457, -0.090662,
		35.342823, 38.569008, 25.635798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536888, 38.880486, 25.427443>,  <34.742584, 38.214489, 25.699261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536888, 38.880486, 25.427443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930885, 38.858395, 25.362032>,  <35.167282, 38.845139, 25.322786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930885, 38.858395, 25.362032>,  <34.536888, 38.880486, 25.427443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930885, 38.858395, 25.362032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142870, 0.270708, -0.952001,
		0.096847, 0.961076, 0.258755,
		0.984992, -0.055230, -0.163526,
		35.226383, 38.841827, 25.312975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741238, 39.483154, 24.973791>,  <34.536888, 38.880486, 25.427443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741238, 39.483154, 24.973791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017452, 39.198029, 24.924711>,  <35.183182, 39.026955, 24.895264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017452, 39.198029, 24.924711>,  <34.741238, 39.483154, 24.973791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017452, 39.198029, 24.924711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032520, 0.138871, -0.989776,
		0.722566, 0.687467, 0.072715,
		0.690536, -0.712814, -0.122699,
		35.224613, 38.984184, 24.887901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223686, 39.774532, 24.606421>,  <34.741238, 39.483154, 24.973791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223686, 39.774532, 24.606421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278290, 39.383522, 24.542171>,  <35.311050, 39.148914, 24.503622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278290, 39.383522, 24.542171>,  <35.223686, 39.774532, 24.606421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278290, 39.383522, 24.542171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039640, 0.167401, -0.985092,
		0.989845, 0.128107, 0.061601,
		0.136509, -0.977530, -0.160623,
		35.319241, 39.090263, 24.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809093, 39.717503, 24.056580>,  <35.223686, 39.774532, 24.606421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809093, 39.717503, 24.056580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625210, 39.362610, 24.071991>,  <35.514881, 39.149673, 24.081238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625210, 39.362610, 24.071991>,  <35.809093, 39.717503, 24.056580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625210, 39.362610, 24.071991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185464, -0.138343, -0.972864,
		0.868489, -0.440087, 0.228147,
		-0.459707, -0.887234, 0.038529,
		35.487297, 39.096439, 24.083549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118362, 39.338020, 23.573872>,  <35.809093, 39.717503, 24.056580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118362, 39.338020, 23.573872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794949, 39.105156, 23.608175>,  <35.600899, 38.965439, 23.628757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794949, 39.105156, 23.608175>,  <36.118362, 39.338020, 23.573872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794949, 39.105156, 23.608175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002010, -0.143006, -0.989720,
		0.588440, -0.800399, 0.114456,
		-0.808538, -0.582161, 0.085759,
		35.552387, 38.930508, 23.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275547, 38.587196, 23.258648>,  <36.118362, 39.338020, 23.573872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275547, 38.587196, 23.258648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881039, 38.652462, 23.248465>,  <35.644333, 38.691620, 23.242353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881039, 38.652462, 23.248465>,  <36.275547, 38.587196, 23.258648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881039, 38.652462, 23.248465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020479, -0.273829, -0.961560,
		-0.163862, -0.947837, 0.273411,
		-0.986270, 0.163163, -0.025459,
		35.585159, 38.701412, 23.240826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056698, 38.155396, 22.808880>,  <36.275547, 38.587196, 23.258648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056698, 38.155396, 22.808880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723595, 38.375965, 22.828634>,  <35.523731, 38.508308, 22.840487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723595, 38.375965, 22.828634>,  <36.056698, 38.155396, 22.808880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723595, 38.375965, 22.828634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161284, -0.156295, -0.974453,
		-0.529622, -0.819450, 0.219093,
		-0.832759, 0.551428, 0.049387,
		35.473766, 38.541393, 22.843451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678371, 37.792240, 22.274281>,  <36.056698, 38.155396, 22.808880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678371, 37.792240, 22.274281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469158, 38.129780, 22.322212>,  <35.343628, 38.332302, 22.350971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469158, 38.129780, 22.322212>,  <35.678371, 37.792240, 22.274281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469158, 38.129780, 22.322212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280940, -0.037958, -0.958974,
		-0.804678, -0.535241, 0.256924,
		-0.523035, 0.843846, 0.119827,
		35.312248, 38.382935, 22.358160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004280, 37.635345, 22.069077>,  <35.678371, 37.792240, 22.274281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004280, 37.635345, 22.069077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079556, 38.026146, 22.028982>,  <35.124722, 38.260628, 22.004925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079556, 38.026146, 22.028982>,  <35.004280, 37.635345, 22.069077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079556, 38.026146, 22.028982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193401, -0.063196, -0.979083,
		-0.962902, 0.203639, 0.177060,
		0.188190, 0.977004, -0.100235,
		35.136013, 38.319248, 21.998911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698647, 37.836079, 21.501682>,  <35.004280, 37.635345, 22.069077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698647, 37.836079, 21.501682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941631, 38.149029, 21.556639>,  <35.087421, 38.336800, 21.589613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941631, 38.149029, 21.556639>,  <34.698647, 37.836079, 21.501682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941631, 38.149029, 21.556639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160927, 0.048165, -0.985790,
		-0.777878, 0.620939, -0.096647,
		0.607461, 0.782377, 0.137392,
		35.123871, 38.383743, 21.597857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593967, 38.126926, 20.904436>,  <34.698647, 37.836079, 21.501682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593967, 38.126926, 20.904436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918186, 38.307114, 21.054153>,  <35.112717, 38.415226, 21.143984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918186, 38.307114, 21.054153>,  <34.593967, 38.126926, 20.904436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918186, 38.307114, 21.054153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263353, 0.290501, -0.919921,
		-0.523129, 0.844208, 0.116832,
		0.810544, 0.450469, 0.374294,
		35.161350, 38.442253, 21.166441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593388, 38.842041, 20.666786>,  <34.593967, 38.126926, 20.904436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593388, 38.842041, 20.666786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968586, 38.736374, 20.756565>,  <35.193707, 38.672974, 20.810432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968586, 38.736374, 20.756565>,  <34.593388, 38.842041, 20.666786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968586, 38.736374, 20.756565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282953, 0.209437, -0.935988,
		0.200253, 0.941462, 0.271199,
		0.937996, -0.264171, 0.224449,
		35.249985, 38.657124, 20.823900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005745, 39.315014, 20.343533>,  <34.593388, 38.842041, 20.666786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005745, 39.315014, 20.343533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252262, 39.005543, 20.402323>,  <35.400173, 38.819859, 20.437597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252262, 39.005543, 20.402323>,  <35.005745, 39.315014, 20.343533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252262, 39.005543, 20.402323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361332, 0.111972, -0.925690,
		0.699731, 0.623602, 0.348563,
		0.616292, -0.773681, 0.146977,
		35.437149, 38.773438, 20.446415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635822, 39.564327, 19.994755>,  <35.005745, 39.315014, 20.343533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635822, 39.564327, 19.994755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620281, 39.165195, 20.016027>,  <35.610954, 38.925716, 20.028791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620281, 39.165195, 20.016027>,  <35.635822, 39.564327, 19.994755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620281, 39.165195, 20.016027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306067, -0.062549, -0.949953,
		0.951217, -0.020633, 0.307833,
		-0.038855, -0.997828, 0.053182,
		35.608624, 38.865849, 20.031982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254234, 39.385265, 19.448675>,  <35.635822, 39.564327, 19.994755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254234, 39.385265, 19.448675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045757, 39.051987, 19.522589>,  <35.920673, 38.852020, 19.566936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045757, 39.051987, 19.522589>,  <36.254234, 39.385265, 19.448675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045757, 39.051987, 19.522589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006072, -0.220129, -0.975452,
		0.853419, -0.507274, 0.119788,
		-0.521190, -0.833196, 0.184782,
		35.889400, 38.802029, 19.578024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643673, 38.869919, 19.033552>,  <36.254234, 39.385265, 19.448675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643673, 38.869919, 19.033552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276085, 38.729317, 19.105043>,  <36.055534, 38.644955, 19.147938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276085, 38.729317, 19.105043>,  <36.643673, 38.869919, 19.033552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276085, 38.729317, 19.105043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060654, -0.321849, -0.944846,
		0.389639, -0.879124, 0.274449,
		-0.918968, -0.351503, 0.178728,
		36.000393, 38.623867, 19.158661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674099, 38.208530, 18.668894>,  <36.643673, 38.869919, 19.033552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674099, 38.208530, 18.668894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291862, 38.318333, 18.711765>,  <36.062519, 38.384212, 18.737488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291862, 38.318333, 18.711765>,  <36.674099, 38.208530, 18.668894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291862, 38.318333, 18.711765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207709, -0.369428, -0.905748,
		-0.209037, -0.887790, 0.410040,
		-0.955594, 0.274504, 0.107178,
		36.005184, 38.400684, 18.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521835, 38.263069, 17.827148>,  <36.674099, 38.208530, 18.668894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521835, 38.263069, 17.827148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731377, 37.935238, 17.734310>,  <36.857101, 37.738541, 17.678608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731377, 37.935238, 17.734310>,  <36.521835, 38.263069, 17.827148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731377, 37.935238, 17.734310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088427, -0.323327, 0.942147,
		-0.847204, -0.473027, -0.241849,
		0.523857, -0.819577, -0.232096,
		36.888535, 37.689365, 17.664682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323364, 37.584270, 18.142719>,  <36.521835, 38.263069, 17.827148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323364, 37.584270, 18.142719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719440, 37.596519, 18.088198>,  <36.957088, 37.603870, 18.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719440, 37.596519, 18.088198>,  <36.323364, 37.584270, 18.142719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719440, 37.596519, 18.088198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139365, -0.284247, 0.948568,
		-0.009692, -0.958262, -0.285728,
		0.990194, 0.030627, -0.136303,
		37.016499, 37.605705, 18.047306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644909, 37.069225, 18.606379>,  <36.323364, 37.584270, 18.142719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644909, 37.069225, 18.606379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988297, 37.249664, 18.508764>,  <37.194328, 37.357925, 18.450195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988297, 37.249664, 18.508764>,  <36.644909, 37.069225, 18.606379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988297, 37.249664, 18.508764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419549, -0.343985, 0.840032,
		0.294987, -0.823523, -0.484554,
		0.858464, 0.451093, -0.244037,
		37.245834, 37.384991, 18.435553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269527, 36.451679, 18.697893>,  <36.644909, 37.069225, 18.606379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269527, 36.451679, 18.697893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402000, 36.828251, 18.723274>,  <37.481483, 37.054195, 18.738503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402000, 36.828251, 18.723274>,  <37.269527, 36.451679, 18.697893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402000, 36.828251, 18.723274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284260, -0.163672, 0.944674,
		0.899731, -0.294820, -0.321816,
		0.331181, 0.941431, 0.063455,
		37.501354, 37.110680, 18.742311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929535, 36.473892, 19.028934>,  <37.269527, 36.451679, 18.697893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929535, 36.473892, 19.028934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809151, 36.849449, 19.095758>,  <37.736919, 37.074783, 19.135853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809151, 36.849449, 19.095758>,  <37.929535, 36.473892, 19.028934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809151, 36.849449, 19.095758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251411, -0.090869, 0.963606,
		0.919900, 0.332008, -0.208699,
		-0.300960, 0.938890, 0.167061,
		37.718864, 37.131115, 19.145876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500000, 36.875755, 19.461359>,  <37.929535, 36.473892, 19.028934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500000, 36.875755, 19.461359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151314, 37.065331, 19.511150>,  <37.942101, 37.179077, 19.541025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151314, 37.065331, 19.511150>,  <38.500000, 36.875755, 19.461359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151314, 37.065331, 19.511150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103269, -0.070639, 0.992142,
		0.479010, 0.877719, 0.012634,
		-0.871714, 0.473941, 0.124478,
		37.889801, 37.207512, 19.548494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675476, 37.209473, 19.981037>,  <38.500000, 36.875755, 19.461359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675476, 37.209473, 19.981037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275864, 37.222694, 19.969463>,  <38.036095, 37.230629, 19.962519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275864, 37.222694, 19.969463>,  <38.675476, 37.209473, 19.981037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275864, 37.222694, 19.969463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030133, -0.036333, 0.998885,
		0.031969, 0.998793, 0.037294,
		-0.999035, 0.033057, -0.028935,
		37.976154, 37.232613, 19.960783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409950, 37.832180, 20.388281>,  <38.675476, 37.209473, 19.981037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409950, 37.832180, 20.388281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136608, 37.540943, 20.366720>,  <37.972603, 37.366203, 20.353785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136608, 37.540943, 20.366720>,  <38.409950, 37.832180, 20.388281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136608, 37.540943, 20.366720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274702, 0.188019, 0.942968,
		-0.676431, 0.659193, -0.328492,
		-0.683360, -0.728090, -0.053899,
		37.931599, 37.322517, 20.350550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940018, 38.079315, 20.858936>,  <38.409950, 37.832180, 20.388281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940018, 38.079315, 20.858936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827347, 37.698902, 20.808035>,  <37.759743, 37.470654, 20.777494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827347, 37.698902, 20.808035>,  <37.940018, 38.079315, 20.858936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827347, 37.698902, 20.808035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067870, -0.112542, 0.991327,
		-0.957106, 0.287872, -0.032846,
		-0.281678, -0.951033, -0.127252,
		37.742844, 37.413593, 20.769859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530716, 38.052479, 21.363802>,  <37.940018, 38.079315, 20.858936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530716, 38.052479, 21.363802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590210, 37.665813, 21.280426>,  <37.625908, 37.433815, 21.230400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590210, 37.665813, 21.280426>,  <37.530716, 38.052479, 21.363802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590210, 37.665813, 21.280426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104216, -0.224933, 0.968785,
		-0.983370, -0.122371, -0.134197,
		0.148736, -0.966659, -0.208439,
		37.634830, 37.375816, 21.217894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083683, 37.756882, 21.778774>,  <37.530716, 38.052479, 21.363802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083683, 37.756882, 21.778774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344418, 37.466221, 21.691967>,  <37.500858, 37.291824, 21.639883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344418, 37.466221, 21.691967>,  <37.083683, 37.756882, 21.778774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344418, 37.466221, 21.691967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080545, -0.350881, 0.932949,
		-0.754074, -0.590647, -0.287244,
		0.651832, -0.726649, -0.217017,
		37.539967, 37.248226, 21.626862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678520, 37.163189, 21.904064>,  <37.083683, 37.756882, 21.778774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678520, 37.163189, 21.904064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068417, 37.078072, 21.931171>,  <37.302357, 37.027000, 21.947435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068417, 37.078072, 21.931171>,  <36.678520, 37.163189, 21.904064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068417, 37.078072, 21.931171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171762, -0.520396, 0.836472,
		-0.142729, -0.826986, -0.543803,
		0.974744, -0.212794, 0.067769,
		37.360840, 37.014233, 21.951502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756241, 36.435837, 22.174297>,  <36.678520, 37.163189, 21.904064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756241, 36.435837, 22.174297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111473, 36.600758, 22.255608>,  <37.324612, 36.699711, 22.304394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111473, 36.600758, 22.255608>,  <36.756241, 36.435837, 22.174297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111473, 36.600758, 22.255608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000860, -0.443698, 0.896176,
		0.459686, -0.795702, -0.394395,
		0.888081, 0.412298, 0.203277,
		37.377899, 36.724445, 22.316591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021656, 35.962872, 22.655733>,  <36.756241, 36.435837, 22.174297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021656, 35.962872, 22.655733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261021, 36.281872, 22.686441>,  <37.404640, 36.473270, 22.704866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261021, 36.281872, 22.686441>,  <37.021656, 35.962872, 22.655733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261021, 36.281872, 22.686441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008491, -0.089504, 0.995950,
		0.801142, -0.596643, -0.046789,
		0.598415, 0.797500, 0.076772,
		37.440544, 36.521122, 22.709473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660034, 35.827980, 23.049675>,  <37.021656, 35.962872, 22.655733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660034, 35.827980, 23.049675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593742, 36.222408, 23.055317>,  <37.553967, 36.459064, 23.058702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593742, 36.222408, 23.055317>,  <37.660034, 35.827980, 23.049675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593742, 36.222408, 23.055317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112181, 0.004640, 0.993677,
		0.979770, 0.166264, -0.111387,
		-0.165730, 0.986070, 0.014106,
		37.544022, 36.518230, 23.059549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100727, 36.170334, 23.415859>,  <37.660034, 35.827980, 23.049675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100727, 36.170334, 23.415859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803108, 36.437489, 23.423098>,  <37.624538, 36.597782, 23.427441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803108, 36.437489, 23.423098>,  <38.100727, 36.170334, 23.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803108, 36.437489, 23.423098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160907, 0.152834, 0.975064,
		0.648465, 0.728404, -0.221182,
		-0.744045, 0.667885, 0.018097,
		37.579895, 36.637856, 23.428526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416195, 36.788513, 23.774620>,  <38.100727, 36.170334, 23.415859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416195, 36.788513, 23.774620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017284, 36.806301, 23.798164>,  <37.777939, 36.816975, 23.812290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017284, 36.806301, 23.798164>,  <38.416195, 36.788513, 23.774620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017284, 36.806301, 23.798164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071664, 0.394725, 0.916000,
		0.017497, 0.917723, -0.396836,
		-0.997275, 0.044466, 0.058861,
		37.718102, 36.819641, 23.815823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248547, 37.402340, 24.174257>,  <38.416195, 36.788513, 23.774620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248547, 37.402340, 24.174257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925091, 37.167580, 24.190510>,  <37.731018, 37.026726, 24.200262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925091, 37.167580, 24.190510>,  <38.248547, 37.402340, 24.174257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925091, 37.167580, 24.190510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003720, 0.074167, 0.997239,
		-0.588292, 0.806256, -0.062157,
		-0.808640, -0.586899, 0.040632,
		37.682499, 36.991508, 24.202700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991199, 37.829578, 24.756397>,  <38.248547, 37.402340, 24.174257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991199, 37.829578, 24.756397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766487, 37.503464, 24.700241>,  <37.631660, 37.307796, 24.666548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766487, 37.503464, 24.700241>,  <37.991199, 37.829578, 24.756397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766487, 37.503464, 24.700241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201829, -0.029508, 0.978976,
		-0.802289, 0.578305, -0.147971,
		-0.561780, -0.815287, -0.140393,
		37.597954, 37.258877, 24.658123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418884, 37.931797, 25.128235>,  <37.991199, 37.829578, 24.756397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418884, 37.931797, 25.128235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418468, 37.532108, 25.112421>,  <37.418221, 37.292297, 25.102934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418468, 37.532108, 25.112421>,  <37.418884, 37.931797, 25.128235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418468, 37.532108, 25.112421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197055, -0.038553, 0.979634,
		-0.980392, 0.008808, -0.196861,
		-0.001040, -0.999218, -0.039533,
		37.418156, 37.232342, 25.100561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858318, 37.698563, 25.570166>,  <37.418884, 37.931797, 25.128235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858318, 37.698563, 25.570166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064922, 37.357124, 25.543045>,  <37.188885, 37.152264, 25.526773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064922, 37.357124, 25.543045>,  <36.858318, 37.698563, 25.570166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064922, 37.357124, 25.543045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170823, -0.180304, 0.968664,
		-0.839070, -0.488741, -0.238942,
		0.516509, -0.853594, -0.067800,
		37.219875, 37.101048, 25.522705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434265, 37.042618, 25.859465>,  <36.858318, 37.698563, 25.570166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434265, 37.042618, 25.859465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829132, 36.978844, 25.863251>,  <37.066051, 36.940578, 25.865522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829132, 36.978844, 25.863251>,  <36.434265, 37.042618, 25.859465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829132, 36.978844, 25.863251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014158, -0.028318, 0.999499,
		-0.159088, -0.986802, -0.030212,
		0.987163, -0.159436, 0.009466,
		37.125282, 36.931015, 25.866091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506554, 36.565952, 26.356562>,  <36.434265, 37.042618, 25.859465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506554, 36.565952, 26.356562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877743, 36.707924, 26.311134>,  <37.100456, 36.793106, 26.283878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877743, 36.707924, 26.311134>,  <36.506554, 36.565952, 26.356562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877743, 36.707924, 26.311134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140260, -0.050313, 0.988836,
		0.345248, -0.933540, -0.096470,
		0.927972, 0.354924, -0.113568,
		37.156136, 36.814400, 26.277063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970570, 36.086876, 26.702204>,  <36.506554, 36.565952, 26.356562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970570, 36.086876, 26.702204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134953, 36.451336, 26.690054>,  <37.233582, 36.670010, 26.682764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134953, 36.451336, 26.690054>,  <36.970570, 36.086876, 26.702204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134953, 36.451336, 26.690054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135959, -0.028307, 0.990310,
		0.901458, -0.411109, -0.135512,
		0.410961, 0.911147, -0.030376,
		37.258240, 36.724678, 26.680941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596561, 35.844414, 27.073212>,  <36.970570, 36.086876, 26.702204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596561, 35.844414, 27.073212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513668, 36.234814, 27.100002>,  <37.463932, 36.469051, 27.116077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513668, 36.234814, 27.100002>,  <37.596561, 35.844414, 27.073212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513668, 36.234814, 27.100002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402293, 0.022612, 0.915232,
		0.891748, 0.216610, -0.397322,
		-0.207233, 0.975996, 0.066976,
		37.451500, 36.527611, 27.120094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956230, 35.969330, 27.621803>,  <37.596561, 35.844414, 27.073212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956230, 35.969330, 27.621803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756371, 36.314590, 27.592644>,  <37.636456, 36.521748, 27.575148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756371, 36.314590, 27.592644>,  <37.956230, 35.969330, 27.621803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756371, 36.314590, 27.592644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080959, 0.130322, 0.988161,
		0.862438, 0.487829, -0.134995,
		-0.499647, 0.863156, -0.072901,
		37.606476, 36.573536, 27.570774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343636, 36.499760, 27.964739>,  <37.956230, 35.969330, 27.621803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343636, 36.499760, 27.964739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975906, 36.655651, 27.943012>,  <37.755268, 36.749184, 27.929976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975906, 36.655651, 27.943012>,  <38.343636, 36.499760, 27.964739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975906, 36.655651, 27.943012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139807, 0.452536, 0.880719,
		0.367820, 0.802075, -0.470515,
		-0.919327, 0.389727, -0.054316,
		37.700108, 36.772568, 27.926718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387928, 37.200794, 28.120375>,  <38.343636, 36.499760, 27.964739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387928, 37.200794, 28.120375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025345, 37.053761, 28.203518>,  <37.807793, 36.965538, 28.253403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025345, 37.053761, 28.203518>,  <38.387928, 37.200794, 28.120375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025345, 37.053761, 28.203518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060854, 0.373371, 0.925684,
		-0.417878, 0.851747, -0.316077,
		-0.906462, -0.367589, 0.207856,
		37.753407, 36.943485, 28.265875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931770, 37.744648, 28.320410>,  <38.387928, 37.200794, 28.120375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931770, 37.744648, 28.320410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779743, 37.414719, 28.487846>,  <37.688526, 37.216763, 28.588308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779743, 37.414719, 28.487846>,  <37.931770, 37.744648, 28.320410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779743, 37.414719, 28.487846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076787, 0.422854, 0.902939,
		-0.921765, 0.375323, -0.097379,
		-0.380071, -0.824820, 0.418592,
		37.665722, 37.167274, 28.613424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479321, 37.995327, 28.832489>,  <37.931770, 37.744648, 28.320410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479321, 37.995327, 28.832489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525734, 37.605400, 28.908655>,  <37.553581, 37.371445, 28.954355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525734, 37.605400, 28.908655>,  <37.479321, 37.995327, 28.832489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525734, 37.605400, 28.908655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083398, 0.200596, 0.976118,
		-0.989738, -0.097385, 0.104575,
		0.116037, -0.974822, 0.190416,
		37.560547, 37.312954, 28.965780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936569, 37.878330, 29.355547>,  <37.479321, 37.995327, 28.832489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936569, 37.878330, 29.355547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251610, 37.632797, 29.377073>,  <37.440636, 37.485477, 29.389990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251610, 37.632797, 29.377073>,  <36.936569, 37.878330, 29.355547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251610, 37.632797, 29.377073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010663, 0.100904, 0.994839,
		-0.616091, -0.782964, 0.086017,
		0.787602, -0.613829, 0.053817,
		37.487892, 37.448650, 29.393219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752602, 37.506538, 29.859278>,  <36.936569, 37.878330, 29.355547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752602, 37.506538, 29.859278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143570, 37.429306, 29.824961>,  <37.378151, 37.382965, 29.804371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143570, 37.429306, 29.824961>,  <36.752602, 37.506538, 29.859278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143570, 37.429306, 29.824961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077458, -0.050313, 0.995725,
		-0.196574, -0.979892, -0.034221,
		0.977425, -0.193083, -0.085791,
		37.436798, 37.371380, 29.799223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860039, 36.818138, 30.211830>,  <36.752602, 37.506538, 29.859278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860039, 36.818138, 30.211830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199947, 37.028442, 30.196526>,  <37.403893, 37.154625, 30.187344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199947, 37.028442, 30.196526>,  <36.860039, 36.818138, 30.211830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199947, 37.028442, 30.196526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098209, -0.086586, 0.991392,
		0.517925, -0.846212, -0.125213,
		0.849770, 0.525764, -0.038261,
		37.454880, 37.186172, 30.185047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398453, 36.360451, 30.425270>,  <36.860039, 36.818138, 30.211830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398453, 36.360451, 30.425270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551441, 36.723770, 30.493048>,  <37.643234, 36.941761, 30.533714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551441, 36.723770, 30.493048>,  <37.398453, 36.360451, 30.425270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551441, 36.723770, 30.493048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074491, -0.213104, 0.974186,
		0.920958, -0.359979, -0.149167,
		0.382475, 0.908296, 0.169445,
		37.666183, 36.996258, 30.543880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078705, 36.384979, 30.833061>,  <37.398453, 36.360451, 30.425270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078705, 36.384979, 30.833061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966450, 36.765171, 30.886484>,  <37.899097, 36.993286, 30.918537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966450, 36.765171, 30.886484>,  <38.078705, 36.384979, 30.833061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966450, 36.765171, 30.886484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452133, 0.008171, 0.891913,
		0.846650, 0.310693, -0.432034,
		-0.280641, 0.950475, 0.133557,
		37.882256, 37.050312, 30.926552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601273, 36.708443, 31.198269>,  <38.078705, 36.384979, 30.833061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601273, 36.708443, 31.198269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314034, 36.979912, 31.259895>,  <38.141689, 37.142792, 31.296871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314034, 36.979912, 31.259895>,  <38.601273, 36.708443, 31.198269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314034, 36.979912, 31.259895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322562, 0.128413, 0.937797,
		0.616672, 0.723129, -0.311127,
		-0.718101, 0.678672, 0.154065,
		38.098602, 37.183514, 31.306114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933739, 37.288494, 31.502161>,  <38.601273, 36.708443, 31.198269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933739, 37.288494, 31.502161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549351, 37.301666, 31.612034>,  <38.318718, 37.309570, 31.677958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549351, 37.301666, 31.612034>,  <38.933739, 37.288494, 31.502161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549351, 37.301666, 31.612034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271325, -0.081706, 0.959013,
		0.054021, 0.996112, 0.069584,
		-0.960971, 0.032927, 0.274684,
		38.261059, 37.311543, 31.694439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912880, 37.798332, 31.947268>,  <38.933739, 37.288494, 31.502161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912880, 37.798332, 31.947268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573029, 37.595654, 32.005775>,  <38.369118, 37.474049, 32.040882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573029, 37.595654, 32.005775>,  <38.912880, 37.798332, 31.947268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573029, 37.595654, 32.005775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186224, -0.028756, 0.982086,
		-0.493410, 0.861647, 0.118791,
		-0.849627, -0.506693, 0.146271,
		38.318142, 37.443645, 32.049656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521126, 38.190426, 32.448738>,  <38.912880, 37.798332, 31.947268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521126, 38.190426, 32.448738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419319, 37.803673, 32.456234>,  <38.358234, 37.571621, 32.460732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419319, 37.803673, 32.456234>,  <38.521126, 38.190426, 32.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419319, 37.803673, 32.456234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208219, -0.035864, 0.977425,
		-0.944386, 0.252675, 0.210452,
		-0.254519, -0.966886, 0.018742,
		38.342964, 37.513607, 32.461857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087421, 38.150768, 32.965481>,  <38.521126, 38.190426, 32.448738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087421, 38.150768, 32.965481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247154, 37.788162, 32.910683>,  <38.342995, 37.570599, 32.877804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247154, 37.788162, 32.910683>,  <38.087421, 38.150768, 32.965481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247154, 37.788162, 32.910683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149390, -0.083089, 0.985281,
		-0.904554, -0.413918, 0.102244,
		0.399330, -0.906514, -0.136994,
		38.366955, 37.516209, 32.869583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136505, 37.860901, 33.683632>,  <38.087421, 38.150768, 32.965481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136505, 37.860901, 33.683632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312820, 37.575836, 33.465340>,  <38.418610, 37.404797, 33.334366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312820, 37.575836, 33.465340>,  <38.136505, 37.860901, 33.683632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312820, 37.575836, 33.465340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354824, -0.420118, 0.835225,
		-0.824502, -0.561796, 0.067685,
		0.440790, -0.712662, -0.545727,
		38.445057, 37.362038, 33.301620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995296, 37.235409, 34.012642>,  <38.136505, 37.860901, 33.683632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995296, 37.235409, 34.012642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321514, 37.167667, 33.791298>,  <38.517242, 37.127022, 33.658489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321514, 37.167667, 33.791298>,  <37.995296, 37.235409, 34.012642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321514, 37.167667, 33.791298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458666, -0.393906, 0.796532,
		-0.352866, -0.903415, -0.243572,
		0.815543, -0.169351, -0.553362,
		38.566177, 37.116859, 33.625290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218456, 36.472034, 34.073166>,  <37.995296, 37.235409, 34.012642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218456, 36.472034, 34.073166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536121, 36.696728, 33.980423>,  <38.726719, 36.831543, 33.924778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536121, 36.696728, 33.980423>,  <38.218456, 36.472034, 34.073166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536121, 36.696728, 33.980423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441980, -0.272048, 0.854777,
		0.417082, -0.781309, -0.464326,
		0.794164, 0.561735, -0.231857,
		38.774372, 36.865250, 33.910866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805546, 36.115257, 34.324322>,  <38.218456, 36.472034, 34.073166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805546, 36.115257, 34.324322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967289, 36.476463, 34.266281>,  <39.064335, 36.693188, 34.231457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967289, 36.476463, 34.266281>,  <38.805546, 36.115257, 34.324322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967289, 36.476463, 34.266281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600518, -0.142472, 0.786816,
		0.689838, -0.405287, -0.599889,
		0.404353, 0.903020, -0.145099,
		39.088596, 36.747368, 34.222752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421021, 36.061337, 34.601612>,  <38.805546, 36.115257, 34.324322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421021, 36.061337, 34.601612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404449, 36.460823, 34.589981>,  <39.394508, 36.700516, 34.583000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404449, 36.460823, 34.589981>,  <39.421021, 36.061337, 34.601612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404449, 36.460823, 34.589981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585569, 0.047852, 0.809209,
		0.809564, 0.016493, -0.586801,
		-0.041426, 0.998718, -0.029081,
		39.392021, 36.760437, 34.581257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079941, 36.281712, 34.805405>,  <39.421021, 36.061337, 34.601612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079941, 36.281712, 34.805405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829651, 36.588680, 34.861309>,  <39.679478, 36.772861, 34.894852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829651, 36.588680, 34.861309>,  <40.079941, 36.281712, 34.805405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829651, 36.588680, 34.861309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243361, 0.021832, 0.969690,
		0.741114, 0.640766, -0.200422,
		-0.625720, 0.767426, 0.139758,
		39.641933, 36.818909, 34.903236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477779, 36.871307, 35.012733>,  <40.079941, 36.281712, 34.805405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477779, 36.871307, 35.012733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099567, 36.894585, 35.140850>,  <39.872639, 36.908550, 35.217720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099567, 36.894585, 35.140850>,  <40.477779, 36.871307, 35.012733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099567, 36.894585, 35.140850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324538, 0.091557, 0.941431,
		0.025458, 0.994098, -0.105455,
		-0.945530, 0.058191, 0.320292,
		39.815907, 36.912041, 35.236938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561527, 37.045643, 35.698639>,  <40.477779, 36.871307, 35.012733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561527, 37.045643, 35.698639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167770, 36.975422, 35.693523>,  <39.931519, 36.933289, 35.690453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167770, 36.975422, 35.693523>,  <40.561527, 37.045643, 35.698639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167770, 36.975422, 35.693523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004759, -0.046104, 0.998925,
		-0.175950, 0.983391, 0.044549,
		-0.984388, -0.175549, -0.012792,
		39.872456, 36.922756, 35.689686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272350, 37.381931, 36.253075>,  <40.561527, 37.045643, 35.698639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272350, 37.381931, 36.253075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006863, 37.099663, 36.153877>,  <39.847569, 36.930302, 36.094357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006863, 37.099663, 36.153877>,  <40.272350, 37.381931, 36.253075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006863, 37.099663, 36.153877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113288, -0.232891, 0.965882,
		-0.739354, 0.669168, 0.074630,
		-0.663718, -0.705674, -0.247998,
		39.807747, 36.887962, 36.079479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521858, 37.420712, 36.654076>,  <40.272350, 37.381931, 36.253075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521858, 37.420712, 36.654076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639359, 37.059612, 36.528378>,  <39.709858, 36.842953, 36.452961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639359, 37.059612, 36.528378>,  <39.521858, 37.420712, 36.654076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639359, 37.059612, 36.528378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183955, -0.375990, 0.908181,
		-0.938014, -0.208975, -0.276514,
		0.293753, -0.902752, -0.314242,
		39.727486, 36.788788, 36.434105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313812, 37.225643, 37.230453>,  <39.521858, 37.420712, 36.654076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313812, 37.225643, 37.230453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438614, 36.895744, 37.041798>,  <39.513496, 36.697803, 36.928604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438614, 36.895744, 37.041798>,  <39.313812, 37.225643, 37.230453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438614, 36.895744, 37.041798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095825, -0.466574, 0.879276,
		-0.945237, -0.319531, -0.066541,
		0.312003, -0.824747, -0.471642,
		39.532215, 36.648319, 36.900307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859749, 36.732780, 37.554985>,  <39.313812, 37.225643, 37.230453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859749, 36.732780, 37.554985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206226, 36.587486, 37.417717>,  <39.414112, 36.500309, 37.335354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206226, 36.587486, 37.417717>,  <38.859749, 36.732780, 37.554985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206226, 36.587486, 37.417717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200349, -0.376700, 0.904410,
		-0.457787, -0.852149, -0.253521,
		0.866194, -0.363235, -0.343175,
		39.466084, 36.478516, 37.314766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996609, 36.328632, 38.059528>,  <38.859749, 36.732780, 37.554985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996609, 36.328632, 38.059528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360123, 36.294247, 37.896206>,  <39.578232, 36.273617, 37.798214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360123, 36.294247, 37.896206>,  <38.996609, 36.328632, 38.059528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360123, 36.294247, 37.896206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312719, -0.507518, 0.802890,
		-0.276241, -0.857343, -0.434344,
		0.908789, -0.085964, -0.408305,
		39.632759, 36.268456, 37.773716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172886, 35.562561, 38.161919>,  <38.996609, 36.328632, 38.059528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172886, 35.562561, 38.161919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477699, 35.816982, 38.113354>,  <39.660587, 35.969635, 38.084213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477699, 35.816982, 38.113354>,  <39.172886, 35.562561, 38.161919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477699, 35.816982, 38.113354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371423, -0.275761, 0.886567,
		0.530420, -0.720692, -0.446383,
		0.762036, 0.636050, -0.121413,
		39.706310, 36.007797, 38.076931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804131, 35.197441, 38.343460>,  <39.172886, 35.562561, 38.161919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804131, 35.197441, 38.343460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785046, 35.592556, 38.402802>,  <39.773594, 35.829624, 38.438404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785046, 35.592556, 38.402802>,  <39.804131, 35.197441, 38.343460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785046, 35.592556, 38.402802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220940, -0.134402, 0.965982,
		0.974120, 0.078868, -0.211827,
		-0.047715, 0.987783, 0.148349,
		39.770733, 35.888889, 38.447308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435642, 35.295086, 38.574070>,  <39.804131, 35.197441, 38.343460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435642, 35.295086, 38.574070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206356, 35.600536, 38.692932>,  <40.068787, 35.783806, 38.764248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206356, 35.600536, 38.692932>,  <40.435642, 35.295086, 38.574070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206356, 35.600536, 38.692932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238075, -0.191792, 0.952122,
		0.784059, 0.616512, -0.071863,
		-0.573212, 0.763629, 0.297152,
		40.034393, 35.829624, 38.782078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947323, 35.633453, 38.980427>,  <40.435642, 35.295086, 38.574070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947323, 35.633453, 38.980427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642662, 35.854378, 39.115974>,  <40.459866, 35.986935, 39.197304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642662, 35.854378, 39.115974>,  <40.947323, 35.633453, 38.980427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642662, 35.854378, 39.115974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394010, -0.020423, 0.918879,
		0.514431, 0.833386, -0.202062,
		-0.761654, 0.552315, 0.338869,
		40.414165, 36.020073, 39.217636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068359, 36.331928, 39.255898>,  <40.947323, 35.633453, 38.980427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068359, 36.331928, 39.255898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744247, 36.193832, 39.445320>,  <40.549782, 36.110977, 39.558975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744247, 36.193832, 39.445320>,  <41.068359, 36.331928, 39.255898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744247, 36.193832, 39.445320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522449, -0.059444, 0.850596,
		-0.265507, 0.936631, 0.228534,
		-0.810280, -0.345236, 0.473559,
		40.501163, 36.090263, 39.587387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025642, 36.768211, 39.813736>,  <41.068359, 36.331928, 39.255898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025642, 36.768211, 39.813736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818367, 36.432865, 39.881416>,  <40.694000, 36.231659, 39.922024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818367, 36.432865, 39.881416>,  <41.025642, 36.768211, 39.813736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818367, 36.432865, 39.881416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555398, -0.179407, 0.812001,
		-0.650394, 0.514746, 0.558592,
		-0.518189, -0.838362, 0.169204,
		40.662910, 36.181358, 39.932178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856575, 36.820301, 40.477077>,  <41.025642, 36.768211, 39.813736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856575, 36.820301, 40.477077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818115, 36.424572, 40.433262>,  <40.795040, 36.187134, 40.406975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818115, 36.424572, 40.433262>,  <40.856575, 36.820301, 40.477077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818115, 36.424572, 40.433262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360858, -0.137208, 0.922472,
		-0.927651, 0.049172, 0.370197,
		-0.096153, -0.989321, -0.109537,
		40.789268, 36.127777, 40.400402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343620, 36.496933, 41.038780>,  <40.856575, 36.820301, 40.477077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343620, 36.496933, 41.038780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643665, 36.264790, 40.911964>,  <40.823692, 36.125504, 40.835873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643665, 36.264790, 40.911964>,  <40.343620, 36.496933, 41.038780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643665, 36.264790, 40.911964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375591, -0.020714, 0.926554,
		-0.544298, -0.814100, 0.202438,
		0.750115, -0.580355, -0.317043,
		40.868698, 36.090683, 40.816853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332355, 36.009766, 41.604462>,  <40.343620, 36.496933, 41.038780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332355, 36.009766, 41.604462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686420, 36.104801, 41.444443>,  <40.898861, 36.161823, 41.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686420, 36.104801, 41.444443>,  <40.332355, 36.009766, 41.604462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686420, 36.104801, 41.444443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379065, 0.130335, 0.916145,
		0.269811, -0.962581, 0.025304,
		0.885162, 0.237594, -0.400047,
		40.951969, 36.176079, 41.324429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899002, 35.750896, 42.000607>,  <40.332355, 36.009766, 41.604462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899002, 35.750896, 42.000607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034069, 36.055489, 41.779289>,  <41.115108, 36.238243, 41.646500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034069, 36.055489, 41.779289>,  <40.899002, 35.750896, 42.000607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034069, 36.055489, 41.779289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566237, 0.305231, 0.765644,
		0.751904, -0.571825, -0.328112,
		0.337664, 0.761479, -0.553292,
		41.135368, 36.283932, 41.613300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669380, 35.839775, 42.104530>,  <40.899002, 35.750896, 42.000607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669380, 35.839775, 42.104530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525082, 36.189960, 41.975895>,  <41.438503, 36.400070, 41.898712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525082, 36.189960, 41.975895>,  <41.669380, 35.839775, 42.104530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525082, 36.189960, 41.975895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566718, 0.479616, 0.669924,
		0.740736, 0.059423, -0.669163,
		-0.360751, 0.875464, -0.321593,
		41.416855, 36.452599, 41.879417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568245, 35.942368, 41.380806>,  <41.669380, 35.839775, 42.104530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568245, 35.942368, 41.380806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441013, 35.569878, 41.309647>,  <41.364674, 35.346382, 41.266953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441013, 35.569878, 41.309647>,  <41.568245, 35.942368, 41.380806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441013, 35.569878, 41.309647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504083, 0.325038, -0.800156,
		0.802950, -0.164833, -0.572801,
		-0.318075, -0.931225, -0.177899,
		41.345592, 35.290508, 41.256275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666695, 35.496479, 40.695721>,  <41.568245, 35.942368, 41.380806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666695, 35.496479, 40.695721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311905, 35.485081, 40.880096>,  <41.099030, 35.478241, 40.990723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311905, 35.485081, 40.880096>,  <41.666695, 35.496479, 40.695721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311905, 35.485081, 40.880096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442159, 0.340521, -0.829784,
		-0.133317, -0.939805, -0.314631,
		-0.886974, -0.028493, 0.460940,
		41.045815, 35.476532, 41.018379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251305, 35.226318, 40.245876>,  <41.666695, 35.496479, 40.695721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251305, 35.226318, 40.245876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007252, 35.401489, 40.509983>,  <40.860821, 35.506592, 40.668449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007252, 35.401489, 40.509983>,  <41.251305, 35.226318, 40.245876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007252, 35.401489, 40.509983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588385, 0.307659, -0.747763,
		-0.530606, -0.844727, 0.069959,
		-0.610132, 0.437930, 0.660270,
		40.824211, 35.532867, 40.708065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601383, 34.904362, 40.194145>,  <41.251305, 35.226318, 40.245876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601383, 34.904362, 40.194145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622719, 35.294426, 40.280136>,  <40.635521, 35.528465, 40.331730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622719, 35.294426, 40.280136>,  <40.601383, 34.904362, 40.194145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622719, 35.294426, 40.280136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657491, 0.196326, -0.727434,
		-0.751571, -0.102542, 0.651633,
		0.053340, 0.975162, 0.214973,
		40.638721, 35.586975, 40.344627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928589, 35.135574, 40.300621>,  <40.601383, 34.904362, 40.194145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928589, 35.135574, 40.300621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149723, 35.451740, 40.195084>,  <40.282402, 35.641441, 40.131760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149723, 35.451740, 40.195084>,  <39.928589, 35.135574, 40.300621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149723, 35.451740, 40.195084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680285, 0.245246, -0.690700,
		-0.481234, 0.561334, 0.673289,
		0.552835, 0.790417, -0.263847,
		40.315575, 35.688866, 40.115929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402218, 35.722263, 40.127174>,  <39.928589, 35.135574, 40.300621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402218, 35.722263, 40.127174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752312, 35.834236, 39.969391>,  <39.962368, 35.901421, 39.874722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752312, 35.834236, 39.969391>,  <39.402218, 35.722263, 40.127174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752312, 35.834236, 39.969391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468828, 0.290320, -0.834215,
		-0.119006, 0.915069, 0.385340,
		0.875236, 0.279935, -0.394460,
		40.014881, 35.918217, 39.851051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266773, 36.360443, 39.814068>,  <39.402218, 35.722263, 40.127174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266773, 36.360443, 39.814068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566051, 36.207920, 39.596882>,  <39.745617, 36.116405, 39.466572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566051, 36.207920, 39.596882>,  <39.266773, 36.360443, 39.814068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566051, 36.207920, 39.596882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453022, 0.304298, -0.837958,
		0.484740, 0.872931, 0.054935,
		0.748196, -0.381306, -0.542962,
		39.790512, 36.093529, 39.433994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481636, 36.880306, 39.295635>,  <39.266773, 36.360443, 39.814068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481636, 36.880306, 39.295635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625378, 36.553619, 39.115044>,  <39.711624, 36.357605, 39.006687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625378, 36.553619, 39.115044>,  <39.481636, 36.880306, 39.295635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625378, 36.553619, 39.115044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202009, 0.404244, -0.892064,
		0.911075, 0.411768, -0.019719,
		0.359353, -0.816721, -0.451478,
		39.733185, 36.308601, 38.979599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763340, 37.171627, 38.627445>,  <39.481636, 36.880306, 39.295635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763340, 37.171627, 38.627445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745190, 36.774818, 38.580406>,  <39.734299, 36.536732, 38.552181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745190, 36.774818, 38.580406>,  <39.763340, 37.171627, 38.627445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745190, 36.774818, 38.580406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216708, 0.124694, -0.968240,
		0.975182, -0.018447, -0.220637,
		-0.045373, -0.992024, -0.117602,
		39.731579, 36.477211, 38.545124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465366, 36.972984, 38.542416>,  <39.763340, 37.171627, 38.627445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465366, 36.972984, 38.542416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347115, 36.597809, 38.469894>,  <40.276161, 36.372704, 38.426380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347115, 36.597809, 38.469894>,  <40.465366, 36.972984, 38.542416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347115, 36.597809, 38.469894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165228, 0.237130, -0.957324,
		0.940904, -0.253060, -0.225077,
		-0.295633, -0.937939, -0.181304,
		40.258423, 36.316425, 38.415504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770004, 36.785694, 37.932148>,  <40.465366, 36.972984, 38.542416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770004, 36.785694, 37.932148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457790, 36.538467, 37.969593>,  <40.270462, 36.390133, 37.992062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457790, 36.538467, 37.969593>,  <40.770004, 36.785694, 37.932148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457790, 36.538467, 37.969593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170769, 0.066765, -0.983046,
		0.601337, -0.783286, -0.157659,
		-0.780533, -0.618065, 0.093613,
		40.223629, 36.353046, 37.997677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875820, 36.346539, 37.444740>,  <40.770004, 36.785694, 37.932148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875820, 36.346539, 37.444740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486675, 36.349232, 37.537254>,  <40.253189, 36.350849, 37.592762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486675, 36.349232, 37.537254>,  <40.875820, 36.346539, 37.444740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486675, 36.349232, 37.537254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231374, -0.021435, -0.972629,
		-0.001576, -0.999748, 0.022407,
		-0.972864, 0.006717, 0.231282,
		40.194817, 36.351254, 37.606640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607578, 35.788857, 37.020138>,  <40.875820, 36.346539, 37.444740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607578, 35.788857, 37.020138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285000, 36.017075, 37.082272>,  <40.091454, 36.154003, 37.119553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285000, 36.017075, 37.082272>,  <40.607578, 35.788857, 37.020138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285000, 36.017075, 37.082272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182150, 0.010231, -0.983217,
		-0.562557, -0.821204, 0.095674,
		-0.806444, 0.570542, 0.155338,
		40.043068, 36.188236, 37.128872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934402, 35.482292, 36.629925>,  <40.607578, 35.788857, 37.020138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934402, 35.482292, 36.629925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903660, 35.878292, 36.677242>,  <39.885216, 36.115891, 36.705631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903660, 35.878292, 36.677242>,  <39.934402, 35.482292, 36.629925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903660, 35.878292, 36.677242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268754, 0.093679, -0.958642,
		-0.960138, -0.105466, 0.258867,
		-0.076853, 0.990000, 0.118289,
		39.880604, 36.175293, 36.712730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649876, 35.624744, 35.978210>,  <39.934402, 35.482292, 36.629925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649876, 35.624744, 35.978210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654625, 35.987579, 36.146519>,  <39.657475, 36.205280, 36.247501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654625, 35.987579, 36.146519>,  <39.649876, 35.624744, 35.978210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654625, 35.987579, 36.146519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187960, 0.415319, -0.890046,
		-0.982105, -0.068522, 0.175427,
		0.011871, 0.907092, 0.420766,
		39.658188, 36.259708, 36.272747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027252, 35.906471, 35.858112>,  <39.649876, 35.624744, 35.978210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027252, 35.906471, 35.858112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275936, 36.213501, 35.920464>,  <39.425148, 36.397720, 35.957874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275936, 36.213501, 35.920464>,  <39.027252, 35.906471, 35.858112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275936, 36.213501, 35.920464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259411, 0.389575, -0.883706,
		-0.739040, 0.508973, 0.441322,
		0.621711, 0.767579, 0.155879,
		39.462448, 36.443775, 35.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700951, 36.554832, 35.794209>,  <39.027252, 35.906471, 35.858112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700951, 36.554832, 35.794209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080235, 36.676083, 35.756233>,  <39.307804, 36.748833, 35.733448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080235, 36.676083, 35.756233>,  <38.700951, 36.554832, 35.794209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080235, 36.676083, 35.756233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214670, 0.391219, -0.894910,
		-0.234130, 0.868942, 0.436030,
		0.948209, 0.303128, -0.094939,
		39.364697, 36.767021, 35.727753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532295, 37.206390, 35.437565>,  <38.700951, 36.554832, 35.794209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532295, 37.206390, 35.437565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918335, 37.112831, 35.390438>,  <39.149960, 37.056694, 35.362160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918335, 37.112831, 35.390438>,  <38.532295, 37.206390, 35.437565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918335, 37.112831, 35.390438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008922, 0.420238, -0.907370,
		0.261748, 0.876750, 0.403482,
		0.965095, -0.233903, -0.117819,
		39.207863, 37.042660, 35.355091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818218, 37.791164, 35.097504>,  <38.532295, 37.206390, 35.437565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818218, 37.791164, 35.097504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058537, 37.477325, 35.036255>,  <39.202728, 37.289021, 34.999508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058537, 37.477325, 35.036255>,  <38.818218, 37.791164, 35.097504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058537, 37.477325, 35.036255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058023, 0.233838, -0.970543,
		0.797292, 0.574217, 0.186014,
		0.600799, -0.784599, -0.153119,
		39.238777, 37.241947, 34.990318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284569, 37.986252, 34.638592>,  <38.818218, 37.791164, 35.097504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284569, 37.986252, 34.638592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309509, 37.592728, 34.571384>,  <39.324474, 37.356613, 34.531059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309509, 37.592728, 34.571384>,  <39.284569, 37.986252, 34.638592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309509, 37.592728, 34.571384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217701, 0.150889, -0.964282,
		0.974022, 0.096704, -0.204768,
		0.062353, -0.983809, -0.168021,
		39.328217, 37.297585, 34.520977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629036, 37.952187, 34.081409>,  <39.284569, 37.986252, 34.638592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629036, 37.952187, 34.081409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465622, 37.588654, 34.115158>,  <39.367573, 37.370533, 34.135406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465622, 37.588654, 34.115158>,  <39.629036, 37.952187, 34.081409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465622, 37.588654, 34.115158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379205, 0.084914, -0.921408,
		0.830245, -0.408418, -0.379326,
		-0.408530, -0.908837, 0.084375,
		39.343063, 37.316002, 34.140469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738663, 37.607731, 33.470055>,  <39.629036, 37.952187, 34.081409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738663, 37.607731, 33.470055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433537, 37.394100, 33.615864>,  <39.250462, 37.265923, 33.703350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433537, 37.394100, 33.615864>,  <39.738663, 37.607731, 33.470055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433537, 37.394100, 33.615864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379844, -0.086101, -0.921035,
		0.523292, -0.841038, -0.137188,
		-0.762814, -0.534080, 0.364520,
		39.204693, 37.233875, 33.725220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694122, 37.043095, 32.963840>,  <39.738663, 37.607731, 33.470055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694122, 37.043095, 32.963840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354137, 37.054970, 33.174240>,  <39.150146, 37.062096, 33.300480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354137, 37.054970, 33.174240>,  <39.694122, 37.043095, 32.963840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354137, 37.054970, 33.174240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517246, 0.142638, -0.843867,
		-0.100080, -0.989330, -0.105881,
		-0.849965, 0.029688, 0.526002,
		39.099148, 37.063877, 33.332039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112759, 37.169201, 32.341240>,  <39.694122, 37.043095, 32.963840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112759, 37.169201, 32.341240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109283, 36.769382, 32.352730>,  <40.107197, 36.529491, 32.359623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109283, 36.769382, 32.352730>,  <40.112759, 37.169201, 32.341240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109283, 36.769382, 32.352730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183410, 0.029835, 0.982584,
		-0.982998, 0.003269, -0.183587,
		-0.008689, -0.999549, 0.028728,
		40.106678, 36.469517, 32.361347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854786, 36.835201, 31.686316>,  <40.112759, 37.169201, 32.341240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854786, 36.835201, 31.686316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001942, 36.871616, 31.316154>,  <40.090237, 36.893467, 31.094059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001942, 36.871616, 31.316154>,  <39.854786, 36.835201, 31.686316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001942, 36.871616, 31.316154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908061, 0.179087, 0.378619,
		0.200196, -0.979612, -0.016784,
		0.367894, 0.091039, -0.925401,
		40.112309, 36.898926, 31.038534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467281, 36.504032, 31.572298>,  <39.854786, 36.835201, 31.686316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467281, 36.504032, 31.572298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475063, 36.837997, 31.352285>,  <40.479733, 37.038376, 31.220278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475063, 36.837997, 31.352285>,  <40.467281, 36.504032, 31.572298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475063, 36.837997, 31.352285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805589, 0.312738, 0.503211,
		0.592155, -0.452891, -0.666515,
		0.019455, 0.834916, -0.550033,
		40.480900, 37.088470, 31.187275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125874, 36.731167, 31.108669>,  <40.467281, 36.504032, 31.572298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125874, 36.731167, 31.108669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917603, 37.025856, 31.281244>,  <40.792641, 37.202671, 31.384789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917603, 37.025856, 31.281244>,  <41.125874, 36.731167, 31.108669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917603, 37.025856, 31.281244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839567, 0.350090, 0.415408,
		0.154999, 0.578513, -0.800811,
		-0.520675, 0.736723, 0.431436,
		40.761398, 37.246872, 31.410675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782448, 36.747986, 31.255198>,  <41.125874, 36.731167, 31.108669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782448, 36.747986, 31.255198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181515, 36.753933, 31.281822>,  <42.420956, 36.757500, 31.297798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181515, 36.753933, 31.281822>,  <41.782448, 36.747986, 31.255198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181515, 36.753933, 31.281822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025563, 0.986317, 0.162868,
		-0.063231, -0.164190, 0.984400,
		0.997671, 0.014866, 0.066563,
		42.480816, 36.758392, 31.301792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959305, 37.067978, 31.894617>,  <41.782448, 36.747986, 31.255198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959305, 37.067978, 31.894617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246483, 37.141197, 31.625978>,  <42.418789, 37.185131, 31.464796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246483, 37.141197, 31.625978>,  <41.959305, 37.067978, 31.894617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246483, 37.141197, 31.625978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119579, 0.982894, 0.140070,
		0.685747, -0.020254, 0.727558,
		0.717949, 0.183053, -0.671595,
		42.461868, 37.196114, 31.424500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066128, 37.472034, 32.580677>,  <41.959305, 37.067978, 31.894617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066128, 37.472034, 32.580677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882843, 37.666840, 32.283260>,  <41.772873, 37.783722, 32.104809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882843, 37.666840, 32.283260>,  <42.066128, 37.472034, 32.580677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882843, 37.666840, 32.283260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888791, -0.241967, 0.389233,
		0.009649, 0.839206, 0.543728,
		-0.458211, 0.487016, -0.743544,
		41.745380, 37.812946, 32.060196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614002, 37.872761, 32.886784>,  <42.066128, 37.472034, 32.580677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614002, 37.872761, 32.886784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581787, 37.474152, 32.895329>,  <42.562458, 37.234985, 32.900455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581787, 37.474152, 32.895329>,  <42.614002, 37.872761, 32.886784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581787, 37.474152, 32.895329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478438, -0.057456, -0.876240,
		0.874420, -0.060350, 0.481401,
		-0.080540, -0.996522, 0.021367,
		42.557625, 37.175194, 32.901737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264027, 37.519478, 32.771126>,  <42.614002, 37.872761, 32.886784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264027, 37.519478, 32.771126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941673, 37.350143, 32.605556>,  <42.748260, 37.248543, 32.506214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941673, 37.350143, 32.605556>,  <43.264027, 37.519478, 32.771126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941673, 37.350143, 32.605556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491479, -0.088482, -0.866383,
		0.330146, -0.901642, 0.279366,
		-0.805886, -0.423336, -0.413926,
		42.699909, 37.223145, 32.481380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438347, 36.919159, 32.504292>,  <43.264027, 37.519478, 32.771126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438347, 36.919159, 32.504292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121861, 37.051476, 32.298553>,  <42.931969, 37.130863, 32.175110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121861, 37.051476, 32.298553>,  <43.438347, 36.919159, 32.504292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121861, 37.051476, 32.298553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463868, -0.223442, -0.857263,
		-0.398500, -0.916871, 0.023349,
		-0.791217, 0.330788, -0.514349,
		42.884495, 37.150711, 32.144249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110039, 36.526958, 32.490860>,  <43.438347, 36.919159, 32.504292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110039, 36.526958, 32.490860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062511, 36.866482, 32.696930>,  <44.033997, 37.070198, 32.820572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062511, 36.866482, 32.696930>,  <44.110039, 36.526958, 32.490860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062511, 36.866482, 32.696930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906219, -0.119332, 0.405619,
		0.405771, 0.515051, -0.755031,
		-0.118815, 0.848812, 0.515171,
		44.026867, 37.121124, 32.851482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771076, 36.552578, 32.905544>,  <44.110039, 36.526958, 32.490860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771076, 36.552578, 32.905544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671116, 36.373993, 33.249226>,  <44.611141, 36.266842, 33.455433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671116, 36.373993, 33.249226>,  <44.771076, 36.552578, 32.905544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671116, 36.373993, 33.249226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961593, -0.218472, 0.166160,
		0.113528, 0.867724, 0.483908,
		-0.249901, -0.446459, 0.859199,
		44.596146, 36.240055, 33.506985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223415, 35.778687, 32.679993>,  <44.771076, 36.552578, 32.905544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223415, 35.778687, 32.679993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619106, 35.836994, 32.674667>,  <45.856522, 35.871979, 32.671474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619106, 35.836994, 32.674667>,  <45.223415, 35.778687, 32.679993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619106, 35.836994, 32.674667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108710, 0.792536, 0.600057,
		0.098018, -0.592147, 0.799847,
		0.989229, 0.145768, -0.013311,
		45.915874, 35.880726, 32.670673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570187, 35.898167, 33.370258>,  <45.223415, 35.778687, 32.679993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570187, 35.898167, 33.370258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776382, 36.095787, 33.090206>,  <45.900101, 36.214359, 32.922176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776382, 36.095787, 33.090206>,  <45.570187, 35.898167, 33.370258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776382, 36.095787, 33.090206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053199, 0.833928, 0.549303,
		0.855244, -0.245913, 0.456162,
		0.515487, 0.494056, -0.700130,
		45.931030, 36.244003, 32.880169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186199, 36.230530, 33.667988>,  <45.570187, 35.898167, 33.370258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186199, 36.230530, 33.667988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069969, 36.419514, 33.335159>,  <46.000233, 36.532906, 33.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069969, 36.419514, 33.335159>,  <46.186199, 36.230530, 33.667988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069969, 36.419514, 33.335159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065048, 0.877337, 0.475446,
		0.954640, 0.084026, -0.285661,
		-0.290570, 0.472462, -0.832075,
		45.982800, 36.561253, 33.085537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655422, 36.733490, 33.333492>,  <46.186199, 36.230530, 33.667988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655422, 36.733490, 33.333492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270786, 36.834431, 33.290310>,  <46.040005, 36.894997, 33.264400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270786, 36.834431, 33.290310>,  <46.655422, 36.733490, 33.333492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270786, 36.834431, 33.290310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100166, 0.688829, 0.717970,
		0.255549, 0.679581, -0.687651,
		-0.961593, 0.252356, -0.107959,
		45.982307, 36.910137, 33.257923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.373867, 36.587391, 33.157589>,  <46.655422, 36.733490, 33.333492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.373867, 36.587391, 33.157589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316013, 36.667965, 33.545094>,  <47.281300, 36.716309, 33.777596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316013, 36.667965, 33.545094>,  <47.373867, 36.587391, 33.157589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316013, 36.667965, 33.545094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529361, -0.811415, 0.247754,
		0.835977, 0.548660, 0.010725,
		-0.144635, 0.201439, 0.968764,
		47.272621, 36.728397, 33.835724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.943600, 36.634480, 33.644291>,  <47.373867, 36.587391, 33.157589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.943600, 36.634480, 33.644291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636959, 36.515865, 33.872108>,  <47.452972, 36.444698, 34.008801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636959, 36.515865, 33.872108>,  <47.943600, 36.634480, 33.644291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636959, 36.515865, 33.872108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531560, -0.790656, 0.303821,
		0.360221, 0.535658, 0.763748,
		-0.766606, -0.296536, 0.569546,
		47.406979, 36.426903, 34.042973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.295155, 36.244747, 34.205078>,  <47.943600, 36.634480, 33.644291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.295155, 36.244747, 34.205078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.910023, 36.137451, 34.217728>,  <47.678944, 36.073074, 34.225319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.910023, 36.137451, 34.217728>,  <48.295155, 36.244747, 34.205078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.910023, 36.137451, 34.217728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253867, -0.858766, 0.445054,
		-0.092220, 0.436542, 0.894945,
		-0.962833, -0.268240, 0.031628,
		47.621174, 36.056980, 34.227215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054325, 35.984802, 34.928669>,  <48.295155, 36.244747, 34.205078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054325, 35.984802, 34.928669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842529, 35.811729, 34.636799>,  <47.715450, 35.707886, 34.461678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842529, 35.811729, 34.636799>,  <48.054325, 35.984802, 34.928669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842529, 35.811729, 34.636799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363821, -0.892850, 0.265432,
		-0.766338, -0.124927, 0.630175,
		-0.529492, -0.432681, -0.729675,
		47.683681, 35.681927, 34.417896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.962139, 35.309898, 35.249153>,  <48.054325, 35.984802, 34.928669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.962139, 35.309898, 35.249153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793636, 35.236626, 34.893852>,  <47.692535, 35.192661, 34.680672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793636, 35.236626, 34.893852>,  <47.962139, 35.309898, 35.249153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.793636, 35.236626, 34.893852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294196, -0.954030, 0.057227,
		-0.857901, -0.237212, 0.455782,
		-0.421255, -0.183185, -0.888250,
		47.667259, 35.181671, 34.627377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.798477, 33.380909, 24.373873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417786, 33.484680, 24.439487>,  <36.189369, 33.546944, 24.478857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417786, 33.484680, 24.439487>,  <36.798477, 33.380909, 24.373873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417786, 33.484680, 24.439487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220617, 0.206625, 0.953223,
		0.213398, 0.943400, -0.253886,
		-0.951730, 0.259428, 0.164037,
		36.132267, 33.562508, 24.488699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753063, 34.026333, 24.642887>,  <36.798477, 33.380909, 24.373873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753063, 34.026333, 24.642887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.407440, 33.882633, 24.783941>,  <36.200066, 33.796413, 24.868574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.407440, 33.882633, 24.783941>,  <36.753063, 34.026333, 24.642887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407440, 33.882633, 24.783941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282418, 0.233940, 0.930329,
		-0.416714, 0.903445, -0.100679,
		-0.864054, -0.359248, 0.352635,
		36.148224, 33.774860, 24.889732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565441, 34.431881, 25.235552>,  <36.753063, 34.026333, 24.642887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565441, 34.431881, 25.235552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349281, 34.098457, 25.281425>,  <36.219585, 33.898403, 25.308950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349281, 34.098457, 25.281425>,  <36.565441, 34.431881, 25.235552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349281, 34.098457, 25.281425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237742, -0.020521, 0.971112,
		-0.807122, 0.552054, 0.209260,
		-0.540401, -0.833556, 0.114683,
		36.187160, 33.848392, 25.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014038, 34.572174, 25.769316>,  <36.565441, 34.431881, 25.235552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014038, 34.572174, 25.769316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084377, 34.178711, 25.753834>,  <36.126579, 33.942635, 25.744545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084377, 34.178711, 25.753834>,  <36.014038, 34.572174, 25.769316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084377, 34.178711, 25.753834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153920, -0.011359, 0.988018,
		-0.972310, -0.179697, 0.149407,
		0.175847, -0.983656, -0.038703,
		36.137131, 33.883614, 25.742224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637119, 34.293484, 26.351316>,  <36.014038, 34.572174, 25.769316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637119, 34.293484, 26.351316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842205, 33.956310, 26.286098>,  <35.965256, 33.754005, 26.246967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842205, 33.956310, 26.286098>,  <35.637119, 34.293484, 26.351316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842205, 33.956310, 26.286098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068988, -0.148841, 0.986452,
		-0.855781, -0.517019, -0.018161,
		0.512717, -0.842934, -0.163043,
		35.996021, 33.703430, 26.237185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311722, 33.749321, 26.707050>,  <35.637119, 34.293484, 26.351316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311722, 33.749321, 26.707050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692089, 33.638817, 26.651276>,  <35.920307, 33.572514, 26.617811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692089, 33.638817, 26.651276>,  <35.311722, 33.749321, 26.707050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692089, 33.638817, 26.651276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075669, -0.229331, 0.970403,
		-0.300062, -0.933320, -0.197169,
		0.950914, -0.276261, -0.139437,
		35.977364, 33.555939, 26.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361359, 33.134315, 26.957209>,  <35.311722, 33.749321, 26.707050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361359, 33.134315, 26.957209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734024, 33.279396, 26.965660>,  <35.957623, 33.366444, 26.970730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734024, 33.279396, 26.965660>,  <35.361359, 33.134315, 26.957209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734024, 33.279396, 26.965660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020977, -0.111754, 0.993514,
		0.362708, -0.925181, -0.111726,
		0.931666, 0.362700, 0.021127,
		36.013523, 33.388206, 26.971998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663624, 32.734867, 27.475563>,  <35.361359, 33.134315, 26.957209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663624, 32.734867, 27.475563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910244, 33.047993, 27.441961>,  <36.058216, 33.235870, 27.421801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910244, 33.047993, 27.441961>,  <35.663624, 32.734867, 27.475563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910244, 33.047993, 27.441961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363156, -0.188097, 0.912544,
		0.698556, -0.593139, -0.400257,
		0.616553, 0.782819, -0.084006,
		36.095211, 33.282837, 27.416759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228237, 32.577328, 27.926201>,  <35.663624, 32.734867, 27.475563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228237, 32.577328, 27.926201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259609, 32.973263, 27.878744>,  <36.278431, 33.210823, 27.850269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259609, 32.973263, 27.878744>,  <36.228237, 32.577328, 27.926201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259609, 32.973263, 27.878744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186212, 0.102370, 0.977162,
		0.979374, -0.098730, -0.176290,
		0.078428, 0.989835, -0.118643,
		36.283138, 33.270214, 27.843151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858482, 32.771606, 28.196644>,  <36.228237, 32.577328, 27.926201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858482, 32.771606, 28.196644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626137, 33.096893, 28.210920>,  <36.486729, 33.292065, 28.219486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626137, 33.096893, 28.210920>,  <36.858482, 32.771606, 28.196644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626137, 33.096893, 28.210920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239754, 0.129021, 0.962222,
		0.777890, 0.567480, -0.269916,
		-0.580866, 0.813216, 0.035691,
		36.451878, 33.340858, 28.221628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198246, 33.227551, 28.607746>,  <36.858482, 32.771606, 28.196644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198246, 33.227551, 28.607746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833260, 33.390411, 28.623903>,  <36.614269, 33.488129, 28.633598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833260, 33.390411, 28.623903>,  <37.198246, 33.227551, 28.607746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833260, 33.390411, 28.623903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204218, 0.367659, 0.907261,
		0.354544, 0.836093, -0.418624,
		-0.912466, 0.407155, 0.040394,
		36.559521, 33.512558, 28.636021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262192, 33.931789, 28.940607>,  <37.198246, 33.227551, 28.607746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262192, 33.931789, 28.940607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884369, 33.811722, 28.993826>,  <36.657673, 33.739681, 29.025757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884369, 33.811722, 28.993826>,  <37.262192, 33.931789, 28.940607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884369, 33.811722, 28.993826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037011, 0.305302, 0.951536,
		-0.326242, 0.903709, -0.277267,
		-0.944562, -0.300169, 0.133049,
		36.601002, 33.721672, 29.033741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969406, 34.459656, 29.330124>,  <37.262192, 33.931789, 28.940607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969406, 34.459656, 29.330124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706352, 34.160355, 29.365095>,  <36.548519, 33.980774, 29.386078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706352, 34.160355, 29.365095>,  <36.969406, 34.459656, 29.330124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706352, 34.160355, 29.365095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209985, 0.293525, 0.932604,
		-0.723482, 0.594952, -0.350152,
		-0.657632, -0.748249, 0.087430,
		36.509064, 33.935879, 29.391323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286297, 34.667263, 29.670752>,  <36.969406, 34.459656, 29.330124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286297, 34.667263, 29.670752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288445, 34.272163, 29.733131>,  <36.289734, 34.035103, 29.770559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288445, 34.272163, 29.733131>,  <36.286297, 34.667263, 29.670752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288445, 34.272163, 29.733131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274920, 0.148484, 0.949932,
		-0.961452, -0.047978, -0.270755,
		0.005373, -0.987750, 0.155951,
		36.290058, 33.975838, 29.779917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717392, 34.573944, 30.116236>,  <36.286297, 34.667263, 29.670752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717392, 34.573944, 30.116236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954971, 34.255024, 30.159212>,  <36.097519, 34.063671, 30.184998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954971, 34.255024, 30.159212>,  <35.717392, 34.573944, 30.116236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954971, 34.255024, 30.159212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029217, 0.112084, 0.993269,
		-0.803973, -0.593089, 0.043277,
		0.593948, -0.797297, 0.107441,
		36.133156, 34.015835, 30.191444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470692, 34.287048, 30.697186>,  <35.717392, 34.573944, 30.116236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470692, 34.287048, 30.697186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842937, 34.141388, 30.682447>,  <36.066284, 34.053993, 30.673605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842937, 34.141388, 30.682447>,  <35.470692, 34.287048, 30.697186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842937, 34.141388, 30.682447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086693, 0.121507, 0.988797,
		-0.355592, -0.923381, 0.144644,
		0.930612, -0.364148, -0.036844,
		36.122120, 34.032143, 30.671394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502201, 33.838657, 31.291740>,  <35.470692, 34.287048, 30.697186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502201, 33.838657, 31.291740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869556, 33.920567, 31.156313>,  <36.089970, 33.969711, 31.075056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869556, 33.920567, 31.156313>,  <35.502201, 33.838657, 31.291740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869556, 33.920567, 31.156313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345515, 0.001943, 0.938411,
		0.192815, -0.978808, -0.068966,
		0.918391, 0.204769, -0.338567,
		36.145073, 33.981998, 31.054743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994209, 33.405319, 31.680151>,  <35.502201, 33.838657, 31.291740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994209, 33.405319, 31.680151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244152, 33.699284, 31.574730>,  <36.394119, 33.875660, 31.511477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244152, 33.699284, 31.574730>,  <35.994209, 33.405319, 31.680151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244152, 33.699284, 31.574730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246827, 0.134305, 0.959708,
		0.740692, -0.664736, -0.097473,
		0.624861, 0.734907, -0.263554,
		36.431610, 33.919754, 31.495665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502613, 33.351700, 32.118343>,  <35.994209, 33.405319, 31.680151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502613, 33.351700, 32.118343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535831, 33.725906, 31.980993>,  <36.555763, 33.950432, 31.898582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535831, 33.725906, 31.980993>,  <36.502613, 33.351700, 32.118343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535831, 33.725906, 31.980993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144841, 0.329574, 0.932953,
		0.985963, -0.127216, -0.108131,
		0.083049, 0.935520, -0.343374,
		36.560745, 34.006561, 31.877981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096695, 33.543728, 32.344746>,  <36.502613, 33.351700, 32.118343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096695, 33.543728, 32.344746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904804, 33.883095, 32.255253>,  <36.789669, 34.086716, 32.201557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904804, 33.883095, 32.255253>,  <37.096695, 33.543728, 32.344746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904804, 33.883095, 32.255253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275076, 0.387558, 0.879848,
		0.833183, 0.360545, -0.419300,
		-0.479728, 0.848414, -0.223729,
		36.760887, 34.137619, 32.188133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594463, 34.057716, 32.578648>,  <37.096695, 33.543728, 32.344746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594463, 34.057716, 32.578648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234879, 34.231823, 32.559036>,  <37.019127, 34.336288, 32.547268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234879, 34.231823, 32.559036>,  <37.594463, 34.057716, 32.578648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234879, 34.231823, 32.559036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142539, 0.396542, 0.906883,
		0.414177, 0.808269, -0.418520,
		-0.898966, 0.435265, -0.049028,
		36.965187, 34.362404, 32.544327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690620, 34.753899, 32.734615>,  <37.594463, 34.057716, 32.578648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690620, 34.753899, 32.734615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.297310, 34.717537, 32.797726>,  <37.061321, 34.695721, 32.835594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.297310, 34.717537, 32.797726>,  <37.690620, 34.753899, 32.734615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297310, 34.717537, 32.797726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106798, 0.413898, 0.904037,
		-0.147488, 0.905773, -0.397269,
		-0.983281, -0.090907, 0.157780,
		37.002327, 34.690266, 32.845058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217266, 34.478508, 32.334877>,  <37.690620, 34.753899, 32.734615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217266, 34.478508, 32.334877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589199, 34.616627, 32.385769>,  <38.812359, 34.699497, 32.416306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589199, 34.616627, 32.385769>,  <38.217266, 34.478508, 32.334877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589199, 34.616627, 32.385769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047282, 0.230785, -0.971855,
		-0.364940, 0.909676, 0.198264,
		0.929830, 0.345295, 0.127234,
		38.868149, 34.720215, 32.423939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238724, 35.249001, 32.164017>,  <38.217266, 34.478508, 32.334877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238724, 35.249001, 32.164017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607563, 35.100395, 32.120724>,  <38.828865, 35.011230, 32.094746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607563, 35.100395, 32.120724>,  <38.238724, 35.249001, 32.164017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607563, 35.100395, 32.120724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066446, 0.427569, -0.901537,
		0.381210, 0.824114, 0.418946,
		0.922098, -0.371512, -0.108235,
		38.884193, 34.988941, 32.088253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477875, 35.536064, 31.484688>,  <38.238724, 35.249001, 32.164017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477875, 35.536064, 31.484688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801430, 35.311172, 31.553505>,  <38.995564, 35.176239, 31.594795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801430, 35.311172, 31.553505>,  <38.477875, 35.536064, 31.484688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801430, 35.311172, 31.553505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215595, 0.011392, -0.976416,
		0.547007, 0.826905, 0.130428,
		0.808890, -0.562226, 0.172045,
		39.044098, 35.142506, 31.605118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104500, 35.840149, 31.042885>,  <38.477875, 35.536064, 31.484688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104500, 35.840149, 31.042885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209133, 35.469017, 31.149240>,  <39.271915, 35.246338, 31.213053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209133, 35.469017, 31.149240>,  <39.104500, 35.840149, 31.042885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209133, 35.469017, 31.149240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343028, -0.168123, -0.924157,
		0.902166, 0.332955, 0.274294,
		0.261588, -0.927834, 0.265888,
		39.287609, 35.190666, 31.229008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818222, 35.790665, 30.930544>,  <39.104500, 35.840149, 31.042885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818222, 35.790665, 30.930544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681484, 35.414883, 30.921024>,  <39.599442, 35.189415, 30.915312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681484, 35.414883, 30.921024>,  <39.818222, 35.790665, 30.930544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681484, 35.414883, 30.921024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493936, -0.158071, -0.855010,
		0.799481, -0.304037, 0.518066,
		-0.341846, -0.939455, -0.023800,
		39.578930, 35.133045, 30.913885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282875, 35.402340, 30.632654>,  <39.818222, 35.790665, 30.930544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282875, 35.402340, 30.632654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985710, 35.137196, 30.595366>,  <39.807411, 34.978107, 30.572992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985710, 35.137196, 30.595366>,  <40.282875, 35.402340, 30.632654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985710, 35.137196, 30.595366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349279, -0.265069, -0.898745,
		0.571035, -0.700251, 0.428448,
		-0.742915, -0.662863, -0.093219,
		39.762836, 34.938335, 30.567400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606266, 34.910275, 30.170954>,  <40.282875, 35.402340, 30.632654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606266, 34.910275, 30.170954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214287, 34.832523, 30.153461>,  <39.979099, 34.785873, 30.142965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214287, 34.832523, 30.153461>,  <40.606266, 34.910275, 30.170954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214287, 34.832523, 30.153461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127840, -0.445095, -0.886311,
		0.152815, -0.874132, 0.461021,
		-0.979951, -0.194379, -0.043732,
		39.920300, 34.774208, 30.140343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517876, 34.119740, 30.070803>,  <40.606266, 34.910275, 30.170954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517876, 34.119740, 30.070803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209419, 34.328171, 29.924480>,  <40.024345, 34.453232, 29.836687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209419, 34.328171, 29.924480>,  <40.517876, 34.119740, 30.070803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209419, 34.328171, 29.924480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177574, -0.375731, -0.909557,
		-0.611399, -0.766355, 0.197212,
		-0.771142, 0.521082, -0.365806,
		39.978077, 34.484497, 29.814739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101097, 33.725822, 29.582031>,  <40.517876, 34.119740, 30.070803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101097, 33.725822, 29.582031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001953, 34.098854, 29.477070>,  <39.942467, 34.322674, 29.414093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001953, 34.098854, 29.477070>,  <40.101097, 33.725822, 29.582031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001953, 34.098854, 29.477070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174262, -0.309355, -0.934844,
		-0.952995, -0.185982, 0.239190,
		-0.247859, 0.932582, -0.262404,
		39.927597, 34.378628, 29.398348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503387, 33.667305, 29.175438>,  <40.101097, 33.725822, 29.582031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503387, 33.667305, 29.175438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634003, 34.034554, 29.085611>,  <39.712372, 34.254902, 29.031715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634003, 34.034554, 29.085611>,  <39.503387, 33.667305, 29.175438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634003, 34.034554, 29.085611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100153, -0.202641, -0.974118,
		-0.939862, 0.340581, 0.025782,
		0.326542, 0.918118, -0.224565,
		39.731964, 34.309990, 29.018242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992798, 33.881882, 28.775301>,  <39.503387, 33.667305, 29.175438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992798, 33.881882, 28.775301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.309410, 34.112083, 28.693054>,  <39.499378, 34.250202, 28.643705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.309410, 34.112083, 28.693054>,  <38.992798, 33.881882, 28.775301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309410, 34.112083, 28.693054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243452, -0.011670, -0.969843,
		-0.560544, 0.817718, 0.130870,
		0.791531, 0.575500, -0.205616,
		39.546871, 34.284733, 28.631369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786938, 34.434952, 28.446270>,  <38.992798, 33.881882, 28.775301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786938, 34.434952, 28.446270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168682, 34.374226, 28.343393>,  <39.397728, 34.337788, 28.281668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168682, 34.374226, 28.343393>,  <38.786938, 34.434952, 28.446270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168682, 34.374226, 28.343393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250749, 0.060479, -0.966161,
		0.162236, 0.986556, 0.019651,
		0.954361, -0.151818, -0.257190,
		39.454990, 34.328682, 28.266235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095619, 35.062691, 28.030830>,  <38.786938, 34.434952, 28.446270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095619, 35.062691, 28.030830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264359, 34.705082, 27.970484>,  <39.365601, 34.490517, 27.934277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264359, 34.705082, 27.970484>,  <39.095619, 35.062691, 28.030830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264359, 34.705082, 27.970484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208040, 0.066511, -0.975856,
		0.882475, 0.443051, -0.157936,
		0.421850, -0.894026, -0.150867,
		39.390915, 34.436874, 27.925224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658577, 35.145916, 27.483559>,  <39.095619, 35.062691, 28.030830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658577, 35.145916, 27.483559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481140, 34.787586, 27.494352>,  <39.374680, 34.572590, 27.500828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481140, 34.787586, 27.494352>,  <39.658577, 35.145916, 27.483559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481140, 34.787586, 27.494352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281091, 0.110474, -0.953301,
		0.851010, -0.430457, -0.300813,
		-0.443587, -0.895825, 0.026984,
		39.348064, 34.518837, 27.502447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916309, 34.868191, 26.863140>,  <39.658577, 35.145916, 27.483559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916309, 34.868191, 26.863140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.595543, 34.651505, 26.963911>,  <39.403084, 34.521492, 27.024374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.595543, 34.651505, 26.963911>,  <39.916309, 34.868191, 26.863140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595543, 34.651505, 26.963911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297570, -0.003480, -0.954694,
		0.518052, -0.840553, -0.158408,
		-0.801919, -0.541718, 0.251926,
		39.354969, 34.488991, 27.039490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884682, 34.235146, 26.395054>,  <39.916309, 34.868191, 26.863140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884682, 34.235146, 26.395054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507961, 34.264858, 26.526197>,  <39.281929, 34.282684, 26.604883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507961, 34.264858, 26.526197>,  <39.884682, 34.235146, 26.395054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507961, 34.264858, 26.526197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329841, -0.015894, -0.943903,
		-0.064904, -0.997111, 0.039470,
		-0.941803, 0.074282, 0.327856,
		39.225422, 34.287140, 26.624554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564415, 33.775322, 26.064516>,  <39.884682, 34.235146, 26.395054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564415, 33.775322, 26.064516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.281540, 34.029552, 26.188404>,  <39.111813, 34.182091, 26.262737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.281540, 34.029552, 26.188404>,  <39.564415, 33.775322, 26.064516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281540, 34.029552, 26.188404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345281, 0.071809, -0.935748,
		-0.616979, -0.768692, 0.168670,
		-0.707190, 0.635576, 0.309719,
		39.069382, 34.220226, 26.281321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891129, 33.445190, 25.901142>,  <39.564415, 33.775322, 26.064516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891129, 33.445190, 25.901142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809097, 33.832607, 25.957520>,  <38.759880, 34.065060, 25.991346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809097, 33.832607, 25.957520>,  <38.891129, 33.445190, 25.901142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809097, 33.832607, 25.957520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344532, 0.063349, -0.936635,
		-0.916101, -0.240644, 0.320703,
		-0.205079, 0.968544, 0.140943,
		38.747574, 34.123169, 25.999802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.165581, 33.400631, 25.716543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.292751, 33.779766, 25.707314>,  <38.369053, 34.007248, 25.701777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.292751, 33.779766, 25.707314>,  <38.165581, 33.400631, 25.716543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292751, 33.779766, 25.707314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414470, 0.117055, -0.902504,
		-0.852723, 0.296493, 0.430064,
		0.317927, 0.947834, -0.023072,
		38.388130, 34.064117, 25.700392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556572, 33.916199, 25.622057>,  <38.165581, 33.400631, 25.716543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556572, 33.916199, 25.622057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892948, 34.083645, 25.484894>,  <38.094772, 34.184113, 25.402596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892948, 34.083645, 25.484894>,  <37.556572, 33.916199, 25.622057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892948, 34.083645, 25.484894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459146, 0.216634, -0.861542,
		-0.286367, 0.881949, 0.374380,
		0.840939, 0.418612, -0.342907,
		38.145229, 34.209229, 25.382021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285995, 34.435883, 25.225021>,  <37.556572, 33.916199, 25.622057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285995, 34.435883, 25.225021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665897, 34.430378, 25.099945>,  <37.893837, 34.427074, 25.024900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665897, 34.430378, 25.099945>,  <37.285995, 34.435883, 25.225021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665897, 34.430378, 25.099945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301726, 0.225384, -0.926371,
		0.083221, 0.974173, 0.209908,
		0.949756, -0.013759, -0.312690,
		37.950825, 34.426250, 25.006138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366772, 34.994980, 24.743515>,  <37.285995, 34.435883, 25.225021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366772, 34.994980, 24.743515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689018, 34.766171, 24.681829>,  <37.882366, 34.628887, 24.644817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689018, 34.766171, 24.681829>,  <37.366772, 34.994980, 24.743515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689018, 34.766171, 24.681829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027429, 0.224011, -0.974200,
		0.591807, 0.789059, 0.164777,
		0.805613, -0.572019, -0.154214,
		37.930702, 34.594566, 24.635565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766792, 35.321598, 24.218357>,  <37.366772, 34.994980, 24.743515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766792, 35.321598, 24.218357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913296, 34.949409, 24.221796>,  <38.001198, 34.726097, 24.223860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913296, 34.949409, 24.221796>,  <37.766792, 35.321598, 24.218357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913296, 34.949409, 24.221796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207423, 0.072633, -0.975551,
		0.907101, 0.359085, 0.219604,
		0.366256, -0.930474, 0.008597,
		38.023174, 34.670269, 24.224375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434711, 35.352230, 23.806833>,  <37.766792, 35.321598, 24.218357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434711, 35.352230, 23.806833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.330574, 34.966034, 23.809729>,  <38.268089, 34.734318, 23.811466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.330574, 34.966034, 23.809729>,  <38.434711, 35.352230, 23.806833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330574, 34.966034, 23.809729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149896, -0.047823, -0.987545,
		0.953809, -0.256018, 0.157173,
		-0.260346, -0.965488, 0.007238,
		38.252472, 34.676388, 23.811899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853256, 35.024460, 23.444330>,  <38.434711, 35.352230, 23.806833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853256, 35.024460, 23.444330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.540100, 34.775654, 23.449617>,  <38.352207, 34.626369, 23.452789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.540100, 34.775654, 23.449617>,  <38.853256, 35.024460, 23.444330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540100, 34.775654, 23.449617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207132, -0.280618, -0.937203,
		0.586666, -0.730991, 0.348533,
		-0.782892, -0.622018, 0.013217,
		38.305233, 34.589050, 23.453583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945496, 34.826469, 22.896257>,  <38.853256, 35.024460, 23.444330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945496, 34.826469, 22.896257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589909, 34.650970, 22.948761>,  <38.376556, 34.545670, 22.980263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589909, 34.650970, 22.948761>,  <38.945496, 34.826469, 22.896257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589909, 34.650970, 22.948761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057724, -0.176982, -0.982520,
		0.454312, -0.881008, 0.132005,
		-0.888970, -0.438750, 0.131261,
		38.323215, 34.519344, 22.988140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959606, 34.155067, 22.527584>,  <38.945496, 34.826469, 22.896257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959606, 34.155067, 22.527584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570854, 34.246826, 22.548813>,  <38.337601, 34.301880, 22.561550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570854, 34.246826, 22.548813>,  <38.959606, 34.155067, 22.527584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570854, 34.246826, 22.548813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107561, -0.232042, -0.966740,
		-0.209438, -0.945272, 0.250191,
		-0.971888, 0.229383, 0.053076,
		38.279289, 34.315647, 22.564735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615421, 33.622391, 22.303024>,  <38.959606, 34.155067, 22.527584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615421, 33.622391, 22.303024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356384, 33.922092, 22.247545>,  <38.200962, 34.101913, 22.214258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356384, 33.922092, 22.247545>,  <38.615421, 33.622391, 22.303024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356384, 33.922092, 22.247545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101056, -0.264867, -0.958975,
		-0.755253, -0.607012, 0.247243,
		-0.647596, 0.749254, -0.138699,
		38.162106, 34.146870, 22.205935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955536, 33.388706, 22.016172>,  <38.615421, 33.622391, 22.303024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955536, 33.388706, 22.016172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968529, 33.776058, 21.917236>,  <37.976326, 34.008469, 21.857874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968529, 33.776058, 21.917236>,  <37.955536, 33.388706, 22.016172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968529, 33.776058, 21.917236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140482, -0.240593, -0.960406,
		-0.989550, 0.065944, 0.128226,
		0.032483, 0.968383, -0.247343,
		37.978275, 34.066574, 21.843033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321217, 33.548317, 21.673246>,  <37.955536, 33.388706, 22.016172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321217, 33.548317, 21.673246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560425, 33.856594, 21.585238>,  <37.703949, 34.041561, 21.532433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560425, 33.856594, 21.585238>,  <37.321217, 33.548317, 21.673246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560425, 33.856594, 21.585238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248332, -0.082836, -0.965127,
		-0.762041, 0.631801, 0.141850,
		0.598018, 0.770692, -0.220021,
		37.739830, 34.087803, 21.519232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889591, 33.960728, 21.241377>,  <37.321217, 33.548317, 21.673246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889591, 33.960728, 21.241377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270870, 34.054665, 21.165201>,  <37.499638, 34.111027, 21.119495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270870, 34.054665, 21.165201>,  <36.889591, 33.960728, 21.241377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270870, 34.054665, 21.165201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205436, 0.040900, -0.977816,
		-0.221844, 0.971172, 0.087231,
		0.953195, 0.234843, -0.190440,
		37.556828, 34.125118, 21.108068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719238, 34.389145, 20.707825>,  <36.889591, 33.960728, 21.241377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719238, 34.389145, 20.707825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112587, 34.320213, 20.684889>,  <37.348595, 34.278854, 20.671127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112587, 34.320213, 20.684889>,  <36.719238, 34.389145, 20.707825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112587, 34.320213, 20.684889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048796, 0.053413, -0.997379,
		0.174942, 0.983590, 0.044115,
		0.983369, -0.172331, -0.057339,
		37.407597, 34.268513, 20.667686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999763, 34.972992, 20.405100>,  <36.719238, 34.389145, 20.707825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999763, 34.972992, 20.405100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260002, 34.674576, 20.348333>,  <37.416145, 34.495525, 20.314274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260002, 34.674576, 20.348333>,  <36.999763, 34.972992, 20.405100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260002, 34.674576, 20.348333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009862, 0.195155, -0.980723,
		0.759358, 0.636657, 0.134325,
		0.650599, -0.746044, -0.141914,
		37.455181, 34.450764, 20.305759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586357, 35.307636, 20.029940>,  <36.999763, 34.972992, 20.405100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586357, 35.307636, 20.029940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598583, 34.909790, 19.990335>,  <37.605919, 34.671082, 19.966572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598583, 34.909790, 19.990335>,  <37.586357, 35.307636, 20.029940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598583, 34.909790, 19.990335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124891, 0.102082, -0.986905,
		0.991700, 0.017800, 0.127339,
		0.030566, -0.994617, -0.099012,
		37.607754, 34.611404, 19.960632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013180, 35.238914, 19.378433>,  <37.586357, 35.307636, 20.029940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013180, 35.238914, 19.378433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864876, 34.868038, 19.399788>,  <37.775894, 34.645512, 19.412601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864876, 34.868038, 19.399788>,  <38.013180, 35.238914, 19.378433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864876, 34.868038, 19.399788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048621, -0.076785, -0.995862,
		0.927456, -0.366628, 0.073549,
		-0.370758, -0.927193, 0.053389,
		37.753647, 34.589882, 19.415804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460152, 34.784218, 18.992596>,  <38.013180, 35.238914, 19.378433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460152, 34.784218, 18.992596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105034, 34.602859, 19.024227>,  <37.891964, 34.494045, 19.043207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105034, 34.602859, 19.024227>,  <38.460152, 34.784218, 18.992596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105034, 34.602859, 19.024227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080487, -0.016226, -0.996624,
		0.453144, -0.891164, -0.022087,
		-0.887796, -0.453391, 0.079080,
		37.838696, 34.466843, 19.047951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506702, 34.227871, 18.494341>,  <38.460152, 34.784218, 18.992596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506702, 34.227871, 18.494341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114731, 34.262669, 18.566078>,  <37.879547, 34.283546, 18.609121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114731, 34.262669, 18.566078>,  <38.506702, 34.227871, 18.494341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114731, 34.262669, 18.566078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184762, -0.058767, -0.981025,
		-0.074826, -0.994472, 0.073665,
		-0.979931, 0.087016, 0.179344,
		37.820751, 34.288769, 18.619883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181786, 33.766407, 18.133127>,  <38.506702, 34.227871, 18.494341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181786, 33.766407, 18.133127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872879, 34.010265, 18.204611>,  <37.687534, 34.156582, 18.247501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872879, 34.010265, 18.204611>,  <38.181786, 33.766407, 18.133127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872879, 34.010265, 18.204611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268496, -0.058257, -0.961518,
		-0.575776, -0.790529, 0.208678,
		-0.772264, 0.609647, 0.178710,
		37.641201, 34.193161, 18.258224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567619, 33.434406, 17.745556>,  <38.181786, 33.766407, 18.133127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567619, 33.434406, 17.745556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508873, 33.827465, 17.790880>,  <37.473625, 34.063301, 17.818075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508873, 33.827465, 17.790880>,  <37.567619, 33.434406, 17.745556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508873, 33.827465, 17.790880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167995, 0.088113, -0.981842,
		-0.974787, -0.163233, 0.152139,
		-0.146863, 0.982645, 0.113313,
		37.464813, 34.122257, 17.824875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021053, 33.474888, 17.322783>,  <37.567619, 33.434406, 17.745556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021053, 33.474888, 17.322783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152657, 33.849468, 17.371452>,  <37.231617, 34.074219, 17.400654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152657, 33.849468, 17.371452>,  <37.021053, 33.474888, 17.322783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152657, 33.849468, 17.371452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105874, 0.164617, -0.980659,
		-0.938373, 0.309763, 0.153307,
		0.329009, 0.936455, 0.121677,
		37.251358, 34.130405, 17.407955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559341, 33.975880, 16.925999>,  <37.021053, 33.474888, 17.322783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559341, 33.975880, 16.925999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943031, 34.068768, 16.990450>,  <37.173244, 34.124500, 17.029121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943031, 34.068768, 16.990450>,  <36.559341, 33.975880, 16.925999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943031, 34.068768, 16.990450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121964, 0.174200, -0.977128,
		-0.254976, 0.956937, 0.138774,
		0.959225, 0.232219, 0.161129,
		37.230797, 34.138432, 17.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818424, 33.737064, 17.014572>,  <36.559341, 33.975880, 16.925999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818424, 33.737064, 17.014572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483604, 33.890194, 16.858219>,  <35.282711, 33.982071, 16.764408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483604, 33.890194, 16.858219>,  <35.818424, 33.737064, 17.014572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483604, 33.890194, 16.858219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187260, 0.470824, 0.862125,
		0.514079, 0.794840, -0.322416,
		-0.837052, 0.382824, -0.390882,
		35.232491, 34.005043, 16.740955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826134, 34.483624, 17.058542>,  <35.818424, 33.737064, 17.014572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826134, 34.483624, 17.058542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445290, 34.362003, 17.045660>,  <35.216782, 34.289032, 17.037931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445290, 34.362003, 17.045660>,  <35.826134, 34.483624, 17.058542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445290, 34.362003, 17.045660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232026, 0.649930, 0.723709,
		-0.199110, 0.696525, -0.689353,
		-0.952113, -0.304046, -0.032204,
		35.159657, 34.270790, 17.035999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489910, 35.186073, 17.183067>,  <35.826134, 34.483624, 17.058542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489910, 35.186073, 17.183067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254894, 34.878021, 17.282423>,  <35.113884, 34.693192, 17.342035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254894, 34.878021, 17.282423>,  <35.489910, 35.186073, 17.183067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254894, 34.878021, 17.282423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245517, 0.462145, 0.852140,
		-0.771049, 0.439684, -0.460609,
		-0.587541, -0.770130, 0.248387,
		35.078632, 34.646984, 17.356939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984283, 35.548260, 17.507160>,  <35.489910, 35.186073, 17.183067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984283, 35.548260, 17.507160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925877, 35.165508, 17.607611>,  <34.890831, 34.935856, 17.667881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925877, 35.165508, 17.607611>,  <34.984283, 35.548260, 17.507160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925877, 35.165508, 17.607611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329337, 0.286386, 0.899733,
		-0.932854, 0.048671, -0.356953,
		-0.146017, -0.956877, 0.251127,
		34.882072, 34.878445, 17.682949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340202, 35.551414, 17.903969>,  <34.984283, 35.548260, 17.507160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340202, 35.551414, 17.903969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512657, 35.202286, 17.995447>,  <34.616131, 34.992809, 18.050335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512657, 35.202286, 17.995447>,  <34.340202, 35.551414, 17.903969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512657, 35.202286, 17.995447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394792, 0.045433, 0.917646,
		-0.811334, -0.485916, -0.324997,
		0.431134, -0.872824, 0.228697,
		34.641998, 34.940437, 18.064056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817898, 35.229412, 18.327818>,  <34.340202, 35.551414, 17.903969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817898, 35.229412, 18.327818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170208, 35.060211, 18.412960>,  <34.381596, 34.958691, 18.464045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170208, 35.060211, 18.412960>,  <33.817898, 35.229412, 18.327818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170208, 35.060211, 18.412960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201664, 0.071635, 0.976831,
		-0.428447, -0.903294, -0.022210,
		0.880775, -0.422999, 0.212854,
		34.434441, 34.933311, 18.476816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567871, 34.769859, 18.834846>,  <33.817898, 35.229412, 18.327818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567871, 34.769859, 18.834846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961571, 34.831577, 18.869347>,  <34.197792, 34.868607, 18.890047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961571, 34.831577, 18.869347>,  <33.567871, 34.769859, 18.834846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961571, 34.831577, 18.869347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112256, 0.168671, 0.979259,
		0.136537, -0.973522, 0.183334,
		0.984254, 0.154286, 0.086253,
		34.256847, 34.877865, 18.895222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820839, 34.351562, 19.437204>,  <33.567871, 34.769859, 18.834846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820839, 34.351562, 19.437204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125229, 34.606674, 19.389616>,  <34.307865, 34.759739, 19.361063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125229, 34.606674, 19.389616>,  <33.820839, 34.351562, 19.437204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125229, 34.606674, 19.389616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154399, 0.000076, 0.988009,
		0.630139, -0.770221, -0.098414,
		0.760977, 0.637777, -0.118969,
		34.353523, 34.798008, 19.353926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375805, 33.978523, 19.824247>,  <33.820839, 34.351562, 19.437204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375805, 33.978523, 19.824247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435932, 34.371918, 19.783937>,  <34.472008, 34.607956, 19.759750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435932, 34.371918, 19.783937>,  <34.375805, 33.978523, 19.824247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435932, 34.371918, 19.783937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245775, 0.061559, 0.967371,
		0.957600, -0.170184, -0.232463,
		0.150320, 0.983488, -0.100776,
		34.481030, 34.666965, 19.753704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074745, 34.114449, 19.910872>,  <34.375805, 33.978523, 19.824247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074745, 34.114449, 19.910872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892834, 34.464054, 19.979315>,  <34.783688, 34.673817, 20.020380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892834, 34.464054, 19.979315>,  <35.074745, 34.114449, 19.910872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892834, 34.464054, 19.979315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360456, 0.004948, 0.932763,
		0.814402, 0.485875, -0.317293,
		-0.454776, 0.874014, 0.171107,
		34.756401, 34.726257, 20.030647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468700, 34.323143, 20.391638>,  <35.074745, 34.114449, 19.910872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468700, 34.323143, 20.391638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156219, 34.571266, 20.419733>,  <34.968731, 34.720142, 20.436590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156219, 34.571266, 20.419733>,  <35.468700, 34.323143, 20.391638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156219, 34.571266, 20.419733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141470, 0.066327, 0.987718,
		0.608033, 0.781547, -0.139570,
		-0.781205, 0.620310, 0.070237,
		34.921860, 34.757359, 20.440804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764069, 35.008873, 20.654799>,  <35.468700, 34.323143, 20.391638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764069, 35.008873, 20.654799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381790, 34.925686, 20.738117>,  <35.152424, 34.875774, 20.788109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381790, 34.925686, 20.738117>,  <35.764069, 35.008873, 20.654799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381790, 34.925686, 20.738117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178269, 0.154150, 0.971832,
		-0.234215, 0.965913, -0.110247,
		-0.955701, -0.207964, 0.208297,
		35.095081, 34.863297, 20.800606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734463, 35.367729, 21.254406>,  <35.764069, 35.008873, 20.654799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734463, 35.367729, 21.254406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412704, 35.130173, 21.260666>,  <35.219650, 34.987640, 21.264421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412704, 35.130173, 21.260666>,  <35.734463, 35.367729, 21.254406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412704, 35.130173, 21.260666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103307, -0.113883, 0.988109,
		-0.585043, 0.796447, 0.152960,
		-0.804395, -0.593888, 0.015652,
		35.171387, 34.952007, 21.265362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281822, 35.499599, 21.874481>,  <35.734463, 35.367729, 21.254406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281822, 35.499599, 21.874481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176338, 35.130001, 21.763710>,  <35.113049, 34.908241, 21.697248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176338, 35.130001, 21.763710>,  <35.281822, 35.499599, 21.874481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176338, 35.130001, 21.763710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000783, -0.286884, 0.957965,
		-0.964601, 0.252844, 0.074931,
		-0.263712, -0.923995, -0.276927,
		35.097225, 34.852802, 21.680632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817043, 35.289211, 22.338976>,  <35.281822, 35.499599, 21.874481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817043, 35.289211, 22.338976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978146, 34.957558, 22.183887>,  <35.074806, 34.758568, 22.090834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978146, 34.957558, 22.183887>,  <34.817043, 35.289211, 22.338976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978146, 34.957558, 22.183887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124609, -0.369987, 0.920642,
		-0.906785, -0.419109, -0.045698,
		0.402757, -0.829131, -0.387723,
		35.098972, 34.708820, 22.067570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639046, 34.812790, 22.871983>,  <34.817043, 35.289211, 22.338976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639046, 34.812790, 22.871983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905994, 34.607132, 22.656479>,  <35.066166, 34.483738, 22.527176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905994, 34.607132, 22.656479>,  <34.639046, 34.812790, 22.871983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905994, 34.607132, 22.656479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251399, -0.525435, 0.812845,
		-0.701007, -0.677916, -0.221405,
		0.667374, -0.514148, -0.538761,
		35.106205, 34.452888, 22.494850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532894, 33.991070, 22.926481>,  <34.639046, 34.812790, 22.871983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532894, 33.991070, 22.926481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910778, 34.016754, 22.797861>,  <35.137508, 34.032166, 22.720690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910778, 34.016754, 22.797861>,  <34.532894, 33.991070, 22.926481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910778, 34.016754, 22.797861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312735, -0.471201, 0.824722,
		-0.098558, -0.879685, -0.465231,
		0.944713, 0.064211, -0.321549,
		35.194191, 34.036018, 22.701397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795143, 33.376938, 22.997557>,  <34.532894, 33.991070, 22.926481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795143, 33.376938, 22.997557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103256, 33.631989, 23.001659>,  <35.288124, 33.785019, 23.004122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103256, 33.631989, 23.001659>,  <34.795143, 33.376938, 22.997557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103256, 33.631989, 23.001659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363685, -0.452448, 0.814263,
		0.523834, -0.623480, -0.580406,
		0.770280, 0.637624, 0.010257,
		35.334339, 33.823277, 23.004736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366310, 32.940788, 23.156965>,  <34.795143, 33.376938, 22.997557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366310, 32.940788, 23.156965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487236, 33.319878, 23.197803>,  <35.559792, 33.547333, 23.222307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487236, 33.319878, 23.197803>,  <35.366310, 32.940788, 23.156965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487236, 33.319878, 23.197803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350225, -0.210054, 0.912809,
		0.886537, -0.240200, -0.395419,
		0.302316, 0.947724, 0.102097,
		35.577930, 33.604195, 23.228432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036961, 32.867138, 23.434311>,  <35.366310, 32.940788, 23.156965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036961, 32.867138, 23.434311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918373, 33.232891, 23.544588>,  <35.847221, 33.452343, 23.610754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918373, 33.232891, 23.544588>,  <36.036961, 32.867138, 23.434311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918373, 33.232891, 23.544588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423329, -0.132944, 0.896169,
		0.856095, 0.382394, -0.347672,
		-0.296469, 0.914385, 0.275692,
		35.829433, 33.507206, 23.627296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401417, 32.932373, 24.010965>,  <36.036961, 32.867138, 23.434311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401417, 32.932373, 24.010965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152634, 33.241024, 24.064280>,  <36.003365, 33.426212, 24.096268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152634, 33.241024, 24.064280>,  <36.401417, 32.932373, 24.010965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152634, 33.241024, 24.064280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290581, 0.069374, 0.954332,
		0.727139, 0.632285, -0.267367,
		-0.621958, 0.771624, 0.133286,
		35.966045, 33.472511, 24.104265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.757011, 34.313034, 28.009735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364834, 34.322758, 28.087851>,  <40.129528, 34.328590, 28.134720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364834, 34.322758, 28.087851>,  <40.757011, 34.313034, 28.009735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364834, 34.322758, 28.087851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196260, 0.193788, 0.961212,
		-0.014481, 0.980742, -0.194769,
		-0.980445, 0.024306, 0.195287,
		40.070702, 34.330048, 28.146437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606953, 35.016758, 28.442526>,  <40.757011, 34.313034, 28.009735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606953, 35.016758, 28.442526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.278996, 34.791401, 28.483242>,  <40.082222, 34.656185, 28.507671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.278996, 34.791401, 28.483242>,  <40.606953, 35.016758, 28.442526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278996, 34.791401, 28.483242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065686, 0.269190, 0.960844,
		-0.568736, 0.781103, -0.257715,
		-0.819893, -0.563395, 0.101790,
		40.033028, 34.622383, 28.513779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205574, 35.467075, 28.729933>,  <40.606953, 35.016758, 28.442526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205574, 35.467075, 28.729933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055470, 35.105183, 28.810574>,  <39.965408, 34.888046, 28.858957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055470, 35.105183, 28.810574>,  <40.205574, 35.467075, 28.729933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055470, 35.105183, 28.810574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177256, 0.283525, 0.942440,
		-0.909814, 0.317924, -0.266764,
		-0.375259, -0.904731, 0.201601,
		39.942890, 34.833763, 28.871054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647987, 35.604881, 29.255939>,  <40.205574, 35.467075, 28.729933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647987, 35.604881, 29.255939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698772, 35.208797, 29.279139>,  <39.729244, 34.971146, 29.293058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698772, 35.208797, 29.279139>,  <39.647987, 35.604881, 29.255939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698772, 35.208797, 29.279139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409731, 0.000891, 0.912206,
		-0.903327, -0.139581, -0.405606,
		0.126965, -0.990210, 0.057996,
		39.736862, 34.911736, 29.296537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040771, 35.276390, 29.419930>,  <39.647987, 35.604881, 29.255939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040771, 35.276390, 29.419930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322830, 35.015648, 29.531536>,  <39.492065, 34.859203, 29.598499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322830, 35.015648, 29.531536>,  <39.040771, 35.276390, 29.419930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322830, 35.015648, 29.531536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328459, 0.048440, 0.943275,
		-0.628395, -0.756795, -0.179950,
		0.705149, -0.651856, 0.279015,
		39.534374, 34.820091, 29.615240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672157, 34.750759, 29.840317>,  <39.040771, 35.276390, 29.419930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672157, 34.750759, 29.840317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056892, 34.727917, 29.947353>,  <39.287735, 34.714211, 30.011576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056892, 34.727917, 29.947353>,  <38.672157, 34.750759, 29.840317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056892, 34.727917, 29.947353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273577, -0.184227, 0.944042,
		-0.004611, -0.981223, -0.192819,
		0.961839, -0.057103, 0.267590,
		39.345444, 34.710785, 30.027630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668877, 34.318565, 30.469421>,  <38.672157, 34.750759, 29.840317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668877, 34.318565, 30.469421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022427, 34.505539, 30.475973>,  <39.234558, 34.617722, 30.479904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022427, 34.505539, 30.475973>,  <38.668877, 34.318565, 30.469421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022427, 34.505539, 30.475973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078448, 0.113630, 0.990421,
		0.461094, -0.876696, 0.137104,
		0.883877, 0.467432, 0.016381,
		39.287590, 34.645767, 30.480886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100037, 33.906929, 30.971695>,  <38.668877, 34.318565, 30.469421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100037, 33.906929, 30.971695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233494, 34.283279, 30.948261>,  <39.313568, 34.509090, 30.934200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233494, 34.283279, 30.948261>,  <39.100037, 33.906929, 30.971695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233494, 34.283279, 30.948261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004816, 0.060443, 0.998160,
		0.942686, -0.333316, 0.015636,
		0.333647, 0.940876, -0.058584,
		39.333588, 34.565540, 30.930687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585793, 33.901203, 31.457470>,  <39.100037, 33.906929, 30.971695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585793, 33.901203, 31.457470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482960, 34.282043, 31.391237>,  <39.421261, 34.510548, 31.351498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482960, 34.282043, 31.391237>,  <39.585793, 33.901203, 31.457470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482960, 34.282043, 31.391237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099643, 0.196542, 0.975419,
		0.961239, 0.234263, -0.145397,
		-0.257082, 0.952099, -0.165581,
		39.405834, 34.567673, 31.341562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035954, 34.279133, 31.873087>,  <39.585793, 33.901203, 31.457470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035954, 34.279133, 31.873087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.740353, 34.533955, 31.785410>,  <39.562992, 34.686848, 31.732803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.740353, 34.533955, 31.785410>,  <40.035954, 34.279133, 31.873087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740353, 34.533955, 31.785410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002565, 0.328009, 0.944671,
		0.673700, 0.697550, -0.244033,
		-0.739000, 0.637051, -0.219190,
		39.518654, 34.725071, 31.719652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184055, 34.882114, 32.176876>,  <40.035954, 34.279133, 31.873087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184055, 34.882114, 32.176876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786415, 34.882183, 32.133499>,  <39.547829, 34.882225, 32.107475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786415, 34.882183, 32.133499>,  <40.184055, 34.882114, 32.176876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786415, 34.882183, 32.133499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104169, 0.276321, 0.955403,
		0.030128, 0.961065, -0.274674,
		-0.994103, 0.000172, -0.108439,
		39.488186, 34.882236, 32.100967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978558, 35.259663, 32.762066>,  <40.184055, 34.882114, 32.176876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978558, 35.259663, 32.762066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643391, 35.074909, 32.645752>,  <39.442291, 34.964058, 32.575962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643391, 35.074909, 32.645752>,  <39.978558, 35.259663, 32.762066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643391, 35.074909, 32.645752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379988, 0.111228, 0.918279,
		-0.391792, 0.879940, -0.268709,
		-0.837919, -0.461881, -0.290789,
		39.392014, 34.936344, 32.558514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425819, 35.679821, 32.991714>,  <39.978558, 35.259663, 32.762066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425819, 35.679821, 32.991714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299946, 35.303246, 32.943264>,  <39.224422, 35.077301, 32.914192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299946, 35.303246, 32.943264>,  <39.425819, 35.679821, 32.991714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299946, 35.303246, 32.943264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427080, 0.026466, 0.903826,
		-0.847688, 0.336154, -0.410397,
		-0.314687, -0.941435, -0.121130,
		39.205540, 35.020817, 32.906925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664600, 36.023624, 32.384148>,  <39.425819, 35.679821, 32.991714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664600, 36.023624, 32.384148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974701, 35.874954, 32.588436>,  <40.160763, 35.785751, 32.711010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974701, 35.874954, 32.588436>,  <39.664600, 36.023624, 32.384148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974701, 35.874954, 32.588436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582372, -0.733677, 0.350088,
		0.244584, -0.568836, -0.785241,
		0.775256, -0.371676, 0.510720,
		40.207279, 35.763451, 32.741653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222088, 36.566910, 32.685715>,  <39.664600, 36.023624, 32.384148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222088, 36.566910, 32.685715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953819, 36.791397, 32.879719>,  <38.792858, 36.926090, 32.996120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953819, 36.791397, 32.879719>,  <39.222088, 36.566910, 32.685715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953819, 36.791397, 32.879719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587234, -0.002266, -0.809414,
		-0.453159, -0.827665, 0.331086,
		-0.670674, 0.561218, 0.485006,
		38.752617, 36.959763, 33.025219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594681, 36.277519, 32.520863>,  <39.222088, 36.566910, 32.685715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594681, 36.277519, 32.520863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.510883, 36.646889, 32.649487>,  <38.460606, 36.868511, 32.726662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.510883, 36.646889, 32.649487>,  <38.594681, 36.277519, 32.520863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510883, 36.646889, 32.649487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605597, 0.135665, -0.784122,
		-0.767702, -0.359002, 0.530803,
		-0.209490, 0.923425, 0.321561,
		38.448036, 36.923916, 32.745956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782009, 36.317204, 32.421791>,  <38.594681, 36.277519, 32.520863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782009, 36.317204, 32.421791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925583, 36.687004, 32.473122>,  <38.011726, 36.908882, 32.503922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925583, 36.687004, 32.473122>,  <37.782009, 36.317204, 32.421791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925583, 36.687004, 32.473122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492021, 0.304252, -0.815688,
		-0.793147, 0.229637, 0.564079,
		0.358934, 0.924498, 0.128330,
		38.033264, 36.964355, 32.511620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168400, 36.826199, 32.418999>,  <37.782009, 36.317204, 32.421791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168400, 36.826199, 32.418999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.505806, 37.008873, 32.305916>,  <37.708248, 37.118477, 32.238068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.505806, 37.008873, 32.305916>,  <37.168400, 36.826199, 32.418999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505806, 37.008873, 32.305916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403097, 0.190407, -0.895130,
		-0.354967, 0.869010, 0.344701,
		0.843511, 0.456690, -0.282707,
		37.758858, 37.145882, 32.221104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002434, 37.391258, 32.082710>,  <37.168400, 36.826199, 32.418999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002434, 37.391258, 32.082710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.382969, 37.377579, 31.960215>,  <37.611290, 37.369373, 31.886719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.382969, 37.377579, 31.960215>,  <37.002434, 37.391258, 32.082710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382969, 37.377579, 31.960215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293074, 0.206531, -0.933516,
		0.095171, 0.977842, 0.186459,
		0.951341, -0.034197, -0.306236,
		37.668373, 37.367321, 31.868343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061005, 37.958088, 31.587955>,  <37.002434, 37.391258, 32.082710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061005, 37.958088, 31.587955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371250, 37.720543, 31.502392>,  <37.557396, 37.578018, 31.451054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371250, 37.720543, 31.502392>,  <37.061005, 37.958088, 31.587955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371250, 37.720543, 31.502392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012305, 0.324597, -0.945772,
		0.631091, 0.736184, 0.244454,
		0.775611, -0.593860, -0.213909,
		37.603935, 37.542385, 31.438219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548893, 38.321564, 31.027870>,  <37.061005, 37.958088, 31.587955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548893, 38.321564, 31.027870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.643398, 37.933281, 31.010370>,  <37.700100, 37.700314, 30.999870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.643398, 37.933281, 31.010370>,  <37.548893, 38.321564, 31.027870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643398, 37.933281, 31.010370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313691, 0.118808, -0.942063,
		0.919662, 0.208850, 0.332571,
		0.236262, -0.970704, -0.043748,
		37.714275, 37.642071, 30.997246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148014, 38.217339, 30.609255>,  <37.548893, 38.321564, 31.027870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148014, 38.217339, 30.609255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008053, 37.842632, 30.606880>,  <37.924076, 37.617809, 30.605455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008053, 37.842632, 30.606880>,  <38.148014, 38.217339, 30.609255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008053, 37.842632, 30.606880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133691, -0.043665, -0.990061,
		0.927196, -0.347223, 0.140515,
		-0.349907, -0.936766, -0.005935,
		37.903080, 37.561604, 30.605101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517750, 37.859989, 30.170633>,  <38.148014, 38.217339, 30.609255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517750, 37.859989, 30.170633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199253, 37.618649, 30.188383>,  <38.008156, 37.473843, 30.199032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199253, 37.618649, 30.188383>,  <38.517750, 37.859989, 30.170633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199253, 37.618649, 30.188383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120313, -0.229803, -0.965772,
		0.592898, -0.763647, 0.255569,
		-0.796239, -0.603353, 0.044373,
		37.960381, 37.437641, 30.201694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738491, 37.167458, 29.777790>,  <38.517750, 37.859989, 30.170633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738491, 37.167458, 29.777790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.343765, 37.232170, 29.775698>,  <38.106930, 37.271000, 29.774443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.343765, 37.232170, 29.775698>,  <38.738491, 37.167458, 29.777790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343765, 37.232170, 29.775698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035115, -0.245506, -0.968759,
		-0.158011, -0.955800, 0.247949,
		-0.986813, 0.161782, -0.005229,
		38.047722, 37.280704, 29.774128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351429, 36.475494, 29.512634>,  <38.738491, 37.167458, 29.777790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351429, 36.475494, 29.512634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.095871, 36.780651, 29.473032>,  <37.942535, 36.963745, 29.449270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.095871, 36.780651, 29.473032>,  <38.351429, 36.475494, 29.512634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095871, 36.780651, 29.473032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142406, -0.243756, -0.959324,
		-0.755996, -0.598812, 0.264376,
		-0.638898, 0.762894, -0.099004,
		37.904202, 37.009518, 29.443331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735699, 36.134285, 29.399996>,  <38.351429, 36.475494, 29.512634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735699, 36.134285, 29.399996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.701500, 36.507885, 29.261242>,  <37.680981, 36.732044, 29.177990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.701500, 36.507885, 29.261242>,  <37.735699, 36.134285, 29.399996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701500, 36.507885, 29.261242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438362, -0.347915, -0.828731,
		-0.894723, 0.081206, 0.439177,
		-0.085498, 0.934002, -0.346885,
		37.675850, 36.788086, 29.157177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041470, 36.193871, 29.075788>,  <37.735699, 36.134285, 29.399996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041470, 36.193871, 29.075788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252117, 36.488670, 28.906317>,  <37.378506, 36.665550, 28.804634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252117, 36.488670, 28.906317>,  <37.041470, 36.193871, 29.075788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252117, 36.488670, 28.906317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493489, -0.140787, -0.858282,
		-0.692204, 0.661066, 0.289562,
		0.526614, 0.737001, -0.423682,
		37.410103, 36.709770, 28.779213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640388, 36.357269, 28.529762>,  <37.041470, 36.193871, 29.075788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640388, 36.357269, 28.529762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991016, 36.532219, 28.449432>,  <37.201393, 36.637188, 28.401236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991016, 36.532219, 28.449432>,  <36.640388, 36.357269, 28.529762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991016, 36.532219, 28.449432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097603, -0.247052, -0.964074,
		-0.471274, 0.864680, -0.173869,
		0.876570, 0.437373, -0.200824,
		37.253986, 36.663429, 28.389185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173435, 36.925220, 28.586874>,  <36.640388, 36.357269, 28.529762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173435, 36.925220, 28.586874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861691, 37.175831, 28.590162>,  <35.674644, 37.326199, 28.592136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861691, 37.175831, 28.590162>,  <36.173435, 36.925220, 28.586874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861691, 37.175831, 28.590162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046969, -0.071501, 0.996334,
		0.624816, 0.776115, 0.085152,
		-0.779358, 0.626525, 0.008222,
		35.627884, 37.363789, 28.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280331, 37.326641, 29.216063>,  <36.173435, 36.925220, 28.586874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280331, 37.326641, 29.216063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892605, 37.390690, 29.141460>,  <35.659969, 37.429119, 29.096699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892605, 37.390690, 29.141460>,  <36.280331, 37.326641, 29.216063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892605, 37.390690, 29.141460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193936, -0.031965, 0.980493,
		0.151034, 0.986580, 0.062037,
		-0.969318, 0.160119, -0.186506,
		35.601810, 37.438725, 29.085508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035992, 37.768551, 29.768156>,  <36.280331, 37.326641, 29.216063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035992, 37.768551, 29.768156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.701534, 37.619606, 29.607056>,  <35.500858, 37.530239, 29.510395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.701534, 37.619606, 29.607056>,  <36.035992, 37.768551, 29.768156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701534, 37.619606, 29.607056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385795, -0.122700, 0.914389,
		-0.389901, 0.919941, -0.041060,
		-0.836145, -0.372362, -0.402749,
		35.450691, 37.507896, 29.486231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474720, 38.151199, 30.083698>,  <36.035992, 37.768551, 29.768156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474720, 38.151199, 30.083698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409496, 37.768608, 29.986900>,  <35.370361, 37.539055, 29.928822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409496, 37.768608, 29.986900>,  <35.474720, 38.151199, 30.083698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409496, 37.768608, 29.986900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403463, -0.159184, 0.901043,
		-0.900349, 0.244563, -0.359946,
		-0.163064, -0.956477, -0.241993,
		35.360577, 37.481667, 29.914303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936504, 37.923820, 30.573448>,  <35.474720, 38.151199, 30.083698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936504, 37.923820, 30.573448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048714, 37.579494, 30.403603>,  <35.116039, 37.372898, 30.301695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048714, 37.579494, 30.403603>,  <34.936504, 37.923820, 30.573448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048714, 37.579494, 30.403603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656688, -0.494765, 0.569182,
		-0.700046, 0.119169, -0.704084,
		0.280527, -0.860817, -0.424615,
		35.132874, 37.321251, 30.276218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288746, 37.585014, 30.267849>,  <34.936504, 37.923820, 30.573448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288746, 37.585014, 30.267849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578209, 37.314899, 30.324854>,  <34.751888, 37.152832, 30.359056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578209, 37.314899, 30.324854>,  <34.288746, 37.585014, 30.267849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578209, 37.314899, 30.324854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528101, -0.408856, 0.744276,
		-0.444333, -0.613860, -0.652490,
		0.723656, -0.675287, 0.142512,
		34.795307, 37.112312, 30.367607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935246, 36.940590, 30.355608>,  <34.288746, 37.585014, 30.267849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935246, 36.940590, 30.355608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.294689, 36.863613, 30.513327>,  <34.510353, 36.817429, 30.607958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.294689, 36.863613, 30.513327>,  <33.935246, 36.940590, 30.355608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294689, 36.863613, 30.513327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420549, -0.633966, 0.649019,
		0.125075, -0.749035, -0.650617,
		0.898607, -0.192440, 0.394299,
		34.564270, 36.805882, 30.631617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969467, 36.146313, 30.619555>,  <33.935246, 36.940590, 30.355608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969467, 36.146313, 30.619555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.266792, 36.339153, 30.805058>,  <34.445187, 36.454857, 30.916359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.266792, 36.339153, 30.805058>,  <33.969467, 36.146313, 30.619555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266792, 36.339153, 30.805058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299970, -0.379438, 0.875240,
		0.597919, -0.789688, -0.137425,
		0.743311, 0.482099, 0.463755,
		34.489784, 36.483784, 30.944183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217262, 35.689251, 31.075653>,  <33.969467, 36.146313, 30.619555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217262, 35.689251, 31.075653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.342381, 36.039131, 31.223736>,  <34.417454, 36.249058, 31.312586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.342381, 36.039131, 31.223736>,  <34.217262, 35.689251, 31.075653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342381, 36.039131, 31.223736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227240, -0.309529, 0.923338,
		0.922235, -0.372946, 0.101947,
		0.312800, 0.874702, 0.370207,
		34.436222, 36.301540, 31.334799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833733, 35.583496, 31.512323>,  <34.217262, 35.689251, 31.075653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833733, 35.583496, 31.512323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665848, 35.928131, 31.626524>,  <34.565117, 36.134911, 31.695044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665848, 35.928131, 31.626524>,  <34.833733, 35.583496, 31.512323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665848, 35.928131, 31.626524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034878, -0.299005, 0.953614,
		0.906985, 0.410204, 0.095446,
		-0.419716, 0.861585, 0.285501,
		34.539932, 36.186607, 31.712173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268398, 35.806137, 32.101940>,  <34.833733, 35.583496, 31.512323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268398, 35.806137, 32.101940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.943470, 36.039349, 32.107830>,  <34.748512, 36.179276, 32.111366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.943470, 36.039349, 32.107830>,  <35.268398, 35.806137, 32.101940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943470, 36.039349, 32.107830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156083, -0.241659, 0.957726,
		0.561943, 0.775678, 0.287305,
		-0.812317, 0.583031, 0.014728,
		34.699776, 36.214256, 32.112247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329124, 36.194580, 32.669807>,  <35.268398, 35.806137, 32.101940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329124, 36.194580, 32.669807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.933628, 36.192848, 32.609966>,  <34.696331, 36.191807, 32.574062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.933628, 36.192848, 32.609966>,  <35.329124, 36.194580, 32.669807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933628, 36.192848, 32.609966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134543, -0.412071, 0.901163,
		-0.065551, 0.911141, 0.406847,
		-0.988737, -0.004334, -0.149600,
		34.637009, 36.191547, 32.565086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.484184, 38.746975, 25.334034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086357, 38.782932, 25.313044>,  <35.847660, 38.804504, 25.300449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086357, 38.782932, 25.313044>,  <36.484184, 38.746975, 25.334034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086357, 38.782932, 25.313044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044457, 0.088982, 0.995041,
		0.094113, 0.991969, -0.084502,
		-0.994568, 0.089889, -0.052475,
		35.787987, 38.809898, 25.297300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322517, 39.375114, 25.722866>,  <36.484184, 38.746975, 25.334034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322517, 39.375114, 25.722866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020134, 39.113682, 25.708097>,  <35.838703, 38.956821, 25.699236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020134, 39.113682, 25.708097>,  <36.322517, 39.375114, 25.722866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020134, 39.113682, 25.708097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019128, -0.034324, 0.999228,
		-0.654343, 0.756078, 0.013445,
		-0.755956, -0.653581, -0.036922,
		35.793346, 38.917606, 25.697021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899124, 39.603176, 26.232758>,  <36.322517, 39.375114, 25.722866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899124, 39.603176, 26.232758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807213, 39.221649, 26.155369>,  <35.752068, 38.992733, 26.108936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807213, 39.221649, 26.155369>,  <35.899124, 39.603176, 26.232758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807213, 39.221649, 26.155369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093629, -0.176205, 0.979891,
		-0.968730, 0.243268, -0.048818,
		-0.229775, -0.953820, -0.193472,
		35.738281, 38.935505, 26.097328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621964, 39.395958, 26.871527>,  <35.899124, 39.603176, 26.232758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621964, 39.395958, 26.871527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640747, 39.045048, 26.680454>,  <35.652016, 38.834503, 26.565811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640747, 39.045048, 26.680454>,  <35.621964, 39.395958, 26.871527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640747, 39.045048, 26.680454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217508, -0.475716, 0.852282,
		-0.974928, 0.063878, -0.213153,
		0.046958, -0.877276, -0.477683,
		35.654835, 38.781864, 26.537149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054424, 38.984665, 27.029064>,  <35.621964, 39.395958, 26.871527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054424, 38.984665, 27.029064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360580, 38.742531, 26.941658>,  <35.544273, 38.597252, 26.889214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360580, 38.742531, 26.941658>,  <35.054424, 38.984665, 27.029064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360580, 38.742531, 26.941658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204792, -0.550977, 0.809003,
		-0.610117, -0.574450, -0.545678,
		0.765387, -0.605336, -0.218517,
		35.590199, 38.560928, 26.876102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713387, 38.338230, 27.164795>,  <35.054424, 38.984665, 27.029064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713387, 38.338230, 27.164795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111240, 38.299934, 27.180447>,  <35.349953, 38.276958, 27.189838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111240, 38.299934, 27.180447>,  <34.713387, 38.338230, 27.164795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111240, 38.299934, 27.180447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077812, -0.443426, 0.892927,
		-0.068137, -0.891183, -0.448498,
		0.994637, -0.095740, 0.039131,
		35.409630, 38.271214, 27.192186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893661, 37.557762, 27.181225>,  <34.713387, 38.338230, 27.164795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893661, 37.557762, 27.181225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203373, 37.761223, 27.331831>,  <35.389198, 37.883301, 27.422195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203373, 37.761223, 27.331831>,  <34.893661, 37.557762, 27.181225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203373, 37.761223, 27.331831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063810, -0.529173, 0.846111,
		0.629621, -0.679150, -0.377269,
		0.774277, 0.508656, 0.376515,
		35.435658, 37.913818, 27.444786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360310, 37.019398, 27.417896>,  <34.893661, 37.557762, 27.181225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360310, 37.019398, 27.417896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474319, 37.358723, 27.596390>,  <35.542725, 37.562317, 27.703485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474319, 37.358723, 27.596390>,  <35.360310, 37.019398, 27.417896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474319, 37.358723, 27.596390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149103, -0.420636, 0.894893,
		0.946852, -0.321603, 0.006593,
		0.285027, 0.848314, 0.446232,
		35.559826, 37.613216, 27.730259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751041, 36.776985, 28.007195>,  <35.360310, 37.019398, 27.417896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751041, 36.776985, 28.007195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615715, 37.140778, 28.103849>,  <35.534519, 37.359051, 28.161842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615715, 37.140778, 28.103849>,  <35.751041, 36.776985, 28.007195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615715, 37.140778, 28.103849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283405, -0.343332, 0.895435,
		0.897341, 0.234461, 0.373907,
		-0.338319, 0.909478, 0.241639,
		35.514221, 37.413620, 28.176340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462414, 36.969536, 27.826105>,  <35.751041, 36.776985, 28.007195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462414, 36.969536, 27.826105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860844, 36.959160, 27.859978>,  <37.099899, 36.952934, 27.880301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860844, 36.959160, 27.859978>,  <36.462414, 36.969536, 27.826105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860844, 36.959160, 27.859978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087576, 0.146050, -0.985393,
		0.013190, 0.988937, 0.147747,
		0.996071, -0.025937, 0.084680,
		37.159664, 36.951378, 27.885382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717430, 37.501991, 27.482731>,  <36.462414, 36.969536, 27.826105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717430, 37.501991, 27.482731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006882, 37.226738, 27.504028>,  <37.180553, 37.061584, 27.516808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006882, 37.226738, 27.504028>,  <36.717430, 37.501991, 27.482731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006882, 37.226738, 27.504028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212344, 0.148565, -0.965836,
		0.656715, 0.710210, 0.253627,
		0.723626, -0.688135, 0.053244,
		37.223969, 37.020298, 27.520002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376713, 37.817989, 27.189890>,  <36.717430, 37.501991, 27.482731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376713, 37.817989, 27.189890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388889, 37.419453, 27.157942>,  <37.396194, 37.180332, 27.138773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388889, 37.419453, 27.157942>,  <37.376713, 37.817989, 27.189890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388889, 37.419453, 27.157942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229136, 0.084738, -0.969699,
		0.972918, 0.011222, 0.230877,
		0.030446, -0.996340, -0.079871,
		37.398022, 37.120552, 27.133980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900032, 37.816185, 26.591228>,  <37.376713, 37.817989, 27.189890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900032, 37.816185, 26.591228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692047, 37.478016, 26.640066>,  <37.567257, 37.275116, 26.669369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692047, 37.478016, 26.640066>,  <37.900032, 37.816185, 26.591228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692047, 37.478016, 26.640066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203541, -0.261446, -0.943513,
		0.829587, -0.465735, 0.308019,
		-0.519957, -0.845421, 0.122096,
		37.536060, 37.224388, 26.676695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354931, 37.365082, 26.216803>,  <37.900032, 37.816185, 26.591228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354931, 37.365082, 26.216803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993145, 37.194458, 26.217039>,  <37.776073, 37.092083, 26.217182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993145, 37.194458, 26.217039>,  <38.354931, 37.365082, 26.216803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993145, 37.194458, 26.217039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084612, -0.180772, -0.979879,
		0.418083, -0.886211, 0.199593,
		-0.904460, -0.426558, 0.000593,
		37.721806, 37.066490, 26.217216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388958, 36.731709, 25.845778>,  <38.354931, 37.365082, 26.216803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388958, 36.731709, 25.845778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997974, 36.815823, 25.838171>,  <37.763386, 36.866291, 25.833607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997974, 36.815823, 25.838171>,  <38.388958, 36.731709, 25.845778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997974, 36.815823, 25.838171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026060, -0.209525, -0.977456,
		-0.209525, -0.954925, 0.210281,
		0.977456, -0.210281, 0.019015,
		37.704739, 36.878906, 25.832466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129711, 36.207642, 25.376282>,  <38.388958, 36.731709, 25.845778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129711, 36.207642, 25.376282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833023, 36.474136, 25.407211>,  <37.655010, 36.634033, 25.425768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833023, 36.474136, 25.407211>,  <38.129711, 36.207642, 25.376282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833023, 36.474136, 25.407211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204025, -0.114303, -0.972270,
		-0.638924, -0.736928, 0.220710,
		-0.741721, 0.666237, 0.077321,
		37.610508, 36.674007, 25.430408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540859, 35.937466, 25.015081>,  <38.129711, 36.207642, 25.376282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540859, 35.937466, 25.015081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475136, 36.330223, 25.052797>,  <37.435703, 36.565876, 25.075426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475136, 36.330223, 25.052797>,  <37.540859, 35.937466, 25.015081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475136, 36.330223, 25.052797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360013, 0.029300, -0.932487,
		-0.918365, -0.187159, 0.348680,
		-0.164307, 0.981893, 0.094288,
		37.425842, 36.624790, 25.081083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979713, 36.115166, 24.555033>,  <37.540859, 35.937466, 25.015081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979713, 36.115166, 24.555033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142525, 36.480324, 24.567373>,  <37.240211, 36.699417, 24.574778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142525, 36.480324, 24.567373>,  <36.979713, 36.115166, 24.555033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142525, 36.480324, 24.567373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267234, 0.151309, -0.951678,
		-0.873451, 0.379112, 0.305544,
		0.407025, 0.912896, 0.030849,
		37.264633, 36.754192, 24.576628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500767, 36.481621, 24.271236>,  <36.979713, 36.115166, 24.555033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500767, 36.481621, 24.271236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873108, 36.627445, 24.261385>,  <37.096512, 36.714939, 24.255474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873108, 36.627445, 24.261385>,  <36.500767, 36.481621, 24.271236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873108, 36.627445, 24.261385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109034, 0.212809, -0.970991,
		-0.348746, 0.906536, 0.237843,
		0.930853, 0.364562, -0.024627,
		37.152363, 36.736813, 24.253998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417645, 37.044777, 23.815506>,  <36.500767, 36.481621, 24.271236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417645, 37.044777, 23.815506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806713, 36.952099, 23.821646>,  <37.040154, 36.896492, 23.825329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806713, 36.952099, 23.821646>,  <36.417645, 37.044777, 23.815506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806713, 36.952099, 23.821646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051443, 0.150554, -0.987262,
		0.226435, 0.961067, 0.158358,
		0.972667, -0.231697, 0.015349,
		37.098515, 36.882591, 23.826250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636967, 37.518349, 23.317373>,  <36.417645, 37.044777, 23.815506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636967, 37.518349, 23.317373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935276, 37.260017, 23.382776>,  <37.114262, 37.105019, 23.422018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935276, 37.260017, 23.382776>,  <36.636967, 37.518349, 23.317373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935276, 37.260017, 23.382776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333298, 0.149186, -0.930943,
		0.576837, 0.748765, 0.326512,
		0.745769, -0.645828, 0.163506,
		37.159008, 37.066269, 23.431828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220814, 37.761017, 23.009407>,  <36.636967, 37.518349, 23.317373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220814, 37.761017, 23.009407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304874, 37.372990, 23.058077>,  <37.355309, 37.140175, 23.087278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304874, 37.372990, 23.058077>,  <37.220814, 37.761017, 23.009407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304874, 37.372990, 23.058077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373777, -0.035279, -0.926847,
		0.903398, 0.240254, 0.355176,
		0.210148, -0.970069, 0.121673,
		37.367920, 37.081970, 23.094578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899307, 37.793087, 22.833294>,  <37.220814, 37.761017, 23.009407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899307, 37.793087, 22.833294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745102, 37.425823, 22.796719>,  <37.652576, 37.205463, 22.774773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745102, 37.425823, 22.796719>,  <37.899307, 37.793087, 22.833294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745102, 37.425823, 22.796719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358087, -0.057545, -0.931913,
		0.850382, -0.392012, 0.350965,
		-0.385518, -0.918159, -0.091439,
		37.629448, 37.150375, 22.769287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.402653, 34.463661, 23.379374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587708, 34.818020, 23.392998>,  <32.698742, 35.030636, 23.401173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587708, 34.818020, 23.392998>,  <32.402653, 34.463661, 23.379374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587708, 34.818020, 23.392998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585679, -0.334250, 0.738416,
		0.665542, -0.321670, -0.673485,
		0.462639, 0.885892, 0.034062,
		32.726498, 35.083786, 23.403215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090996, 34.327877, 23.372278>,  <32.402653, 34.463661, 23.379374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090996, 34.327877, 23.372278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051357, 34.698368, 23.517756>,  <33.027573, 34.920662, 23.605042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051357, 34.698368, 23.517756>,  <33.090996, 34.327877, 23.372278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051357, 34.698368, 23.517756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525327, -0.261715, 0.809653,
		0.845111, 0.271293, -0.460639,
		-0.099097, 0.926232, 0.363695,
		33.021629, 34.976238, 23.626863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780094, 34.461945, 23.735640>,  <33.090996, 34.327877, 23.372278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780094, 34.461945, 23.735640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519798, 34.717991, 23.899000>,  <33.363621, 34.871616, 23.997017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519798, 34.717991, 23.899000>,  <33.780094, 34.461945, 23.735640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519798, 34.717991, 23.899000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264559, -0.313018, 0.912156,
		0.711719, 0.701624, 0.034347,
		-0.650741, 0.640112, 0.408402,
		33.324577, 34.910023, 24.021521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117912, 34.803650, 24.190329>,  <33.780094, 34.461945, 23.735640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117912, 34.803650, 24.190329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.755924, 34.898518, 24.331623>,  <33.538731, 34.955437, 24.416399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.755924, 34.898518, 24.331623>,  <34.117912, 34.803650, 24.190329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755924, 34.898518, 24.331623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368288, 0.020950, 0.929476,
		0.213042, 0.971243, -0.106306,
		-0.904973, 0.237169, 0.353234,
		33.484432, 34.969669, 24.437593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259571, 35.327824, 24.658073>,  <34.117912, 34.803650, 24.190329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259571, 35.327824, 24.658073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.899151, 35.185570, 24.757368>,  <33.682899, 35.100216, 24.816946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.899151, 35.185570, 24.757368>,  <34.259571, 35.327824, 24.658073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899151, 35.185570, 24.757368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285610, -0.055834, 0.956718,
		-0.326384, 0.932955, 0.151883,
		-0.901055, -0.355637, 0.248238,
		33.628834, 35.078880, 24.831839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119862, 35.605015, 25.203985>,  <34.259571, 35.327824, 24.658073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119862, 35.605015, 25.203985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880096, 35.285011, 25.214436>,  <33.736237, 35.093010, 25.220707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880096, 35.285011, 25.214436>,  <34.119862, 35.605015, 25.203985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880096, 35.285011, 25.214436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169794, -0.095185, 0.980872,
		-0.782222, 0.592385, 0.192893,
		-0.599415, -0.800012, 0.026128,
		33.700272, 35.045006, 25.222275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729809, 35.746559, 25.792957>,  <34.119862, 35.605015, 25.203985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729809, 35.746559, 25.792957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.703743, 35.354805, 25.716484>,  <33.688103, 35.119751, 25.670601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.703743, 35.354805, 25.716484>,  <33.729809, 35.746559, 25.792957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703743, 35.354805, 25.716484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201255, -0.200552, 0.958788,
		-0.977369, 0.024000, 0.210176,
		-0.065162, -0.979389, -0.191183,
		33.684193, 35.060989, 25.659128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150005, 35.441479, 26.198839>,  <33.729809, 35.746559, 25.792957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150005, 35.441479, 26.198839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390720, 35.136818, 26.102734>,  <33.535149, 34.954021, 26.045071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390720, 35.136818, 26.102734>,  <33.150005, 35.441479, 26.198839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390720, 35.136818, 26.102734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001725, -0.299596, 0.954065,
		-0.798651, -0.574563, -0.178980,
		0.601792, -0.761656, -0.240264,
		33.571259, 34.908321, 26.030655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004257, 34.935493, 26.702925>,  <33.150005, 35.441479, 26.198839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004257, 34.935493, 26.702925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.338947, 34.790394, 26.538828>,  <33.539761, 34.703335, 26.440371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.338947, 34.790394, 26.538828>,  <33.004257, 34.935493, 26.702925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338947, 34.790394, 26.538828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242134, -0.426863, 0.871297,
		-0.491178, -0.828373, -0.269335,
		0.836729, -0.362747, -0.410243,
		33.589966, 34.681572, 26.415754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034184, 34.385883, 27.064413>,  <33.004257, 34.935493, 26.702925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034184, 34.385883, 27.064413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.403820, 34.456341, 26.928755>,  <33.625603, 34.498615, 26.847361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.403820, 34.456341, 26.928755>,  <33.034184, 34.385883, 27.064413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403820, 34.456341, 26.928755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378192, -0.293957, 0.877815,
		0.054932, -0.939447, -0.338262,
		0.924096, 0.176148, -0.339144,
		33.681049, 34.509186, 26.827011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385288, 33.794342, 27.181753>,  <33.034184, 34.385883, 27.064413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385288, 33.794342, 27.181753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.673218, 34.068230, 27.136127>,  <33.845978, 34.232563, 27.108751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.673218, 34.068230, 27.136127>,  <33.385288, 33.794342, 27.181753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673218, 34.068230, 27.136127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413034, -0.290422, 0.863167,
		0.557898, -0.668445, -0.491865,
		0.719828, 0.684716, -0.114065,
		33.889168, 34.273643, 27.101908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999290, 33.345703, 27.256676>,  <33.385288, 33.794342, 27.181753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999290, 33.345703, 27.256676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083054, 33.734089, 27.302950>,  <34.133312, 33.967121, 27.330713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083054, 33.734089, 27.302950>,  <33.999290, 33.345703, 27.256676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083054, 33.734089, 27.302950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382540, -0.190225, 0.904144,
		0.899895, -0.145081, -0.411266,
		0.209407, 0.970961, 0.115683,
		34.145874, 34.025379, 27.337654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697720, 33.423965, 27.483202>,  <33.999290, 33.345703, 27.256676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697720, 33.423965, 27.483202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486805, 33.740269, 27.607571>,  <34.360256, 33.930050, 27.682192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486805, 33.740269, 27.607571>,  <34.697720, 33.423965, 27.483202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486805, 33.740269, 27.607571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391944, -0.098314, 0.914721,
		0.753891, 0.604182, -0.258093,
		-0.527284, 0.790758, 0.310923,
		34.328621, 33.977497, 27.700848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267166, 33.876411, 27.873669>,  <34.697720, 33.423965, 27.483202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267166, 33.876411, 27.873669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899014, 33.978878, 27.991837>,  <34.678120, 34.040359, 28.062737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899014, 33.978878, 27.991837>,  <35.267166, 33.876411, 27.873669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899014, 33.978878, 27.991837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332290, 0.114190, 0.936239,
		0.206098, 0.959864, -0.190220,
		-0.920384, 0.256165, 0.295419,
		34.622898, 34.055729, 28.080462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717331, 34.408802, 28.247875>,  <35.267166, 33.876411, 27.873669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717331, 34.408802, 28.247875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955029, 34.088364, 28.219242>,  <36.097649, 33.896103, 28.202063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955029, 34.088364, 28.219242>,  <35.717331, 34.408802, 28.247875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955029, 34.088364, 28.219242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005800, 0.093268, -0.995624,
		0.804264, 0.591228, 0.060070,
		0.594243, -0.801093, -0.071583,
		36.133301, 33.848034, 28.197767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131771, 34.533958, 27.712902>,  <35.717331, 34.408802, 28.247875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131771, 34.533958, 27.712902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194061, 34.140179, 27.745415>,  <36.231438, 33.903912, 27.764921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194061, 34.140179, 27.745415>,  <36.131771, 34.533958, 27.712902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194061, 34.140179, 27.745415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069412, -0.071174, -0.995046,
		0.985358, 0.160599, 0.057249,
		0.155729, -0.984450, 0.081279,
		36.240780, 33.844845, 27.769798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811668, 34.368053, 27.364614>,  <36.131771, 34.533958, 27.712902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811668, 34.368053, 27.364614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.598038, 34.029942, 27.371092>,  <36.469860, 33.827072, 27.374977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.598038, 34.029942, 27.371092>,  <36.811668, 34.368053, 27.364614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598038, 34.029942, 27.371092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182858, -0.134191, -0.973938,
		0.825427, -0.517192, 0.226235,
		-0.534072, -0.845284, 0.016193,
		36.437817, 33.776356, 27.375950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187878, 33.927536, 26.980549>,  <36.811668, 34.368053, 27.364614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187878, 33.927536, 26.980549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.821838, 33.766376, 26.973886>,  <36.602215, 33.669682, 26.969889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.821838, 33.766376, 26.973886>,  <37.187878, 33.927536, 26.980549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821838, 33.766376, 26.973886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075846, -0.131402, -0.988423,
		0.396043, -0.905764, 0.150804,
		-0.915094, -0.402896, -0.016658,
		36.547310, 33.645508, 26.968889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243214, 33.357944, 26.421959>,  <37.187878, 33.927536, 26.980549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243214, 33.357944, 26.421959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852627, 33.417049, 26.484787>,  <36.618275, 33.452511, 26.522484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852627, 33.417049, 26.484787>,  <37.243214, 33.357944, 26.421959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852627, 33.417049, 26.484787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196708, -0.311812, -0.929559,
		-0.088371, -0.938585, 0.333540,
		-0.976472, 0.147756, 0.157072,
		36.559685, 33.461376, 26.531908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826096, 32.762383, 25.995325>,  <37.243214, 33.357944, 26.421959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826096, 32.762383, 25.995325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581955, 33.071236, 26.066071>,  <36.435471, 33.256546, 26.108519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581955, 33.071236, 26.066071>,  <36.826096, 32.762383, 25.995325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581955, 33.071236, 26.066071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345277, -0.058379, -0.936684,
		-0.712917, -0.632777, 0.302230,
		-0.610355, 0.772131, 0.176864,
		36.398849, 33.302876, 26.119129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214649, 32.593529, 25.668442>,  <36.826096, 32.762383, 25.995325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214649, 32.593529, 25.668442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218925, 32.993462, 25.674334>,  <36.221489, 33.233421, 25.677868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218925, 32.993462, 25.674334>,  <36.214649, 32.593529, 25.668442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218925, 32.993462, 25.674334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317566, 0.017361, -0.948077,
		-0.948176, 0.005455, 0.317699,
		0.010688, 0.999834, 0.014728,
		36.222130, 33.293411, 25.678753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458549, 32.767521, 25.463480>,  <36.214649, 32.593529, 25.668442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458549, 32.767521, 25.463480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689041, 33.088696, 25.402483>,  <35.827335, 33.281399, 25.365885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689041, 33.088696, 25.402483>,  <35.458549, 32.767521, 25.463480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689041, 33.088696, 25.402483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428822, 0.138197, -0.892756,
		-0.695749, 0.579828, 0.423949,
		0.576234, 0.802933, -0.152493,
		35.861912, 33.329575, 25.356735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042885, 33.308266, 25.269274>,  <35.458549, 32.767521, 25.463480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042885, 33.308266, 25.269274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399429, 33.430454, 25.135307>,  <35.613354, 33.503769, 25.054928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399429, 33.430454, 25.135307>,  <35.042885, 33.308266, 25.269274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399429, 33.430454, 25.135307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397867, 0.173165, -0.900953,
		-0.217220, 0.936323, 0.275889,
		0.891357, 0.305472, -0.334917,
		35.666836, 33.522095, 25.034832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862911, 33.732201, 24.641710>,  <35.042885, 33.308266, 25.269274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862911, 33.732201, 24.641710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260811, 33.717064, 24.603676>,  <35.499550, 33.707981, 24.580854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260811, 33.717064, 24.603676>,  <34.862911, 33.732201, 24.641710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260811, 33.717064, 24.603676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073133, 0.387057, -0.919151,
		0.071590, 0.921279, 0.382257,
		0.994749, -0.037846, -0.095085,
		35.559235, 33.705711, 24.575150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107605, 34.383820, 24.394777>,  <34.862911, 33.732201, 24.641710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107605, 34.383820, 24.394777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.394257, 34.122963, 24.295862>,  <35.566250, 33.966450, 24.236513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.394257, 34.122963, 24.295862>,  <35.107605, 34.383820, 24.394777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394257, 34.122963, 24.295862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006631, 0.348176, -0.937406,
		0.697419, 0.673416, 0.245190,
		0.716633, -0.652139, -0.247290,
		35.609245, 33.927322, 24.221676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589924, 34.738884, 24.005562>,  <35.107605, 34.383820, 24.394777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589924, 34.738884, 24.005562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640347, 34.360718, 23.885366>,  <35.670601, 34.133816, 23.813250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640347, 34.360718, 23.885366>,  <35.589924, 34.738884, 24.005562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640347, 34.360718, 23.885366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064915, 0.310116, -0.948480,
		0.989896, 0.100061, 0.100465,
		0.126061, -0.945418, -0.300487,
		35.678165, 34.077091, 23.795219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003147, 34.814919, 23.491020>,  <35.589924, 34.738884, 24.005562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003147, 34.814919, 23.491020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861294, 34.446564, 23.426270>,  <35.776184, 34.225552, 23.387419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861294, 34.446564, 23.426270>,  <36.003147, 34.814919, 23.491020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861294, 34.446564, 23.426270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014446, 0.178506, -0.983833,
		0.934896, -0.346557, -0.076607,
		-0.354629, -0.920887, -0.161878,
		35.754906, 34.170296, 23.377707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424023, 34.556423, 23.019281>,  <36.003147, 34.814919, 23.491020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424023, 34.556423, 23.019281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068275, 34.374790, 22.997974>,  <35.854828, 34.265812, 22.985191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068275, 34.374790, 22.997974>,  <36.424023, 34.556423, 23.019281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068275, 34.374790, 22.997974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043160, 0.199370, -0.978973,
		0.455153, -0.868367, -0.196911,
		-0.889367, -0.454081, -0.053265,
		35.801464, 34.238567, 22.981995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064838, 34.171726, 23.059071>,  <36.424023, 34.556423, 23.019281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064838, 34.171726, 23.059071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454815, 34.259243, 23.043001>,  <37.688801, 34.311752, 23.033360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454815, 34.259243, 23.043001>,  <37.064838, 34.171726, 23.059071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454815, 34.259243, 23.043001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061069, -0.089602, 0.994104,
		0.213902, -0.971649, -0.100718,
		0.974944, 0.218792, -0.040171,
		37.747299, 34.324879, 23.030951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357586, 33.665230, 23.354713>,  <37.064838, 34.171726, 23.059071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357586, 33.665230, 23.354713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612759, 33.971069, 23.391460>,  <37.765862, 34.154572, 23.413507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612759, 33.971069, 23.391460>,  <37.357586, 33.665230, 23.354713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612759, 33.971069, 23.391460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112926, -0.210879, 0.970967,
		0.761770, -0.609035, -0.220868,
		0.637929, 0.764596, 0.091865,
		37.804138, 34.200447, 23.419020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821259, 33.427505, 23.912741>,  <37.357586, 33.665230, 23.354713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821259, 33.427505, 23.912741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911713, 33.813774, 23.861618>,  <37.965984, 34.045536, 23.830944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911713, 33.813774, 23.861618>,  <37.821259, 33.427505, 23.912741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911713, 33.813774, 23.861618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095234, 0.108661, 0.989507,
		0.969429, -0.235937, -0.067393,
		0.226138, 0.965674, -0.127808,
		37.979553, 34.103477, 23.823277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371284, 33.440426, 24.436396>,  <37.821259, 33.427505, 23.912741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371284, 33.440426, 24.436396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295506, 33.819862, 24.334980>,  <38.250038, 34.047523, 24.274130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295506, 33.819862, 24.334980>,  <38.371284, 33.440426, 24.436396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295506, 33.819862, 24.334980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184183, 0.287963, 0.939763,
		0.964461, 0.131342, -0.229269,
		-0.189452, 0.948592, -0.253538,
		38.238670, 34.104439, 24.258919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982853, 33.816360, 24.363539>,  <38.371284, 33.440426, 24.436396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982853, 33.816360, 24.363539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667633, 34.043945, 24.457575>,  <38.478500, 34.180496, 24.513996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667633, 34.043945, 24.457575>,  <38.982853, 33.816360, 24.363539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667633, 34.043945, 24.457575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376703, 0.143633, 0.915131,
		0.486908, 0.809723, -0.327518,
		-0.788045, 0.568962, 0.235089,
		38.431221, 34.214634, 24.528101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231987, 34.270401, 24.776558>,  <38.982853, 33.816360, 24.363539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231987, 34.270401, 24.776558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838375, 34.320107, 24.827532>,  <38.602207, 34.349930, 24.858116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838375, 34.320107, 24.827532>,  <39.231987, 34.270401, 24.776558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838375, 34.320107, 24.827532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151674, 0.210756, 0.965700,
		0.093146, 0.969608, -0.226238,
		-0.984032, 0.124265, 0.127433,
		38.543167, 34.357388, 24.865763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141041, 34.993271, 25.077257>,  <39.231987, 34.270401, 24.776558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141041, 34.993271, 25.077257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831902, 34.763336, 25.184795>,  <38.646420, 34.625378, 25.249319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831902, 34.763336, 25.184795>,  <39.141041, 34.993271, 25.077257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831902, 34.763336, 25.184795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279089, 0.072602, 0.957517,
		-0.569930, 0.815044, 0.104319,
		-0.772845, -0.574832, 0.268848,
		38.600048, 34.590885, 25.265450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837791, 35.332161, 25.584433>,  <39.141041, 34.993271, 25.077257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837791, 35.332161, 25.584433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698067, 34.959869, 25.627741>,  <38.614231, 34.736496, 25.653727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698067, 34.959869, 25.627741>,  <38.837791, 35.332161, 25.584433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698067, 34.959869, 25.627741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117135, 0.071267, 0.990556,
		-0.929655, 0.358698, 0.084126,
		-0.349315, -0.930729, 0.108270,
		38.593273, 34.680649, 25.660221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380676, 35.333725, 26.207682>,  <38.837791, 35.332161, 25.584433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380676, 35.333725, 26.207682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506023, 34.958313, 26.149767>,  <38.581230, 34.733067, 26.115017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506023, 34.958313, 26.149767>,  <38.380676, 35.333725, 26.207682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506023, 34.958313, 26.149767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220826, -0.076270, 0.972327,
		-0.923600, -0.336668, 0.183352,
		0.313367, -0.938529, -0.144788,
		38.600033, 34.676754, 26.106331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151390, 35.027489, 26.831696>,  <38.380676, 35.333725, 26.207682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151390, 35.027489, 26.831696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427544, 34.783077, 26.676765>,  <38.593235, 34.636429, 26.583807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427544, 34.783077, 26.676765>,  <38.151390, 35.027489, 26.831696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427544, 34.783077, 26.676765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219364, -0.333375, 0.916919,
		-0.689389, -0.717987, -0.096117,
		0.690378, -0.611029, -0.387325,
		38.634659, 34.599770, 26.560568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989052, 34.209660, 26.938557>,  <38.151390, 35.027489, 26.831696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989052, 34.209660, 26.938557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377159, 34.270866, 26.863541>,  <38.610023, 34.307590, 26.818531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377159, 34.270866, 26.863541>,  <37.989052, 34.209660, 26.938557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377159, 34.270866, 26.863541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221156, -0.245584, 0.943811,
		0.098360, -0.957223, -0.272122,
		0.970266, 0.153015, -0.187540,
		38.668240, 34.316772, 26.807280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279842, 33.720596, 27.325581>,  <37.989052, 34.209660, 26.938557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279842, 33.720596, 27.325581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598854, 33.949867, 27.250305>,  <38.790260, 34.087429, 27.205141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598854, 33.949867, 27.250305>,  <38.279842, 33.720596, 27.325581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598854, 33.949867, 27.250305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377367, -0.230599, 0.896894,
		0.470687, -0.786312, -0.400209,
		0.797526, 0.573182, -0.188187,
		38.838112, 34.121822, 27.193850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862766, 33.288731, 27.433722>,  <38.279842, 33.720596, 27.325581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862766, 33.288731, 27.433722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009804, 33.659100, 27.468451>,  <39.098026, 33.881321, 27.489288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009804, 33.659100, 27.468451>,  <38.862766, 33.288731, 27.433722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009804, 33.659100, 27.468451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280399, -0.199365, 0.938952,
		0.886707, -0.320811, -0.332914,
		0.367597, 0.925924, 0.086823,
		39.120083, 33.936878, 27.494497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363018, 33.098377, 27.924589>,  <38.862766, 33.288731, 27.433722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363018, 33.098377, 27.924589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351566, 33.496040, 27.882965>,  <39.344696, 33.734638, 27.857990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351566, 33.496040, 27.882965>,  <39.363018, 33.098377, 27.924589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351566, 33.496040, 27.882965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351721, 0.107467, 0.929916,
		0.935667, -0.009974, -0.352744,
		-0.028633, 0.994159, -0.104061,
		39.342976, 33.794289, 27.851748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.506996, 37.387337, 22.464561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166023, 37.184155, 22.415033>,  <37.961437, 37.062244, 22.385317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166023, 37.184155, 22.415033>,  <38.506996, 37.387337, 22.464561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166023, 37.184155, 22.415033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160994, -0.029702, -0.986508,
		0.497429, -0.860868, 0.107097,
		-0.852435, -0.507960, -0.123820,
		37.910294, 37.031765, 22.377888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643673, 36.762478, 22.019716>,  <38.506996, 37.387337, 22.464561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643673, 36.762478, 22.019716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255020, 36.854240, 21.996735>,  <38.021828, 36.909298, 21.982944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255020, 36.854240, 21.996735>,  <38.643673, 36.762478, 22.019716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255020, 36.854240, 21.996735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042397, -0.070047, -0.996642,
		-0.232661, -0.970807, 0.058334,
		-0.971633, 0.229406, -0.057456,
		37.963531, 36.923061, 21.979498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489994, 36.367100, 21.337236>,  <38.643673, 36.762478, 22.019716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489994, 36.367100, 21.337236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173153, 36.599758, 21.411268>,  <37.983047, 36.739353, 21.455687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173153, 36.599758, 21.411268>,  <38.489994, 36.367100, 21.337236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173153, 36.599758, 21.411268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196061, 0.044696, -0.979572,
		-0.578037, -0.812213, 0.078634,
		-0.792107, 0.581646, 0.185079,
		37.935520, 36.774250, 21.466791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901291, 36.105152, 20.958424>,  <38.489994, 36.367100, 21.337236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901291, 36.105152, 20.958424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796295, 36.478889, 21.054840>,  <37.733299, 36.703133, 21.112690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796295, 36.478889, 21.054840>,  <37.901291, 36.105152, 20.958424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796295, 36.478889, 21.054840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253220, 0.174344, -0.951569,
		-0.931117, -0.310814, 0.190831,
		-0.262491, 0.934344, 0.241039,
		37.717548, 36.759193, 21.127151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304100, 36.228848, 20.528622>,  <37.901291, 36.105152, 20.958424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304100, 36.228848, 20.528622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421631, 36.600311, 20.619175>,  <37.492149, 36.823189, 20.673506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421631, 36.600311, 20.619175>,  <37.304100, 36.228848, 20.528622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421631, 36.600311, 20.619175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104563, 0.266643, -0.958107,
		-0.950122, 0.257846, 0.175450,
		0.293827, 0.928664, 0.226382,
		37.509777, 36.878910, 20.687090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821716, 36.616962, 20.202583>,  <37.304100, 36.228848, 20.528622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821716, 36.616962, 20.202583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.152885, 36.836342, 20.249487>,  <37.351585, 36.967968, 20.277630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.152885, 36.836342, 20.249487>,  <36.821716, 36.616962, 20.202583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152885, 36.836342, 20.249487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063813, 0.299839, -0.951853,
		-0.557201, 0.780577, 0.283242,
		0.827922, 0.548448, 0.117259,
		37.401260, 37.000877, 20.284664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650112, 37.208435, 19.954706>,  <36.821716, 36.616962, 20.202583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650112, 37.208435, 19.954706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048538, 37.241196, 19.941204>,  <37.287594, 37.260853, 19.933104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048538, 37.241196, 19.941204>,  <36.650112, 37.208435, 19.954706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048538, 37.241196, 19.941204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061507, 0.365185, -0.928901,
		-0.063756, 0.927325, 0.368787,
		0.996068, 0.081906, -0.033754,
		37.347359, 37.265766, 19.931078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765202, 37.892033, 19.702312>,  <36.650112, 37.208435, 19.954706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765202, 37.892033, 19.702312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104237, 37.685036, 19.655344>,  <37.307659, 37.560837, 19.627163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104237, 37.685036, 19.655344>,  <36.765202, 37.892033, 19.702312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104237, 37.685036, 19.655344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042278, 0.286432, -0.957167,
		0.528963, 0.806322, 0.264656,
		0.847591, -0.517496, -0.117422,
		37.358513, 37.529785, 19.620117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161987, 38.292244, 19.246468>,  <36.765202, 37.892033, 19.702312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161987, 38.292244, 19.246468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.336441, 37.932453, 19.235661>,  <37.441113, 37.716579, 19.229177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.336441, 37.932453, 19.235661>,  <37.161987, 38.292244, 19.246468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336441, 37.932453, 19.235661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276483, 0.162509, -0.947179,
		0.856354, 0.405630, 0.319566,
		0.436137, -0.899475, -0.027015,
		37.467281, 37.662609, 19.227556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857819, 38.343700, 18.855822>,  <37.161987, 38.292244, 19.246468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857819, 38.343700, 18.855822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745068, 37.962494, 18.811440>,  <37.677418, 37.733772, 18.784811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745068, 37.962494, 18.811440>,  <37.857819, 38.343700, 18.855822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745068, 37.962494, 18.811440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033877, 0.125457, -0.991520,
		0.958851, -0.275731, -0.067650,
		-0.281880, -0.953012, -0.110954,
		37.660503, 37.676590, 18.778152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312553, 38.055958, 18.262564>,  <37.857819, 38.343700, 18.855822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312553, 38.055958, 18.262564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999420, 37.809959, 18.300413>,  <37.811539, 37.662361, 18.323124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999420, 37.809959, 18.300413>,  <38.312553, 38.055958, 18.262564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999420, 37.809959, 18.300413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217799, 0.128373, -0.967514,
		0.582869, -0.778011, -0.234440,
		-0.782833, -0.614995, 0.094625,
		37.764572, 37.625462, 18.328800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362103, 37.301094, 17.932026>,  <38.312553, 38.055958, 18.262564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362103, 37.301094, 17.932026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980282, 37.418499, 17.952747>,  <37.751190, 37.488941, 17.965179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980282, 37.418499, 17.952747>,  <38.362103, 37.301094, 17.932026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980282, 37.418499, 17.952747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061692, -0.024532, -0.997794,
		-0.291598, -0.955639, 0.041525,
		-0.954550, 0.293517, 0.051802,
		37.693916, 37.506554, 17.968288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819645, 36.726761, 17.814442>,  <38.362103, 37.301094, 17.932026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819645, 36.726761, 17.814442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734608, 37.096588, 17.687962>,  <37.683586, 37.318485, 17.612074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734608, 37.096588, 17.687962>,  <37.819645, 36.726761, 17.814442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734608, 37.096588, 17.687962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284108, -0.251129, -0.925320,
		-0.934927, -0.286549, -0.209289,
		-0.212591, 0.924567, -0.316198,
		37.670830, 37.373959, 17.593102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787605, 36.042362, 17.482702>,  <37.819645, 36.726761, 17.814442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787605, 36.042362, 17.482702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.977200, 36.017334, 17.834024>,  <38.090958, 36.002316, 18.044817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.977200, 36.017334, 17.834024>,  <37.787605, 36.042362, 17.482702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977200, 36.017334, 17.834024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439287, -0.881279, 0.174283,
		0.763125, -0.468436, -0.445205,
		0.473990, -0.062573, 0.878304,
		38.119396, 35.998562, 18.097515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757080, 35.307980, 17.465872>,  <37.787605, 36.042362, 17.482702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757080, 35.307980, 17.465872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599720, 34.940292, 17.459188>,  <37.505302, 34.719681, 17.455179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599720, 34.940292, 17.459188>,  <37.757080, 35.307980, 17.465872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599720, 34.940292, 17.459188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140531, 0.042164, 0.989178,
		-0.908563, 0.391492, -0.145765,
		-0.393401, -0.919215, -0.016708,
		37.481701, 34.664528, 17.454176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211853, 35.400455, 17.868790>,  <37.757080, 35.307980, 17.465872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211853, 35.400455, 17.868790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.313690, 35.013718, 17.860865>,  <37.374790, 34.781673, 17.856110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.313690, 35.013718, 17.860865>,  <37.211853, 35.400455, 17.868790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313690, 35.013718, 17.860865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189371, -0.069936, 0.979412,
		-0.948327, -0.245595, -0.200897,
		0.254589, -0.966846, -0.019814,
		37.390068, 34.723663, 17.854921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709248, 35.066383, 18.383310>,  <37.211853, 35.400455, 17.868790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709248, 35.066383, 18.383310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.005653, 34.799568, 18.352451>,  <37.183498, 34.639477, 18.333935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.005653, 34.799568, 18.352451>,  <36.709248, 35.066383, 18.383310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005653, 34.799568, 18.352451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079226, -0.200940, 0.976395,
		-0.666797, -0.717412, -0.201747,
		0.741016, -0.667041, -0.077148,
		37.227959, 34.599457, 18.329308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559635, 34.535275, 18.785738>,  <36.709248, 35.066383, 18.383310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559635, 34.535275, 18.785738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952835, 34.471798, 18.748798>,  <37.188755, 34.433712, 18.726635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952835, 34.471798, 18.748798>,  <36.559635, 34.535275, 18.785738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952835, 34.471798, 18.748798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028668, -0.364139, 0.930903,
		-0.181355, -0.917725, -0.353399,
		0.983000, -0.158693, -0.092348,
		37.247734, 34.424191, 18.721094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725716, 33.876408, 19.153948>,  <36.559635, 34.535275, 18.785738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725716, 33.876408, 19.153948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058567, 34.095627, 19.120018>,  <37.258278, 34.227158, 19.099659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058567, 34.095627, 19.120018>,  <36.725716, 33.876408, 19.153948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058567, 34.095627, 19.120018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196745, -0.148732, 0.969108,
		0.518504, -0.823115, -0.231591,
		0.832132, 0.548051, -0.084826,
		37.308208, 34.260040, 19.094570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155422, 33.412701, 19.412857>,  <36.725716, 33.876408, 19.153948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155422, 33.412701, 19.412857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373680, 33.747906, 19.412872>,  <37.504635, 33.949028, 19.412882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373680, 33.747906, 19.412872>,  <37.155422, 33.412701, 19.412857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373680, 33.747906, 19.412872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205367, -0.133760, 0.969501,
		0.812462, -0.528998, -0.245086,
		0.545647, 0.838015, 0.000036,
		37.537373, 33.999310, 19.412884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806824, 33.320686, 19.675142>,  <37.155422, 33.412701, 19.412857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806824, 33.320686, 19.675142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735588, 33.701649, 19.774109>,  <37.692844, 33.930225, 19.833488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735588, 33.701649, 19.774109>,  <37.806824, 33.320686, 19.675142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735588, 33.701649, 19.774109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220917, -0.206318, 0.953220,
		0.958895, 0.224419, -0.173658,
		-0.178092, 0.952402, 0.247415,
		37.682159, 33.987370, 19.848333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320549, 33.513161, 20.117458>,  <37.806824, 33.320686, 19.675142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320549, 33.513161, 20.117458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054535, 33.806641, 20.173201>,  <37.894928, 33.982727, 20.206646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054535, 33.806641, 20.173201>,  <38.320549, 33.513161, 20.117458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054535, 33.806641, 20.173201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136356, -0.064174, 0.988579,
		0.734262, 0.676439, -0.057367,
		-0.665032, 0.733698, 0.139357,
		37.855026, 34.026749, 20.215008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644974, 33.874664, 20.569775>,  <38.320549, 33.513161, 20.117458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644974, 33.874664, 20.569775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278496, 34.033760, 20.589334>,  <38.058609, 34.129219, 20.601070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278496, 34.033760, 20.589334>,  <38.644974, 33.874664, 20.569775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278496, 34.033760, 20.589334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116706, 0.148091, 0.982064,
		0.383366, 0.905467, -0.182098,
		-0.916193, 0.397742, 0.048900,
		38.003639, 34.153084, 20.604004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727993, 34.564430, 20.864864>,  <38.644974, 33.874664, 20.569775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727993, 34.564430, 20.864864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362621, 34.426842, 20.951883>,  <38.143398, 34.344288, 21.004095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362621, 34.426842, 20.951883>,  <38.727993, 34.564430, 20.864864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362621, 34.426842, 20.951883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157468, 0.194211, 0.968239,
		-0.375298, 0.918676, -0.123233,
		-0.913431, -0.343973, 0.217548,
		38.088593, 34.323650, 21.017147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370937, 35.180614, 21.239559>,  <38.727993, 34.564430, 20.864864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370937, 35.180614, 21.239559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181477, 34.835297, 21.309273>,  <38.067799, 34.628105, 21.351101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181477, 34.835297, 21.309273>,  <38.370937, 35.180614, 21.239559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181477, 34.835297, 21.309273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100468, 0.143632, 0.984518,
		-0.874964, 0.483827, 0.018703,
		-0.473651, -0.863297, 0.174282,
		38.039383, 34.576309, 21.361557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091022, 35.359703, 21.798708>,  <38.370937, 35.180614, 21.239559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091022, 35.359703, 21.798708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043339, 34.962578, 21.794443>,  <38.014729, 34.724304, 21.791883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043339, 34.962578, 21.794443>,  <38.091022, 35.359703, 21.798708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043339, 34.962578, 21.794443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014548, -0.008991, 0.999854,
		-0.992763, 0.119346, -0.013371,
		-0.119208, -0.992812, -0.010662,
		38.007576, 34.664734, 21.791245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439411, 35.179256, 22.074854>,  <38.091022, 35.359703, 21.798708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439411, 35.179256, 22.074854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658092, 34.849957, 22.136017>,  <37.789299, 34.652378, 22.172714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658092, 34.849957, 22.136017>,  <37.439411, 35.179256, 22.074854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658092, 34.849957, 22.136017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221686, 0.033788, 0.974532,
		-0.807450, -0.566673, -0.164031,
		0.546699, -0.823250, 0.152906,
		37.822102, 34.602982, 22.181889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043953, 34.705849, 22.552011>,  <37.439411, 35.179256, 22.074854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043953, 34.705849, 22.552011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426846, 34.591408, 22.569233>,  <37.656582, 34.522743, 22.579567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426846, 34.591408, 22.569233>,  <37.043953, 34.705849, 22.552011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426846, 34.591408, 22.569233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039669, 0.017622, 0.999058,
		-0.286594, -0.958036, 0.005519,
		0.957231, -0.286105, 0.043055,
		37.714016, 34.505577, 22.582150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451279, 34.202950, 22.353531>,  <37.043953, 34.705849, 22.552011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451279, 34.202950, 22.353531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068462, 34.190548, 22.468853>,  <35.838772, 34.183109, 22.538046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068462, 34.190548, 22.468853>,  <36.451279, 34.202950, 22.353531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068462, 34.190548, 22.468853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289644, 0.148955, -0.945473,
		-0.013638, -0.988358, -0.151533,
		-0.957037, -0.030997, 0.288304,
		35.781353, 34.181248, 22.555344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103607, 33.852879, 21.839912>,  <36.451279, 34.202950, 22.353531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103607, 33.852879, 21.839912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801067, 34.020088, 22.041185>,  <35.619545, 34.120415, 22.161949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801067, 34.020088, 22.041185>,  <36.103607, 33.852879, 21.839912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801067, 34.020088, 22.041185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503143, 0.119844, -0.855853,
		-0.418070, -0.900496, 0.119682,
		-0.756350, 0.418023, 0.503182,
		35.574162, 34.145496, 22.192141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387508, 33.544510, 21.604322>,  <36.103607, 33.852879, 21.839912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387508, 33.544510, 21.604322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299240, 33.903126, 21.757956>,  <35.246277, 34.118294, 21.850136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299240, 33.903126, 21.757956>,  <35.387508, 33.544510, 21.604322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299240, 33.903126, 21.757956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482967, 0.241681, -0.841625,
		-0.847375, -0.371226, 0.379666,
		-0.220675, 0.896539, 0.384084,
		35.233036, 34.172089, 21.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766922, 33.652058, 21.347467>,  <35.387508, 33.544510, 21.604322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766922, 33.652058, 21.347467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863270, 34.027702, 21.445486>,  <34.921078, 34.253090, 21.504297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863270, 34.027702, 21.445486>,  <34.766922, 33.652058, 21.347467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863270, 34.027702, 21.445486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279709, 0.308936, -0.909022,
		-0.929378, 0.150418, 0.337093,
		0.240873, 0.939113, 0.245045,
		34.935532, 34.309437, 21.518999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183720, 34.107552, 21.271626>,  <34.766922, 33.652058, 21.347467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183720, 34.107552, 21.271626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496140, 34.356457, 21.250643>,  <34.683594, 34.505798, 21.238052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496140, 34.356457, 21.250643>,  <34.183720, 34.107552, 21.271626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496140, 34.356457, 21.250643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366680, 0.389007, -0.845115,
		-0.505474, 0.679314, 0.532004,
		0.781052, 0.622259, -0.052458,
		34.730453, 34.543133, 21.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804821, 34.720421, 21.015184>,  <34.183720, 34.107552, 21.271626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804821, 34.720421, 21.015184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198345, 34.762688, 20.957287>,  <34.434460, 34.788048, 20.922548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198345, 34.762688, 20.957287>,  <33.804821, 34.720421, 21.015184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198345, 34.762688, 20.957287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174052, 0.370979, -0.912184,
		-0.042690, 0.922610, 0.383364,
		0.983811, 0.105667, -0.144745,
		34.493488, 34.794388, 20.913864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914974, 35.417725, 20.848288>,  <33.804821, 34.720421, 21.015184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914974, 35.417725, 20.848288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206093, 35.204826, 20.675299>,  <34.380764, 35.077087, 20.571507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206093, 35.204826, 20.675299>,  <33.914974, 35.417725, 20.848288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206093, 35.204826, 20.675299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276313, 0.349581, -0.895234,
		0.627668, 0.771043, 0.107357,
		0.727794, -0.532245, -0.432470,
		34.424431, 35.045155, 20.545557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831882, 36.134933, 20.899563>,  <33.914974, 35.417725, 20.848288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831882, 36.134933, 20.899563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.447498, 36.234226, 20.850683>,  <33.216869, 36.293800, 20.821356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.447498, 36.234226, 20.850683>,  <33.831882, 36.134933, 20.899563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447498, 36.234226, 20.850683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190000, -0.270990, 0.943644,
		0.201128, 0.930024, 0.307575,
		-0.960962, 0.248233, -0.122200,
		33.159210, 36.308697, 20.814024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619263, 36.485844, 21.543610>,  <33.831882, 36.134933, 20.899563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619263, 36.485844, 21.543610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271210, 36.374535, 21.380919>,  <33.062378, 36.307751, 21.283304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271210, 36.374535, 21.380919>,  <33.619263, 36.485844, 21.543610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271210, 36.374535, 21.380919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344930, -0.245561, 0.905937,
		-0.351973, 0.928582, 0.117688,
		-0.870137, -0.278271, -0.406727,
		33.010170, 36.291054, 21.258900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008514, 36.762432, 21.938461>,  <33.619263, 36.485844, 21.543610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008514, 36.762432, 21.938461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895470, 36.430485, 21.746023>,  <32.827644, 36.231316, 21.630560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895470, 36.430485, 21.746023>,  <33.008514, 36.762432, 21.938461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895470, 36.430485, 21.746023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292677, -0.403025, 0.867128,
		-0.913494, 0.385865, -0.128985,
		-0.282610, -0.829867, -0.481095,
		32.810688, 36.181526, 21.601694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324707, 36.663754, 22.175081>,  <33.008514, 36.762432, 21.938461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324707, 36.663754, 22.175081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467152, 36.318275, 22.032415>,  <32.552620, 36.110989, 21.946815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467152, 36.318275, 22.032415>,  <32.324707, 36.663754, 22.175081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467152, 36.318275, 22.032415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190889, -0.440879, 0.877033,
		-0.914737, -0.244242, -0.321874,
		0.356115, -0.863697, -0.356665,
		32.573986, 36.059166, 21.925415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915302, 36.277100, 22.555372>,  <32.324707, 36.663754, 22.175081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915302, 36.277100, 22.555372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170776, 35.987720, 22.450529>,  <32.324059, 35.814091, 22.387623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170776, 35.987720, 22.450529>,  <31.915302, 36.277100, 22.555372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170776, 35.987720, 22.450529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002269, -0.338861, 0.940834,
		-0.769466, -0.601489, -0.214783,
		0.638683, -0.723453, -0.262107,
		32.362381, 35.770683, 22.371897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722055, 35.662609, 22.924768>,  <31.915302, 36.277100, 22.555372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722055, 35.662609, 22.924768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107025, 35.596889, 22.838285>,  <32.338005, 35.557457, 22.786396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107025, 35.596889, 22.838285>,  <31.722055, 35.662609, 22.924768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107025, 35.596889, 22.838285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100341, -0.524689, 0.845360,
		-0.252332, -0.835290, -0.488488,
		0.962425, -0.164296, -0.216209,
		32.395752, 35.547600, 22.773422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882114, 34.949135, 23.109505>,  <31.722055, 35.662609, 22.924768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882114, 34.949135, 23.109505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230270, 35.145241, 23.091352>,  <32.439163, 35.262905, 23.080462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230270, 35.145241, 23.091352>,  <31.882114, 34.949135, 23.109505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230270, 35.145241, 23.091352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297871, -0.450943, 0.841382,
		0.392036, -0.745849, -0.538533,
		0.870391, 0.490265, -0.045381,
		32.491386, 35.292320, 23.077738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.356869, 39.020012, 18.445894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.412025, 38.623875, 18.440115>,  <35.445118, 38.386192, 18.436647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.412025, 38.623875, 18.440115>,  <35.356869, 39.020012, 18.445894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412025, 38.623875, 18.440115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209801, 0.014949, 0.977630,
		-0.967972, -0.137836, 0.209836,
		0.137889, -0.990342, -0.014448,
		35.453392, 38.326771, 18.435780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716705, 38.742886, 18.885357>,  <35.356869, 39.020012, 18.445894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716705, 38.742886, 18.885357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.089401, 38.599560, 18.861774>,  <35.313019, 38.513565, 18.847624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.089401, 38.599560, 18.861774>,  <34.716705, 38.742886, 18.885357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089401, 38.599560, 18.861774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080156, 0.044581, 0.995785,
		-0.354175, -0.932536, 0.070259,
		0.931738, -0.358314, -0.058958,
		35.368923, 38.492065, 18.844088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831783, 38.135693, 19.279015>,  <34.716705, 38.742886, 18.885357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831783, 38.135693, 19.279015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.197628, 38.296387, 19.260744>,  <35.417137, 38.392803, 19.249783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.197628, 38.296387, 19.260744>,  <34.831783, 38.135693, 19.279015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197628, 38.296387, 19.260744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039723, 0.201703, 0.978641,
		0.402372, -0.893265, 0.200439,
		0.914614, 0.401739, -0.045677,
		35.472012, 38.416908, 19.247042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162758, 37.754108, 19.763432>,  <34.831783, 38.135693, 19.279015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162758, 37.754108, 19.763432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.405605, 38.066563, 19.705143>,  <35.551315, 38.254036, 19.670170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.405605, 38.066563, 19.705143>,  <35.162758, 37.754108, 19.763432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405605, 38.066563, 19.705143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120003, 0.091148, 0.988580,
		0.785496, -0.617674, -0.038401,
		0.607120, 0.781134, -0.145719,
		35.587742, 38.300903, 19.661427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665604, 37.595650, 20.090393>,  <35.162758, 37.754108, 19.763432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665604, 37.595650, 20.090393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654514, 37.995060, 20.071758>,  <35.647861, 38.234707, 20.060577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654514, 37.995060, 20.071758>,  <35.665604, 37.595650, 20.090393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654514, 37.995060, 20.071758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029116, 0.047390, 0.998452,
		0.999191, 0.026322, -0.030387,
		-0.027722, 0.998529, -0.046586,
		35.646198, 38.294621, 20.057783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192719, 37.747025, 20.615797>,  <35.665604, 37.595650, 20.090393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192719, 37.747025, 20.615797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.978512, 38.076534, 20.541380>,  <35.849987, 38.274242, 20.496729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.978512, 38.076534, 20.541380>,  <36.192719, 37.747025, 20.615797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978512, 38.076534, 20.541380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029145, 0.202136, 0.978924,
		0.844022, 0.529651, -0.084238,
		-0.535516, 0.823778, -0.186044,
		35.817856, 38.323669, 20.485567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458221, 38.175804, 21.091726>,  <36.192719, 37.747025, 20.615797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458221, 38.175804, 21.091726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.094139, 38.301571, 20.983902>,  <35.875690, 38.377029, 20.919207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.094139, 38.301571, 20.983902>,  <36.458221, 38.175804, 21.091726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094139, 38.301571, 20.983902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223875, 0.174052, 0.958950,
		0.348426, 0.933193, -0.088034,
		-0.910208, 0.314415, -0.269563,
		35.821075, 38.395897, 20.903032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318420, 38.808018, 21.598312>,  <36.458221, 38.175804, 21.091726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318420, 38.808018, 21.598312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964226, 38.716312, 21.436642>,  <35.751709, 38.661289, 21.339640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964226, 38.716312, 21.436642>,  <36.318420, 38.808018, 21.598312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964226, 38.716312, 21.436642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438716, 0.125832, 0.889772,
		-0.153135, 0.965196, -0.212004,
		-0.885482, -0.229265, -0.404177,
		35.698582, 38.647533, 21.315388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937759, 39.378120, 21.732244>,  <36.318420, 38.808018, 21.598312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937759, 39.378120, 21.732244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679573, 39.076546, 21.683327>,  <35.524662, 38.895603, 21.653976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679573, 39.076546, 21.683327>,  <35.937759, 39.378120, 21.732244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679573, 39.076546, 21.683327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408153, 0.205141, 0.889566,
		-0.645585, 0.624102, -0.440132,
		-0.645469, -0.753932, -0.122293,
		35.485931, 38.850365, 21.646639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382011, 39.656456, 22.041096>,  <35.937759, 39.378120, 21.732244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382011, 39.656456, 22.041096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301800, 39.264824, 22.027342>,  <35.253674, 39.029842, 22.019089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301800, 39.264824, 22.027342>,  <35.382011, 39.656456, 22.041096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301800, 39.264824, 22.027342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364142, 0.041906, 0.930400,
		-0.909499, 0.199095, -0.364929,
		-0.200531, -0.979083, -0.034386,
		35.241642, 38.971100, 22.017027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807198, 39.555485, 22.421007>,  <35.382011, 39.656456, 22.041096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807198, 39.555485, 22.421007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952885, 39.183010, 22.427166>,  <35.040298, 38.959526, 22.430861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952885, 39.183010, 22.427166>,  <34.807198, 39.555485, 22.421007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952885, 39.183010, 22.427166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117002, -0.029350, 0.992698,
		-0.923934, -0.363362, -0.119641,
		0.364220, -0.931186, 0.015397,
		35.062149, 38.903656, 22.431786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368832, 39.124187, 22.693209>,  <34.807198, 39.555485, 22.421007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368832, 39.124187, 22.693209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.719696, 38.948154, 22.770056>,  <34.930214, 38.842533, 22.816164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.719696, 38.948154, 22.770056>,  <34.368832, 39.124187, 22.693209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719696, 38.948154, 22.770056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213611, 0.000708, 0.976919,
		-0.430061, -0.897957, -0.093386,
		0.877164, -0.440083, 0.192118,
		34.982845, 38.816132, 22.827692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533089, 39.127186, 22.834198>,  <34.368832, 39.124187, 22.693209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533089, 39.127186, 22.834198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.255730, 39.399090, 22.929804>,  <33.089314, 39.562233, 22.987167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.255730, 39.399090, 22.929804>,  <33.533089, 39.127186, 22.834198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255730, 39.399090, 22.929804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037096, 0.297590, -0.953973,
		-0.719603, -0.670346, -0.181131,
		-0.693394, 0.679762, 0.239013,
		33.047710, 39.603020, 23.001509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100880, 39.113842, 22.263969>,  <33.533089, 39.127186, 22.834198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100880, 39.113842, 22.263969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.000446, 39.451523, 22.453403>,  <32.940186, 39.654133, 22.567064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.000446, 39.451523, 22.453403>,  <33.100880, 39.113842, 22.263969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000446, 39.451523, 22.453403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200583, 0.433259, -0.878666,
		-0.946955, -0.315610, 0.060549,
		-0.251082, 0.844202, 0.473583,
		32.925121, 39.704784, 22.595478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401848, 39.204151, 22.192732>,  <33.100880, 39.113842, 22.263969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401848, 39.204151, 22.192732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552883, 39.571148, 22.242754>,  <32.643505, 39.791344, 22.272768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552883, 39.571148, 22.242754>,  <32.401848, 39.204151, 22.192732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552883, 39.571148, 22.242754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299076, 0.248655, -0.921262,
		-0.876345, 0.310457, 0.368289,
		0.377590, 0.917490, 0.125057,
		32.666161, 39.846394, 22.280272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902731, 39.627621, 21.849104>,  <32.401848, 39.204151, 22.192732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902731, 39.627621, 21.849104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221489, 39.865227, 21.893106>,  <32.412743, 40.007790, 21.919508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221489, 39.865227, 21.893106>,  <31.902731, 39.627621, 21.849104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221489, 39.865227, 21.893106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223013, 0.458496, -0.860259,
		-0.561446, 0.661004, 0.497847,
		0.796896, 0.594016, 0.110008,
		32.460556, 40.043430, 21.926109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695919, 40.261009, 21.746660>,  <31.902731, 39.627621, 21.849104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695919, 40.261009, 21.746660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085182, 40.300350, 21.663431>,  <32.318741, 40.323956, 21.613493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085182, 40.300350, 21.663431>,  <31.695919, 40.261009, 21.746660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085182, 40.300350, 21.663431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230080, 0.437699, -0.869185,
		0.005584, 0.893726, 0.448579,
		0.973155, 0.098356, -0.208073,
		32.377129, 40.329857, 21.601009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664829, 40.747467, 21.248487>,  <31.695919, 40.261009, 21.746660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664829, 40.747467, 21.248487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019600, 40.570023, 21.196997>,  <32.232464, 40.463558, 21.166103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019600, 40.570023, 21.196997>,  <31.664829, 40.747467, 21.248487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019600, 40.570023, 21.196997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019226, 0.313895, -0.949263,
		0.461507, 0.839454, 0.286931,
		0.886928, -0.443608, -0.128726,
		32.285679, 40.436939, 21.158379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044609, 41.192093, 20.888771>,  <31.664829, 40.747467, 21.248487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044609, 41.192093, 20.888771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256012, 40.855328, 20.845209>,  <32.382854, 40.653267, 20.819073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256012, 40.855328, 20.845209>,  <32.044609, 41.192093, 20.888771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256012, 40.855328, 20.845209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168954, 0.230034, -0.958404,
		0.831945, 0.488126, 0.263820,
		0.528510, -0.841913, -0.108905,
		32.414566, 40.602753, 20.812538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633556, 41.325184, 20.449512>,  <32.044609, 41.192093, 20.888771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633556, 41.325184, 20.449512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.649418, 40.926277, 20.424561>,  <32.658936, 40.686935, 20.409590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.649418, 40.926277, 20.424561>,  <32.633556, 41.325184, 20.449512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649418, 40.926277, 20.424561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490758, 0.073818, -0.868163,
		0.870393, 0.003814, 0.492343,
		0.039655, -0.997264, -0.062379,
		32.661316, 40.627098, 20.405848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326195, 41.102139, 20.198277>,  <32.633556, 41.325184, 20.449512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326195, 41.102139, 20.198277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059208, 40.818275, 20.108053>,  <32.899017, 40.647957, 20.053919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059208, 40.818275, 20.108053>,  <33.326195, 41.102139, 20.198277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059208, 40.818275, 20.108053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327320, -0.007533, -0.944884,
		0.668846, -0.704505, 0.237313,
		-0.667464, -0.709659, -0.225560,
		32.858971, 40.605377, 20.040386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655201, 40.682453, 19.804781>,  <33.326195, 41.102139, 20.198277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655201, 40.682453, 19.804781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.275051, 40.581261, 19.732357>,  <33.046959, 40.520546, 19.688902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.275051, 40.581261, 19.732357>,  <33.655201, 40.682453, 19.804781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275051, 40.581261, 19.732357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204648, -0.070040, -0.976327,
		0.234311, -0.964933, 0.118336,
		-0.950377, -0.252981, -0.181061,
		32.989937, 40.505367, 19.678040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659199, 40.116627, 19.298698>,  <33.655201, 40.682453, 19.804781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659199, 40.116627, 19.298698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.292690, 40.273624, 19.266687>,  <33.072784, 40.367825, 19.247480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.292690, 40.273624, 19.266687>,  <33.659199, 40.116627, 19.298698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292690, 40.273624, 19.266687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061055, -0.060606, -0.996293,
		-0.395889, -0.917756, 0.031568,
		-0.916267, 0.392494, -0.080027,
		33.017811, 40.391373, 19.242680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311462, 39.616863, 18.964344>,  <33.659199, 40.116627, 19.298698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311462, 39.616863, 18.964344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.100075, 39.950912, 18.903284>,  <32.973244, 40.151340, 18.866648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.100075, 39.950912, 18.903284>,  <33.311462, 39.616863, 18.964344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100075, 39.950912, 18.903284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067005, -0.220277, -0.973133,
		-0.846307, -0.504038, 0.172366,
		-0.528464, 0.835119, -0.152649,
		32.941536, 40.201447, 18.857489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676437, 39.454716, 18.598661>,  <33.311462, 39.616863, 18.964344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676437, 39.454716, 18.598661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788410, 39.831581, 18.524935>,  <32.855595, 40.057701, 18.480700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788410, 39.831581, 18.524935>,  <32.676437, 39.454716, 18.598661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788410, 39.831581, 18.524935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113330, -0.158219, -0.980879,
		-0.953306, 0.295472, 0.062484,
		0.279936, 0.942159, -0.184317,
		32.872391, 40.114227, 18.469639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164116, 38.844677, 18.526869>,  <32.676437, 39.454716, 18.598661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164116, 38.844677, 18.526869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.998920, 38.531315, 18.341089>,  <32.899803, 38.343296, 18.229622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.998920, 38.531315, 18.341089>,  <33.164116, 38.844677, 18.526869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998920, 38.531315, 18.341089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079600, -0.539069, 0.838492,
		-0.907253, 0.309313, 0.284987,
		-0.412984, -0.783409, -0.464451,
		32.875027, 38.296291, 18.201754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737064, 38.541420, 19.087301>,  <33.164116, 38.844677, 18.526869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737064, 38.541420, 19.087301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775414, 38.259686, 18.805958>,  <32.798424, 38.090645, 18.637152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775414, 38.259686, 18.805958>,  <32.737064, 38.541420, 19.087301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775414, 38.259686, 18.805958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077037, -0.709746, 0.700233,
		-0.992408, -0.012951, -0.122307,
		0.095875, -0.704338, -0.703360,
		32.804176, 38.048386, 18.594950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096546, 38.112946, 19.072857>,  <32.737064, 38.541420, 19.087301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096546, 38.112946, 19.072857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433262, 37.923668, 18.968950>,  <32.635292, 37.810101, 18.906607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433262, 37.923668, 18.968950>,  <32.096546, 38.112946, 19.072857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433262, 37.923668, 18.968950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129942, -0.644703, 0.753308,
		-0.523932, -0.600373, -0.604192,
		0.841790, -0.473193, -0.259767,
		32.685799, 37.781708, 18.891020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015388, 37.439205, 19.191229>,  <32.096546, 38.112946, 19.072857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015388, 37.439205, 19.191229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.413921, 37.442356, 19.157166>,  <32.653042, 37.444248, 19.136726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.413921, 37.442356, 19.157166>,  <32.015388, 37.439205, 19.191229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413921, 37.442356, 19.157166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079481, -0.452924, 0.888000,
		-0.031575, -0.891515, -0.451890,
		0.996336, 0.007879, -0.085159,
		32.712822, 37.444721, 19.131618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084824, 36.761909, 19.195889>,  <32.015388, 37.439205, 19.191229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084824, 36.761909, 19.195889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.431999, 36.934437, 19.294395>,  <32.640305, 37.037952, 19.353498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.431999, 36.934437, 19.294395>,  <32.084824, 36.761909, 19.195889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431999, 36.934437, 19.294395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029724, -0.540053, 0.841106,
		0.495780, -0.722709, -0.481554,
		0.867939, 0.431318, 0.246266,
		32.692383, 37.063831, 19.368275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417747, 36.293903, 19.395895>,  <32.084824, 36.761909, 19.195889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417747, 36.293903, 19.395895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.640816, 36.582760, 19.559608>,  <32.774658, 36.756073, 19.657837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.640816, 36.582760, 19.559608>,  <32.417747, 36.293903, 19.395895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640816, 36.582760, 19.559608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221307, -0.604581, 0.765183,
		0.800016, -0.336144, -0.496973,
		0.557672, 0.722142, 0.409284,
		32.808117, 36.799404, 19.682394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055664, 35.930676, 19.711224>,  <32.417747, 36.293903, 19.395895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055664, 35.930676, 19.711224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.037056, 36.294392, 19.876646>,  <33.025890, 36.512619, 19.975901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.037056, 36.294392, 19.876646>,  <33.055664, 35.930676, 19.711224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037056, 36.294392, 19.876646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051791, -0.411253, 0.910049,
		0.997573, 0.063758, -0.027960,
		-0.046525, 0.909288, 0.413557,
		33.023098, 36.567177, 20.000713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603096, 35.946270, 20.207134>,  <33.055664, 35.930676, 19.711224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603096, 35.946270, 20.207134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.321003, 36.211422, 20.307722>,  <33.151749, 36.370514, 20.368074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.321003, 36.211422, 20.307722>,  <33.603096, 35.946270, 20.207134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321003, 36.211422, 20.307722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052603, -0.402639, 0.913846,
		0.707021, 0.631247, 0.318824,
		-0.705234, 0.662879, 0.251468,
		33.109432, 36.410286, 20.383163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328789, 35.912086, 20.220894>,  <33.603096, 35.946270, 20.207134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328789, 35.912086, 20.220894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.450237, 35.533478, 20.177240>,  <34.523106, 35.306313, 20.151049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.450237, 35.533478, 20.177240>,  <34.328789, 35.912086, 20.220894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450237, 35.533478, 20.177240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180752, 0.055240, -0.981976,
		0.935491, 0.317876, -0.154314,
		0.303622, -0.946522, -0.109133,
		34.541325, 35.249519, 20.144501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793980, 36.003502, 19.654282>,  <34.328789, 35.912086, 20.220894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793980, 36.003502, 19.654282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.702339, 35.614670, 19.674532>,  <34.647354, 35.381371, 19.686682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.702339, 35.614670, 19.674532>,  <34.793980, 36.003502, 19.654282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702339, 35.614670, 19.674532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046268, -0.041077, -0.998084,
		0.972302, -0.231008, -0.035566,
		-0.229105, -0.972084, 0.050627,
		34.633606, 35.323044, 19.689720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267120, 35.721252, 19.185602>,  <34.793980, 36.003502, 19.654282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267120, 35.721252, 19.185602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.998714, 35.427696, 19.227825>,  <34.837669, 35.251564, 19.253159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.998714, 35.427696, 19.227825>,  <35.267120, 35.721252, 19.185602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998714, 35.427696, 19.227825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120403, -0.248337, -0.961162,
		0.731599, -0.632248, 0.255001,
		-0.671019, -0.733888, 0.105559,
		34.797409, 35.207531, 19.259493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527756, 35.061199, 19.025681>,  <35.267120, 35.721252, 19.185602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527756, 35.061199, 19.025681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.136467, 34.991493, 18.980583>,  <34.901695, 34.949669, 18.953526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.136467, 34.991493, 18.980583>,  <35.527756, 35.061199, 19.025681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136467, 34.991493, 18.980583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171718, -0.374394, -0.911231,
		0.116587, -0.910747, 0.396166,
		-0.978223, -0.174266, -0.112742,
		34.842999, 34.939213, 18.946760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594437, 34.441116, 18.712864>,  <35.527756, 35.061199, 19.025681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594437, 34.441116, 18.712864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.228710, 34.591015, 18.651424>,  <35.009274, 34.680954, 18.614561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.228710, 34.591015, 18.651424>,  <35.594437, 34.441116, 18.712864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228710, 34.591015, 18.651424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039988, -0.293866, -0.955010,
		-0.403024, -0.879322, 0.253701,
		-0.914315, 0.374747, -0.153598,
		34.954414, 34.703438, 18.605345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145191, 33.935398, 18.598867>,  <35.594437, 34.441116, 18.712864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145191, 33.935398, 18.598867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.995747, 34.259529, 18.418299>,  <34.906082, 34.454010, 18.309958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.995747, 34.259529, 18.418299>,  <35.145191, 33.935398, 18.598867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995747, 34.259529, 18.418299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102078, -0.447789, -0.888294,
		-0.921953, -0.377953, 0.084580,
		-0.373607, 0.810331, -0.451421,
		34.883663, 34.502628, 18.282873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810463, 33.598858, 18.011951>,  <35.145191, 33.935398, 18.598867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810463, 33.598858, 18.011951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.789055, 33.985058, 17.910015>,  <34.776207, 34.216778, 17.848854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.789055, 33.985058, 17.910015>,  <34.810463, 33.598858, 18.011951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789055, 33.985058, 17.910015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138187, -0.259911, -0.955694,
		-0.988959, -0.015938, 0.147331,
		-0.053525, 0.965501, -0.254839,
		34.772999, 34.274708, 17.833563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231907, 33.688599, 17.660349>,  <34.810463, 33.598858, 18.011951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231907, 33.688599, 17.660349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.495090, 33.970428, 17.554022>,  <34.653000, 34.139526, 17.490225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.495090, 33.970428, 17.554022>,  <34.231907, 33.688599, 17.660349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495090, 33.970428, 17.554022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004393, -0.349390, -0.936967,
		-0.753040, 0.617655, -0.226790,
		0.657960, 0.704577, -0.265818,
		34.692478, 34.181801, 17.474276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960125, 33.891125, 17.061365>,  <34.231907, 33.688599, 17.660349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960125, 33.891125, 17.061365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346252, 33.994293, 17.077528>,  <34.577930, 34.056194, 17.087227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346252, 33.994293, 17.077528>,  <33.960125, 33.891125, 17.061365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346252, 33.994293, 17.077528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088574, -0.177960, -0.980043,
		-0.245581, 0.949635, -0.194633,
		0.965321, 0.257920, 0.040409,
		34.635849, 34.071671, 17.089651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.781891, 34.533287, 33.150986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164803, 34.586643, 33.048359>,  <36.394550, 34.618656, 32.986782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164803, 34.586643, 33.048359>,  <35.781891, 34.533287, 33.150986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164803, 34.586643, 33.048359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233961, -0.164191, -0.958281,
		-0.169954, 0.977368, -0.125968,
		0.957276, 0.133392, -0.256571,
		36.451984, 34.626659, 32.971386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817585, 34.911224, 32.546055>,  <35.781891, 34.533287, 33.150986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817585, 34.911224, 32.546055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188778, 34.762699, 32.558590>,  <36.411491, 34.673584, 32.566113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188778, 34.762699, 32.558590>,  <35.817585, 34.911224, 32.546055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188778, 34.762699, 32.558590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090383, -0.305880, -0.947770,
		0.361506, 0.876678, -0.317410,
		0.927979, -0.371313, 0.031340,
		36.467171, 34.651306, 32.567993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212704, 35.283295, 31.970402>,  <35.817585, 34.911224, 32.546055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212704, 35.283295, 31.970402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376812, 34.924088, 32.033962>,  <36.475277, 34.708565, 32.072098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376812, 34.924088, 32.033962>,  <36.212704, 35.283295, 31.970402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376812, 34.924088, 32.033962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037498, -0.157481, -0.986810,
		0.911193, 0.410817, -0.030936,
		0.410270, -0.898014, 0.158900,
		36.499893, 34.654682, 32.081631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675537, 35.231941, 31.360096>,  <36.212704, 35.283295, 31.970402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675537, 35.231941, 31.360096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655342, 34.863800, 31.515221>,  <36.643227, 34.642914, 31.608295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655342, 34.863800, 31.515221>,  <36.675537, 35.231941, 31.360096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655342, 34.863800, 31.515221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013203, -0.387658, -0.921709,
		0.998638, -0.051654, 0.007420,
		-0.050487, -0.920355, 0.387811,
		36.640198, 34.587692, 31.631563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202480, 34.834354, 31.079428>,  <36.675537, 35.231941, 31.360096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202480, 34.834354, 31.079428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938236, 34.561981, 31.205870>,  <36.779690, 34.398560, 31.281734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938236, 34.561981, 31.205870>,  <37.202480, 34.834354, 31.079428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938236, 34.561981, 31.205870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006718, -0.415688, -0.909483,
		0.750696, -0.602940, 0.270035,
		-0.660614, -0.680931, 0.316106,
		36.740051, 34.357700, 31.300701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360241, 34.288670, 30.664482>,  <37.202480, 34.834354, 31.079428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360241, 34.288670, 30.664482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993988, 34.189579, 30.791132>,  <36.774235, 34.130127, 30.867123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993988, 34.189579, 30.791132>,  <37.360241, 34.288670, 30.664482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993988, 34.189579, 30.791132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134471, -0.553503, -0.821920,
		0.378861, -0.795153, 0.473493,
		-0.915632, -0.247723, 0.316625,
		36.719299, 34.115261, 30.886120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293945, 33.498859, 30.614582>,  <37.360241, 34.288670, 30.664482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293945, 33.498859, 30.614582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932648, 33.670376, 30.621437>,  <36.715870, 33.773285, 30.625549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932648, 33.670376, 30.621437>,  <37.293945, 33.498859, 30.614582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932648, 33.670376, 30.621437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233406, -0.457379, -0.858094,
		-0.360101, -0.779068, 0.513206,
		-0.903244, 0.428786, 0.017137,
		36.661674, 33.799011, 30.626577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915466, 33.001041, 30.355848>,  <37.293945, 33.498859, 30.614582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915466, 33.001041, 30.355848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649944, 33.295815, 30.304804>,  <36.490631, 33.472679, 30.274178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649944, 33.295815, 30.304804>,  <36.915466, 33.001041, 30.355848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649944, 33.295815, 30.304804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167558, -0.312825, -0.934915,
		-0.728892, -0.599222, 0.331135,
		-0.663808, 0.736936, -0.127611,
		36.450802, 33.516895, 30.266521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340202, 32.733982, 29.990450>,  <36.915466, 33.001041, 30.355848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340202, 32.733982, 29.990450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323341, 33.128086, 29.924128>,  <36.313225, 33.364548, 29.884335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323341, 33.128086, 29.924128>,  <36.340202, 32.733982, 29.990450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323341, 33.128086, 29.924128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150090, -0.170313, -0.973893,
		-0.987774, -0.016161, 0.155055,
		-0.042147, 0.985258, -0.165805,
		36.310696, 33.423664, 29.874386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836983, 32.769970, 29.467478>,  <36.340202, 32.733982, 29.990450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836983, 32.769970, 29.467478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039619, 33.114735, 29.458748>,  <36.161201, 33.321594, 29.453510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039619, 33.114735, 29.458748>,  <35.836983, 32.769970, 29.467478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039619, 33.114735, 29.458748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015109, -0.034185, -0.999301,
		-0.862052, 0.505911, -0.030341,
		0.506595, 0.861908, -0.021825,
		36.191597, 33.373306, 29.452200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389065, 33.229412, 29.174213>,  <35.836983, 32.769970, 29.467478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389065, 33.229412, 29.174213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745655, 33.404354, 29.126909>,  <35.959610, 33.509319, 29.098528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745655, 33.404354, 29.126909>,  <35.389065, 33.229412, 29.174213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745655, 33.404354, 29.126909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062524, -0.139760, -0.988209,
		-0.448731, 0.888360, -0.097248,
		0.891477, 0.437359, -0.118259,
		36.013100, 33.535561, 29.091431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380882, 33.952477, 28.768143>,  <35.389065, 33.229412, 29.174213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380882, 33.952477, 28.768143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748623, 33.803905, 28.716253>,  <35.969269, 33.714764, 28.685120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748623, 33.803905, 28.716253>,  <35.380882, 33.952477, 28.768143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748623, 33.803905, 28.716253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157077, -0.044214, -0.986596,
		0.360716, 0.927407, -0.098992,
		0.919353, -0.371430, -0.129726,
		36.024429, 33.692478, 28.677336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142185, 34.597240, 28.869940>,  <35.380882, 33.952477, 28.768143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142185, 34.597240, 28.869940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791546, 34.419323, 28.796476>,  <34.581161, 34.312572, 28.752398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791546, 34.419323, 28.796476>,  <35.142185, 34.597240, 28.869940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791546, 34.419323, 28.796476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104297, -0.196971, 0.974846,
		-0.469785, 0.873704, 0.126274,
		-0.876598, -0.444798, -0.183659,
		34.528564, 34.285885, 28.741379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654217, 34.858013, 29.282562>,  <35.142185, 34.597240, 28.869940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654217, 34.858013, 29.282562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497616, 34.498413, 29.204044>,  <34.403656, 34.282654, 29.156935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497616, 34.498413, 29.204044>,  <34.654217, 34.858013, 29.282562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497616, 34.498413, 29.204044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315589, -0.069203, 0.946369,
		-0.864368, 0.432451, -0.256620,
		-0.391500, -0.898998, -0.196294,
		34.380165, 34.228714, 29.145157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875015, 34.899532, 29.519346>,  <34.654217, 34.858013, 29.282562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875015, 34.899532, 29.519346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938046, 34.505405, 29.493073>,  <33.975864, 34.268929, 29.477308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938046, 34.505405, 29.493073>,  <33.875015, 34.899532, 29.519346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938046, 34.505405, 29.493073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502456, -0.137261, 0.853638,
		-0.850123, -0.101506, -0.516709,
		0.157573, -0.985320, -0.065686,
		33.985317, 34.209808, 29.473366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266380, 34.568726, 29.751112>,  <33.875015, 34.899532, 29.519346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266380, 34.568726, 29.751112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503372, 34.246536, 29.756378>,  <33.645569, 34.053223, 29.759539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503372, 34.246536, 29.756378>,  <33.266380, 34.568726, 29.751112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503372, 34.246536, 29.756378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469792, -0.332192, 0.817890,
		-0.654418, -0.490769, -0.575224,
		0.592480, -0.805477, 0.013167,
		33.681118, 34.004894, 29.760328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842278, 34.105824, 29.746019>,  <33.266380, 34.568726, 29.751112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842278, 34.105824, 29.746019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172836, 33.980804, 29.933372>,  <33.371170, 33.905792, 30.045784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172836, 33.980804, 29.933372>,  <32.842278, 34.105824, 29.746019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172836, 33.980804, 29.933372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542605, -0.219701, 0.810747,
		-0.150485, -0.924149, -0.351146,
		0.826398, -0.312539, 0.468386,
		33.420753, 33.887039, 30.073887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669838, 33.557644, 30.090647>,  <32.842278, 34.105824, 29.746019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669838, 33.557644, 30.090647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018967, 33.625145, 30.273821>,  <33.228443, 33.665646, 30.383726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018967, 33.625145, 30.273821>,  <32.669838, 33.557644, 30.090647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018967, 33.625145, 30.273821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411187, -0.251147, 0.876270,
		0.262886, -0.953125, -0.149815,
		0.872820, 0.168757, 0.457936,
		33.280811, 33.675774, 30.411201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832092, 33.027531, 30.638491>,  <32.669838, 33.557644, 30.090647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832092, 33.027531, 30.638491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065731, 33.326164, 30.765890>,  <33.205914, 33.505344, 30.842329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065731, 33.326164, 30.765890>,  <32.832092, 33.027531, 30.638491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065731, 33.326164, 30.765890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407223, -0.069895, 0.910650,
		0.702142, -0.661605, 0.263203,
		0.584094, 0.746588, 0.318498,
		33.240959, 33.550140, 30.861439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140919, 32.861938, 31.240549>,  <32.832092, 33.027531, 30.638491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140919, 32.861938, 31.240549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151566, 33.261791, 31.238716>,  <33.157955, 33.501705, 31.237617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151566, 33.261791, 31.238716>,  <33.140919, 32.861938, 31.240549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151566, 33.261791, 31.238716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444618, 0.015943, 0.895578,
		0.895325, -0.021804, 0.444880,
		0.026620, 0.999635, -0.004580,
		33.159550, 33.561684, 31.237343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364208, 33.094391, 31.955887>,  <33.140919, 32.861938, 31.240549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364208, 33.094391, 31.955887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238976, 33.450668, 31.824039>,  <33.163834, 33.664433, 31.744930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238976, 33.450668, 31.824039>,  <33.364208, 33.094391, 31.955887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238976, 33.450668, 31.824039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236638, 0.262961, 0.935336,
		0.919772, 0.370840, 0.128442,
		-0.313085, 0.890690, -0.329620,
		33.145050, 33.717876, 31.725153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686741, 33.507755, 32.457203>,  <33.364208, 33.094391, 31.955887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686741, 33.507755, 32.457203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380825, 33.720161, 32.311264>,  <33.197273, 33.847603, 32.223701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380825, 33.720161, 32.311264>,  <33.686741, 33.507755, 32.457203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380825, 33.720161, 32.311264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119558, 0.439487, 0.890257,
		0.633085, 0.724483, -0.272630,
		-0.764794, 0.531013, -0.364851,
		33.151386, 33.879467, 32.201809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779114, 34.128609, 32.493011>,  <33.686741, 33.507755, 32.457203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779114, 34.128609, 32.493011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379616, 34.108826, 32.489952>,  <33.139915, 34.096954, 32.488117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379616, 34.108826, 32.489952>,  <33.779114, 34.128609, 32.493011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379616, 34.108826, 32.489952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029486, 0.458086, 0.888419,
		-0.040439, 0.887531, -0.458971,
		-0.998747, -0.049460, -0.007645,
		33.079990, 34.093987, 32.487659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715515, 34.746204, 32.851376>,  <33.779114, 34.128609, 32.493011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715515, 34.746204, 32.851376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341400, 34.614864, 32.798580>,  <33.116932, 34.536060, 32.766903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341400, 34.614864, 32.798580>,  <33.715515, 34.746204, 32.851376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341400, 34.614864, 32.798580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312426, 0.590973, 0.743735,
		-0.166205, 0.736843, -0.655315,
		-0.935289, -0.328350, -0.131987,
		33.060814, 34.516361, 32.758984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266216, 35.282234, 32.716469>,  <33.715515, 34.746204, 32.851376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266216, 35.282234, 32.716469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034195, 34.987297, 32.854950>,  <32.894981, 34.810333, 32.938038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034195, 34.987297, 32.854950>,  <33.266216, 35.282234, 32.716469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034195, 34.987297, 32.854950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253099, 0.567118, 0.783784,
		-0.774257, 0.367015, -0.515582,
		-0.580057, -0.737344, 0.346204,
		32.860176, 34.766094, 32.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588100, 35.552505, 32.984276>,  <33.266216, 35.282234, 32.716469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588100, 35.552505, 32.984276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633194, 35.198719, 33.165390>,  <32.660248, 34.986446, 33.274059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633194, 35.198719, 33.165390>,  <32.588100, 35.552505, 32.984276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633194, 35.198719, 33.165390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171590, 0.431516, 0.885636,
		-0.978698, -0.177531, -0.103120,
		0.112730, -0.884464, 0.452787,
		32.667011, 34.933380, 33.301228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921581, 35.588455, 33.467258>,  <32.588100, 35.552505, 32.984276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921581, 35.588455, 33.467258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204258, 35.332207, 33.587387>,  <32.373863, 35.178459, 33.659466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204258, 35.332207, 33.587387>,  <31.921581, 35.588455, 33.467258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204258, 35.332207, 33.587387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034829, 0.455456, 0.889577,
		-0.706662, -0.618199, 0.344180,
		0.706694, -0.640617, 0.300322,
		32.416267, 35.140022, 33.677483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632763, 35.779720, 32.875397>,  <31.921581, 35.588455, 33.467258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632763, 35.779720, 32.875397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955584, 36.015778, 32.867401>,  <32.149277, 36.157413, 32.862602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955584, 36.015778, 32.867401>,  <31.632763, 35.779720, 32.875397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955584, 36.015778, 32.867401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157190, 0.182088, -0.970636,
		-0.569175, 0.786495, 0.239719,
		0.807051, 0.590144, -0.019989,
		32.197701, 36.192822, 32.861404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505768, 36.568817, 32.790607>,  <31.632763, 35.779720, 32.875397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505768, 36.568817, 32.790607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821867, 36.372635, 32.643661>,  <32.011524, 36.254925, 32.555492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821867, 36.372635, 32.643661>,  <31.505768, 36.568817, 32.790607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821867, 36.372635, 32.643661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291276, 0.226808, -0.929363,
		0.539137, 0.841432, 0.036375,
		0.790246, -0.490459, -0.367370,
		32.058941, 36.225498, 32.533451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808676, 37.039753, 32.365520>,  <31.505768, 36.568817, 32.790607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808676, 37.039753, 32.365520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910389, 36.672096, 32.245174>,  <31.971416, 36.451504, 32.172966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910389, 36.672096, 32.245174>,  <31.808676, 37.039753, 32.365520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910389, 36.672096, 32.245174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213279, 0.250137, -0.944428,
		0.943320, 0.304319, -0.132428,
		0.254282, -0.919142, -0.300864,
		31.986673, 36.396355, 32.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038658, 37.144997, 31.780167>,  <31.808676, 37.039753, 32.365520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038658, 37.144997, 31.780167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968372, 36.753635, 31.736618>,  <31.926201, 36.518818, 31.710489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968372, 36.753635, 31.736618>,  <32.038658, 37.144997, 31.780167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968372, 36.753635, 31.736618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212353, 0.145661, -0.966276,
		0.961265, -0.146667, -0.233361,
		-0.175713, -0.978403, -0.108874,
		31.915659, 36.460114, 31.703957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483635, 36.997543, 31.221312>,  <32.038658, 37.144997, 31.780167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483635, 36.997543, 31.221312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225475, 36.692722, 31.242235>,  <32.070580, 36.509830, 31.254789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225475, 36.692722, 31.242235>,  <32.483635, 36.997543, 31.221312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225475, 36.692722, 31.242235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114878, 0.029132, -0.992952,
		0.755162, -0.646855, -0.106345,
		-0.645394, -0.762056, 0.052310,
		32.031857, 36.464104, 31.257929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742447, 36.554787, 30.705627>,  <32.483635, 36.997543, 31.221312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742447, 36.554787, 30.705627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359264, 36.456623, 30.765091>,  <32.129356, 36.397724, 30.800770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359264, 36.456623, 30.765091>,  <32.742447, 36.554787, 30.705627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359264, 36.456623, 30.765091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152038, -0.005236, -0.988361,
		0.243331, -0.969406, -0.032295,
		-0.957953, -0.245408, 0.148661,
		32.071877, 36.382999, 30.809689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631668, 36.017223, 30.292814>,  <32.742447, 36.554787, 30.705627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631668, 36.017223, 30.292814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270248, 36.171631, 30.367208>,  <32.053398, 36.264275, 30.411844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270248, 36.171631, 30.367208>,  <32.631668, 36.017223, 30.292814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270248, 36.171631, 30.367208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129540, 0.167647, -0.977299,
		-0.408439, -0.907128, -0.101471,
		-0.903546, 0.386023, 0.185983,
		31.999184, 36.287437, 30.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298870, 35.867935, 29.716549>,  <32.631668, 36.017223, 30.292814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298870, 35.867935, 29.716549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079113, 36.167374, 29.865023>,  <31.947258, 36.347034, 29.954107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079113, 36.167374, 29.865023>,  <32.298870, 35.867935, 29.716549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079113, 36.167374, 29.865023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170525, 0.334431, -0.926865,
		-0.817978, -0.572509, -0.056080,
		-0.549394, 0.748592, 0.371184,
		31.914295, 36.391953, 29.976377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702175, 35.891911, 29.370888>,  <32.298870, 35.867935, 29.716549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702175, 35.891911, 29.370888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711662, 36.267437, 29.508327>,  <31.717354, 36.492752, 29.590792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711662, 36.267437, 29.508327>,  <31.702175, 35.891911, 29.370888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711662, 36.267437, 29.508327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201633, 0.341126, -0.918138,
		-0.979174, -0.047505, 0.197387,
		0.023717, 0.938816, 0.343601,
		31.718777, 36.549084, 29.611408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093081, 36.242844, 29.131552>,  <31.702175, 35.891911, 29.370888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093081, 36.242844, 29.131552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.346924, 36.541142, 29.212677>,  <31.499229, 36.720119, 29.261353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.346924, 36.541142, 29.212677>,  <31.093081, 36.242844, 29.131552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346924, 36.541142, 29.212677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075298, 0.320840, -0.944136,
		-0.769157, 0.583885, 0.259760,
		0.634608, 0.745748, 0.202811,
		31.537306, 36.764866, 29.273520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790325, 36.780457, 28.779591>,  <31.093081, 36.242844, 29.131552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790325, 36.780457, 28.779591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.163313, 36.908649, 28.846277>,  <31.387106, 36.985565, 28.886290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.163313, 36.908649, 28.846277>,  <30.790325, 36.780457, 28.779591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163313, 36.908649, 28.846277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020240, 0.414433, -0.909855,
		-0.360682, 0.851786, 0.379960,
		0.932469, 0.320478, 0.166719,
		31.443054, 37.004791, 28.896294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898386, 37.524498, 28.480957>,  <30.790325, 36.780457, 28.779591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898386, 37.524498, 28.480957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257748, 37.352314, 28.515766>,  <31.473366, 37.249004, 28.536652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257748, 37.352314, 28.515766>,  <30.898386, 37.524498, 28.480957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257748, 37.352314, 28.515766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248135, 0.334047, -0.909308,
		0.362350, 0.838521, 0.406922,
		0.898405, -0.430460, 0.087024,
		31.527269, 37.223175, 28.541874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262520, 38.017544, 28.180153>,  <30.898386, 37.524498, 28.480957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262520, 38.017544, 28.180153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500000, 37.696636, 28.205107>,  <31.642487, 37.504093, 28.220079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500000, 37.696636, 28.205107>,  <31.262520, 38.017544, 28.180153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500000, 37.696636, 28.205107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447593, 0.264814, -0.854127,
		0.668717, 0.535017, 0.516308,
		0.593698, -0.802266, 0.062384,
		31.678110, 37.455956, 28.223822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953485, 38.254143, 28.014986>,  <31.262520, 38.017544, 28.180153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953485, 38.254143, 28.014986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907427, 37.864941, 27.934978>,  <31.879791, 37.631420, 27.886974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907427, 37.864941, 27.934978>,  <31.953485, 38.254143, 28.014986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907427, 37.864941, 27.934978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409525, 0.136950, -0.901961,
		0.905003, -0.185770, 0.382699,
		-0.115146, -0.973003, -0.200018,
		31.872883, 37.573040, 27.874973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614079, 38.048214, 27.862684>,  <31.953485, 38.254143, 28.014986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614079, 38.048214, 27.862684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342739, 37.803387, 27.700102>,  <32.179935, 37.656490, 27.602552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342739, 37.803387, 27.700102>,  <32.614079, 38.048214, 27.862684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342739, 37.803387, 27.700102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337115, 0.232253, -0.912366,
		0.652835, -0.755928, 0.048790,
		-0.678352, -0.612072, -0.406457,
		32.139233, 37.619766, 27.578165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977169, 37.876842, 27.233011>,  <32.614079, 38.048214, 27.862684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977169, 37.876842, 27.233011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594425, 37.779179, 27.170021>,  <32.364777, 37.720581, 27.132227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594425, 37.779179, 27.170021>,  <32.977169, 37.876842, 27.233011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594425, 37.779179, 27.170021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060811, 0.361692, -0.930312,
		0.284101, -0.899758, -0.331242,
		-0.956864, -0.244160, -0.157472,
		32.307365, 37.705929, 27.122780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003365, 37.561142, 26.651854>,  <32.977169, 37.876842, 27.233011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003365, 37.561142, 26.651854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614792, 37.647575, 26.691113>,  <32.381649, 37.699436, 26.714668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614792, 37.647575, 26.691113>,  <33.003365, 37.561142, 26.651854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614792, 37.647575, 26.691113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044642, 0.239792, -0.969797,
		-0.233091, -0.946471, -0.223295,
		-0.971429, 0.216083, 0.098146,
		32.323364, 37.712399, 26.720556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663418, 37.251999, 26.073521>,  <33.003365, 37.561142, 26.651854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663418, 37.251999, 26.073521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.408569, 37.534935, 26.196001>,  <32.255661, 37.704697, 26.269489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.408569, 37.534935, 26.196001>,  <32.663418, 37.251999, 26.073521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408569, 37.534935, 26.196001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008914, 0.390476, -0.920570,
		-0.770716, -0.589240, -0.242473,
		-0.637116, 0.707336, 0.306199,
		32.217434, 37.747135, 26.287861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108746, 37.253712, 25.634167>,  <32.663418, 37.251999, 26.073521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108746, 37.253712, 25.634167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157932, 37.609543, 25.810133>,  <32.187447, 37.823044, 25.915712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157932, 37.609543, 25.810133>,  <32.108746, 37.253712, 25.634167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157932, 37.609543, 25.810133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068464, 0.434618, -0.898009,
		-0.990046, 0.140545, -0.007459,
		0.122969, 0.889580, 0.439914,
		32.194824, 37.876415, 25.942108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847876, 37.682266, 25.186573>,  <32.108746, 37.253712, 25.634167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847876, 37.682266, 25.186573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068504, 37.914177, 25.426447>,  <32.200882, 38.053326, 25.570372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068504, 37.914177, 25.426447>,  <31.847876, 37.682266, 25.186573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068504, 37.914177, 25.426447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056236, 0.691454, -0.720228,
		-0.832229, 0.430982, 0.348783,
		0.551573, 0.579781, 0.599685,
		32.233974, 38.088112, 25.606352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591440, 38.346928, 25.152084>,  <31.847876, 37.682266, 25.186573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591440, 38.346928, 25.152084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964237, 38.420383, 25.277090>,  <32.187916, 38.464455, 25.352095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964237, 38.420383, 25.277090>,  <31.591440, 38.346928, 25.152084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964237, 38.420383, 25.277090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119086, 0.659188, -0.742489,
		-0.342355, 0.729211, 0.592490,
		0.931993, 0.183638, 0.312515,
		32.243835, 38.475475, 25.370844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666979, 38.984688, 25.108704>,  <31.591440, 38.346928, 25.152084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666979, 38.984688, 25.108704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060013, 38.910366, 25.109074>,  <32.295834, 38.865772, 25.109297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060013, 38.910366, 25.109074>,  <31.666979, 38.984688, 25.108704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060013, 38.910366, 25.109074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135715, 0.714260, -0.686597,
		0.126913, 0.674766, 0.727038,
		0.982586, -0.185807, 0.000927,
		32.354790, 38.854626, 25.109352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026081, 39.624771, 25.089537>,  <31.666979, 38.984688, 25.108704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026081, 39.624771, 25.089537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316700, 39.372677, 24.980045>,  <32.491074, 39.221420, 24.914351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316700, 39.372677, 24.980045>,  <32.026081, 39.624771, 25.089537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316700, 39.372677, 24.980045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249326, 0.613032, -0.749686,
		0.640284, 0.476436, 0.602533,
		0.726549, -0.630239, -0.273726,
		32.534664, 39.183605, 24.897928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469654, 40.096470, 24.683500>,  <32.026081, 39.624771, 25.089537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469654, 40.096470, 24.683500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609894, 39.729290, 24.609261>,  <32.694038, 39.508980, 24.564716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609894, 39.729290, 24.609261>,  <32.469654, 40.096470, 24.683500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609894, 39.729290, 24.609261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265390, 0.287436, -0.920298,
		0.898137, 0.273398, 0.344390,
		0.350597, -0.917951, -0.185599,
		32.715073, 39.453903, 24.553581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149860, 40.157288, 24.507736>,  <32.469654, 40.096470, 24.683500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149860, 40.157288, 24.507736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049294, 39.803497, 24.350512>,  <32.988953, 39.591225, 24.256176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049294, 39.803497, 24.350512>,  <33.149860, 40.157288, 24.507736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049294, 39.803497, 24.350512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251920, 0.332311, -0.908903,
		0.934520, -0.327531, 0.139269,
		-0.251413, -0.884473, -0.393063,
		32.973869, 39.538155, 24.232592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721573, 39.937229, 23.950420>,  <33.149860, 40.157288, 24.507736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721573, 39.937229, 23.950420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.375828, 39.741135, 23.905615>,  <33.168381, 39.623478, 23.878731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.375828, 39.741135, 23.905615>,  <33.721573, 39.937229, 23.950420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375828, 39.741135, 23.905615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048414, 0.140588, -0.988884,
		0.500537, -0.860175, -0.097785,
		-0.864360, -0.490238, -0.112014,
		33.116520, 39.594063, 23.872011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811970, 39.396858, 23.479803>,  <33.721573, 39.937229, 23.950420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811970, 39.396858, 23.479803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425858, 39.501274, 23.475956>,  <33.194191, 39.563923, 23.473648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425858, 39.501274, 23.475956>,  <33.811970, 39.396858, 23.479803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425858, 39.501274, 23.475956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085523, 0.281030, -0.955881,
		-0.246820, -0.923515, -0.293598,
		-0.965280, 0.261040, -0.009618,
		33.136272, 39.579586, 23.473070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245605, 38.765747, 23.332413>,  <33.811970, 39.396858, 23.479803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245605, 38.765747, 23.332413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642029, 38.732201, 23.290895>,  <34.879883, 38.712074, 23.265985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642029, 38.732201, 23.290895>,  <34.245605, 38.765747, 23.332413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642029, 38.732201, 23.290895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100723, -0.040081, 0.994107,
		-0.087535, -0.995670, -0.031275,
		0.991056, -0.083869, -0.103795,
		34.939346, 38.707043, 23.259756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388184, 38.306286, 23.755520>,  <34.245605, 38.765747, 23.332413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388184, 38.306286, 23.755520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750435, 38.469486, 23.709253>,  <34.967785, 38.567406, 23.681494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750435, 38.469486, 23.709253>,  <34.388184, 38.306286, 23.755520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750435, 38.469486, 23.709253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136980, -0.023310, 0.990300,
		0.401345, -0.912685, -0.076998,
		0.905626, 0.407999, -0.115664,
		35.022121, 38.591885, 23.674555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878571, 37.897846, 24.097137>,  <34.388184, 38.306286, 23.755520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878571, 37.897846, 24.097137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068092, 38.249969, 24.087666>,  <35.181805, 38.461243, 24.081982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068092, 38.249969, 24.087666>,  <34.878571, 37.897846, 24.097137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068092, 38.249969, 24.087666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162097, -0.060751, 0.984903,
		0.865583, -0.470490, -0.171480,
		0.473805, 0.880311, -0.023680,
		35.210236, 38.514061, 24.080561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557629, 37.792412, 24.430063>,  <34.878571, 37.897846, 24.097137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557629, 37.792412, 24.430063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499519, 38.188129, 24.424522>,  <35.464653, 38.425560, 24.421198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499519, 38.188129, 24.424522>,  <35.557629, 37.792412, 24.430063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499519, 38.188129, 24.424522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213948, 0.045080, 0.975805,
		0.965983, 0.138791, -0.218206,
		-0.145269, 0.989295, -0.013852,
		35.455940, 38.484917, 24.420366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235931, 38.174030, 24.774269>,  <35.557629, 37.792412, 24.430063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235931, 38.174030, 24.774269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908245, 38.400387, 24.811466>,  <35.711632, 38.536201, 24.833784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908245, 38.400387, 24.811466>,  <36.235931, 38.174030, 24.774269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908245, 38.400387, 24.811466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277440, 0.249159, 0.927872,
		0.501903, 0.785931, -0.361117,
		-0.819219, 0.565890, 0.092995,
		35.662479, 38.570152, 24.839365>
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
