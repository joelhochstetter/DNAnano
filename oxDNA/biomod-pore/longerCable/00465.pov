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
	<24.297472, 35.368313, 34.880741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534634, 35.109917, 35.073055>,  <24.676931, 34.954880, 35.188446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534634, 35.109917, 35.073055>,  <24.297472, 35.368313, 34.880741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534634, 35.109917, 35.073055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074442, 0.638462, 0.766045,
		-0.801825, -0.418400, 0.426636,
		0.592904, -0.645993, 0.480788,
		24.712505, 34.916119, 35.217293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.993042, 35.255863, 35.477169>,  <24.297472, 35.368313, 34.880741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.993042, 35.255863, 35.477169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375744, 35.145805, 35.514935>,  <24.605366, 35.079769, 35.537594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375744, 35.145805, 35.514935>,  <23.993042, 35.255863, 35.477169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375744, 35.145805, 35.514935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080656, 0.562754, 0.822680,
		-0.279488, -0.779489, 0.560610,
		0.956755, -0.275146, 0.094413,
		24.662771, 35.063263, 35.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137869, 34.946682, 36.144855>,  <23.993042, 35.255863, 35.477169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137869, 34.946682, 36.144855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492992, 35.083679, 36.021896>,  <24.706066, 35.165878, 35.948120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492992, 35.083679, 36.021896>,  <24.137869, 34.946682, 36.144855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.492992, 35.083679, 36.021896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093885, 0.519116, 0.849532,
		0.450535, -0.783082, 0.428721,
		0.887809, 0.342493, -0.307400,
		24.759335, 35.186428, 35.929676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403685, 35.019505, 36.704048>,  <24.137869, 34.946682, 36.144855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403685, 35.019505, 36.704048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660454, 35.234795, 36.485600>,  <24.814516, 35.363968, 36.354530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660454, 35.234795, 36.485600>,  <24.403685, 35.019505, 36.704048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660454, 35.234795, 36.485600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254812, 0.522023, 0.813980,
		0.723192, -0.661671, 0.197953,
		0.641923, 0.538222, -0.546124,
		24.853031, 35.396259, 36.321762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958239, 34.946178, 37.041458>,  <24.403685, 35.019505, 36.704048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958239, 34.946178, 37.041458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008835, 35.276562, 36.821712>,  <25.039192, 35.474792, 36.689865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008835, 35.276562, 36.821712>,  <24.958239, 34.946178, 37.041458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008835, 35.276562, 36.821712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310792, 0.492929, 0.812668,
		0.942024, -0.273531, -0.194351,
		0.126489, 0.825955, -0.549362,
		25.046782, 35.524349, 36.656902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606888, 35.295277, 37.082348>,  <24.958239, 34.946178, 37.041458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606888, 35.295277, 37.082348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331884, 35.571461, 36.992371>,  <25.166882, 35.737171, 36.938385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331884, 35.571461, 36.992371>,  <25.606888, 35.295277, 37.082348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331884, 35.571461, 36.992371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221736, 0.494574, 0.840375,
		0.691494, 0.527889, -0.493123,
		-0.687510, 0.690457, -0.224943,
		25.125631, 35.778599, 36.924889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906910, 36.014839, 37.158749>,  <25.606888, 35.295277, 37.082348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906910, 36.014839, 37.158749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519104, 36.009487, 37.256615>,  <25.286421, 36.006275, 37.315334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519104, 36.009487, 37.256615>,  <25.906910, 36.014839, 37.158749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519104, 36.009487, 37.256615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190749, 0.585536, 0.787885,
		-0.153797, 0.810536, -0.565135,
		-0.969516, -0.013375, 0.244663,
		25.228249, 36.005474, 37.330013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695724, 36.667183, 37.267658>,  <25.906910, 36.014839, 37.158749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695724, 36.667183, 37.267658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459566, 36.422768, 37.478588>,  <25.317871, 36.276119, 37.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459566, 36.422768, 37.478588>,  <25.695724, 36.667183, 37.267658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459566, 36.422768, 37.478588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215846, 0.510015, 0.832644,
		-0.777718, 0.605408, -0.169219,
		-0.590394, -0.611037, 0.527323,
		25.282448, 36.239456, 37.636784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291130, 37.079792, 37.662254>,  <25.695724, 36.667183, 37.267658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291130, 37.079792, 37.662254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266088, 36.724300, 37.843914>,  <25.251064, 36.511005, 37.952908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266088, 36.724300, 37.843914>,  <25.291130, 37.079792, 37.662254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266088, 36.724300, 37.843914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115540, 0.458432, 0.881187,
		-0.991328, 0.002693, -0.131383,
		-0.062603, -0.888725, 0.454146,
		25.247307, 36.457684, 37.980156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689655, 37.096554, 38.077682>,  <25.291130, 37.079792, 37.662254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689655, 37.096554, 38.077682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914862, 36.809994, 38.242504>,  <25.049986, 36.638058, 38.341396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914862, 36.809994, 38.242504>,  <24.689655, 37.096554, 38.077682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914862, 36.809994, 38.242504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128934, 0.416341, 0.900020,
		-0.816326, -0.559855, 0.142039,
		0.563017, -0.716396, 0.412055,
		25.083767, 36.595074, 38.366119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.374491, 36.720707, 38.571007>,  <24.689655, 37.096554, 38.077682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.374491, 36.720707, 38.571007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760721, 36.728054, 38.674797>,  <24.992458, 36.732460, 38.737072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760721, 36.728054, 38.674797>,  <24.374491, 36.720707, 38.571007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760721, 36.728054, 38.674797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242155, 0.427807, 0.870828,
		-0.095015, -0.903683, 0.417527,
		0.965574, 0.018364, 0.259480,
		25.050394, 36.733562, 38.752640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540272, 36.302891, 39.095856>,  <24.374491, 36.720707, 38.571007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540272, 36.302891, 39.095856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726305, 36.652985, 39.042686>,  <24.837925, 36.863041, 39.010784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726305, 36.652985, 39.042686>,  <24.540272, 36.302891, 39.095856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726305, 36.652985, 39.042686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284218, 0.289823, 0.913905,
		0.838403, -0.387262, 0.383548,
		0.465082, 0.875232, -0.132921,
		24.865829, 36.915554, 39.002811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177107, 36.568108, 39.568886>,  <24.540272, 36.302891, 39.095856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177107, 36.568108, 39.568886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955723, 36.880333, 39.452675>,  <24.822891, 37.067669, 39.382950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955723, 36.880333, 39.452675>,  <25.177107, 36.568108, 39.568886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955723, 36.880333, 39.452675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205766, 0.209862, 0.955834,
		0.807057, 0.588798, 0.044462,
		-0.553462, 0.780561, -0.290525,
		24.789684, 37.114502, 39.365517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445827, 37.183483, 39.823360>,  <25.177107, 36.568108, 39.568886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445827, 37.183483, 39.823360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050915, 37.138981, 39.777927>,  <24.813967, 37.112278, 39.750668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050915, 37.138981, 39.777927>,  <25.445827, 37.183483, 39.823360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050915, 37.138981, 39.777927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143248, 0.312438, 0.939075,
		-0.068988, 0.943401, -0.324400,
		-0.987279, -0.111255, -0.113586,
		24.754730, 37.105606, 39.743851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707521, 37.466381, 39.112690>,  <25.445827, 37.183483, 39.823360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707521, 37.466381, 39.112690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723726, 37.110786, 39.295143>,  <25.733448, 36.897430, 39.404613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723726, 37.110786, 39.295143>,  <25.707521, 37.466381, 39.112690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723726, 37.110786, 39.295143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315183, -0.444570, -0.838461,
		0.948166, -0.109799, -0.298204,
		0.040510, -0.888989, 0.456133,
		25.735880, 36.844090, 39.431984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110973, 37.000648, 38.783081>,  <25.707521, 37.466381, 39.112690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110973, 37.000648, 38.783081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815239, 36.815434, 38.978622>,  <25.637798, 36.704304, 39.095947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815239, 36.815434, 38.978622>,  <26.110973, 37.000648, 38.783081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815239, 36.815434, 38.978622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356521, -0.346686, -0.867584,
		0.571205, -0.815721, 0.091233,
		-0.739336, -0.463042, 0.488850,
		25.593439, 36.676521, 39.125278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078682, 36.355679, 38.607838>,  <26.110973, 37.000648, 38.783081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078682, 36.355679, 38.607838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711491, 36.414425, 38.755215>,  <25.491177, 36.449673, 38.843639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711491, 36.414425, 38.755215>,  <26.078682, 36.355679, 38.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711491, 36.414425, 38.755215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392346, -0.472449, -0.789213,
		0.058162, -0.869036, 0.491319,
		-0.917977, 0.146865, 0.368441,
		25.436098, 36.458485, 38.865746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876207, 35.667423, 38.825787>,  <26.078682, 36.355679, 38.607838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876207, 35.667423, 38.825787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618250, 35.941849, 38.691067>,  <25.463476, 36.106503, 38.610237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618250, 35.941849, 38.691067>,  <25.876207, 35.667423, 38.825787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618250, 35.941849, 38.691067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188345, -0.569747, -0.799947,
		-0.740703, -0.452445, 0.496642,
		-0.644892, 0.686063, -0.336797,
		25.424782, 36.147667, 38.590027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280985, 35.364185, 38.642754>,  <25.876207, 35.667423, 38.825787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280985, 35.364185, 38.642754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253263, 35.705811, 38.436543>,  <25.236631, 35.910786, 38.312817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253263, 35.705811, 38.436543>,  <25.280985, 35.364185, 38.642754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253263, 35.705811, 38.436543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274001, -0.513195, -0.813360,
		-0.959229, 0.084888, 0.269580,
		-0.069302, 0.854064, -0.515532,
		25.232473, 35.962029, 38.281883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597601, 35.418404, 38.400604>,  <25.280985, 35.364185, 38.642754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597601, 35.418404, 38.400604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825737, 35.655483, 38.173126>,  <24.962618, 35.797733, 38.036640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825737, 35.655483, 38.173126>,  <24.597601, 35.418404, 38.400604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825737, 35.655483, 38.173126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303907, -0.490955, -0.816458,
		-0.763121, 0.638489, -0.099884,
		0.570338, 0.592701, -0.568700,
		24.996838, 35.833294, 38.002518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.249672, 35.679661, 37.949944>,  <24.597601, 35.418404, 38.400604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.249672, 35.679661, 37.949944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611212, 35.702904, 37.780388>,  <24.828136, 35.716850, 37.678654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611212, 35.702904, 37.780388>,  <24.249672, 35.679661, 37.949944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611212, 35.702904, 37.780388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372693, -0.379659, -0.846734,
		-0.210137, 0.923300, -0.321497,
		0.903849, 0.058110, -0.423887,
		24.882366, 35.720337, 37.653221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.111790, 35.449467, 37.308346>,  <24.249672, 35.679661, 37.949944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.111790, 35.449467, 37.308346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495693, 35.549530, 37.257298>,  <24.726034, 35.609570, 37.226669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495693, 35.549530, 37.257298>,  <24.111790, 35.449467, 37.308346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495693, 35.549530, 37.257298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037019, -0.337766, -0.940502,
		-0.278382, 0.907377, -0.314913,
		0.959757, 0.250161, -0.127618,
		24.783621, 35.624577, 37.219013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.050329, 35.868069, 36.811939>,  <24.111790, 35.449467, 37.308346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.050329, 35.868069, 36.811939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392632, 35.661686, 36.827297>,  <24.598013, 35.537857, 36.836514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392632, 35.661686, 36.827297>,  <24.050329, 35.868069, 36.811939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392632, 35.661686, 36.827297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198777, -0.396385, -0.896307,
		0.477675, 0.759386, -0.441768,
		0.855754, -0.515957, 0.038394,
		24.649357, 35.506901, 36.838814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284519, 36.545986, 36.544052>,  <24.050329, 35.868069, 36.811939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284519, 36.545986, 36.544052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642994, 36.417217, 36.666176>,  <24.858080, 36.339958, 36.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642994, 36.417217, 36.666176>,  <24.284519, 36.545986, 36.544052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642994, 36.417217, 36.666176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115917, -0.494348, -0.861501,
		0.428263, 0.807458, -0.405713,
		0.896189, -0.321920, 0.305309,
		24.911850, 36.320641, 36.757767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974802, 36.710697, 36.087887>,  <24.284519, 36.545986, 36.544052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974802, 36.710697, 36.087887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013548, 36.351032, 36.258595>,  <25.036797, 36.135235, 36.361019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013548, 36.351032, 36.258595>,  <24.974802, 36.710697, 36.087887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013548, 36.351032, 36.258595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099795, -0.417849, -0.903019,
		0.990282, 0.130062, 0.049255,
		0.096867, -0.899159, 0.426768,
		25.042608, 36.081284, 36.386623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502392, 36.324127, 35.712101>,  <24.974802, 36.710697, 36.087887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502392, 36.324127, 35.712101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295561, 36.044865, 35.910175>,  <25.171461, 35.877308, 36.029018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295561, 36.044865, 35.910175>,  <25.502392, 36.324127, 35.712101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295561, 36.044865, 35.910175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037564, -0.596479, -0.801749,
		0.855113, -0.395967, 0.334652,
		-0.517079, -0.698157, 0.495183,
		25.140436, 35.835419, 36.058731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835150, 35.729134, 35.523182>,  <25.502392, 36.324127, 35.712101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835150, 35.729134, 35.523182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486990, 35.567085, 35.635098>,  <25.278093, 35.469856, 35.702248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486990, 35.567085, 35.635098>,  <25.835150, 35.729134, 35.523182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486990, 35.567085, 35.635098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072295, -0.667281, -0.741289,
		0.487010, -0.624991, 0.610089,
		-0.870399, -0.405121, 0.279789,
		25.225870, 35.445549, 35.719032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949966, 35.084240, 35.767944>,  <25.835150, 35.729134, 35.523182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949966, 35.084240, 35.767944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594204, 35.132706, 35.591640>,  <25.380745, 35.161785, 35.485859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594204, 35.132706, 35.591640>,  <25.949966, 35.084240, 35.767944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594204, 35.132706, 35.591640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196800, -0.768798, -0.608456,
		-0.412579, -0.627908, 0.659932,
		-0.889409, 0.121162, -0.440762,
		25.327381, 35.169056, 35.459412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666859, 34.424953, 35.650661>,  <25.949966, 35.084240, 35.767944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666859, 34.424953, 35.650661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543180, 34.692688, 35.380436>,  <25.468973, 34.853329, 35.218300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543180, 34.692688, 35.380436>,  <25.666859, 34.424953, 35.650661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543180, 34.692688, 35.380436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172710, -0.659039, -0.732011,
		-0.935184, -0.343012, 0.088171,
		-0.309197, 0.669336, -0.675564,
		25.450422, 34.893490, 35.177765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013325, 34.232941, 35.270077>,  <25.666859, 34.424953, 35.650661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013325, 34.232941, 35.270077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274879, 34.456738, 35.066353>,  <25.431812, 34.591015, 34.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274879, 34.456738, 35.066353>,  <25.013325, 34.232941, 35.270077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274879, 34.456738, 35.066353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026640, -0.689772, -0.723536,
		-0.756124, 0.459541, -0.465937,
		0.653885, 0.559496, -0.509312,
		25.471045, 34.624588, 34.913559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842976, 34.071556, 34.548981>,  <25.013325, 34.232941, 35.270077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842976, 34.071556, 34.548981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216351, 34.214935, 34.554836>,  <25.440374, 34.300961, 34.558350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216351, 34.214935, 34.554836>,  <24.842976, 34.071556, 34.548981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216351, 34.214935, 34.554836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259807, -0.647298, -0.716593,
		-0.247382, 0.672698, -0.697338,
		0.933436, 0.358446, 0.014642,
		25.496382, 34.322468, 34.559227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001333, 34.256184, 33.907597>,  <24.842976, 34.071556, 34.548981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001333, 34.256184, 33.907597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353451, 34.174049, 34.078674>,  <25.564722, 34.124771, 34.181320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353451, 34.174049, 34.078674>,  <25.001333, 34.256184, 33.907597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353451, 34.174049, 34.078674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192186, -0.669874, -0.717171,
		0.433757, 0.713518, -0.550225,
		0.880295, -0.205332, 0.427691,
		25.617538, 34.112450, 34.206982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641068, 34.230064, 33.411972>,  <25.001333, 34.256184, 33.907597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641068, 34.230064, 33.411972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772379, 34.013336, 33.721466>,  <25.851166, 33.883301, 33.907162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772379, 34.013336, 33.721466>,  <25.641068, 34.230064, 33.411972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772379, 34.013336, 33.721466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356450, -0.687509, -0.632672,
		0.874743, 0.483492, -0.032564,
		0.328280, -0.541818, 0.773734,
		25.870863, 33.850792, 33.953587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426052, 34.161064, 33.270580>,  <25.641068, 34.230064, 33.411972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426052, 34.161064, 33.270580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271660, 33.884933, 33.515354>,  <26.179024, 33.719254, 33.662220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271660, 33.884933, 33.515354>,  <26.426052, 34.161064, 33.270580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271660, 33.884933, 33.515354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504434, -0.713324, -0.486534,
		0.772376, 0.120888, 0.623555,
		-0.385980, -0.690330, 0.611934,
		26.155867, 33.677834, 33.698933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948448, 33.719017, 33.480865>,  <26.426052, 34.161064, 33.270580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948448, 33.719017, 33.480865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606895, 33.514912, 33.521877>,  <26.401964, 33.392448, 33.546482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606895, 33.514912, 33.521877>,  <26.948448, 33.719017, 33.480865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606895, 33.514912, 33.521877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441255, -0.814208, -0.377305,
		0.276005, -0.276933, 0.920396,
		-0.853882, -0.510268, 0.102528,
		26.350731, 33.361832, 33.552635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865616, 33.698662, 34.220379>,  <26.948448, 33.719017, 33.480865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865616, 33.698662, 34.220379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709305, 33.333393, 34.174046>,  <26.615519, 33.114231, 34.146244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709305, 33.333393, 34.174046>,  <26.865616, 33.698662, 34.220379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709305, 33.333393, 34.174046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770398, -0.255588, -0.584091,
		0.503767, -0.317489, 0.803380,
		-0.390777, -0.913168, -0.115836,
		26.592072, 33.059444, 34.139294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414963, 33.266315, 34.419281>,  <26.865616, 33.698662, 34.220379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414963, 33.266315, 34.419281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139631, 33.138241, 34.158916>,  <26.974432, 33.061398, 34.002697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139631, 33.138241, 34.158916>,  <27.414963, 33.266315, 34.419281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139631, 33.138241, 34.158916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716115, -0.443041, -0.539347,
		-0.115691, -0.837376, 0.534245,
		-0.688328, -0.320183, -0.650913,
		26.933132, 33.042187, 33.963642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555038, 32.539452, 34.275070>,  <27.414963, 33.266315, 34.419281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555038, 32.539452, 34.275070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327997, 32.663307, 33.969925>,  <27.191772, 32.737621, 33.786839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327997, 32.663307, 33.969925>,  <27.555038, 32.539452, 34.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327997, 32.663307, 33.969925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578463, -0.509346, -0.637140,
		-0.585841, -0.802927, 0.109991,
		-0.567600, 0.309637, -0.762859,
		27.157717, 32.756199, 33.741066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395691, 31.916107, 33.729710>,  <27.555038, 32.539452, 34.275070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395691, 31.916107, 33.729710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396042, 32.272758, 33.548603>,  <27.396252, 32.486748, 33.439938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396042, 32.272758, 33.548603>,  <27.395691, 31.916107, 33.729710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396042, 32.272758, 33.548603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594313, -0.364594, -0.716843,
		-0.804234, -0.268457, -0.530226,
		0.000876, 0.891629, -0.452766,
		27.396305, 32.540249, 33.412773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165293, 31.895639, 33.543335>,  <27.395691, 31.916107, 33.729710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165293, 31.895639, 33.543335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142309, 31.969707, 33.150925>,  <28.128519, 32.014149, 32.915478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142309, 31.969707, 33.150925>,  <28.165293, 31.895639, 33.543335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142309, 31.969707, 33.150925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685645, 0.706934, 0.173595,
		0.725665, 0.682609, 0.086341,
		-0.057460, 0.185171, -0.981025,
		28.125071, 32.025257, 32.856617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291563, 32.558853, 33.330746>,  <28.165293, 31.895639, 33.543335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291563, 32.558853, 33.330746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014355, 32.404251, 33.087326>,  <27.848030, 32.311489, 32.941273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014355, 32.404251, 33.087326>,  <28.291563, 32.558853, 33.330746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014355, 32.404251, 33.087326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676099, 0.641448, 0.362540,
		0.250231, 0.662689, -0.705852,
		-0.693019, -0.386507, -0.608553,
		27.806450, 32.288300, 32.904758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880405, 33.131996, 32.948982>,  <28.291563, 32.558853, 33.330746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880405, 33.131996, 32.948982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663254, 32.796215, 32.939144>,  <27.532963, 32.594746, 32.933239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663254, 32.796215, 32.939144>,  <27.880405, 33.131996, 32.948982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663254, 32.796215, 32.939144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798283, 0.506718, 0.325548,
		-0.260818, 0.196369, -0.945206,
		-0.542881, -0.839450, -0.024597,
		27.500389, 32.544380, 32.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201883, 33.196316, 32.585613>,  <27.880405, 33.131996, 32.948982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201883, 33.196316, 32.585613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160843, 32.907997, 32.859818>,  <27.136219, 32.735008, 33.024342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160843, 32.907997, 32.859818>,  <27.201883, 33.196316, 32.585613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160843, 32.907997, 32.859818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808705, 0.461715, 0.364438,
		-0.579197, -0.516986, -0.630283,
		-0.102603, -0.720794, 0.685513,
		27.130062, 32.691757, 33.065472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454147, 33.098743, 32.717022>,  <27.201883, 33.196316, 32.585613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454147, 33.098743, 32.717022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668728, 32.972641, 33.030155>,  <26.797476, 32.896980, 33.218037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668728, 32.972641, 33.030155>,  <26.454147, 33.098743, 32.717022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668728, 32.972641, 33.030155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652146, 0.433908, 0.621635,
		-0.535654, -0.844000, 0.027178,
		0.536452, -0.315257, 0.782836,
		26.829664, 32.878063, 33.265007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045771, 32.587196, 33.135014>,  <26.454147, 33.098743, 32.717022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045771, 32.587196, 33.135014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322317, 32.764236, 33.363441>,  <26.488245, 32.870461, 33.500496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322317, 32.764236, 33.363441>,  <26.045771, 32.587196, 33.135014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322317, 32.764236, 33.363441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722447, 0.433582, 0.538589,
		-0.009222, -0.784926, 0.619521,
		0.691365, 0.442604, 0.571066,
		26.529726, 32.897018, 33.534760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752375, 32.547855, 33.900688>,  <26.045771, 32.587196, 33.135014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752375, 32.547855, 33.900688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028463, 32.836292, 33.876617>,  <26.194117, 33.009354, 33.862175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028463, 32.836292, 33.876617>,  <25.752375, 32.547855, 33.900688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028463, 32.836292, 33.876617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567861, 0.591335, 0.572588,
		0.448472, -0.361042, 0.817632,
		0.690222, 0.721091, -0.060176,
		26.235531, 33.052620, 33.858566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839321, 32.725811, 34.625427>,  <25.752375, 32.547855, 33.900688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839321, 32.725811, 34.625427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946547, 32.999722, 34.354366>,  <26.010881, 33.164070, 34.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946547, 32.999722, 34.354366>,  <25.839321, 32.725811, 34.625427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946547, 32.999722, 34.354366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292383, 0.728051, 0.620044,
		0.917962, 0.031925, 0.395382,
		0.268063, 0.684780, -0.677657,
		26.026966, 33.205154, 34.151070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192829, 33.181931, 35.049152>,  <25.839321, 32.725811, 34.625427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192829, 33.181931, 35.049152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104858, 33.388885, 34.718349>,  <26.052076, 33.513058, 34.519867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104858, 33.388885, 34.718349>,  <26.192829, 33.181931, 35.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104858, 33.388885, 34.718349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142054, 0.821743, 0.551870,
		0.965118, 0.238852, -0.107228,
		-0.219929, 0.517387, -0.827008,
		26.038879, 33.544102, 34.470245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622540, 33.749180, 35.013237>,  <26.192829, 33.181931, 35.049152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622540, 33.749180, 35.013237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340084, 33.888866, 34.766850>,  <26.170610, 33.972679, 34.619019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340084, 33.888866, 34.766850>,  <26.622540, 33.749180, 35.013237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340084, 33.888866, 34.766850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051539, 0.842259, 0.536603,
		0.706195, 0.410663, -0.576754,
		-0.706139, 0.349221, -0.615964,
		26.128242, 33.993633, 34.582062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779324, 34.457691, 34.643589>,  <26.622540, 33.749180, 35.013237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779324, 34.457691, 34.643589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386337, 34.416088, 34.705479>,  <26.150545, 34.391125, 34.742611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386337, 34.416088, 34.705479>,  <26.779324, 34.457691, 34.643589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386337, 34.416088, 34.705479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024169, 0.893970, 0.447475,
		-0.184858, 0.435890, -0.880811,
		-0.982468, -0.104008, 0.154722,
		26.091597, 34.384884, 34.751896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660990, 35.166504, 34.574245>,  <26.779324, 34.457691, 34.643589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660990, 35.166504, 34.574245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341330, 34.989368, 34.736847>,  <26.149532, 34.883087, 34.834408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341330, 34.989368, 34.736847>,  <26.660990, 35.166504, 34.574245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341330, 34.989368, 34.736847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103522, 0.767518, 0.632613,
		-0.592148, 0.463471, -0.659208,
		-0.799152, -0.442843, 0.406505,
		26.101583, 34.856514, 34.858799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119064, 35.161301, 34.089836>,  <26.660990, 35.166504, 34.574245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119064, 35.161301, 34.089836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275394, 35.143829, 33.722065>,  <26.369192, 35.133347, 33.501404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275394, 35.143829, 33.722065>,  <26.119064, 35.161301, 34.089836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275394, 35.143829, 33.722065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037761, 0.998793, -0.031397,
		0.919690, -0.022448, 0.392003,
		0.390825, -0.043678, -0.919428,
		26.392641, 35.130726, 33.446236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426020, 35.220722, 33.750343>,  <26.119064, 35.161301, 34.089836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426020, 35.220722, 33.750343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766890, 35.087048, 33.589287>,  <25.971411, 35.006844, 33.492653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766890, 35.087048, 33.589287>,  <25.426020, 35.220722, 33.750343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766890, 35.087048, 33.589287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208988, 0.922821, -0.323611,
		0.479714, 0.191625, 0.856244,
		0.852173, -0.334186, -0.402643,
		26.022541, 34.986794, 33.468494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756887, 35.760605, 33.722218>,  <25.426020, 35.220722, 33.750343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756887, 35.760605, 33.722218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034033, 35.590988, 33.488934>,  <26.200319, 35.489220, 33.348965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034033, 35.590988, 33.488934>,  <25.756887, 35.760605, 33.722218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034033, 35.590988, 33.488934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282238, 0.903762, -0.321801,
		0.663537, 0.058360, 0.745863,
		0.692864, -0.424038, -0.583208,
		26.241892, 35.463776, 33.313972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301401, 36.261749, 33.866524>,  <25.756887, 35.760605, 33.722218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301401, 36.261749, 33.866524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333902, 36.096954, 33.503502>,  <26.353403, 35.998077, 33.285686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333902, 36.096954, 33.503502>,  <26.301401, 36.261749, 33.866524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333902, 36.096954, 33.503502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137811, 0.906467, -0.399155,
		0.987120, -0.092639, 0.130431,
		0.081255, -0.411989, -0.907559,
		26.358278, 35.973358, 33.231236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957123, 36.330318, 33.558689>,  <26.301401, 36.261749, 33.866524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957123, 36.330318, 33.558689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675770, 36.306087, 33.275398>,  <26.506958, 36.291550, 33.105423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675770, 36.306087, 33.275398>,  <26.957123, 36.330318, 33.558689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675770, 36.306087, 33.275398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091880, 0.980255, -0.175094,
		0.704847, -0.188230, -0.683930,
		-0.703384, -0.060575, -0.708225,
		26.464754, 36.287914, 33.062931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164249, 36.986130, 33.244614>,  <26.957123, 36.330318, 33.558689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164249, 36.986130, 33.244614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827829, 36.853779, 33.073425>,  <26.625978, 36.774368, 32.970715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827829, 36.853779, 33.073425>,  <27.164249, 36.986130, 33.244614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827829, 36.853779, 33.073425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168513, 0.912013, -0.373946,
		0.514043, -0.242388, -0.822804,
		-0.841048, -0.330878, -0.427968,
		26.575516, 36.754517, 32.945034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058577, 36.924427, 32.497322>,  <27.164249, 36.986130, 33.244614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058577, 36.924427, 32.497322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416361, 36.973541, 32.669304>,  <27.631031, 37.003010, 32.772491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416361, 36.973541, 32.669304>,  <27.058577, 36.924427, 32.497322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416361, 36.973541, 32.669304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401855, -0.642418, -0.652543,
		0.196084, 0.756454, -0.623962,
		0.894463, 0.122789, 0.429953,
		27.684700, 37.010380, 32.798290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505970, 37.531353, 32.283424>,  <27.058577, 36.924427, 32.497322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505970, 37.531353, 32.283424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825954, 37.719002, 32.133766>,  <28.017944, 37.831593, 32.043972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825954, 37.719002, 32.133766>,  <27.505970, 37.531353, 32.283424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825954, 37.719002, 32.133766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599843, 0.641621, -0.478028,
		0.015802, 0.606830, 0.794674,
		0.799961, 0.469126, -0.374142,
		28.065943, 37.859741, 32.021523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282364, 38.206181, 32.249512>,  <27.505970, 37.531353, 32.283424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282364, 38.206181, 32.249512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585859, 38.132820, 31.999496>,  <27.767956, 38.088802, 31.849487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585859, 38.132820, 31.999496>,  <27.282364, 38.206181, 32.249512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585859, 38.132820, 31.999496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414054, 0.604961, -0.680134,
		0.502866, 0.774845, 0.383068,
		0.758739, -0.183405, -0.625042,
		27.813480, 38.077797, 31.811983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649811, 38.850857, 32.138218>,  <27.282364, 38.206181, 32.249512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649811, 38.850857, 32.138218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639776, 38.550900, 31.873783>,  <27.633755, 38.370926, 31.715122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639776, 38.550900, 31.873783>,  <27.649811, 38.850857, 32.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639776, 38.550900, 31.873783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491416, 0.585131, -0.645082,
		0.870563, 0.308686, -0.383188,
		-0.025087, -0.749889, -0.661087,
		27.632250, 38.325932, 31.675457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055613, 38.945488, 32.799561>,  <27.649811, 38.850857, 32.138218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055613, 38.945488, 32.799561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451921, 38.972073, 32.846813>,  <28.689707, 38.988022, 32.875164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451921, 38.972073, 32.846813>,  <28.055613, 38.945488, 32.799561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451921, 38.972073, 32.846813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105052, -0.927237, -0.359438,
		0.085649, 0.368531, -0.925662,
		0.990772, 0.066457, 0.118132,
		28.749153, 38.992008, 32.882252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495556, 38.864086, 32.113216>,  <28.055613, 38.945488, 32.799561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495556, 38.864086, 32.113216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705593, 38.755787, 32.435947>,  <28.831615, 38.690807, 32.629585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705593, 38.755787, 32.435947>,  <28.495556, 38.864086, 32.113216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705593, 38.755787, 32.435947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083694, -0.927019, -0.365555,
		0.846918, 0.259478, -0.464113,
		0.525095, -0.270752, 0.806826,
		28.863121, 38.674561, 32.677994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212158, 38.762947, 31.845751>,  <28.495556, 38.864086, 32.113216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212158, 38.762947, 31.845751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109058, 38.552711, 32.170052>,  <29.047197, 38.426571, 32.364632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109058, 38.552711, 32.170052>,  <29.212158, 38.762947, 31.845751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109058, 38.552711, 32.170052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279439, -0.843794, -0.458176,
		0.924921, 0.108460, 0.364359,
		-0.257750, -0.525593, 0.810751,
		29.031733, 38.395035, 32.413277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712658, 38.320477, 31.954882>,  <29.212158, 38.762947, 31.845751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712658, 38.320477, 31.954882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416147, 38.146542, 32.159401>,  <29.238241, 38.042183, 32.282112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416147, 38.146542, 32.159401>,  <29.712658, 38.320477, 31.954882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416147, 38.146542, 32.159401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333218, -0.899679, -0.282036,
		0.582643, -0.038693, 0.811807,
		-0.741279, -0.434834, 0.511298,
		29.193764, 38.016090, 32.312790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905378, 37.801186, 32.583885>,  <29.712658, 38.320477, 31.954882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905378, 37.801186, 32.583885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591551, 37.719059, 32.349861>,  <29.403254, 37.669781, 32.209446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591551, 37.719059, 32.349861>,  <29.905378, 37.801186, 32.583885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591551, 37.719059, 32.349861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487947, -0.786647, -0.378279,
		-0.382566, -0.582263, 0.717365,
		-0.784571, -0.205319, -0.585058,
		29.356180, 37.657463, 32.174343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613688, 37.138180, 32.681557>,  <29.905378, 37.801186, 32.583885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613688, 37.138180, 32.681557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527782, 37.210865, 32.297710>,  <29.476238, 37.254475, 32.067402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527782, 37.210865, 32.297710>,  <29.613688, 37.138180, 32.681557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527782, 37.210865, 32.297710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350684, -0.902671, -0.249411,
		-0.911536, -0.390086, 0.130138,
		-0.214764, 0.181709, -0.959613,
		29.463352, 37.265377, 32.009827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593714, 36.439976, 32.456223>,  <29.613688, 37.138180, 32.681557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593714, 36.439976, 32.456223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621059, 36.702797, 32.155930>,  <29.637466, 36.860489, 31.975754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621059, 36.702797, 32.155930>,  <29.593714, 36.439976, 32.456223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621059, 36.702797, 32.155930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629859, -0.611995, -0.478268,
		-0.773695, -0.440161, -0.455692,
		0.068366, 0.657055, -0.750736,
		29.641569, 36.899914, 31.930708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477705, 36.106594, 31.757704>,  <29.593714, 36.439976, 32.456223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477705, 36.106594, 31.757704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715380, 36.428043, 31.744249>,  <29.857985, 36.620914, 31.736177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715380, 36.428043, 31.744249>,  <29.477705, 36.106594, 31.757704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715380, 36.428043, 31.744249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671869, -0.518890, -0.528531,
		-0.442194, 0.291446, -0.848247,
		0.594185, 0.803625, -0.033636,
		29.893635, 36.669132, 31.734158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739864, 36.130207, 31.057198>,  <29.477705, 36.106594, 31.757704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739864, 36.130207, 31.057198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987358, 36.342037, 31.289307>,  <30.135855, 36.469135, 31.428572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987358, 36.342037, 31.289307>,  <29.739864, 36.130207, 31.057198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987358, 36.342037, 31.289307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764624, -0.236413, -0.599549,
		-0.180321, 0.814654, -0.551202,
		0.618736, 0.529573, 0.580274,
		30.172979, 36.500908, 31.463388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085188, 36.578255, 30.581984>,  <29.739864, 36.130207, 31.057198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085188, 36.578255, 30.581984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301342, 36.527725, 30.914736>,  <30.431034, 36.497406, 31.114388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301342, 36.527725, 30.914736>,  <30.085188, 36.578255, 30.581984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301342, 36.527725, 30.914736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733780, -0.413074, -0.539385,
		0.411766, 0.901894, -0.130526,
		0.540385, -0.126323, 0.831881,
		30.463457, 36.489830, 31.164301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730261, 36.809368, 30.514168>,  <30.085188, 36.578255, 30.581984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730261, 36.809368, 30.514168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850393, 36.604565, 30.836073>,  <30.922472, 36.481682, 31.029217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850393, 36.604565, 30.836073>,  <30.730261, 36.809368, 30.514168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850393, 36.604565, 30.836073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805549, -0.315655, -0.501451,
		0.510776, 0.798878, 0.317649,
		0.300331, -0.512011, 0.804765,
		30.940493, 36.450962, 31.077503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499599, 36.876717, 30.526041>,  <30.730261, 36.809368, 30.514168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499599, 36.876717, 30.526041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377439, 36.544292, 30.711971>,  <31.304144, 36.344837, 30.823530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377439, 36.544292, 30.711971>,  <31.499599, 36.876717, 30.526041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377439, 36.544292, 30.711971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734052, -0.516411, -0.441008,
		0.606548, 0.206524, 0.767755,
		-0.305398, -0.831064, 0.464827,
		31.285820, 36.294971, 30.851419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077244, 36.532608, 30.799267>,  <31.499599, 36.876717, 30.526041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077244, 36.532608, 30.799267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822056, 36.228622, 30.848984>,  <31.668943, 36.046230, 30.878815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822056, 36.228622, 30.848984>,  <32.077244, 36.532608, 30.799267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822056, 36.228622, 30.848984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691673, -0.636463, -0.341325,
		0.338504, -0.131783, 0.931691,
		-0.637968, -0.759966, 0.124295,
		31.630665, 36.000633, 30.886272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256378, 36.028240, 31.385139>,  <32.077244, 36.532608, 30.799267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256378, 36.028240, 31.385139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058754, 35.854069, 31.084126>,  <31.940180, 35.749565, 30.903517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058754, 35.854069, 31.084126>,  <32.256378, 36.028240, 31.385139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058754, 35.854069, 31.084126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782981, -0.599098, -0.167395,
		-0.377952, -0.671922, 0.636924,
		-0.494057, -0.435432, -0.752533,
		31.910538, 35.723438, 30.858366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527634, 35.392059, 31.327921>,  <32.256378, 36.028240, 31.385139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527634, 35.392059, 31.327921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325417, 35.353840, 30.984922>,  <32.204086, 35.330910, 30.779123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325417, 35.353840, 30.984922>,  <32.527634, 35.392059, 31.327921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325417, 35.353840, 30.984922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767558, -0.503716, -0.396390,
		-0.394062, -0.858569, 0.327985,
		-0.505540, -0.095545, -0.857497,
		32.173756, 35.325176, 30.727673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598267, 34.668217, 31.091923>,  <32.527634, 35.392059, 31.327921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598267, 34.668217, 31.091923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504406, 34.891125, 30.773329>,  <32.448090, 35.024868, 30.582172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504406, 34.891125, 30.773329>,  <32.598267, 34.668217, 31.091923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504406, 34.891125, 30.773329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874958, -0.235924, -0.422834,
		-0.423542, -0.796111, -0.432226,
		-0.234650, 0.557268, -0.796487,
		32.434010, 35.058304, 30.534382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664017, 34.205563, 30.413412>,  <32.598267, 34.668217, 31.091923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664017, 34.205563, 30.413412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682823, 34.586548, 30.293013>,  <32.694107, 34.815140, 30.220774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682823, 34.586548, 30.293013>,  <32.664017, 34.205563, 30.413412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682823, 34.586548, 30.293013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766942, -0.227482, -0.600043,
		-0.639991, -0.202636, -0.741181,
		0.047015, 0.952466, -0.300996,
		32.696926, 34.872288, 30.202713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749298, 34.164124, 29.685114>,  <32.664017, 34.205563, 30.413412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749298, 34.164124, 29.685114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884670, 34.524296, 29.794432>,  <32.965893, 34.740398, 29.860022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884670, 34.524296, 29.794432>,  <32.749298, 34.164124, 29.685114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884670, 34.524296, 29.794432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710400, -0.054022, -0.701721,
		-0.617088, 0.431630, -0.657949,
		0.338427, 0.900432, 0.273294,
		32.986198, 34.794426, 29.876419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822590, 34.599415, 28.984137>,  <32.749298, 34.164124, 29.685114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822590, 34.599415, 28.984137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027584, 34.813553, 29.252693>,  <33.150581, 34.942036, 29.413826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027584, 34.813553, 29.252693>,  <32.822590, 34.599415, 28.984137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027584, 34.813553, 29.252693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735455, 0.129935, -0.664998,
		-0.443239, 0.834581, -0.327129,
		0.512489, 0.535342, 0.671389,
		33.181332, 34.974155, 29.454109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967430, 35.233646, 28.686598>,  <32.822590, 34.599415, 28.984137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967430, 35.233646, 28.686598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242226, 35.155865, 28.966663>,  <33.407104, 35.109196, 29.134703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242226, 35.155865, 28.966663>,  <32.967430, 35.233646, 28.686598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242226, 35.155865, 28.966663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723887, 0.098939, -0.682787,
		0.063496, 0.975909, 0.208733,
		0.686990, -0.194454, 0.700166,
		33.448322, 35.097530, 29.176714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437412, 35.850807, 28.706926>,  <32.967430, 35.233646, 28.686598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437412, 35.850807, 28.706926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601357, 35.502232, 28.814705>,  <33.699722, 35.293087, 28.879372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601357, 35.502232, 28.814705>,  <33.437412, 35.850807, 28.706926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601357, 35.502232, 28.814705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729030, 0.135424, -0.670951,
		0.548205, 0.471433, 0.690813,
		0.409861, -0.871442, 0.269449,
		33.724316, 35.240799, 28.895540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142231, 35.947945, 28.741098>,  <33.437412, 35.850807, 28.706926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142231, 35.947945, 28.741098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126907, 35.548248, 28.743889>,  <34.117714, 35.308430, 28.745564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126907, 35.548248, 28.743889>,  <34.142231, 35.947945, 28.741098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126907, 35.548248, 28.743889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824929, -0.035562, -0.564116,
		0.563937, -0.015855, 0.825666,
		-0.038307, -0.999242, 0.006975,
		34.115414, 35.248474, 28.745981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832466, 35.639263, 28.986675>,  <34.142231, 35.947945, 28.741098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832466, 35.639263, 28.986675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642826, 35.392544, 28.735348>,  <34.529041, 35.244511, 28.584551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642826, 35.392544, 28.735348>,  <34.832466, 35.639263, 28.986675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642826, 35.392544, 28.735348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801847, -0.007694, -0.597479,
		0.363693, -0.787080, 0.498230,
		-0.474097, -0.616803, -0.628320,
		34.500595, 35.207504, 28.546852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350323, 35.103161, 28.783627>,  <34.832466, 35.639263, 28.986675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350323, 35.103161, 28.783627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054882, 35.093033, 28.514158>,  <34.877617, 35.086956, 28.352478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054882, 35.093033, 28.514158>,  <35.350323, 35.103161, 28.783627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054882, 35.093033, 28.514158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661874, -0.217032, -0.717510,
		-0.128039, -0.975836, 0.177059,
		-0.738599, -0.025321, -0.673669,
		34.833302, 35.085438, 28.312057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427261, 34.542542, 28.265373>,  <35.350323, 35.103161, 28.783627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427261, 34.542542, 28.265373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156609, 34.777344, 28.087566>,  <34.994217, 34.918224, 27.980883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156609, 34.777344, 28.087566>,  <35.427261, 34.542542, 28.265373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156609, 34.777344, 28.087566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506505, -0.067115, -0.859621,
		-0.534434, -0.806798, -0.251908,
		-0.676634, 0.587003, -0.444516,
		34.953617, 34.953445, 27.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400440, 34.260292, 27.625647>,  <35.427261, 34.542542, 28.265373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400440, 34.260292, 27.625647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225037, 34.607288, 27.531698>,  <35.119797, 34.815487, 27.475328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225037, 34.607288, 27.531698>,  <35.400440, 34.260292, 27.625647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225037, 34.607288, 27.531698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454592, -0.011347, -0.890627,
		-0.775280, -0.497317, -0.389381,
		-0.438506, 0.867495, -0.234873,
		35.093483, 34.867538, 27.461237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281525, 34.220181, 26.883348>,  <35.400440, 34.260292, 27.625647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281525, 34.220181, 26.883348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259640, 34.615028, 26.943483>,  <35.246510, 34.851936, 26.979565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259640, 34.615028, 26.943483>,  <35.281525, 34.220181, 26.883348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259640, 34.615028, 26.943483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491432, 0.157688, -0.856521,
		-0.869195, 0.027014, -0.493731,
		-0.054717, 0.987119, 0.150338,
		35.243225, 34.911163, 26.988585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993530, 34.564507, 26.254564>,  <35.281525, 34.220181, 26.883348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993530, 34.564507, 26.254564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203503, 34.843437, 26.449783>,  <35.329487, 35.010796, 26.566914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203503, 34.843437, 26.449783>,  <34.993530, 34.564507, 26.254564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203503, 34.843437, 26.449783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437142, 0.271118, -0.857556,
		-0.730311, 0.663503, -0.162511,
		0.524931, 0.697322, 0.488046,
		35.360981, 35.052635, 26.596197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814011, 35.105000, 25.854429>,  <34.993530, 34.564507, 26.254564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814011, 35.105000, 25.854429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152924, 35.195026, 26.046867>,  <35.356274, 35.249043, 26.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152924, 35.195026, 26.046867>,  <34.814011, 35.105000, 25.854429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152924, 35.195026, 26.046867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403817, 0.315418, -0.858745,
		-0.345021, 0.921877, 0.176363,
		0.847285, 0.225067, 0.481096,
		35.407108, 35.262547, 26.191196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964062, 35.752636, 25.688473>,  <34.814011, 35.105000, 25.854429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964062, 35.752636, 25.688473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302422, 35.575184, 25.806892>,  <35.505440, 35.468712, 25.877945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302422, 35.575184, 25.806892>,  <34.964062, 35.752636, 25.688473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302422, 35.575184, 25.806892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469884, 0.357303, -0.807183,
		0.252310, 0.821906, 0.510697,
		0.845901, -0.443628, 0.296049,
		35.556190, 35.442097, 25.895708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462273, 36.257980, 25.618454>,  <34.964062, 35.752636, 25.688473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462273, 36.257980, 25.618454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670059, 35.916569, 25.634613>,  <35.794731, 35.711720, 25.644308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670059, 35.916569, 25.634613>,  <35.462273, 36.257980, 25.618454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670059, 35.916569, 25.634613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506202, 0.269306, -0.819289,
		0.688412, 0.446044, 0.571957,
		0.519470, -0.853534, 0.040395,
		35.825901, 35.660507, 25.646732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135681, 36.421803, 25.257704>,  <35.462273, 36.257980, 25.618454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135681, 36.421803, 25.257704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078995, 36.026337, 25.237829>,  <36.044983, 35.789059, 25.225904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078995, 36.026337, 25.237829>,  <36.135681, 36.421803, 25.257704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078995, 36.026337, 25.237829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337415, -0.001057, -0.941355,
		0.930628, -0.150168, 0.333739,
		-0.141714, -0.988660, -0.049685,
		36.036480, 35.729740, 25.222923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678074, 36.244034, 25.002125>,  <36.135681, 36.421803, 25.257704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678074, 36.244034, 25.002125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437466, 35.929878, 24.943701>,  <36.293102, 35.741383, 24.908648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437466, 35.929878, 24.943701>,  <36.678074, 36.244034, 25.002125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437466, 35.929878, 24.943701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361158, -0.104276, -0.926656,
		0.712560, -0.610150, 0.346375,
		-0.601518, -0.785393, -0.146058,
		36.257011, 35.694260, 24.899883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147667, 35.803265, 24.810747>,  <36.678074, 36.244034, 25.002125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147667, 35.803265, 24.810747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781464, 35.691986, 24.694510>,  <36.561741, 35.625217, 24.624767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781464, 35.691986, 24.694510>,  <37.147667, 35.803265, 24.810747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781464, 35.691986, 24.694510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382270, -0.376547, -0.843849,
		0.125336, -0.883639, 0.451080,
		-0.915511, -0.278199, -0.290594,
		36.506809, 35.608528, 24.607332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281097, 35.100811, 24.729639>,  <37.147667, 35.803265, 24.810747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281097, 35.100811, 24.729639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962063, 35.221443, 24.520679>,  <36.770641, 35.293823, 24.395304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962063, 35.221443, 24.520679>,  <37.281097, 35.100811, 24.729639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962063, 35.221443, 24.520679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425831, -0.331871, -0.841742,
		-0.427224, -0.893817, 0.136273,
		-0.797588, 0.301583, -0.522399,
		36.722786, 35.311920, 24.363960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982632, 34.582882, 24.329271>,  <37.281097, 35.100811, 24.729639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982632, 34.582882, 24.329271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856480, 34.908642, 24.134420>,  <36.780788, 35.104095, 24.017509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856480, 34.908642, 24.134420>,  <36.982632, 34.582882, 24.329271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856480, 34.908642, 24.134420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378924, -0.362553, -0.851453,
		-0.870030, -0.453116, -0.194252,
		-0.315380, 0.814396, -0.487129,
		36.761864, 35.152962, 23.988281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662674, 34.354500, 23.759731>,  <36.982632, 34.582882, 24.329271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662674, 34.354500, 23.759731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727562, 34.736774, 23.661465>,  <36.766495, 34.966137, 23.602505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727562, 34.736774, 23.661465>,  <36.662674, 34.354500, 23.759731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727562, 34.736774, 23.661465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506066, -0.294307, -0.810728,
		-0.847102, 0.007194, -0.531383,
		0.162222, 0.955684, -0.245667,
		36.776230, 35.023479, 23.587765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424374, 34.364662, 23.131100>,  <36.662674, 34.354500, 23.759731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424374, 34.364662, 23.131100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651066, 34.694187, 23.126268>,  <36.787083, 34.891903, 23.123369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651066, 34.694187, 23.126268>,  <36.424374, 34.364662, 23.131100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651066, 34.694187, 23.126268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379829, -0.274253, -0.883468,
		-0.731124, 0.496103, -0.468336,
		0.566734, 0.823812, -0.012079,
		36.821087, 34.941330, 23.122644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448868, 34.575584, 22.456846>,  <36.424374, 34.364662, 23.131100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448868, 34.575584, 22.456846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755184, 34.783951, 22.607693>,  <36.938972, 34.908970, 22.698200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755184, 34.783951, 22.607693>,  <36.448868, 34.575584, 22.456846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755184, 34.783951, 22.607693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536428, -0.193977, -0.821352,
		-0.354702, 0.831277, -0.427979,
		0.765789, 0.520915, 0.377116,
		36.984921, 34.940224, 22.720827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556709, 35.213768, 22.026909>,  <36.448868, 34.575584, 22.456846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556709, 35.213768, 22.026909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908184, 35.090740, 22.172953>,  <37.119068, 35.016926, 22.260580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908184, 35.090740, 22.172953>,  <36.556709, 35.213768, 22.026909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908184, 35.090740, 22.172953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411479, 0.100170, -0.905898,
		0.242049, 0.946240, 0.214575,
		0.878691, -0.307565, 0.365112,
		37.171791, 34.998470, 22.282486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940449, 35.618462, 21.570995>,  <36.556709, 35.213768, 22.026909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940449, 35.618462, 21.570995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193878, 35.371082, 21.756945>,  <37.345936, 35.222656, 21.868513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193878, 35.371082, 21.756945>,  <36.940449, 35.618462, 21.570995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193878, 35.371082, 21.756945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675797, 0.149849, -0.721695,
		0.376669, 0.771408, 0.512885,
		0.633577, -0.618446, 0.464871,
		37.383949, 35.185547, 21.896406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518406, 36.008274, 21.668354>,  <36.940449, 35.618462, 21.570995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518406, 36.008274, 21.668354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628372, 35.623768, 21.660479>,  <37.694351, 35.393063, 21.655754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628372, 35.623768, 21.660479>,  <37.518406, 36.008274, 21.668354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628372, 35.623768, 21.660479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684941, 0.210180, -0.697625,
		0.674741, 0.178306, 0.716193,
		0.274920, -0.961266, -0.019688,
		37.710850, 35.335388, 21.654572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267670, 36.029072, 21.617115>,  <37.518406, 36.008274, 21.668354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267670, 36.029072, 21.617115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204666, 35.643848, 21.529749>,  <38.166862, 35.412712, 21.477329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204666, 35.643848, 21.529749>,  <38.267670, 36.029072, 21.617115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204666, 35.643848, 21.529749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716698, 0.040677, -0.696197,
		0.679364, -0.266196, 0.683816,
		-0.157510, -0.963060, -0.218416,
		38.157413, 35.354931, 21.464224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961910, 35.669731, 21.625351>,  <38.267670, 36.029072, 21.617115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961910, 35.669731, 21.625351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707603, 35.433521, 21.426523>,  <38.555019, 35.291794, 21.307226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707603, 35.433521, 21.426523>,  <38.961910, 35.669731, 21.625351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707603, 35.433521, 21.426523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606141, 0.016755, -0.795181,
		0.477902, -0.806846, 0.347289,
		-0.635770, -0.590524, -0.497069,
		38.516872, 35.256363, 21.277403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384933, 35.192490, 21.333004>,  <38.961910, 35.669731, 21.625351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384933, 35.192490, 21.333004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054771, 35.172359, 21.108086>,  <38.856674, 35.160282, 20.973135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054771, 35.172359, 21.108086>,  <39.384933, 35.192490, 21.333004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054771, 35.172359, 21.108086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564492, -0.086826, -0.820860,
		-0.007511, -0.994952, 0.100076,
		-0.825405, -0.050327, -0.562294,
		38.807152, 35.157261, 20.939398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501793, 34.665054, 20.857409>,  <39.384933, 35.192490, 21.333004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501793, 34.665054, 20.857409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196396, 34.867157, 20.696516>,  <39.013157, 34.988419, 20.599979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196396, 34.867157, 20.696516>,  <39.501793, 34.665054, 20.857409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196396, 34.867157, 20.696516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395337, -0.126844, -0.909736,
		-0.510672, -0.853595, -0.102902,
		-0.763494, 0.505258, -0.402233,
		38.967346, 35.018734, 20.575846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489109, 34.449364, 20.165245>,  <39.501793, 34.665054, 20.857409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489109, 34.449364, 20.165245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250408, 34.768986, 20.135864>,  <39.107189, 34.960758, 20.118237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250408, 34.768986, 20.135864>,  <39.489109, 34.449364, 20.165245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250408, 34.768986, 20.135864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284199, 0.124865, -0.950600,
		-0.750413, -0.588146, -0.301605,
		-0.596751, 0.799058, -0.073450,
		39.071384, 35.008701, 20.113829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922512, 34.379074, 19.578922>,  <39.489109, 34.449364, 20.165245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922512, 34.379074, 19.578922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997929, 34.765762, 19.648087>,  <39.043179, 34.997776, 19.689585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997929, 34.765762, 19.648087>,  <38.922512, 34.379074, 19.578922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997929, 34.765762, 19.648087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132423, 0.149432, -0.979864,
		-0.973096, 0.207645, -0.099842,
		0.188544, 0.966723, 0.172908,
		39.054493, 35.055779, 19.699959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596340, 34.632183, 19.050907>,  <38.922512, 34.379074, 19.578922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596340, 34.632183, 19.050907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842384, 34.918201, 19.183784>,  <38.990009, 35.089813, 19.263510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842384, 34.918201, 19.183784>,  <38.596340, 34.632183, 19.050907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842384, 34.918201, 19.183784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228635, 0.241456, -0.943093,
		-0.754566, 0.656053, -0.014965,
		0.615106, 0.715048, 0.332191,
		39.026917, 35.132717, 19.283442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499252, 35.359688, 18.684250>,  <38.596340, 34.632183, 19.050907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499252, 35.359688, 18.684250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869366, 35.302410, 18.824732>,  <39.091434, 35.268044, 18.909021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869366, 35.302410, 18.824732>,  <38.499252, 35.359688, 18.684250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869366, 35.302410, 18.824732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374123, 0.192515, -0.907177,
		0.062293, 0.970790, 0.231705,
		0.925285, -0.143196, 0.351203,
		39.146950, 35.259453, 18.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921021, 35.967934, 18.710226>,  <38.499252, 35.359688, 18.684250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921021, 35.967934, 18.710226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131386, 35.639053, 18.623142>,  <39.257603, 35.441723, 18.570892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131386, 35.639053, 18.623142>,  <38.921021, 35.967934, 18.710226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131386, 35.639053, 18.623142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321471, 0.429131, -0.844099,
		0.787449, 0.373931, 0.489999,
		0.525909, -0.822206, -0.217711,
		39.289158, 35.392391, 18.557829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678509, 36.103596, 18.665028>,  <38.921021, 35.967934, 18.710226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678509, 36.103596, 18.665028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557034, 35.801025, 18.433306>,  <39.484146, 35.619484, 18.294271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557034, 35.801025, 18.433306>,  <39.678509, 36.103596, 18.665028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557034, 35.801025, 18.433306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279591, 0.510501, -0.813152,
		0.910824, -0.408916, 0.056454,
		-0.303691, -0.756423, -0.579306,
		39.465927, 35.574097, 18.259514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196632, 36.027821, 18.225321>,  <39.678509, 36.103596, 18.665028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196632, 36.027821, 18.225321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895645, 35.847813, 18.032955>,  <39.715054, 35.739807, 17.917536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895645, 35.847813, 18.032955>,  <40.196632, 36.027821, 18.225321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895645, 35.847813, 18.032955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254140, 0.475242, -0.842352,
		0.607623, -0.756062, -0.243237,
		-0.752467, -0.450017, -0.480914,
		39.669907, 35.712807, 17.888681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713478, 36.150993, 18.785711>,  <40.196632, 36.027821, 18.225321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713478, 36.150993, 18.785711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516464, 36.484219, 18.684975>,  <40.398258, 36.684155, 18.624533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516464, 36.484219, 18.684975>,  <40.713478, 36.150993, 18.785711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516464, 36.484219, 18.684975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869371, 0.457627, -0.186470,
		-0.040091, -0.310785, -0.949634,
		-0.492531, 0.833060, -0.251841,
		40.368706, 36.734138, 18.609423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048927, 36.435604, 18.166395>,  <40.713478, 36.150993, 18.785711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048927, 36.435604, 18.166395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854847, 36.697224, 18.398535>,  <40.738400, 36.854195, 18.537819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854847, 36.697224, 18.398535>,  <41.048927, 36.435604, 18.166395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854847, 36.697224, 18.398535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804438, 0.594028, 0.003086,
		-0.342725, 0.468352, -0.814362,
		-0.485200, 0.654047, 0.580349,
		40.709286, 36.893436, 18.572639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986126, 37.118069, 17.795788>,  <41.048927, 36.435604, 18.166395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986126, 37.118069, 17.795788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017841, 37.099304, 18.194086>,  <41.036869, 37.088047, 18.433065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017841, 37.099304, 18.194086>,  <40.986126, 37.118069, 17.795788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017841, 37.099304, 18.194086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824925, 0.563887, -0.039119,
		-0.559654, 0.824519, 0.083404,
		0.079285, -0.046909, 0.995748,
		41.041626, 37.085232, 18.492811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154301, 37.728806, 17.892639>,  <40.986126, 37.118069, 17.795788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154301, 37.728806, 17.892639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292351, 37.466595, 18.161316>,  <41.375179, 37.309269, 18.322521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292351, 37.466595, 18.161316>,  <41.154301, 37.728806, 17.892639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292351, 37.466595, 18.161316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926870, 0.350637, -0.134038,
		-0.147654, 0.668829, 0.728606,
		0.345125, -0.655532, 0.671690,
		41.395889, 37.269936, 18.362823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443653, 37.857986, 18.159008>,  <41.154301, 37.728806, 17.892639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443653, 37.857986, 18.159008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165989, 37.608589, 18.015121>,  <39.999390, 37.458950, 17.928789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165989, 37.608589, 18.015121>,  <40.443653, 37.857986, 18.159008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165989, 37.608589, 18.015121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456377, -0.005244, 0.889771,
		-0.556656, 0.781808, -0.280910,
		-0.694157, -0.623498, -0.359718,
		39.957741, 37.421539, 17.907206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734112, 38.282688, 18.186579>,  <40.443653, 37.857986, 18.159008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734112, 38.282688, 18.186579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684803, 37.886044, 18.202089>,  <39.655216, 37.648056, 18.211395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684803, 37.886044, 18.202089>,  <39.734112, 38.282688, 18.186579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684803, 37.886044, 18.202089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514122, 0.097239, 0.852187,
		-0.848812, 0.085116, -0.521798,
		-0.123274, -0.991615, 0.038777,
		39.647820, 37.588558, 18.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149673, 38.018242, 17.979467>,  <39.734112, 38.282688, 18.186579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149673, 38.018242, 17.979467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302692, 37.796806, 18.275358>,  <39.394505, 37.663944, 18.452892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302692, 37.796806, 18.275358>,  <39.149673, 38.018242, 17.979467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302692, 37.796806, 18.275358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853552, 0.094754, 0.512319,
		-0.353707, -0.827381, -0.436271,
		0.382544, -0.553590, 0.739728,
		39.417458, 37.630730, 18.497276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646713, 37.552277, 18.024820>,  <39.149673, 38.018242, 17.979467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646713, 37.552277, 18.024820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865170, 37.561279, 18.359776>,  <38.996243, 37.566681, 18.560749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865170, 37.561279, 18.359776>,  <38.646713, 37.552277, 18.024820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865170, 37.561279, 18.359776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832801, -0.093266, 0.545659,
		0.090381, -0.995387, -0.032192,
		0.546144, 0.022508, 0.837389,
		39.029015, 37.568031, 18.610992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285488, 36.926895, 18.490828>,  <38.646713, 37.552277, 18.024820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285488, 36.926895, 18.490828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493835, 37.190258, 18.708157>,  <38.618843, 37.348274, 18.838554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493835, 37.190258, 18.708157>,  <38.285488, 36.926895, 18.490828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493835, 37.190258, 18.708157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706258, -0.025125, 0.707509,
		0.479480, -0.752242, 0.451919,
		0.520864, 0.658407, 0.543324,
		38.650093, 37.387779, 18.871153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240471, 36.732471, 19.260492>,  <38.285488, 36.926895, 18.490828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240471, 36.732471, 19.260492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354263, 37.115917, 19.265116>,  <38.422539, 37.345985, 19.267891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354263, 37.115917, 19.265116>,  <38.240471, 36.732471, 19.260492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354263, 37.115917, 19.265116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615663, 0.173436, 0.768687,
		0.734867, -0.225793, 0.639521,
		0.284480, 0.958612, 0.011560,
		38.439606, 37.403500, 19.268583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281822, 36.900486, 20.005852>,  <38.240471, 36.732471, 19.260492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281822, 36.900486, 20.005852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235916, 37.260250, 19.837143>,  <38.208374, 37.476109, 19.735918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235916, 37.260250, 19.837143>,  <38.281822, 36.900486, 20.005852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235916, 37.260250, 19.837143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654614, 0.250885, 0.713118,
		0.747201, 0.357939, 0.559973,
		-0.114764, 0.899409, -0.421773,
		38.201488, 37.530071, 19.710611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202377, 37.341263, 20.566364>,  <38.281822, 36.900486, 20.005852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202377, 37.341263, 20.566364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057842, 37.579781, 20.279625>,  <37.971119, 37.722889, 20.107582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057842, 37.579781, 20.279625>,  <38.202377, 37.341263, 20.566364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057842, 37.579781, 20.279625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657211, 0.382487, 0.649444,
		0.661443, 0.705790, 0.253682,
		-0.361340, 0.596293, -0.716846,
		37.949440, 37.758667, 20.064571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041058, 37.945084, 20.975086>,  <38.202377, 37.341263, 20.566364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041058, 37.945084, 20.975086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822186, 37.982971, 20.642429>,  <37.690865, 38.005703, 20.442835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822186, 37.982971, 20.642429>,  <38.041058, 37.945084, 20.975086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822186, 37.982971, 20.642429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800189, 0.232286, 0.552938,
		0.245550, 0.968025, -0.051312,
		-0.547176, 0.094715, -0.831641,
		37.658031, 38.011387, 20.392937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757389, 38.637650, 20.908607>,  <38.041058, 37.945084, 20.975086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757389, 38.637650, 20.908607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520435, 38.388233, 20.704540>,  <37.378262, 38.238583, 20.582100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520435, 38.388233, 20.704540>,  <37.757389, 38.637650, 20.908607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520435, 38.388233, 20.704540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791928, 0.334287, 0.510981,
		-0.148074, 0.706717, -0.691827,
		-0.592388, -0.623541, -0.510170,
		37.342720, 38.201172, 20.551489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312290, 39.091003, 20.668030>,  <37.757389, 38.637650, 20.908607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312290, 39.091003, 20.668030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156837, 38.722466, 20.671705>,  <37.063564, 38.501343, 20.673910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156837, 38.722466, 20.671705>,  <37.312290, 39.091003, 20.668030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156837, 38.722466, 20.671705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765336, 0.328348, 0.553577,
		-0.513053, 0.208108, -0.832747,
		-0.388635, -0.921346, 0.009187,
		37.040245, 38.446060, 20.674461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644581, 39.233757, 20.850464>,  <37.312290, 39.091003, 20.668030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644581, 39.233757, 20.850464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651546, 38.836212, 20.894165>,  <36.655727, 38.597687, 20.920385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651546, 38.836212, 20.894165>,  <36.644581, 39.233757, 20.850464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651546, 38.836212, 20.894165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691516, 0.066946, 0.719252,
		-0.722151, -0.088076, -0.686105,
		0.017417, -0.993862, 0.109251,
		36.656773, 38.538055, 20.926941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005547, 38.943691, 20.844837>,  <36.644581, 39.233757, 20.850464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005547, 38.943691, 20.844837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215355, 38.655678, 21.026577>,  <36.341240, 38.482872, 21.135622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215355, 38.655678, 21.026577>,  <36.005547, 38.943691, 20.844837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215355, 38.655678, 21.026577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667977, -0.017133, 0.743985,
		-0.527908, -0.693730, -0.489951,
		0.524519, -0.720031, 0.454351,
		36.372711, 38.439667, 21.162882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581921, 38.626144, 21.260283>,  <36.005547, 38.943691, 20.844837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581921, 38.626144, 21.260283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901546, 38.450092, 21.424128>,  <36.093323, 38.344463, 21.522434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901546, 38.450092, 21.424128>,  <35.581921, 38.626144, 21.260283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901546, 38.450092, 21.424128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491928, -0.086880, 0.866290,
		-0.345689, -0.893723, -0.285933,
		0.799065, -0.440125, 0.409614,
		36.141266, 38.318054, 21.547012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348801, 37.991005, 21.646225>,  <35.581921, 38.626144, 21.260283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348801, 37.991005, 21.646225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709663, 38.094387, 21.784393>,  <35.926182, 38.156418, 21.867294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709663, 38.094387, 21.784393>,  <35.348801, 37.991005, 21.646225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709663, 38.094387, 21.784393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316442, -0.147766, 0.937032,
		0.293224, -0.954655, -0.051521,
		0.902155, 0.258457, 0.345422,
		35.980309, 38.171925, 21.888020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580662, 37.333096, 21.951569>,  <35.348801, 37.991005, 21.646225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580662, 37.333096, 21.951569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742092, 37.666634, 22.102215>,  <35.838951, 37.866756, 22.192602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742092, 37.666634, 22.102215>,  <35.580662, 37.333096, 21.951569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742092, 37.666634, 22.102215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313633, -0.260609, 0.913081,
		0.859514, -0.486612, 0.156346,
		0.403571, 0.833842, 0.376615,
		35.863163, 37.916786, 22.215199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855942, 37.093208, 22.493296>,  <35.580662, 37.333096, 21.951569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855942, 37.093208, 22.493296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844276, 37.488964, 22.550240>,  <35.837276, 37.726418, 22.584406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844276, 37.488964, 22.550240>,  <35.855942, 37.093208, 22.493296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844276, 37.488964, 22.550240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383794, -0.142587, 0.912344,
		0.922958, -0.028032, 0.383878,
		-0.029161, 0.989385, 0.142360,
		35.835529, 37.785778, 22.592947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018829, 37.126053, 23.140829>,  <35.855942, 37.093208, 22.493296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018829, 37.126053, 23.140829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865498, 37.490433, 23.079857>,  <35.773499, 37.709061, 23.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865498, 37.490433, 23.079857>,  <36.018829, 37.126053, 23.140829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865498, 37.490433, 23.079857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341428, 0.013586, 0.939810,
		0.858187, 0.412302, 0.305814,
		-0.383331, 0.910946, -0.152431,
		35.750500, 37.763718, 23.034128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132450, 37.495895, 23.781605>,  <36.018829, 37.126053, 23.140829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132450, 37.495895, 23.781605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853745, 37.694939, 23.574955>,  <35.686520, 37.814365, 23.450964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853745, 37.694939, 23.574955>,  <36.132450, 37.495895, 23.781605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853745, 37.694939, 23.574955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497697, 0.183276, 0.847766,
		0.516544, 0.847816, 0.119961,
		-0.696764, 0.497613, -0.516625,
		35.644714, 37.844223, 23.419968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984432, 37.999168, 24.209471>,  <36.132450, 37.495895, 23.781605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984432, 37.999168, 24.209471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666405, 37.949265, 23.972050>,  <35.475590, 37.919323, 23.829597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666405, 37.949265, 23.972050>,  <35.984432, 37.999168, 24.209471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666405, 37.949265, 23.972050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606395, 0.143276, 0.782149,
		-0.012541, 0.981787, -0.189569,
		-0.795065, -0.124762, -0.593554,
		35.427887, 37.911835, 23.793983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487278, 38.446552, 24.412914>,  <35.984432, 37.999168, 24.209471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487278, 38.446552, 24.412914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248745, 38.205296, 24.201021>,  <35.105625, 38.060543, 24.073885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248745, 38.205296, 24.201021>,  <35.487278, 38.446552, 24.412914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248745, 38.205296, 24.201021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724272, 0.119696, 0.679046,
		-0.346152, 0.788604, -0.508214,
		-0.596330, -0.603139, -0.529731,
		35.069847, 38.024353, 24.042103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833706, 38.681187, 24.539780>,  <35.487278, 38.446552, 24.412914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833706, 38.681187, 24.539780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780029, 38.310394, 24.399662>,  <34.747822, 38.087921, 24.315592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780029, 38.310394, 24.399662>,  <34.833706, 38.681187, 24.539780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780029, 38.310394, 24.399662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716654, -0.153352, 0.680360,
		-0.684397, 0.342338, -0.643743,
		-0.134194, -0.926978, -0.350292,
		34.739773, 38.032303, 24.294575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129288, 38.533993, 24.422558>,  <34.833706, 38.681187, 24.539780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129288, 38.533993, 24.422558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282829, 38.164886, 24.436178>,  <34.374954, 37.943420, 24.444351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282829, 38.164886, 24.436178>,  <34.129288, 38.533993, 24.422558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282829, 38.164886, 24.436178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720606, -0.276289, 0.635917,
		-0.577395, -0.268634, -0.771006,
		0.383850, -0.922767, 0.034051,
		34.397984, 37.888058, 24.446394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577785, 38.056709, 24.220203>,  <34.129288, 38.533993, 24.422558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577785, 38.056709, 24.220203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866821, 37.879974, 24.432863>,  <34.040241, 37.773933, 24.560459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866821, 37.879974, 24.432863>,  <33.577785, 38.056709, 24.220203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866821, 37.879974, 24.432863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689298, -0.402309, 0.602508,
		-0.052323, -0.801828, -0.595259,
		0.722586, -0.441836, 0.531649,
		34.083595, 37.747425, 24.592358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332787, 37.463013, 24.250807>,  <33.577785, 38.056709, 24.220203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332787, 37.463013, 24.250807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586967, 37.483097, 24.559011>,  <33.739475, 37.495148, 24.743935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586967, 37.483097, 24.559011>,  <33.332787, 37.463013, 24.250807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586967, 37.483097, 24.559011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741783, -0.237376, 0.627225,
		0.214394, -0.970119, -0.113595,
		0.635448, 0.050210, 0.770510,
		33.777603, 37.498161, 24.790165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870102, 37.307957, 24.765852>,  <33.332787, 37.463013, 24.250807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870102, 37.307957, 24.765852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224083, 37.365993, 24.942852>,  <33.436470, 37.400818, 25.049053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224083, 37.365993, 24.942852>,  <32.870102, 37.307957, 24.765852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224083, 37.365993, 24.942852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431795, -0.100187, 0.896390,
		0.174395, -0.984332, -0.026009,
		0.884952, 0.145096, 0.442502,
		33.489567, 37.409523, 25.075602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109539, 36.728535, 25.123394>,  <32.870102, 37.307957, 24.765852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109539, 36.728535, 25.123394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218754, 37.086918, 25.263510>,  <33.284283, 37.301949, 25.347578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218754, 37.086918, 25.263510>,  <33.109539, 36.728535, 25.123394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218754, 37.086918, 25.263510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531580, -0.162967, 0.831183,
		0.801794, -0.413150, 0.431780,
		0.273037, 0.895963, 0.350288,
		33.300667, 37.355705, 25.368597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282162, 36.692181, 25.796597>,  <33.109539, 36.728535, 25.123394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282162, 36.692181, 25.796597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207333, 37.084976, 25.786020>,  <33.162437, 37.320656, 25.779675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207333, 37.084976, 25.786020>,  <33.282162, 36.692181, 25.796597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207333, 37.084976, 25.786020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482018, -0.068307, 0.873495,
		0.855958, 0.176150, 0.486115,
		-0.187071, 0.981991, -0.026440,
		33.151211, 37.379574, 25.778088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417961, 36.887375, 26.526894>,  <33.282162, 36.692181, 25.796597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417961, 36.887375, 26.526894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236423, 37.202831, 26.360970>,  <33.127502, 37.392105, 26.261415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236423, 37.202831, 26.360970>,  <33.417961, 36.887375, 26.526894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236423, 37.202831, 26.360970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399368, 0.236122, 0.885862,
		0.796575, 0.567706, 0.207796,
		-0.453844, 0.788642, -0.414813,
		33.100269, 37.439423, 26.236526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744572, 37.540119, 26.723326>,  <33.417961, 36.887375, 26.526894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744572, 37.540119, 26.723326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355915, 37.576538, 26.636034>,  <33.122723, 37.598389, 26.583658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355915, 37.576538, 26.636034>,  <33.744572, 37.540119, 26.723326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355915, 37.576538, 26.636034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184702, 0.284030, 0.940857,
		0.147644, 0.954483, -0.259159,
		-0.971641, 0.091045, -0.218231,
		33.064423, 37.603851, 26.570564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621109, 38.056316, 27.224455>,  <33.744572, 37.540119, 26.723326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621109, 38.056316, 27.224455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259098, 37.933018, 27.107214>,  <33.041893, 37.859039, 27.036869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259098, 37.933018, 27.107214>,  <33.621109, 38.056316, 27.224455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259098, 37.933018, 27.107214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382862, 0.290129, 0.877064,
		-0.185318, 0.905984, -0.380592,
		-0.905027, -0.308250, -0.293101,
		32.987591, 37.840542, 27.019283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234692, 38.617424, 27.396215>,  <33.621109, 38.056316, 27.224455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234692, 38.617424, 27.396215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973885, 38.318367, 27.345757>,  <32.817402, 38.138935, 27.315481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973885, 38.318367, 27.345757>,  <33.234692, 38.617424, 27.396215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973885, 38.318367, 27.345757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521880, 0.321838, 0.789976,
		-0.550017, 0.580910, -0.600021,
		-0.652014, -0.747639, -0.126149,
		32.778278, 38.094074, 27.307911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644451, 38.941204, 27.597897>,  <33.234692, 38.617424, 27.396215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644451, 38.941204, 27.597897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568237, 38.549107, 27.619156>,  <32.522511, 38.313850, 27.631910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568237, 38.549107, 27.619156>,  <32.644451, 38.941204, 27.597897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568237, 38.549107, 27.619156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467196, 0.138160, 0.873292,
		-0.863379, 0.141563, -0.484289,
		-0.190535, -0.980241, 0.053147,
		32.511078, 38.255035, 27.635099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933910, 38.860428, 27.690973>,  <32.644451, 38.941204, 27.597897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933910, 38.860428, 27.690973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128304, 38.540123, 27.831028>,  <32.244938, 38.347939, 27.915060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128304, 38.540123, 27.831028>,  <31.933910, 38.860428, 27.690973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128304, 38.540123, 27.831028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413872, 0.141998, 0.899192,
		-0.769761, -0.581902, -0.262406,
		0.485981, -0.800766, 0.350137,
		32.274097, 38.299892, 27.936069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380831, 38.290749, 28.067593>,  <31.933910, 38.860428, 27.690973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380831, 38.290749, 28.067593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753128, 38.222198, 28.196804>,  <31.976507, 38.181068, 28.274330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753128, 38.222198, 28.196804>,  <31.380831, 38.290749, 28.067593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753128, 38.222198, 28.196804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320769, 0.041485, 0.946248,
		-0.175562, -0.984332, -0.016359,
		0.930745, -0.171373, 0.323027,
		32.032352, 38.170788, 28.293713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332033, 37.676685, 28.469751>,  <31.380831, 38.290749, 28.067593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332033, 37.676685, 28.469751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682236, 37.840889, 28.571711>,  <31.892357, 37.939411, 28.632887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682236, 37.840889, 28.571711>,  <31.332033, 37.676685, 28.469751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682236, 37.840889, 28.571711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251046, -0.064306, 0.965837,
		0.412878, -0.909586, 0.046757,
		0.875505, 0.410510, 0.254899,
		31.944887, 37.964043, 28.648180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623207, 37.262989, 29.159887>,  <31.332033, 37.676685, 28.469751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623207, 37.262989, 29.159887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770941, 37.634632, 29.152369>,  <31.859581, 37.857616, 29.147858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770941, 37.634632, 29.152369>,  <31.623207, 37.262989, 29.159887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770941, 37.634632, 29.152369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182952, 0.092528, 0.978758,
		0.911109, -0.358051, 0.204156,
		0.369336, 0.929106, -0.018797,
		31.881742, 37.913364, 29.146729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964132, 37.327950, 29.796379>,  <31.623207, 37.262989, 29.159887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964132, 37.327950, 29.796379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882181, 37.693275, 29.655596>,  <31.833012, 37.912472, 29.571125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882181, 37.693275, 29.655596>,  <31.964132, 37.327950, 29.796379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882181, 37.693275, 29.655596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105958, 0.336779, 0.935603,
		0.973036, 0.228975, 0.027775,
		-0.204876, 0.913319, -0.351959,
		31.820719, 37.967270, 29.550009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213825, 37.733315, 30.367899>,  <31.964132, 37.327950, 29.796379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213825, 37.733315, 30.367899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972164, 37.955700, 30.139549>,  <31.827168, 38.089130, 30.002539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972164, 37.955700, 30.139549>,  <32.213825, 37.733315, 30.367899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972164, 37.955700, 30.139549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302876, 0.502425, 0.809836,
		0.737063, 0.662172, -0.135155,
		-0.604156, 0.555965, -0.570875,
		31.790916, 38.122490, 29.968287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248802, 38.335785, 30.584692>,  <32.213825, 37.733315, 30.367899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248802, 38.335785, 30.584692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892406, 38.374779, 30.407316>,  <31.678570, 38.398174, 30.300890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892406, 38.374779, 30.407316>,  <32.248802, 38.335785, 30.584692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892406, 38.374779, 30.407316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380404, 0.372903, 0.846307,
		0.247864, 0.922735, -0.295167,
		-0.890986, 0.097487, -0.443441,
		31.625111, 38.404026, 30.274284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007111, 38.933624, 30.810993>,  <32.248802, 38.335785, 30.584692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007111, 38.933624, 30.810993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682367, 38.741585, 30.678091>,  <31.487522, 38.626362, 30.598351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682367, 38.741585, 30.678091>,  <32.007111, 38.933624, 30.810993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682367, 38.741585, 30.678091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508434, 0.301590, 0.806559,
		-0.287022, 0.823742, -0.488946,
		-0.811858, -0.480097, -0.332256,
		31.438810, 38.597557, 30.578415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719397, 39.662701, 31.079248>,  <32.007111, 38.933624, 30.810993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719397, 39.662701, 31.079248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962206, 39.890457, 31.300995>,  <32.107891, 40.027111, 31.434042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962206, 39.890457, 31.300995>,  <31.719397, 39.662701, 31.079248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962206, 39.890457, 31.300995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710453, -0.076273, -0.699599,
		-0.356060, 0.818523, -0.450823,
		0.607024, 0.569388, 0.554364,
		32.144314, 40.061272, 31.467304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075531, 40.262024, 30.638676>,  <31.719397, 39.662701, 31.079248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075531, 40.262024, 30.638676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316734, 40.192421, 30.950085>,  <32.461456, 40.150658, 31.136930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316734, 40.192421, 30.950085>,  <32.075531, 40.262024, 30.638676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316734, 40.192421, 30.950085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790204, -0.003477, -0.612834,
		0.109346, 0.984738, 0.135406,
		0.603010, -0.174009, 0.778524,
		32.497639, 40.140217, 31.183641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625881, 40.741470, 30.517664>,  <32.075531, 40.262024, 30.638676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625881, 40.741470, 30.517664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757038, 40.464672, 30.774920>,  <32.835732, 40.298592, 30.929274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757038, 40.464672, 30.774920>,  <32.625881, 40.741470, 30.517664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757038, 40.464672, 30.774920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826718, -0.119283, -0.549827,
		0.457195, 0.711976, 0.532976,
		0.327888, -0.691999, 0.643139,
		32.855404, 40.257072, 30.967861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375618, 40.881172, 30.698229>,  <32.625881, 40.741470, 30.517664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375618, 40.881172, 30.698229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331570, 40.488213, 30.758577>,  <33.305141, 40.252438, 30.794786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331570, 40.488213, 30.758577>,  <33.375618, 40.881172, 30.698229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331570, 40.488213, 30.758577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774305, -0.179963, -0.606683,
		0.623158, 0.050016, 0.780495,
		-0.110116, -0.982401, 0.150873,
		33.298534, 40.193493, 30.803839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053383, 40.690586, 30.745110>,  <33.375618, 40.881172, 30.698229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053383, 40.690586, 30.745110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860950, 40.345745, 30.681446>,  <33.745491, 40.138840, 30.643248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860950, 40.345745, 30.681446>,  <34.053383, 40.690586, 30.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860950, 40.345745, 30.681446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798058, -0.355522, -0.486527,
		0.362854, -0.361076, 0.859047,
		-0.481083, -0.862107, -0.159157,
		33.716625, 40.087112, 30.633699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566010, 40.182613, 30.859308>,  <34.053383, 40.690586, 30.745110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566010, 40.182613, 30.859308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277283, 39.991329, 30.659189>,  <34.104046, 39.876560, 30.539118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277283, 39.991329, 30.659189>,  <34.566010, 40.182613, 30.859308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277283, 39.991329, 30.659189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687367, -0.411066, -0.598792,
		0.080694, -0.776105, 0.625420,
		-0.721814, -0.478212, -0.500298,
		34.060738, 39.847866, 30.509100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810158, 39.572472, 30.644407>,  <34.566010, 40.182613, 30.859308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810158, 39.572472, 30.644407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505695, 39.602951, 30.386776>,  <34.323017, 39.621239, 30.232197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505695, 39.602951, 30.386776>,  <34.810158, 39.572472, 30.644407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505695, 39.602951, 30.386776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615045, -0.230342, -0.754097,
		-0.205812, -0.970123, 0.128467,
		-0.761158, 0.076189, -0.644076,
		34.277348, 39.625813, 30.193552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922596, 38.997066, 30.155602>,  <34.810158, 39.572472, 30.644407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922596, 38.997066, 30.155602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672119, 39.239342, 29.959227>,  <34.521832, 39.384708, 29.841402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672119, 39.239342, 29.959227>,  <34.922596, 38.997066, 30.155602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672119, 39.239342, 29.959227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470757, -0.208221, -0.857340,
		-0.621507, -0.767972, -0.154747,
		-0.626192, 0.605691, -0.490939,
		34.484261, 39.421047, 29.811945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711437, 38.599705, 29.546999>,  <34.922596, 38.997066, 30.155602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711437, 38.599705, 29.546999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635006, 38.988724, 29.493876>,  <34.589149, 39.222137, 29.462002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635006, 38.988724, 29.493876>,  <34.711437, 38.599705, 29.546999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635006, 38.988724, 29.493876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506595, -0.018181, -0.861992,
		-0.840745, -0.231986, -0.489215,
		-0.191075, 0.972549, -0.132809,
		34.577682, 39.280487, 29.454033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731323, 38.681557, 28.864315>,  <34.711437, 38.599705, 29.546999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731323, 38.681557, 28.864315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746494, 39.065685, 28.974840>,  <34.755596, 39.296162, 29.041155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746494, 39.065685, 28.974840>,  <34.731323, 38.681557, 28.864315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746494, 39.065685, 28.974840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496554, 0.221845, -0.839178,
		-0.867177, 0.169032, -0.468436,
		0.037928, 0.960319, 0.276312,
		34.757874, 39.353783, 29.057734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734318, 39.045815, 28.212154>,  <34.731323, 38.681557, 28.864315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734318, 39.045815, 28.212154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872257, 39.280197, 28.505478>,  <34.955021, 39.420826, 28.681471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872257, 39.280197, 28.505478>,  <34.734318, 39.045815, 28.212154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872257, 39.280197, 28.505478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593050, 0.469544, -0.654079,
		-0.727581, 0.660444, -0.185580,
		0.344845, 0.585954, 0.733308,
		34.975712, 39.455982, 28.725470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669800, 39.699268, 27.980425>,  <34.734318, 39.045815, 28.212154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669800, 39.699268, 27.980425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958973, 39.722523, 28.255812>,  <35.132477, 39.736477, 28.421043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958973, 39.722523, 28.255812>,  <34.669800, 39.699268, 27.980425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958973, 39.722523, 28.255812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580781, 0.488611, -0.651117,
		-0.374249, 0.870563, 0.319466,
		0.722932, 0.058141, 0.688468,
		35.175854, 39.739964, 28.462353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965771, 40.340458, 28.054735>,  <34.669800, 39.699268, 27.980425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965771, 40.340458, 28.054735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249481, 40.091309, 28.186764>,  <35.419708, 39.941818, 28.265982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249481, 40.091309, 28.186764>,  <34.965771, 40.340458, 28.054735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249481, 40.091309, 28.186764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651053, 0.399293, -0.645520,
		0.270285, 0.672747, 0.688736,
		0.709279, -0.622878, 0.330071,
		35.462265, 39.904446, 28.285786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674885, 40.668060, 27.816608>,  <34.965771, 40.340458, 28.054735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674885, 40.668060, 27.816608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734314, 40.280518, 27.895853>,  <35.769974, 40.047993, 27.943399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734314, 40.280518, 27.895853>,  <35.674885, 40.668060, 27.816608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734314, 40.280518, 27.895853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535361, -0.089634, -0.839854,
		0.831453, 0.230844, 0.505369,
		0.148577, -0.968853, 0.198111,
		35.778889, 39.989861, 27.955286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414444, 40.555725, 27.789417>,  <35.674885, 40.668060, 27.816608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414444, 40.555725, 27.789417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235767, 40.204639, 27.720049>,  <36.128559, 39.993988, 27.678427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235767, 40.204639, 27.720049>,  <36.414444, 40.555725, 27.789417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235767, 40.204639, 27.720049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402803, -0.024215, -0.914966,
		0.798883, -0.478566, 0.364364,
		-0.446694, -0.877718, -0.173423,
		36.101761, 39.941322, 27.668022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892563, 40.127159, 27.384090>,  <36.414444, 40.555725, 27.789417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892563, 40.127159, 27.384090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526917, 39.973858, 27.331148>,  <36.307529, 39.881878, 27.299383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526917, 39.973858, 27.331148>,  <36.892563, 40.127159, 27.384090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526917, 39.973858, 27.331148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182968, -0.098594, -0.978163,
		0.361830, -0.918368, 0.160249,
		-0.914112, -0.383249, -0.132358,
		36.252682, 39.858883, 27.291441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969051, 39.433426, 26.992899>,  <36.892563, 40.127159, 27.384090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969051, 39.433426, 26.992899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585003, 39.521549, 26.924047>,  <36.354572, 39.574425, 26.882736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585003, 39.521549, 26.924047>,  <36.969051, 39.433426, 26.992899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585003, 39.521549, 26.924047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097587, -0.312856, -0.944774,
		-0.261991, -0.923897, 0.278881,
		-0.960124, 0.220307, -0.172126,
		36.296967, 39.587643, 26.872410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778858, 38.893101, 26.531963>,  <36.969051, 39.433426, 26.992899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778858, 38.893101, 26.531963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505661, 39.182446, 26.491415>,  <36.341743, 39.356052, 26.467085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505661, 39.182446, 26.491415>,  <36.778858, 38.893101, 26.531963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505661, 39.182446, 26.491415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029347, -0.111497, -0.993331,
		-0.729840, -0.681409, 0.054922,
		-0.682988, 0.723360, -0.101373,
		36.300766, 39.399452, 26.461002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205936, 38.637070, 26.147671>,  <36.778858, 38.893101, 26.531963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205936, 38.637070, 26.147671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224812, 39.033363, 26.096737>,  <36.236137, 39.271141, 26.066175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224812, 39.033363, 26.096737>,  <36.205936, 38.637070, 26.147671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224812, 39.033363, 26.096737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130324, -0.132495, -0.982578,
		-0.990348, 0.029771, -0.135369,
		0.047188, 0.990736, -0.127337,
		36.238968, 39.330585, 26.058537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896828, 38.691082, 25.441996>,  <36.205936, 38.637070, 26.147671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896828, 38.691082, 25.441996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097332, 39.025246, 25.532177>,  <36.217632, 39.225746, 25.586285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097332, 39.025246, 25.532177>,  <35.896828, 38.691082, 25.441996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097332, 39.025246, 25.532177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371829, 0.027309, -0.927900,
		-0.781335, 0.548946, -0.296941,
		0.501258, 0.835411, 0.225452,
		36.247711, 39.275867, 25.599813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879948, 39.048401, 24.821615>,  <35.896828, 38.691082, 25.441996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879948, 39.048401, 24.821615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196426, 39.207424, 25.007500>,  <36.386314, 39.302837, 25.119030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196426, 39.207424, 25.007500>,  <35.879948, 39.048401, 24.821615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196426, 39.207424, 25.007500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505509, 0.002529, -0.862818,
		-0.344194, 0.917574, -0.198967,
		0.791196, 0.397557, 0.464712,
		36.433784, 39.326691, 25.146914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161285, 39.388451, 24.339077>,  <35.879948, 39.048401, 24.821615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161285, 39.388451, 24.339077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472458, 39.376842, 24.590151>,  <36.659161, 39.369877, 24.740795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472458, 39.376842, 24.590151>,  <36.161285, 39.388451, 24.339077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472458, 39.376842, 24.590151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628112, 0.008103, -0.778081,
		0.017490, 0.999546, 0.024529,
		0.777927, -0.029016, 0.627685,
		36.705837, 39.368137, 24.778456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609737, 39.808300, 24.059978>,  <36.161285, 39.388451, 24.339077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609737, 39.808300, 24.059978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870319, 39.627029, 24.303368>,  <37.026669, 39.518265, 24.449402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870319, 39.627029, 24.303368>,  <36.609737, 39.808300, 24.059978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870319, 39.627029, 24.303368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709038, 0.078289, -0.700811,
		0.269957, 0.887974, 0.372324,
		0.651451, -0.453181, 0.608473,
		37.065754, 39.491074, 24.485909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281219, 40.178204, 24.032955>,  <36.609737, 39.808300, 24.059978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281219, 40.178204, 24.032955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362423, 39.804115, 24.148996>,  <37.411144, 39.579662, 24.218620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362423, 39.804115, 24.148996>,  <37.281219, 40.178204, 24.032955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362423, 39.804115, 24.148996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674790, -0.081066, -0.733544,
		0.709539, 0.344673, 0.614618,
		0.203008, -0.935216, 0.290101,
		37.423325, 39.523552, 24.236027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996304, 40.133568, 23.894606>,  <37.281219, 40.178204, 24.032955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996304, 40.133568, 23.894606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897457, 39.746479, 23.914375>,  <37.838150, 39.514225, 23.926237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897457, 39.746479, 23.914375>,  <37.996304, 40.133568, 23.894606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897457, 39.746479, 23.914375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738141, -0.221044, -0.637407,
		0.627759, -0.121032, 0.768941,
		-0.247116, -0.967725, 0.049423,
		37.823322, 39.456161, 23.929203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617027, 39.779675, 24.048328>,  <37.996304, 40.133568, 23.894606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617027, 39.779675, 24.048328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364265, 39.505291, 23.904015>,  <38.212608, 39.340660, 23.817427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364265, 39.505291, 23.904015>,  <38.617027, 39.779675, 24.048328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364265, 39.505291, 23.904015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682547, -0.271975, -0.678350,
		0.367194, -0.674902, 0.640059,
		-0.631900, -0.685957, -0.360785,
		38.174694, 39.299503, 23.795778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011692, 39.240841, 23.794809>,  <38.617027, 39.779675, 24.048328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011692, 39.240841, 23.794809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662354, 39.148071, 23.623474>,  <38.452751, 39.092411, 23.520672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662354, 39.148071, 23.623474>,  <39.011692, 39.240841, 23.794809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662354, 39.148071, 23.623474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471394, -0.623891, -0.623336,
		-0.122673, -0.746306, 0.654201,
		-0.873349, -0.231920, -0.428339,
		38.400349, 39.078495, 23.494972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877968, 38.497375, 23.809464>,  <39.011692, 39.240841, 23.794809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877968, 38.497375, 23.809464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695641, 38.666172, 23.495993>,  <38.586243, 38.767452, 23.307909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695641, 38.666172, 23.495993>,  <38.877968, 38.497375, 23.809464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695641, 38.666172, 23.495993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533747, -0.574999, -0.620073,
		-0.712282, -0.700926, 0.036855,
		-0.455816, 0.421996, -0.783678,
		38.558895, 38.792770, 23.260889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678719, 37.859417, 23.338333>,  <38.877968, 38.497375, 23.809464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678719, 37.859417, 23.338333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712059, 38.176796, 23.097170>,  <38.732063, 38.367222, 22.952471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712059, 38.176796, 23.097170>,  <38.678719, 37.859417, 23.338333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712059, 38.176796, 23.097170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663754, -0.495476, -0.560299,
		-0.743293, -0.353484, -0.567948,
		0.083348, 0.793444, -0.602910,
		38.737064, 38.414829, 22.916296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638260, 37.615974, 22.712395>,  <38.678719, 37.859417, 23.338333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638260, 37.615974, 22.712395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814419, 37.970356, 22.654253>,  <38.920116, 38.182987, 22.619368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814419, 37.970356, 22.654253>,  <38.638260, 37.615974, 22.712395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814419, 37.970356, 22.654253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647610, -0.425613, -0.632024,
		-0.621810, 0.184213, -0.761195,
		0.440402, 0.885956, -0.145352,
		38.946541, 38.236141, 22.610647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796635, 37.536564, 22.020706>,  <38.638260, 37.615974, 22.712395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796635, 37.536564, 22.020706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025108, 37.820183, 22.186111>,  <39.162193, 37.990356, 22.285355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025108, 37.820183, 22.186111>,  <38.796635, 37.536564, 22.020706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025108, 37.820183, 22.186111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805486, -0.387263, -0.448575,
		-0.157923, 0.589300, -0.792329,
		0.571185, 0.709051, 0.413515,
		39.196465, 38.032898, 22.310165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034164, 37.874935, 21.472443>,  <38.796635, 37.536564, 22.020706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034164, 37.874935, 21.472443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267353, 37.910450, 21.795494>,  <39.407265, 37.931759, 21.989325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267353, 37.910450, 21.795494>,  <39.034164, 37.874935, 21.472443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267353, 37.910450, 21.795494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785462, -0.315851, -0.532248,
		0.207833, 0.944645, -0.253871,
		0.582971, 0.088787, 0.807627,
		39.442245, 37.937088, 22.037783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577450, 38.192535, 21.219334>,  <39.034164, 37.874935, 21.472443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577450, 38.192535, 21.219334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707623, 38.023582, 21.557728>,  <39.785728, 37.922211, 21.760763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707623, 38.023582, 21.557728>,  <39.577450, 38.192535, 21.219334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707623, 38.023582, 21.557728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841771, -0.278124, -0.462675,
		0.430712, 0.862695, 0.265035,
		0.325434, -0.422379, 0.845984,
		39.805252, 37.896870, 21.811523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206264, 38.306179, 21.164366>,  <39.577450, 38.192535, 21.219334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206264, 38.306179, 21.164366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174870, 38.016270, 21.438168>,  <40.156033, 37.842323, 21.602448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174870, 38.016270, 21.438168>,  <40.206264, 38.306179, 21.164366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174870, 38.016270, 21.438168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769438, -0.480623, -0.420674,
		0.633881, 0.493665, 0.595390,
		-0.078486, -0.724773, 0.684502,
		40.151325, 37.798840, 21.643518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937855, 38.105240, 21.382364>,  <40.206264, 38.306179, 21.164366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937855, 38.105240, 21.382364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695110, 37.793064, 21.442553>,  <40.549465, 37.605759, 21.478666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695110, 37.793064, 21.442553>,  <40.937855, 38.105240, 21.382364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695110, 37.793064, 21.442553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694116, -0.612619, -0.378022,
		0.387204, -0.124960, 0.913487,
		-0.606857, -0.780438, 0.150472,
		40.513054, 37.558933, 21.487694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390789, 37.571220, 21.647757>,  <40.937855, 38.105240, 21.382364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390789, 37.571220, 21.647757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075874, 37.362988, 21.515593>,  <40.886925, 37.238049, 21.436295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075874, 37.362988, 21.515593>,  <41.390789, 37.571220, 21.647757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075874, 37.362988, 21.515593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616553, -0.659525, -0.429988,
		0.005931, -0.542240, 0.840203,
		-0.787291, -0.520580, -0.330408,
		40.839687, 37.206814, 21.416470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710732, 37.029503, 21.516527>,  <41.390789, 37.571220, 21.647757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710732, 37.029503, 21.516527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364849, 36.927963, 21.343163>,  <41.157318, 36.867039, 21.239143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364849, 36.927963, 21.343163>,  <41.710732, 37.029503, 21.516527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364849, 36.927963, 21.343163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489679, -0.618100, -0.614953,
		-0.111789, -0.743986, 0.658778,
		-0.864707, -0.253845, -0.433411,
		41.105438, 36.851810, 21.213139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746296, 36.376423, 21.371500>,  <41.710732, 37.029503, 21.516527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746296, 36.376423, 21.371500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448166, 36.475170, 21.123775>,  <41.269287, 36.534416, 20.975142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448166, 36.475170, 21.123775>,  <41.746296, 36.376423, 21.371500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448166, 36.475170, 21.123775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346952, -0.649606, -0.676489,
		-0.569310, -0.719076, 0.398518,
		-0.745326, 0.246865, -0.619311,
		41.224567, 36.549229, 20.937983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921749, 35.549171, 21.280117>,  <41.746296, 36.376423, 21.371500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921749, 35.549171, 21.280117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038765, 35.199894, 21.436039>,  <42.108974, 34.990326, 21.529593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038765, 35.199894, 21.436039>,  <41.921749, 35.549171, 21.280117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038765, 35.199894, 21.436039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478077, 0.219487, 0.850452,
		-0.828169, -0.435147, -0.353246,
		0.292539, -0.873196, 0.389806,
		42.126526, 34.937935, 21.552980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304089, 35.150543, 21.490911>,  <41.921749, 35.549171, 21.280117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304089, 35.150543, 21.490911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602119, 35.005768, 21.715004>,  <41.780937, 34.918903, 21.849461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602119, 35.005768, 21.715004>,  <41.304089, 35.150543, 21.490911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602119, 35.005768, 21.715004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516591, 0.218152, 0.827975,
		-0.421891, -0.906318, -0.024433,
		0.745078, -0.361937, 0.560232,
		41.825642, 34.897186, 21.883074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999161, 34.989471, 22.077972>,  <41.304089, 35.150543, 21.490911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999161, 34.989471, 22.077972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370163, 34.946121, 22.221079>,  <41.592762, 34.920109, 22.306942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370163, 34.946121, 22.221079>,  <40.999161, 34.989471, 22.077972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370163, 34.946121, 22.221079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350772, 0.078524, 0.933163,
		-0.129229, -0.991003, 0.034814,
		0.927501, -0.108380, 0.357764,
		41.648415, 34.913609, 22.328407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936085, 34.482998, 22.617264>,  <40.999161, 34.989471, 22.077972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936085, 34.482998, 22.617264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245735, 34.728012, 22.681173>,  <41.431526, 34.875019, 22.719519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245735, 34.728012, 22.681173>,  <40.936085, 34.482998, 22.617264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245735, 34.728012, 22.681173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383755, 0.253368, 0.887996,
		0.503448, -0.748735, 0.431203,
		0.774126, 0.612536, 0.159773,
		41.477974, 34.911774, 22.729105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146732, 34.316433, 23.275068>,  <40.936085, 34.482998, 22.617264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146732, 34.316433, 23.275068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293579, 34.680935, 23.200399>,  <41.381687, 34.899635, 23.155598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293579, 34.680935, 23.200399>,  <41.146732, 34.316433, 23.275068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293579, 34.680935, 23.200399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357887, 0.323611, 0.875896,
		0.858571, -0.254747, 0.444928,
		0.367115, 0.911252, -0.186672,
		41.403713, 34.954311, 23.144398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451107, 34.487782, 23.846561>,  <41.146732, 34.316433, 23.275068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451107, 34.487782, 23.846561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422035, 34.858803, 23.699934>,  <41.404594, 35.081413, 23.611958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422035, 34.858803, 23.699934>,  <41.451107, 34.487782, 23.846561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422035, 34.858803, 23.699934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272597, 0.335070, 0.901897,
		0.959380, 0.165471, 0.228495,
		-0.072676, 0.927549, -0.366567,
		41.400234, 35.137066, 23.589964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796894, 34.976292, 24.331194>,  <41.451107, 34.487782, 23.846561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796894, 34.976292, 24.331194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568710, 35.207054, 24.097355>,  <41.431801, 35.345512, 23.957050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568710, 35.207054, 24.097355>,  <41.796894, 34.976292, 24.331194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568710, 35.207054, 24.097355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288493, 0.525676, 0.800273,
		0.768991, 0.625176, -0.133444,
		-0.570460, 0.576905, -0.584600,
		41.397572, 35.380127, 23.921974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850750, 35.551453, 24.701496>,  <41.796894, 34.976292, 24.331194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850750, 35.551453, 24.701496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529419, 35.628441, 24.476063>,  <41.336620, 35.674633, 24.340803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529419, 35.628441, 24.476063>,  <41.850750, 35.551453, 24.701496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529419, 35.628441, 24.476063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419341, 0.489153, 0.764777,
		0.422875, 0.850696, -0.312237,
		-0.803324, 0.192471, -0.563582,
		41.288422, 35.686184, 24.306988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690384, 36.248558, 24.808756>,  <41.850750, 35.551453, 24.701496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690384, 36.248558, 24.808756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354507, 36.089447, 24.660864>,  <41.152981, 35.993980, 24.572128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354507, 36.089447, 24.660864>,  <41.690384, 36.248558, 24.808756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354507, 36.089447, 24.660864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543020, 0.605774, 0.581521,
		-0.007344, 0.689066, -0.724661,
		-0.839687, -0.397777, -0.369728,
		41.102600, 35.970116, 24.549946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325584, 36.759869, 24.835239>,  <41.690384, 36.248558, 24.808756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325584, 36.759869, 24.835239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063709, 36.457600, 24.827801>,  <40.906586, 36.276237, 24.823338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063709, 36.457600, 24.827801>,  <41.325584, 36.759869, 24.835239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063709, 36.457600, 24.827801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510432, 0.423802, 0.748232,
		-0.557538, 0.499348, -0.663176,
		-0.654684, -0.755674, -0.018597,
		40.867306, 36.230896, 24.822222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667770, 37.074814, 24.895159>,  <41.325584, 36.759869, 24.835239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667770, 37.074814, 24.895159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584694, 36.696941, 24.996698>,  <40.534847, 36.470219, 25.057623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584694, 36.696941, 24.996698>,  <40.667770, 37.074814, 24.895159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584694, 36.696941, 24.996698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570343, 0.327778, 0.753173,
		-0.794716, 0.011645, -0.606870,
		-0.207689, -0.944683, 0.253849,
		40.522388, 36.413536, 25.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934402, 37.024673, 24.856104>,  <40.667770, 37.074814, 24.895159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934402, 37.024673, 24.856104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069714, 36.720882, 25.078371>,  <40.150902, 36.538609, 25.211731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069714, 36.720882, 25.078371>,  <39.934402, 37.024673, 24.856104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069714, 36.720882, 25.078371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670242, 0.220040, 0.708772,
		-0.660563, -0.612194, -0.434597,
		0.338277, -0.759474, 0.555669,
		40.171196, 36.493042, 25.245071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371098, 36.522774, 25.019167>,  <39.934402, 37.024673, 24.856104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371098, 36.522774, 25.019167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649498, 36.534710, 25.306135>,  <39.816540, 36.541870, 25.478315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649498, 36.534710, 25.306135>,  <39.371098, 36.522774, 25.019167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649498, 36.534710, 25.306135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700531, 0.247511, 0.669324,
		-0.157596, -0.968426, 0.193172,
		0.696003, 0.029840, 0.717419,
		39.858299, 36.543663, 25.521360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061829, 36.169292, 25.713745>,  <39.371098, 36.522774, 25.019167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061829, 36.169292, 25.713745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378883, 36.388557, 25.820511>,  <39.569115, 36.520119, 25.884569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378883, 36.388557, 25.820511>,  <39.061829, 36.169292, 25.713745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378883, 36.388557, 25.820511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497388, 0.328193, 0.803053,
		0.352599, -0.769293, 0.532786,
		0.792640, 0.548157, 0.266917,
		39.616676, 36.553005, 25.900585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103527, 36.076412, 26.463448>,  <39.061829, 36.169292, 25.713745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103527, 36.076412, 26.463448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327229, 36.403294, 26.407711>,  <39.461449, 36.599422, 26.374269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327229, 36.403294, 26.407711>,  <39.103527, 36.076412, 26.463448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327229, 36.403294, 26.407711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447620, 0.439151, 0.778963,
		0.697764, -0.373263, 0.611392,
		0.559251, 0.817203, -0.139344,
		39.495003, 36.648453, 26.365908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372017, 36.242790, 27.113657>,  <39.103527, 36.076412, 26.463448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372017, 36.242790, 27.113657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399029, 36.566723, 26.880552>,  <39.415237, 36.761082, 26.740688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399029, 36.566723, 26.880552>,  <39.372017, 36.242790, 27.113657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399029, 36.566723, 26.880552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444528, 0.547341, 0.709092,
		0.893215, 0.211168, 0.396956,
		0.067532, 0.809831, -0.582764,
		39.419289, 36.809673, 26.705723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644753, 36.701679, 27.592384>,  <39.372017, 36.242790, 27.113657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644753, 36.701679, 27.592384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464027, 36.886040, 27.286852>,  <39.355591, 36.996655, 27.103533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464027, 36.886040, 27.286852>,  <39.644753, 36.701679, 27.592384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464027, 36.886040, 27.286852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685230, 0.368963, 0.627954,
		0.571247, 0.807118, 0.149118,
		-0.451814, 0.460897, -0.763831,
		39.328484, 37.024307, 27.057703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593845, 37.497898, 27.766392>,  <39.644753, 36.701679, 27.592384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593845, 37.497898, 27.766392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311058, 37.420643, 27.494246>,  <39.141384, 37.374290, 27.330957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311058, 37.420643, 27.494246>,  <39.593845, 37.497898, 27.766392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311058, 37.420643, 27.494246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658595, 0.530410, 0.533777,
		0.257780, 0.825447, -0.502181,
		-0.706967, -0.193137, -0.680365,
		39.098969, 37.362701, 27.290136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289429, 38.150021, 27.585220>,  <39.593845, 37.497898, 27.766392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289429, 38.150021, 27.585220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028542, 37.857201, 27.506519>,  <38.872009, 37.681507, 27.459299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028542, 37.857201, 27.506519>,  <39.289429, 38.150021, 27.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028542, 37.857201, 27.506519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686987, 0.461117, 0.561623,
		-0.320411, 0.501467, -0.803659,
		-0.652216, -0.732053, -0.196755,
		38.832878, 37.637585, 27.447493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715153, 38.570110, 27.426195>,  <39.289429, 38.150021, 27.585220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715153, 38.570110, 27.426195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582039, 38.203133, 27.513420>,  <38.502171, 37.982944, 27.565754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582039, 38.203133, 27.513420>,  <38.715153, 38.570110, 27.426195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582039, 38.203133, 27.513420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720808, 0.396576, 0.568474,
		-0.608021, 0.032001, -0.793276,
		-0.332786, -0.917444, 0.218060,
		38.482204, 37.927898, 27.578838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014332, 38.675289, 27.726185>,  <38.715153, 38.570110, 27.426195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014332, 38.675289, 27.726185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058083, 38.287998, 27.816145>,  <38.084332, 38.055626, 27.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058083, 38.287998, 27.816145>,  <38.014332, 38.675289, 27.726185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058083, 38.287998, 27.816145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591141, 0.118540, 0.797810,
		-0.799118, -0.220208, -0.559392,
		0.109374, -0.968223, 0.224901,
		38.090897, 37.997532, 27.883615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369675, 38.276577, 27.744308>,  <38.014332, 38.675289, 27.726185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369675, 38.276577, 27.744308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585724, 38.030121, 27.973616>,  <37.715355, 37.882248, 28.111200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585724, 38.030121, 27.973616>,  <37.369675, 38.276577, 27.744308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585724, 38.030121, 27.973616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656594, 0.117592, 0.745021,
		-0.526450, -0.778808, -0.341041,
		0.540125, -0.616141, 0.573267,
		37.747761, 37.845280, 28.145596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863136, 37.729534, 28.072176>,  <37.369675, 38.276577, 27.744308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863136, 37.729534, 28.072176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197472, 37.787155, 28.284071>,  <37.398071, 37.821728, 28.411209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197472, 37.787155, 28.284071>,  <36.863136, 37.729534, 28.072176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197472, 37.787155, 28.284071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544638, 0.096529, 0.833098,
		0.068890, -0.984848, 0.159150,
		0.835837, 0.144071, 0.529736,
		37.448223, 37.830372, 28.442993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795475, 37.328083, 28.704826>,  <36.863136, 37.729534, 28.072176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795475, 37.328083, 28.704826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069958, 37.601841, 28.803398>,  <37.234646, 37.766094, 28.862541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069958, 37.601841, 28.803398>,  <36.795475, 37.328083, 28.704826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069958, 37.601841, 28.803398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401026, 0.073301, 0.913129,
		0.606874, -0.725421, 0.324759,
		0.686209, 0.684391, 0.246428,
		37.275822, 37.807159, 28.877327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042160, 37.170704, 29.344637>,  <36.795475, 37.328083, 28.704826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042160, 37.170704, 29.344637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168560, 37.549339, 29.318951>,  <37.244400, 37.776520, 29.303539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168560, 37.549339, 29.318951>,  <37.042160, 37.170704, 29.344637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168560, 37.549339, 29.318951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354333, 0.180533, 0.917527,
		0.880109, -0.267183, 0.392454,
		0.315999, 0.946584, -0.064217,
		37.263359, 37.833313, 29.299686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374138, 37.277977, 29.907591>,  <37.042160, 37.170704, 29.344637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374138, 37.277977, 29.907591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256920, 37.637760, 29.777918>,  <37.186588, 37.853630, 29.700115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256920, 37.637760, 29.777918>,  <37.374138, 37.277977, 29.907591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256920, 37.637760, 29.777918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247834, 0.256015, 0.934363,
		0.923418, 0.354156, 0.147892,
		-0.293048, 0.899461, -0.324181,
		37.169006, 37.907597, 29.680664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710976, 37.801712, 30.357172>,  <37.374138, 37.277977, 29.907591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710976, 37.801712, 30.357172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406963, 38.003651, 30.193478>,  <37.224556, 38.124813, 30.095261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406963, 38.003651, 30.193478>,  <37.710976, 37.801712, 30.357172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406963, 38.003651, 30.193478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255903, 0.346345, 0.902529,
		0.597379, 0.790677, -0.134041,
		-0.760034, 0.504851, -0.409236,
		37.178955, 38.155106, 30.070707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787014, 38.537384, 30.492048>,  <37.710976, 37.801712, 30.357172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787014, 38.537384, 30.492048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396221, 38.476757, 30.432007>,  <37.161747, 38.440380, 30.395981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396221, 38.476757, 30.432007>,  <37.787014, 38.537384, 30.492048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396221, 38.476757, 30.432007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207488, 0.511867, 0.833631,
		-0.049515, 0.845589, -0.531533,
		-0.976984, -0.151564, -0.150104,
		37.103127, 38.431290, 30.386976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419975, 39.107662, 30.573328>,  <37.787014, 38.537384, 30.492048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419975, 39.107662, 30.573328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107716, 38.862072, 30.620008>,  <36.920361, 38.714718, 30.648018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107716, 38.862072, 30.620008>,  <37.419975, 39.107662, 30.573328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107716, 38.862072, 30.620008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265398, 0.494737, 0.827526,
		-0.565819, 0.615035, -0.549164,
		-0.780649, -0.613977, 0.116703,
		36.873520, 38.677879, 30.655020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846329, 39.469322, 30.936096>,  <37.419975, 39.107662, 30.573328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846329, 39.469322, 30.936096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743496, 39.085766, 30.984146>,  <36.681797, 38.855633, 31.012976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743496, 39.085766, 30.984146>,  <36.846329, 39.469322, 30.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743496, 39.085766, 30.984146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344329, 0.207037, 0.915736,
		-0.902964, 0.194060, -0.383401,
		-0.257087, -0.958893, 0.120127,
		36.666370, 38.798100, 31.020184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256260, 39.513786, 31.375090>,  <36.846329, 39.469322, 30.936096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256260, 39.513786, 31.375090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358440, 39.127068, 31.372543>,  <36.419750, 38.895035, 31.371016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358440, 39.127068, 31.372543>,  <36.256260, 39.513786, 31.375090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358440, 39.127068, 31.372543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265305, -0.076428, 0.961131,
		-0.929709, -0.243833, -0.276020,
		0.255451, -0.966801, -0.006365,
		36.435074, 38.837029, 31.370634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723808, 39.218643, 31.712736>,  <36.256260, 39.513786, 31.375090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723808, 39.218643, 31.712736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008968, 38.938786, 31.731815>,  <36.180065, 38.770870, 31.743263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008968, 38.938786, 31.731815>,  <35.723808, 39.218643, 31.712736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008968, 38.938786, 31.731815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262871, -0.203554, 0.943114,
		-0.650135, -0.684882, -0.329030,
		0.712897, -0.699644, 0.047698,
		36.222839, 38.728893, 31.746124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454399, 38.724461, 32.173851>,  <35.723808, 39.218643, 31.712736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454399, 38.724461, 32.173851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846539, 38.651066, 32.202835>,  <36.081821, 38.607029, 32.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846539, 38.651066, 32.202835>,  <35.454399, 38.724461, 32.173851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846539, 38.651066, 32.202835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097080, -0.128966, 0.986886,
		-0.171735, -0.974526, -0.144245,
		0.980348, -0.183486, 0.072459,
		36.140644, 38.596020, 32.224571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530033, 38.062836, 32.473396>,  <35.454399, 38.724461, 32.173851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530033, 38.062836, 32.473396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873466, 38.259964, 32.529900>,  <36.079529, 38.378242, 32.563801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873466, 38.259964, 32.529900>,  <35.530033, 38.062836, 32.473396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873466, 38.259964, 32.529900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101516, -0.106641, 0.989102,
		0.502518, -0.863568, -0.041531,
		0.858586, 0.492826, 0.141255,
		36.131042, 38.407810, 32.572277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878689, 37.666992, 32.940067>,  <35.530033, 38.062836, 32.473396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878689, 37.666992, 32.940067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043205, 38.030720, 32.965294>,  <36.141914, 38.248955, 32.980431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043205, 38.030720, 32.965294>,  <35.878689, 37.666992, 32.940067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043205, 38.030720, 32.965294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071128, -0.036963, 0.996782,
		0.908725, -0.414453, 0.049475,
		0.411290, 0.909320, 0.063069,
		36.166592, 38.303516, 32.984215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478607, 37.583832, 33.341255>,  <35.878689, 37.666992, 32.940067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478607, 37.583832, 33.341255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422508, 37.979450, 33.359680>,  <36.388851, 38.216820, 33.370735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422508, 37.979450, 33.359680>,  <36.478607, 37.583832, 33.341255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422508, 37.979450, 33.359680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054436, -0.038754, 0.997765,
		0.988619, 0.142438, -0.048405,
		-0.140244, 0.989045, 0.046066,
		36.380436, 38.276165, 33.373501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962818, 37.819649, 33.841293>,  <36.478607, 37.583832, 33.341255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962818, 37.819649, 33.841293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705414, 38.125687, 33.832142>,  <36.550972, 38.309311, 33.826649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705414, 38.125687, 33.832142>,  <36.962818, 37.819649, 33.841293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705414, 38.125687, 33.832142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070519, -0.029494, 0.997074,
		0.762181, 0.643243, 0.072933,
		-0.643512, 0.765094, -0.022881,
		36.512360, 38.355213, 33.825279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029072, 38.075260, 34.465149>,  <36.962818, 37.819649, 33.841293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029072, 38.075260, 34.465149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723301, 38.314789, 34.369591>,  <36.539841, 38.458504, 34.312256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723301, 38.314789, 34.369591>,  <37.029072, 38.075260, 34.465149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723301, 38.314789, 34.369591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318996, -0.029294, 0.947303,
		0.560263, 0.800350, 0.213413,
		-0.764426, 0.598817, -0.238896,
		36.493973, 38.494434, 34.297920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101334, 38.520966, 34.942619>,  <37.029072, 38.075260, 34.465149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101334, 38.520966, 34.942619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733047, 38.536236, 34.787273>,  <36.512077, 38.545399, 34.694065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733047, 38.536236, 34.787273>,  <37.101334, 38.520966, 34.942619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733047, 38.536236, 34.787273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388282, 0.009823, 0.921488,
		0.038989, 0.999223, 0.005777,
		-0.920716, 0.038171, -0.388363,
		36.456833, 38.547688, 34.670765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743515, 39.106361, 35.203598>,  <37.101334, 38.520966, 34.942619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743515, 39.106361, 35.203598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456360, 38.850784, 35.093040>,  <36.284069, 38.697437, 35.026707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456360, 38.850784, 35.093040>,  <36.743515, 39.106361, 35.203598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456360, 38.850784, 35.093040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351806, -0.009635, 0.936023,
		-0.600728, 0.769195, -0.217867,
		-0.717885, -0.638942, -0.276395,
		36.240993, 38.659103, 35.010120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474056, 39.351044, 35.503284>,  <36.743515, 39.106361, 35.203598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474056, 39.351044, 35.503284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109886, 39.498001, 35.427231>,  <36.891384, 39.586174, 35.381599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109886, 39.498001, 35.427231>,  <37.474056, 39.351044, 35.503284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109886, 39.498001, 35.427231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334606, 0.924270, 0.183750,
		0.243246, 0.103669, -0.964409,
		-0.910423, 0.367393, -0.190137,
		36.836758, 39.608219, 35.370190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126869, 39.426830, 36.131260>,  <37.474056, 39.351044, 35.503284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126869, 39.426830, 36.131260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036125, 39.093132, 36.332287>,  <36.981678, 38.892914, 36.452904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036125, 39.093132, 36.332287>,  <37.126869, 39.426830, 36.131260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036125, 39.093132, 36.332287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796464, 0.138068, 0.588713,
		-0.560518, 0.533831, 0.633122,
		-0.226859, -0.834243, 0.502567,
		36.968067, 38.842857, 36.483055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922310, 39.582584, 36.820450>,  <37.126869, 39.426830, 36.131260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922310, 39.582584, 36.820450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098148, 39.223362, 36.814148>,  <37.203651, 39.007828, 36.810368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098148, 39.223362, 36.814148>,  <36.922310, 39.582584, 36.820450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098148, 39.223362, 36.814148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710381, 0.336888, 0.617953,
		-0.549648, -0.282845, 0.786057,
		0.439598, -0.898057, -0.015758,
		37.230026, 38.953945, 36.809422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211700, 39.464466, 37.504074>,  <36.922310, 39.582584, 36.820450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211700, 39.464466, 37.504074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487316, 39.402809, 37.220818>,  <37.652683, 39.365814, 37.050861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487316, 39.402809, 37.220818>,  <37.211700, 39.464466, 37.504074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487316, 39.402809, 37.220818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719817, 0.259112, 0.643990,
		0.084221, -0.953467, 0.289494,
		0.689035, -0.154145, -0.708145,
		37.694027, 39.356567, 37.008373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763962, 38.932568, 37.609039>,  <37.211700, 39.464466, 37.504074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763962, 38.932568, 37.609039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841312, 39.268196, 37.405640>,  <37.887722, 39.469574, 37.283600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841312, 39.268196, 37.405640>,  <37.763962, 38.932568, 37.609039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841312, 39.268196, 37.405640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619860, 0.297262, 0.726229,
		0.760513, -0.455631, -0.462623,
		0.193372, 0.839068, -0.508499,
		37.899323, 39.519917, 37.253090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496124, 38.951836, 37.715141>,  <37.763962, 38.932568, 37.609039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496124, 38.951836, 37.715141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299927, 39.298874, 37.682419>,  <38.182209, 39.507095, 37.662785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299927, 39.298874, 37.682419>,  <38.496124, 38.951836, 37.715141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299927, 39.298874, 37.682419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227851, 0.218289, 0.948912,
		0.841130, 0.446796, -0.304752,
		-0.490494, 0.867597, -0.081807,
		38.152779, 39.559155, 37.657875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885349, 39.605717, 37.663239>,  <38.496124, 38.951836, 37.715141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885349, 39.605717, 37.663239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539185, 39.647663, 37.859226>,  <38.331486, 39.672829, 37.976818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539185, 39.647663, 37.859226>,  <38.885349, 39.605717, 37.663239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539185, 39.647663, 37.859226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496777, 0.051968, 0.866321,
		0.065383, 0.993128, -0.097067,
		-0.865412, 0.104863, 0.489965,
		38.279560, 39.679123, 38.006214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772930, 40.204067, 37.994415>,  <38.885349, 39.605717, 37.663239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772930, 40.204067, 37.994415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581341, 39.923782, 38.205917>,  <38.466385, 39.755611, 38.332817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581341, 39.923782, 38.205917>,  <38.772930, 40.204067, 37.994415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581341, 39.923782, 38.205917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490712, 0.285708, 0.823148,
		-0.727861, 0.653734, 0.207002,
		-0.478978, -0.700716, 0.528751,
		38.437649, 39.713566, 38.364544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391106, 40.532265, 38.508350>,  <38.772930, 40.204067, 37.994415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391106, 40.532265, 38.508350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499325, 40.153084, 38.575520>,  <38.564255, 39.925575, 38.615822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499325, 40.153084, 38.575520>,  <38.391106, 40.532265, 38.508350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499325, 40.153084, 38.575520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288020, 0.246140, 0.925451,
		-0.918613, -0.202010, 0.339620,
		0.270545, -0.947949, 0.167924,
		38.580490, 39.868698, 38.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171719, 40.298222, 39.227734>,  <38.391106, 40.532265, 38.508350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171719, 40.298222, 39.227734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514030, 40.130989, 39.105843>,  <38.719418, 40.030651, 39.032707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514030, 40.130989, 39.105843>,  <38.171719, 40.298222, 39.227734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514030, 40.130989, 39.105843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390594, 0.135898, 0.910477,
		-0.339242, -0.898187, 0.279599,
		0.855775, -0.418081, -0.304724,
		38.770763, 40.005566, 39.014427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610310, 40.191547, 39.860176>,  <38.171719, 40.298222, 39.227734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610310, 40.191547, 39.860176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885178, 40.086700, 39.589149>,  <39.050098, 40.023792, 39.426533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885178, 40.086700, 39.589149>,  <38.610310, 40.191547, 39.860176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885178, 40.086700, 39.589149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717383, 0.097566, 0.689814,
		-0.114702, -0.960093, 0.255079,
		0.687172, -0.262112, -0.677563,
		39.091328, 40.008068, 39.385880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089672, 39.868889, 40.298721>,  <38.610310, 40.191547, 39.860176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089672, 39.868889, 40.298721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275597, 39.938652, 39.951496>,  <39.387150, 39.980511, 39.743160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275597, 39.938652, 39.951496>,  <39.089672, 39.868889, 40.298721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275597, 39.938652, 39.951496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878363, 0.032614, 0.476880,
		0.111484, -0.984133, -0.138037,
		0.464812, 0.174411, -0.868062,
		39.415039, 39.990974, 39.691078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467518, 39.346420, 40.046329>,  <39.089672, 39.868889, 40.298721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467518, 39.346420, 40.046329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640198, 39.682369, 39.914719>,  <39.743805, 39.883938, 39.835754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640198, 39.682369, 39.914719>,  <39.467518, 39.346420, 40.046329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640198, 39.682369, 39.914719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807148, -0.196838, 0.556567,
		0.402679, -0.505840, -0.762873,
		0.431696, 0.839869, -0.329025,
		39.769707, 39.934330, 39.816010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210804, 39.244438, 39.954002>,  <39.467518, 39.346420, 40.046329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210804, 39.244438, 39.954002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129169, 39.626377, 40.040367>,  <40.080189, 39.855541, 40.092186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129169, 39.626377, 40.040367>,  <40.210804, 39.244438, 39.954002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129169, 39.626377, 40.040367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765976, 0.018409, 0.642606,
		0.609616, 0.296528, -0.735146,
		-0.204084, 0.954847, 0.215911,
		40.067944, 39.912830, 40.105141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925144, 39.483547, 40.181057>,  <40.210804, 39.244438, 39.954002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925144, 39.483547, 40.181057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648903, 39.731522, 40.330051>,  <40.483158, 39.880306, 40.419449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648903, 39.731522, 40.330051>,  <40.925144, 39.483547, 40.181057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648903, 39.731522, 40.330051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566761, 0.143960, 0.811208,
		0.449276, 0.771331, -0.450776,
		-0.690604, 0.619938, 0.372483,
		40.441723, 39.917503, 40.441795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239780, 40.140289, 40.330666>,  <40.925144, 39.483547, 40.181057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239780, 40.140289, 40.330666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901222, 40.162937, 40.542480>,  <40.698090, 40.176525, 40.669571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901222, 40.162937, 40.542480>,  <41.239780, 40.140289, 40.330666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901222, 40.162937, 40.542480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527368, 0.227587, 0.818588,
		-0.074168, 0.972110, -0.222488,
		-0.846394, 0.056621, 0.529540,
		40.647305, 40.179924, 40.701344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120705, 40.807266, 40.694614>,  <41.239780, 40.140289, 40.330666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120705, 40.807266, 40.694614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955456, 40.511204, 40.906841>,  <40.856308, 40.333565, 41.034176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955456, 40.511204, 40.906841>,  <41.120705, 40.807266, 40.694614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955456, 40.511204, 40.906841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605048, 0.212347, 0.767349,
		-0.680623, 0.638024, 0.360107,
		-0.413120, -0.740158, 0.530564,
		40.831520, 40.289158, 41.066010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229359, 41.035896, 41.379276>,  <41.120705, 40.807266, 40.694614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229359, 41.035896, 41.379276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122272, 40.653221, 41.425003>,  <41.058022, 40.423615, 41.452438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122272, 40.653221, 41.425003>,  <41.229359, 41.035896, 41.379276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122272, 40.653221, 41.425003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745730, -0.130617, 0.653319,
		-0.610092, 0.260158, 0.748402,
		-0.267720, -0.956691, 0.114319,
		41.041958, 40.366215, 41.459297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128296, 40.974766, 41.999119>,  <41.229359, 41.035896, 41.379276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128296, 40.974766, 41.999119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204643, 40.600651, 41.879917>,  <41.250450, 40.376183, 41.808395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204643, 40.600651, 41.879917>,  <41.128296, 40.974766, 41.999119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204643, 40.600651, 41.879917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608054, -0.125678, 0.783885,
		-0.770611, -0.330822, 0.544717,
		0.190867, -0.935287, -0.298006,
		41.261902, 40.320065, 41.790516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972633, 40.492027, 42.567196>,  <41.128296, 40.974766, 41.999119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972633, 40.492027, 42.567196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251560, 40.301601, 42.352867>,  <41.418915, 40.187347, 42.224270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251560, 40.301601, 42.352867>,  <40.972633, 40.492027, 42.567196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251560, 40.301601, 42.352867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577914, -0.068771, 0.813195,
		-0.423984, -0.876716, 0.227170,
		0.697318, -0.476067, -0.535825,
		41.460754, 40.158783, 42.192120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098461, 40.767712, 43.253311>,  <40.972633, 40.492027, 42.567196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098461, 40.767712, 43.253311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196407, 40.658619, 43.625473>,  <41.255177, 40.593163, 43.848770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196407, 40.658619, 43.625473>,  <41.098461, 40.767712, 43.253311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196407, 40.658619, 43.625473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234946, -0.914330, -0.329849,
		0.940660, 0.299364, -0.159812,
		0.244866, -0.272729, 0.930408,
		41.269867, 40.576801, 43.904594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478794, 40.252022, 43.532043>,  <41.098461, 40.767712, 43.253311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478794, 40.252022, 43.532043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661011, 39.895947, 43.529102>,  <41.770340, 39.682301, 43.527336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661011, 39.895947, 43.529102>,  <41.478794, 40.252022, 43.532043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661011, 39.895947, 43.529102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098244, 0.058480, -0.993443,
		0.884779, 0.451828, 0.114095,
		0.455537, -0.890186, -0.007352,
		41.797672, 39.628891, 43.526897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158928, 40.371830, 43.246891>,  <41.478794, 40.252022, 43.532043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158928, 40.371830, 43.246891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015541, 40.003014, 43.188454>,  <41.929508, 39.781723, 43.153393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015541, 40.003014, 43.188454>,  <42.158928, 40.371830, 43.246891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015541, 40.003014, 43.188454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056787, 0.134664, -0.989263,
		0.931813, -0.362916, 0.004087,
		-0.358469, -0.922040, -0.146091,
		41.908001, 39.726402, 43.144627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469849, 40.172169, 42.648746>,  <42.158928, 40.371830, 43.246891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469849, 40.172169, 42.648746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143242, 39.948803, 42.707371>,  <41.947277, 39.814785, 42.742546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143242, 39.948803, 42.707371>,  <42.469849, 40.172169, 42.648746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143242, 39.948803, 42.707371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175436, -0.001864, -0.984489,
		0.550027, -0.829559, -0.096445,
		-0.816512, -0.558415, 0.146560,
		41.898289, 39.781277, 42.751339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468208, 39.776325, 42.091011>,  <42.469849, 40.172169, 42.648746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468208, 39.776325, 42.091011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095055, 39.732689, 42.228310>,  <41.871162, 39.706505, 42.310688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095055, 39.732689, 42.228310>,  <42.468208, 39.776325, 42.091011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095055, 39.732689, 42.228310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333470, -0.098466, -0.937604,
		0.136087, -0.989142, 0.055477,
		-0.932886, -0.109096, 0.343249,
		41.815189, 39.699959, 42.331284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126873, 39.428074, 41.546944>,  <42.468208, 39.776325, 42.091011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126873, 39.428074, 41.546944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829136, 39.581554, 41.765564>,  <41.650494, 39.673645, 41.896736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829136, 39.581554, 41.765564>,  <42.126873, 39.428074, 41.546944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829136, 39.581554, 41.765564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560745, 0.085336, -0.823579,
		-0.362652, -0.919504, 0.151641,
		-0.744344, 0.383705, 0.546555,
		41.605831, 39.696667, 41.929531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380669, 39.060337, 41.486385>,  <42.126873, 39.428074, 41.546944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380669, 39.060337, 41.486385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351028, 39.447819, 41.581154>,  <41.333244, 39.680305, 41.638016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351028, 39.447819, 41.581154>,  <41.380669, 39.060337, 41.486385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351028, 39.447819, 41.581154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747190, 0.103412, -0.656516,
		-0.660467, -0.225669, 0.716140,
		-0.074098, 0.968700, 0.236917,
		41.328800, 39.738430, 41.652229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706791, 39.106472, 41.585693>,  <41.380669, 39.060337, 41.486385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706791, 39.106472, 41.585693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826733, 39.486397, 41.550053>,  <40.898697, 39.714352, 41.528667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826733, 39.486397, 41.550053>,  <40.706791, 39.106472, 41.585693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826733, 39.486397, 41.550053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695067, 0.153541, -0.702358,
		-0.653429, 0.272538, 0.706225,
		0.299854, 0.949815, -0.089105,
		40.916687, 39.771339, 41.523323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073833, 39.405720, 41.686760>,  <40.706791, 39.106472, 41.585693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073833, 39.405720, 41.686760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305241, 39.666164, 41.490242>,  <40.444084, 39.822430, 41.372334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305241, 39.666164, 41.490242>,  <40.073833, 39.405720, 41.686760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305241, 39.666164, 41.490242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696042, 0.080059, -0.713524,
		-0.425251, 0.754748, 0.499516,
		0.578522, 0.651111, -0.491291,
		40.478798, 39.861496, 41.342854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565319, 39.956139, 41.387436>,  <40.073833, 39.405720, 41.686760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565319, 39.956139, 41.387436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915993, 39.995853, 41.199158>,  <40.126396, 40.019684, 41.086189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915993, 39.995853, 41.199158>,  <39.565319, 39.956139, 41.387436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915993, 39.995853, 41.199158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480367, 0.128281, -0.867635,
		-0.025766, 0.986755, 0.160159,
		0.876689, 0.099291, -0.470700,
		40.179001, 40.025642, 41.057949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477966, 40.632710, 41.000759>,  <39.565319, 39.956139, 41.387436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477966, 40.632710, 41.000759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763645, 40.410789, 40.830059>,  <39.935051, 40.277637, 40.727638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763645, 40.410789, 40.830059>,  <39.477966, 40.632710, 41.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763645, 40.410789, 40.830059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403569, 0.171750, -0.898685,
		0.571885, 0.814064, -0.101237,
		0.714199, -0.554800, -0.426752,
		39.977905, 40.244350, 40.702034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676453, 41.067238, 40.373756>,  <39.477966, 40.632710, 41.000759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676453, 41.067238, 40.373756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808937, 40.699375, 40.289356>,  <39.888428, 40.478657, 40.238716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808937, 40.699375, 40.289356>,  <39.676453, 41.067238, 40.373756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808937, 40.699375, 40.289356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453703, 0.040845, -0.890217,
		0.827315, 0.390586, -0.403724,
		0.331216, -0.919660, -0.211001,
		39.908302, 40.423477, 40.226055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371719, 40.988228, 39.913845>,  <39.676453, 41.067238, 40.373756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371719, 40.988228, 39.913845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288139, 40.597240, 39.901882>,  <40.237991, 40.362648, 39.894703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288139, 40.597240, 39.901882>,  <40.371719, 40.988228, 39.913845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288139, 40.597240, 39.901882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560989, 0.144856, -0.815051,
		0.801020, -0.153526, -0.578617,
		-0.208948, -0.977469, -0.029906,
		40.225456, 40.304001, 39.892910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363106, 40.886730, 39.239334>,  <40.371719, 40.988228, 39.913845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363106, 40.886730, 39.239334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157322, 40.598423, 39.425163>,  <40.033852, 40.425438, 39.536659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157322, 40.598423, 39.425163>,  <40.363106, 40.886730, 39.239334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157322, 40.598423, 39.425163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525918, -0.162705, -0.834828,
		0.677307, -0.673807, -0.295362,
		-0.514456, -0.720771, 0.464569,
		40.002983, 40.382191, 39.564533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424484, 40.204666, 38.905029>,  <40.363106, 40.886730, 39.239334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424484, 40.204666, 38.905029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076263, 40.216042, 39.101532>,  <39.867332, 40.222866, 39.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076263, 40.216042, 39.101532>,  <40.424484, 40.204666, 38.905029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076263, 40.216042, 39.101532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461337, -0.394501, -0.794693,
		0.171201, -0.918455, 0.356553,
		-0.870550, 0.028439, 0.491257,
		39.815098, 40.224575, 39.248909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027477, 39.717884, 38.569675>,  <40.424484, 40.204666, 38.905029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027477, 39.717884, 38.569675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734600, 39.829296, 38.818291>,  <39.558872, 39.896145, 38.967461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734600, 39.829296, 38.818291>,  <40.027477, 39.717884, 38.569675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734600, 39.829296, 38.818291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679560, -0.237531, -0.694102,
		-0.045695, -0.930591, 0.363198,
		-0.732196, 0.278532, 0.621538,
		39.514942, 39.912857, 39.004753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680073, 39.120029, 38.761993>,  <40.027477, 39.717884, 38.569675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680073, 39.120029, 38.761993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427216, 39.425415, 38.814915>,  <39.275501, 39.608646, 38.846668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427216, 39.425415, 38.814915>,  <39.680073, 39.120029, 38.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427216, 39.425415, 38.814915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693623, -0.481464, -0.535798,
		-0.345363, -0.430475, 0.833916,
		-0.632148, 0.763468, 0.132308,
		39.237572, 39.654457, 38.854607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099503, 38.752510, 38.980927>,  <39.680073, 39.120029, 38.761993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099503, 38.752510, 38.980927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021637, 39.093864, 38.787495>,  <38.974918, 39.298676, 38.671436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021637, 39.093864, 38.787495>,  <39.099503, 38.752510, 38.980927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021637, 39.093864, 38.787495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595478, -0.494577, -0.633088,
		-0.779432, 0.164723, 0.604444,
		-0.194660, 0.853382, -0.483577,
		38.963238, 39.349880, 38.642422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592983, 38.169403, 39.071732>,  <39.099503, 38.752510, 38.980927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592983, 38.169403, 39.071732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501312, 37.843094, 39.284142>,  <38.446312, 37.647308, 39.411587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501312, 37.843094, 39.284142>,  <38.592983, 38.169403, 39.071732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501312, 37.843094, 39.284142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563697, -0.555985, -0.610841,
		0.793552, 0.159349, 0.587268,
		-0.229175, -0.815775, 0.531027,
		38.432560, 37.598362, 39.443451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257053, 37.727112, 39.047600>,  <38.592983, 38.169403, 39.071732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257053, 37.727112, 39.047600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963970, 37.502533, 39.201443>,  <38.788120, 37.367786, 39.293751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963970, 37.502533, 39.201443>,  <39.257053, 37.727112, 39.047600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963970, 37.502533, 39.201443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388049, -0.808944, -0.441619,
		0.559074, -0.174328, 0.810584,
		-0.732704, -0.561444, 0.384612,
		38.744160, 37.334099, 39.316826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531219, 37.169151, 39.320477>,  <39.257053, 37.727112, 39.047600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531219, 37.169151, 39.320477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157391, 37.052574, 39.238865>,  <38.933094, 36.982628, 39.189899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157391, 37.052574, 39.238865>,  <39.531219, 37.169151, 39.320477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157391, 37.052574, 39.238865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348955, -0.862631, -0.366193,
		-0.069278, -0.413432, 0.907896,
		-0.934575, -0.291446, -0.204030,
		38.877018, 36.965141, 39.177654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475460, 36.506344, 39.659454>,  <39.531219, 37.169151, 39.320477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475460, 36.506344, 39.659454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242535, 36.540554, 39.336075>,  <39.102779, 36.561081, 39.142048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242535, 36.540554, 39.336075>,  <39.475460, 36.506344, 39.659454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242535, 36.540554, 39.336075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649396, -0.549321, -0.525862,
		-0.489071, -0.831224, 0.264342,
		-0.582318, 0.085521, -0.808451,
		39.067841, 36.566212, 39.093540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725979, 35.967213, 39.291714>,  <39.475460, 36.506344, 39.659454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725979, 35.967213, 39.291714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482494, 36.127865, 39.018024>,  <39.336403, 36.224255, 38.853809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482494, 36.127865, 39.018024>,  <39.725979, 35.967213, 39.291714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482494, 36.127865, 39.018024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444603, -0.541594, -0.713446,
		-0.657113, -0.738491, 0.151109,
		-0.608713, 0.401631, -0.684223,
		39.299881, 36.248352, 38.812759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313438, 35.434120, 38.743717>,  <39.725979, 35.967213, 39.291714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313438, 35.434120, 38.743717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398373, 35.790585, 38.583344>,  <39.449333, 36.004463, 38.487122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398373, 35.790585, 38.583344>,  <39.313438, 35.434120, 38.743717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398373, 35.790585, 38.583344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423676, -0.453674, -0.784014,
		-0.880575, -0.003390, -0.473895,
		0.212336, 0.891161, -0.400931,
		39.462074, 36.057934, 38.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398052, 34.695633, 38.442760>,  <39.313438, 35.434120, 38.743717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398052, 34.695633, 38.442760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403431, 34.347534, 38.639732>,  <39.406658, 34.138676, 38.757915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403431, 34.347534, 38.639732>,  <39.398052, 34.695633, 38.442760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403431, 34.347534, 38.639732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277544, 0.469875, 0.837966,
		-0.960619, -0.147938, -0.235215,
		0.013445, -0.870248, 0.492430,
		39.407463, 34.086460, 38.787460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270393, 34.497501, 37.779312>,  <39.398052, 34.695633, 38.442760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270393, 34.497501, 37.779312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449471, 34.853977, 37.808559>,  <39.556919, 35.067863, 37.826107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449471, 34.853977, 37.808559>,  <39.270393, 34.497501, 37.779312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449471, 34.853977, 37.808559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882986, -0.427706, -0.193401,
		-0.141085, 0.151145, -0.978392,
		0.447696, 0.891192, 0.073116,
		39.583778, 35.121334, 37.830494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706116, 34.558086, 37.215511>,  <39.270393, 34.497501, 37.779312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706116, 34.558086, 37.215511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854309, 34.771446, 37.519676>,  <39.943226, 34.899464, 37.702175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854309, 34.771446, 37.519676>,  <39.706116, 34.558086, 37.215511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854309, 34.771446, 37.519676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890435, -0.436931, -0.127345,
		0.264322, 0.724276, -0.636834,
		0.370486, 0.533399, 0.760411,
		39.965454, 34.931465, 37.747799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396355, 34.746456, 37.017361>,  <39.706116, 34.558086, 37.215511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396355, 34.746456, 37.017361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403969, 34.815998, 37.411198>,  <40.408539, 34.857723, 37.647499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403969, 34.815998, 37.411198>,  <40.396355, 34.746456, 37.017361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403969, 34.815998, 37.411198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953510, -0.299389, 0.034427,
		0.300760, 0.938159, -0.171468,
		0.019038, 0.173851, 0.984588,
		40.409679, 34.868153, 37.706573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953808, 35.145061, 37.140461>,  <40.396355, 34.746456, 37.017361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953808, 35.145061, 37.140461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854668, 34.941158, 37.469997>,  <40.795185, 34.818817, 37.667721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854668, 34.941158, 37.469997>,  <40.953808, 35.145061, 37.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854668, 34.941158, 37.469997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903619, -0.428283, 0.006844,
		0.349350, 0.746139, 0.566773,
		-0.247846, -0.509756, 0.823845,
		40.780315, 34.788231, 37.717152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494755, 35.228760, 37.591347>,  <40.953808, 35.145061, 37.140461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494755, 35.228760, 37.591347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335045, 34.870914, 37.671597>,  <41.239220, 34.656208, 37.719746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335045, 34.870914, 37.671597>,  <41.494755, 35.228760, 37.591347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335045, 34.870914, 37.671597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888516, -0.431527, -0.155963,
		0.226101, 0.115986, 0.967174,
		-0.399273, -0.894612, 0.200624,
		41.215263, 34.602531, 37.731785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776646, 34.807732, 38.214741>,  <41.494755, 35.228760, 37.591347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776646, 34.807732, 38.214741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666893, 34.580254, 37.904564>,  <41.601044, 34.443768, 37.718460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666893, 34.580254, 37.904564>,  <41.776646, 34.807732, 38.214741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666893, 34.580254, 37.904564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961561, -0.171312, -0.214600,
		-0.010801, -0.804514, 0.593836,
		-0.274380, -0.568692, -0.775439,
		41.584579, 34.409645, 37.671932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247173, 34.157928, 38.251175>,  <41.776646, 34.807732, 38.214741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247173, 34.157928, 38.251175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111382, 34.194134, 37.876675>,  <42.029907, 34.215855, 37.651974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111382, 34.194134, 37.876675>,  <42.247173, 34.157928, 38.251175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111382, 34.194134, 37.876675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885843, -0.303927, -0.350586,
		-0.316284, -0.948386, 0.022996,
		-0.339480, 0.090514, -0.936248,
		42.009537, 34.221287, 37.595798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249832, 33.570961, 37.854172>,  <42.247173, 34.157928, 38.251175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249832, 33.570961, 37.854172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308083, 33.896500, 37.629158>,  <42.343033, 34.091824, 37.494152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308083, 33.896500, 37.629158>,  <42.249832, 33.570961, 37.854172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308083, 33.896500, 37.629158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986065, -0.165623, 0.015651,
		-0.080431, -0.556972, -0.826627,
		0.145626, 0.813850, -0.562532,
		42.351768, 34.140656, 37.460400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978153, 33.357731, 37.726841>,  <42.249832, 33.570961, 37.854172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978153, 33.357731, 37.726841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953468, 33.727192, 37.575550>,  <42.938656, 33.948868, 37.484776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953468, 33.727192, 37.575550>,  <42.978153, 33.357731, 37.726841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953468, 33.727192, 37.575550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998094, 0.057001, -0.023657,
		-0.000291, -0.378970, -0.925409,
		-0.061714, 0.923652, -0.378231,
		42.934956, 34.004288, 37.462082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288250, 33.362461, 37.064796>,  <42.978153, 33.357731, 37.726841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288250, 33.362461, 37.064796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296051, 33.725937, 37.231602>,  <43.300732, 33.944023, 37.331684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296051, 33.725937, 37.231602>,  <43.288250, 33.362461, 37.064796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296051, 33.725937, 37.231602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949323, 0.114039, -0.292883,
		-0.313696, 0.401594, -0.860417,
		0.019499, 0.908690, 0.417016,
		43.301899, 33.998543, 37.356705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616165, 33.774921, 36.620544>,  <43.288250, 33.362461, 37.064796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616165, 33.774921, 36.620544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685070, 33.943668, 36.976601>,  <43.726414, 34.044918, 37.190235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685070, 33.943668, 36.976601>,  <43.616165, 33.774921, 36.620544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685070, 33.943668, 36.976601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940710, 0.197614, -0.275706,
		-0.292216, 0.884860, -0.362813,
		0.172265, 0.421867, 0.890142,
		43.736748, 34.070229, 37.243645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975639, 34.406731, 36.439457>,  <43.616165, 33.774921, 36.620544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975639, 34.406731, 36.439457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058224, 34.218361, 36.782528>,  <44.107773, 34.105339, 36.988369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058224, 34.218361, 36.782528>,  <43.975639, 34.406731, 36.439457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058224, 34.218361, 36.782528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965264, -0.045420, -0.257299,
		0.160124, 0.881004, 0.445189,
		0.206461, -0.470924, 0.857674,
		44.120163, 34.077084, 37.039829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527672, 34.765274, 36.877357>,  <43.975639, 34.406731, 36.439457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527672, 34.765274, 36.877357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530323, 34.365463, 36.889339>,  <44.531914, 34.125576, 36.896530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530323, 34.365463, 36.889339>,  <44.527672, 34.765274, 36.877357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530323, 34.365463, 36.889339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932166, -0.004671, -0.362002,
		0.361971, 0.030321, 0.931696,
		0.006624, -0.999529, 0.029955,
		44.532310, 34.065605, 36.898327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141644, 34.540783, 37.163788>,  <44.527672, 34.765274, 36.877357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141644, 34.540783, 37.163788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030418, 34.225285, 36.944496>,  <44.963684, 34.035984, 36.812920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030418, 34.225285, 36.944496>,  <45.141644, 34.540783, 37.163788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030418, 34.225285, 36.944496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911471, -0.036534, -0.409739,
		0.303151, -0.613630, 0.729080,
		-0.278064, -0.788748, -0.548231,
		44.946999, 33.988659, 36.780025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615749, 33.971851, 37.296532>,  <45.141644, 34.540783, 37.163788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615749, 33.971851, 37.296532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444729, 33.992783, 36.935543>,  <45.342117, 34.005341, 36.718948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444729, 33.992783, 36.935543>,  <45.615749, 33.971851, 37.296532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444729, 33.992783, 36.935543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903952, 0.034068, -0.426274,
		0.008438, -0.998048, -0.061871,
		-0.427550, 0.052331, -0.902476,
		45.316463, 34.008480, 36.664799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159042, 33.531342, 36.836716>,  <45.615749, 33.971851, 37.296532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159042, 33.531342, 36.836716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957493, 33.828037, 36.659660>,  <45.836563, 34.006054, 36.553429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957493, 33.828037, 36.659660>,  <46.159042, 33.531342, 36.836716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957493, 33.828037, 36.659660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854770, 0.354360, -0.379206,
		-0.124420, -0.569426, -0.812572,
		-0.503873, 0.741743, -0.442639,
		45.806332, 34.050560, 36.526867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454807, 33.440479, 36.132172>,  <46.159042, 33.531342, 36.836716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454807, 33.440479, 36.132172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377613, 33.811378, 36.260525>,  <46.331295, 34.033916, 36.337536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377613, 33.811378, 36.260525>,  <46.454807, 33.440479, 36.132172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377613, 33.811378, 36.260525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839738, 0.325244, -0.434807,
		-0.507539, 0.185544, -0.841414,
		-0.192989, 0.927249, 0.320882,
		46.319717, 34.089554, 36.356789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259445, 33.933575, 35.566444>,  <46.454807, 33.440479, 36.132172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259445, 33.933575, 35.566444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455921, 34.100685, 35.872177>,  <46.573807, 34.200951, 36.055614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455921, 34.100685, 35.872177>,  <46.259445, 33.933575, 35.566444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455921, 34.100685, 35.872177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724849, 0.290562, -0.624634,
		-0.483041, 0.860836, -0.160104,
		0.491187, 0.417775, 0.764329,
		46.603279, 34.226017, 36.101475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509609, 34.475441, 35.247177>,  <46.259445, 33.933575, 35.566444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509609, 34.475441, 35.247177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710430, 34.477989, 35.593105>,  <46.830921, 34.479519, 35.800663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710430, 34.477989, 35.593105>,  <46.509609, 34.475441, 35.247177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710430, 34.477989, 35.593105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827274, 0.287976, -0.482376,
		-0.252121, 0.957616, 0.139305,
		0.502048, 0.006373, 0.864816,
		46.861046, 34.479900, 35.852551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711109, 35.211681, 35.612194>,  <46.509609, 34.475441, 35.247177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711109, 35.211681, 35.612194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946285, 34.889050, 35.636684>,  <47.087391, 34.695469, 35.651379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946285, 34.889050, 35.636684>,  <46.711109, 35.211681, 35.612194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946285, 34.889050, 35.636684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538337, 0.333666, -0.773860,
		0.603754, 0.487944, 0.630390,
		0.587941, -0.806584, 0.061226,
		47.122669, 34.647076, 35.655052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389744, 35.393917, 35.422714>,  <46.711109, 35.211681, 35.612194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389744, 35.393917, 35.422714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296532, 35.018887, 35.319443>,  <47.240604, 34.793869, 35.257481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296532, 35.018887, 35.319443>,  <47.389744, 35.393917, 35.422714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296532, 35.018887, 35.319443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324262, 0.175378, -0.929568,
		0.916816, -0.300332, 0.263151,
		-0.233028, -0.937573, -0.258175,
		47.226624, 34.737614, 35.241989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.945644, 35.195141, 35.026577>,  <47.389744, 35.393917, 35.422714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.945644, 35.195141, 35.026577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657784, 34.928196, 34.949921>,  <47.485065, 34.768028, 34.903927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657784, 34.928196, 34.949921>,  <47.945644, 35.195141, 35.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657784, 34.928196, 34.949921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222012, 0.040344, -0.974209,
		0.657880, -0.743641, 0.119129,
		-0.719656, -0.667361, -0.191638,
		47.441887, 34.727989, 34.892429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.226070, 32.307796, 27.459791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863277, 32.416908, 27.331436>,  <37.645599, 32.482376, 27.254423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863277, 32.416908, 27.331436>,  <38.226070, 32.307796, 27.459791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863277, 32.416908, 27.331436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337940, -0.016668, 0.941020,
		0.251343, 0.961932, 0.107301,
		-0.906986, 0.272780, -0.320886,
		37.591183, 32.498741, 27.235170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003246, 32.929699, 27.931828>,  <38.226070, 32.307796, 27.459791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003246, 32.929699, 27.931828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.650673, 32.830967, 27.770760>,  <37.439129, 32.771729, 27.674118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.650673, 32.830967, 27.770760>,  <38.003246, 32.929699, 27.931828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650673, 32.830967, 27.770760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404298, -0.046410, 0.913449,
		-0.244154, 0.967947, -0.058885,
		-0.881437, -0.246829, -0.402670,
		37.386242, 32.756920, 27.649958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446999, 33.423058, 28.142792>,  <38.003246, 32.929699, 27.931828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446999, 33.423058, 28.142792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260612, 33.080196, 28.055016>,  <37.148781, 32.874477, 28.002350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260612, 33.080196, 28.055016>,  <37.446999, 33.423058, 28.142792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260612, 33.080196, 28.055016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508141, 0.056212, 0.859438,
		-0.724338, 0.511978, -0.461750,
		-0.465970, -0.857157, -0.219440,
		37.120823, 32.823048, 27.989183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761047, 33.598896, 28.149456>,  <37.446999, 33.423058, 28.142792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761047, 33.598896, 28.149456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740768, 33.201149, 28.186693>,  <36.728603, 32.962502, 28.209036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740768, 33.201149, 28.186693>,  <36.761047, 33.598896, 28.149456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740768, 33.201149, 28.186693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573252, 0.105298, 0.812585,
		-0.817810, -0.012171, -0.575360,
		-0.050695, -0.994366, 0.093091,
		36.725559, 32.902840, 28.214621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933910, 33.457561, 28.237774>,  <36.761047, 33.598896, 28.149456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933910, 33.457561, 28.237774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152058, 33.143227, 28.354414>,  <36.282948, 32.954624, 28.424398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152058, 33.143227, 28.354414>,  <35.933910, 33.457561, 28.237774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152058, 33.143227, 28.354414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549960, -0.072942, 0.831999,
		-0.632550, -0.614112, -0.471961,
		0.545366, -0.785841, 0.291598,
		36.315666, 32.907475, 28.441893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401546, 33.092052, 28.417896>,  <35.933910, 33.457561, 28.237774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401546, 33.092052, 28.417896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725273, 32.942101, 28.598770>,  <35.919510, 32.852131, 28.707294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725273, 32.942101, 28.598770>,  <35.401546, 33.092052, 28.417896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725273, 32.942101, 28.598770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482079, 0.015869, 0.875984,
		-0.335563, -0.926938, -0.167878,
		0.809319, -0.374878, 0.452183,
		35.968067, 32.829636, 28.734425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095867, 32.631889, 28.940268>,  <35.401546, 33.092052, 28.417896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095867, 32.631889, 28.940268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.468307, 32.725590, 29.052103>,  <35.691772, 32.781811, 29.119204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.468307, 32.725590, 29.052103>,  <35.095867, 32.631889, 28.940268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468307, 32.725590, 29.052103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334760, 0.244428, 0.910049,
		0.144843, -0.940946, 0.306007,
		0.931105, 0.234253, 0.279588,
		35.747639, 32.795868, 29.135979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128010, 32.299618, 29.480879>,  <35.095867, 32.631889, 28.940268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128010, 32.299618, 29.480879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406334, 32.586254, 29.500269>,  <35.573330, 32.758236, 29.511904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406334, 32.586254, 29.500269>,  <35.128010, 32.299618, 29.480879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406334, 32.586254, 29.500269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437665, 0.369525, 0.819696,
		0.569470, -0.591570, 0.570744,
		0.695811, 0.716587, 0.048476,
		35.615078, 32.801231, 29.514812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239147, 32.439037, 30.199266>,  <35.128010, 32.299618, 29.480879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239147, 32.439037, 30.199266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392265, 32.773544, 30.042229>,  <35.484135, 32.974247, 29.948006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392265, 32.773544, 30.042229>,  <35.239147, 32.439037, 30.199266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392265, 32.773544, 30.042229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128086, 0.468902, 0.873914,
		0.914911, -0.284244, 0.286607,
		0.382795, 0.836264, -0.392596,
		35.507103, 33.024422, 29.924450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619659, 32.639278, 30.665546>,  <35.239147, 32.439037, 30.199266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619659, 32.639278, 30.665546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537628, 32.953629, 30.432190>,  <35.488411, 33.142239, 30.292175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537628, 32.953629, 30.432190>,  <35.619659, 32.639278, 30.665546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537628, 32.953629, 30.432190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139924, 0.566398, 0.812167,
		0.968692, 0.248188, -0.006193,
		-0.205077, 0.785873, -0.583392,
		35.476105, 33.189392, 30.257172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063118, 33.268063, 30.884567>,  <35.619659, 32.639278, 30.665546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063118, 33.268063, 30.884567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739769, 33.412525, 30.698624>,  <35.545757, 33.499203, 30.587057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739769, 33.412525, 30.698624>,  <36.063118, 33.268063, 30.884567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739769, 33.412525, 30.698624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242230, 0.515653, 0.821843,
		0.536518, 0.776963, -0.329360,
		-0.808377, 0.361153, -0.464861,
		35.497257, 33.520870, 30.559166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127480, 34.014305, 30.983616>,  <36.063118, 33.268063, 30.884567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127480, 34.014305, 30.983616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741306, 33.923157, 30.933006>,  <35.509602, 33.868469, 30.902641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741306, 33.923157, 30.933006>,  <36.127480, 34.014305, 30.983616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741306, 33.923157, 30.933006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233797, 0.542560, 0.806826,
		-0.115205, 0.808520, -0.577082,
		-0.965436, -0.227870, -0.126523,
		35.451675, 33.854797, 30.895050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860245, 34.597511, 31.032915>,  <36.127480, 34.014305, 30.983616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860245, 34.597511, 31.032915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530724, 34.373493, 31.068005>,  <35.333012, 34.239082, 31.089058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530724, 34.373493, 31.068005>,  <35.860245, 34.597511, 31.032915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530724, 34.373493, 31.068005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330518, 0.600266, 0.728313,
		-0.460544, 0.570994, -0.679607,
		-0.823806, -0.560042, 0.087725,
		35.283581, 34.205479, 31.094322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321751, 35.063366, 31.027884>,  <35.860245, 34.597511, 31.032915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321751, 35.063366, 31.027884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162281, 34.732395, 31.186085>,  <35.066597, 34.533813, 31.281006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162281, 34.732395, 31.186085>,  <35.321751, 35.063366, 31.027884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162281, 34.732395, 31.186085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413965, 0.547186, 0.727476,
		-0.818346, 0.126303, -0.560675,
		-0.398676, -0.827427, 0.395503,
		35.042679, 34.484169, 31.304735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674976, 35.349464, 31.268726>,  <35.321751, 35.063366, 31.027884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674976, 35.349464, 31.268726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.730198, 34.997517, 31.450617>,  <34.763332, 34.786350, 31.559752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.730198, 34.997517, 31.450617>,  <34.674976, 35.349464, 31.268726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730198, 34.997517, 31.450617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467971, 0.346692, 0.812901,
		-0.872893, -0.325027, -0.363888,
		0.138058, -0.879865, 0.454728,
		34.771614, 34.733559, 31.587036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970253, 35.067249, 31.497868>,  <34.674976, 35.349464, 31.268726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970253, 35.067249, 31.497868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246208, 34.884106, 31.722160>,  <34.411781, 34.774220, 31.856735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246208, 34.884106, 31.722160>,  <33.970253, 35.067249, 31.497868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246208, 34.884106, 31.722160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458123, 0.323613, 0.827887,
		-0.560517, -0.828033, 0.013500,
		0.689886, -0.457860, 0.560732,
		34.453175, 34.746746, 31.890381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626854, 34.699673, 32.044807>,  <33.970253, 35.067249, 31.497868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626854, 34.699673, 32.044807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000832, 34.784874, 32.158302>,  <34.225220, 34.835995, 32.226398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000832, 34.784874, 32.158302>,  <33.626854, 34.699673, 32.044807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000832, 34.784874, 32.158302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330233, 0.230077, 0.915429,
		0.129705, -0.949576, 0.285450,
		0.934946, 0.213000, 0.283739,
		34.281315, 34.848774, 32.243423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620697, 34.328751, 32.691936>,  <33.626854, 34.699673, 32.044807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620697, 34.328751, 32.691936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926624, 34.584942, 32.719772>,  <34.110180, 34.738655, 32.736473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926624, 34.584942, 32.719772>,  <33.620697, 34.328751, 32.691936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926624, 34.584942, 32.719772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328796, 0.295159, 0.897092,
		0.554029, -0.708991, 0.436329,
		0.764817, 0.640479, 0.069587,
		34.156071, 34.777084, 32.740650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014832, 34.211651, 33.321461>,  <33.620697, 34.328751, 32.691936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014832, 34.211651, 33.321461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093380, 34.593662, 33.232597>,  <34.140511, 34.822868, 33.179279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093380, 34.593662, 33.232597>,  <34.014832, 34.211651, 33.321461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093380, 34.593662, 33.232597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422465, 0.286871, 0.859784,
		0.884851, -0.074985, 0.459801,
		0.196374, 0.955030, -0.222159,
		34.152290, 34.880173, 33.165951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238049, 34.417801, 33.901917>,  <34.014832, 34.211651, 33.321461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238049, 34.417801, 33.901917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136639, 34.748981, 33.701824>,  <34.075790, 34.947689, 33.581768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136639, 34.748981, 33.701824>,  <34.238049, 34.417801, 33.901917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136639, 34.748981, 33.701824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354467, 0.401636, 0.844418,
		0.900043, 0.391398, 0.191654,
		-0.253528, 0.827947, -0.500227,
		34.060581, 34.997364, 33.551758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585602, 34.987144, 34.325413>,  <34.238049, 34.417801, 33.901917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585602, 34.987144, 34.325413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302299, 35.136181, 34.085560>,  <34.132320, 35.225601, 33.941650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302299, 35.136181, 34.085560>,  <34.585602, 34.987144, 34.325413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302299, 35.136181, 34.085560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479938, 0.368779, 0.796028,
		0.517725, 0.851573, -0.082367,
		-0.708251, 0.372592, -0.599629,
		34.089825, 35.247959, 33.905670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365067, 35.084179, 34.232353>,  <34.585602, 34.987144, 34.325413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365067, 35.084179, 34.232353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531284, 35.417023, 34.379272>,  <35.631016, 35.616730, 34.467426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531284, 35.417023, 34.379272>,  <35.365067, 35.084179, 34.232353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531284, 35.417023, 34.379272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767012, -0.103525, -0.633226,
		-0.488890, 0.544860, -0.681260,
		0.415547, 0.832112, 0.367302,
		35.655949, 35.666656, 34.489464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374863, 35.504375, 33.724903>,  <35.365067, 35.084179, 34.232353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374863, 35.504375, 33.724903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676491, 35.610409, 33.965271>,  <35.857468, 35.674026, 34.109493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676491, 35.610409, 33.965271>,  <35.374863, 35.504375, 33.724903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676491, 35.610409, 33.965271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610344, 0.055120, -0.790217,
		-0.242595, 0.962649, -0.120226,
		0.754075, 0.265081, 0.600919,
		35.902714, 35.689934, 34.145546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614567, 35.934288, 33.243538>,  <35.374863, 35.504375, 33.724903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614567, 35.934288, 33.243538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893696, 35.887676, 33.526230>,  <36.061172, 35.859707, 33.695843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893696, 35.887676, 33.526230>,  <35.614567, 35.934288, 33.243538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893696, 35.887676, 33.526230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706434, -0.050966, -0.705941,
		0.118284, 0.991878, 0.046757,
		0.697825, -0.116532, 0.706726,
		36.103043, 35.852718, 33.738247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131771, 36.172676, 32.942307>,  <35.614567, 35.934288, 33.243538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131771, 36.172676, 32.942307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305695, 35.983299, 33.248718>,  <36.410049, 35.869671, 33.432564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305695, 35.983299, 33.248718>,  <36.131771, 36.172676, 32.942307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305695, 35.983299, 33.248718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729915, -0.312914, -0.607708,
		0.527415, 0.823368, 0.209517,
		0.434807, -0.473444, 0.766025,
		36.436138, 35.841267, 33.478527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879383, 36.286869, 32.985031>,  <36.131771, 36.172676, 32.942307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879383, 36.286869, 32.985031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858322, 35.932594, 33.169548>,  <36.845688, 35.720028, 33.280258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858322, 35.932594, 33.169548>,  <36.879383, 36.286869, 32.985031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858322, 35.932594, 33.169548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831854, -0.294463, -0.470436,
		0.552491, 0.358957, 0.752265,
		-0.052648, -0.885687, 0.461288,
		36.842529, 35.666889, 33.307934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481842, 36.114887, 33.350273>,  <36.879383, 36.286869, 32.985031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481842, 36.114887, 33.350273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.323318, 35.754108, 33.281651>,  <37.228203, 35.537643, 33.240475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.323318, 35.754108, 33.281651>,  <37.481842, 36.114887, 33.350273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323318, 35.754108, 33.281651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875335, -0.314816, -0.366987,
		0.276991, -0.295615, 0.914269,
		-0.396314, -0.901944, -0.171561,
		37.204426, 35.483524, 33.230183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953876, 35.642143, 33.399380>,  <37.481842, 36.114887, 33.350273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953876, 35.642143, 33.399380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702374, 35.393238, 33.212852>,  <37.551472, 35.243896, 33.100937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702374, 35.393238, 33.212852>,  <37.953876, 35.642143, 33.399380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702374, 35.393238, 33.212852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777512, -0.493995, -0.389160,
		0.011801, -0.607255, 0.794419,
		-0.628758, -0.622263, -0.466318,
		37.513744, 35.206558, 33.072956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128277, 34.922531, 33.501534>,  <37.953876, 35.642143, 33.399380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128277, 34.922531, 33.501534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925823, 34.919258, 33.156567>,  <37.804352, 34.917294, 32.949585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925823, 34.919258, 33.156567>,  <38.128277, 34.922531, 33.501534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925823, 34.919258, 33.156567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759171, -0.478729, -0.440997,
		-0.409253, -0.877924, 0.248516,
		-0.506134, -0.008187, -0.862416,
		37.773983, 34.916801, 32.897842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283764, 34.259949, 33.192722>,  <38.128277, 34.922531, 33.501534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283764, 34.259949, 33.192722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.111092, 34.440315, 32.880230>,  <38.007488, 34.548534, 32.692734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.111092, 34.440315, 32.880230>,  <38.283764, 34.259949, 33.192722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111092, 34.440315, 32.880230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617818, -0.483242, -0.620305,
		-0.657233, -0.750432, -0.069982,
		-0.431678, 0.450921, -0.781233,
		37.981586, 34.575592, 32.645859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030293, 33.697910, 32.654190>,  <38.283764, 34.259949, 33.192722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030293, 33.697910, 32.654190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117516, 34.047512, 32.480492>,  <38.169849, 34.257275, 32.376274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117516, 34.047512, 32.480492>,  <38.030293, 33.697910, 32.654190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117516, 34.047512, 32.480492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567517, -0.475543, -0.672148,
		-0.793963, -0.099878, -0.599706,
		0.218054, 0.874004, -0.434246,
		38.182930, 34.309711, 32.350220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941345, 33.637104, 31.899586>,  <38.030293, 33.697910, 32.654190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941345, 33.637104, 31.899586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181995, 33.950268, 31.962955>,  <38.326385, 34.138165, 32.000977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181995, 33.950268, 31.962955>,  <37.941345, 33.637104, 31.899586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181995, 33.950268, 31.962955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553743, -0.265846, -0.789110,
		-0.575687, 0.562474, -0.593471,
		0.601625, 0.782911, 0.158422,
		38.362484, 34.185143, 32.010483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933075, 33.955410, 31.206438>,  <37.941345, 33.637104, 31.899586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933075, 33.955410, 31.206438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248432, 34.138821, 31.370485>,  <38.437645, 34.248867, 31.468914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248432, 34.138821, 31.370485>,  <37.933075, 33.955410, 31.206438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248432, 34.138821, 31.370485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473496, -0.026680, -0.880392,
		-0.392737, 0.888282, -0.238143,
		0.788391, 0.458522, 0.410119,
		38.484951, 34.276379, 31.493521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116730, 34.514095, 30.774529>,  <37.933075, 33.955410, 31.206438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116730, 34.514095, 30.774529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.451866, 34.441971, 30.980639>,  <38.652946, 34.398697, 31.104305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.451866, 34.441971, 30.980639>,  <38.116730, 34.514095, 30.774529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451866, 34.441971, 30.980639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520038, -0.023534, -0.853819,
		0.166083, 0.983327, 0.074052,
		0.837841, -0.180315, 0.515276,
		38.703217, 34.387875, 31.135221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619534, 34.977192, 30.548641>,  <38.116730, 34.514095, 30.774529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619534, 34.977192, 30.548641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804020, 34.661064, 30.709972>,  <38.914711, 34.471386, 30.806770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804020, 34.661064, 30.709972>,  <38.619534, 34.977192, 30.548641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804020, 34.661064, 30.709972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630573, -0.027837, -0.775631,
		0.624224, 0.612061, 0.485516,
		0.461218, -0.790320, 0.403326,
		38.942387, 34.423969, 30.830971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315990, 35.101345, 30.380333>,  <38.619534, 34.977192, 30.548641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315990, 35.101345, 30.380333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250015, 34.714684, 30.458693>,  <39.210430, 34.482685, 30.505709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250015, 34.714684, 30.458693>,  <39.315990, 35.101345, 30.380333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250015, 34.714684, 30.458693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564781, -0.255395, -0.784727,
		0.808591, -0.018788, 0.588071,
		-0.164934, -0.966654, 0.195899,
		39.200535, 34.424686, 30.517462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974415, 34.780708, 30.207054>,  <39.315990, 35.101345, 30.380333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974415, 34.780708, 30.207054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749992, 34.450470, 30.231060>,  <39.615337, 34.252327, 30.245464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749992, 34.450470, 30.231060>,  <39.974415, 34.780708, 30.207054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749992, 34.450470, 30.231060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517244, -0.406267, -0.753263,
		0.646274, -0.391583, 0.654976,
		-0.561060, -0.825597, 0.060016,
		39.581673, 34.202789, 30.249065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468361, 34.145477, 30.275650>,  <39.974415, 34.780708, 30.207054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468361, 34.145477, 30.275650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120117, 34.010113, 30.132809>,  <39.911171, 33.928894, 30.047104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120117, 34.010113, 30.132809>,  <40.468361, 34.145477, 30.275650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120117, 34.010113, 30.132809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478447, -0.413316, -0.774764,
		0.114593, -0.845369, 0.521747,
		-0.870607, -0.338411, -0.357101,
		39.858936, 33.908588, 30.025679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642319, 33.475712, 29.990166>,  <40.468361, 34.145477, 30.275650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642319, 33.475712, 29.990166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276398, 33.528038, 29.837315>,  <40.056843, 33.559433, 29.745604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276398, 33.528038, 29.837315>,  <40.642319, 33.475712, 29.990166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276398, 33.528038, 29.837315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308491, -0.384376, -0.870108,
		-0.260701, -0.913862, 0.311275,
		-0.914805, 0.130813, -0.382125,
		40.001957, 33.567284, 29.722677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420841, 32.905651, 29.713133>,  <40.642319, 33.475712, 29.990166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420841, 32.905651, 29.713133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223297, 33.193951, 29.518555>,  <40.104771, 33.366928, 29.401808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223297, 33.193951, 29.518555>,  <40.420841, 32.905651, 29.713133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223297, 33.193951, 29.518555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257364, -0.413206, -0.873513,
		-0.830584, -0.556584, 0.018570,
		-0.493856, 0.720746, -0.486447,
		40.075142, 33.410175, 29.372622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.778820, 32.483742, 29.093636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867870, 32.867138, 29.022375>,  <39.921299, 33.097176, 28.979620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867870, 32.867138, 29.022375>,  <39.778820, 32.483742, 29.093636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867870, 32.867138, 29.022375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012468, -0.179922, -0.983602,
		-0.974825, 0.221193, -0.028104,
		0.222623, 0.958489, -0.178150,
		39.934658, 33.154686, 28.968929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250034, 32.881042, 28.633982>,  <39.778820, 32.483742, 29.093636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250034, 32.881042, 28.633982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.558441, 33.131126, 28.585567>,  <39.743484, 33.281178, 28.556519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.558441, 33.131126, 28.585567>,  <39.250034, 32.881042, 28.633982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558441, 33.131126, 28.585567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077779, -0.096191, -0.992319,
		-0.632052, 0.774505, -0.025537,
		0.771013, 0.625211, -0.121038,
		39.789745, 33.318691, 28.549255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095673, 33.507477, 28.158291>,  <39.250034, 32.881042, 28.633982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095673, 33.507477, 28.158291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493382, 33.468304, 28.175446>,  <39.732006, 33.444798, 28.185740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493382, 33.468304, 28.175446>,  <39.095673, 33.507477, 28.158291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493382, 33.468304, 28.175446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052086, 0.093370, -0.994268,
		0.093370, 0.990803, 0.097936,
		0.994268, -0.097936, 0.042889,
		39.791660, 33.438923, 28.188313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443195, 34.078438, 27.733763>,  <39.095673, 33.507477, 28.158291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443195, 34.078438, 27.733763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693310, 33.766911, 27.753572>,  <39.843380, 33.579994, 27.765459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693310, 33.766911, 27.753572>,  <39.443195, 34.078438, 27.733763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693310, 33.766911, 27.753572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189351, 0.089845, -0.977791,
		0.757074, 0.620779, 0.203649,
		0.625288, -0.778821, 0.049525,
		39.880898, 33.533264, 27.768431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893642, 34.120621, 27.154810>,  <39.443195, 34.078438, 27.733763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893642, 34.120621, 27.154810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000412, 33.748013, 27.253626>,  <40.064472, 33.524448, 27.312916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000412, 33.748013, 27.253626>,  <39.893642, 34.120621, 27.154810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000412, 33.748013, 27.253626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271523, -0.173264, -0.946707,
		0.924676, 0.319777, 0.206680,
		0.266925, -0.931516, 0.247040,
		40.080490, 33.468559, 27.327738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490318, 33.985767, 26.880468>,  <39.893642, 34.120621, 27.154810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490318, 33.985767, 26.880468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376720, 33.608978, 26.952053>,  <40.308563, 33.382904, 26.995003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376720, 33.608978, 26.952053>,  <40.490318, 33.985767, 26.880468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376720, 33.608978, 26.952053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360277, -0.277802, -0.890520,
		0.888565, -0.188426, 0.418267,
		-0.283993, -0.941977, 0.178960,
		40.291523, 33.326385, 27.005741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066078, 33.570877, 26.674875>,  <40.490318, 33.985767, 26.880468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066078, 33.570877, 26.674875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760956, 33.312542, 26.687641>,  <40.577881, 33.157543, 26.695301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760956, 33.312542, 26.687641>,  <41.066078, 33.570877, 26.674875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760956, 33.312542, 26.687641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328577, -0.429650, -0.841094,
		0.556920, -0.631108, 0.539947,
		-0.762810, -0.645836, 0.031913,
		40.532112, 33.118790, 26.697214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357841, 32.963642, 26.613127>,  <41.066078, 33.570877, 26.674875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357841, 32.963642, 26.613127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.982075, 32.882881, 26.502327>,  <40.756615, 32.834423, 26.435846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.982075, 32.882881, 26.502327>,  <41.357841, 32.963642, 26.613127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982075, 32.882881, 26.502327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339672, -0.439870, -0.831347,
		0.046008, -0.875071, 0.481803,
		-0.939418, -0.201903, -0.276999,
		40.700249, 32.822311, 26.419228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213760, 32.204365, 26.544401>,  <41.357841, 32.963642, 26.613127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213760, 32.204365, 26.544401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966118, 32.398842, 26.297718>,  <40.817535, 32.515530, 26.149708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966118, 32.398842, 26.297718>,  <41.213760, 32.204365, 26.544401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966118, 32.398842, 26.297718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345064, -0.537015, -0.769770,
		-0.705439, -0.689369, 0.164699,
		-0.619102, 0.486194, -0.616708,
		40.780388, 32.544701, 26.112705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342403, 31.835354, 26.033331>,  <41.213760, 32.204365, 26.544401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342403, 31.835354, 26.033331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099030, 32.111069, 25.876009>,  <40.953003, 32.276497, 25.781616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099030, 32.111069, 25.876009>,  <41.342403, 31.835354, 26.033331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099030, 32.111069, 25.876009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183061, -0.360327, -0.914687,
		-0.772200, -0.628528, 0.093055,
		-0.608437, 0.689287, -0.393304,
		40.916500, 32.317856, 25.758018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190762, 31.481945, 25.431000>,  <41.342403, 31.835354, 26.033331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190762, 31.481945, 25.431000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.071320, 31.858688, 25.369375>,  <40.999653, 32.084736, 25.332401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.071320, 31.858688, 25.369375>,  <41.190762, 31.481945, 25.431000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071320, 31.858688, 25.369375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195258, -0.097720, -0.975872,
		-0.934189, -0.321482, -0.154726,
		-0.298605, 0.941860, -0.154061,
		40.981739, 32.141247, 25.323156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775318, 31.451649, 24.881628>,  <41.190762, 31.481945, 25.431000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775318, 31.451649, 24.881628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910061, 31.826593, 24.917128>,  <40.990906, 32.051559, 24.938427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910061, 31.826593, 24.917128>,  <40.775318, 31.451649, 24.881628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910061, 31.826593, 24.917128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253795, 0.000373, -0.967258,
		-0.906705, 0.348353, -0.237772,
		0.336859, 0.937363, 0.088748,
		41.011120, 32.107803, 24.943752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464214, 31.816334, 24.286282>,  <40.775318, 31.451649, 24.881628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464214, 31.816334, 24.286282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.780273, 32.019432, 24.423599>,  <40.969910, 32.141293, 24.505991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.780273, 32.019432, 24.423599>,  <40.464214, 31.816334, 24.286282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780273, 32.019432, 24.423599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403048, -0.008478, -0.915140,
		-0.461750, 0.861464, -0.211346,
		0.790152, 0.507748, 0.343296,
		41.017319, 32.171757, 24.526588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402039, 32.500710, 24.105574>,  <40.464214, 31.816334, 24.286282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402039, 32.500710, 24.105574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795555, 32.443806, 24.149246>,  <41.031666, 32.409664, 24.175449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795555, 32.443806, 24.149246>,  <40.402039, 32.500710, 24.105574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795555, 32.443806, 24.149246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147998, 0.300279, -0.942300,
		0.101263, 0.943184, 0.316465,
		0.983790, -0.142257, 0.109182,
		41.090691, 32.401127, 24.182001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657593, 32.987179, 23.804321>,  <40.402039, 32.500710, 24.105574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657593, 32.987179, 23.804321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963879, 32.729950, 23.799585>,  <41.147648, 32.575611, 23.796743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963879, 32.729950, 23.799585>,  <40.657593, 32.987179, 23.804321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963879, 32.729950, 23.799585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126295, 0.168380, -0.977598,
		0.630663, 0.747062, 0.210148,
		0.765711, -0.643075, -0.011840,
		41.193592, 32.537025, 23.796034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130047, 33.240902, 23.283726>,  <40.657593, 32.987179, 23.804321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130047, 33.240902, 23.283726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269459, 32.869431, 23.334452>,  <41.353107, 32.646549, 23.364887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269459, 32.869431, 23.334452>,  <41.130047, 33.240902, 23.283726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269459, 32.869431, 23.334452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138505, -0.082784, -0.986896,
		0.927007, 0.361529, 0.099774,
		0.348531, -0.928678, 0.126815,
		41.374020, 32.590828, 23.372496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855904, 33.198925, 23.067530>,  <41.130047, 33.240902, 23.283726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855904, 33.198925, 23.067530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.708866, 32.828720, 23.031094>,  <41.620644, 32.606598, 23.009232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.708866, 32.828720, 23.031094>,  <41.855904, 33.198925, 23.067530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708866, 32.828720, 23.031094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352900, -0.048198, -0.934419,
		0.860429, -0.375629, 0.344332,
		-0.367591, -0.925516, -0.091089,
		41.598591, 32.551064, 23.003767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405193, 32.686989, 22.897898>,  <41.855904, 33.198925, 23.067530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405193, 32.686989, 22.897898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.059723, 32.544163, 22.755592>,  <41.852440, 32.458466, 22.670208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.059723, 32.544163, 22.755592>,  <42.405193, 32.686989, 22.897898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059723, 32.544163, 22.755592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418107, -0.113303, -0.901304,
		0.281516, -0.927182, 0.247149,
		-0.863676, -0.357066, -0.355765,
		41.800621, 32.437042, 22.648863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649139, 32.389076, 22.236282>,  <42.405193, 32.686989, 22.897898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649139, 32.389076, 22.236282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261261, 32.292896, 22.218977>,  <42.028534, 32.235188, 22.208593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261261, 32.292896, 22.218977>,  <42.649139, 32.389076, 22.236282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261261, 32.292896, 22.218977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143844, -0.418774, -0.896626,
		0.197478, -0.875678, 0.440671,
		-0.969697, -0.240451, -0.043263,
		41.970352, 32.220760, 22.205997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588692, 31.624647, 21.913631>,  <42.649139, 32.389076, 22.236282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588692, 31.624647, 21.913631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212799, 31.759161, 21.888937>,  <41.987263, 31.839870, 21.874121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212799, 31.759161, 21.888937>,  <42.588692, 31.624647, 21.913631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212799, 31.759161, 21.888937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003525, -0.190080, -0.981762,
		-0.341888, -0.922378, 0.179811,
		-0.939734, 0.336286, -0.061735,
		41.930878, 31.860046, 21.870417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197269, 31.066057, 21.689575>,  <42.588692, 31.624647, 21.913631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197269, 31.066057, 21.689575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.022480, 31.412169, 21.591311>,  <41.917606, 31.619835, 21.532352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.022480, 31.412169, 21.591311>,  <42.197269, 31.066057, 21.689575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022480, 31.412169, 21.591311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144822, -0.337233, -0.930215,
		-0.887740, -0.370901, 0.272672,
		-0.436971, 0.865278, -0.245660,
		41.891388, 31.671753, 21.517612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698853, 30.876141, 21.228516>,  <42.197269, 31.066057, 21.689575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698853, 30.876141, 21.228516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688980, 31.270075, 21.159826>,  <41.683056, 31.506435, 21.118612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688980, 31.270075, 21.159826>,  <41.698853, 30.876141, 21.228516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688980, 31.270075, 21.159826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146968, -0.173485, -0.973809,
		-0.988833, 0.001208, 0.149020,
		-0.024676, 0.984836, -0.171725,
		41.681576, 31.565525, 21.108309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163559, 31.031797, 20.700222>,  <41.698853, 30.876141, 21.228516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163559, 31.031797, 20.700222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.425102, 31.332346, 20.664654>,  <41.582027, 31.512676, 20.643312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.425102, 31.332346, 20.664654>,  <41.163559, 31.031797, 20.700222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425102, 31.332346, 20.664654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083197, -0.045414, -0.995498,
		-0.752029, 0.658313, 0.032817,
		0.653858, 0.751373, -0.088922,
		41.621262, 31.557758, 20.637978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022091, 31.533249, 20.188974>,  <41.163559, 31.031797, 20.700222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022091, 31.533249, 20.188974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.412102, 31.619253, 20.166700>,  <41.646107, 31.670856, 20.153336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.412102, 31.619253, 20.166700>,  <41.022091, 31.533249, 20.188974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412102, 31.619253, 20.166700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120356, 0.300761, -0.946075,
		-0.186670, 0.929146, 0.319127,
		0.975022, 0.215013, -0.055685,
		41.704609, 31.683758, 20.149996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511345, 32.092880, 19.957888>,  <41.022091, 31.533249, 20.188974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511345, 32.092880, 19.957888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150036, 32.122486, 19.788834>,  <39.933250, 32.140251, 19.687401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150036, 32.122486, 19.788834>,  <40.511345, 32.092880, 19.957888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150036, 32.122486, 19.788834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342110, 0.470257, 0.813523,
		0.258960, 0.879420, -0.399449,
		-0.903272, 0.074014, -0.422636,
		39.879055, 32.144691, 19.662043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305408, 32.758892, 20.016989>,  <40.511345, 32.092880, 19.957888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305408, 32.758892, 20.016989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947903, 32.592842, 19.949045>,  <39.733398, 32.493214, 19.908279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947903, 32.592842, 19.949045>,  <40.305408, 32.758892, 20.016989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947903, 32.592842, 19.949045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367342, 0.460162, 0.808276,
		-0.257372, 0.784808, -0.563770,
		-0.893767, -0.415124, -0.169860,
		39.679771, 32.468304, 19.898087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885521, 33.311668, 20.117483>,  <40.305408, 32.758892, 20.016989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885521, 33.311668, 20.117483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654594, 32.988174, 20.162476>,  <39.516041, 32.794075, 20.189470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654594, 32.988174, 20.162476>,  <39.885521, 33.311668, 20.117483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654594, 32.988174, 20.162476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321323, 0.351660, 0.879253,
		-0.750642, 0.471461, -0.462884,
		-0.577312, -0.808740, 0.112479,
		39.481400, 32.745552, 20.196218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209805, 33.586143, 20.447134>,  <39.885521, 33.311668, 20.117483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209805, 33.586143, 20.447134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167130, 33.191895, 20.499531>,  <39.141525, 32.955345, 20.530968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167130, 33.191895, 20.499531>,  <39.209805, 33.586143, 20.447134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167130, 33.191895, 20.499531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330064, 0.159378, 0.930407,
		-0.937910, 0.056027, -0.342324,
		-0.106687, -0.985627, 0.130990,
		39.135124, 32.896206, 20.538828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521545, 33.368362, 20.610994>,  <39.209805, 33.586143, 20.447134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521545, 33.368362, 20.610994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752472, 33.072033, 20.748327>,  <38.891029, 32.894234, 20.830727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752472, 33.072033, 20.748327>,  <38.521545, 33.368362, 20.610994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752472, 33.072033, 20.748327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424124, 0.087230, 0.901393,
		-0.697726, -0.666006, -0.263843,
		0.577318, -0.740828, 0.343332,
		38.925667, 32.849785, 20.851326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086655, 32.948334, 21.016861>,  <38.521545, 33.368362, 20.610994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086655, 32.948334, 21.016861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457054, 32.851791, 21.132975>,  <38.679295, 32.793865, 21.202642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457054, 32.851791, 21.132975>,  <38.086655, 32.948334, 21.016861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457054, 32.851791, 21.132975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313039, -0.061122, 0.947771,
		-0.211011, -0.968509, -0.132154,
		0.926003, -0.241360, 0.290284,
		38.734856, 32.779385, 21.220060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 32.462605, 21.606939>,  <38.086655, 32.948334, 21.016861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016747, 32.462605, 21.606939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403896, 32.550072, 21.656588>,  <38.636185, 32.602551, 21.686377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403896, 32.550072, 21.656588>,  <38.016747, 32.462605, 21.606939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403896, 32.550072, 21.656588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085675, -0.177299, 0.980421,
		0.236394, -0.959557, -0.152868,
		0.967873, 0.218669, 0.124122,
		38.694260, 32.615673, 21.693825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128155, 32.078789, 22.178659>,  <38.016747, 32.462605, 21.606939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128155, 32.078789, 22.178659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410778, 32.361820, 22.182932>,  <38.580353, 32.531639, 22.185495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410778, 32.361820, 22.182932>,  <38.128155, 32.078789, 22.178659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410778, 32.361820, 22.182932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034556, 0.019420, 0.999214,
		0.706811, -0.706372, 0.038172,
		0.706558, 0.707575, 0.010683,
		38.622746, 32.574093, 22.186136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677967, 31.954578, 22.709448>,  <38.128155, 32.078789, 22.178659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677967, 31.954578, 22.709448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712021, 32.350380, 22.662748>,  <38.732452, 32.587860, 22.634729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712021, 32.350380, 22.662748>,  <38.677967, 31.954578, 22.709448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712021, 32.350380, 22.662748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008326, 0.116464, 0.993160,
		0.996335, -0.085522, 0.001676,
		0.085132, 0.989506, -0.116749,
		38.737560, 32.647232, 22.627724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146206, 32.201206, 23.086031>,  <38.677967, 31.954578, 22.709448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146206, 32.201206, 23.086031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938782, 32.538403, 23.028814>,  <38.814327, 32.740719, 22.994484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938782, 32.538403, 23.028814>,  <39.146206, 32.201206, 23.086031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938782, 32.538403, 23.028814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141172, 0.080587, 0.986700,
		0.843306, 0.531858, 0.077217,
		-0.518562, 0.842990, -0.143043,
		38.783215, 32.791298, 22.985901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423309, 32.752285, 23.503719>,  <39.146206, 32.201206, 23.086031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423309, 32.752285, 23.503719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061672, 32.896858, 23.412525>,  <38.844688, 32.983601, 23.357809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061672, 32.896858, 23.412525>,  <39.423309, 32.752285, 23.503719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061672, 32.896858, 23.412525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178135, 0.166186, 0.969871,
		0.388429, 0.917469, -0.085865,
		-0.904097, 0.361431, -0.227985,
		38.790443, 33.005287, 23.344130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379013, 33.354343, 23.865349>,  <39.423309, 32.752285, 23.503719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379013, 33.354343, 23.865349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003559, 33.240368, 23.787601>,  <38.778286, 33.171982, 23.740953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003559, 33.240368, 23.787601>,  <39.379013, 33.354343, 23.865349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003559, 33.240368, 23.787601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226467, 0.084074, 0.970384,
		-0.260155, 0.954852, -0.143443,
		-0.938633, -0.284935, -0.194370,
		38.721970, 33.154888, 23.729290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003845, 33.762730, 24.315149>,  <39.379013, 33.354343, 23.865349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003845, 33.762730, 24.315149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744423, 33.473999, 24.218531>,  <38.588768, 33.300762, 24.160561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744423, 33.473999, 24.218531>,  <39.003845, 33.762730, 24.315149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744423, 33.473999, 24.218531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288382, -0.060661, 0.955592,
		-0.704420, 0.689415, -0.168818,
		-0.648558, -0.721822, -0.241546,
		38.549854, 33.257454, 24.146067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371212, 34.008522, 24.610884>,  <39.003845, 33.762730, 24.315149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371212, 34.008522, 24.610884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320915, 33.614723, 24.561981>,  <38.290737, 33.378445, 24.532639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320915, 33.614723, 24.561981>,  <38.371212, 34.008522, 24.610884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320915, 33.614723, 24.561981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522958, -0.038942, 0.851469,
		-0.843032, 0.171005, -0.509955,
		-0.125746, -0.984500, -0.122258,
		38.283192, 33.319374, 24.525305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625568, 33.839195, 24.867273>,  <38.371212, 34.008522, 24.610884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625568, 33.839195, 24.867273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867924, 33.521069, 24.874899>,  <38.013336, 33.330193, 24.879475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867924, 33.521069, 24.874899>,  <37.625568, 33.839195, 24.867273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867924, 33.521069, 24.874899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403293, -0.286403, 0.869096,
		-0.685751, -0.534263, -0.494276,
		0.605888, -0.795321, 0.019063,
		38.049690, 33.282471, 24.880617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181221, 33.334076, 25.205229>,  <37.625568, 33.839195, 24.867273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181221, 33.334076, 25.205229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524666, 33.129391, 25.217398>,  <37.730732, 33.006580, 25.224699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524666, 33.129391, 25.217398>,  <37.181221, 33.334076, 25.205229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524666, 33.129391, 25.217398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378694, -0.593181, 0.710442,
		-0.345498, -0.621517, -0.703098,
		0.858616, -0.511716, 0.030422,
		37.782249, 32.975876, 25.226524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126026, 32.549648, 25.260695>,  <37.181221, 33.334076, 25.205229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126026, 32.549648, 25.260695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473133, 32.653259, 25.430344>,  <37.681396, 32.715424, 25.532133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473133, 32.653259, 25.430344>,  <37.126026, 32.549648, 25.260695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473133, 32.653259, 25.430344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309365, -0.386346, 0.868925,
		0.388930, -0.885237, -0.255127,
		0.867771, 0.259024, 0.424122,
		37.733463, 32.730965, 25.557581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354504, 32.006104, 25.684578>,  <37.126026, 32.549648, 25.260695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354504, 32.006104, 25.684578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535252, 32.328445, 25.837637>,  <37.643700, 32.521851, 25.929472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535252, 32.328445, 25.837637>,  <37.354504, 32.006104, 25.684578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535252, 32.328445, 25.837637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316848, -0.255989, 0.913278,
		0.833920, -0.533923, 0.139658,
		0.451869, 0.805851, 0.382647,
		37.670811, 32.570202, 25.952431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719810, 31.702467, 26.287491>,  <37.354504, 32.006104, 25.684578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719810, 31.702467, 26.287491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686203, 32.097504, 26.340563>,  <37.666039, 32.334526, 26.372406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686203, 32.097504, 26.340563>,  <37.719810, 31.702467, 26.287491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686203, 32.097504, 26.340563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295104, -0.151841, 0.943323,
		0.951764, 0.040104, 0.304200,
		-0.084021, 0.987591, 0.132682,
		37.660995, 32.393780, 26.380367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998550, 31.728991, 26.878601>,  <37.719810, 31.702467, 26.287491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998550, 31.728991, 26.878601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802570, 32.072609, 26.819284>,  <37.684982, 32.278782, 26.783695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802570, 32.072609, 26.819284>,  <37.998550, 31.728991, 26.878601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802570, 32.072609, 26.819284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408047, -0.075667, 0.909820,
		0.770358, 0.506272, 0.387604,
		-0.489945, 0.859047, -0.148292,
		37.655586, 32.330322, 26.774797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.792450, 34.127224, 31.854668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.462139, 34.205006, 31.642902>,  <39.263954, 34.251675, 31.515842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.462139, 34.205006, 31.642902>,  <39.792450, 34.127224, 31.854668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462139, 34.205006, 31.642902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413671, 0.429224, 0.802897,
		0.383362, 0.882018, -0.274005,
		-0.825779, 0.194452, -0.529413,
		39.214405, 34.263340, 31.484079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613014, 34.755810, 31.949535>,  <39.792450, 34.127224, 31.854668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613014, 34.755810, 31.949535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.260128, 34.608608, 31.832054>,  <39.048397, 34.520287, 31.761564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.260128, 34.608608, 31.832054>,  <39.613014, 34.755810, 31.949535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260128, 34.608608, 31.832054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445648, 0.451327, 0.773112,
		-0.151955, 0.812941, -0.562171,
		-0.882218, -0.368009, -0.293704,
		38.995464, 34.498207, 31.743942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051598, 35.237499, 32.078423>,  <39.613014, 34.755810, 31.949535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051598, 35.237499, 32.078423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824703, 34.909309, 32.049961>,  <38.688568, 34.712395, 32.032883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824703, 34.909309, 32.049961>,  <39.051598, 35.237499, 32.078423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824703, 34.909309, 32.049961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656790, 0.398554, 0.640142,
		-0.496862, 0.409846, -0.764954,
		-0.567236, -0.820476, -0.071156,
		38.654533, 34.663166, 32.028614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325092, 35.456757, 31.841394>,  <39.051598, 35.237499, 32.078423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325092, 35.456757, 31.841394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285625, 35.099640, 32.017204>,  <38.261944, 34.885368, 32.122688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285625, 35.099640, 32.017204>,  <38.325092, 35.456757, 31.841394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285625, 35.099640, 32.017204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892792, 0.274505, 0.357169,
		-0.439531, -0.357162, -0.824165,
		-0.098671, -0.892794, 0.439524,
		38.256023, 34.831802, 32.149063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557365, 35.284153, 31.629993>,  <38.325092, 35.456757, 31.841394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557365, 35.284153, 31.629993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688835, 35.077515, 31.946247>,  <37.767719, 34.953533, 32.135998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688835, 35.077515, 31.946247>,  <37.557365, 35.284153, 31.629993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688835, 35.077515, 31.946247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815038, 0.267802, 0.513804,
		-0.477162, -0.813272, -0.333024,
		0.328678, -0.516595, 0.790633,
		37.787437, 34.922535, 32.183437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957230, 34.909477, 31.938398>,  <37.557365, 35.284153, 31.629993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957230, 34.909477, 31.938398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221527, 34.905735, 32.238621>,  <37.380104, 34.903488, 32.418755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221527, 34.905735, 32.238621>,  <36.957230, 34.909477, 31.938398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221527, 34.905735, 32.238621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745079, 0.113034, 0.657328,
		-0.090991, -0.993547, 0.067712,
		0.660740, -0.009360, 0.750556,
		37.419750, 34.902927, 32.463787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642715, 34.478119, 32.501163>,  <36.957230, 34.909477, 31.938398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642715, 34.478119, 32.501163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932156, 34.685646, 32.683250>,  <37.105820, 34.810162, 32.792503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932156, 34.685646, 32.683250>,  <36.642715, 34.478119, 32.501163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932156, 34.685646, 32.683250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602585, 0.153237, 0.783205,
		0.336587, -0.841037, 0.423516,
		0.723602, 0.518821, 0.455218,
		37.149235, 34.841293, 32.819817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658596, 34.329048, 33.268562>,  <36.642715, 34.478119, 32.501163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658596, 34.329048, 33.268562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821060, 34.693958, 33.247417>,  <36.918537, 34.912903, 33.234730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821060, 34.693958, 33.247417>,  <36.658596, 34.329048, 33.268562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821060, 34.693958, 33.247417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546225, 0.288749, 0.786296,
		0.732580, -0.290486, 0.615584,
		0.406158, 0.912272, -0.052861,
		36.942909, 34.967640, 33.231560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807274, 34.557579, 33.959511>,  <36.658596, 34.329048, 33.268562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807274, 34.557579, 33.959511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.786243, 34.896152, 33.747555>,  <36.773624, 35.099297, 33.620380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.786243, 34.896152, 33.747555>,  <36.807274, 34.557579, 33.959511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786243, 34.896152, 33.747555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437822, 0.457368, 0.774032,
		0.897523, 0.272693, 0.346542,
		-0.052577, 0.846435, -0.529889,
		36.770470, 35.150082, 33.588589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887241, 35.110046, 34.466106>,  <36.807274, 34.557579, 33.959511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887241, 35.110046, 34.466106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742100, 35.315174, 34.154888>,  <36.655014, 35.438251, 33.968159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742100, 35.315174, 34.154888>,  <36.887241, 35.110046, 34.466106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742100, 35.315174, 34.154888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563594, 0.544151, 0.621500,
		0.742091, 0.664014, 0.091575,
		-0.362854, 0.512821, -0.778044,
		36.633244, 35.469021, 33.921474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092197, 35.786057, 34.669598>,  <36.887241, 35.110046, 34.466106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092197, 35.786057, 34.669598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784218, 35.769699, 34.414879>,  <36.599430, 35.759884, 34.262047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784218, 35.769699, 34.414879>,  <37.092197, 35.786057, 34.669598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784218, 35.769699, 34.414879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614088, 0.318710, 0.722025,
		0.173427, 0.946970, -0.270502,
		-0.769947, -0.040893, -0.636796,
		36.553234, 35.757431, 34.223839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636501, 36.459446, 34.878006>,  <37.092197, 35.786057, 34.669598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636501, 36.459446, 34.878006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 36.213638, 34.662533>,  <36.267632, 36.066154, 34.533249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 36.213638, 34.662533>,  <36.636501, 36.459446, 34.878006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405956, 36.213638, 34.662533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773444, 0.197411, 0.602340,
		-0.263806, 0.763805, -0.589074,
		-0.576360, -0.614516, -0.538683,
		36.233047, 36.029282, 34.500927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044521, 36.779980, 35.022686>,  <36.636501, 36.459446, 34.878006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044521, 36.779980, 35.022686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.930080, 36.453552, 34.821815>,  <35.861416, 36.257694, 34.701294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.930080, 36.453552, 34.821815>,  <36.044521, 36.779980, 35.022686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930080, 36.453552, 34.821815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873489, 0.006680, 0.486798,
		-0.393906, 0.577917, -0.714738,
		-0.286103, -0.816068, -0.502173,
		35.844250, 36.208733, 34.671165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469704, 36.939907, 34.674622>,  <36.044521, 36.779980, 35.022686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469704, 36.939907, 34.674622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450470, 36.540661, 34.689915>,  <35.438931, 36.301113, 34.699089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450470, 36.540661, 34.689915>,  <35.469704, 36.939907, 34.674622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450470, 36.540661, 34.689915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929704, 0.058715, 0.363597,
		-0.365155, -0.018059, -0.930772,
		-0.048084, -0.998111, 0.038230,
		35.436047, 36.241226, 34.701382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472748, 37.772129, 34.591537>,  <35.469704, 36.939907, 34.674622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472748, 37.772129, 34.591537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663315, 38.093880, 34.733532>,  <35.777653, 38.286930, 34.818729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663315, 38.093880, 34.733532>,  <35.472748, 37.772129, 34.591537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663315, 38.093880, 34.733532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239054, 0.270030, -0.932704,
		-0.846099, 0.529213, -0.063643,
		0.476413, 0.804374, 0.354982,
		35.806240, 38.335194, 34.840027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209732, 38.399841, 34.274925>,  <35.472748, 37.772129, 34.591537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209732, 38.399841, 34.274925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584171, 38.481358, 34.389603>,  <35.808834, 38.530270, 34.458408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584171, 38.481358, 34.389603>,  <35.209732, 38.399841, 34.274925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584171, 38.481358, 34.389603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250331, 0.186596, -0.950009,
		-0.247101, 0.961067, 0.123656,
		0.936096, 0.203793, 0.286693,
		35.865002, 38.542496, 34.475609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329731, 38.986534, 33.983765>,  <35.209732, 38.399841, 34.274925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329731, 38.986534, 33.983765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.693523, 38.841228, 34.064636>,  <35.911800, 38.754044, 34.113159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.693523, 38.841228, 34.064636>,  <35.329731, 38.986534, 33.983765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693523, 38.841228, 34.064636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310407, 0.269839, -0.911501,
		0.276558, 0.891755, 0.358174,
		0.909485, -0.363263, 0.202180,
		35.966370, 38.732250, 34.125290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829895, 39.501232, 33.806641>,  <35.329731, 38.986534, 33.983765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829895, 39.501232, 33.806641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.016407, 39.147442, 33.813416>,  <36.128315, 38.935169, 33.817482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.016407, 39.147442, 33.813416>,  <35.829895, 39.501232, 33.806641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016407, 39.147442, 33.813416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290664, 0.135094, -0.947240,
		0.835524, 0.446599, 0.320076,
		0.466277, -0.884476, 0.016936,
		36.156292, 38.882099, 33.818497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476234, 39.557964, 33.631393>,  <35.829895, 39.501232, 33.806641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476234, 39.557964, 33.631393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411079, 39.174171, 33.539429>,  <36.371986, 38.943897, 33.484249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411079, 39.174171, 33.539429>,  <36.476234, 39.557964, 33.631393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411079, 39.174171, 33.539429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136451, 0.208881, -0.968374,
		0.977163, -0.189110, 0.096898,
		-0.162889, -0.959482, -0.229915,
		36.362213, 38.886326, 33.470455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768757, 39.499767, 32.924747>,  <36.476234, 39.557964, 33.631393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768757, 39.499767, 32.924747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608349, 39.136093, 32.969566>,  <36.512104, 38.917889, 32.996456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608349, 39.136093, 32.969566>,  <36.768757, 39.499767, 32.924747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608349, 39.136093, 32.969566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047314, -0.142706, -0.988634,
		0.914846, -0.391163, 0.100245,
		-0.401022, -0.909190, 0.112046,
		36.488041, 38.863335, 33.003181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239132, 39.003231, 32.825546>,  <36.768757, 39.499767, 32.924747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239132, 39.003231, 32.825546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.892994, 38.829384, 32.725719>,  <36.685310, 38.725075, 32.665825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.892994, 38.829384, 32.725719>,  <37.239132, 39.003231, 32.825546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892994, 38.829384, 32.725719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286714, -0.020882, -0.957789,
		0.411064, -0.900371, 0.142682,
		-0.865345, -0.434621, -0.249565,
		36.633389, 38.698997, 32.650848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414547, 38.450645, 32.290359>,  <37.239132, 39.003231, 32.825546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414547, 38.450645, 32.290359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017628, 38.487244, 32.256966>,  <36.779476, 38.509201, 32.236931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017628, 38.487244, 32.256966>,  <37.414547, 38.450645, 32.290359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017628, 38.487244, 32.256966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073352, -0.108981, -0.991334,
		-0.099809, -0.989823, 0.101430,
		-0.992299, 0.091504, -0.083483,
		36.719936, 38.514690, 32.231922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274319, 38.003571, 31.810900>,  <37.414547, 38.450645, 32.290359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274319, 38.003571, 31.810900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944489, 38.228947, 31.790428>,  <36.746590, 38.364174, 31.778145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944489, 38.228947, 31.790428>,  <37.274319, 38.003571, 31.810900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944489, 38.228947, 31.790428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005797, -0.098871, -0.995083,
		-0.565729, -0.820220, 0.084792,
		-0.824571, 0.563439, -0.051179,
		36.697117, 38.397980, 31.775074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797089, 37.593613, 31.474909>,  <37.274319, 38.003571, 31.810900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797089, 37.593613, 31.474909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681374, 37.975002, 31.440979>,  <36.611946, 38.203838, 31.420622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681374, 37.975002, 31.440979>,  <36.797089, 37.593613, 31.474909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681374, 37.975002, 31.440979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010790, -0.085360, -0.996292,
		-0.957182, -0.289128, 0.014405,
		-0.289286, 0.953477, -0.084825,
		36.594589, 38.261044, 31.415531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276718, 37.603405, 30.995510>,  <36.797089, 37.593613, 31.474909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276718, 37.603405, 30.995510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.430138, 37.972477, 31.011259>,  <36.522190, 38.193920, 31.020708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.430138, 37.972477, 31.011259>,  <36.276718, 37.603405, 30.995510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430138, 37.972477, 31.011259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000227, 0.042729, -0.999087,
		-0.923521, 0.383189, 0.016598,
		0.383549, 0.922681, 0.039374,
		36.545200, 38.249283, 31.023071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902920, 37.836048, 30.477692>,  <36.276718, 37.603405, 30.995510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902920, 37.836048, 30.477692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198669, 38.096821, 30.545010>,  <36.376118, 38.253284, 30.585400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198669, 38.096821, 30.545010>,  <35.902920, 37.836048, 30.477692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198669, 38.096821, 30.545010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295958, -0.090170, -0.950936,
		-0.604766, 0.752901, -0.259612,
		0.739370, 0.651928, 0.168295,
		36.420479, 38.292400, 30.595497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824997, 38.377270, 29.985811>,  <35.902920, 37.836048, 30.477692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824997, 38.377270, 29.985811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.204590, 38.386585, 30.111595>,  <36.432346, 38.392174, 30.187065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.204590, 38.386585, 30.111595>,  <35.824997, 38.377270, 29.985811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204590, 38.386585, 30.111595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315234, -0.046664, -0.947866,
		-0.007397, 0.998639, -0.051624,
		0.948985, 0.023285, 0.314460,
		36.489285, 38.393570, 30.205933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210480, 38.823566, 29.530296>,  <35.824997, 38.377270, 29.985811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210480, 38.823566, 29.530296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505581, 38.619129, 29.706709>,  <36.682640, 38.496468, 29.812555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505581, 38.619129, 29.706709>,  <36.210480, 38.823566, 29.530296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505581, 38.619129, 29.706709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441637, -0.128702, -0.887915,
		0.510569, 0.849834, 0.130769,
		0.737750, -0.511094, 0.441030,
		36.726906, 38.465801, 29.839018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091251, 39.539436, 29.359037>,  <36.210480, 38.823566, 29.530296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091251, 39.539436, 29.359037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822243, 39.646942, 29.083220>,  <35.660835, 39.711445, 28.917728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822243, 39.646942, 29.083220>,  <36.091251, 39.539436, 29.359037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822243, 39.646942, 29.083220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672544, 0.166893, 0.720994,
		0.308858, 0.948637, 0.068517,
		-0.672526, 0.268765, -0.689546,
		35.620483, 39.727573, 28.876356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706707, 40.136734, 29.537939>,  <36.091251, 39.539436, 29.359037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706707, 40.136734, 29.537939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.465366, 39.931240, 29.293957>,  <35.320560, 39.807945, 29.147568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.465366, 39.931240, 29.293957>,  <35.706707, 40.136734, 29.537939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465366, 39.931240, 29.293957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727560, 0.041423, 0.684792,
		-0.326534, 0.856949, -0.398765,
		-0.603350, -0.513733, -0.609956,
		35.284363, 39.777119, 29.110970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076359, 40.558601, 29.494940>,  <35.706707, 40.136734, 29.537939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076359, 40.558601, 29.494940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972164, 40.189346, 29.381834>,  <34.909645, 39.967793, 29.313971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972164, 40.189346, 29.381834>,  <35.076359, 40.558601, 29.494940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972164, 40.189346, 29.381834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826908, 0.062142, 0.558894,
		-0.498366, 0.379408, -0.779539,
		-0.260491, -0.923140, -0.282766,
		34.894016, 39.912403, 29.297005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371616, 40.634224, 29.319448>,  <35.076359, 40.558601, 29.494940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371616, 40.634224, 29.319448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.424805, 40.238857, 29.348700>,  <34.456718, 40.001637, 29.366251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.424805, 40.238857, 29.348700>,  <34.371616, 40.634224, 29.319448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424805, 40.238857, 29.348700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770904, -0.056769, 0.634417,
		-0.622918, -0.140733, -0.769524,
		0.132968, -0.988419, 0.073129,
		34.464695, 39.942333, 29.370638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734566, 40.314274, 29.283115>,  <34.371616, 40.634224, 29.319448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734566, 40.314274, 29.283115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951408, 40.026085, 29.456104>,  <34.081516, 39.853172, 29.559898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951408, 40.026085, 29.456104>,  <33.734566, 40.314274, 29.283115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951408, 40.026085, 29.456104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706130, -0.111593, 0.699234,
		-0.455519, -0.684444, -0.569244,
		0.542110, -0.720474, 0.432473,
		34.114040, 39.809944, 29.585846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364964, 39.686035, 29.282030>,  <33.734566, 40.314274, 29.283115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364964, 39.686035, 29.282030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.631752, 39.686043, 29.580063>,  <33.791824, 39.686047, 29.758883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.631752, 39.686043, 29.580063>,  <33.364964, 39.686035, 29.282030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631752, 39.686043, 29.580063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745006, 0.014453, 0.666901,
		-0.010759, -0.999896, 0.009650,
		0.666971, 0.000014, 0.745083,
		33.831844, 39.686047, 29.803589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162056, 39.256340, 29.773108>,  <33.364964, 39.686035, 29.282030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162056, 39.256340, 29.773108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.423412, 39.457790, 29.999187>,  <33.580227, 39.578659, 30.134836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.423412, 39.457790, 29.999187>,  <33.162056, 39.256340, 29.773108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423412, 39.457790, 29.999187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644157, -0.022336, 0.764567,
		0.397678, -0.863634, 0.309819,
		0.653386, 0.503624, 0.565199,
		33.619427, 39.608879, 30.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097660, 38.948925, 30.465164>,  <33.162056, 39.256340, 29.773108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097660, 38.948925, 30.465164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.279366, 39.301666, 30.515741>,  <33.388390, 39.513309, 30.546087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.279366, 39.301666, 30.515741>,  <33.097660, 38.948925, 30.465164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279366, 39.301666, 30.515741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621548, 0.212042, 0.754133,
		0.638220, -0.421164, 0.644434,
		0.454261, 0.881850, 0.126444,
		33.415646, 39.566219, 30.553675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352013, 38.979073, 31.180170>,  <33.097660, 38.948925, 30.465164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352013, 38.979073, 31.180170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.315720, 39.356308, 31.052200>,  <33.293945, 39.582649, 30.975418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.315720, 39.356308, 31.052200>,  <33.352013, 38.979073, 31.180170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315720, 39.356308, 31.052200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655851, 0.185165, 0.731829,
		0.749419, 0.276221, 0.601725,
		-0.090729, 0.943088, -0.319926,
		33.288502, 39.639236, 30.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430443, 39.438221, 31.768499>,  <33.352013, 38.979073, 31.180170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430443, 39.438221, 31.768499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245140, 39.679989, 31.509247>,  <33.133961, 39.825050, 31.353695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245140, 39.679989, 31.509247>,  <33.430443, 39.438221, 31.768499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245140, 39.679989, 31.509247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631579, 0.287878, 0.719884,
		0.621694, 0.742836, 0.248377,
		-0.463254, 0.604418, -0.648132,
		33.106163, 39.861313, 31.314808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356400, 40.038994, 32.139870>,  <33.430443, 39.438221, 31.768499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356400, 40.038994, 32.139870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.084721, 40.055248, 31.846739>,  <32.921715, 40.064999, 31.670858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.084721, 40.055248, 31.846739>,  <33.356400, 40.038994, 32.139870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084721, 40.055248, 31.846739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691095, 0.300809, 0.657192,
		0.247146, 0.952818, -0.176228,
		-0.679196, 0.040633, -0.732832,
		32.880962, 40.067436, 31.626890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002575, 40.619389, 32.177345>,  <33.356400, 40.038994, 32.139870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002575, 40.619389, 32.177345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.748196, 40.376163, 31.987261>,  <32.595566, 40.230228, 31.873211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.748196, 40.376163, 31.987261>,  <33.002575, 40.619389, 32.177345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748196, 40.376163, 31.987261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669024, 0.127459, 0.732230,
		-0.384671, 0.783591, -0.487866,
		-0.635952, -0.608062, -0.475211,
		32.557411, 40.193745, 31.844698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.401085, 40.040527, 25.698399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110771, 39.809048, 25.549623>,  <36.936584, 39.670158, 25.460358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110771, 39.809048, 25.549623>,  <37.401085, 40.040527, 25.698399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110771, 39.809048, 25.549623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606544, 0.283242, 0.742886,
		-0.324562, 0.764772, -0.556581,
		-0.725785, -0.578703, -0.371939,
		36.893036, 39.635437, 25.438042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792458, 40.478565, 25.687975>,  <37.401085, 40.040527, 25.698399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792458, 40.478565, 25.687975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650192, 40.104824, 25.679136>,  <36.564835, 39.880581, 25.673834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650192, 40.104824, 25.679136>,  <36.792458, 40.478565, 25.687975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650192, 40.104824, 25.679136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659208, 0.234031, 0.714614,
		-0.662531, 0.268728, -0.699170,
		-0.355665, -0.934352, -0.022095,
		36.543491, 39.824520, 25.672508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087772, 40.570408, 25.898361>,  <36.792458, 40.478565, 25.687975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087772, 40.570408, 25.898361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131565, 40.177586, 25.959789>,  <36.157841, 39.941891, 25.996645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131565, 40.177586, 25.959789>,  <36.087772, 40.570408, 25.898361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131565, 40.177586, 25.959789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402279, 0.097503, 0.910310,
		-0.908947, -0.161440, -0.384385,
		0.109481, -0.982054, 0.153569,
		36.164410, 39.882969, 26.005859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422260, 40.325714, 26.209688>,  <36.087772, 40.570408, 25.898361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422260, 40.325714, 26.209688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689465, 40.040230, 26.293951>,  <35.849789, 39.868938, 26.344509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689465, 40.040230, 26.293951>,  <35.422260, 40.325714, 26.209688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689465, 40.040230, 26.293951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325987, -0.026188, 0.945011,
		-0.668947, -0.699953, -0.250153,
		0.668014, -0.713709, 0.210657,
		35.889870, 39.826118, 26.357147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072994, 39.892010, 26.675829>,  <35.422260, 40.325714, 26.209688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072994, 39.892010, 26.675829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458447, 39.799664, 26.729668>,  <35.689716, 39.744255, 26.761971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458447, 39.799664, 26.729668>,  <35.072994, 39.892010, 26.675829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458447, 39.799664, 26.729668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172601, -0.153156, 0.973012,
		-0.204024, -0.960855, -0.187434,
		0.963630, -0.230869, 0.134598,
		35.747536, 39.730404, 26.770048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193287, 39.202869, 26.982767>,  <35.072994, 39.892010, 26.675829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193287, 39.202869, 26.982767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511364, 39.424484, 27.081324>,  <35.702209, 39.557453, 27.140457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511364, 39.424484, 27.081324>,  <35.193287, 39.202869, 26.982767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511364, 39.424484, 27.081324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078558, -0.308791, 0.947880,
		0.601243, -0.773106, -0.202025,
		0.795195, 0.554035, 0.246392,
		35.749924, 39.590694, 27.155241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611076, 38.748291, 27.496109>,  <35.193287, 39.202869, 26.982767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611076, 38.748291, 27.496109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726521, 39.127831, 27.547306>,  <35.795788, 39.355556, 27.578024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726521, 39.127831, 27.547306>,  <35.611076, 38.748291, 27.496109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726521, 39.127831, 27.547306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200787, -0.070726, 0.977079,
		0.936156, -0.307696, 0.170105,
		0.288612, 0.948853, 0.127992,
		35.813103, 39.412487, 27.585703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929893, 38.710468, 28.140272>,  <35.611076, 38.748291, 27.496109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929893, 38.710468, 28.140272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885326, 39.104435, 28.087307>,  <35.858585, 39.340813, 28.055529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885326, 39.104435, 28.087307>,  <35.929893, 38.710468, 28.140272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885326, 39.104435, 28.087307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228159, 0.104329, 0.968018,
		0.967227, 0.138068, 0.213092,
		-0.111421, 0.984912, -0.132412,
		35.851898, 39.399910, 28.047583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222229, 38.969521, 28.806105>,  <35.929893, 38.710468, 28.140272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222229, 38.969521, 28.806105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007385, 39.261246, 28.636580>,  <35.878479, 39.436283, 28.534864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007385, 39.261246, 28.636580>,  <36.222229, 38.969521, 28.806105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007385, 39.261246, 28.636580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419648, 0.204812, 0.884278,
		0.731719, 0.652802, 0.196050,
		-0.537105, 0.729315, -0.423813,
		35.846252, 39.480042, 28.509436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866684, 39.113781, 29.252295>,  <36.222229, 38.969521, 28.806105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866684, 39.113781, 29.252295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943623, 38.747128, 29.392462>,  <36.989788, 38.527138, 29.476562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943623, 38.747128, 29.392462>,  <36.866684, 39.113781, 29.252295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943623, 38.747128, 29.392462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685462, -0.130033, -0.716402,
		0.702242, 0.377998, 0.603303,
		0.192349, -0.916629, 0.350418,
		37.001328, 38.472137, 29.497587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584541, 39.089348, 29.173382>,  <36.866684, 39.113781, 29.252295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584541, 39.089348, 29.173382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479969, 38.704090, 29.198671>,  <37.417225, 38.472935, 29.213846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479969, 38.704090, 29.198671>,  <37.584541, 39.089348, 29.173382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479969, 38.704090, 29.198671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722651, -0.238736, -0.648676,
		0.639866, -0.123896, 0.758434,
		-0.261434, -0.963148, 0.063225,
		37.401539, 38.415146, 29.217638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210239, 38.717304, 29.107512>,  <37.584541, 39.089348, 29.173382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210239, 38.717304, 29.107512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932514, 38.441784, 29.024109>,  <37.765877, 38.276470, 28.974068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932514, 38.441784, 29.024109>,  <38.210239, 38.717304, 29.107512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932514, 38.441784, 29.024109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616009, -0.419017, -0.667052,
		0.372100, -0.591586, 0.715239,
		-0.694316, -0.688804, -0.208506,
		37.724220, 38.235142, 28.961557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481117, 38.061588, 29.161655>,  <38.210239, 38.717304, 29.107512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481117, 38.061588, 29.161655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163696, 37.983852, 28.931000>,  <37.973244, 37.937210, 28.792606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163696, 37.983852, 28.931000>,  <38.481117, 38.061588, 29.161655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163696, 37.983852, 28.931000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607531, -0.306649, -0.732715,
		-0.034431, -0.931772, 0.361408,
		-0.793549, -0.194338, -0.576639,
		37.925632, 37.925552, 28.758007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647484, 37.341381, 28.946024>,  <38.481117, 38.061588, 29.161655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647484, 37.341381, 28.946024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363400, 37.483204, 28.702749>,  <38.192951, 37.568298, 28.556784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363400, 37.483204, 28.702749>,  <38.647484, 37.341381, 28.946024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363400, 37.483204, 28.702749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543519, -0.272912, -0.793792,
		-0.447428, -0.894319, 0.001115,
		-0.710208, 0.354559, -0.608188,
		38.150337, 37.589573, 28.520292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512360, 36.903824, 28.362003>,  <38.647484, 37.341381, 28.946024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512360, 36.903824, 28.362003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360275, 37.232430, 28.192039>,  <38.269024, 37.429592, 28.090061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360275, 37.232430, 28.192039>,  <38.512360, 36.903824, 28.362003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360275, 37.232430, 28.192039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258258, -0.346837, -0.901669,
		-0.888111, -0.452561, -0.080291,
		-0.380213, 0.821518, -0.424908,
		38.246212, 37.478886, 28.064568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061749, 36.726898, 27.761293>,  <38.512360, 36.903824, 28.362003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061749, 36.726898, 27.761293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210632, 37.096294, 27.724144>,  <38.299965, 37.317932, 27.701855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210632, 37.096294, 27.724144>,  <38.061749, 36.726898, 27.761293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210632, 37.096294, 27.724144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411818, -0.253998, -0.875152,
		-0.831783, 0.287496, -0.474851,
		0.372214, 0.923489, -0.092875,
		38.322296, 37.373341, 27.696281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885563, 36.877182, 27.067625>,  <38.061749, 36.726898, 27.761293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885563, 36.877182, 27.067625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193409, 37.105774, 27.181541>,  <38.378117, 37.242928, 27.249891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193409, 37.105774, 27.181541>,  <37.885563, 36.877182, 27.067625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193409, 37.105774, 27.181541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484628, -0.232413, -0.843279,
		-0.415729, 0.787015, -0.455824,
		0.769613, 0.571481, 0.284789,
		38.424294, 37.277218, 27.266977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199959, 37.108166, 26.370560>,  <37.885563, 36.877182, 27.067625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199959, 37.108166, 26.370560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468613, 37.220444, 26.644817>,  <38.629807, 37.287811, 26.809372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468613, 37.220444, 26.644817>,  <38.199959, 37.108166, 26.370560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468613, 37.220444, 26.644817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740124, -0.212437, -0.638033,
		-0.033438, 0.935991, -0.350432,
		0.671638, 0.280698, 0.685646,
		38.670105, 37.304653, 26.850512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664562, 37.605942, 26.094522>,  <38.199959, 37.108166, 26.370560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664562, 37.605942, 26.094522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881104, 37.428913, 26.380480>,  <39.011028, 37.322697, 26.552053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881104, 37.428913, 26.380480>,  <38.664562, 37.605942, 26.094522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881104, 37.428913, 26.380480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761872, -0.101450, -0.639733,
		0.355652, 0.890977, 0.282261,
		0.541352, -0.442570, 0.714892,
		39.043510, 37.296143, 26.594948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412956, 37.910946, 26.025892>,  <38.664562, 37.605942, 26.094522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412956, 37.910946, 26.025892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412365, 37.573616, 26.240856>,  <39.412010, 37.371220, 26.369835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412365, 37.573616, 26.240856>,  <39.412956, 37.910946, 26.025892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412365, 37.573616, 26.240856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681176, -0.394296, -0.616872,
		0.732119, 0.365161, 0.575030,
		-0.001474, -0.843320, 0.537410,
		39.411922, 37.320621, 26.402079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054306, 37.715073, 26.012220>,  <39.412956, 37.910946, 26.025892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054306, 37.715073, 26.012220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871105, 37.370804, 26.101198>,  <39.761185, 37.164242, 26.154585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871105, 37.370804, 26.101198>,  <40.054306, 37.715073, 26.012220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871105, 37.370804, 26.101198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667421, -0.498217, -0.553470,
		0.587181, -0.105027, 0.802613,
		-0.458004, -0.860668, 0.222446,
		39.733704, 37.112602, 26.167933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631676, 37.230282, 26.313345>,  <40.054306, 37.715073, 26.012220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631676, 37.230282, 26.313345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312016, 37.026665, 26.185446>,  <40.120220, 36.904495, 26.108706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312016, 37.026665, 26.185446>,  <40.631676, 37.230282, 26.313345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312016, 37.026665, 26.185446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594097, -0.587630, -0.549308,
		0.091729, -0.628939, 0.772024,
		-0.799146, -0.509045, -0.319748,
		40.072273, 36.873951, 26.089521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757294, 36.532398, 26.460793>,  <40.631676, 37.230282, 26.313345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757294, 36.532398, 26.460793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482857, 36.555862, 26.170732>,  <40.318195, 36.569942, 25.996696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482857, 36.555862, 26.170732>,  <40.757294, 36.532398, 26.460793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482857, 36.555862, 26.170732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611911, -0.492596, -0.618800,
		-0.393503, -0.868279, 0.302071,
		-0.686090, 0.058659, -0.725148,
		40.277031, 36.573460, 25.953188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.429211, 34.962322, 24.239527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.772984, 35.136787, 24.346216>,  <35.979248, 35.241467, 24.410231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.772984, 35.136787, 24.346216>,  <35.429211, 34.962322, 24.239527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772984, 35.136787, 24.346216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276477, -0.042337, 0.960088,
		0.430048, -0.898871, 0.084204,
		0.859429, 0.436164, 0.266724,
		36.030811, 35.267635, 24.426233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635323, 34.517483, 24.687374>,  <35.429211, 34.962322, 24.239527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635323, 34.517483, 24.687374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821560, 34.863663, 24.761366>,  <35.933304, 35.071369, 24.805761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821560, 34.863663, 24.761366>,  <35.635323, 34.517483, 24.687374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821560, 34.863663, 24.761366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298574, -0.043154, 0.953410,
		0.833111, -0.499135, 0.238308,
		0.465597, 0.865449, 0.184981,
		35.961239, 35.123299, 24.816860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069462, 34.458652, 25.189724>,  <35.635323, 34.517483, 24.687374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069462, 34.458652, 25.189724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070244, 34.857803, 25.215792>,  <36.070713, 35.097294, 25.231432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070244, 34.857803, 25.215792>,  <36.069462, 34.458652, 25.189724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070244, 34.857803, 25.215792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100307, -0.064644, 0.992854,
		0.994955, -0.008478, 0.099967,
		0.001955, 0.997872, 0.065168,
		36.070831, 35.157166, 25.235342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635532, 34.625214, 25.688622>,  <36.069462, 34.458652, 25.189724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635532, 34.625214, 25.688622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368961, 34.923000, 25.672388>,  <36.209019, 35.101673, 25.662649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368961, 34.923000, 25.672388>,  <36.635532, 34.625214, 25.688622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368961, 34.923000, 25.672388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145194, -0.076199, 0.986465,
		0.731298, 0.663297, 0.158873,
		-0.666425, 0.744467, -0.040583,
		36.169033, 35.146339, 25.660213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688984, 34.924755, 26.338903>,  <36.635532, 34.625214, 25.688622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688984, 34.924755, 26.338903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345898, 35.071354, 26.194679>,  <36.140045, 35.159313, 26.108145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345898, 35.071354, 26.194679>,  <36.688984, 34.924755, 26.338903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345898, 35.071354, 26.194679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343348, 0.113662, 0.932305,
		0.382666, 0.923452, 0.028345,
		-0.857717, 0.366493, -0.360560,
		36.088581, 35.181301, 26.086512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482132, 35.518116, 26.796965>,  <36.688984, 34.924755, 26.338903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482132, 35.518116, 26.796965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144558, 35.406708, 26.613579>,  <35.942013, 35.339863, 26.503548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144558, 35.406708, 26.613579>,  <36.482132, 35.518116, 26.796965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144558, 35.406708, 26.613579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504108, 0.119549, 0.855327,
		-0.183419, 0.952960, -0.241298,
		-0.843939, -0.278524, -0.458467,
		35.891376, 35.323151, 26.476038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043175, 35.887474, 27.257868>,  <36.482132, 35.518116, 26.796965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043175, 35.887474, 27.257868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820400, 35.628860, 27.049326>,  <35.686737, 35.473690, 26.924200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820400, 35.628860, 27.049326>,  <36.043175, 35.887474, 27.257868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820400, 35.628860, 27.049326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656601, -0.041668, 0.753087,
		-0.508622, 0.761744, -0.401310,
		-0.556938, -0.646536, -0.521355,
		35.653320, 35.434898, 26.892920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297050, 36.136101, 27.339146>,  <36.043175, 35.887474, 27.257868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297050, 36.136101, 27.339146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276085, 35.751072, 27.232788>,  <35.263504, 35.520054, 27.168974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276085, 35.751072, 27.232788>,  <35.297050, 36.136101, 27.339146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276085, 35.751072, 27.232788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803192, -0.117585, 0.584000,
		-0.593410, 0.244176, -0.766970,
		-0.052414, -0.962576, -0.265896,
		35.260361, 35.462299, 27.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603573, 35.969284, 27.120468>,  <35.297050, 36.136101, 27.339146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603573, 35.969284, 27.120468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760406, 35.633934, 27.271935>,  <34.854507, 35.432724, 27.362814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760406, 35.633934, 27.271935>,  <34.603573, 35.969284, 27.120468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760406, 35.633934, 27.271935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851799, -0.175404, 0.493631,
		-0.347431, -0.516093, -0.782905,
		0.392084, -0.838380, 0.378667,
		34.878033, 35.382420, 27.385534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975838, 35.610947, 27.357033>,  <34.603573, 35.969284, 27.120468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975838, 35.610947, 27.357033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287098, 35.413219, 27.512022>,  <34.473854, 35.294582, 27.605017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287098, 35.413219, 27.512022>,  <33.975838, 35.610947, 27.357033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287098, 35.413219, 27.512022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611522, -0.455552, 0.646926,
		-0.143270, -0.740354, -0.656772,
		0.778148, -0.494316, 0.387476,
		34.520542, 35.264923, 27.628265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787632, 35.012703, 27.477669>,  <33.975838, 35.610947, 27.357033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787632, 35.012703, 27.477669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113144, 35.024666, 27.709829>,  <34.308453, 35.031845, 27.849125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113144, 35.024666, 27.709829>,  <33.787632, 35.012703, 27.477669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113144, 35.024666, 27.709829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538606, -0.336339, 0.772515,
		0.218315, -0.941266, -0.257599,
		0.813782, 0.029907, 0.580400,
		34.357277, 35.033638, 27.883949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913883, 34.314011, 27.789442>,  <33.787632, 35.012703, 27.477669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913883, 34.314011, 27.789442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.069195, 34.598782, 28.023499>,  <34.162384, 34.769646, 28.163933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.069195, 34.598782, 28.023499>,  <33.913883, 34.314011, 27.789442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069195, 34.598782, 28.023499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614916, -0.272771, 0.739916,
		0.686378, -0.647109, 0.331865,
		0.388283, 0.711931, 0.585141,
		34.185680, 34.812363, 28.199041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049530, 34.014256, 28.493177>,  <33.913883, 34.314011, 27.789442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049530, 34.014256, 28.493177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.059574, 34.408386, 28.560703>,  <34.065601, 34.644863, 28.601219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.059574, 34.408386, 28.560703>,  <34.049530, 34.014256, 28.493177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059574, 34.408386, 28.560703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571626, -0.124389, 0.811031,
		0.820130, -0.116861, 0.560116,
		0.025106, 0.985328, 0.168816,
		34.067104, 34.703983, 28.611349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395195, 34.134029, 29.159225>,  <34.049530, 34.014256, 28.493177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395195, 34.134029, 29.159225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144531, 34.436817, 29.085138>,  <33.994133, 34.618488, 29.040686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144531, 34.436817, 29.085138>,  <34.395195, 34.134029, 29.159225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144531, 34.436817, 29.085138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398429, -0.106944, 0.910943,
		0.669745, 0.644643, 0.368614,
		-0.626655, 0.756966, -0.185219,
		33.956535, 34.663906, 29.029573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144604, 34.171104, 29.511183>,  <34.395195, 34.134029, 29.159225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144604, 34.171104, 29.511183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228146, 33.855042, 29.741673>,  <35.278271, 33.665405, 29.879967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228146, 33.855042, 29.741673>,  <35.144604, 34.171104, 29.511183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228146, 33.855042, 29.741673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474096, -0.433542, -0.766339,
		0.855343, 0.433242, 0.284060,
		0.208858, -0.790154, 0.576225,
		35.290802, 33.617996, 29.914539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879005, 34.167938, 29.509964>,  <35.144604, 34.171104, 29.511183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879005, 34.167938, 29.509964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763691, 33.803555, 29.627975>,  <35.694504, 33.584923, 29.698782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763691, 33.803555, 29.627975>,  <35.879005, 34.167938, 29.509964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763691, 33.803555, 29.627975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828174, -0.391866, -0.400710,
		0.480643, 0.128817, 0.867403,
		-0.288287, -0.910960, 0.295030,
		35.677204, 33.530266, 29.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428085, 33.785664, 29.709772>,  <35.879005, 34.167938, 29.509964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428085, 33.785664, 29.709772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191608, 33.466644, 29.661758>,  <36.049721, 33.275234, 29.632950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191608, 33.466644, 29.661758>,  <36.428085, 33.785664, 29.709772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191608, 33.466644, 29.661758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712133, -0.446323, -0.541907,
		0.378622, -0.405852, 0.831823,
		-0.591196, -0.797546, -0.120033,
		36.014248, 33.227379, 29.625748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893581, 33.144321, 29.700371>,  <36.428085, 33.785664, 29.709772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893581, 33.144321, 29.700371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.564156, 33.015579, 29.513546>,  <36.366501, 32.938335, 29.401451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.564156, 33.015579, 29.513546>,  <36.893581, 33.144321, 29.700371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564156, 33.015579, 29.513546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566253, -0.418420, -0.710128,
		0.033130, -0.849313, 0.526849,
		-0.823565, -0.321856, -0.467064,
		36.317085, 32.919022, 29.373426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034668, 32.540607, 29.432446>,  <36.893581, 33.144321, 29.700371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034668, 32.540607, 29.432446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706535, 32.627907, 29.221006>,  <36.509655, 32.680286, 29.094143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706535, 32.627907, 29.221006>,  <37.034668, 32.540607, 29.432446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706535, 32.627907, 29.221006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427548, -0.379804, -0.820336,
		-0.379804, -0.898952, 0.218253,
		0.820336, -0.218253, 0.528597,
		36.460434, 32.693382, 29.062428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950176, 31.925571, 29.055088>,  <37.034668, 32.540607, 29.432446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950176, 31.925571, 29.055088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770073, 32.230427, 28.869009>,  <36.662010, 32.413342, 28.757360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770073, 32.230427, 28.869009>,  <36.950176, 31.925571, 29.055088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770073, 32.230427, 28.869009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383623, -0.305344, -0.871550,
		-0.806287, -0.570885, -0.154890,
		-0.450260, 0.762139, -0.465199,
		36.634995, 32.459068, 28.729448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724918, 31.637880, 28.315994>,  <36.950176, 31.925571, 29.055088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724918, 31.637880, 28.315994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.748520, 32.036983, 28.303358>,  <36.762680, 32.276447, 28.295776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.748520, 32.036983, 28.303358>,  <36.724918, 31.637880, 28.315994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748520, 32.036983, 28.303358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227910, -0.044273, -0.972675,
		-0.971893, 0.050189, -0.230011,
		0.059001, 0.997758, -0.031590,
		36.766220, 32.336311, 28.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496372, 31.801142, 27.584293>,  <36.724918, 31.637880, 28.315994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496372, 31.801142, 27.584293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697884, 32.119640, 27.718281>,  <36.818790, 32.310738, 27.798674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697884, 32.119640, 27.718281>,  <36.496372, 31.801142, 27.584293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697884, 32.119640, 27.718281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318348, 0.189348, -0.928871,
		-0.803035, 0.574579, -0.158094,
		0.503775, 0.796245, 0.334969,
		36.849018, 32.358513, 27.818771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356068, 32.287048, 27.039886>,  <36.496372, 31.801142, 27.584293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356068, 32.287048, 27.039886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687725, 32.403427, 27.230831>,  <36.886719, 32.473255, 27.345398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687725, 32.403427, 27.230831>,  <36.356068, 32.287048, 27.039886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687725, 32.403427, 27.230831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348763, 0.398138, -0.848440,
		-0.436905, 0.869963, 0.228642,
		0.829143, 0.290946, 0.477360,
		36.936466, 32.490711, 27.374039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473743, 32.991802, 26.898729>,  <36.356068, 32.287048, 27.039886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473743, 32.991802, 26.898729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.823956, 32.829456, 27.003584>,  <37.034084, 32.732048, 27.066496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.823956, 32.829456, 27.003584>,  <36.473743, 32.991802, 26.898729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823956, 32.829456, 27.003584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444969, 0.465929, -0.764796,
		0.188266, 0.786247, 0.588534,
		0.875533, -0.405864, 0.262137,
		37.086617, 32.707699, 27.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936550, 33.415848, 26.686007>,  <36.473743, 32.991802, 26.898729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936550, 33.415848, 26.686007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198711, 33.116791, 26.728859>,  <37.356007, 32.937355, 26.754570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198711, 33.116791, 26.728859>,  <36.936550, 33.415848, 26.686007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198711, 33.116791, 26.728859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474701, 0.297434, -0.828367,
		0.587462, 0.593766, 0.549846,
		0.655399, -0.747646, 0.107130,
		37.395332, 32.892498, 26.760998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666862, 33.658123, 26.527897>,  <36.936550, 33.415848, 26.686007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666862, 33.658123, 26.527897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647675, 33.259953, 26.494854>,  <37.636162, 33.021049, 26.475027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647675, 33.259953, 26.494854>,  <37.666862, 33.658123, 26.527897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647675, 33.259953, 26.494854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578373, 0.039745, -0.814803,
		0.814360, -0.086867, 0.573822,
		-0.047972, -0.995427, -0.082608,
		37.633282, 32.961323, 26.470072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389641, 33.511147, 26.431877>,  <37.666862, 33.658123, 26.527897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389641, 33.511147, 26.431877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140362, 33.239281, 26.277119>,  <37.990795, 33.076160, 26.184263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140362, 33.239281, 26.277119>,  <38.389641, 33.511147, 26.431877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140362, 33.239281, 26.277119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475829, 0.063093, -0.877272,
		0.620659, -0.730807, 0.284083,
		-0.623193, -0.679662, -0.386898,
		37.953403, 33.035381, 26.161049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871857, 33.193516, 25.983044>,  <38.389641, 33.511147, 26.431877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871857, 33.193516, 25.983044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527794, 33.035553, 25.853933>,  <38.321358, 32.940777, 25.776466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527794, 33.035553, 25.853933>,  <38.871857, 33.193516, 25.983044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527794, 33.035553, 25.853933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381861, -0.079104, -0.920828,
		0.338110, -0.915308, 0.218842,
		-0.860153, -0.394909, -0.322775,
		38.269749, 32.917080, 25.757101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447342, 32.705368, 26.198149>,  <38.871857, 33.193516, 25.983044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447342, 32.705368, 26.198149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.841938, 32.718925, 26.262251>,  <40.078697, 32.727062, 26.300713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.841938, 32.718925, 26.262251>,  <39.447342, 32.705368, 26.198149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841938, 32.718925, 26.262251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163791, 0.215234, 0.962729,
		-0.001860, -0.975974, 0.217879,
		0.986493, 0.033896, 0.160256,
		40.137886, 32.729095, 26.310328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513355, 32.294407, 26.732330>,  <39.447342, 32.705368, 26.198149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513355, 32.294407, 26.732330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838814, 32.526943, 26.730148>,  <40.034088, 32.666466, 26.728840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838814, 32.526943, 26.730148>,  <39.513355, 32.294407, 26.732330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838814, 32.526943, 26.730148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186854, 0.270380, 0.944447,
		0.550519, -0.767424, 0.328618,
		0.813643, 0.581340, -0.005453,
		40.082905, 32.701344, 26.728512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918865, 32.148758, 27.286663>,  <39.513355, 32.294407, 26.732330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918865, 32.148758, 27.286663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063576, 32.512592, 27.204916>,  <40.150402, 32.730892, 27.155869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063576, 32.512592, 27.204916>,  <39.918865, 32.148758, 27.286663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063576, 32.512592, 27.204916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081539, 0.249248, 0.965001,
		0.928691, -0.332454, 0.164340,
		0.361780, 0.909588, -0.204367,
		40.172112, 32.785469, 27.143606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469479, 32.344639, 27.795527>,  <39.918865, 32.148758, 27.286663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469479, 32.344639, 27.795527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.323635, 32.689354, 27.654453>,  <40.236130, 32.896183, 27.569809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.323635, 32.689354, 27.654453>,  <40.469479, 32.344639, 27.795527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323635, 32.689354, 27.654453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068042, 0.353087, 0.933113,
		0.928671, 0.364220, -0.070102,
		-0.364610, 0.861785, -0.352683,
		40.214252, 32.947891, 27.548649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865257, 32.833332, 28.135607>,  <40.469479, 32.344639, 27.795527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865257, 32.833332, 28.135607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541538, 33.026585, 28.001965>,  <40.347309, 33.142536, 27.921780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541538, 33.026585, 28.001965>,  <40.865257, 32.833332, 28.135607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541538, 33.026585, 28.001965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042626, 0.518985, 0.853720,
		0.585855, 0.705152, -0.399417,
		-0.809294, 0.483131, -0.334108,
		40.298752, 33.171524, 27.901731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076168, 33.522980, 28.266394>,  <40.865257, 32.833332, 28.135607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076168, 33.522980, 28.266394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.679844, 33.474594, 28.242208>,  <40.442047, 33.445564, 28.227697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.679844, 33.474594, 28.242208>,  <41.076168, 33.522980, 28.266394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679844, 33.474594, 28.242208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104781, 0.404070, 0.908707,
		-0.085489, 0.906695, -0.413033,
		-0.990814, -0.120962, -0.060461,
		40.382599, 33.438305, 28.224070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840485, 34.169479, 28.514767>,  <41.076168, 33.522980, 28.266394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840485, 34.169479, 28.514767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554806, 33.889996, 28.531424>,  <40.383400, 33.722305, 28.541418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554806, 33.889996, 28.531424>,  <40.840485, 34.169479, 28.514767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554806, 33.889996, 28.531424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280369, 0.340082, 0.897629,
		-0.641339, 0.629408, -0.438781,
		-0.714197, -0.698705, 0.041641,
		40.340546, 33.680386, 28.543917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123920, 34.371628, 28.560389>,  <40.840485, 34.169479, 28.514767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123920, 34.371628, 28.560389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072891, 34.004848, 28.711613>,  <40.042274, 33.784782, 28.802347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072891, 34.004848, 28.711613>,  <40.123920, 34.371628, 28.560389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072891, 34.004848, 28.711613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456161, 0.392712, 0.798558,
		-0.880706, -0.070584, -0.468374,
		-0.127570, -0.916949, 0.378061,
		40.034618, 33.729763, 28.825031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565418, 34.500359, 28.941990>,  <40.123920, 34.371628, 28.560389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565418, 34.500359, 28.941990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.690685, 34.134762, 29.045176>,  <39.765846, 33.915405, 29.107088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.690685, 34.134762, 29.045176>,  <39.565418, 34.500359, 28.941990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690685, 34.134762, 29.045176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331291, 0.149429, 0.931621,
		-0.890042, -0.377212, -0.256002,
		0.313164, -0.913992, 0.257965,
		39.784634, 33.860565, 29.122564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965199, 34.098881, 29.211615>,  <39.565418, 34.500359, 28.941990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965199, 34.098881, 29.211615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.290333, 33.939011, 29.381113>,  <39.485413, 33.843086, 29.482813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.290333, 33.939011, 29.381113>,  <38.965199, 34.098881, 29.211615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290333, 33.939011, 29.381113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418338, 0.105672, 0.902123,
		-0.405337, -0.910544, -0.081307,
		0.812831, -0.399678, 0.423748,
		39.534184, 33.819107, 29.508238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720531, 33.512070, 29.636206>,  <38.965199, 34.098881, 29.211615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720531, 33.512070, 29.636206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073250, 33.664021, 29.748005>,  <39.284882, 33.755192, 29.815084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073250, 33.664021, 29.748005>,  <38.720531, 33.512070, 29.636206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073250, 33.664021, 29.748005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330671, 0.075423, 0.940728,
		0.336284, -0.921955, 0.192123,
		0.881799, 0.379881, 0.279500,
		39.337791, 33.777985, 29.831856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858295, 33.195614, 30.299114>,  <38.720531, 33.512070, 29.636206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858295, 33.195614, 30.299114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074772, 33.531231, 30.276814>,  <39.204659, 33.732601, 30.263433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074772, 33.531231, 30.276814>,  <38.858295, 33.195614, 30.299114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074772, 33.531231, 30.276814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205106, 0.196014, 0.958911,
		0.815500, -0.507522, 0.278175,
		0.541194, 0.839047, -0.055754,
		39.237129, 33.782944, 30.260088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251076, 33.184185, 30.827719>,  <38.858295, 33.195614, 30.299114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251076, 33.184185, 30.827719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207745, 33.572102, 30.740299>,  <39.181747, 33.804852, 30.687847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207745, 33.572102, 30.740299>,  <39.251076, 33.184185, 30.827719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207745, 33.572102, 30.740299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152702, 0.200999, 0.967616,
		0.982317, 0.138193, 0.126316,
		-0.108329, 0.969795, -0.218547,
		39.175247, 33.863041, 30.674736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740845, 33.539875, 31.286385>,  <39.251076, 33.184185, 30.827719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740845, 33.539875, 31.286385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451584, 33.782860, 31.154911>,  <39.278027, 33.928650, 31.076027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451584, 33.782860, 31.154911>,  <39.740845, 33.539875, 31.286385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451584, 33.782860, 31.154911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113978, 0.364402, 0.924240,
		0.681217, 0.705832, -0.194282,
		-0.723155, 0.607464, -0.328686,
		39.234638, 33.965099, 31.056305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.314857, 35.416344, 25.996397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280426, 35.743176, 25.768370>,  <40.259769, 35.939274, 25.631554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280426, 35.743176, 25.768370>,  <40.314857, 35.416344, 25.996397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280426, 35.743176, 25.768370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380003, -0.502010, -0.776906,
		-0.920972, -0.283498, -0.267282,
		-0.086074, 0.817077, -0.570067,
		40.254604, 35.988300, 25.597349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099682, 35.188816, 25.341881>,  <40.314857, 35.416344, 25.996397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099682, 35.188816, 25.341881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253597, 35.544418, 25.242596>,  <40.345947, 35.757778, 25.183023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253597, 35.544418, 25.242596>,  <40.099682, 35.188816, 25.341881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253597, 35.544418, 25.242596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241056, -0.356378, -0.902710,
		-0.890971, 0.287519, -0.351430,
		0.384789, 0.889004, -0.248214,
		40.369034, 35.811119, 25.168131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132248, 35.090889, 24.770267>,  <40.099682, 35.188816, 25.341881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132248, 35.090889, 24.770267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.328690, 35.439083, 24.783375>,  <40.446552, 35.647999, 24.791239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.328690, 35.439083, 24.783375>,  <40.132248, 35.090889, 24.770267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328690, 35.439083, 24.783375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386446, -0.184000, -0.903772,
		-0.780691, 0.456508, -0.426759,
		0.491102, 0.870485, 0.032769,
		40.476021, 35.700230, 24.793205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010475, 35.418636, 24.163399>,  <40.132248, 35.090889, 24.770267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010475, 35.418636, 24.163399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353691, 35.593765, 24.270782>,  <40.559620, 35.698845, 24.335213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353691, 35.593765, 24.270782>,  <40.010475, 35.418636, 24.163399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353691, 35.593765, 24.270782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328660, -0.066438, -0.942109,
		-0.394643, 0.896602, -0.200902,
		0.858044, 0.437825, 0.268458,
		40.611103, 35.725113, 24.351320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159000, 35.897541, 23.671268>,  <40.010475, 35.418636, 24.163399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159000, 35.897541, 23.671268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514553, 35.846191, 23.847179>,  <40.727886, 35.815384, 23.952726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514553, 35.846191, 23.847179>,  <40.159000, 35.897541, 23.671268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514553, 35.846191, 23.847179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411734, -0.197093, -0.889735,
		0.200893, 0.971944, -0.122338,
		0.888885, -0.128370, 0.439777,
		40.781219, 35.807682, 23.979113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684559, 36.222450, 23.267134>,  <40.159000, 35.897541, 23.671268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684559, 36.222450, 23.267134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908661, 35.950031, 23.455725>,  <41.043121, 35.786579, 23.568878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908661, 35.950031, 23.455725>,  <40.684559, 36.222450, 23.267134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908661, 35.950031, 23.455725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398114, -0.277744, -0.874279,
		0.726375, 0.677519, 0.115528,
		0.560254, -0.681048, 0.471476,
		41.076736, 35.745716, 23.597168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449741, 36.331619, 23.097288>,  <40.684559, 36.222450, 23.267134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449741, 36.331619, 23.097288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.426731, 35.954418, 23.228394>,  <41.412926, 35.728096, 23.307056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.426731, 35.954418, 23.228394>,  <41.449741, 36.331619, 23.097288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426731, 35.954418, 23.228394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531572, -0.306832, -0.789484,
		0.845057, 0.128811, 0.518928,
		-0.057530, -0.943007, 0.327763,
		41.409473, 35.671516, 23.326723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022392, 36.113010, 22.845652>,  <41.449741, 36.331619, 23.097288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022392, 36.113010, 22.845652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.834469, 35.770180, 22.930229>,  <41.721714, 35.564484, 22.980976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.834469, 35.770180, 22.930229>,  <42.022392, 36.113010, 22.845652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834469, 35.770180, 22.930229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512541, -0.459848, -0.725149,
		0.718739, -0.232304, 0.655324,
		-0.469804, -0.857073, 0.211445,
		41.693527, 35.513058, 22.993662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533443, 35.654301, 22.877579>,  <42.022392, 36.113010, 22.845652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533443, 35.654301, 22.877579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208431, 35.428299, 22.820225>,  <42.013424, 35.292698, 22.785812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208431, 35.428299, 22.820225>,  <42.533443, 35.654301, 22.877579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208431, 35.428299, 22.820225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494283, -0.537423, -0.683272,
		0.308996, -0.626052, 0.715947,
		-0.812531, -0.565009, -0.143385,
		41.964672, 35.258797, 22.777208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851135, 35.038166, 22.768085>,  <42.533443, 35.654301, 22.877579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851135, 35.038166, 22.768085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480896, 34.998016, 22.622101>,  <42.258755, 34.973927, 22.534510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480896, 34.998016, 22.622101>,  <42.851135, 35.038166, 22.768085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480896, 34.998016, 22.622101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372825, -0.408319, -0.833233,
		-0.065384, -0.907304, 0.415361,
		-0.925595, -0.100377, -0.364963,
		42.203217, 34.967903, 22.512611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778801, 34.287834, 22.491447>,  <42.851135, 35.038166, 22.768085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778801, 34.287834, 22.491447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.486244, 34.487881, 22.305998>,  <42.310711, 34.607906, 22.194729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.486244, 34.487881, 22.305998>,  <42.778801, 34.287834, 22.491447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486244, 34.487881, 22.305998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288432, -0.389185, -0.874838,
		-0.617955, -0.773576, 0.140399,
		-0.731395, 0.500115, -0.463623,
		42.266827, 34.637917, 22.166910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356110, 33.796570, 22.084692>,  <42.778801, 34.287834, 22.491447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356110, 33.796570, 22.084692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292637, 34.153522, 21.915709>,  <42.254551, 34.367695, 21.814318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292637, 34.153522, 21.915709>,  <42.356110, 33.796570, 22.084692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292637, 34.153522, 21.915709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283782, -0.368602, -0.885212,
		-0.945668, -0.260355, -0.194751,
		-0.158684, 0.892383, -0.422459,
		42.245033, 34.421238, 21.788971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932045, 33.756664, 21.579575>,  <42.356110, 33.796570, 22.084692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932045, 33.756664, 21.579575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132820, 34.089977, 21.486883>,  <42.253284, 34.289967, 21.431269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132820, 34.089977, 21.486883>,  <41.932045, 33.756664, 21.579575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132820, 34.089977, 21.486883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154800, -0.350152, -0.923813,
		-0.850936, 0.427827, -0.304747,
		0.501940, 0.833281, -0.231730,
		42.283401, 34.339962, 21.417364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042976, 33.529148, 20.826893>,  <41.932045, 33.756664, 21.579575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042976, 33.529148, 20.826893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.222214, 33.885746, 20.853556>,  <42.329758, 34.099705, 20.869553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.222214, 33.885746, 20.853556>,  <42.042976, 33.529148, 20.826893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222214, 33.885746, 20.853556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454295, -0.162855, -0.875839,
		-0.769953, 0.422740, -0.477977,
		0.448094, 0.891498, 0.066658,
		42.356644, 34.153194, 20.873552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784866, 32.811039, 20.878946>,  <42.042976, 33.529148, 20.826893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784866, 32.811039, 20.878946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725231, 32.422207, 20.951420>,  <41.689449, 32.188908, 20.994904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725231, 32.422207, 20.951420>,  <41.784866, 32.811039, 20.878946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725231, 32.422207, 20.951420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167009, 0.205352, 0.964333,
		-0.974618, 0.113512, -0.192962,
		-0.149088, -0.972083, 0.181182,
		41.680504, 32.130581, 21.005775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164513, 32.796486, 21.255161>,  <41.784866, 32.811039, 20.878946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164513, 32.796486, 21.255161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.374397, 32.469891, 21.351521>,  <41.500328, 32.273933, 21.409336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.374397, 32.469891, 21.351521>,  <41.164513, 32.796486, 21.255161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374397, 32.469891, 21.351521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131658, 0.201745, 0.970549,
		-0.841038, -0.540973, -0.001639,
		0.524710, -0.816485, 0.240898,
		41.531811, 32.224945, 21.423790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752838, 32.412220, 21.661310>,  <41.164513, 32.796486, 21.255161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752838, 32.412220, 21.661310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.119045, 32.268291, 21.733252>,  <41.338772, 32.181934, 21.776417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.119045, 32.268291, 21.733252>,  <40.752838, 32.412220, 21.661310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119045, 32.268291, 21.733252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161021, 0.081920, 0.983545,
		-0.368635, -0.929418, 0.017061,
		0.915522, -0.359822, 0.179855,
		41.393703, 32.160347, 21.787209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679859, 31.964535, 22.173447>,  <40.752838, 32.412220, 21.661310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679859, 31.964535, 22.173447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.068264, 32.058445, 22.191425>,  <41.301308, 32.114792, 22.202213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.068264, 32.058445, 22.191425>,  <40.679859, 31.964535, 22.173447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068264, 32.058445, 22.191425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051647, 0.022468, 0.998413,
		0.233394, -0.971790, 0.033942,
		0.971009, 0.234777, 0.044946,
		41.359566, 32.128880, 22.204908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893425, 31.567135, 22.619492>,  <40.679859, 31.964535, 22.173447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893425, 31.567135, 22.619492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156631, 31.867790, 22.601360>,  <41.314556, 32.048183, 22.590481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156631, 31.867790, 22.601360>,  <40.893425, 31.567135, 22.619492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156631, 31.867790, 22.601360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069544, 0.120603, 0.990262,
		0.749787, -0.648454, 0.131631,
		0.658014, 0.751640, -0.045331,
		41.354034, 32.093281, 22.587761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266464, 31.316154, 23.135218>,  <40.893425, 31.567135, 22.619492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266464, 31.316154, 23.135218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.367847, 31.697138, 23.067587>,  <41.428677, 31.925728, 23.027008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.367847, 31.697138, 23.067587>,  <41.266464, 31.316154, 23.135218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367847, 31.697138, 23.067587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026016, 0.181431, 0.983060,
		0.966997, -0.244764, 0.070764,
		0.253456, 0.952457, -0.169076,
		41.443886, 31.982874, 23.016865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873245, 31.413374, 23.497305>,  <41.266464, 31.316154, 23.135218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873245, 31.413374, 23.497305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.689533, 31.767147, 23.464218>,  <41.579308, 31.979410, 23.444366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.689533, 31.767147, 23.464218>,  <41.873245, 31.413374, 23.497305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689533, 31.767147, 23.464218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077877, 0.132852, 0.988072,
		0.884872, 0.447358, -0.129892,
		-0.459278, 0.884433, -0.082718,
		41.551750, 32.032478, 23.439404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329075, 31.824610, 23.837080>,  <41.873245, 31.413374, 23.497305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329075, 31.824610, 23.837080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973053, 32.006939, 23.835171>,  <41.759438, 32.116337, 23.834026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973053, 32.006939, 23.835171>,  <42.329075, 31.824610, 23.837080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973053, 32.006939, 23.835171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047312, 0.102785, 0.993578,
		0.453386, 0.884116, -0.113051,
		-0.890058, 0.455823, -0.004772,
		41.706036, 32.143684, 23.833738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374146, 32.319584, 24.390644>,  <42.329075, 31.824610, 23.837080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374146, 32.319584, 24.390644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981724, 32.330917, 24.313976>,  <41.746273, 32.337719, 24.267975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981724, 32.330917, 24.313976>,  <42.374146, 32.319584, 24.390644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981724, 32.330917, 24.313976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188822, 0.081953, 0.978586,
		0.043437, 0.996233, -0.075050,
		-0.981050, 0.028335, -0.191671,
		41.687408, 32.339417, 24.256475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079063, 32.882133, 24.850527>,  <42.374146, 32.319584, 24.390644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079063, 32.882133, 24.850527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.762257, 32.660267, 24.748499>,  <41.572174, 32.527145, 24.687283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.762257, 32.660267, 24.748499>,  <42.079063, 32.882133, 24.850527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762257, 32.660267, 24.748499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369362, 0.102687, 0.923595,
		-0.486094, 0.825713, -0.286202,
		-0.792013, -0.554666, -0.255072,
		41.524654, 32.493866, 24.671978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587181, 33.286537, 25.119507>,  <42.079063, 32.882133, 24.850527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587181, 33.286537, 25.119507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409428, 32.933727, 25.056820>,  <41.302776, 32.722042, 25.019207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409428, 32.933727, 25.056820>,  <41.587181, 33.286537, 25.119507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409428, 32.933727, 25.056820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558169, 0.135778, 0.818542,
		-0.700693, 0.451222, -0.552654,
		-0.444383, -0.882022, -0.156719,
		41.276112, 32.669121, 25.009804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837425, 33.467247, 25.139338>,  <41.587181, 33.286537, 25.119507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837425, 33.467247, 25.139338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856178, 33.070316, 25.185104>,  <40.867428, 32.832157, 25.212564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856178, 33.070316, 25.185104>,  <40.837425, 33.467247, 25.139338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856178, 33.070316, 25.185104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612400, 0.061938, 0.788118,
		-0.789157, -0.107015, -0.604796,
		0.046881, -0.992326, 0.114415,
		40.870243, 32.772617, 25.219429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177620, 33.302200, 25.303576>,  <40.837425, 33.467247, 25.139338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177620, 33.302200, 25.303576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381794, 32.975586, 25.411444>,  <40.504299, 32.779617, 25.476164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381794, 32.975586, 25.411444>,  <40.177620, 33.302200, 25.303576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381794, 32.975586, 25.411444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532575, -0.053966, 0.844661,
		-0.675145, -0.574764, -0.462414,
		0.510435, -0.816538, 0.269669,
		40.534924, 32.730625, 25.492344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679996, 32.705864, 25.460114>,  <40.177620, 33.302200, 25.303576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679996, 32.705864, 25.460114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.030823, 32.668064, 25.648506>,  <40.241318, 32.645386, 25.761541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.030823, 32.668064, 25.648506>,  <39.679996, 32.705864, 25.460114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030823, 32.668064, 25.648506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467363, 0.058731, 0.882113,
		-0.111023, -0.993791, 0.007343,
		0.877066, -0.094503, 0.470981,
		40.293941, 32.639713, 25.789801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976589, 32.608551, 25.515491>,  <39.679996, 32.705864, 25.460114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976589, 32.608551, 25.515491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610588, 32.730568, 25.409870>,  <38.390987, 32.803780, 25.346497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610588, 32.730568, 25.409870>,  <38.976589, 32.608551, 25.515491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610588, 32.730568, 25.409870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343482, 0.245628, -0.906470,
		-0.211657, -0.920116, -0.329527,
		-0.914998, 0.305047, -0.264055,
		38.336090, 32.822083, 25.330654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729675, 32.175034, 24.918493>,  <38.976589, 32.608551, 25.515491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729675, 32.175034, 24.918493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521759, 32.516472, 24.904694>,  <38.397011, 32.721336, 24.896414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521759, 32.516472, 24.904694>,  <38.729675, 32.175034, 24.918493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521759, 32.516472, 24.904694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053494, -0.007782, -0.998538,
		-0.852617, -0.520877, -0.041617,
		-0.519792, 0.853596, -0.034499,
		38.365822, 32.772552, 24.894344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160919, 32.017750, 24.441244>,  <38.729675, 32.175034, 24.918493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160919, 32.017750, 24.441244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186852, 32.416904, 24.439238>,  <38.202412, 32.656395, 24.438034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186852, 32.416904, 24.439238>,  <38.160919, 32.017750, 24.441244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186852, 32.416904, 24.439238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030494, -0.007006, -0.999511,
		-0.997431, 0.064644, -0.030884,
		0.064828, 0.997884, -0.005017,
		38.206299, 32.716270, 24.437733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857738, 32.169193, 23.886358>,  <38.160919, 32.017750, 24.441244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857738, 32.169193, 23.886358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045357, 32.515415, 23.956568>,  <38.157928, 32.723148, 23.998693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045357, 32.515415, 23.956568>,  <37.857738, 32.169193, 23.886358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045357, 32.515415, 23.956568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071752, 0.160738, -0.984385,
		-0.880253, 0.474318, 0.013288,
		0.469048, 0.865555, 0.175524,
		38.186069, 32.775082, 24.009226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491730, 32.752060, 23.513884>,  <37.857738, 32.169193, 23.886358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491730, 32.752060, 23.513884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874878, 32.859421, 23.554771>,  <38.104767, 32.923840, 23.579304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874878, 32.859421, 23.554771>,  <37.491730, 32.752060, 23.513884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874878, 32.859421, 23.554771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053737, 0.182141, -0.981803,
		-0.282138, 0.945930, 0.160044,
		0.957868, 0.268404, 0.102220,
		38.162239, 32.939941, 23.585438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590687, 33.434296, 23.193668>,  <37.491730, 32.752060, 23.513884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590687, 33.434296, 23.193668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.957615, 33.276894, 23.217928>,  <38.177773, 33.182453, 23.232485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.957615, 33.276894, 23.217928>,  <37.590687, 33.434296, 23.193668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957615, 33.276894, 23.217928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135987, 0.166481, -0.976622,
		0.374209, 0.904123, 0.206228,
		0.917320, -0.393505, 0.060650,
		38.232811, 33.158840, 23.236122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974136, 33.739555, 22.703209>,  <37.590687, 33.434296, 23.193668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974136, 33.739555, 22.703209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217857, 33.440498, 22.808868>,  <38.364090, 33.261063, 22.872263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217857, 33.440498, 22.808868>,  <37.974136, 33.739555, 22.703209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217857, 33.440498, 22.808868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359711, -0.036254, -0.932359,
		0.706650, 0.663107, 0.246847,
		0.609305, -0.747646, 0.264146,
		38.400650, 33.216206, 22.888113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299889, 34.428482, 22.506012>,  <37.974136, 33.739555, 22.703209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299889, 34.428482, 22.506012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.030243, 34.669518, 22.335152>,  <37.868454, 34.814140, 22.232635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.030243, 34.669518, 22.335152>,  <38.299889, 34.428482, 22.506012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030243, 34.669518, 22.335152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438396, 0.139010, 0.887967,
		0.594456, 0.785853, 0.170463,
		-0.674115, 0.602588, -0.427150,
		37.828007, 34.850292, 22.207006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171722, 34.829063, 23.016233>,  <38.299889, 34.428482, 22.506012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171722, 34.829063, 23.016233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876076, 34.942341, 22.771774>,  <37.698689, 35.010307, 22.625099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876076, 34.942341, 22.771774>,  <38.171722, 34.829063, 23.016233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876076, 34.942341, 22.771774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533568, 0.307609, 0.787834,
		0.411105, 0.908393, -0.076256,
		-0.739119, 0.283195, -0.611149,
		37.654339, 35.027298, 22.588430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021687, 35.527718, 23.172258>,  <38.171722, 34.829063, 23.016233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021687, 35.527718, 23.172258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691177, 35.363106, 23.018421>,  <37.492870, 35.264339, 22.926119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691177, 35.363106, 23.018421>,  <38.021687, 35.527718, 23.172258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691177, 35.363106, 23.018421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520547, 0.297072, 0.800487,
		-0.215172, 0.861622, -0.459684,
		-0.826276, -0.411529, -0.384593,
		37.443295, 35.239647, 22.903044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462555, 36.057110, 23.052326>,  <38.021687, 35.527718, 23.172258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462555, 36.057110, 23.052326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276829, 35.706741, 23.104729>,  <37.165394, 35.496521, 23.136169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276829, 35.706741, 23.104729>,  <37.462555, 36.057110, 23.052326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276829, 35.706741, 23.104729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517356, 0.388302, 0.762604,
		-0.718854, 0.286315, -0.633461,
		-0.464319, -0.875925, 0.131005,
		37.137531, 35.443962, 23.144030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890995, 36.270828, 23.332962>,  <37.462555, 36.057110, 23.052326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890995, 36.270828, 23.332962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869431, 35.882298, 23.425581>,  <36.856491, 35.649178, 23.481153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869431, 35.882298, 23.425581>,  <36.890995, 36.270828, 23.332962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869431, 35.882298, 23.425581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637364, 0.211981, 0.740831,
		-0.768674, -0.107639, -0.630519,
		-0.053916, -0.971328, 0.231550,
		36.853256, 35.590900, 23.495047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154892, 36.135197, 23.475868>,  <36.890995, 36.270828, 23.332962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154892, 36.135197, 23.475868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350586, 35.835331, 23.654152>,  <36.468002, 35.655411, 23.761122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350586, 35.835331, 23.654152>,  <36.154892, 36.135197, 23.475868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350586, 35.835331, 23.654152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610386, 0.070725, 0.788940,
		-0.622962, -0.658030, -0.422983,
		0.489231, -0.749663, 0.445711,
		36.497356, 35.610432, 23.787865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695705, 35.711235, 23.674992>,  <36.154892, 36.135197, 23.475868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695705, 35.711235, 23.674992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.009266, 35.580128, 23.885921>,  <36.197403, 35.501461, 24.012480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.009266, 35.580128, 23.885921>,  <35.695705, 35.711235, 23.674992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009266, 35.580128, 23.885921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555081, 0.010572, 0.831729,
		-0.278193, -0.944698, -0.173653,
		0.783897, -0.327772, 0.527325,
		36.244434, 35.481796, 24.044119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.332352, 37.025253, 20.160536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.608097, 36.874226, 20.407833>,  <40.773544, 36.783607, 20.556211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.608097, 36.874226, 20.407833>,  <40.332352, 37.025253, 20.160536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608097, 36.874226, 20.407833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605026, 0.169277, 0.778003,
		-0.398403, -0.910378, -0.111746,
		0.689361, -0.377568, 0.618242,
		40.814907, 36.760956, 20.593306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993282, 36.533569, 20.504976>,  <40.332352, 37.025253, 20.160536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993282, 36.533569, 20.504976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310017, 36.594040, 20.741669>,  <40.500057, 36.630322, 20.883684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310017, 36.594040, 20.741669>,  <39.993282, 36.533569, 20.504976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310017, 36.594040, 20.741669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591808, 0.429273, 0.682267,
		-0.150874, -0.890434, 0.429377,
		0.791833, 0.151172, 0.591732,
		40.547565, 36.639393, 20.919188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835716, 36.464081, 21.167110>,  <39.993282, 36.533569, 20.504976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835716, 36.464081, 21.167110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149857, 36.699844, 21.242821>,  <40.338341, 36.841305, 21.288246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149857, 36.699844, 21.242821>,  <39.835716, 36.464081, 21.167110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149857, 36.699844, 21.242821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505569, 0.434218, 0.745556,
		0.357254, -0.681211, 0.639001,
		0.785346, 0.589412, 0.189273,
		40.385460, 36.876667, 21.299603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948631, 36.470215, 21.901834>,  <39.835716, 36.464081, 21.167110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948631, 36.470215, 21.901834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122402, 36.806831, 21.773415>,  <40.226665, 37.008801, 21.696363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122402, 36.806831, 21.773415>,  <39.948631, 36.470215, 21.901834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122402, 36.806831, 21.773415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495036, 0.520863, 0.695443,
		0.752470, -0.143189, 0.642873,
		0.434428, 0.841546, -0.321051,
		40.252731, 37.059296, 21.677099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051445, 36.897926, 22.542887>,  <39.948631, 36.470215, 21.901834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051445, 36.897926, 22.542887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085880, 37.169865, 22.251572>,  <40.106541, 37.333027, 22.076782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085880, 37.169865, 22.251572>,  <40.051445, 36.897926, 22.542887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085880, 37.169865, 22.251572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352325, 0.704539, 0.616030,
		0.931910, 0.203559, 0.300179,
		0.086089, 0.679845, -0.728285,
		40.111706, 37.373817, 22.033087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365620, 37.414913, 22.855558>,  <40.051445, 36.897926, 22.542887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365620, 37.414913, 22.855558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173031, 37.568451, 22.540382>,  <40.057476, 37.660572, 22.351276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173031, 37.568451, 22.540382>,  <40.365620, 37.414913, 22.855558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173031, 37.568451, 22.540382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457850, 0.656438, 0.599552,
		0.747367, 0.649426, -0.140314,
		-0.481472, 0.383843, -0.787940,
		40.028587, 37.683605, 22.304001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224503, 38.161526, 23.048372>,  <40.365620, 37.414913, 22.855558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224503, 38.161526, 23.048372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982807, 38.091019, 22.737547>,  <39.837791, 38.048714, 22.551052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982807, 38.091019, 22.737547>,  <40.224503, 38.161526, 23.048372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982807, 38.091019, 22.737547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662101, 0.653639, 0.366576,
		0.443303, 0.735993, -0.511660,
		-0.604239, -0.176266, -0.777062,
		39.801537, 38.038139, 22.504429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066345, 38.899975, 22.774651>,  <40.224503, 38.161526, 23.048372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066345, 38.899975, 22.774651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.796371, 38.634319, 22.646036>,  <39.634388, 38.474926, 22.568869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.796371, 38.634319, 22.646036>,  <40.066345, 38.899975, 22.774651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796371, 38.634319, 22.646036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737508, 0.620968, 0.265482,
		0.023347, 0.416317, -0.908920,
		-0.674935, -0.664138, -0.321535,
		39.593891, 38.435078, 22.549576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562565, 39.321381, 22.400148>,  <40.066345, 38.899975, 22.774651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562565, 39.321381, 22.400148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355953, 38.985661, 22.467995>,  <39.231987, 38.784229, 22.508703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355953, 38.985661, 22.467995>,  <39.562565, 39.321381, 22.400148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355953, 38.985661, 22.467995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738643, 0.536940, 0.407556,
		-0.433137, 0.085228, -0.897289,
		-0.516526, -0.839304, 0.169615,
		39.200996, 38.733868, 22.518879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962574, 39.445282, 22.089840>,  <39.562565, 39.321381, 22.400148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962574, 39.445282, 22.089840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.912090, 39.140602, 22.344046>,  <38.881802, 38.957794, 22.496569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.912090, 39.140602, 22.344046>,  <38.962574, 39.445282, 22.089840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912090, 39.140602, 22.344046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831168, 0.430904, 0.351400,
		-0.541508, -0.483868, -0.687488,
		-0.126211, -0.761704, 0.635514,
		38.874226, 38.912090, 22.534700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261154, 39.489388, 22.083260>,  <38.962574, 39.445282, 22.089840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261154, 39.489388, 22.083260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338287, 39.248650, 22.393251>,  <38.384567, 39.104206, 22.579247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338287, 39.248650, 22.393251>,  <38.261154, 39.489388, 22.083260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338287, 39.248650, 22.393251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851016, 0.290579, 0.437419,
		-0.488453, -0.743870, -0.456148,
		0.192836, -0.601848, 0.774979,
		38.396137, 39.068096, 22.625746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707119, 38.903133, 22.288507>,  <38.261154, 39.489388, 22.083260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707119, 38.903133, 22.288507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912212, 39.045719, 22.600927>,  <38.035267, 39.131271, 22.788380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912212, 39.045719, 22.600927>,  <37.707119, 38.903133, 22.288507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912212, 39.045719, 22.600927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829332, 0.440945, 0.343185,
		-0.222067, -0.823712, 0.521713,
		0.512732, 0.356464, 0.781051,
		38.066032, 39.152657, 22.835243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054165, 38.544640, 22.491108>,  <37.707119, 38.903133, 22.288507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054165, 38.544640, 22.491108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735870, 38.433109, 22.276049>,  <36.544895, 38.366192, 22.147013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735870, 38.433109, 22.276049>,  <37.054165, 38.544640, 22.491108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735870, 38.433109, 22.276049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605591, -0.378229, -0.700145,
		-0.008137, -0.882724, 0.469822,
		-0.795735, -0.278823, -0.537647,
		36.497150, 38.349461, 22.114754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275703, 37.953083, 22.085129>,  <37.054165, 38.544640, 22.491108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275703, 37.953083, 22.085129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.927261, 38.065514, 21.924044>,  <36.718197, 38.132973, 21.827393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.927261, 38.065514, 21.924044>,  <37.275703, 37.953083, 22.085129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927261, 38.065514, 21.924044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283794, -0.381127, -0.879888,
		-0.400809, -0.880757, 0.252228,
		-0.871099, 0.281086, -0.402713,
		36.665932, 38.149837, 21.803230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900852, 37.396641, 21.700638>,  <37.275703, 37.953083, 22.085129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900852, 37.396641, 21.700638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756187, 37.732845, 21.539270>,  <36.669388, 37.934566, 21.442450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756187, 37.732845, 21.539270>,  <36.900852, 37.396641, 21.700638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756187, 37.732845, 21.539270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296256, -0.306671, -0.904536,
		-0.883987, -0.446650, -0.138095,
		-0.361661, 0.840509, -0.403416,
		36.647690, 37.984997, 21.418245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522217, 37.249691, 21.079470>,  <36.900852, 37.396641, 21.700638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522217, 37.249691, 21.079470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592396, 37.639935, 21.026709>,  <36.634502, 37.874081, 20.995052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592396, 37.639935, 21.026709>,  <36.522217, 37.249691, 21.079470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592396, 37.639935, 21.026709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437720, -0.197314, -0.877193,
		-0.881827, 0.096164, -0.461664,
		0.175447, 0.975612, -0.131904,
		36.645031, 37.932617, 20.987137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350319, 37.427704, 20.463564>,  <36.522217, 37.249691, 21.079470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350319, 37.427704, 20.463564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.605301, 37.719986, 20.561319>,  <36.758289, 37.895355, 20.619972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.605301, 37.719986, 20.561319>,  <36.350319, 37.427704, 20.463564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605301, 37.719986, 20.561319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420016, -0.063639, -0.905282,
		-0.645940, 0.679723, -0.347474,
		0.637454, 0.730703, 0.244388,
		36.796535, 37.939198, 20.634636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634750, 37.481899, 19.796938>,  <36.350319, 37.427704, 20.463564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634750, 37.481899, 19.796938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849430, 37.734947, 20.020275>,  <36.978237, 37.886776, 20.154278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849430, 37.734947, 20.020275>,  <36.634750, 37.481899, 19.796938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849430, 37.734947, 20.020275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674899, 0.075302, -0.734058,
		-0.506425, 0.770792, -0.386541,
		0.536698, 0.632622, 0.558342,
		37.010441, 37.924732, 20.187778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024235, 37.986923, 19.310095>,  <36.634750, 37.481899, 19.796938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024235, 37.986923, 19.310095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.245682, 38.007191, 19.642586>,  <37.378551, 38.019352, 19.842081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.245682, 38.007191, 19.642586>,  <37.024235, 37.986923, 19.310095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245682, 38.007191, 19.642586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830703, 0.036690, -0.555506,
		-0.058647, 0.998041, -0.021782,
		0.553618, 0.050673, 0.831227,
		37.411766, 38.022392, 19.891954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494255, 38.372841, 19.026144>,  <37.024235, 37.986923, 19.310095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494255, 38.372841, 19.026144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.647491, 38.198914, 19.352133>,  <37.739433, 38.094559, 19.547726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.647491, 38.198914, 19.352133>,  <37.494255, 38.372841, 19.026144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647491, 38.198914, 19.352133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884856, -0.080456, -0.458865,
		0.265092, 0.896918, 0.353928,
		0.383088, -0.434817, 0.814971,
		37.762417, 38.068470, 19.596624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163841, 38.615803, 18.956369>,  <37.494255, 38.372841, 19.026144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163841, 38.615803, 18.956369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.174835, 38.300037, 19.201666>,  <38.181431, 38.110577, 19.348845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.174835, 38.300037, 19.201666>,  <38.163841, 38.615803, 18.956369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174835, 38.300037, 19.201666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814062, -0.338351, -0.472041,
		0.580128, 0.512190, 0.633335,
		0.027486, -0.789417, 0.613241,
		38.183083, 38.063213, 19.385639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877949, 38.604080, 19.378782>,  <38.163841, 38.615803, 18.956369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877949, 38.604080, 19.378782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744148, 38.227798, 19.356178>,  <38.663868, 38.002029, 19.342615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744148, 38.227798, 19.356178>,  <38.877949, 38.604080, 19.378782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744148, 38.227798, 19.356178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903345, -0.302978, -0.303601,
		0.268476, -0.152602, 0.951122,
		-0.334499, -0.940700, -0.056510,
		38.643799, 37.945587, 19.339226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271759, 38.093353, 19.756182>,  <38.877949, 38.604080, 19.378782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271759, 38.093353, 19.756182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.086323, 37.884773, 19.469639>,  <38.975060, 37.759624, 19.297712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.086323, 37.884773, 19.469639>,  <39.271759, 38.093353, 19.756182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086323, 37.884773, 19.469639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875589, -0.393462, -0.280233,
		-0.135733, -0.757150, 0.638984,
		-0.463594, -0.521450, -0.716359,
		38.947243, 37.728336, 19.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631302, 37.328541, 19.695930>,  <39.271759, 38.093353, 19.756182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631302, 37.328541, 19.695930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439926, 37.381397, 19.348680>,  <39.325100, 37.413113, 19.140331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439926, 37.381397, 19.348680>,  <39.631302, 37.328541, 19.695930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439926, 37.381397, 19.348680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833817, -0.241695, -0.496319,
		-0.275407, -0.961313, 0.005452,
		-0.478436, 0.132143, -0.868123,
		39.296394, 37.421040, 19.088243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698486, 36.676895, 19.276054>,  <39.631302, 37.328541, 19.695930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698486, 36.676895, 19.276054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.636726, 37.002934, 19.052704>,  <39.599670, 37.198555, 18.918694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.636726, 37.002934, 19.052704>,  <39.698486, 36.676895, 19.276054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636726, 37.002934, 19.052704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756628, -0.265887, -0.597344,
		-0.635356, -0.514711, -0.575670,
		-0.154396, 0.815093, -0.558378,
		39.590408, 37.247459, 18.885191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788906, 36.132141, 19.695078>,  <39.698486, 36.676895, 19.276054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788906, 36.132141, 19.695078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548698, 35.844662, 19.554882>,  <39.404575, 35.672173, 19.470764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548698, 35.844662, 19.554882>,  <39.788906, 36.132141, 19.695078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548698, 35.844662, 19.554882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355415, -0.152733, 0.922146,
		-0.716280, 0.678335, -0.163719,
		-0.600519, -0.718703, -0.350490,
		39.368542, 35.629051, 19.449736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135410, 36.313484, 20.079409>,  <39.788906, 36.132141, 19.695078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135410, 36.313484, 20.079409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136993, 35.940826, 19.934072>,  <39.137943, 35.717232, 19.846870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136993, 35.940826, 19.934072>,  <39.135410, 36.313484, 20.079409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136993, 35.940826, 19.934072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482824, -0.319965, 0.815171,
		-0.875709, 0.172204, -0.451088,
		0.003957, -0.931648, -0.363340,
		39.138180, 35.661331, 19.825071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420982, 36.073814, 20.149706>,  <39.135410, 36.313484, 20.079409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420982, 36.073814, 20.149706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.644623, 35.743713, 20.117783>,  <38.778805, 35.545654, 20.098629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.644623, 35.743713, 20.117783>,  <38.420982, 36.073814, 20.149706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644623, 35.743713, 20.117783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523739, -0.426158, 0.737622,
		-0.642735, -0.370605, -0.670481,
		0.559097, -0.825252, -0.079806,
		38.812351, 35.496140, 20.093842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887764, 35.592731, 20.259087>,  <38.420982, 36.073814, 20.149706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887764, 35.592731, 20.259087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.231995, 35.396721, 20.314634>,  <38.438534, 35.279114, 20.347963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.231995, 35.396721, 20.314634>,  <37.887764, 35.592731, 20.259087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231995, 35.396721, 20.314634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408074, -0.500229, 0.763706,
		-0.304766, -0.713897, -0.630451,
		0.860577, -0.490022, 0.138870,
		38.490170, 35.249714, 20.356295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727882, 34.991055, 20.219324>,  <37.887764, 35.592731, 20.259087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727882, 34.991055, 20.219324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057529, 35.049294, 20.438280>,  <38.255318, 35.084236, 20.569653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057529, 35.049294, 20.438280>,  <37.727882, 34.991055, 20.219324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057529, 35.049294, 20.438280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430384, -0.467317, 0.772259,
		0.368244, -0.872019, -0.322460,
		0.824116, 0.145598, 0.547390,
		38.304764, 35.092972, 20.602497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794678, 34.385223, 20.602005>,  <37.727882, 34.991055, 20.219324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794678, 34.385223, 20.602005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.015636, 34.661446, 20.788761>,  <38.148212, 34.827179, 20.900814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.015636, 34.661446, 20.788761>,  <37.794678, 34.385223, 20.602005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015636, 34.661446, 20.788761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531788, -0.139376, 0.835330,
		0.641915, -0.709723, 0.290237,
		0.552401, 0.690556, 0.466890,
		38.181358, 34.868610, 20.928827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004627, 34.109844, 21.208139>,  <37.794678, 34.385223, 20.602005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004627, 34.109844, 21.208139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027328, 34.502087, 21.283182>,  <38.040947, 34.737431, 21.328207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027328, 34.502087, 21.283182>,  <38.004627, 34.109844, 21.208139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027328, 34.502087, 21.283182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550809, -0.125972, 0.825070,
		0.832700, -0.150159, 0.532976,
		0.056751, 0.980604, 0.187606,
		38.044353, 34.796268, 21.339464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166225, 34.119534, 21.870924>,  <38.004627, 34.109844, 21.208139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166225, 34.119534, 21.870924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.024399, 34.484833, 21.790665>,  <37.939301, 34.704014, 21.742510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.024399, 34.484833, 21.790665>,  <38.166225, 34.119534, 21.870924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024399, 34.484833, 21.790665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520204, -0.014357, 0.853921,
		0.776960, 0.407154, 0.480165,
		-0.354571, 0.913247, -0.200648,
		37.918026, 34.758808, 21.730471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735798, 33.857388, 22.303007>,  <38.166225, 34.119534, 21.870924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735798, 33.857388, 22.303007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774281, 33.475773, 22.416542>,  <38.797371, 33.246803, 22.484663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774281, 33.475773, 22.416542>,  <38.735798, 33.857388, 22.303007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774281, 33.475773, 22.416542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203948, -0.260215, -0.943765,
		0.974243, 0.148683, 0.169539,
		0.096205, -0.954034, 0.283836,
		38.803143, 33.189564, 22.501694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346478, 33.602909, 22.094496>,  <38.735798, 33.857388, 22.303007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346478, 33.602909, 22.094496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118141, 33.276096, 22.126991>,  <38.981140, 33.080009, 22.146488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118141, 33.276096, 22.126991>,  <39.346478, 33.602909, 22.094496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118141, 33.276096, 22.126991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258297, -0.272619, -0.926802,
		0.779375, -0.508071, 0.366659,
		-0.570839, -0.817033, 0.081240,
		38.946888, 33.030987, 22.151363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818703, 33.165169, 21.926878>,  <39.346478, 33.602909, 22.094496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818703, 33.165169, 21.926878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468956, 32.987087, 21.849651>,  <39.259106, 32.880238, 21.803314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468956, 32.987087, 21.849651>,  <39.818703, 33.165169, 21.926878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468956, 32.987087, 21.849651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372372, -0.360455, -0.855226,
		0.311154, -0.819676, 0.480951,
		-0.874370, -0.445199, -0.193067,
		39.206646, 32.853527, 21.791731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933388, 32.415844, 21.749992>,  <39.818703, 33.165169, 21.926878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933388, 32.415844, 21.749992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.588619, 32.541092, 21.590469>,  <39.381760, 32.616241, 21.494755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.588619, 32.541092, 21.590469>,  <39.933388, 32.415844, 21.749992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588619, 32.541092, 21.590469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296686, -0.326387, -0.897468,
		-0.411179, -0.891868, 0.188423,
		-0.861922, 0.313117, -0.398808,
		39.330044, 32.635029, 21.470827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698318, 31.972942, 21.300188>,  <39.933388, 32.415844, 21.749992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698318, 31.972942, 21.300188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.450264, 32.243492, 21.141220>,  <39.301430, 32.405823, 21.045839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.450264, 32.243492, 21.141220>,  <39.698318, 31.972942, 21.300188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450264, 32.243492, 21.141220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126276, -0.413926, -0.901510,
		-0.774261, -0.609248, 0.171282,
		-0.620141, 0.676375, -0.397420,
		39.264221, 32.446404, 21.021994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125526, 31.541203, 20.858162>,  <39.698318, 31.972942, 21.300188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125526, 31.541203, 20.858162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155270, 31.921906, 20.739082>,  <39.173115, 32.150330, 20.667635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155270, 31.921906, 20.739082>,  <39.125526, 31.541203, 20.858162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155270, 31.921906, 20.739082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041181, -0.301202, -0.952670,
		-0.996381, 0.058582, -0.061592,
		0.074361, 0.951759, -0.297700,
		39.177578, 32.207432, 20.649773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718056, 31.656315, 20.198402>,  <39.125526, 31.541203, 20.858162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718056, 31.656315, 20.198402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926880, 31.997461, 20.201796>,  <39.052174, 32.202148, 20.203831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926880, 31.997461, 20.201796>,  <38.718056, 31.656315, 20.198402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926880, 31.997461, 20.201796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255955, -0.147174, -0.955420,
		-0.813597, 0.500958, -0.295129,
		0.522061, 0.852866, 0.008482,
		39.083500, 32.253323, 20.204340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509102, 32.043777, 19.670942>,  <38.718056, 31.656315, 20.198402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509102, 32.043777, 19.670942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891369, 32.125599, 19.755665>,  <39.120728, 32.174690, 19.806499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891369, 32.125599, 19.755665>,  <38.509102, 32.043777, 19.670942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891369, 32.125599, 19.755665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261593, -0.259560, -0.929622,
		-0.135180, 0.943815, -0.301562,
		0.955665, 0.204553, 0.211808,
		39.178070, 32.186966, 19.819208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774673, 32.368122, 19.095119>,  <38.509102, 32.043777, 19.670942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774673, 32.368122, 19.095119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115829, 32.254044, 19.270046>,  <39.320522, 32.185596, 19.375002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115829, 32.254044, 19.270046>,  <38.774673, 32.368122, 19.095119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115829, 32.254044, 19.270046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303628, -0.410467, -0.859841,
		0.424729, 0.866129, -0.263487,
		0.852886, -0.285197, 0.437319,
		39.371696, 32.168484, 19.401241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.757206, 35.481686, 33.537369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093231, 35.507523, 33.752819>,  <33.294846, 35.523026, 33.882092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093231, 35.507523, 33.752819>,  <32.757206, 35.481686, 33.537369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093231, 35.507523, 33.752819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542224, -0.068999, -0.837396,
		-0.016924, 0.995524, -0.092987,
		0.840064, 0.064591, 0.538629,
		33.345249, 35.526901, 33.914406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203766, 35.827148, 33.144226>,  <32.757206, 35.481686, 33.537369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203766, 35.827148, 33.144226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477993, 35.660553, 33.383068>,  <33.642529, 35.560596, 33.526375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477993, 35.660553, 33.383068>,  <33.203766, 35.827148, 33.144226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477993, 35.660553, 33.383068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600680, -0.139795, -0.787172,
		0.411322, 0.898328, 0.154339,
		0.685564, -0.416490, 0.597109,
		33.683662, 35.535606, 33.562202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809738, 36.228783, 33.025444>,  <33.203766, 35.827148, 33.144226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809738, 36.228783, 33.025444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895298, 35.864048, 33.165615>,  <33.946632, 35.645206, 33.249718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895298, 35.864048, 33.165615>,  <33.809738, 36.228783, 33.025444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895298, 35.864048, 33.165615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480625, -0.214073, -0.850395,
		0.850439, 0.350327, 0.392461,
		0.213901, -0.911835, 0.350432,
		33.959469, 35.590496, 33.270744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523911, 36.069538, 32.832333>,  <33.809738, 36.228783, 33.025444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523911, 36.069538, 32.832333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401711, 35.706646, 32.947983>,  <34.328392, 35.488911, 33.017372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401711, 35.706646, 32.947983>,  <34.523911, 36.069538, 32.832333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401711, 35.706646, 32.947983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439868, -0.403769, -0.802176,
		0.844504, -0.117886, 0.522414,
		-0.305500, -0.907234, 0.289130,
		34.310062, 35.434475, 33.034721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077412, 35.721672, 32.809334>,  <34.523911, 36.069538, 32.832333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077412, 35.721672, 32.809334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796906, 35.438568, 32.775154>,  <34.628601, 35.268703, 32.754646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796906, 35.438568, 32.775154>,  <35.077412, 35.721672, 32.809334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796906, 35.438568, 32.775154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445356, -0.341330, -0.827739,
		0.556677, -0.618518, 0.554569,
		-0.701262, -0.707764, -0.085450,
		34.586525, 35.226238, 32.749519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432255, 35.155422, 32.638836>,  <35.077412, 35.721672, 32.809334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432255, 35.155422, 32.638836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060005, 35.068752, 32.520859>,  <34.836655, 35.016750, 32.450073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060005, 35.068752, 32.520859>,  <35.432255, 35.155422, 32.638836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060005, 35.068752, 32.520859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365189, -0.496929, -0.787210,
		0.024005, -0.840305, 0.541582,
		-0.930624, -0.216677, -0.294941,
		34.780819, 35.003750, 32.432377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515358, 34.448418, 32.556976>,  <35.432255, 35.155422, 32.638836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515358, 34.448418, 32.556976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164467, 34.535236, 32.385689>,  <34.953934, 34.587326, 32.282917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164467, 34.535236, 32.385689>,  <35.515358, 34.448418, 32.556976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164467, 34.535236, 32.385689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130461, -0.750632, -0.647712,
		-0.462017, -0.624054, 0.630156,
		-0.877223, 0.217043, -0.428220,
		34.901299, 34.600349, 32.257221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327770, 33.684174, 32.264626>,  <35.515358, 34.448418, 32.556976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327770, 33.684174, 32.264626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107262, 33.949955, 32.062794>,  <34.974957, 34.109425, 31.941694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107262, 33.949955, 32.062794>,  <35.327770, 33.684174, 32.264626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107262, 33.949955, 32.062794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118231, -0.536464, -0.835601,
		-0.825907, -0.520299, 0.217178,
		-0.551270, 0.664451, -0.504584,
		34.941879, 34.149292, 31.911419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713367, 33.380985, 31.914902>,  <35.327770, 33.684174, 32.264626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713367, 33.380985, 31.914902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776299, 33.724041, 31.719065>,  <34.814056, 33.929874, 31.601562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776299, 33.724041, 31.719065>,  <34.713367, 33.380985, 31.914902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776299, 33.724041, 31.719065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099343, -0.506996, -0.856204,
		-0.982537, 0.086068, -0.164966,
		0.157328, 0.857641, -0.489592,
		34.823498, 33.981335, 31.572187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255390, 33.411697, 31.320932>,  <34.713367, 33.380985, 31.914902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255390, 33.411697, 31.320932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558689, 33.664047, 31.255133>,  <34.740669, 33.815456, 31.215652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558689, 33.664047, 31.255133>,  <34.255390, 33.411697, 31.320932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558689, 33.664047, 31.255133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186838, -0.451992, -0.872236,
		-0.624627, 0.630632, -0.460591,
		0.758244, 0.630877, -0.164500,
		34.786163, 33.853310, 31.205782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165009, 33.816792, 30.614513>,  <34.255390, 33.411697, 31.320932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165009, 33.816792, 30.614513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556030, 33.811272, 30.698599>,  <34.790646, 33.807961, 30.749050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556030, 33.811272, 30.698599>,  <34.165009, 33.816792, 30.614513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556030, 33.811272, 30.698599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158820, -0.607335, -0.778409,
		0.138409, 0.794326, -0.591515,
		0.977558, -0.013795, 0.210215,
		34.849297, 33.807133, 30.761663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476410, 34.028458, 29.957649>,  <34.165009, 33.816792, 30.614513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476410, 34.028458, 29.957649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791531, 33.855083, 30.132694>,  <34.980602, 33.751057, 30.237722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791531, 33.855083, 30.132694>,  <34.476410, 34.028458, 29.957649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791531, 33.855083, 30.132694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278852, -0.382520, -0.880863,
		0.549197, 0.815971, -0.180483,
		0.787797, -0.433439, 0.437614,
		35.027870, 33.725052, 30.263979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298744, 34.730591, 30.081106>,  <34.476410, 34.028458, 29.957649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298744, 34.730591, 30.081106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048767, 34.880222, 29.807024>,  <33.898781, 34.970001, 29.642574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048767, 34.880222, 29.807024>,  <34.298744, 34.730591, 30.081106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048767, 34.880222, 29.807024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662931, 0.209225, 0.718852,
		0.412273, 0.903486, 0.117238,
		-0.624943, 0.374083, -0.685206,
		33.861282, 34.992447, 29.601461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003872, 35.540092, 30.254234>,  <34.298744, 34.730591, 30.081106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003872, 35.540092, 30.254234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741405, 35.372482, 30.003197>,  <33.583927, 35.271915, 29.852575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741405, 35.372482, 30.003197>,  <34.003872, 35.540092, 30.254234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741405, 35.372482, 30.003197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744323, 0.222459, 0.629679,
		-0.124235, 0.880303, -0.457856,
		-0.656163, -0.419021, -0.627592,
		33.544556, 35.246777, 29.814919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372669, 35.953945, 30.266445>,  <34.003872, 35.540092, 30.254234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372669, 35.953945, 30.266445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246353, 35.601379, 30.125944>,  <33.170563, 35.389839, 30.041643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246353, 35.601379, 30.125944>,  <33.372669, 35.953945, 30.266445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246353, 35.601379, 30.125944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891873, 0.149417, 0.426892,
		-0.323787, 0.448081, -0.833298,
		-0.315791, -0.881418, -0.351252,
		33.151615, 35.336952, 30.020569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788326, 36.135838, 29.852194>,  <33.372669, 35.953945, 30.266445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788326, 36.135838, 29.852194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768410, 35.746593, 29.942152>,  <32.756458, 35.513046, 29.996128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768410, 35.746593, 29.942152>,  <32.788326, 36.135838, 29.852194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768410, 35.746593, 29.942152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991235, 0.075736, 0.108248,
		-0.122370, -0.217536, -0.968351,
		-0.049791, -0.973109, 0.224897,
		32.753471, 35.454662, 30.009621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087517, 35.834919, 29.558426>,  <32.788326, 36.135838, 29.852194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087517, 35.834919, 29.558426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203117, 35.598980, 29.860037>,  <32.272480, 35.457417, 30.041004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203117, 35.598980, 29.860037>,  <32.087517, 35.834919, 29.558426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203117, 35.598980, 29.860037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933203, 0.002128, 0.359343,
		-0.213562, -0.807512, -0.549832,
		0.289003, -0.589847, 0.754027,
		32.289818, 35.422028, 30.086245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539865, 35.344158, 29.625906>,  <32.087517, 35.834919, 29.558426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539865, 35.344158, 29.625906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744081, 35.353123, 29.969730>,  <31.866611, 35.358501, 30.176025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744081, 35.353123, 29.969730>,  <31.539865, 35.344158, 29.625906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744081, 35.353123, 29.969730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859268, 0.050169, 0.509060,
		-0.031714, -0.998489, 0.044872,
		0.510542, 0.022413, 0.859561,
		31.897243, 35.359848, 30.227598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071386, 35.112732, 30.106392>,  <31.539865, 35.344158, 29.625906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071386, 35.112732, 30.106392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349346, 35.313831, 30.312056>,  <31.516121, 35.434490, 30.435453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349346, 35.313831, 30.312056>,  <31.071386, 35.112732, 30.106392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349346, 35.313831, 30.312056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701561, 0.316986, 0.638226,
		0.157885, -0.804217, 0.572982,
		0.694898, 0.502748, 0.514160,
		31.557816, 35.464657, 30.466303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994009, 34.894146, 30.780657>,  <31.071386, 35.112732, 30.106392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994009, 34.894146, 30.780657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.158043, 35.258915, 30.774532>,  <31.256464, 35.477776, 30.770857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.158043, 35.258915, 30.774532>,  <30.994009, 34.894146, 30.780657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158043, 35.258915, 30.774532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650095, 0.304037, 0.696375,
		0.639693, -0.275619, 0.717514,
		0.410085, 0.911919, -0.015311,
		31.281069, 35.532490, 30.769939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796587, 35.200092, 31.427616>,  <30.994009, 34.894146, 30.780657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796587, 35.200092, 31.427616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938211, 35.528049, 31.247652>,  <31.023186, 35.724823, 31.139673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938211, 35.528049, 31.247652>,  <30.796587, 35.200092, 31.427616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938211, 35.528049, 31.247652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358673, 0.563328, 0.744322,
		0.863709, -0.102166, 0.493527,
		0.354062, 0.819892, -0.449908,
		31.044430, 35.774017, 31.112680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084267, 35.591080, 31.975132>,  <30.796587, 35.200092, 31.427616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084267, 35.591080, 31.975132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065720, 35.878334, 31.697390>,  <31.054592, 36.050686, 31.530745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065720, 35.878334, 31.697390>,  <31.084267, 35.591080, 31.975132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065720, 35.878334, 31.697390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487624, 0.590387, 0.643169,
		0.871821, 0.368408, 0.322805,
		-0.046369, 0.718136, -0.694356,
		31.051809, 36.093777, 31.489082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036551, 36.249184, 32.347641>,  <31.084267, 35.591080, 31.975132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036551, 36.249184, 32.347641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.887928, 36.314610, 31.982084>,  <30.798754, 36.353863, 31.762751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.887928, 36.314610, 31.982084>,  <31.036551, 36.249184, 32.347641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887928, 36.314610, 31.982084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494153, 0.798500, 0.343818,
		0.785975, 0.579350, -0.215864,
		-0.371558, 0.163563, -0.913888,
		30.776461, 36.363678, 31.707918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912306, 37.056427, 32.340092>,  <31.036551, 36.249184, 32.347641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912306, 37.056427, 32.340092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.708166, 36.878460, 32.045719>,  <30.585682, 36.771679, 31.869097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.708166, 36.878460, 32.045719>,  <30.912306, 37.056427, 32.340092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708166, 36.878460, 32.045719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695073, 0.717312, 0.048355,
		0.506377, 0.536203, -0.675329,
		-0.510349, -0.444917, -0.735930,
		30.555061, 36.744984, 31.824940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727087, 37.642403, 31.965042>,  <30.912306, 37.056427, 32.340092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727087, 37.642403, 31.965042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.473009, 37.341179, 31.896416>,  <30.320562, 37.160446, 31.855240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.473009, 37.341179, 31.896416>,  <30.727087, 37.642403, 31.965042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473009, 37.341179, 31.896416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770513, 0.633175, 0.073482,
		0.053294, 0.178868, -0.982429,
		-0.635193, -0.753058, -0.171565,
		30.282452, 37.115261, 31.844946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092278, 37.829288, 31.507257>,  <30.727087, 37.642403, 31.965042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092278, 37.829288, 31.507257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025824, 37.536854, 31.771955>,  <29.985952, 37.361393, 31.930775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025824, 37.536854, 31.771955>,  <30.092278, 37.829288, 31.507257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025824, 37.536854, 31.771955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771329, 0.514440, 0.374704,
		-0.614371, -0.448172, -0.649377,
		-0.166134, -0.731090, 0.661745,
		29.975983, 37.317528, 31.970480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728035, 37.968582, 31.301281>,  <30.092278, 37.829288, 31.507257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728035, 37.968582, 31.301281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638821, 38.329285, 31.153175>,  <30.585293, 38.545704, 31.064312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638821, 38.329285, 31.153175>,  <30.728035, 37.968582, 31.301281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638821, 38.329285, 31.153175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333561, -0.286305, -0.898202,
		-0.915965, -0.323837, -0.236933,
		-0.223035, 0.901753, -0.370265,
		30.571911, 38.599812, 31.042095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540506, 37.749691, 30.698147>,  <30.728035, 37.968582, 31.301281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540506, 37.749691, 30.698147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667259, 38.129047, 30.693325>,  <30.743311, 38.356659, 30.690432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667259, 38.129047, 30.693325>,  <30.540506, 37.749691, 30.698147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667259, 38.129047, 30.693325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567954, -0.199917, -0.798412,
		-0.759613, 0.246159, -0.601991,
		0.316884, 0.948388, -0.012052,
		30.762325, 38.413563, 30.689709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334343, 38.144234, 30.037691>,  <30.540506, 37.749691, 30.698147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334343, 38.144234, 30.037691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667007, 38.297028, 30.198902>,  <30.866606, 38.388702, 30.295628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667007, 38.297028, 30.198902>,  <30.334343, 38.144234, 30.037691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667007, 38.297028, 30.198902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473860, -0.109843, -0.873722,
		-0.289477, 0.917619, -0.272358,
		0.831660, 0.381983, 0.403026,
		30.916506, 38.411621, 30.319811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592024, 38.628654, 29.542288>,  <30.334343, 38.144234, 30.037691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592024, 38.628654, 29.542288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907848, 38.556393, 29.776880>,  <31.097343, 38.513035, 29.917635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907848, 38.556393, 29.776880>,  <30.592024, 38.628654, 29.542288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907848, 38.556393, 29.776880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559215, -0.181775, -0.808849,
		0.252729, 0.966603, -0.042498,
		0.789561, -0.180654, 0.586479,
		31.144716, 38.502197, 29.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083561, 39.078503, 29.367739>,  <30.592024, 38.628654, 29.542288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083561, 39.078503, 29.367739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296818, 38.782742, 29.532196>,  <31.424772, 38.605286, 29.630871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296818, 38.782742, 29.532196>,  <31.083561, 39.078503, 29.367739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296818, 38.782742, 29.532196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460431, -0.154114, -0.874215,
		0.709763, 0.655384, 0.258281,
		0.533142, -0.739406, 0.411143,
		31.456760, 38.560921, 29.655539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802999, 39.169849, 29.167381>,  <31.083561, 39.078503, 29.367739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802999, 39.169849, 29.167381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.765757, 38.787323, 29.278225>,  <31.743410, 38.557808, 29.344730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.765757, 38.787323, 29.278225>,  <31.802999, 39.169849, 29.167381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765757, 38.787323, 29.278225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470664, -0.287531, -0.834147,
		0.877386, 0.052761, 0.476875,
		-0.093107, -0.956317, 0.277109,
		31.737825, 38.500427, 29.361357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510456, 39.021370, 28.998957>,  <31.802999, 39.169849, 29.167381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510456, 39.021370, 28.998957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309879, 38.677616, 29.039001>,  <32.189533, 38.471363, 29.063028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309879, 38.677616, 29.039001>,  <32.510456, 39.021370, 28.998957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309879, 38.677616, 29.039001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452226, -0.358980, -0.816471,
		0.737598, -0.364139, 0.568641,
		-0.501439, -0.859381, 0.100110,
		32.159447, 38.419800, 29.069035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087128, 38.450657, 28.990822>,  <32.510456, 39.021370, 28.998957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087128, 38.450657, 28.990822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724602, 38.313408, 28.892143>,  <32.507088, 38.231056, 28.832935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724602, 38.313408, 28.892143>,  <33.087128, 38.450657, 28.990822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724602, 38.313408, 28.892143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331745, -0.216021, -0.918303,
		0.261803, -0.914111, 0.309613,
		-0.906314, -0.343127, -0.246697,
		32.452709, 38.210468, 28.818134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264187, 37.909058, 28.671080>,  <33.087128, 38.450657, 28.990822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264187, 37.909058, 28.671080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884491, 37.984901, 28.570686>,  <32.656673, 38.030407, 28.510450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884491, 37.984901, 28.570686>,  <33.264187, 37.909058, 28.671080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884491, 37.984901, 28.570686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159485, -0.397627, -0.903580,
		-0.271121, -0.897743, 0.347205,
		-0.949241, 0.189605, -0.250981,
		32.599720, 38.041782, 28.495392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953453, 37.271935, 28.335945>,  <33.264187, 37.909058, 28.671080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953453, 37.271935, 28.335945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739216, 37.585403, 28.210087>,  <32.610672, 37.773483, 28.134571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739216, 37.585403, 28.210087>,  <32.953453, 37.271935, 28.335945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739216, 37.585403, 28.210087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087472, -0.319107, -0.943673,
		-0.839934, -0.532947, 0.102362,
		-0.535592, 0.783670, -0.314647,
		32.578537, 37.820503, 28.115692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379356, 36.966122, 27.878462>,  <32.953453, 37.271935, 28.335945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379356, 36.966122, 27.878462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392227, 37.350273, 27.767731>,  <32.399948, 37.580765, 27.701292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392227, 37.350273, 27.767731>,  <32.379356, 36.966122, 27.878462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392227, 37.350273, 27.767731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059279, -0.278319, -0.958658,
		-0.997723, 0.014435, -0.065885,
		0.032176, 0.960380, -0.276829,
		32.401878, 37.638386, 27.684683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917540, 37.083511, 27.313240>,  <32.379356, 36.966122, 27.878462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917540, 37.083511, 27.313240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180828, 37.384399, 27.301151>,  <32.338802, 37.564930, 27.293898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180828, 37.384399, 27.301151>,  <31.917540, 37.083511, 27.313240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180828, 37.384399, 27.301151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183941, -0.199622, -0.962453,
		-0.730007, 0.627948, -0.269759,
		0.658221, 0.752218, -0.030221,
		32.378296, 37.610065, 27.292086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835955, 37.358334, 26.639729>,  <31.917540, 37.083511, 27.313240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835955, 37.358334, 26.639729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185612, 37.523350, 26.742241>,  <32.395405, 37.622360, 26.803749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185612, 37.523350, 26.742241>,  <31.835955, 37.358334, 26.639729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185612, 37.523350, 26.742241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318855, -0.089454, -0.943573,
		-0.366339, 0.906535, -0.209737,
		0.874144, 0.412543, 0.256282,
		32.447853, 37.647114, 26.819126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898783, 37.919914, 26.270504>,  <31.835955, 37.358334, 26.639729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898783, 37.919914, 26.270504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277912, 37.834476, 26.365171>,  <32.505390, 37.783215, 26.421972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277912, 37.834476, 26.365171>,  <31.898783, 37.919914, 26.270504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277912, 37.834476, 26.365171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248625, 0.030562, -0.968118,
		0.199547, 0.976445, 0.082071,
		0.947822, -0.213590, 0.236671,
		32.562260, 37.770401, 26.436172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289299, 38.331562, 25.834440>,  <31.898783, 37.919914, 26.270504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289299, 38.331562, 25.834440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539536, 38.037033, 25.937565>,  <32.689678, 37.860313, 25.999439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539536, 38.037033, 25.937565>,  <32.289299, 38.331562, 25.834440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539536, 38.037033, 25.937565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428478, 0.048123, -0.902270,
		0.651957, 0.674915, 0.345604,
		0.625587, -0.736325, 0.257812,
		32.727211, 37.816135, 26.014908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963463, 38.611115, 25.614790>,  <32.289299, 38.331562, 25.834440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963463, 38.611115, 25.614790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032158, 38.225063, 25.693825>,  <33.073376, 37.993435, 25.741245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032158, 38.225063, 25.693825>,  <32.963463, 38.611115, 25.614790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032158, 38.225063, 25.693825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725562, -0.011751, -0.688056,
		0.666382, 0.261528, 0.698240,
		0.171741, -0.965124, 0.197586,
		33.083679, 37.935528, 25.753101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688278, 38.508957, 25.834351>,  <32.963463, 38.611115, 25.614790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688278, 38.508957, 25.834351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565586, 38.158340, 25.685974>,  <33.491970, 37.947971, 25.596949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565586, 38.158340, 25.685974>,  <33.688278, 38.508957, 25.834351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565586, 38.158340, 25.685974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796468, -0.023006, -0.604244,
		0.521108, -0.480784, 0.705190,
		-0.306734, -0.876537, -0.370941,
		33.473564, 37.895378, 25.574692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296295, 38.116566, 25.851381>,  <33.688278, 38.508957, 25.834351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296295, 38.116566, 25.851381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056705, 37.874111, 25.642071>,  <33.912952, 37.728638, 25.516483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056705, 37.874111, 25.642071>,  <34.296295, 38.116566, 25.851381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056705, 37.874111, 25.642071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756635, -0.214468, -0.617663,
		0.262164, -0.765897, 0.587088,
		-0.598978, -0.606140, -0.523278,
		33.877010, 37.692268, 25.485086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652737, 37.493484, 25.721188>,  <34.296295, 38.116566, 25.851381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652737, 37.493484, 25.721188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370628, 37.496738, 25.437630>,  <34.201363, 37.498692, 25.267496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370628, 37.496738, 25.437630>,  <34.652737, 37.493484, 25.721188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370628, 37.496738, 25.437630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702538, -0.126050, -0.700394,
		-0.095058, -0.991991, 0.083180,
		-0.705269, 0.008142, -0.708893,
		34.159046, 37.499180, 25.224962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843868, 36.916676, 25.280035>,  <34.652737, 37.493484, 25.721188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843868, 36.916676, 25.280035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610764, 37.178089, 25.086842>,  <34.470901, 37.334938, 24.970924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610764, 37.178089, 25.086842>,  <34.843868, 36.916676, 25.280035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610764, 37.178089, 25.086842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643341, 0.007914, -0.765539,
		-0.496485, -0.756855, -0.425058,
		-0.582766, 0.653536, -0.482986,
		34.435932, 37.374149, 24.941946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985172, 36.760319, 24.604893>,  <34.843868, 36.916676, 25.280035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985172, 36.760319, 24.604893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775185, 37.097839, 24.560349>,  <34.649193, 37.300354, 24.533621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775185, 37.097839, 24.560349>,  <34.985172, 36.760319, 24.604893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775185, 37.097839, 24.560349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403189, 0.131319, -0.905646,
		-0.749563, -0.520337, -0.409151,
		-0.524970, 0.843804, -0.111362,
		34.617695, 37.350979, 24.526939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683815, 36.774574, 23.905685>,  <34.985172, 36.760319, 24.604893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683815, 36.774574, 23.905685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702614, 37.157894, 24.018440>,  <34.713894, 37.387886, 24.086094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702614, 37.157894, 24.018440>,  <34.683815, 36.774574, 23.905685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702614, 37.157894, 24.018440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416476, 0.237704, -0.877522,
		-0.907931, 0.158639, -0.387936,
		0.046995, 0.958296, 0.281888,
		34.716713, 37.445381, 24.103006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305355, 37.170338, 23.433420>,  <34.683815, 36.774574, 23.905685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305355, 37.170338, 23.433420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537079, 37.439896, 23.616840>,  <34.676113, 37.601631, 23.726892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537079, 37.439896, 23.616840>,  <34.305355, 37.170338, 23.433420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537079, 37.439896, 23.616840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447617, 0.207136, -0.869904,
		-0.681204, 0.709200, -0.181650,
		0.579310, 0.673892, 0.458552,
		34.710873, 37.642063, 23.754406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429222, 37.788841, 22.920071>,  <34.305355, 37.170338, 23.433420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429222, 37.788841, 22.920071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713573, 37.817101, 23.199974>,  <34.884182, 37.834057, 23.367916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713573, 37.817101, 23.199974>,  <34.429222, 37.788841, 22.920071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713573, 37.817101, 23.199974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667110, 0.247387, -0.702683,
		-0.222755, 0.966338, 0.128731,
		0.710876, 0.070648, 0.699760,
		34.926838, 37.838295, 23.409903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679924, 38.430836, 22.899054>,  <34.429222, 37.788841, 22.920071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679924, 38.430836, 22.899054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989208, 38.232243, 23.056860>,  <35.174778, 38.113087, 23.151545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989208, 38.232243, 23.056860>,  <34.679924, 38.430836, 22.899054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989208, 38.232243, 23.056860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586764, 0.324179, -0.742035,
		0.240515, 0.805240, 0.541979,
		0.773214, -0.496485, 0.394516,
		35.221172, 38.083298, 23.175215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178570, 38.905975, 22.823481>,  <34.679924, 38.430836, 22.899054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178570, 38.905975, 22.823481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366211, 38.562462, 22.905878>,  <35.478798, 38.356354, 22.955317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366211, 38.562462, 22.905878>,  <35.178570, 38.905975, 22.823481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366211, 38.562462, 22.905878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695795, 0.215747, -0.685071,
		0.543883, 0.464702, 0.698744,
		0.469106, -0.858782, 0.205996,
		35.506943, 38.304829, 22.967676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777275, 39.075237, 22.780317>,  <35.178570, 38.905975, 22.823481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777275, 39.075237, 22.780317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821423, 38.679859, 22.738741>,  <35.847912, 38.442635, 22.713795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821423, 38.679859, 22.738741>,  <35.777275, 39.075237, 22.780317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821423, 38.679859, 22.738741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711269, 0.151596, -0.686379,
		0.694202, 0.001823, 0.719778,
		0.110366, -0.988441, -0.103941,
		35.854534, 38.383327, 22.707558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530506, 38.748138, 22.986105>,  <35.777275, 39.075237, 22.780317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530506, 38.748138, 22.986105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366638, 38.497097, 22.721291>,  <36.268318, 38.346474, 22.562403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366638, 38.497097, 22.721291>,  <36.530506, 38.748138, 22.986105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366638, 38.497097, 22.721291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780925, 0.133843, -0.610116,
		0.471518, -0.766945, 0.435277,
		-0.409666, -0.627600, -0.662036,
		36.243740, 38.308819, 22.522680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247551, 38.438892, 23.274662>,  <36.530506, 38.748138, 22.986105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247551, 38.438892, 23.274662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526096, 38.670567, 23.444193>,  <37.693222, 38.809570, 23.545912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526096, 38.670567, 23.444193>,  <37.247551, 38.438892, 23.274662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526096, 38.670567, 23.444193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593225, 0.132129, 0.794120,
		0.403941, -0.804418, 0.435595,
		0.696359, 0.579183, 0.423828,
		37.735004, 38.844322, 23.571341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305202, 38.216599, 24.002684>,  <37.247551, 38.438892, 23.274662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305202, 38.216599, 24.002684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495480, 38.568443, 24.003418>,  <37.609646, 38.779549, 24.003859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495480, 38.568443, 24.003418>,  <37.305202, 38.216599, 24.002684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495480, 38.568443, 24.003418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410290, 0.220038, 0.885011,
		0.778061, -0.421746, 0.465566,
		0.475692, 0.879610, 0.001835,
		37.638187, 38.832325, 24.003969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747845, 38.308220, 24.576963>,  <37.305202, 38.216599, 24.002684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747845, 38.308220, 24.576963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625408, 38.668442, 24.453476>,  <37.551949, 38.884575, 24.379383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625408, 38.668442, 24.453476>,  <37.747845, 38.308220, 24.576963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625408, 38.668442, 24.453476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354528, 0.193129, 0.914883,
		0.883527, 0.389483, 0.260158,
		-0.306088, 0.900558, -0.308717,
		37.533581, 38.938610, 24.360861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794834, 38.703743, 25.164122>,  <37.747845, 38.308220, 24.576963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794834, 38.703743, 25.164122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548496, 38.929096, 24.943819>,  <37.400692, 39.064308, 24.811638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548496, 38.929096, 24.943819>,  <37.794834, 38.703743, 25.164122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548496, 38.929096, 24.943819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434694, 0.340050, 0.833911,
		0.657097, 0.752970, 0.035483,
		-0.615844, 0.563385, -0.550758,
		37.363743, 39.098110, 24.778591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778816, 39.369804, 25.519926>,  <37.794834, 38.703743, 25.164122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778816, 39.369804, 25.519926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434231, 39.344551, 25.318371>,  <37.227482, 39.329399, 25.197437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434231, 39.344551, 25.318371>,  <37.778816, 39.369804, 25.519926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434231, 39.344551, 25.318371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497391, 0.305029, 0.812133,
		0.102424, 0.950248, -0.294174,
		-0.861459, -0.063138, -0.503887,
		37.175793, 39.325611, 25.167204>
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
