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
	<24.029816, 34.808311, 34.793739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287481, 35.003269, 35.029537>,  <24.442080, 35.120243, 35.171017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287481, 35.003269, 35.029537>,  <24.029816, 34.808311, 34.793739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287481, 35.003269, 35.029537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397703, -0.444906, 0.802428,
		0.653367, -0.751338, -0.092755,
		0.644162, 0.487391, 0.589496,
		24.480730, 35.149487, 35.206387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.497803, 34.338387, 35.279224>,  <24.029816, 34.808311, 34.793739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.497803, 34.338387, 35.279224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392818, 34.683464, 35.452141>,  <24.329828, 34.890511, 35.555889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392818, 34.683464, 35.452141>,  <24.497803, 34.338387, 35.279224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392818, 34.683464, 35.452141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545994, -0.502155, 0.670620,
		0.795616, -0.060018, 0.602821,
		-0.262461, 0.862692, 0.432292,
		24.314079, 34.942272, 35.581829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676327, 34.299896, 36.039543>,  <24.497803, 34.338387, 35.279224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676327, 34.299896, 36.039543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375380, 34.550423, 35.957886>,  <24.194811, 34.700737, 35.908894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375380, 34.550423, 35.957886>,  <24.676327, 34.299896, 36.039543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375380, 34.550423, 35.957886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482395, -0.312801, 0.818200,
		0.448593, 0.714065, 0.537472,
		-0.752369, 0.626312, -0.204141,
		24.149670, 34.738316, 35.896645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237864, 33.930637, 35.831139>,  <24.676327, 34.299896, 36.039543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237864, 33.930637, 35.831139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618647, 33.873306, 35.722893>,  <25.847116, 33.838909, 35.657948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618647, 33.873306, 35.722893>,  <25.237864, 33.930637, 35.831139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618647, 33.873306, 35.722893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009610, 0.897250, -0.441418,
		0.306074, 0.417611, 0.855523,
		0.951959, -0.143328, -0.270612,
		25.904234, 33.830307, 35.641708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773653, 34.555733, 36.108532>,  <25.237864, 33.930637, 35.831139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773653, 34.555733, 36.108532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843819, 34.406342, 35.744171>,  <25.885918, 34.316708, 35.525555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843819, 34.406342, 35.744171>,  <25.773653, 34.555733, 36.108532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843819, 34.406342, 35.744171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001226, 0.925332, -0.379155,
		0.984493, 0.065393, 0.162776,
		0.175416, -0.373475, -0.910904,
		25.896444, 34.294300, 35.470901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401970, 34.847271, 35.897968>,  <25.773653, 34.555733, 36.108532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401970, 34.847271, 35.897968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178608, 34.742714, 35.583046>,  <26.044590, 34.679977, 35.394093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178608, 34.742714, 35.583046>,  <26.401970, 34.847271, 35.897968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178608, 34.742714, 35.583046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030074, 0.954814, -0.295679,
		0.829022, -0.141431, -0.541035,
		-0.558406, -0.261396, -0.787308,
		26.011086, 34.664295, 35.346855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661856, 34.681133, 35.164032>,  <26.401970, 34.847271, 35.897968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661856, 34.681133, 35.164032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046152, 34.636234, 35.062542>,  <27.276730, 34.609295, 35.001648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046152, 34.636234, 35.062542>,  <26.661856, 34.681133, 35.164032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046152, 34.636234, 35.062542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185001, -0.422336, 0.887360,
		-0.206763, -0.899462, -0.384989,
		0.960741, -0.112250, -0.253725,
		27.334373, 34.602558, 34.986423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774021, 34.035484, 35.408749>,  <26.661856, 34.681133, 35.164032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774021, 34.035484, 35.408749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111526, 34.249584, 35.392864>,  <27.314030, 34.378044, 35.383335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111526, 34.249584, 35.392864>,  <26.774021, 34.035484, 35.408749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111526, 34.249584, 35.392864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230245, -0.294146, 0.927612,
		0.484821, -0.791827, -0.371427,
		0.843762, 0.535246, -0.039706,
		27.364655, 34.410156, 35.380951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279728, 33.585083, 35.719154>,  <26.774021, 34.035484, 35.408749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279728, 33.585083, 35.719154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436153, 33.953217, 35.722332>,  <27.530008, 34.174095, 35.724239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436153, 33.953217, 35.722332>,  <27.279728, 33.585083, 35.719154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436153, 33.953217, 35.722332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488568, -0.214900, 0.845647,
		0.779982, -0.326819, -0.533683,
		0.391062, 0.920330, 0.007945,
		27.553473, 34.229317, 35.724716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825228, 33.486095, 36.031010>,  <27.279728, 33.585083, 35.719154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825228, 33.486095, 36.031010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791655, 33.883953, 36.055145>,  <27.771511, 34.122669, 36.069626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791655, 33.883953, 36.055145>,  <27.825228, 33.486095, 36.031010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791655, 33.883953, 36.055145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479647, -0.012755, 0.877369,
		0.873438, 0.102582, -0.476007,
		-0.083931, 0.994643, 0.060343,
		27.766476, 34.182346, 36.073250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564749, 33.771557, 36.121532>,  <27.825228, 33.486095, 36.031010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564749, 33.771557, 36.121532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283201, 34.017326, 36.264114>,  <28.114273, 34.164787, 36.349663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283201, 34.017326, 36.264114>,  <28.564749, 33.771557, 36.121532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283201, 34.017326, 36.264114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445617, -0.008842, 0.895180,
		0.553170, 0.788928, -0.267573,
		-0.703867, 0.614422, 0.356451,
		28.072041, 34.201653, 36.371048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891596, 34.206192, 36.673698>,  <28.564749, 33.771557, 36.121532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891596, 34.206192, 36.673698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503414, 34.238964, 36.764477>,  <28.270506, 34.258625, 36.818943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503414, 34.238964, 36.764477>,  <28.891596, 34.206192, 36.673698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503414, 34.238964, 36.764477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227541, -0.002156, 0.973766,
		0.080266, 0.996636, -0.016550,
		-0.970455, 0.081926, 0.226948,
		28.212278, 34.263542, 36.832561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876530, 34.696873, 37.152599>,  <28.891596, 34.206192, 36.673698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876530, 34.696873, 37.152599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530474, 34.502697, 37.203011>,  <28.322840, 34.386192, 37.233257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530474, 34.502697, 37.203011>,  <28.876530, 34.696873, 37.152599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530474, 34.502697, 37.203011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127513, 0.030129, 0.991379,
		-0.485049, 0.873752, 0.035834,
		-0.865140, -0.485436, 0.126029,
		28.270931, 34.357067, 37.240818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615219, 34.989002, 37.751850>,  <28.876530, 34.696873, 37.152599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615219, 34.989002, 37.751850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379051, 34.666401, 37.739433>,  <28.237350, 34.472839, 37.731983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379051, 34.666401, 37.739433>,  <28.615219, 34.989002, 37.751850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379051, 34.666401, 37.739433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250554, -0.219715, 0.942841,
		-0.767221, 0.548893, 0.331795,
		-0.590419, -0.806500, -0.031043,
		28.201925, 34.424450, 37.730122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303614, 34.964985, 38.458134>,  <28.615219, 34.989002, 37.751850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303614, 34.964985, 38.458134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248617, 34.593204, 38.321182>,  <28.215620, 34.370136, 38.239010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248617, 34.593204, 38.321182>,  <28.303614, 34.964985, 38.458134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248617, 34.593204, 38.321182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157938, -0.361812, 0.918775,
		-0.977831, 0.072247, 0.196540,
		-0.137489, -0.929447, -0.342381,
		28.207371, 34.314369, 38.218468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829033, 34.617912, 38.952404>,  <28.303614, 34.964985, 38.458134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829033, 34.617912, 38.952404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019791, 34.348427, 38.726593>,  <28.134245, 34.186737, 38.591106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019791, 34.348427, 38.726593>,  <27.829033, 34.617912, 38.952404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019791, 34.348427, 38.726593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320841, -0.464520, 0.825398,
		-0.818312, -0.574749, -0.005372,
		0.476892, -0.673710, -0.564525,
		28.162859, 34.146313, 38.557236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525810, 34.009323, 39.132694>,  <27.829033, 34.617912, 38.952404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525810, 34.009323, 39.132694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880781, 33.901344, 38.983242>,  <28.093763, 33.836555, 38.893570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880781, 33.901344, 38.983242>,  <27.525810, 34.009323, 39.132694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880781, 33.901344, 38.983242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203190, -0.498481, 0.842752,
		-0.413745, -0.823800, -0.387516,
		0.887428, -0.269945, -0.373632,
		28.147009, 33.820362, 38.871151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640398, 33.351566, 39.436241>,  <27.525810, 34.009323, 39.132694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640398, 33.351566, 39.436241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003851, 33.447365, 39.299404>,  <28.221922, 33.504845, 39.217300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003851, 33.447365, 39.299404>,  <27.640398, 33.351566, 39.436241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003851, 33.447365, 39.299404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416671, -0.574540, 0.704478,
		-0.027824, -0.782652, -0.621838,
		0.908631, 0.239500, -0.342095,
		28.276440, 33.519215, 39.196777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998987, 32.700577, 39.301941>,  <27.640398, 33.351566, 39.436241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998987, 32.700577, 39.301941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271948, 32.990112, 39.342701>,  <28.435724, 33.163834, 39.367157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271948, 32.990112, 39.342701>,  <27.998987, 32.700577, 39.301941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271948, 32.990112, 39.342701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443165, -0.520544, 0.729821,
		0.581318, -0.452872, -0.676000,
		0.682403, 0.723838, 0.101905,
		28.476669, 33.207264, 39.373272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595381, 32.321579, 39.275860>,  <27.998987, 32.700577, 39.301941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595381, 32.321579, 39.275860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668940, 32.683029, 39.430592>,  <28.713076, 32.899899, 39.523430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668940, 32.683029, 39.430592>,  <28.595381, 32.321579, 39.275860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668940, 32.683029, 39.430592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608986, -0.413654, 0.676776,
		0.771568, 0.111118, -0.626367,
		0.183897, 0.903628, 0.386832,
		28.724110, 32.954117, 39.546642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286449, 32.288654, 39.335678>,  <28.595381, 32.321579, 39.275860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286449, 32.288654, 39.335678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162222, 32.578079, 39.582253>,  <29.087685, 32.751736, 39.730198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162222, 32.578079, 39.582253>,  <29.286449, 32.288654, 39.335678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162222, 32.578079, 39.582253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587519, -0.363681, 0.722882,
		0.747240, 0.586675, -0.312161,
		-0.310569, 0.723567, 0.616440,
		29.069052, 32.795151, 39.767185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890696, 32.547615, 39.684143>,  <29.286449, 32.288654, 39.335678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890696, 32.547615, 39.684143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584328, 32.660198, 39.915367>,  <29.400507, 32.727749, 40.054100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584328, 32.660198, 39.915367>,  <29.890696, 32.547615, 39.684143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584328, 32.660198, 39.915367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497963, -0.309036, 0.810265,
		0.406694, 0.908449, 0.096542,
		-0.765920, 0.281455, 0.578057,
		29.354551, 32.744637, 40.088783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178019, 33.003937, 40.210045>,  <29.890696, 32.547615, 39.684143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178019, 33.003937, 40.210045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842094, 32.856415, 40.369392>,  <29.640539, 32.767902, 40.465004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842094, 32.856415, 40.369392>,  <30.178019, 33.003937, 40.210045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842094, 32.856415, 40.369392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509144, -0.280429, 0.813715,
		-0.188385, 0.886197, 0.423281,
		-0.839811, -0.368802, 0.398374,
		29.590151, 32.745773, 40.488903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033976, 33.176594, 40.963001>,  <30.178019, 33.003937, 40.210045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033976, 33.176594, 40.963001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833405, 32.836254, 40.900242>,  <29.713062, 32.632050, 40.862587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833405, 32.836254, 40.900242>,  <30.033976, 33.176594, 40.963001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833405, 32.836254, 40.900242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431294, -0.403017, 0.807194,
		-0.750036, 0.337083, 0.569053,
		-0.501430, -0.850854, -0.156895,
		29.682976, 32.580997, 40.853172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453072, 32.930023, 41.488647>,  <30.033976, 33.176594, 40.963001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453072, 32.930023, 41.488647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712479, 32.677212, 41.318958>,  <29.868122, 32.525524, 41.217144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712479, 32.677212, 41.318958>,  <29.453072, 32.930023, 41.488647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712479, 32.677212, 41.318958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364650, -0.231249, 0.901972,
		-0.668172, -0.739638, 0.080499,
		0.648518, -0.632027, -0.424223,
		29.907034, 32.487602, 41.191692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344202, 32.218075, 41.735432>,  <29.453072, 32.930023, 41.488647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344202, 32.218075, 41.735432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723339, 32.319592, 41.658298>,  <29.950821, 32.380501, 41.612019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723339, 32.319592, 41.658298>,  <29.344202, 32.218075, 41.735432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723339, 32.319592, 41.658298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289044, -0.429397, 0.855612,
		0.134346, -0.866722, -0.480358,
		0.947842, 0.253792, -0.192833,
		30.007692, 32.395729, 41.600449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732119, 31.698780, 41.633438>,  <29.344202, 32.218075, 41.735432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732119, 31.698780, 41.633438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980198, 31.981546, 41.769451>,  <30.129045, 32.151207, 41.851059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980198, 31.981546, 41.769451>,  <29.732119, 31.698780, 41.633438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980198, 31.981546, 41.769451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332988, -0.629728, 0.701827,
		0.710262, -0.322045, -0.625951,
		0.620199, 0.706916, 0.340035,
		30.166258, 32.193623, 41.871460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495575, 31.485498, 41.569950>,  <29.732119, 31.698780, 41.633438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495575, 31.485498, 41.569950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410881, 31.753456, 41.854599>,  <30.360065, 31.914230, 42.025391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410881, 31.753456, 41.854599>,  <30.495575, 31.485498, 41.569950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410881, 31.753456, 41.854599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488063, -0.558366, 0.670837,
		0.846736, 0.489359, -0.208724,
		-0.211735, 0.669892, 0.711627,
		30.347361, 31.954424, 42.068089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173080, 31.541298, 42.003674>,  <30.495575, 31.485498, 41.569950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173080, 31.541298, 42.003674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821295, 31.637018, 42.168247>,  <30.610224, 31.694450, 42.266991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821295, 31.637018, 42.168247>,  <31.173080, 31.541298, 42.003674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821295, 31.637018, 42.168247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189178, -0.617466, 0.763510,
		0.436759, 0.749313, 0.497766,
		-0.879462, 0.239303, 0.411437,
		30.557457, 31.708809, 42.291679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237804, 31.770102, 42.740452>,  <31.173080, 31.541298, 42.003674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237804, 31.770102, 42.740452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882559, 31.597849, 42.676193>,  <30.669411, 31.494497, 42.637638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882559, 31.597849, 42.676193>,  <31.237804, 31.770102, 42.740452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882559, 31.597849, 42.676193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267448, -0.768439, 0.581354,
		-0.373796, 0.473345, 0.797634,
		-0.888115, -0.430634, -0.160644,
		30.616125, 31.468658, 42.627998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973215, 31.535194, 42.722244>,  <31.237804, 31.770102, 42.740452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973215, 31.535194, 42.722244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156933, 31.206415, 42.587517>,  <32.267162, 31.009148, 42.506680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156933, 31.206415, 42.587517>,  <31.973215, 31.535194, 42.722244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156933, 31.206415, 42.587517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322200, 0.507512, -0.799136,
		0.827789, 0.258516, 0.497930,
		0.459295, -0.821949, -0.336819,
		32.294720, 30.959831, 42.486469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656960, 31.714834, 42.392273>,  <31.973215, 31.535194, 42.722244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656960, 31.714834, 42.392273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485039, 31.392694, 42.228966>,  <32.381886, 31.199411, 42.130981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485039, 31.392694, 42.228966>,  <32.656960, 31.714834, 42.392273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485039, 31.392694, 42.228966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184398, 0.364344, -0.912826,
		0.883894, -0.467617, -0.008090,
		-0.429800, -0.805349, -0.408269,
		32.356098, 31.151091, 42.106483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755421, 31.274673, 42.924805>,  <32.656960, 31.714834, 42.392273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755421, 31.274673, 42.924805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583778, 31.401985, 43.262932>,  <32.480793, 31.478373, 43.465809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583778, 31.401985, 43.262932>,  <32.755421, 31.274673, 42.924805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583778, 31.401985, 43.262932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892599, -0.006103, -0.450809,
		-0.138325, -0.947976, 0.286717,
		-0.429106, 0.318282, 0.845319,
		32.455048, 31.497469, 43.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217018, 31.142832, 42.269295>,  <32.755421, 31.274673, 42.924805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217018, 31.142832, 42.269295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548603, 30.980616, 42.423367>,  <33.747555, 30.883286, 42.515808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548603, 30.980616, 42.423367>,  <33.217018, 31.142832, 42.269295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548603, 30.980616, 42.423367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557587, 0.545259, -0.625930,
		0.043818, 0.733641, 0.678123,
		0.828961, -0.405540, 0.385176,
		33.797291, 30.858953, 42.538921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769428, 31.598885, 42.356747>,  <33.217018, 31.142832, 42.269295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769428, 31.598885, 42.356747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933830, 31.235329, 42.328480>,  <34.032471, 31.017195, 42.311520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933830, 31.235329, 42.328480>,  <33.769428, 31.598885, 42.356747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933830, 31.235329, 42.328480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496747, 0.288278, -0.818619,
		0.764407, 0.301353, 0.569973,
		0.411004, -0.908891, -0.070665,
		34.057133, 30.962662, 42.307281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900604, 32.046829, 41.774353>,  <33.769428, 31.598885, 42.356747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900604, 32.046829, 41.774353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669151, 31.743309, 41.654747>,  <33.530281, 31.561197, 41.582985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669151, 31.743309, 41.654747>,  <33.900604, 32.046829, 41.774353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669151, 31.743309, 41.654747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181172, 0.237874, -0.954250,
		0.795214, -0.606329, -0.000167,
		-0.578629, -0.758802, -0.299011,
		33.495564, 31.515669, 41.565044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262180, 31.859289, 41.279095>,  <33.900604, 32.046829, 41.774353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262180, 31.859289, 41.279095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897812, 31.701216, 41.231663>,  <33.679192, 31.606373, 41.203201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897812, 31.701216, 41.231663>,  <34.262180, 31.859289, 41.279095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897812, 31.701216, 41.231663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013261, 0.259221, -0.965727,
		0.412378, -0.881269, -0.230888,
		-0.910916, -0.395183, -0.118584,
		33.624538, 31.582661, 41.196087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307114, 31.570436, 40.693432>,  <34.262180, 31.859289, 41.279095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307114, 31.570436, 40.693432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911110, 31.614985, 40.728016>,  <33.673508, 31.641712, 40.748764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911110, 31.614985, 40.728016>,  <34.307114, 31.570436, 40.693432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911110, 31.614985, 40.728016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033014, 0.413051, -0.910109,
		-0.137068, -0.903873, -0.405248,
		-0.990011, 0.111368, 0.086456,
		33.614105, 31.648396, 40.753952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950638, 31.231840, 40.032902>,  <34.307114, 31.570436, 40.693432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950638, 31.231840, 40.032902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689327, 31.490606, 40.190243>,  <33.532539, 31.645866, 40.284645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689327, 31.490606, 40.190243>,  <33.950638, 31.231840, 40.032902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689327, 31.490606, 40.190243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225417, 0.329786, -0.916749,
		-0.722781, -0.687562, -0.069617,
		-0.653280, 0.646915, 0.393351,
		33.493343, 31.684681, 40.308247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362926, 31.295332, 39.488911>,  <33.950638, 31.231840, 40.032902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362926, 31.295332, 39.488911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345024, 31.610979, 39.733955>,  <33.334282, 31.800367, 39.880981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345024, 31.610979, 39.733955>,  <33.362926, 31.295332, 39.488911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345024, 31.610979, 39.733955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236635, 0.587399, -0.773929,
		-0.970567, -0.179605, 0.160442,
		-0.044758, 0.789117, 0.612611,
		33.331596, 31.847713, 39.917740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633537, 31.514297, 39.566036>,  <33.362926, 31.295332, 39.488911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633537, 31.514297, 39.566036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849827, 31.840685, 39.647831>,  <32.979599, 32.036518, 39.696907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849827, 31.840685, 39.647831>,  <32.633537, 31.514297, 39.566036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849827, 31.840685, 39.647831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524379, 0.517036, -0.676535,
		-0.657757, 0.258591, 0.707450,
		0.540723, 0.815969, 0.204485,
		33.012043, 32.085476, 39.709175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251217, 32.181396, 39.659683>,  <32.633537, 31.514297, 39.566036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251217, 32.181396, 39.659683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611004, 32.343204, 39.593567>,  <32.826878, 32.440289, 39.553898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611004, 32.343204, 39.593567>,  <32.251217, 32.181396, 39.659683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611004, 32.343204, 39.593567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394058, 0.587343, -0.706927,
		-0.188887, 0.700991, 0.687701,
		0.899466, 0.404524, -0.165290,
		32.880844, 32.464561, 39.543980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099651, 32.843296, 39.563553>,  <32.251217, 32.181396, 39.659683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099651, 32.843296, 39.563553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465775, 32.798225, 39.408882>,  <32.685448, 32.771183, 39.316078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465775, 32.798225, 39.408882>,  <32.099651, 32.843296, 39.563553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465775, 32.798225, 39.408882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254579, 0.582104, -0.772233,
		0.312098, 0.805269, 0.504118,
		0.915305, -0.112674, -0.386679,
		32.740368, 32.764423, 39.292877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171230, 33.503639, 39.318348>,  <32.099651, 32.843296, 39.563553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171230, 33.503639, 39.318348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465492, 33.313183, 39.125641>,  <32.642048, 33.198910, 39.010017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465492, 33.313183, 39.125641>,  <32.171230, 33.503639, 39.318348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465492, 33.313183, 39.125641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135350, 0.593574, -0.793316,
		0.663696, 0.648814, 0.372220,
		0.735654, -0.476141, -0.481770,
		32.686188, 33.170341, 38.981110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483143, 34.004398, 39.008022>,  <32.171230, 33.503639, 39.318348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483143, 34.004398, 39.008022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638626, 33.691120, 38.813908>,  <32.731918, 33.503155, 38.697437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638626, 33.691120, 38.813908>,  <32.483143, 34.004398, 39.008022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638626, 33.691120, 38.813908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164803, 0.459115, -0.872957,
		0.906500, 0.419307, 0.049391,
		0.388713, -0.783196, -0.485290,
		32.755241, 33.456161, 38.668320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917084, 34.291161, 38.495464>,  <32.483143, 34.004398, 39.008022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917084, 34.291161, 38.495464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844513, 33.923256, 38.356251>,  <32.800972, 33.702515, 38.272720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844513, 33.923256, 38.356251>,  <32.917084, 34.291161, 38.495464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844513, 33.923256, 38.356251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174369, 0.378389, -0.909075,
		0.967823, -0.104241, -0.229026,
		-0.181423, -0.919759, -0.348037,
		32.790085, 33.647327, 38.251839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377312, 34.214249, 37.809181>,  <32.917084, 34.291161, 38.495464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377312, 34.214249, 37.809181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073566, 33.954014, 37.805214>,  <32.891319, 33.797874, 37.802834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073566, 33.954014, 37.805214>,  <33.377312, 34.214249, 37.809181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073566, 33.954014, 37.805214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211889, 0.261677, -0.941609,
		0.615195, -0.712924, -0.336561,
		-0.759366, -0.650587, -0.009921,
		32.845757, 33.758839, 37.802238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400520, 33.763828, 37.257717>,  <33.377312, 34.214249, 37.809181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400520, 33.763828, 37.257717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010193, 33.779724, 37.343700>,  <32.775997, 33.789261, 37.395290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010193, 33.779724, 37.343700>,  <33.400520, 33.763828, 37.257717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010193, 33.779724, 37.343700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202937, 0.200878, -0.958366,
		-0.081265, -0.978810, -0.187955,
		-0.975814, 0.039739, 0.214961,
		32.717449, 33.791645, 37.408188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088692, 33.758003, 36.622120>,  <33.400520, 33.763828, 37.257717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088692, 33.758003, 36.622120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783482, 33.880695, 36.849701>,  <32.600357, 33.954311, 36.986252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783482, 33.880695, 36.849701>,  <33.088692, 33.758003, 36.622120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783482, 33.880695, 36.849701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402886, 0.462631, -0.789718,
		-0.505447, -0.831799, -0.229421,
		-0.763024, 0.306730, 0.568955,
		32.554573, 33.972713, 37.020386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475761, 33.677586, 36.225685>,  <33.088692, 33.758003, 36.622120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475761, 33.677586, 36.225685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358570, 33.919727, 36.521713>,  <32.288254, 34.065014, 36.699329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358570, 33.919727, 36.521713>,  <32.475761, 33.677586, 36.225685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358570, 33.919727, 36.521713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446098, 0.598075, -0.665810,
		-0.845671, -0.525213, 0.094825,
		-0.292979, 0.605357, 0.740071,
		32.270676, 34.101334, 36.743736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686756, 33.784454, 36.268448>,  <32.475761, 33.677586, 36.225685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686756, 33.784454, 36.268448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836840, 34.114803, 36.436806>,  <31.926889, 34.313011, 36.537823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836840, 34.114803, 36.436806>,  <31.686756, 33.784454, 36.268448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836840, 34.114803, 36.436806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628730, 0.560403, -0.539118,
		-0.681114, -0.062349, 0.729517,
		0.375210, 0.825870, 0.420899,
		31.949402, 34.362564, 36.563076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153591, 34.077484, 36.735847>,  <31.686756, 33.784454, 36.268448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153591, 34.077484, 36.735847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407091, 34.377003, 36.658218>,  <31.559191, 34.556713, 36.611641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407091, 34.377003, 36.658218>,  <31.153591, 34.077484, 36.735847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407091, 34.377003, 36.658218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744582, 0.522509, -0.415430,
		-0.209666, 0.407783, 0.888680,
		0.633749, 0.748797, -0.194076,
		31.597216, 34.601643, 36.599995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782854, 34.594696, 36.990723>,  <31.153591, 34.077484, 36.735847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782854, 34.594696, 36.990723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051834, 34.783432, 36.762623>,  <31.213223, 34.896675, 36.625763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051834, 34.783432, 36.762623>,  <30.782854, 34.594696, 36.990723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051834, 34.783432, 36.762623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739710, 0.402048, -0.539616,
		-0.025347, 0.784680, 0.619383,
		0.672448, 0.471842, -0.570245,
		31.253569, 34.924984, 36.591549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502453, 35.280457, 36.932076>,  <30.782854, 34.594696, 36.990723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502453, 35.280457, 36.932076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749599, 35.218990, 36.623627>,  <30.897888, 35.182110, 36.438557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749599, 35.218990, 36.623627>,  <30.502453, 35.280457, 36.932076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749599, 35.218990, 36.623627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639132, 0.473081, -0.606386,
		0.457984, 0.867514, 0.194088,
		0.617868, -0.153666, -0.771120,
		30.934959, 35.172890, 36.392292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511000, 35.936340, 36.569653>,  <30.502453, 35.280457, 36.932076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511000, 35.936340, 36.569653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639380, 35.672916, 36.297390>,  <30.716408, 35.514862, 36.134033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639380, 35.672916, 36.297390>,  <30.511000, 35.936340, 36.569653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639380, 35.672916, 36.297390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542565, 0.461213, -0.702073,
		0.776284, 0.594629, -0.209286,
		0.320947, -0.658558, -0.680657,
		30.735664, 35.475349, 36.093193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771679, 36.312851, 36.012917>,  <30.511000, 35.936340, 36.569653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771679, 36.312851, 36.012917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681011, 35.958893, 35.850151>,  <30.626610, 35.746517, 35.752491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681011, 35.958893, 35.850151>,  <30.771679, 36.312851, 36.012917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681011, 35.958893, 35.850151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432680, 0.465783, -0.771903,
		0.872588, 0.001095, -0.488457,
		-0.226669, -0.884898, -0.406910,
		30.613010, 35.693424, 35.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935690, 36.342472, 35.271748>,  <30.771679, 36.312851, 36.012917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935690, 36.342472, 35.271748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684357, 36.031940, 35.291782>,  <30.533556, 35.845619, 35.303802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684357, 36.031940, 35.291782>,  <30.935690, 36.342472, 35.271748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684357, 36.031940, 35.291782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431809, 0.294488, -0.852536,
		0.647101, -0.557303, -0.520263,
		-0.628332, -0.776331, 0.050085,
		30.495857, 35.799042, 35.306808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941694, 35.984024, 34.572723>,  <30.935690, 36.342472, 35.271748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941694, 35.984024, 34.572723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588968, 35.913765, 34.747787>,  <30.377333, 35.871609, 34.852825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588968, 35.913765, 34.747787>,  <30.941694, 35.984024, 34.572723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588968, 35.913765, 34.747787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469757, 0.245304, -0.848030,
		0.041591, -0.953402, -0.298823,
		-0.881816, -0.175644, 0.437665,
		30.324423, 35.861073, 34.879086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611031, 36.172981, 34.281525>,  <30.941694, 35.984024, 34.572723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611031, 36.172981, 34.281525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815670, 36.108948, 33.943851>,  <31.938454, 36.070526, 33.741249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815670, 36.108948, 33.943851>,  <31.611031, 36.172981, 34.281525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815670, 36.108948, 33.943851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853729, -0.016218, 0.520464,
		-0.097009, -0.986970, 0.128372,
		0.511601, -0.160085, -0.844178,
		31.969151, 36.060921, 33.690598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134563, 35.596233, 34.378807>,  <31.611031, 36.172981, 34.281525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134563, 35.596233, 34.378807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253277, 35.857174, 34.099850>,  <32.324505, 36.013737, 33.932476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253277, 35.857174, 34.099850>,  <32.134563, 35.596233, 34.378807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253277, 35.857174, 34.099850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759004, 0.282041, 0.586828,
		0.579509, -0.703489, -0.411428,
		0.296787, 0.652347, -0.697396,
		32.342312, 36.052879, 33.890633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875401, 35.590405, 34.384029>,  <32.134563, 35.596233, 34.378807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875401, 35.590405, 34.384029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762180, 35.932495, 34.210377>,  <32.694248, 36.137749, 34.106186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762180, 35.932495, 34.210377>,  <32.875401, 35.590405, 34.384029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762180, 35.932495, 34.210377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669342, 0.500325, 0.549232,
		0.686924, -0.135121, -0.714057,
		-0.283048, 0.855229, -0.434127,
		32.677265, 36.189064, 34.080139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521107, 36.148796, 34.193550>,  <32.875401, 35.590405, 34.384029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521107, 36.148796, 34.193550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178173, 36.331379, 34.288734>,  <32.972412, 36.440929, 34.345844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178173, 36.331379, 34.288734>,  <33.521107, 36.148796, 34.193550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178173, 36.331379, 34.288734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492693, 0.593760, 0.636163,
		0.149090, 0.662645, -0.733944,
		-0.857337, 0.456455, 0.237957,
		32.920971, 36.468315, 34.360123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353058, 36.861301, 33.922562>,  <33.521107, 36.148796, 34.193550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353058, 36.861301, 33.922562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168663, 36.809807, 34.273769>,  <33.058025, 36.778908, 34.484493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168663, 36.809807, 34.273769>,  <33.353058, 36.861301, 33.922562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168663, 36.809807, 34.273769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681871, 0.581828, 0.443315,
		-0.567929, 0.803058, -0.180431,
		-0.460987, -0.128740, 0.878019,
		33.030365, 36.771183, 34.537174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257019, 37.567482, 34.313427>,  <33.353058, 36.861301, 33.922562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257019, 37.567482, 34.313427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252304, 37.264236, 34.574230>,  <33.249474, 37.082287, 34.730713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252304, 37.264236, 34.574230>,  <33.257019, 37.567482, 34.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252304, 37.264236, 34.574230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446819, 0.579341, 0.681702,
		-0.894547, 0.299368, 0.331911,
		-0.011790, -0.758118, 0.652011,
		33.248768, 37.036800, 34.769833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753704, 37.722485, 34.902451>,  <33.257019, 37.567482, 34.313427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753704, 37.722485, 34.902451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067791, 37.483055, 34.965889>,  <33.256241, 37.339397, 35.003952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067791, 37.483055, 34.965889>,  <32.753704, 37.722485, 34.902451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067791, 37.483055, 34.965889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336887, 0.627837, 0.701661,
		-0.519564, -0.497526, 0.694637,
		0.785214, -0.598571, 0.158592,
		33.303356, 37.303482, 35.013466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701199, 37.617943, 35.602436>,  <32.753704, 37.722485, 34.902451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701199, 37.617943, 35.602436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084332, 37.532852, 35.525181>,  <33.314213, 37.481796, 35.478828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084332, 37.532852, 35.525181>,  <32.701199, 37.617943, 35.602436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084332, 37.532852, 35.525181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255027, 0.319793, 0.912520,
		-0.132352, -0.923299, 0.360559,
		0.957833, -0.212726, -0.193141,
		33.371681, 37.469036, 35.467239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761513, 37.250214, 36.140804>,  <32.701199, 37.617943, 35.602436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761513, 37.250214, 36.140804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119892, 37.373760, 36.013134>,  <33.334919, 37.447887, 35.936531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119892, 37.373760, 36.013134>,  <32.761513, 37.250214, 36.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119892, 37.373760, 36.013134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250677, 0.241570, 0.937446,
		0.366652, -0.919915, 0.139008,
		0.895950, 0.308870, -0.319174,
		33.388676, 37.466419, 35.917381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243950, 36.918007, 36.558304>,  <32.761513, 37.250214, 36.140804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243950, 36.918007, 36.558304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487743, 37.197891, 36.409206>,  <33.634018, 37.365822, 36.319748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487743, 37.197891, 36.409206>,  <33.243950, 36.918007, 36.558304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487743, 37.197891, 36.409206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469831, 0.059928, 0.880720,
		0.638584, -0.711911, -0.292219,
		0.609483, 0.699708, -0.372747,
		33.670589, 37.407803, 36.297382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985439, 36.697269, 36.673180>,  <33.243950, 36.918007, 36.558304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985439, 36.697269, 36.673180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947392, 37.095085, 36.655972>,  <33.924561, 37.333775, 36.645645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947392, 37.095085, 36.655972>,  <33.985439, 36.697269, 36.673180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947392, 37.095085, 36.655972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397100, 0.077541, 0.914494,
		0.912832, 0.069906, -0.402306,
		-0.095124, 0.994535, -0.043022,
		33.918854, 37.393444, 36.643066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634697, 36.972595, 36.920803>,  <33.985439, 36.697269, 36.673180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634697, 36.972595, 36.920803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352280, 37.255322, 36.938286>,  <34.182827, 37.424957, 36.948776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352280, 37.255322, 36.938286>,  <34.634697, 36.972595, 36.920803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352280, 37.255322, 36.938286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325751, 0.269351, 0.906276,
		0.628795, 0.654113, -0.420420,
		-0.706048, 0.706814, 0.043711,
		34.140465, 37.467365, 36.951401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979191, 37.592571, 37.154953>,  <34.634697, 36.972595, 36.920803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979191, 37.592571, 37.154953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596115, 37.667652, 37.242222>,  <34.366268, 37.712700, 37.294582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596115, 37.667652, 37.242222>,  <34.979191, 37.592571, 37.154953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596115, 37.667652, 37.242222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277258, 0.398347, 0.874327,
		0.077203, 0.897824, -0.433534,
		-0.957689, 0.187701, 0.218176,
		34.308807, 37.723961, 37.307674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003807, 38.275291, 37.588909>,  <34.979191, 37.592571, 37.154953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003807, 38.275291, 37.588909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642960, 38.113922, 37.650131>,  <34.426453, 38.017101, 37.686863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642960, 38.113922, 37.650131>,  <35.003807, 38.275291, 37.588909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642960, 38.113922, 37.650131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091717, 0.167326, 0.981626,
		-0.421625, 0.899582, -0.113947,
		-0.902120, -0.403427, 0.153056,
		34.372322, 37.992893, 37.696049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765163, 38.669403, 38.137241>,  <35.003807, 38.275291, 37.588909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765163, 38.669403, 38.137241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524723, 38.349789, 38.143150>,  <34.380459, 38.158020, 38.146694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524723, 38.349789, 38.143150>,  <34.765163, 38.669403, 38.137241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524723, 38.349789, 38.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024581, 0.036956, 0.999014,
		-0.798798, 0.600141, -0.041855,
		-0.601096, -0.799040, 0.014768,
		34.344395, 38.110077, 38.147579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221252, 38.880920, 38.557499>,  <34.765163, 38.669403, 38.137241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221252, 38.880920, 38.557499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212341, 38.482811, 38.519707>,  <34.206993, 38.243946, 38.497032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212341, 38.482811, 38.519707>,  <34.221252, 38.880920, 38.557499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212341, 38.482811, 38.519707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108676, -0.096359, 0.989396,
		-0.993827, 0.011773, 0.110310,
		-0.022277, -0.995277, -0.094485,
		34.205658, 38.184227, 38.491360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737423, 38.636131, 39.008968>,  <34.221252, 38.880920, 38.557499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737423, 38.636131, 39.008968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999565, 38.339554, 38.951321>,  <34.156849, 38.161606, 38.916733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999565, 38.339554, 38.951321>,  <33.737423, 38.636131, 39.008968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999565, 38.339554, 38.951321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129571, -0.077618, 0.988528,
		-0.744123, -0.666512, 0.045202,
		0.655357, -0.741443, -0.144118,
		34.196171, 38.117123, 38.908085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443127, 38.099995, 39.378136>,  <33.737423, 38.636131, 39.008968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443127, 38.099995, 39.378136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831425, 38.017372, 39.329174>,  <34.064404, 37.967800, 39.299797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831425, 38.017372, 39.329174>,  <33.443127, 38.099995, 39.378136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831425, 38.017372, 39.329174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053736, -0.309986, 0.949221,
		-0.234007, -0.928033, -0.289820,
		0.970749, -0.206551, -0.122407,
		34.122650, 37.955406, 39.292450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588413, 37.551956, 39.717705>,  <33.443127, 38.099995, 39.378136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588413, 37.551956, 39.717705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977020, 37.636421, 39.674675>,  <34.210182, 37.687099, 39.648857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977020, 37.636421, 39.674675>,  <33.588413, 37.551956, 39.717705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977020, 37.636421, 39.674675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186439, -0.400812, 0.896990,
		0.146291, -0.891494, -0.428762,
		0.971514, 0.211159, -0.107574,
		34.268475, 37.699768, 39.642403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030033, 36.922417, 40.014889>,  <33.588413, 37.551956, 39.717705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030033, 36.922417, 40.014889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260120, 37.248348, 40.043652>,  <34.398174, 37.443909, 40.060909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260120, 37.248348, 40.043652>,  <34.030033, 36.922417, 40.014889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260120, 37.248348, 40.043652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351013, -0.325282, 0.878055,
		0.738860, -0.479832, -0.473125,
		0.575218, 0.814833, 0.071910,
		34.432686, 37.492798, 40.065224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622715, 36.669968, 40.325298>,  <34.030033, 36.922417, 40.014889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622715, 36.669968, 40.325298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612015, 37.064671, 40.389286>,  <34.605595, 37.301495, 40.427681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612015, 37.064671, 40.389286>,  <34.622715, 36.669968, 40.325298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612015, 37.064671, 40.389286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302654, -0.144525, 0.942079,
		0.952725, 0.073615, -0.294781,
		-0.026748, 0.986759, 0.159972,
		34.603989, 37.360699, 40.437279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035797, 36.771893, 40.872623>,  <34.622715, 36.669968, 40.325298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035797, 36.771893, 40.872623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849850, 37.125538, 40.891525>,  <34.738281, 37.337727, 40.902866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849850, 37.125538, 40.891525>,  <35.035797, 36.771893, 40.872623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849850, 37.125538, 40.891525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078018, -0.094069, 0.992504,
		0.881935, 0.457699, 0.112707,
		-0.464870, 0.884117, 0.047254,
		34.710388, 37.390774, 40.905701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343143, 37.081013, 41.424110>,  <35.035797, 36.771893, 40.872623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343143, 37.081013, 41.424110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981560, 37.244766, 41.374680>,  <34.764610, 37.343018, 41.345020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981560, 37.244766, 41.374680>,  <35.343143, 37.081013, 41.424110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981560, 37.244766, 41.374680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096917, 0.085332, 0.991628,
		0.416501, 0.908363, -0.037460,
		-0.903955, 0.409384, -0.123577,
		34.710373, 37.367580, 41.337608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266918, 37.488277, 42.117260>,  <35.343143, 37.081013, 41.424110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266918, 37.488277, 42.117260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904625, 37.471493, 41.948555>,  <34.687248, 37.461422, 41.847332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904625, 37.471493, 41.948555>,  <35.266918, 37.488277, 42.117260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904625, 37.471493, 41.948555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419609, -0.051593, 0.906237,
		-0.059783, 0.997787, 0.029124,
		-0.905734, -0.041957, -0.421765,
		34.632904, 37.458904, 41.822025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969078, 37.902626, 42.519474>,  <35.266918, 37.488277, 42.117260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969078, 37.902626, 42.519474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696449, 37.674274, 42.336361>,  <34.532871, 37.537266, 42.226494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696449, 37.674274, 42.336361>,  <34.969078, 37.902626, 42.519474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696449, 37.674274, 42.336361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418532, -0.209045, 0.883816,
		-0.600246, 0.793978, -0.096451,
		-0.681568, -0.570875, -0.457784,
		34.491978, 37.503014, 42.199024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387135, 37.999805, 42.815117>,  <34.969078, 37.902626, 42.519474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387135, 37.999805, 42.815117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289223, 37.646832, 42.654427>,  <34.230476, 37.435047, 42.558010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289223, 37.646832, 42.654427>,  <34.387135, 37.999805, 42.815117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289223, 37.646832, 42.654427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500751, -0.239741, 0.831729,
		-0.830261, 0.404754, -0.383199,
		-0.244777, -0.882439, -0.401729,
		34.215790, 37.382099, 42.533909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711224, 37.919598, 43.040913>,  <34.387135, 37.999805, 42.815117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711224, 37.919598, 43.040913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861225, 37.560108, 42.949989>,  <33.951225, 37.344414, 42.895435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861225, 37.560108, 42.949989>,  <33.711224, 37.919598, 43.040913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861225, 37.560108, 42.949989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390545, -0.375545, 0.840500,
		-0.840741, -0.226419, -0.491823,
		0.375007, -0.898721, -0.227309,
		33.973728, 37.290493, 42.881798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160099, 37.454952, 43.231075>,  <33.711224, 37.919598, 43.040913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160099, 37.454952, 43.231075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475285, 37.209980, 43.205635>,  <33.664394, 37.062996, 43.190372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475285, 37.209980, 43.205635>,  <33.160099, 37.454952, 43.231075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475285, 37.209980, 43.205635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300507, -0.472667, 0.828421,
		-0.537412, -0.633652, -0.556484,
		0.787962, -0.612431, -0.063600,
		33.711674, 37.026253, 43.186554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909420, 36.732208, 43.224251>,  <33.160099, 37.454952, 43.231075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909420, 36.732208, 43.224251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296295, 36.714813, 43.324375>,  <33.528419, 36.704376, 43.384449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296295, 36.714813, 43.324375>,  <32.909420, 36.732208, 43.224251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296295, 36.714813, 43.324375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227272, -0.588455, 0.775930,
		0.113555, -0.807360, -0.579030,
		0.967188, -0.043487, 0.250313,
		33.586452, 36.701767, 43.399467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982769, 35.988159, 43.389362>,  <32.909420, 36.732208, 43.224251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982769, 35.988159, 43.389362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265335, 36.221401, 43.549843>,  <33.434875, 36.361347, 43.646133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265335, 36.221401, 43.549843>,  <32.982769, 35.988159, 43.389362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265335, 36.221401, 43.549843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008086, -0.573451, 0.819200,
		0.707748, -0.575454, -0.409811,
		0.706419, 0.583101, 0.401205,
		33.477261, 36.396332, 43.670204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600704, 35.526497, 43.565327>,  <32.982769, 35.988159, 43.389362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600704, 35.526497, 43.565327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612362, 35.854523, 43.793938>,  <33.619358, 36.051338, 43.931107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612362, 35.854523, 43.793938>,  <33.600704, 35.526497, 43.565327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612362, 35.854523, 43.793938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034741, -0.570596, 0.820496,
		0.998971, -0.043770, 0.011859,
		0.029147, 0.820064, 0.571529,
		33.621105, 36.100540, 43.965397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015240, 35.366379, 44.163364>,  <33.600704, 35.526497, 43.565327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015240, 35.366379, 44.163364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817345, 35.691643, 44.286003>,  <33.698608, 35.886803, 44.359585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817345, 35.691643, 44.286003>,  <34.015240, 35.366379, 44.163364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817345, 35.691643, 44.286003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168013, -0.435643, 0.884300,
		0.852644, 0.385988, 0.352152,
		-0.494742, 0.813160, 0.306597,
		33.668922, 35.935589, 44.377983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063736, 35.396568, 44.850422>,  <34.015240, 35.366379, 44.163364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063736, 35.396568, 44.850422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762936, 35.657539, 44.812843>,  <33.582455, 35.814121, 44.790295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762936, 35.657539, 44.812843>,  <34.063736, 35.396568, 44.850422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762936, 35.657539, 44.812843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356570, -0.282769, 0.890449,
		0.554393, 0.703118, 0.445280,
		-0.752002, 0.652432, -0.093945,
		33.537334, 35.853268, 44.784660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154110, 35.798386, 45.387001>,  <34.063736, 35.396568, 44.850422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154110, 35.798386, 45.387001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767220, 35.834721, 45.292160>,  <33.535084, 35.856522, 45.235256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767220, 35.834721, 45.292160>,  <34.154110, 35.798386, 45.387001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767220, 35.834721, 45.292160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251513, -0.214876, 0.943700,
		0.034773, 0.972408, 0.230681,
		-0.967229, 0.090834, -0.237102,
		33.477051, 35.861969, 45.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940437, 36.208916, 45.918102>,  <34.154110, 35.798386, 45.387001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940437, 36.208916, 45.918102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618149, 36.012329, 45.785877>,  <33.424774, 35.894375, 45.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618149, 36.012329, 45.785877>,  <33.940437, 36.208916, 45.918102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618149, 36.012329, 45.785877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300286, -0.142110, 0.943204,
		-0.510532, 0.859222, -0.033081,
		-0.805721, -0.491469, -0.330564,
		33.376434, 35.864887, 45.686707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379501, 36.544674, 46.245049>,  <33.940437, 36.208916, 45.918102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379501, 36.544674, 46.245049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272453, 36.175678, 46.133770>,  <33.208225, 35.954281, 46.067005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272453, 36.175678, 46.133770>,  <33.379501, 36.544674, 46.245049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272453, 36.175678, 46.133770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273725, -0.204040, 0.939916,
		-0.923826, 0.327689, -0.197904,
		-0.267620, -0.922490, -0.278195,
		33.192169, 35.898930, 46.050312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494514, 36.409134, 46.409889>,  <33.379501, 36.544674, 46.245049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494514, 36.409134, 46.409889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705502, 36.069557, 46.396767>,  <32.832092, 35.865810, 46.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705502, 36.069557, 46.396767>,  <32.494514, 36.409134, 46.409889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705502, 36.069557, 46.396767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212738, -0.169369, 0.962318,
		-0.822509, -0.500611, -0.269938,
		0.527466, -0.848942, -0.032809,
		32.863743, 35.814873, 46.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121387, 35.912304, 46.971756>,  <32.494514, 36.409134, 46.409889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121387, 35.912304, 46.971756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472260, 35.740547, 46.885803>,  <32.682785, 35.637493, 46.834232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472260, 35.740547, 46.885803>,  <32.121387, 35.912304, 46.971756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472260, 35.740547, 46.885803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106738, -0.261954, 0.959160,
		-0.468143, -0.864294, -0.183949,
		0.877182, -0.429390, -0.214885,
		32.735413, 35.611732, 46.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060070, 35.346226, 47.304497>,  <32.121387, 35.912304, 46.971756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060070, 35.346226, 47.304497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455654, 35.347206, 47.245228>,  <32.693005, 35.347794, 47.209667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455654, 35.347206, 47.245228>,  <32.060070, 35.346226, 47.304497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455654, 35.347206, 47.245228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138961, -0.362716, 0.921481,
		-0.051482, -0.931896, -0.359052,
		0.988958, 0.002455, -0.148171,
		32.752342, 35.347942, 47.200775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354301, 34.697365, 47.482700>,  <32.060070, 35.346226, 47.304497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354301, 34.697365, 47.482700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673283, 34.936035, 47.518570>,  <32.864674, 35.079239, 47.540092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673283, 34.936035, 47.518570>,  <32.354301, 34.697365, 47.482700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673283, 34.936035, 47.518570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194461, -0.394842, 0.897934,
		0.571183, -0.698624, -0.430899,
		0.797455, 0.596677, 0.089672,
		32.912518, 35.115040, 47.545471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996998, 34.285923, 47.531342>,  <32.354301, 34.697365, 47.482700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996998, 34.285923, 47.531342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052731, 34.639141, 47.710590>,  <33.086170, 34.851070, 47.818142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052731, 34.639141, 47.710590>,  <32.996998, 34.285923, 47.531342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052731, 34.639141, 47.710590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140937, -0.465616, 0.873692,
		0.980165, -0.058578, -0.189330,
		0.139334, 0.883046, 0.448125,
		33.094532, 34.904057, 47.845028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259659, 34.029713, 48.129402>,  <32.996998, 34.285923, 47.531342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259659, 34.029713, 48.129402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199791, 34.420967, 48.187172>,  <33.163872, 34.655720, 48.221832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199791, 34.420967, 48.187172>,  <33.259659, 34.029713, 48.129402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199791, 34.420967, 48.187172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352617, -0.083657, 0.932021,
		0.923722, 0.190417, -0.332385,
		-0.149666, 0.978132, 0.144420,
		33.154892, 34.714405, 48.230499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770416, 34.261372, 48.450981>,  <33.259659, 34.029713, 48.129402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770416, 34.261372, 48.450981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517715, 34.561489, 48.528896>,  <33.366096, 34.741562, 48.575645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517715, 34.561489, 48.528896>,  <33.770416, 34.261372, 48.450981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517715, 34.561489, 48.528896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194919, -0.089454, 0.976731,
		0.750264, 0.655021, -0.089734,
		-0.631752, 0.750297, 0.194790,
		33.328190, 34.786579, 48.587334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063892, 34.349918, 49.055260>,  <33.770416, 34.261372, 48.450981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063892, 34.349918, 49.055260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746307, 34.593060, 49.050568>,  <33.555756, 34.738945, 49.047752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746307, 34.593060, 49.050568>,  <34.063892, 34.349918, 49.055260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746307, 34.593060, 49.050568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047392, 0.081110, 0.995578,
		0.606119, 0.789894, -0.093206,
		-0.793961, 0.607856, -0.011727,
		33.508118, 34.775417, 49.047050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188103, 34.963795, 49.395313>,  <34.063892, 34.349918, 49.055260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188103, 34.963795, 49.395313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790073, 34.927277, 49.410725>,  <33.551254, 34.905365, 49.419971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790073, 34.927277, 49.410725>,  <34.188103, 34.963795, 49.395313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790073, 34.927277, 49.410725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044700, -0.066522, 0.996783,
		-0.088441, 0.993599, 0.070276,
		-0.995078, -0.091297, 0.038530,
		33.491550, 34.899887, 49.422283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859940, 35.484180, 49.845715>,  <34.188103, 34.963795, 49.395313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859940, 35.484180, 49.845715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584885, 35.193970, 49.856716>,  <33.419849, 35.019844, 49.863319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584885, 35.193970, 49.856716>,  <33.859940, 35.484180, 49.845715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584885, 35.193970, 49.856716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029197, 0.065488, 0.997426,
		-0.725464, 0.685067, -0.066215,
		-0.687640, -0.725530, 0.027507,
		33.378593, 34.976311, 49.864967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432816, 35.675770, 50.390079>,  <33.859940, 35.484180, 49.845715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432816, 35.675770, 50.390079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329681, 35.291809, 50.346069>,  <33.267799, 35.061432, 50.319664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329681, 35.291809, 50.346069>,  <33.432816, 35.675770, 50.390079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329681, 35.291809, 50.346069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059320, -0.129391, 0.989818,
		-0.964366, 0.248684, 0.090303,
		-0.257836, -0.959904, -0.110028,
		33.252331, 35.003838, 50.313061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798138, 35.597061, 50.793961>,  <33.432816, 35.675770, 50.390079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798138, 35.597061, 50.793961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042618, 35.288876, 50.721497>,  <33.189308, 35.103966, 50.678017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042618, 35.288876, 50.721497>,  <32.798138, 35.597061, 50.793961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042618, 35.288876, 50.721497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052153, -0.189187, 0.980555,
		-0.789752, -0.608768, -0.075451,
		0.611205, -0.770461, -0.181160,
		33.225979, 35.057739, 50.667149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651882, 34.918064, 50.965672>,  <32.798138, 35.597061, 50.793961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651882, 34.918064, 50.965672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049374, 34.949139, 50.997852>,  <33.287868, 34.967785, 51.017162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049374, 34.949139, 50.997852>,  <32.651882, 34.918064, 50.965672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049374, 34.949139, 50.997852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053794, -0.298679, 0.952836,
		0.098053, -0.951186, -0.292627,
		0.993726, 0.077687, 0.080455,
		33.347492, 34.972446, 51.021988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961304, 34.302650, 51.247299>,  <32.651882, 34.918064, 50.965672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961304, 34.302650, 51.247299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219448, 34.586948, 51.359264>,  <33.374332, 34.757526, 51.426445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219448, 34.586948, 51.359264>,  <32.961304, 34.302650, 51.247299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219448, 34.586948, 51.359264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020833, -0.382674, 0.923648,
		0.763596, -0.590252, -0.261769,
		0.645358, 0.710748, 0.279912,
		33.413055, 34.800171, 51.443237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550266, 34.296272, 50.706066>,  <32.961304, 34.302650, 51.247299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550266, 34.296272, 50.706066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838760, 34.549835, 50.817768>,  <34.011856, 34.701973, 50.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838760, 34.549835, 50.817768>,  <33.550266, 34.296272, 50.706066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838760, 34.549835, 50.817768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670881, 0.538866, 0.509452,
		0.172465, -0.554781, 0.813925,
		0.721231, 0.633909, 0.279257,
		34.055130, 34.740009, 50.901546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679108, 34.277298, 51.404366>,  <33.550266, 34.296272, 50.706066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679108, 34.277298, 51.404366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787033, 34.656410, 51.336346>,  <33.851788, 34.883877, 51.295532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787033, 34.656410, 51.336346>,  <33.679108, 34.277298, 51.404366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787033, 34.656410, 51.336346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643886, 0.308894, 0.699996,
		0.715970, -0.079372, 0.693604,
		0.269811, 0.947779, -0.170052,
		33.867977, 34.940742, 51.285332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866291, 33.531200, 51.172997>,  <33.679108, 34.277298, 51.404366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866291, 33.531200, 51.172997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133488, 33.241920, 51.243156>,  <34.293804, 33.068352, 51.285252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133488, 33.241920, 51.243156>,  <33.866291, 33.531200, 51.172997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133488, 33.241920, 51.243156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024522, 0.256957, 0.966112,
		-0.743765, -0.641053, 0.189379,
		0.667991, -0.723204, 0.175396,
		34.333885, 33.024960, 51.295776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648399, 33.049973, 51.586555>,  <33.866291, 33.531200, 51.172997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648399, 33.049973, 51.586555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043747, 33.028000, 51.643276>,  <34.280956, 33.014816, 51.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043747, 33.028000, 51.643276>,  <33.648399, 33.049973, 51.586555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043747, 33.028000, 51.643276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128601, 0.195693, 0.972196,
		-0.081151, -0.979126, 0.186353,
		0.988370, -0.054930, 0.141797,
		34.340260, 33.011520, 51.685814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053799, 33.030624, 51.169910>,  <33.648399, 33.049973, 51.586555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053799, 33.030624, 51.169910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840931, 32.715607, 51.045605>,  <32.713211, 32.526596, 50.971020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840931, 32.715607, 51.045605>,  <33.053799, 33.030624, 51.169910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840931, 32.715607, 51.045605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760174, -0.282863, -0.584915,
		0.372740, -0.547508, 0.749199,
		-0.532166, -0.787542, -0.310767,
		32.681282, 32.479343, 50.952374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417816, 32.330093, 51.238857>,  <33.053799, 33.030624, 51.169910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417816, 32.330093, 51.238857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169430, 32.339848, 50.925472>,  <33.020397, 32.345699, 50.737442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169430, 32.339848, 50.925472>,  <33.417816, 32.330093, 51.238857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169430, 32.339848, 50.925472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744365, -0.294847, -0.599155,
		-0.245610, -0.955233, 0.164939,
		-0.620964, 0.024384, -0.783459,
		32.983139, 32.347164, 50.690434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550404, 31.685949, 50.848362>,  <33.417816, 32.330093, 51.238857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550404, 31.685949, 50.848362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381088, 31.942381, 50.592285>,  <33.279499, 32.096241, 50.438641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381088, 31.942381, 50.592285>,  <33.550404, 31.685949, 50.848362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381088, 31.942381, 50.592285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668900, -0.255454, -0.698079,
		-0.611064, -0.723712, -0.320688,
		-0.423288, 0.641080, -0.640190,
		33.254101, 32.134705, 50.400227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600941, 31.423868, 50.229420>,  <33.550404, 31.685949, 50.848362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600941, 31.423868, 50.229420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573654, 31.816841, 50.159935>,  <33.557281, 32.052624, 50.118244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573654, 31.816841, 50.159935>,  <33.600941, 31.423868, 50.229420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573654, 31.816841, 50.159935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685971, -0.080242, -0.723191,
		-0.724424, -0.168490, -0.668446,
		-0.068213, 0.982432, -0.173709,
		33.553188, 32.111572, 50.107822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608856, 31.393578, 49.594772>,  <33.600941, 31.423868, 50.229420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608856, 31.393578, 49.594772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703259, 31.770338, 49.690376>,  <33.759899, 31.996393, 49.747738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703259, 31.770338, 49.690376>,  <33.608856, 31.393578, 49.594772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703259, 31.770338, 49.690376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797925, -0.047461, -0.600885,
		-0.554630, 0.332524, -0.762767,
		0.236010, 0.941900, 0.239007,
		33.774063, 32.052910, 49.762077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707874, 31.725817, 48.912071>,  <33.608856, 31.393578, 49.594772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707874, 31.725817, 48.912071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904274, 31.947157, 49.181213>,  <34.022114, 32.079960, 49.342697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904274, 31.947157, 49.181213>,  <33.707874, 31.725817, 48.912071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904274, 31.947157, 49.181213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757952, 0.109405, -0.643070,
		-0.429456, 0.825733, -0.365696,
		0.490995, 0.553350, 0.672851,
		34.051571, 32.113163, 49.383068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810661, 32.413330, 48.587849>,  <33.707874, 31.725817, 48.912071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810661, 32.413330, 48.587849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084209, 32.379684, 48.877743>,  <34.248337, 32.359497, 49.051682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084209, 32.379684, 48.877743>,  <33.810661, 32.413330, 48.587849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084209, 32.379684, 48.877743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722538, 0.216003, -0.656721,
		-0.101304, 0.972762, 0.208497,
		0.683869, -0.084119, 0.724739,
		34.289371, 32.354450, 49.095165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150429, 33.020813, 48.555260>,  <33.810661, 32.413330, 48.587849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150429, 33.020813, 48.555260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398605, 32.749283, 48.712353>,  <34.547512, 32.586365, 48.806610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398605, 32.749283, 48.712353>,  <34.150429, 33.020813, 48.555260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398605, 32.749283, 48.712353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726291, 0.308412, -0.614315,
		0.295891, 0.666387, 0.684380,
		0.620443, -0.678830, 0.392735,
		34.584740, 32.545635, 48.830173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752575, 33.332226, 48.808475>,  <34.150429, 33.020813, 48.555260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752575, 33.332226, 48.808475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869900, 32.957817, 48.730671>,  <34.940292, 32.733173, 48.683987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869900, 32.957817, 48.730671>,  <34.752575, 33.332226, 48.808475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869900, 32.957817, 48.730671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820929, 0.350866, -0.450520,
		0.489944, -0.027539, 0.871319,
		0.293310, -0.936021, -0.194512,
		34.957893, 32.677010, 48.672318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451096, 33.412598, 48.788799>,  <34.752575, 33.332226, 48.808475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451096, 33.412598, 48.788799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406517, 33.041969, 48.645103>,  <35.379772, 32.819592, 48.558887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406517, 33.041969, 48.645103>,  <35.451096, 33.412598, 48.788799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406517, 33.041969, 48.645103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778050, 0.143538, -0.611584,
		0.618238, -0.347664, 0.704920,
		-0.111443, -0.926567, -0.359240,
		35.373085, 32.764000, 48.537331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094891, 33.191505, 48.551746>,  <35.451096, 33.412598, 48.788799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094891, 33.191505, 48.551746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827183, 32.967392, 48.356537>,  <35.666557, 32.832924, 48.239410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827183, 32.967392, 48.356537>,  <36.094891, 33.191505, 48.551746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827183, 32.967392, 48.356537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470208, 0.189189, -0.862040,
		0.575313, -0.806407, 0.136830,
		-0.669268, -0.560281, -0.488022,
		35.626404, 32.799309, 48.210129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477943, 32.794662, 48.205540>,  <36.094891, 33.191505, 48.551746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477943, 32.794662, 48.205540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116001, 32.777428, 48.036129>,  <35.898834, 32.767086, 47.934483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116001, 32.777428, 48.036129>,  <36.477943, 32.794662, 48.205540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116001, 32.777428, 48.036129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420303, 0.067633, -0.904860,
		0.067633, -0.996779, -0.043088,
		0.904860, 0.043088, 0.423524,
		35.844543, 32.764500, 47.909073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491608, 32.165783, 47.649376>,  <36.477943, 32.794662, 48.205540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491608, 32.165783, 47.649376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220131, 32.449875, 47.574596>,  <36.057247, 32.620331, 47.529728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220131, 32.449875, 47.574596>,  <36.491608, 32.165783, 47.649376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220131, 32.449875, 47.574596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360845, 0.100773, -0.927165,
		-0.639665, -0.696716, -0.324678,
		-0.678690, 0.710233, -0.186945,
		36.016525, 32.662945, 47.518513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445290, 32.089783, 46.982533>,  <36.491608, 32.165783, 47.649376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445290, 32.089783, 46.982533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226532, 32.422329, 47.021999>,  <36.095276, 32.621857, 47.045681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226532, 32.422329, 47.021999>,  <36.445290, 32.089783, 46.982533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226532, 32.422329, 47.021999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266123, 0.284375, -0.921037,
		-0.793779, -0.477452, -0.376768,
		-0.546895, 0.831367, 0.098670,
		36.062462, 32.671738, 47.051601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992119, 32.089714, 46.404430>,  <36.445290, 32.089783, 46.982533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992119, 32.089714, 46.404430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049877, 32.465092, 46.529957>,  <36.084534, 32.690319, 46.605274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049877, 32.465092, 46.529957>,  <35.992119, 32.089714, 46.404430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049877, 32.465092, 46.529957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290980, 0.262848, -0.919914,
		-0.945770, 0.224147, -0.235112,
		0.144397, 0.938440, 0.313816,
		36.093197, 32.746624, 46.624100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873322, 32.437511, 45.845024>,  <35.992119, 32.089714, 46.404430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873322, 32.437511, 45.845024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081001, 32.721279, 46.035671>,  <36.205608, 32.891541, 46.150059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081001, 32.721279, 46.035671>,  <35.873322, 32.437511, 45.845024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081001, 32.721279, 46.035671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259146, 0.400739, -0.878778,
		-0.814419, 0.579771, 0.024220,
		0.519196, 0.709418, 0.476615,
		36.236759, 32.934105, 46.178658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672485, 33.020435, 45.544159>,  <35.873322, 32.437511, 45.845024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672485, 33.020435, 45.544159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022663, 33.152172, 45.685654>,  <36.232769, 33.231213, 45.770550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022663, 33.152172, 45.685654>,  <35.672485, 33.020435, 45.544159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022663, 33.152172, 45.685654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170186, 0.474965, -0.863391,
		-0.452359, 0.816055, 0.359758,
		0.875447, 0.329337, 0.353736,
		36.285297, 33.250973, 45.791775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646629, 33.742588, 45.513912>,  <35.672485, 33.020435, 45.544159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646629, 33.742588, 45.513912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034847, 33.647144, 45.527252>,  <36.267776, 33.589878, 45.535255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034847, 33.647144, 45.527252>,  <35.646629, 33.742588, 45.513912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034847, 33.647144, 45.527252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163021, 0.548482, -0.820117,
		0.177394, 0.801396, 0.571223,
		0.970544, -0.238605, 0.033348,
		36.326012, 33.575562, 45.537258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063904, 34.358772, 45.502785>,  <35.646629, 33.742588, 45.513912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063904, 34.358772, 45.502785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323849, 34.095886, 45.350082>,  <36.479816, 33.938152, 45.258461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323849, 34.095886, 45.350082>,  <36.063904, 34.358772, 45.502785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323849, 34.095886, 45.350082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104984, 0.575082, -0.811332,
		0.752763, 0.487179, 0.442724,
		0.649866, -0.657220, -0.381754,
		36.518810, 33.898720, 45.235558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567913, 34.747364, 45.171551>,  <36.063904, 34.358772, 45.502785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567913, 34.747364, 45.171551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609192, 34.393364, 44.989948>,  <36.633961, 34.180962, 44.880989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609192, 34.393364, 44.989948>,  <36.567913, 34.747364, 45.171551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609192, 34.393364, 44.989948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086153, 0.462678, -0.882331,
		0.990922, 0.051944, 0.123995,
		0.103201, -0.885004, -0.454003,
		36.640152, 34.127861, 44.853748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070644, 34.897945, 44.730419>,  <36.567913, 34.747364, 45.171551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070644, 34.897945, 44.730419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904697, 34.562370, 44.589527>,  <36.805130, 34.361023, 44.504993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904697, 34.562370, 44.589527>,  <37.070644, 34.897945, 44.730419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904697, 34.562370, 44.589527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285052, 0.247789, -0.925930,
		0.864080, -0.484537, 0.136344,
		-0.414863, -0.838942, -0.352228,
		36.780239, 34.310688, 44.483860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584511, 34.582790, 44.313572>,  <37.070644, 34.897945, 44.730419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584511, 34.582790, 44.313572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218124, 34.468914, 44.200470>,  <36.998291, 34.400589, 44.132607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218124, 34.468914, 44.200470>,  <37.584511, 34.582790, 44.313572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218124, 34.468914, 44.200470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162575, 0.380944, -0.910193,
		0.366822, -0.879683, -0.302655,
		-0.915975, -0.284674, -0.282753,
		36.943333, 34.383507, 44.115643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720058, 34.257240, 43.582432>,  <37.584511, 34.582790, 44.313572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720058, 34.257240, 43.582432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324879, 34.315044, 43.604591>,  <37.087769, 34.349728, 43.617886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324879, 34.315044, 43.604591>,  <37.720058, 34.257240, 43.582432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324879, 34.315044, 43.604591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016289, 0.258865, -0.965776,
		-0.153904, -0.955043, -0.253392,
		-0.987951, 0.144509, 0.055397,
		37.028492, 34.358398, 43.621212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399139, 33.995941, 42.956329>,  <37.720058, 34.257240, 43.582432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399139, 33.995941, 42.956329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102837, 34.221283, 43.102699>,  <36.925053, 34.356487, 43.190521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102837, 34.221283, 43.102699>,  <37.399139, 33.995941, 42.956329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102837, 34.221283, 43.102699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186253, 0.351132, -0.917614,
		-0.645435, -0.747886, -0.155177,
		-0.740759, 0.563357, 0.365929,
		36.880608, 34.390289, 43.212479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679794, 33.959431, 42.546238>,  <37.399139, 33.995941, 42.956329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679794, 33.959431, 42.546238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661144, 34.311214, 42.735710>,  <36.649952, 34.522285, 42.849392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661144, 34.311214, 42.735710>,  <36.679794, 33.959431, 42.546238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661144, 34.311214, 42.735710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136792, 0.464105, -0.875154,
		-0.989502, -0.105603, 0.098663,
		-0.046629, 0.879463, 0.473678,
		36.647156, 34.575054, 42.877815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012890, 34.302776, 42.413780>,  <36.679794, 33.959431, 42.546238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012890, 34.302776, 42.413780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255352, 34.598431, 42.531254>,  <36.400829, 34.775822, 42.601738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255352, 34.598431, 42.531254>,  <36.012890, 34.302776, 42.413780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255352, 34.598431, 42.531254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334510, 0.571935, -0.748995,
		-0.721578, 0.355768, 0.593931,
		0.606158, 0.739134, 0.293688,
		36.437199, 34.820171, 42.619362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630947, 34.934601, 42.233173>,  <36.012890, 34.302776, 42.413780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630947, 34.934601, 42.233173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001045, 35.075733, 42.288925>,  <36.223106, 35.160412, 42.322376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001045, 35.075733, 42.288925>,  <35.630947, 34.934601, 42.233173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001045, 35.075733, 42.288925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190325, 0.749546, -0.634001,
		-0.328169, 0.560080, 0.760668,
		0.925247, 0.352833, 0.139380,
		36.278618, 35.181583, 42.330738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503059, 35.637180, 42.203255>,  <35.630947, 34.934601, 42.233173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503059, 35.637180, 42.203255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887074, 35.564369, 42.118225>,  <36.117481, 35.520683, 42.067207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887074, 35.564369, 42.118225>,  <35.503059, 35.637180, 42.203255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887074, 35.564369, 42.118225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054021, 0.624752, -0.778953,
		0.274601, 0.759309, 0.589953,
		0.960040, -0.182031, -0.212576,
		36.175087, 35.509758, 42.054451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685165, 36.223049, 41.991283>,  <35.503059, 35.637180, 42.203255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685165, 36.223049, 41.991283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970810, 35.980045, 41.852154>,  <36.142197, 35.834244, 41.768677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970810, 35.980045, 41.852154>,  <35.685165, 36.223049, 41.991283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970810, 35.980045, 41.852154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082350, 0.566319, -0.820062,
		0.695171, 0.556973, 0.454443,
		0.714112, -0.607507, -0.347821,
		36.185043, 35.797794, 41.747807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086586, 36.684654, 41.609379>,  <35.685165, 36.223049, 41.991283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086586, 36.684654, 41.609379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184307, 36.311646, 41.503002>,  <36.242939, 36.087841, 41.439178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184307, 36.311646, 41.503002>,  <36.086586, 36.684654, 41.609379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184307, 36.311646, 41.503002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030480, 0.266729, -0.963290,
		0.969220, 0.243440, 0.036740,
		0.244303, -0.932520, -0.265939,
		36.257599, 36.031891, 41.423222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543842, 36.698830, 41.017384>,  <36.086586, 36.684654, 41.609379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543842, 36.698830, 41.017384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412888, 36.321896, 40.989613>,  <36.334316, 36.095734, 40.972950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412888, 36.321896, 40.989613>,  <36.543842, 36.698830, 41.017384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412888, 36.321896, 40.989613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217218, 0.146565, -0.965057,
		0.919585, -0.300863, -0.252676,
		-0.327384, -0.942338, -0.069426,
		36.314671, 36.039196, 40.968784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033905, 36.384045, 40.682888>,  <36.543842, 36.698830, 41.017384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033905, 36.384045, 40.682888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692566, 36.183323, 40.626331>,  <36.487762, 36.062889, 40.592396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692566, 36.183323, 40.626331>,  <37.033905, 36.384045, 40.682888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692566, 36.183323, 40.626331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113433, 0.085998, -0.989817,
		0.508857, -0.860693, -0.016465,
		-0.853345, -0.501808, -0.141392,
		36.436562, 36.032780, 40.583916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192680, 35.933990, 40.169170>,  <37.033905, 36.384045, 40.682888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192680, 35.933990, 40.169170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794632, 35.897552, 40.154057>,  <36.555801, 35.875690, 40.144989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794632, 35.897552, 40.154057>,  <37.192680, 35.933990, 40.169170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794632, 35.897552, 40.154057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045512, -0.084311, -0.995400,
		0.087492, -0.992266, 0.088046,
		-0.995125, -0.091097, -0.037784,
		36.496094, 35.870224, 40.142723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005058, 35.340134, 39.684246>,  <37.192680, 35.933990, 40.169170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005058, 35.340134, 39.684246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690628, 35.586514, 39.705025>,  <36.501972, 35.734341, 39.717491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690628, 35.586514, 39.705025>,  <37.005058, 35.340134, 39.684246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690628, 35.586514, 39.705025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172445, -0.137819, -0.975330,
		-0.593594, -0.775637, 0.214553,
		-0.786072, 0.615949, 0.051947,
		36.454807, 35.771297, 39.720608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621891, 34.953743, 39.285236>,  <37.005058, 35.340134, 39.684246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621891, 34.953743, 39.285236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483273, 35.328896, 39.292103>,  <36.400101, 35.553986, 39.296223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483273, 35.328896, 39.292103>,  <36.621891, 34.953743, 39.285236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483273, 35.328896, 39.292103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147808, -0.036522, -0.988341,
		-0.926316, -0.345040, 0.151282,
		-0.346543, 0.937877, 0.017168,
		36.379311, 35.610260, 39.297253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138298, 34.935192, 38.772209>,  <36.621891, 34.953743, 39.285236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138298, 34.935192, 38.772209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205513, 35.326118, 38.823780>,  <36.245842, 35.560673, 38.854721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205513, 35.326118, 38.823780>,  <36.138298, 34.935192, 38.772209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205513, 35.326118, 38.823780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112659, 0.148970, -0.982403,
		-0.979322, 0.150555, 0.135135,
		0.168036, 0.977313, 0.128928,
		36.255924, 35.619312, 38.862457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693565, 35.244411, 38.332458>,  <36.138298, 34.935192, 38.772209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693565, 35.244411, 38.332458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973053, 35.520920, 38.406143>,  <36.140747, 35.686825, 38.450352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973053, 35.520920, 38.406143>,  <35.693565, 35.244411, 38.332458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973053, 35.520920, 38.406143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155292, 0.104795, -0.982294,
		-0.698336, 0.714956, -0.034127,
		0.698721, 0.691271, 0.184209,
		36.182671, 35.728302, 38.461407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459911, 35.842571, 37.959393>,  <35.693565, 35.244411, 38.332458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459911, 35.842571, 37.959393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844707, 35.910545, 38.044895>,  <36.075584, 35.951332, 38.096195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844707, 35.910545, 38.044895>,  <35.459911, 35.842571, 37.959393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844707, 35.910545, 38.044895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173459, 0.224301, -0.958958,
		-0.210908, 0.959589, 0.186299,
		0.961992, 0.169937, 0.213756,
		36.133305, 35.961525, 38.109020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573441, 36.532330, 37.654209>,  <35.459911, 35.842571, 37.959393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573441, 36.532330, 37.654209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927719, 36.350636, 37.692616>,  <36.140285, 36.241619, 37.715660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927719, 36.350636, 37.692616>,  <35.573441, 36.532330, 37.654209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927719, 36.350636, 37.692616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256780, 0.306970, -0.916424,
		0.386796, 0.836326, 0.388520,
		0.885693, -0.454234, 0.096017,
		36.193428, 36.214367, 37.721420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164364, 37.018982, 37.449532>,  <35.573441, 36.532330, 37.654209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164364, 37.018982, 37.449532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338375, 36.660767, 37.412102>,  <36.442783, 36.445835, 37.389645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338375, 36.660767, 37.412102>,  <36.164364, 37.018982, 37.449532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338375, 36.660767, 37.412102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570606, 0.354582, -0.740730,
		0.696534, 0.268846, 0.665254,
		0.435029, -0.895541, -0.093573,
		36.468884, 36.392105, 37.384029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945377, 37.181282, 37.218136>,  <36.164364, 37.018982, 37.449532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945377, 37.181282, 37.218136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868645, 36.795101, 37.147598>,  <36.822605, 36.563393, 37.105274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868645, 36.795101, 37.147598>,  <36.945377, 37.181282, 37.218136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868645, 36.795101, 37.147598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618402, 0.020619, -0.785592,
		0.762089, -0.259754, 0.593084,
		-0.191832, -0.965455, -0.176346,
		36.811096, 36.505466, 37.094696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563419, 36.851555, 37.138176>,  <36.945377, 37.181282, 37.218136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563419, 36.851555, 37.138176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312504, 36.596703, 36.959034>,  <37.161953, 36.443790, 36.851547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312504, 36.596703, 36.959034>,  <37.563419, 36.851555, 37.138176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312504, 36.596703, 36.959034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584740, -0.005496, -0.811202,
		0.514378, -0.770739, 0.376001,
		-0.627292, -0.637127, -0.447855,
		37.124317, 36.405563, 36.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007607, 36.363415, 36.847183>,  <37.563419, 36.851555, 37.138176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007607, 36.363415, 36.847183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669121, 36.316181, 36.639347>,  <37.466030, 36.287842, 36.514645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669121, 36.316181, 36.639347>,  <38.007607, 36.363415, 36.847183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669121, 36.316181, 36.639347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532501, -0.221996, -0.816799,
		-0.018894, -0.967871, 0.250738,
		-0.846219, -0.118085, -0.519586,
		37.415257, 36.280754, 36.483471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670589, 36.009926, 37.149048>,  <38.007607, 36.363415, 36.847183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670589, 36.009926, 37.149048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039196, 35.913090, 37.027588>,  <39.260361, 35.854988, 36.954712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039196, 35.913090, 37.027588>,  <38.670589, 36.009926, 37.149048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039196, 35.913090, 37.027588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237796, -0.266415, 0.934064,
		-0.307025, -0.932960, -0.187937,
		0.921514, -0.242090, -0.303651,
		39.315651, 35.840462, 36.936493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899845, 35.273308, 37.297916>,  <38.670589, 36.009926, 37.149048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899845, 35.273308, 37.297916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253597, 35.458637, 37.275288>,  <39.465851, 35.569836, 37.261711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253597, 35.458637, 37.275288>,  <38.899845, 35.273308, 37.297916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253597, 35.458637, 37.275288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207395, -0.281474, 0.936889,
		0.418156, -0.840301, -0.345021,
		0.884383, 0.463321, -0.056574,
		39.518913, 35.597633, 37.258316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329777, 34.832214, 37.635216>,  <38.899845, 35.273308, 37.297916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329777, 34.832214, 37.635216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539047, 35.170559, 37.593628>,  <39.664612, 35.373566, 37.568676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539047, 35.170559, 37.593628>,  <39.329777, 34.832214, 37.635216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539047, 35.170559, 37.593628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353596, -0.104451, 0.929548,
		0.775405, -0.523083, -0.353739,
		0.523179, 0.845857, -0.103968,
		39.695999, 35.424316, 37.562439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983326, 34.593506, 37.852753>,  <39.329777, 34.832214, 37.635216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983326, 34.593506, 37.852753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931564, 34.983669, 37.924122>,  <39.900505, 35.217766, 37.966942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931564, 34.983669, 37.924122>,  <39.983326, 34.593506, 37.852753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931564, 34.983669, 37.924122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293188, -0.134252, 0.946582,
		0.947256, 0.174805, -0.268605,
		-0.129406, 0.975408, 0.178421,
		39.892742, 35.276291, 37.977650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596085, 34.773251, 38.009937>,  <39.983326, 34.593506, 37.852753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596085, 34.773251, 38.009937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354321, 35.046497, 38.173908>,  <40.209263, 35.210445, 38.272289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354321, 35.046497, 38.173908>,  <40.596085, 34.773251, 38.009937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354321, 35.046497, 38.173908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456285, -0.124963, 0.881016,
		0.653061, 0.719539, -0.236167,
		-0.604413, 0.683117, 0.409923,
		40.172997, 35.251431, 38.296886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028152, 35.031605, 38.473148>,  <40.596085, 34.773251, 38.009937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028152, 35.031605, 38.473148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669479, 35.154892, 38.600246>,  <40.454277, 35.228863, 38.676506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669479, 35.154892, 38.600246>,  <41.028152, 35.031605, 38.473148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669479, 35.154892, 38.600246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266250, -0.197950, 0.943359,
		0.353657, 0.930494, 0.095436,
		-0.896682, 0.308216, 0.317750,
		40.400475, 35.247356, 38.695572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119156, 35.423763, 39.042233>,  <41.028152, 35.031605, 38.473148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119156, 35.423763, 39.042233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736965, 35.320290, 39.098999>,  <40.507648, 35.258205, 39.133060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736965, 35.320290, 39.098999>,  <41.119156, 35.423763, 39.042233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736965, 35.320290, 39.098999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175792, -0.112790, 0.977945,
		-0.236974, 0.959354, 0.153244,
		-0.955479, -0.258687, 0.141918,
		40.450321, 35.242683, 39.141575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914257, 35.790543, 39.607555>,  <41.119156, 35.423763, 39.042233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914257, 35.790543, 39.607555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658810, 35.483543, 39.585197>,  <40.505543, 35.299343, 39.571781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658810, 35.483543, 39.585197>,  <40.914257, 35.790543, 39.607555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658810, 35.483543, 39.585197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168692, -0.210493, 0.962931,
		-0.750809, 0.605513, 0.263894,
		-0.638615, -0.767494, -0.055895,
		40.467224, 35.253296, 39.568428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473324, 35.887344, 40.153877>,  <40.914257, 35.790543, 39.607555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473324, 35.887344, 40.153877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443798, 35.497231, 40.070576>,  <40.426083, 35.263161, 40.020596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443798, 35.497231, 40.070576>,  <40.473324, 35.887344, 40.153877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443798, 35.497231, 40.070576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002419, -0.208648, 0.977988,
		-0.997269, 0.072695, 0.013043,
		-0.073816, -0.975285, -0.208254,
		40.421654, 35.204643, 40.008099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843430, 35.638546, 40.488380>,  <40.473324, 35.887344, 40.153877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843430, 35.638546, 40.488380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072933, 35.320370, 40.410332>,  <40.210636, 35.129463, 40.363503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072933, 35.320370, 40.410332>,  <39.843430, 35.638546, 40.488380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072933, 35.320370, 40.410332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012519, -0.246727, 0.969004,
		-0.818930, -0.553530, -0.151520,
		0.573757, -0.795443, -0.195123,
		40.245060, 35.081738, 40.351795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456631, 35.021282, 40.766811>,  <39.843430, 35.638546, 40.488380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456631, 35.021282, 40.766811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846565, 34.936771, 40.738373>,  <40.080524, 34.886066, 40.721310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846565, 34.936771, 40.738373>,  <39.456631, 35.021282, 40.766811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846565, 34.936771, 40.738373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002624, -0.329791, 0.944050,
		-0.222898, -0.920110, -0.322048,
		0.974838, -0.211272, -0.071095,
		40.139015, 34.873390, 40.717045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541492, 34.274841, 40.988514>,  <39.456631, 35.021282, 40.766811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541492, 34.274841, 40.988514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890350, 34.456921, 41.060253>,  <40.099667, 34.566166, 41.103294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890350, 34.456921, 41.060253>,  <39.541492, 34.274841, 40.988514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890350, 34.456921, 41.060253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029916, -0.415498, 0.909102,
		0.488335, -0.787502, -0.375991,
		0.872144, 0.455194, 0.179343,
		40.151993, 34.593479, 41.114056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111671, 33.726242, 41.208164>,  <39.541492, 34.274841, 40.988514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111671, 33.726242, 41.208164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231026, 34.077053, 41.358780>,  <40.302639, 34.287540, 41.449150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231026, 34.077053, 41.358780>,  <40.111671, 33.726242, 41.208164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231026, 34.077053, 41.358780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089105, -0.418390, 0.903886,
		0.950276, -0.236158, -0.202991,
		0.298389, 0.877029, 0.376543,
		40.320541, 34.340160, 41.471745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716969, 33.566589, 41.736523>,  <40.111671, 33.726242, 41.208164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716969, 33.566589, 41.736523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630661, 33.946697, 41.826344>,  <40.578876, 34.174763, 41.880238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630661, 33.946697, 41.826344>,  <40.716969, 33.566589, 41.736523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630661, 33.946697, 41.826344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171490, -0.189520, 0.966785,
		0.961267, 0.247112, -0.122069,
		-0.215769, 0.950273, 0.224557,
		40.565929, 34.231777, 41.893711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200096, 33.885010, 42.192307>,  <40.716969, 33.566589, 41.736523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200096, 33.885010, 42.192307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874973, 34.109966, 42.253059>,  <40.679901, 34.244938, 42.289513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874973, 34.109966, 42.253059>,  <41.200096, 33.885010, 42.192307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874973, 34.109966, 42.253059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049247, -0.193460, 0.979871,
		0.580450, 0.803924, 0.129549,
		-0.812805, 0.562387, 0.151885,
		40.631130, 34.278683, 42.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318649, 34.245358, 42.807308>,  <41.200096, 33.885010, 42.192307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318649, 34.245358, 42.807308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922222, 34.246838, 42.753990>,  <40.684364, 34.247726, 42.722000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922222, 34.246838, 42.753990>,  <41.318649, 34.245358, 42.807308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922222, 34.246838, 42.753990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128152, -0.302774, 0.944407,
		-0.036868, 0.953055, 0.300544,
		-0.991069, 0.003697, -0.133299,
		40.624901, 34.247948, 42.714001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997387, 34.621513, 43.323738>,  <41.318649, 34.245358, 42.807308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997387, 34.621513, 43.323738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722336, 34.367435, 43.183056>,  <40.557304, 34.214989, 43.098644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722336, 34.367435, 43.183056>,  <40.997387, 34.621513, 43.323738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722336, 34.367435, 43.183056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159577, -0.340347, 0.926660,
		-0.708310, 0.693322, 0.132669,
		-0.687628, -0.635192, -0.351710,
		40.516048, 34.176876, 43.077541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439907, 34.766850, 43.723427>,  <40.997387, 34.621513, 43.323738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439907, 34.766850, 43.723427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352268, 34.416878, 43.550686>,  <40.299683, 34.206894, 43.447041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352268, 34.416878, 43.550686>,  <40.439907, 34.766850, 43.723427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352268, 34.416878, 43.550686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415034, -0.316992, 0.852797,
		-0.883030, 0.366079, -0.293673,
		-0.219099, -0.874930, -0.431849,
		40.286537, 34.154400, 43.421131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715393, 34.712376, 43.856316>,  <40.439907, 34.766850, 43.723427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715393, 34.712376, 43.856316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873035, 34.352028, 43.783527>,  <39.967621, 34.135818, 43.739853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873035, 34.352028, 43.783527>,  <39.715393, 34.712376, 43.856316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873035, 34.352028, 43.783527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337124, -0.325896, 0.883255,
		-0.855002, -0.286748, -0.432142,
		0.394105, -0.900870, -0.181973,
		39.991268, 34.081768, 43.728935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134907, 34.330502, 43.931866>,  <39.715393, 34.712376, 43.856316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134907, 34.330502, 43.931866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449902, 34.086685, 43.968380>,  <39.638897, 33.940395, 43.990288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449902, 34.086685, 43.968380>,  <39.134907, 34.330502, 43.931866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449902, 34.086685, 43.968380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337914, -0.303129, 0.891026,
		-0.515444, -0.732514, -0.444680,
		0.787485, -0.609538, 0.091281,
		39.686146, 33.903824, 43.995766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933739, 33.619545, 44.043468>,  <39.134907, 34.330502, 43.931866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933739, 33.619545, 44.043468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302547, 33.614513, 44.198242>,  <39.523830, 33.611496, 44.291107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302547, 33.614513, 44.198242>,  <38.933739, 33.619545, 44.043468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302547, 33.614513, 44.198242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381963, -0.192508, 0.903906,
		0.063118, -0.981215, -0.182300,
		0.922020, -0.012579, 0.386938,
		39.579155, 33.610741, 44.314323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014881, 32.992424, 44.547832>,  <38.933739, 33.619545, 44.043468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014881, 32.992424, 44.547832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250408, 33.289833, 44.674622>,  <39.391724, 33.468277, 44.750694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250408, 33.289833, 44.674622>,  <39.014881, 32.992424, 44.547832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250408, 33.289833, 44.674622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339473, -0.128407, 0.931810,
		0.733524, -0.656266, 0.176798,
		0.588814, 0.743523, 0.316974,
		39.427052, 33.512890, 44.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914402, 32.888515, 45.183811>,  <39.014881, 32.992424, 44.547832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914402, 32.888515, 45.183811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136295, 33.221317, 45.186569>,  <39.269432, 33.420998, 45.188225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136295, 33.221317, 45.186569>,  <38.914402, 32.888515, 45.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136295, 33.221317, 45.186569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217933, 0.137296, 0.966258,
		0.802982, -0.537515, 0.257483,
		0.554730, 0.832002, 0.006896,
		39.302715, 33.470917, 45.188637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298252, 32.890736, 45.783394>,  <38.914402, 32.888515, 45.183811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298252, 32.890736, 45.783394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278954, 33.279640, 45.691841>,  <39.267376, 33.512981, 45.636909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278954, 33.279640, 45.691841>,  <39.298252, 32.890736, 45.783394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278954, 33.279640, 45.691841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329759, 0.200799, 0.922463,
		0.942832, 0.119978, 0.310924,
		-0.048242, 0.972258, -0.228884,
		39.264481, 33.571316, 45.623177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803463, 33.335232, 46.278820>,  <39.298252, 32.890736, 45.783394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803463, 33.335232, 46.278820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503551, 33.557518, 46.135143>,  <39.323605, 33.690887, 46.048935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503551, 33.557518, 46.135143>,  <39.803463, 33.335232, 46.278820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503551, 33.557518, 46.135143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334218, 0.150453, 0.930410,
		0.571081, 0.817649, 0.072922,
		-0.749777, 0.555711, -0.359194,
		39.278618, 33.724232, 46.027386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733028, 33.931740, 46.725266>,  <39.803463, 33.335232, 46.278820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733028, 33.931740, 46.725266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390091, 33.923740, 46.519524>,  <39.184330, 33.918941, 46.396076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390091, 33.923740, 46.519524>,  <39.733028, 33.931740, 46.725266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390091, 33.923740, 46.519524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504765, 0.228485, 0.832470,
		0.100877, 0.973342, -0.205983,
		-0.857342, -0.019995, -0.514358,
		39.132889, 33.917740, 46.365215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445972, 34.541313, 46.854412>,  <39.733028, 33.931740, 46.725266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445972, 34.541313, 46.854412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137825, 34.304455, 46.759842>,  <38.952938, 34.162338, 46.703102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137825, 34.304455, 46.759842>,  <39.445972, 34.541313, 46.854412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137825, 34.304455, 46.759842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458457, 0.256740, 0.850824,
		-0.443112, 0.763838, -0.469257,
		-0.770369, -0.592145, -0.236422,
		38.906715, 34.126812, 46.688915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805729, 34.840462, 46.812515>,  <39.445972, 34.541313, 46.854412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805729, 34.840462, 46.812515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744473, 34.461712, 46.925629>,  <38.707718, 34.234463, 46.993496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744473, 34.461712, 46.925629>,  <38.805729, 34.840462, 46.812515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744473, 34.461712, 46.925629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529526, 0.320241, 0.785524,
		-0.834355, -0.029442, -0.550440,
		-0.153146, -0.946879, 0.282785,
		38.698528, 34.177647, 47.010464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262161, 34.984489, 47.156811>,  <38.805729, 34.840462, 46.812515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262161, 34.984489, 47.156811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304527, 34.593807, 47.231449>,  <38.329948, 34.359398, 47.276234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304527, 34.593807, 47.231449>,  <38.262161, 34.984489, 47.156811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304527, 34.593807, 47.231449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597198, 0.087561, 0.797300,
		-0.795070, -0.195882, -0.574016,
		0.105916, -0.976710, 0.186598,
		38.336304, 34.300793, 47.287430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630756, 34.698757, 47.309265>,  <38.262161, 34.984489, 47.156811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630756, 34.698757, 47.309265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890804, 34.432007, 47.454937>,  <38.046833, 34.271957, 47.542339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890804, 34.432007, 47.454937>,  <37.630756, 34.698757, 47.309265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890804, 34.432007, 47.454937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499995, -0.014564, 0.865906,
		-0.572149, -0.745025, -0.342903,
		0.650116, -0.666877, 0.364176,
		38.085838, 34.231945, 47.564190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210461, 34.165688, 47.671753>,  <37.630756, 34.698757, 47.309265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210461, 34.165688, 47.671753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589081, 34.128845, 47.795399>,  <37.816254, 34.106739, 47.869587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589081, 34.128845, 47.795399>,  <37.210461, 34.165688, 47.671753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589081, 34.128845, 47.795399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318592, -0.117394, 0.940594,
		-0.050345, -0.988805, -0.140464,
		0.946554, -0.092104, 0.309115,
		37.873047, 34.101215, 47.888134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259747, 33.578354, 48.043629>,  <37.210461, 34.165688, 47.671753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259747, 33.578354, 48.043629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580982, 33.763615, 48.193577>,  <37.773724, 33.874771, 48.283546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580982, 33.763615, 48.193577>,  <37.259747, 33.578354, 48.043629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580982, 33.763615, 48.193577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310349, -0.211920, 0.926700,
		0.508650, -0.860567, -0.026451,
		0.803093, 0.463156, 0.374869,
		37.821911, 33.902561, 48.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488636, 33.147324, 48.602570>,  <37.259747, 33.578354, 48.043629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488636, 33.147324, 48.602570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614891, 33.520676, 48.670891>,  <37.690643, 33.744686, 48.711884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614891, 33.520676, 48.670891>,  <37.488636, 33.147324, 48.602570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614891, 33.520676, 48.670891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412721, -0.027042, 0.910456,
		0.854419, -0.357873, 0.376689,
		0.315641, 0.933379, 0.170807,
		37.709583, 33.800690, 48.722134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568871, 33.120277, 49.278553>,  <37.488636, 33.147324, 48.602570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568871, 33.120277, 49.278553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631271, 33.514458, 49.251549>,  <37.668713, 33.750965, 49.235348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631271, 33.514458, 49.251549>,  <37.568871, 33.120277, 49.278553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631271, 33.514458, 49.251549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262962, 0.107313, 0.958820,
		0.952111, -0.131825, 0.275876,
		0.156002, 0.985447, -0.067508,
		37.678070, 33.810093, 49.231297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097908, 33.373707, 49.806698>,  <37.568871, 33.120277, 49.278553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097908, 33.373707, 49.806698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846512, 33.665298, 49.698189>,  <37.695675, 33.840256, 49.633083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846512, 33.665298, 49.698189>,  <38.097908, 33.373707, 49.806698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846512, 33.665298, 49.698189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203506, 0.182495, 0.961915,
		0.750724, 0.659758, 0.033656,
		-0.628489, 0.728982, -0.271268,
		37.657967, 33.883995, 49.616810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139805, 33.847961, 50.345268>,  <38.097908, 33.373707, 49.806698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139805, 33.847961, 50.345268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787731, 33.914948, 50.167622>,  <37.576488, 33.955139, 50.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787731, 33.914948, 50.167622>,  <38.139805, 33.847961, 50.345268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787731, 33.914948, 50.167622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408625, 0.208678, 0.888526,
		0.241472, 0.963540, -0.115246,
		-0.880180, 0.167462, -0.444116,
		37.523678, 33.965187, 50.034386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902203, 34.485909, 50.601223>,  <38.139805, 33.847961, 50.345268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902203, 34.485909, 50.601223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576115, 34.284771, 50.486286>,  <37.380463, 34.164089, 50.417324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576115, 34.284771, 50.486286>,  <37.902203, 34.485909, 50.601223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576115, 34.284771, 50.486286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496263, 0.350736, 0.794171,
		-0.298566, 0.790019, -0.535471,
		-0.815219, -0.502847, -0.287339,
		37.331551, 34.133919, 50.400085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725368, 35.023243, 51.134304>,  <37.902203, 34.485909, 50.601223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725368, 35.023243, 51.134304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641010, 35.412853, 51.167282>,  <37.590393, 35.646618, 51.187069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641010, 35.412853, 51.167282>,  <37.725368, 35.023243, 51.134304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641010, 35.412853, 51.167282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661003, 0.204243, -0.722053,
		-0.720136, -0.097782, -0.686908,
		-0.210899, 0.974024, 0.082449,
		37.577740, 35.705059, 51.192017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355469, 35.314766, 50.522308>,  <37.725368, 35.023243, 51.134304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355469, 35.314766, 50.522308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579826, 35.580742, 50.719585>,  <37.714443, 35.740330, 50.837952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579826, 35.580742, 50.719585>,  <37.355469, 35.314766, 50.522308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579826, 35.580742, 50.719585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476903, 0.227446, -0.849018,
		-0.676725, 0.711419, -0.189540,
		0.560898, 0.664944, 0.493196,
		37.748096, 35.780224, 50.867546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517696, 35.826614, 50.069801>,  <37.355469, 35.314766, 50.522308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517696, 35.826614, 50.069801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797482, 35.873375, 50.351818>,  <37.965351, 35.901432, 50.521027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797482, 35.873375, 50.351818>,  <37.517696, 35.826614, 50.069801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797482, 35.873375, 50.351818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657661, 0.280815, -0.699017,
		-0.279700, 0.952616, 0.119541,
		0.699464, 0.116898, 0.705043,
		38.007320, 35.908443, 50.563332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820389, 36.427227, 49.883945>,  <37.517696, 35.826614, 50.069801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820389, 36.427227, 49.883945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088932, 36.232674, 50.107628>,  <38.250057, 36.115940, 50.241837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088932, 36.232674, 50.107628>,  <37.820389, 36.427227, 49.883945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088932, 36.232674, 50.107628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738419, 0.374501, -0.560790,
		0.063337, 0.789418, 0.610580,
		0.671361, -0.486383, 0.559201,
		38.290340, 36.086758, 50.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332027, 36.893341, 50.011616>,  <37.820389, 36.427227, 49.883945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332027, 36.893341, 50.011616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522331, 36.545734, 50.065960>,  <38.636513, 36.337170, 50.098568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522331, 36.545734, 50.065960>,  <38.332027, 36.893341, 50.011616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522331, 36.545734, 50.065960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742120, 0.313683, -0.592335,
		0.472131, 0.382639, 0.794153,
		0.475763, -0.869017, 0.135865,
		38.665062, 36.285030, 50.106720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992374, 37.082478, 50.088108>,  <38.332027, 36.893341, 50.011616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992374, 37.082478, 50.088108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000671, 36.698956, 49.974781>,  <39.005650, 36.468842, 49.906784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000671, 36.698956, 49.974781>,  <38.992374, 37.082478, 50.088108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000671, 36.698956, 49.974781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730082, 0.208124, -0.650896,
		0.683045, -0.193345, 0.704320,
		0.020738, -0.958803, -0.283315,
		39.006893, 36.411316, 49.889786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724178, 36.854736, 50.104874>,  <38.992374, 37.082478, 50.088108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724178, 36.854736, 50.104874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526180, 36.607025, 49.861080>,  <39.407383, 36.458397, 49.714806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526180, 36.607025, 49.861080>,  <39.724178, 36.854736, 50.104874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526180, 36.607025, 49.861080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703389, 0.126220, -0.699509,
		0.510121, -0.774958, 0.373116,
		-0.494996, -0.619280, -0.609484,
		39.377682, 36.421242, 49.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194138, 36.423450, 49.725704>,  <39.724178, 36.854736, 50.104874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194138, 36.423450, 49.725704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871868, 36.374512, 49.493874>,  <39.678505, 36.345150, 49.354774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871868, 36.374512, 49.493874>,  <40.194138, 36.423450, 49.725704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871868, 36.374512, 49.493874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563040, 0.145810, -0.813465,
		0.184036, -0.981718, -0.048588,
		-0.805678, -0.122350, -0.579581,
		39.630165, 36.337807, 49.320000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465420, 36.087414, 49.225571>,  <40.194138, 36.423450, 49.725704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465420, 36.087414, 49.225571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132732, 36.245556, 49.069649>,  <39.933121, 36.340439, 48.976097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132732, 36.245556, 49.069649>,  <40.465420, 36.087414, 49.225571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132732, 36.245556, 49.069649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479235, 0.156729, -0.863580,
		-0.280326, -0.905059, -0.319821,
		-0.831716, 0.395353, -0.389801,
		39.883217, 36.364162, 48.952709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530361, 35.859459, 48.508385>,  <40.465420, 36.087414, 49.225571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530361, 35.859459, 48.508385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237843, 36.130539, 48.477589>,  <40.062332, 36.293186, 48.459110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237843, 36.130539, 48.477589>,  <40.530361, 35.859459, 48.508385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237843, 36.130539, 48.477589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252155, 0.163754, -0.953731,
		-0.633736, -0.716873, -0.290638,
		-0.731298, 0.677700, -0.076986,
		40.018452, 36.333847, 48.454494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238457, 35.778267, 47.936558>,  <40.530361, 35.859459, 48.508385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238457, 35.778267, 47.936558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113789, 36.151100, 48.010403>,  <40.038990, 36.374802, 48.054710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113789, 36.151100, 48.010403>,  <40.238457, 35.778267, 47.936558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113789, 36.151100, 48.010403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257527, 0.269876, -0.927818,
		-0.914628, -0.241628, -0.324149,
		-0.311667, 0.932085, 0.184610,
		40.020290, 36.430725, 48.065784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842747, 35.950897, 47.392902>,  <40.238457, 35.778267, 47.936558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842747, 35.950897, 47.392902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963947, 36.303463, 47.537842>,  <40.036667, 36.515003, 47.624805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963947, 36.303463, 47.537842>,  <39.842747, 35.950897, 47.392902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963947, 36.303463, 47.537842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303900, 0.271000, -0.913347,
		-0.903235, 0.386864, -0.185749,
		0.303004, 0.881417, 0.362345,
		40.054848, 36.567886, 47.646545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571152, 36.426804, 46.927097>,  <39.842747, 35.950897, 47.392902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571152, 36.426804, 46.927097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861851, 36.622276, 47.120186>,  <40.036270, 36.739559, 47.236038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861851, 36.622276, 47.120186>,  <39.571152, 36.426804, 46.927097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861851, 36.622276, 47.120186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415771, 0.246450, -0.875441,
		-0.546783, 0.836928, -0.024074,
		0.726748, 0.488686, 0.482726,
		40.079876, 36.768883, 47.265003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472923, 37.118649, 46.729599>,  <39.571152, 36.426804, 46.927097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472923, 37.118649, 46.729599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853748, 37.067528, 46.840771>,  <40.082245, 37.036858, 46.907475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853748, 37.067528, 46.840771>,  <39.472923, 37.118649, 46.729599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853748, 37.067528, 46.840771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302894, 0.266745, -0.914933,
		0.042793, 0.955256, 0.292668,
		0.952063, -0.127800, 0.277927,
		40.139366, 37.029186, 46.924149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908321, 37.692154, 46.462559>,  <39.472923, 37.118649, 46.729599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908321, 37.692154, 46.462559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157646, 37.393677, 46.556091>,  <40.307243, 37.214592, 46.612209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157646, 37.393677, 46.556091>,  <39.908321, 37.692154, 46.462559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157646, 37.393677, 46.556091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397177, 0.044522, -0.916661,
		0.673595, 0.664240, 0.324122,
		0.623314, -0.746192, 0.233831,
		40.344639, 37.169819, 46.626240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526146, 37.963017, 46.254196>,  <39.908321, 37.692154, 46.462559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526146, 37.963017, 46.254196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585728, 37.567711, 46.240627>,  <40.621475, 37.330528, 46.232487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585728, 37.567711, 46.240627>,  <40.526146, 37.963017, 46.254196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585728, 37.567711, 46.240627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480950, 0.102380, -0.870750,
		0.864003, 0.113382, 0.490554,
		0.148950, -0.988263, -0.033925,
		40.630413, 37.271233, 46.230450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187340, 37.923382, 46.096077>,  <40.526146, 37.963017, 46.254196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187340, 37.923382, 46.096077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060593, 37.554916, 46.005692>,  <40.984543, 37.333839, 45.951458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060593, 37.554916, 46.005692>,  <41.187340, 37.923382, 46.096077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060593, 37.554916, 46.005692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646870, -0.035647, -0.761766,
		0.693653, -0.387550, 0.607166,
		-0.316866, -0.921159, -0.225968,
		40.965534, 37.278568, 45.937901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723701, 37.718102, 45.818165>,  <41.187340, 37.923382, 46.096077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723701, 37.718102, 45.818165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438080, 37.471058, 45.686295>,  <41.266705, 37.322834, 45.607170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438080, 37.471058, 45.686295>,  <41.723701, 37.718102, 45.818165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438080, 37.471058, 45.686295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456396, -0.053570, -0.888163,
		0.530873, -0.784662, 0.320124,
		-0.714057, -0.617604, -0.329678,
		41.223862, 37.285778, 45.587391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088299, 37.104801, 45.402122>,  <41.723701, 37.718102, 45.818165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088299, 37.104801, 45.402122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716221, 37.085346, 45.256592>,  <41.492973, 37.073673, 45.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716221, 37.085346, 45.256592>,  <42.088299, 37.104801, 45.402122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716221, 37.085346, 45.256592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367019, -0.138285, -0.919877,
		-0.005571, -0.989198, 0.146483,
		-0.930197, -0.048638, -0.363825,
		41.437160, 37.070755, 45.147446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108501, 36.497017, 44.869392>,  <42.088299, 37.104801, 45.402122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108501, 36.497017, 44.869392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789532, 36.720444, 44.778076>,  <41.598148, 36.854500, 44.723286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789532, 36.720444, 44.778076>,  <42.108501, 36.497017, 44.869392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789532, 36.720444, 44.778076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191962, -0.123852, -0.973556,
		-0.572070, -0.820161, -0.008461,
		-0.797425, 0.558566, -0.228292,
		41.550304, 36.888012, 44.709587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757404, 36.089470, 44.410015>,  <42.108501, 36.497017, 44.869392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757404, 36.089470, 44.410015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629749, 36.462685, 44.343563>,  <41.553158, 36.686615, 44.303692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629749, 36.462685, 44.343563>,  <41.757404, 36.089470, 44.410015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629749, 36.462685, 44.343563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062167, -0.154306, -0.986065,
		-0.945668, -0.325015, -0.008759,
		-0.319135, 0.933035, -0.166127,
		41.534008, 36.742596, 44.293724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158367, 36.063347, 43.905380>,  <41.757404, 36.089470, 44.410015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158367, 36.063347, 43.905380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281532, 36.442036, 43.867645>,  <41.355431, 36.669250, 43.845005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281532, 36.442036, 43.867645>,  <41.158367, 36.063347, 43.905380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281532, 36.442036, 43.867645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070818, -0.076076, -0.994584,
		-0.948776, 0.312925, 0.043621,
		0.307912, 0.946726, -0.094340,
		41.373905, 36.726055, 43.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724697, 36.399700, 43.421707>,  <41.158367, 36.063347, 43.905380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724697, 36.399700, 43.421707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048164, 36.634975, 43.425415>,  <41.242245, 36.776142, 43.427639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048164, 36.634975, 43.425415>,  <40.724697, 36.399700, 43.421707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048164, 36.634975, 43.425415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015657, -0.005773, -0.999861,
		-0.588057, 0.808700, -0.013878,
		0.808668, 0.588193, 0.009267,
		41.290764, 36.811432, 43.428196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537231, 36.882465, 42.860077>,  <40.724697, 36.399700, 43.421707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537231, 36.882465, 42.860077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931099, 36.920135, 42.918819>,  <41.167419, 36.942738, 42.954063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931099, 36.920135, 42.918819>,  <40.537231, 36.882465, 42.860077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931099, 36.920135, 42.918819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156323, -0.102602, -0.982362,
		-0.077451, 0.990254, -0.115751,
		0.984665, 0.094179, 0.146853,
		41.226498, 36.948391, 42.962875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743782, 37.232037, 42.272911>,  <40.537231, 36.882465, 42.860077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743782, 37.232037, 42.272911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078506, 37.061085, 42.409790>,  <41.279339, 36.958515, 42.491917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078506, 37.061085, 42.409790>,  <40.743782, 37.232037, 42.272911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078506, 37.061085, 42.409790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321863, -0.121595, -0.938946,
		0.442896, 0.895858, 0.035806,
		0.836808, -0.427380, 0.342197,
		41.329548, 36.932873, 42.512451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318710, 37.652496, 41.923050>,  <40.743782, 37.232037, 42.272911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318710, 37.652496, 41.923050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463936, 37.297920, 42.037872>,  <41.551071, 37.085175, 42.106766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463936, 37.297920, 42.037872>,  <41.318710, 37.652496, 41.923050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463936, 37.297920, 42.037872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355894, -0.152788, -0.921952,
		0.861117, 0.436890, 0.260008,
		0.363065, -0.886444, 0.287055,
		41.572857, 37.031986, 42.123989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917690, 37.636986, 41.693897>,  <41.318710, 37.652496, 41.923050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917690, 37.636986, 41.693897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849022, 37.246063, 41.743526>,  <41.807819, 37.011509, 41.773304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849022, 37.246063, 41.743526>,  <41.917690, 37.636986, 41.693897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849022, 37.246063, 41.743526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337593, -0.176681, -0.924562,
		0.925505, -0.116832, 0.360264,
		-0.171670, -0.977310, 0.124077,
		41.797520, 36.952869, 41.780750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532726, 37.406185, 41.452217>,  <41.917690, 37.636986, 41.693897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532726, 37.406185, 41.452217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278374, 37.099030, 41.421257>,  <42.125763, 36.914734, 41.402679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278374, 37.099030, 41.421257>,  <42.532726, 37.406185, 41.452217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278374, 37.099030, 41.421257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307390, -0.159997, -0.938036,
		0.707927, -0.620276, 0.337782,
		-0.635886, -0.767892, -0.077400,
		42.087608, 36.868660, 41.398037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997593, 36.841446, 41.255840>,  <42.532726, 37.406185, 41.452217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997593, 36.841446, 41.255840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622135, 36.732540, 41.171162>,  <42.396858, 36.667198, 41.120354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622135, 36.732540, 41.171162>,  <42.997593, 36.841446, 41.255840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622135, 36.732540, 41.171162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244294, -0.091618, -0.965363,
		0.243441, -0.957850, 0.152510,
		-0.938647, -0.272266, -0.211694,
		42.340542, 36.650860, 41.107655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080742, 36.229130, 40.889217>,  <42.997593, 36.841446, 41.255840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080742, 36.229130, 40.889217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709541, 36.347992, 40.799324>,  <42.486820, 36.419308, 40.745388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709541, 36.347992, 40.799324>,  <43.080742, 36.229130, 40.889217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709541, 36.347992, 40.799324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237660, 0.007609, -0.971319,
		-0.286920, -0.954800, -0.077682,
		-0.928006, 0.297153, -0.224734,
		42.431141, 36.437138, 40.731903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770584, 35.759819, 40.319275>,  <43.080742, 36.229130, 40.889217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770584, 35.759819, 40.319275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554478, 36.095917, 40.300930>,  <42.424812, 36.297577, 40.289925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554478, 36.095917, 40.300930>,  <42.770584, 35.759819, 40.319275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554478, 36.095917, 40.300930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281952, 0.129403, -0.950662,
		-0.792854, -0.526540, -0.306820,
		-0.540265, 0.840244, -0.045861,
		42.392399, 36.347988, 40.287170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515835, 35.788853, 39.598087>,  <42.770584, 35.759819, 40.319275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515835, 35.788853, 39.598087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459179, 36.169167, 39.708324>,  <42.425186, 36.397354, 39.774467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459179, 36.169167, 39.708324>,  <42.515835, 35.788853, 39.598087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459179, 36.169167, 39.708324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203485, 0.300421, -0.931848,
		-0.968778, -0.075908, -0.236022,
		-0.141640, 0.950781, 0.275595,
		42.416687, 36.454399, 39.791004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122753, 36.103348, 39.046947>,  <42.515835, 35.788853, 39.598087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122753, 36.103348, 39.046947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290749, 36.401291, 39.254330>,  <42.391548, 36.580055, 39.378761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290749, 36.401291, 39.254330>,  <42.122753, 36.103348, 39.046947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290749, 36.401291, 39.254330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200080, 0.481235, -0.853453,
		-0.885198, 0.462177, 0.053084,
		0.419992, 0.744853, 0.518460,
		42.416744, 36.624748, 39.409866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808952, 36.625820, 38.732307>,  <42.122753, 36.103348, 39.046947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808952, 36.625820, 38.732307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156063, 36.728642, 38.902431>,  <42.364330, 36.790337, 39.004505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156063, 36.728642, 38.902431>,  <41.808952, 36.625820, 38.732307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156063, 36.728642, 38.902431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317904, 0.370661, -0.872667,
		-0.381968, 0.892487, 0.239932,
		0.867777, 0.257056, 0.425306,
		42.416397, 36.805759, 39.030022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999065, 37.034115, 38.344330>,  <41.808952, 36.625820, 38.732307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999065, 37.034115, 38.344330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343487, 37.046345, 38.547371>,  <42.550140, 37.053684, 38.669197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343487, 37.046345, 38.547371>,  <41.999065, 37.034115, 38.344330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343487, 37.046345, 38.547371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408353, 0.553294, -0.726026,
		-0.303054, 0.832425, 0.463926,
		0.861049, 0.030579, 0.507601,
		42.601803, 37.055519, 38.699650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210449, 37.733025, 38.508480>,  <41.999065, 37.034115, 38.344330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210449, 37.733025, 38.508480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550331, 37.522144, 38.511597>,  <42.754261, 37.395615, 38.513466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550331, 37.522144, 38.511597>,  <42.210449, 37.733025, 38.508480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550331, 37.522144, 38.511597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325833, 0.513411, -0.793878,
		0.414533, 0.677100, 0.608028,
		0.849703, -0.527204, 0.007796,
		42.805241, 37.363983, 38.513935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661411, 38.225449, 38.533859>,  <42.210449, 37.733025, 38.508480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661411, 38.225449, 38.533859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875862, 37.909206, 38.415531>,  <43.004532, 37.719460, 38.344536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875862, 37.909206, 38.415531>,  <42.661411, 38.225449, 38.533859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875862, 37.909206, 38.415531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408253, 0.549575, -0.728901,
		0.738851, 0.270010, 0.617408,
		0.536123, -0.790608, -0.295822,
		43.036697, 37.672024, 38.326786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307365, 38.478024, 38.409645>,  <42.661411, 38.225449, 38.533859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307365, 38.478024, 38.409645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287712, 38.153217, 38.177017>,  <43.275921, 37.958336, 38.037441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287712, 38.153217, 38.177017>,  <43.307365, 38.478024, 38.409645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287712, 38.153217, 38.177017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432864, 0.507434, -0.745077,
		0.900119, -0.288348, 0.326559,
		-0.049134, -0.812014, -0.581566,
		43.272972, 37.909615, 38.002548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947552, 38.377346, 37.944321>,  <43.307365, 38.478024, 38.409645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947552, 38.377346, 37.944321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649803, 38.187740, 37.756184>,  <43.471153, 38.073975, 37.643299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649803, 38.187740, 37.756184>,  <43.947552, 38.377346, 37.944321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649803, 38.187740, 37.756184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330130, 0.351032, -0.876237,
		0.580458, -0.807517, -0.104809,
		-0.744368, -0.474018, -0.470345,
		43.426491, 38.045536, 37.615082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284367, 38.088333, 37.353138>,  <43.947552, 38.377346, 37.944321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284367, 38.088333, 37.353138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895359, 38.110577, 37.262699>,  <43.661957, 38.123924, 37.208435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895359, 38.110577, 37.262699>,  <44.284367, 38.088333, 37.353138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895359, 38.110577, 37.262699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230025, 0.379787, -0.896019,
		0.036039, -0.923401, -0.382141,
		-0.972517, 0.055610, -0.226092,
		43.603603, 38.127258, 37.194870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090343, 37.638393, 36.783669>,  <44.284367, 38.088333, 37.353138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090343, 37.638393, 36.783669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875847, 37.971966, 36.835823>,  <43.747147, 38.172108, 36.867115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875847, 37.971966, 36.835823>,  <44.090343, 37.638393, 36.783669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875847, 37.971966, 36.835823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196622, 0.273643, -0.941519,
		-0.820842, -0.479247, -0.310709,
		-0.536243, 0.833931, 0.130387,
		43.714973, 38.222145, 36.874939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819862, 37.297585, 36.937218>,  <44.090343, 37.638393, 36.783669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819862, 37.297585, 36.937218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204956, 37.300880, 37.045345>,  <45.436012, 37.302856, 37.110222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204956, 37.300880, 37.045345>,  <44.819862, 37.297585, 36.937218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204956, 37.300880, 37.045345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269776, 0.099250, 0.957794,
		-0.018940, -0.995028, 0.097773,
		0.962737, 0.008236, 0.270315,
		45.493778, 37.303352, 37.126438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397259, 36.891159, 36.725948>,  <44.819862, 37.297585, 36.937218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397259, 36.891159, 36.725948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058903, 37.014980, 36.552219>,  <44.855888, 37.089275, 36.447983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058903, 37.014980, 36.552219>,  <45.397259, 36.891159, 36.725948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058903, 37.014980, 36.552219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219403, -0.944202, -0.245651,
		-0.486135, -0.112501, 0.866612,
		-0.845893, 0.309557, -0.434327,
		44.805134, 37.107849, 36.421921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805664, 36.380188, 36.914467>,  <45.397259, 36.891159, 36.725948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805664, 36.380188, 36.914467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764133, 36.558037, 36.558594>,  <44.739216, 36.664745, 36.345070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764133, 36.558037, 36.558594>,  <44.805664, 36.380188, 36.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764133, 36.558037, 36.558594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351908, -0.853075, -0.385258,
		-0.930259, 0.273087, 0.245034,
		-0.103823, 0.444619, -0.889682,
		44.732986, 36.691422, 36.291691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257496, 36.006149, 36.632153>,  <44.805664, 36.380188, 36.914467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257496, 36.006149, 36.632153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392471, 36.202499, 36.310860>,  <44.473457, 36.320309, 36.118084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392471, 36.202499, 36.310860>,  <44.257496, 36.006149, 36.632153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392471, 36.202499, 36.310860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348769, -0.727357, -0.591026,
		-0.874356, 0.479575, -0.074233,
		0.337435, 0.490877, -0.803229,
		44.493702, 36.349762, 36.069889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736313, 36.366543, 36.099358>,  <44.257496, 36.006149, 36.632153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736313, 36.366543, 36.099358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068848, 36.218414, 35.933594>,  <44.268368, 36.129536, 35.834133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068848, 36.218414, 35.933594>,  <43.736313, 36.366543, 36.099358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068848, 36.218414, 35.933594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554118, -0.494900, -0.669348,
		0.042782, 0.786088, -0.616632,
		0.831338, -0.370323, -0.414412,
		44.318249, 36.107319, 35.809269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844841, 36.579906, 35.318172>,  <43.736313, 36.366543, 36.099358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844841, 36.579906, 35.318172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000359, 36.227425, 35.425739>,  <44.093670, 36.015934, 35.490280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000359, 36.227425, 35.425739>,  <43.844841, 36.579906, 35.318172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000359, 36.227425, 35.425739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545973, -0.455476, -0.703175,
		0.742129, 0.126564, -0.658199,
		0.388791, -0.881205, 0.268921,
		44.116997, 35.963062, 35.506416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078075, 36.265457, 34.653374>,  <43.844841, 36.579906, 35.318172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078075, 36.265457, 34.653374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993896, 36.002110, 34.942444>,  <43.943390, 35.844101, 35.115887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993896, 36.002110, 34.942444>,  <44.078075, 36.265457, 34.653374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993896, 36.002110, 34.942444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559604, -0.525015, -0.641251,
		0.801596, -0.539362, -0.257939,
		-0.210445, -0.658368, 0.722679,
		43.930763, 35.804600, 35.159248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247131, 35.608513, 34.528271>,  <44.078075, 36.265457, 34.653374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247131, 35.608513, 34.528271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955784, 35.549793, 34.795982>,  <43.780975, 35.514561, 34.956608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955784, 35.549793, 34.795982>,  <44.247131, 35.608513, 34.528271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955784, 35.549793, 34.795982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485139, -0.579292, -0.655028,
		0.483863, -0.801793, 0.350720,
		-0.728366, -0.146795, 0.669279,
		43.737274, 35.505756, 34.996765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070415, 34.827950, 34.494461>,  <44.247131, 35.608513, 34.528271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070415, 34.827950, 34.494461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764309, 35.027676, 34.656963>,  <43.580643, 35.147511, 34.754467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764309, 35.027676, 34.656963>,  <44.070415, 34.827950, 34.494461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764309, 35.027676, 34.656963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640030, -0.522813, -0.563052,
		-0.068742, -0.690905, 0.719670,
		-0.765269, 0.499316, 0.406261,
		43.534729, 35.177471, 34.778843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645145, 34.378120, 34.706364>,  <44.070415, 34.827950, 34.494461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645145, 34.378120, 34.706364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400925, 34.694054, 34.683086>,  <43.254391, 34.883614, 34.669121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400925, 34.694054, 34.683086>,  <43.645145, 34.378120, 34.706364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400925, 34.694054, 34.683086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699066, -0.572001, -0.429093,
		-0.372197, -0.221305, 0.901384,
		-0.610553, 0.789834, -0.058190,
		43.217758, 34.931004, 34.665630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999329, 34.108723, 34.822803>,  <43.645145, 34.378120, 34.706364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999329, 34.108723, 34.822803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921844, 34.463745, 34.655609>,  <42.875355, 34.676758, 34.555294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921844, 34.463745, 34.655609>,  <42.999329, 34.108723, 34.822803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921844, 34.463745, 34.655609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694772, -0.424916, -0.580292,
		-0.692653, 0.177998, 0.698962,
		-0.193709, 0.887561, -0.417987,
		42.863731, 34.730015, 34.530212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215973, 34.212738, 34.834743>,  <42.999329, 34.108723, 34.822803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215973, 34.212738, 34.834743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364113, 34.453350, 34.551620>,  <42.452999, 34.597717, 34.381744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364113, 34.453350, 34.551620>,  <42.215973, 34.212738, 34.834743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364113, 34.453350, 34.551620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641943, -0.385005, -0.663084,
		-0.671377, 0.699951, 0.243561,
		0.370354, 0.601532, -0.707812,
		42.475220, 34.633808, 34.339275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703213, 34.512749, 34.400604>,  <42.215973, 34.212738, 34.834743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703213, 34.512749, 34.400604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997261, 34.547485, 34.131664>,  <42.173691, 34.568329, 33.970303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997261, 34.547485, 34.131664>,  <41.703213, 34.512749, 34.400604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997261, 34.547485, 34.131664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519724, -0.564602, -0.641180,
		-0.435292, 0.820782, -0.369917,
		0.735125, 0.086846, -0.672346,
		42.217800, 34.573540, 33.929962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310429, 34.648167, 33.862705>,  <41.703213, 34.512749, 34.400604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310429, 34.648167, 33.862705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672264, 34.517822, 33.752766>,  <41.889366, 34.439613, 33.686802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672264, 34.517822, 33.752766>,  <41.310429, 34.648167, 33.862705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672264, 34.517822, 33.752766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426262, -0.683501, -0.592560,
		0.005238, 0.653176, -0.757188,
		0.904585, -0.325864, -0.274845,
		41.943638, 34.420063, 33.670311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293350, 34.517094, 32.997292>,  <41.310429, 34.648167, 33.862705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293350, 34.517094, 32.997292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616135, 34.331451, 33.143398>,  <41.809807, 34.220066, 33.231064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616135, 34.331451, 33.143398>,  <41.293350, 34.517094, 32.997292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616135, 34.331451, 33.143398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283950, -0.847169, -0.449085,
		0.517865, 0.258677, -0.815415,
		0.806962, -0.464103, 0.365268,
		41.858223, 34.192219, 33.252979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559727, 34.182114, 32.436283>,  <41.293350, 34.517094, 32.997292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559727, 34.182114, 32.436283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701675, 33.996662, 32.761024>,  <41.786846, 33.885391, 32.955872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701675, 33.996662, 32.761024>,  <41.559727, 34.182114, 32.436283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701675, 33.996662, 32.761024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281899, -0.881023, -0.379910,
		0.891402, -0.094041, -0.443350,
		0.354874, -0.463633, 0.811856,
		41.808136, 33.857571, 33.004581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174664, 33.607407, 32.218655>,  <41.559727, 34.182114, 32.436283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174664, 33.607407, 32.218655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017994, 33.535629, 32.579628>,  <41.923992, 33.492565, 32.796211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017994, 33.535629, 32.579628>,  <42.174664, 33.607407, 32.218655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017994, 33.535629, 32.579628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196219, -0.941946, -0.272461,
		0.898937, -0.283792, 0.333729,
		-0.391677, -0.179441, 0.902435,
		41.900490, 33.481796, 32.850357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427574, 32.957249, 32.276962>,  <42.174664, 33.607407, 32.218655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427574, 32.957249, 32.276962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153332, 32.977238, 32.567463>,  <41.988785, 32.989231, 32.741764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153332, 32.977238, 32.567463>,  <42.427574, 32.957249, 32.276962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153332, 32.977238, 32.567463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251117, -0.952640, -0.171516,
		0.683286, -0.299967, 0.665688,
		-0.685610, 0.049971, 0.726252,
		41.947647, 32.992229, 32.785339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575500, 32.400639, 32.767509>,  <42.427574, 32.957249, 32.276962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575500, 32.400639, 32.767509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183887, 32.480114, 32.785496>,  <41.948921, 32.527798, 32.796288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183887, 32.480114, 32.785496>,  <42.575500, 32.400639, 32.767509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183887, 32.480114, 32.785496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203126, -0.968872, -0.141517,
		0.015446, -0.147683, 0.988914,
		-0.979031, 0.198688, 0.044964,
		41.890179, 32.539719, 32.798985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368298, 31.957602, 33.227901>,  <42.575500, 32.400639, 32.767509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368298, 31.957602, 33.227901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043030, 32.064030, 33.020844>,  <41.847870, 32.127888, 32.896606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043030, 32.064030, 33.020844>,  <42.368298, 31.957602, 33.227901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043030, 32.064030, 33.020844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319094, -0.947617, 0.014190,
		-0.486758, 0.176717, 0.855475,
		-0.813170, 0.266070, -0.517649,
		41.799080, 32.143852, 32.865547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707012, 31.808781, 33.592663>,  <42.368298, 31.957602, 33.227901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707012, 31.808781, 33.592663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644867, 31.782385, 33.198402>,  <41.607578, 31.766548, 32.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644867, 31.782385, 33.198402>,  <41.707012, 31.808781, 33.592663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644867, 31.782385, 33.198402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340335, -0.933107, 0.116119,
		-0.927380, 0.353492, 0.122515,
		-0.155367, -0.065990, -0.985650,
		41.598255, 31.762589, 32.902706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516586, 31.136635, 33.506840>,  <41.707012, 31.808781, 33.592663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516586, 31.136635, 33.506840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430618, 31.250525, 33.133160>,  <41.379036, 31.318859, 32.908951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430618, 31.250525, 33.133160>,  <41.516586, 31.136635, 33.506840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430618, 31.250525, 33.133160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424766, -0.888599, -0.173105,
		-0.879421, 0.359613, 0.311926,
		-0.214926, 0.284727, -0.934204,
		41.366142, 31.335943, 32.852898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724609, 30.990580, 33.329559>,  <41.516586, 31.136635, 33.506840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724609, 30.990580, 33.329559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946117, 31.014917, 32.997379>,  <41.079021, 31.029520, 32.798073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946117, 31.014917, 32.997379>,  <40.724609, 30.990580, 33.329559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946117, 31.014917, 32.997379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312274, -0.909360, -0.274862,
		-0.771899, 0.411536, -0.484572,
		0.553766, 0.060846, -0.830446,
		41.112247, 31.033171, 32.748245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310856, 30.735409, 32.907417>,  <40.724609, 30.990580, 33.329559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310856, 30.735409, 32.907417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651516, 30.691185, 32.702492>,  <40.855911, 30.664650, 32.579536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651516, 30.691185, 32.702492>,  <40.310856, 30.735409, 32.907417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651516, 30.691185, 32.702492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348535, -0.849501, -0.396069,
		-0.391418, 0.515872, -0.762016,
		0.851654, -0.110561, -0.512310,
		40.907013, 30.658016, 32.548798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083839, 30.460052, 32.212753>,  <40.310856, 30.735409, 32.907417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083839, 30.460052, 32.212753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470249, 30.363342, 32.249298>,  <40.702095, 30.305317, 32.271225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470249, 30.363342, 32.249298>,  <40.083839, 30.460052, 32.212753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470249, 30.363342, 32.249298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193987, -0.911827, -0.361859,
		0.170797, 0.331840, -0.927745,
		0.966022, -0.241775, 0.091365,
		40.760056, 30.290810, 32.276707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363560, 30.217302, 31.574575>,  <40.083839, 30.460052, 32.212753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363560, 30.217302, 31.574575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629353, 30.061218, 31.829512>,  <40.788826, 29.967567, 31.982473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629353, 30.061218, 31.829512>,  <40.363560, 30.217302, 31.574575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629353, 30.061218, 31.829512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130093, -0.900228, -0.415530,
		0.735895, 0.193198, -0.648947,
		0.664480, -0.390210, 0.637340,
		40.828697, 29.944155, 32.020714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897568, 29.837933, 31.135981>,  <40.363560, 30.217302, 31.574575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897568, 29.837933, 31.135981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871216, 29.691040, 31.507099>,  <40.855404, 29.602905, 31.729771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871216, 29.691040, 31.507099>,  <40.897568, 29.837933, 31.135981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871216, 29.691040, 31.507099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098886, -0.927639, -0.360149,
		0.992916, 0.068021, 0.097422,
		-0.065875, -0.367231, 0.927794,
		40.851452, 29.580872, 31.785437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491631, 29.448851, 31.236559>,  <40.897568, 29.837933, 31.135981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491631, 29.448851, 31.236559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219315, 29.314079, 31.496716>,  <41.055927, 29.233215, 31.652809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219315, 29.314079, 31.496716>,  <41.491631, 29.448851, 31.236559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219315, 29.314079, 31.496716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243487, -0.941530, -0.232886,
		0.690828, -0.000184, 0.723019,
		-0.680786, -0.336930, 0.650391,
		41.015079, 29.213001, 31.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834183, 29.024469, 31.664780>,  <41.491631, 29.448851, 31.236559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834183, 29.024469, 31.664780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451439, 28.908463, 31.671923>,  <41.221794, 28.838860, 31.676208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451439, 28.908463, 31.671923>,  <41.834183, 29.024469, 31.664780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451439, 28.908463, 31.671923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289232, -0.956546, -0.036943,
		0.027795, -0.030185, 0.999158,
		-0.956855, -0.290015, 0.017856,
		41.164383, 28.821459, 31.677280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710945, 28.519005, 32.215214>,  <41.834183, 29.024469, 31.664780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710945, 28.519005, 32.215214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474140, 28.455332, 31.899195>,  <41.332058, 28.417128, 31.709581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474140, 28.455332, 31.899195>,  <41.710945, 28.519005, 32.215214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474140, 28.455332, 31.899195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296751, -0.954482, -0.030056,
		-0.749306, -0.252242, 0.612303,
		-0.592013, -0.159181, -0.790052,
		41.296535, 28.407578, 31.662180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536129, 27.833427, 32.316803>,  <41.710945, 28.519005, 32.215214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536129, 27.833427, 32.316803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456673, 27.929184, 31.936649>,  <41.409000, 27.986637, 31.708557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456673, 27.929184, 31.936649>,  <41.536129, 27.833427, 32.316803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456673, 27.929184, 31.936649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313420, -0.903273, -0.293029,
		-0.928607, -0.356077, 0.104394,
		-0.198637, 0.239389, -0.950387,
		41.397079, 28.001001, 31.651533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535553, 27.563839, 33.088455>,  <41.536129, 27.833427, 32.316803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535553, 27.563839, 33.088455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644199, 27.880680, 33.307106>,  <41.709385, 28.070786, 33.438297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644199, 27.880680, 33.307106>,  <41.535553, 27.563839, 33.088455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644199, 27.880680, 33.307106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720593, -0.209112, 0.661074,
		0.637945, -0.573449, 0.513987,
		0.271612, 0.792104, 0.546625,
		41.725681, 28.118311, 33.471092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411926, 27.323771, 33.831314>,  <41.535553, 27.563839, 33.088455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411926, 27.323771, 33.831314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478256, 27.718012, 33.844509>,  <41.518055, 27.954557, 33.852428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478256, 27.718012, 33.844509>,  <41.411926, 27.323771, 33.831314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478256, 27.718012, 33.844509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706405, 0.095372, 0.701353,
		0.688110, -0.139602, 0.712050,
		0.165821, 0.985604, 0.032989,
		41.528004, 28.013693, 33.854404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359421, 26.625952, 33.595783>,  <41.411926, 27.323771, 33.831314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359421, 26.625952, 33.595783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745235, 26.709770, 33.531593>,  <41.976727, 26.760061, 33.493080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745235, 26.709770, 33.531593>,  <41.359421, 26.625952, 33.595783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745235, 26.709770, 33.531593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201753, -0.193330, 0.960167,
		0.170176, -0.958495, -0.228751,
		0.964539, 0.209549, -0.160479,
		42.034595, 26.772635, 33.483448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685730, 26.102737, 33.990604>,  <41.359421, 26.625952, 33.595783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685730, 26.102737, 33.990604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963882, 26.384083, 33.931648>,  <42.130775, 26.552891, 33.896275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963882, 26.384083, 33.931648>,  <41.685730, 26.102737, 33.990604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963882, 26.384083, 33.931648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424020, -0.235984, 0.874368,
		0.580217, -0.670515, -0.462339,
		0.695381, 0.703364, -0.147390,
		42.172497, 26.595093, 33.887432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463478, 25.856007, 33.892582>,  <41.685730, 26.102737, 33.990604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463478, 25.856007, 33.892582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443195, 26.220352, 34.056412>,  <42.431026, 26.438959, 34.154709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443195, 26.220352, 34.056412>,  <42.463478, 25.856007, 33.892582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443195, 26.220352, 34.056412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456053, -0.343732, 0.820892,
		0.888507, 0.228415, -0.397973,
		-0.050708, 0.910865, 0.409577,
		42.427982, 26.493612, 34.179283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027672, 26.274076, 34.367695>,  <42.463478, 25.856007, 33.892582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027672, 26.274076, 34.367695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955128, 26.573668, 34.112778>,  <42.911602, 26.753422, 33.959827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955128, 26.573668, 34.112778>,  <43.027672, 26.274076, 34.367695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955128, 26.573668, 34.112778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382709, 0.650708, 0.655830,
		0.905894, -0.124958, -0.404651,
		-0.181358, 0.748976, -0.637295,
		42.900719, 26.798361, 33.921589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683674, 26.687275, 34.090134>,  <43.027672, 26.274076, 34.367695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683674, 26.687275, 34.090134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349072, 26.906054, 34.103390>,  <43.148308, 27.037321, 34.111343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349072, 26.906054, 34.103390>,  <43.683674, 26.687275, 34.090134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349072, 26.906054, 34.103390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503231, 0.742901, 0.441426,
		0.216816, 0.385935, -0.896685,
		-0.836510, 0.546948, 0.033142,
		43.098118, 27.070137, 34.113331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898518, 27.397015, 34.027687>,  <43.683674, 26.687275, 34.090134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898518, 27.397015, 34.027687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526768, 27.437414, 34.169708>,  <43.303719, 27.461653, 34.254921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526768, 27.437414, 34.169708>,  <43.898518, 27.397015, 34.027687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526768, 27.437414, 34.169708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253943, 0.873004, 0.416386,
		-0.267908, 0.477142, -0.836996,
		-0.929375, 0.100997, 0.355051,
		43.247955, 27.467712, 34.276222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641087, 28.047913, 33.827835>,  <43.898518, 27.397015, 34.027687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641087, 28.047913, 33.827835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440186, 27.922306, 34.150112>,  <43.319645, 27.846943, 34.343479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440186, 27.922306, 34.150112>,  <43.641087, 28.047913, 33.827835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440186, 27.922306, 34.150112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023103, 0.936274, 0.350509,
		-0.864413, 0.157430, -0.477500,
		-0.502252, -0.314017, 0.805690,
		43.289509, 27.828100, 34.391819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181789, 28.625456, 33.909321>,  <43.641087, 28.047913, 33.827835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181789, 28.625456, 33.909321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138241, 28.429388, 34.255241>,  <43.112114, 28.311747, 34.462795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138241, 28.429388, 34.255241>,  <43.181789, 28.625456, 33.909321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138241, 28.429388, 34.255241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130011, 0.869520, 0.476479,
		-0.985518, -0.060560, -0.158391,
		-0.108869, -0.490171, 0.864800,
		43.105579, 28.282337, 34.514683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600117, 28.878040, 34.219990>,  <43.181789, 28.625456, 33.909321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600117, 28.878040, 34.219990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830067, 28.728529, 34.511143>,  <42.968037, 28.638823, 34.685833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830067, 28.728529, 34.511143>,  <42.600117, 28.878040, 34.219990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830067, 28.728529, 34.511143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167161, 0.817158, 0.551643,
		-0.800988, -0.438797, 0.407279,
		0.574870, -0.373778, 0.727883,
		43.002529, 28.616396, 34.729507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289356, 29.087065, 34.887547>,  <42.600117, 28.878040, 34.219990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289356, 29.087065, 34.887547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670845, 29.013649, 34.982822>,  <42.899738, 28.969601, 35.039986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670845, 29.013649, 34.982822>,  <42.289356, 29.087065, 34.887547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670845, 29.013649, 34.982822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030789, 0.847554, 0.529816,
		-0.299117, -0.497962, 0.813979,
		0.953720, -0.183539, 0.238186,
		42.956963, 28.958588, 35.054279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372910, 29.336916, 35.483997>,  <42.289356, 29.087065, 34.887547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372910, 29.336916, 35.483997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762093, 29.274961, 35.415466>,  <42.995605, 29.237789, 35.374348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762093, 29.274961, 35.415466>,  <42.372910, 29.336916, 35.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762093, 29.274961, 35.415466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210855, 0.898402, 0.385245,
		0.094256, -0.410955, 0.906770,
		0.972962, -0.154886, -0.171332,
		43.053982, 29.228497, 35.364067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724026, 29.560249, 36.105640>,  <42.372910, 29.336916, 35.483997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724026, 29.560249, 36.105640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999619, 29.576021, 35.816158>,  <43.164974, 29.585484, 35.642467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999619, 29.576021, 35.816158>,  <42.724026, 29.560249, 36.105640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999619, 29.576021, 35.816158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357840, 0.849827, 0.386968,
		0.630285, -0.525585, 0.571403,
		0.688978, 0.039429, -0.723709,
		43.206310, 29.587851, 35.599045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424335, 29.681116, 36.450848>,  <42.724026, 29.560249, 36.105640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424335, 29.681116, 36.450848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508636, 29.780443, 36.072659>,  <43.559219, 29.840040, 35.845745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508636, 29.780443, 36.072659>,  <43.424335, 29.681116, 36.450848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508636, 29.780443, 36.072659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630610, 0.704498, 0.325597,
		0.746936, -0.664846, -0.008117,
		0.210754, 0.248319, -0.945474,
		43.571861, 29.854939, 35.789017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214214, 29.641178, 36.294449>,  <43.424335, 29.681116, 36.450848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214214, 29.641178, 36.294449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052059, 29.891987, 36.028362>,  <43.954765, 30.042471, 35.868710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052059, 29.891987, 36.028362>,  <44.214214, 29.641178, 36.294449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052059, 29.891987, 36.028362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590057, 0.735274, 0.333473,
		0.698208, -0.257329, -0.668047,
		-0.405386, 0.627020, -0.665213,
		43.930443, 30.080093, 35.828796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802059, 30.139328, 36.073673>,  <44.214214, 29.641178, 36.294449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802059, 30.139328, 36.073673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478668, 30.326500, 35.930897>,  <44.284634, 30.438803, 35.845230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478668, 30.326500, 35.930897>,  <44.802059, 30.139328, 36.073673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478668, 30.326500, 35.930897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479394, 0.875421, 0.061800,
		0.341393, -0.121152, -0.932080,
		-0.808475, 0.467931, -0.356943,
		44.236126, 30.466879, 35.823814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043736, 30.634184, 35.531384>,  <44.802059, 30.139328, 36.073673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043736, 30.634184, 35.531384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684666, 30.755318, 35.659431>,  <44.469223, 30.827997, 35.736259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684666, 30.755318, 35.659431>,  <45.043736, 30.634184, 35.531384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684666, 30.755318, 35.659431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345826, 0.934364, 0.085844,
		-0.273110, 0.187765, -0.943480,
		-0.897672, 0.302835, 0.320118,
		44.415363, 30.846169, 35.755466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887890, 31.214598, 35.078365>,  <45.043736, 30.634184, 35.531384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887890, 31.214598, 35.078365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655643, 31.262951, 35.400429>,  <44.516296, 31.291964, 35.593666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655643, 31.262951, 35.400429>,  <44.887890, 31.214598, 35.078365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655643, 31.262951, 35.400429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178019, 0.983837, -0.019336,
		-0.794480, 0.132106, -0.592747,
		-0.580612, 0.120882, 0.805157,
		44.481461, 31.299215, 35.641975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375191, 31.778753, 34.851856>,  <44.887890, 31.214598, 35.078365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375191, 31.778753, 34.851856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384026, 31.749279, 35.250671>,  <44.389328, 31.731594, 35.489960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384026, 31.749279, 35.250671>,  <44.375191, 31.778753, 34.851856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384026, 31.749279, 35.250671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115471, 0.990794, 0.070665,
		-0.993065, 0.113568, 0.030395,
		0.022090, -0.073684, 0.997037,
		44.390652, 31.727173, 35.549782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062244, 32.350101, 35.041866>,  <44.375191, 31.778753, 34.851856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062244, 32.350101, 35.041866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264626, 32.229633, 35.365177>,  <44.386055, 32.157352, 35.559162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264626, 32.229633, 35.365177>,  <44.062244, 32.350101, 35.041866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264626, 32.229633, 35.365177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123820, 0.952718, 0.277483,
		-0.853629, -0.040312, 0.519320,
		0.505951, -0.301170, 0.808276,
		44.416412, 32.139282, 35.607658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695164, 32.709988, 35.662018>,  <44.062244, 32.350101, 35.041866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695164, 32.709988, 35.662018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066292, 32.599987, 35.762840>,  <44.288967, 32.533985, 35.823334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066292, 32.599987, 35.762840>,  <43.695164, 32.709988, 35.662018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066292, 32.599987, 35.762840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182445, 0.923873, 0.336412,
		-0.325380, -0.266142, 0.907357,
		0.927816, -0.275004, 0.252053,
		44.344635, 32.517487, 35.838455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812336, 32.809456, 36.381275>,  <43.695164, 32.709988, 35.662018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812336, 32.809456, 36.381275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174843, 32.816753, 36.212353>,  <44.392349, 32.821133, 36.111000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174843, 32.816753, 36.212353>,  <43.812336, 32.809456, 36.381275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174843, 32.816753, 36.212353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154744, 0.915391, 0.371635,
		0.393355, -0.402151, 0.826768,
		0.906270, 0.018247, -0.422304,
		44.446724, 32.822227, 36.085663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216778, 33.230816, 36.822693>,  <43.812336, 32.809456, 36.381275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216778, 33.230816, 36.822693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451618, 33.216248, 36.499218>,  <44.592522, 33.207504, 36.305134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451618, 33.216248, 36.499218>,  <44.216778, 33.230816, 36.822693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451618, 33.216248, 36.499218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238665, 0.962371, 0.129924,
		0.773529, -0.269286, 0.573706,
		0.587105, -0.036424, -0.808691,
		44.627750, 33.205322, 36.256611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705353, 33.535866, 37.051228>,  <44.216778, 33.230816, 36.822693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705353, 33.535866, 37.051228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783016, 33.562531, 36.659748>,  <44.829617, 33.578529, 36.424858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783016, 33.562531, 36.659748>,  <44.705353, 33.535866, 37.051228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783016, 33.562531, 36.659748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269008, 0.955823, 0.118475,
		0.943365, -0.286282, 0.167648,
		0.194159, 0.066666, -0.978702,
		44.841263, 33.582531, 36.366138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433285, 33.864063, 36.902588>,  <44.705353, 33.535866, 37.051228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433285, 33.864063, 36.902588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208569, 33.930222, 36.578358>,  <45.073738, 33.969917, 36.383820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208569, 33.930222, 36.578358>,  <45.433285, 33.864063, 36.902588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208569, 33.930222, 36.578358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102091, 0.986183, 0.130466,
		0.820955, -0.009458, -0.570914,
		-0.561792, 0.165392, -0.810577,
		45.040031, 33.979839, 36.335186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777832, 34.325409, 36.502102>,  <45.433285, 33.864063, 36.902588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777832, 34.325409, 36.502102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396549, 34.388073, 36.398670>,  <45.167782, 34.425671, 36.336613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396549, 34.388073, 36.398670>,  <45.777832, 34.325409, 36.502102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396549, 34.388073, 36.398670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126157, 0.983360, 0.130718,
		0.274753, 0.091980, -0.957106,
		-0.953203, 0.156661, -0.258577,
		45.110588, 34.435070, 36.321098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721756, 34.822750, 35.900028>,  <45.777832, 34.325409, 36.502102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721756, 34.822750, 35.900028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397984, 34.820332, 36.134899>,  <45.203720, 34.818882, 36.275822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397984, 34.820332, 36.134899>,  <45.721756, 34.822750, 35.900028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397984, 34.820332, 36.134899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176516, 0.951197, 0.253114,
		-0.560055, 0.308526, -0.768863,
		-0.809432, -0.006042, 0.587182,
		45.155155, 34.818520, 36.311054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520344, 34.571671, 35.783329>,  <45.721756, 34.822750, 35.900028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520344, 34.571671, 35.783329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286388, 34.876324, 35.671741>,  <46.146015, 35.059116, 35.604790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286388, 34.876324, 35.671741>,  <46.520344, 34.571671, 35.783329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286388, 34.876324, 35.671741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809409, 0.525747, -0.261624,
		-0.052596, -0.378819, -0.923975,
		-0.584886, 0.761634, -0.278967,
		46.110924, 35.104813, 35.588051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991547, 34.560246, 35.224178>,  <46.520344, 34.571671, 35.783329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991547, 34.560246, 35.224178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761654, 34.860680, 35.354134>,  <46.623718, 35.040939, 35.432106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761654, 34.860680, 35.354134>,  <46.991547, 34.560246, 35.224178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.761654, 34.860680, 35.354134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818023, 0.516178, 0.253768,
		0.022903, 0.411613, -0.911071,
		-0.574729, 0.751089, 0.324887,
		46.589233, 35.086006, 35.451599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.308681, 35.156296, 35.012478>,  <46.991547, 34.560246, 35.224178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.308681, 35.156296, 35.012478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070961, 35.283733, 35.307858>,  <46.928329, 35.360195, 35.485085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070961, 35.283733, 35.307858>,  <47.308681, 35.156296, 35.012478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.070961, 35.283733, 35.307858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699851, 0.657261, 0.279673,
		-0.396251, 0.683012, -0.613579,
		-0.594302, 0.318593, 0.738447,
		46.892670, 35.379311, 35.529392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.918152, 34.807514, 34.792328>,  <47.308681, 35.156296, 35.012478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.918152, 34.807514, 34.792328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835266, 34.982841, 35.142174>,  <47.785534, 35.088036, 35.352081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835266, 34.982841, 35.142174>,  <47.918152, 34.807514, 34.792328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.835266, 34.982841, 35.142174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942913, -0.327743, -0.059149,
		0.260722, -0.836938, 0.481206,
		-0.207216, 0.438314, 0.874610,
		47.773102, 35.114334, 35.404556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.172276, 39.796547, 43.948727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884998, 39.524525, 43.889771>,  <35.712631, 39.361313, 43.854397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884998, 39.524525, 43.889771>,  <36.172276, 39.796547, 43.948727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884998, 39.524525, 43.889771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093792, 0.115280, -0.988895,
		0.689494, -0.724042, -0.019010,
		-0.718193, -0.680054, -0.147394,
		35.669540, 39.320507, 43.845551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468887, 39.179672, 43.531330>,  <36.172276, 39.796547, 43.948727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468887, 39.179672, 43.531330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074112, 39.213703, 43.476597>,  <35.837246, 39.234123, 43.443756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074112, 39.213703, 43.476597>,  <36.468887, 39.179672, 43.531330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074112, 39.213703, 43.476597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140482, 0.038493, -0.989335,
		-0.078908, -0.995630, -0.049943,
		-0.986934, 0.085083, -0.136831,
		35.778030, 39.239227, 43.435547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323997, 38.710094, 43.010166>,  <36.468887, 39.179672, 43.531330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323997, 38.710094, 43.010166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009968, 38.955345, 42.974979>,  <35.821552, 39.102497, 42.953865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009968, 38.955345, 42.974979>,  <36.323997, 38.710094, 43.010166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009968, 38.955345, 42.974979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051718, -0.206416, -0.977097,
		-0.617242, -0.762541, 0.193761,
		-0.785071, 0.613126, -0.087971,
		35.774445, 39.139282, 42.948589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082882, 38.474678, 42.420910>,  <36.323997, 38.710094, 43.010166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082882, 38.474678, 42.420910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893723, 38.825928, 42.449932>,  <35.780228, 39.036678, 42.467346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893723, 38.825928, 42.449932>,  <36.082882, 38.474678, 42.420910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893723, 38.825928, 42.449932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061287, 0.049367, -0.996899,
		-0.878985, -0.475874, 0.030472,
		-0.472894, 0.878127, 0.072558,
		35.751854, 39.089367, 42.471699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414837, 38.454914, 41.962620>,  <36.082882, 38.474678, 42.420910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414837, 38.454914, 41.962620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528053, 38.834705, 42.016846>,  <35.595985, 39.062580, 42.049381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528053, 38.834705, 42.016846>,  <35.414837, 38.454914, 41.962620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528053, 38.834705, 42.016846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093525, 0.167992, -0.981342,
		-0.954536, 0.265086, 0.136349,
		0.283045, 0.949478, 0.135562,
		35.612968, 39.119549, 42.057514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095959, 38.726578, 41.465244>,  <35.414837, 38.454914, 41.962620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095959, 38.726578, 41.465244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330936, 39.038345, 41.552349>,  <35.471924, 39.225407, 41.604614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330936, 39.038345, 41.552349>,  <35.095959, 38.726578, 41.465244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330936, 39.038345, 41.552349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018381, 0.281870, -0.959276,
		-0.809056, 0.559519, 0.179909,
		0.587444, 0.779415, 0.217764,
		35.507172, 39.272171, 41.617680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809166, 39.213867, 41.129482>,  <35.095959, 38.726578, 41.465244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809166, 39.213867, 41.129482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180599, 39.351219, 41.185799>,  <35.403461, 39.433632, 41.219589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180599, 39.351219, 41.185799>,  <34.809166, 39.213867, 41.129482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180599, 39.351219, 41.185799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035141, 0.296300, -0.954448,
		-0.369452, 0.891234, 0.263073,
		0.928585, 0.343379, 0.140787,
		35.459175, 39.454231, 41.228035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937157, 40.002537, 40.990170>,  <34.809166, 39.213867, 41.129482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937157, 40.002537, 40.990170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299469, 39.838375, 40.947964>,  <35.516857, 39.739880, 40.922642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299469, 39.838375, 40.947964>,  <34.937157, 40.002537, 40.990170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299469, 39.838375, 40.947964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117719, 0.482909, -0.867722,
		0.407067, 0.773545, 0.485721,
		0.905781, -0.410400, -0.105516,
		35.571201, 39.715256, 40.916309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201530, 40.452316, 40.508179>,  <34.937157, 40.002537, 40.990170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201530, 40.452316, 40.508179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465630, 40.152592, 40.487762>,  <35.624088, 39.972755, 40.475513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465630, 40.152592, 40.487762>,  <35.201530, 40.452316, 40.508179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465630, 40.152592, 40.487762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191921, 0.234024, -0.953100,
		0.726114, 0.619485, 0.298323,
		0.660246, -0.749313, -0.051036,
		35.663704, 39.927799, 40.472450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618614, 40.728909, 40.008671>,  <35.201530, 40.452316, 40.508179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618614, 40.728909, 40.008671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732113, 40.345650, 40.023869>,  <35.800213, 40.115696, 40.032990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732113, 40.345650, 40.023869>,  <35.618614, 40.728909, 40.008671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732113, 40.345650, 40.023869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419952, 0.088546, -0.903216,
		0.862049, 0.272240, 0.427500,
		0.283745, -0.958147, 0.037997,
		35.817238, 40.058205, 40.035267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345459, 40.635185, 39.987419>,  <35.618614, 40.728909, 40.008671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345459, 40.635185, 39.987419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208103, 40.286266, 39.848175>,  <36.125690, 40.076916, 39.764629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208103, 40.286266, 39.848175>,  <36.345459, 40.635185, 39.987419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208103, 40.286266, 39.848175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622134, 0.066405, -0.780090,
		0.703585, -0.484450, 0.519881,
		-0.343392, -0.872295, -0.348114,
		36.105087, 40.024578, 39.743740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939289, 40.206593, 39.785698>,  <36.345459, 40.635185, 39.987419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939289, 40.206593, 39.785698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645844, 40.022964, 39.585274>,  <36.469776, 39.912788, 39.465019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645844, 40.022964, 39.585274>,  <36.939289, 40.206593, 39.785698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645844, 40.022964, 39.585274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605633, -0.107218, -0.788488,
		0.308245, -0.881908, 0.356683,
		-0.733617, -0.459066, -0.501063,
		36.425758, 39.885246, 39.434956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313877, 39.781643, 39.366657>,  <36.939289, 40.206593, 39.785698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313877, 39.781643, 39.366657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952869, 39.709499, 39.210232>,  <36.736267, 39.666214, 39.116375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952869, 39.709499, 39.210232>,  <37.313877, 39.781643, 39.366657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952869, 39.709499, 39.210232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418661, -0.154650, -0.894878,
		0.100923, -0.971367, 0.215084,
		-0.902518, -0.180361, -0.391065,
		36.682114, 39.655392, 39.092911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341099, 39.107815, 39.117477>,  <37.313877, 39.781643, 39.366657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341099, 39.107815, 39.117477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097046, 39.372730, 38.943531>,  <36.950615, 39.531681, 38.839165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097046, 39.372730, 38.943531>,  <37.341099, 39.107815, 39.117477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097046, 39.372730, 38.943531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503946, -0.099129, -0.858028,
		-0.611372, -0.742660, -0.273277,
		-0.610133, 0.662292, -0.434865,
		36.914005, 39.571419, 38.813072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292812, 38.795418, 38.522167>,  <37.341099, 39.107815, 39.117477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292812, 38.795418, 38.522167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144306, 39.155312, 38.430393>,  <37.055202, 39.371246, 38.375328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144306, 39.155312, 38.430393>,  <37.292812, 38.795418, 38.522167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144306, 39.155312, 38.430393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512060, -0.007727, -0.858915,
		-0.774569, -0.436367, -0.457850,
		-0.371265, 0.899735, -0.229432,
		37.032928, 39.425232, 38.361565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104805, 38.754894, 37.941658>,  <37.292812, 38.795418, 38.522167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104805, 38.754894, 37.941658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159672, 39.150616, 37.961536>,  <37.192593, 39.388046, 37.973465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159672, 39.150616, 37.961536>,  <37.104805, 38.754894, 37.941658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159672, 39.150616, 37.961536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470128, -0.020859, -0.882352,
		-0.871874, 0.144395, -0.467959,
		0.137168, 0.989300, 0.049698,
		37.200821, 39.447407, 37.976444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904221, 38.992245, 37.338104>,  <37.104805, 38.754894, 37.941658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904221, 38.992245, 37.338104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144268, 39.282364, 37.473049>,  <37.288296, 39.456436, 37.554016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144268, 39.282364, 37.473049>,  <36.904221, 38.992245, 37.338104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144268, 39.282364, 37.473049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440079, 0.052823, -0.896404,
		-0.667977, 0.686410, -0.287486,
		0.600115, 0.725294, 0.337359,
		37.324303, 39.499950, 37.574257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989044, 39.494183, 36.754440>,  <36.904221, 38.992245, 37.338104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989044, 39.494183, 36.754440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282803, 39.584602, 37.010429>,  <37.459057, 39.638855, 37.164024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282803, 39.584602, 37.010429>,  <36.989044, 39.494183, 36.754440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282803, 39.584602, 37.010429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668151, -0.075031, -0.740233,
		-0.119309, 0.971223, -0.206135,
		0.734397, 0.226046, 0.639972,
		37.503120, 39.652416, 37.202419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400028, 40.157711, 36.560009>,  <36.989044, 39.494183, 36.754440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400028, 40.157711, 36.560009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636066, 39.944824, 36.802837>,  <37.777691, 39.817093, 36.948532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636066, 39.944824, 36.802837>,  <37.400028, 40.157711, 36.560009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636066, 39.944824, 36.802837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765656, 0.130453, -0.629884,
		0.256041, 0.836497, 0.484475,
		0.590097, -0.532217, 0.607067,
		37.813095, 39.785160, 36.984959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003780, 40.513908, 36.777493>,  <37.400028, 40.157711, 36.560009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003780, 40.513908, 36.777493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.108658, 40.128578, 36.800312>,  <38.171585, 39.897381, 36.814003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.108658, 40.128578, 36.800312>,  <38.003780, 40.513908, 36.777493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108658, 40.128578, 36.800312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727951, 0.158629, -0.667026,
		0.633514, 0.216422, 0.742847,
		0.262196, -0.963327, 0.057051,
		38.187317, 39.839581, 36.817429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835243, 40.555946, 36.799927>,  <38.003780, 40.513908, 36.777493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835243, 40.555946, 36.799927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754322, 40.167690, 36.747871>,  <38.705769, 39.934738, 36.716640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754322, 40.167690, 36.747871>,  <38.835243, 40.555946, 36.799927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754322, 40.167690, 36.747871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814552, -0.093000, -0.572586,
		0.543671, -0.221837, 0.809450,
		-0.202300, -0.970638, -0.130136,
		38.693630, 39.876499, 36.708832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528835, 40.240452, 36.948475>,  <38.835243, 40.555946, 36.799927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528835, 40.240452, 36.948475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261246, 40.038586, 36.730198>,  <39.100693, 39.917465, 36.599232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261246, 40.038586, 36.730198>,  <39.528835, 40.240452, 36.948475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261246, 40.038586, 36.730198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679819, -0.118596, -0.723728,
		0.300525, -0.855129, 0.422420,
		-0.668978, -0.504667, -0.545692,
		39.060551, 39.887184, 36.566490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252975, 40.127113, 36.755333>,  <39.528835, 40.240452, 36.948475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252975, 40.127113, 36.755333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.650562, 40.113605, 36.797077>,  <40.889114, 40.105499, 36.822124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.650562, 40.113605, 36.797077>,  <40.252975, 40.127113, 36.755333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650562, 40.113605, 36.797077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107897, -0.129828, 0.985649,
		-0.019737, -0.990961, -0.132688,
		0.993966, -0.033770, 0.104359,
		40.948753, 40.103474, 36.828384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440430, 39.490330, 37.077129>,  <40.252975, 40.127113, 36.755333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440430, 39.490330, 37.077129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.753517, 39.729294, 37.146931>,  <40.941368, 39.872673, 37.188812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.753517, 39.729294, 37.146931>,  <40.440430, 39.490330, 37.077129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753517, 39.729294, 37.146931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020930, -0.254952, 0.966727,
		0.622025, -0.760327, -0.187051,
		0.782718, 0.597414, 0.174500,
		40.988331, 39.908520, 37.199280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916904, 39.129654, 37.563110>,  <40.440430, 39.490330, 37.077129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916904, 39.129654, 37.563110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.015331, 39.515728, 37.598606>,  <41.074387, 39.747372, 37.619904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.015331, 39.515728, 37.598606>,  <40.916904, 39.129654, 37.563110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015331, 39.515728, 37.598606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007333, -0.089699, 0.995942,
		0.969225, -0.245720, -0.014994,
		0.246068, 0.965182, 0.088740,
		41.089153, 39.805283, 37.625229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611656, 39.175079, 37.968685>,  <40.916904, 39.129654, 37.563110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611656, 39.175079, 37.968685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386604, 39.504978, 37.991478>,  <41.251575, 39.702919, 38.005154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386604, 39.504978, 37.991478>,  <41.611656, 39.175079, 37.968685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386604, 39.504978, 37.991478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173055, 0.050100, 0.983637,
		0.808397, 0.563279, -0.170914,
		-0.562625, 0.824746, 0.056978,
		41.217815, 39.752403, 38.008572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948601, 39.553036, 38.524021>,  <41.611656, 39.175079, 37.968685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948601, 39.553036, 38.524021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600674, 39.739239, 38.458641>,  <41.391918, 39.850960, 38.419415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600674, 39.739239, 38.458641>,  <41.948601, 39.553036, 38.524021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600674, 39.739239, 38.458641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170053, 0.028120, 0.985034,
		0.463141, 0.884595, 0.054702,
		-0.869817, 0.465512, -0.163452,
		41.339729, 39.878891, 38.409607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865204, 39.879524, 39.120911>,  <41.948601, 39.553036, 38.524021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865204, 39.879524, 39.120911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.497047, 39.916451, 38.968929>,  <41.276154, 39.938606, 38.877739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.497047, 39.916451, 38.968929>,  <41.865204, 39.879524, 39.120911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497047, 39.916451, 38.968929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378562, 0.032831, 0.924993,
		0.097868, 0.995188, 0.004732,
		-0.920387, 0.092319, -0.379954,
		41.220932, 39.944145, 38.854942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585503, 40.488945, 39.416843>,  <41.865204, 39.879524, 39.120911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585503, 40.488945, 39.416843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269794, 40.271507, 39.302608>,  <41.080368, 40.141045, 39.234070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269794, 40.271507, 39.302608>,  <41.585503, 40.488945, 39.416843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269794, 40.271507, 39.302608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298437, -0.066873, 0.952084,
		-0.536644, 0.836680, -0.109448,
		-0.789271, -0.543593, -0.285584,
		41.033012, 40.108429, 39.216934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955677, 40.854012, 39.640064>,  <41.585503, 40.488945, 39.416843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955677, 40.854012, 39.640064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872570, 40.464497, 39.603020>,  <40.822704, 40.230789, 39.580791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872570, 40.464497, 39.603020>,  <40.955677, 40.854012, 39.640064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872570, 40.464497, 39.603020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432109, 0.006429, 0.901799,
		-0.877561, 0.227385, -0.422116,
		-0.207769, -0.973784, -0.092613,
		40.810238, 40.172363, 39.575237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239082, 40.689854, 40.001408>,  <40.955677, 40.854012, 39.640064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239082, 40.689854, 40.001408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.368294, 40.312485, 39.971447>,  <40.445820, 40.086063, 39.953472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.368294, 40.312485, 39.971447>,  <40.239082, 40.689854, 40.001408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368294, 40.312485, 39.971447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548252, -0.251056, 0.797741,
		-0.771411, -0.216626, -0.598330,
		0.323026, -0.943421, -0.074901,
		40.465202, 40.029457, 39.948978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591888, 40.236965, 40.002041>,  <40.239082, 40.689854, 40.001408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591888, 40.236965, 40.002041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918873, 40.026394, 40.095535>,  <40.115063, 39.900051, 40.151630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918873, 40.026394, 40.095535>,  <39.591888, 40.236965, 40.002041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918873, 40.026394, 40.095535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479870, -0.398010, 0.781865,
		-0.318563, -0.751308, -0.577974,
		0.817461, -0.526425, 0.233739,
		40.164112, 39.868465, 40.165657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347885, 39.609993, 40.151451>,  <39.591888, 40.236965, 40.002041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347885, 39.609993, 40.151451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716980, 39.562344, 40.298073>,  <39.938438, 39.533752, 40.386044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716980, 39.562344, 40.298073>,  <39.347885, 39.609993, 40.151451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716980, 39.562344, 40.298073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378699, -0.457066, 0.804784,
		0.071670, -0.881419, -0.466865,
		0.922741, -0.119122, 0.366551,
		39.993801, 39.526608, 40.408039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379406, 38.921494, 40.352512>,  <39.347885, 39.609993, 40.151451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379406, 38.921494, 40.352512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664345, 39.112469, 40.558273>,  <39.835308, 39.227055, 40.681732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664345, 39.112469, 40.558273>,  <39.379406, 38.921494, 40.352512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664345, 39.112469, 40.558273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354395, -0.387938, 0.850828,
		0.605777, -0.788387, -0.107144,
		0.712346, 0.477441, 0.514405,
		39.878048, 39.255699, 40.712593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790710, 38.445023, 40.684719>,  <39.379406, 38.921494, 40.352512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790710, 38.445023, 40.684719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807781, 38.792900, 40.881416>,  <39.818024, 39.001629, 40.999435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807781, 38.792900, 40.881416>,  <39.790710, 38.445023, 40.684719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807781, 38.792900, 40.881416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148145, -0.481238, 0.863981,
		0.988044, -0.109720, 0.108304,
		0.042676, 0.869696, 0.491739,
		39.820583, 39.053810, 41.028938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288254, 38.362404, 41.344585>,  <39.790710, 38.445023, 40.684719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288254, 38.362404, 41.344585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.085545, 38.692696, 41.443665>,  <39.963917, 38.890869, 41.503113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.085545, 38.692696, 41.443665>,  <40.288254, 38.362404, 41.344585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085545, 38.692696, 41.443665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153120, -0.368971, 0.916741,
		0.848370, 0.426656, 0.313421,
		-0.506777, 0.825727, 0.247694,
		39.933510, 38.940414, 41.517971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395741, 38.442326, 42.075760>,  <40.288254, 38.362404, 41.344585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395741, 38.442326, 42.075760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.096516, 38.695450, 41.995804>,  <39.916981, 38.847324, 41.947830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.096516, 38.695450, 41.995804>,  <40.395741, 38.442326, 42.075760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096516, 38.695450, 41.995804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312947, -0.070762, 0.947131,
		0.585210, 0.771066, 0.250970,
		-0.748060, 0.632811, -0.199893,
		39.872097, 38.885292, 41.935837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310562, 38.845974, 42.730370>,  <40.395741, 38.442326, 42.075760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310562, 38.845974, 42.730370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975338, 38.914192, 42.523079>,  <39.774204, 38.955124, 42.398705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975338, 38.914192, 42.523079>,  <40.310562, 38.845974, 42.730370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975338, 38.914192, 42.523079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525478, 0.003094, 0.850801,
		0.146706, 0.985345, 0.087026,
		-0.838063, 0.170548, -0.518231,
		39.723919, 38.965355, 42.367611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078152, 39.465908, 42.954659>,  <40.310562, 38.845974, 42.730370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078152, 39.465908, 42.954659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.760826, 39.267323, 42.813705>,  <39.570431, 39.148170, 42.729134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.760826, 39.267323, 42.813705>,  <40.078152, 39.465908, 42.954659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760826, 39.267323, 42.813705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446599, 0.081191, 0.891043,
		-0.413762, 0.864251, -0.286131,
		-0.793316, -0.496466, -0.352380,
		39.522831, 39.118382, 42.707993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509563, 39.800110, 43.197449>,  <40.078152, 39.465908, 42.954659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509563, 39.800110, 43.197449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342812, 39.447792, 43.107639>,  <39.242760, 39.236401, 43.053753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342812, 39.447792, 43.107639>,  <39.509563, 39.800110, 43.197449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342812, 39.447792, 43.107639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503620, 0.018188, 0.863734,
		-0.756687, 0.473151, -0.451167,
		-0.416883, -0.880793, -0.224526,
		39.217747, 39.183556, 43.040283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.778744, 39.839443, 43.465569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856819, 39.448353, 43.434704>,  <38.903664, 39.213699, 43.416187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856819, 39.448353, 43.434704>,  <38.778744, 39.839443, 43.465569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856819, 39.448353, 43.434704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492858, -0.165799, 0.854167,
		-0.847935, -0.128693, -0.514242,
		0.195186, -0.977727, -0.077159,
		38.915375, 39.155033, 43.411556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120712, 39.597706, 43.615913>,  <38.778744, 39.839443, 43.465569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120712, 39.597706, 43.615913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356869, 39.276852, 43.651730>,  <38.498562, 39.084339, 43.673222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356869, 39.276852, 43.651730>,  <38.120712, 39.597706, 43.615913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356869, 39.276852, 43.651730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518817, -0.292174, 0.803407,
		-0.618280, -0.520779, -0.588658,
		0.590388, -0.802137, 0.089544,
		38.533985, 39.036209, 43.678593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674843, 38.997772, 43.556049>,  <38.120712, 39.597706, 43.615913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674843, 38.997772, 43.556049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998123, 38.891617, 43.766335>,  <38.192093, 38.827923, 43.892506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998123, 38.891617, 43.766335>,  <37.674843, 38.997772, 43.556049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998123, 38.891617, 43.766335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568163, -0.116574, 0.814617,
		-0.154914, -0.957065, -0.245005,
		0.808203, -0.265399, 0.525710,
		38.240585, 38.812000, 43.924049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490990, 38.384262, 43.835617>,  <37.674843, 38.997772, 43.556049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490990, 38.384262, 43.835617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811104, 38.478561, 44.056149>,  <38.003174, 38.535141, 44.188469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811104, 38.478561, 44.056149>,  <37.490990, 38.384262, 43.835617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811104, 38.478561, 44.056149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512534, -0.208259, 0.833029,
		0.311202, -0.949238, -0.045839,
		0.800289, 0.235746, 0.551327,
		38.051189, 38.549286, 44.221546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524033, 37.875805, 44.332615>,  <37.490990, 38.384262, 43.835617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524033, 37.875805, 44.332615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708393, 38.199963, 44.477299>,  <37.819008, 38.394459, 44.564110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708393, 38.199963, 44.477299>,  <37.524033, 37.875805, 44.332615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708393, 38.199963, 44.477299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585122, -0.028947, 0.810429,
		0.667236, -0.585171, 0.460837,
		0.460899, 0.810393, 0.361711,
		37.846664, 38.443081, 44.585812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618401, 37.623260, 45.012623>,  <37.524033, 37.875805, 44.332615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618401, 37.623260, 45.012623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653450, 38.021709, 45.015724>,  <37.674480, 38.260780, 45.017586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653450, 38.021709, 45.015724>,  <37.618401, 37.623260, 45.012623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653450, 38.021709, 45.015724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330971, 0.021772, 0.943390,
		0.939564, -0.085228, 0.331595,
		0.087622, 0.996124, 0.007752,
		37.679737, 38.320545, 45.018051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005810, 37.820694, 45.620773>,  <37.618401, 37.623260, 45.012623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005810, 37.820694, 45.620773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821220, 38.159935, 45.516651>,  <37.710464, 38.363480, 45.454178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821220, 38.159935, 45.516651>,  <38.005810, 37.820694, 45.620773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821220, 38.159935, 45.516651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404087, 0.060270, 0.912733,
		0.789781, 0.526391, 0.314894,
		-0.461476, 0.848104, -0.260308,
		37.682777, 38.414368, 45.438560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191578, 38.338718, 46.106224>,  <38.005810, 37.820694, 45.620773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191578, 38.338718, 46.106224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842926, 38.433491, 45.934589>,  <37.633736, 38.490356, 45.831608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842926, 38.433491, 45.934589>,  <38.191578, 38.338718, 46.106224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842926, 38.433491, 45.934589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426739, 0.063848, 0.902118,
		0.241138, 0.969426, 0.045456,
		-0.871634, 0.236933, -0.429088,
		37.581436, 38.504570, 45.805862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938984, 38.939754, 46.402233>,  <38.191578, 38.338718, 46.106224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938984, 38.939754, 46.402233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627403, 38.726624, 46.269970>,  <37.440456, 38.598743, 46.190613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627403, 38.726624, 46.269970>,  <37.938984, 38.939754, 46.402233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627403, 38.726624, 46.269970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344119, -0.077597, 0.935714,
		-0.524236, 0.842656, -0.122913,
		-0.778947, -0.532832, -0.330653,
		37.393719, 38.566772, 46.170773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404594, 39.197922, 46.796539>,  <37.938984, 38.939754, 46.402233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404594, 39.197922, 46.796539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266266, 38.850903, 46.653564>,  <37.183270, 38.642689, 46.567780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266266, 38.850903, 46.653564>,  <37.404594, 39.197922, 46.796539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266266, 38.850903, 46.653564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339902, -0.239241, 0.909522,
		-0.874571, 0.436025, -0.212148,
		-0.345820, -0.867552, -0.357439,
		37.162521, 38.590637, 46.546333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603638, 39.110943, 46.921532>,  <37.404594, 39.197922, 46.796539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603638, 39.110943, 46.921532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760223, 38.745853, 46.874722>,  <36.854176, 38.526802, 46.846634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760223, 38.745853, 46.874722>,  <36.603638, 39.110943, 46.921532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760223, 38.745853, 46.874722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281516, -0.239870, 0.929092,
		-0.876073, -0.330761, -0.350847,
		0.391465, -0.912721, -0.117029,
		36.877663, 38.472038, 46.839615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057472, 38.634323, 47.108349>,  <36.603638, 39.110943, 46.921532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057472, 38.634323, 47.108349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.383781, 38.404282, 47.132908>,  <36.579567, 38.266258, 47.147644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.383781, 38.404282, 47.132908>,  <36.057472, 38.634323, 47.108349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383781, 38.404282, 47.132908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384668, -0.460217, 0.800144,
		-0.431899, -0.676361, -0.596656,
		0.815778, -0.575096, 0.061407,
		36.628513, 38.231750, 47.151329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830090, 37.973541, 47.414532>,  <36.057472, 38.634323, 47.108349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830090, 37.973541, 47.414532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222664, 37.955173, 47.489025>,  <36.458206, 37.944153, 47.533722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222664, 37.955173, 47.489025>,  <35.830090, 37.973541, 47.414532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222664, 37.955173, 47.489025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189228, -0.390676, 0.900869,
		0.031389, -0.919382, -0.392112,
		0.981431, -0.045921, 0.186236,
		36.517094, 37.941399, 47.544895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937534, 37.349392, 47.629562>,  <35.830090, 37.973541, 47.414532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937534, 37.349392, 47.629562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259506, 37.538540, 47.772942>,  <36.452690, 37.652027, 47.858967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259506, 37.538540, 47.772942>,  <35.937534, 37.349392, 47.629562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259506, 37.538540, 47.772942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045264, -0.553392, 0.831690,
		0.591637, -0.685679, -0.424040,
		0.804933, 0.472865, 0.358444,
		36.500984, 37.680401, 47.880474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254528, 36.930435, 48.245209>,  <35.937534, 37.349392, 47.629562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254528, 36.930435, 48.245209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.420326, 37.286938, 48.318813>,  <36.519806, 37.500839, 48.362976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.420326, 37.286938, 48.318813>,  <36.254528, 36.930435, 48.245209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420326, 37.286938, 48.318813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073381, -0.168813, 0.982913,
		0.907089, -0.420914, -0.004571,
		0.414494, 0.891254, 0.184016,
		36.544674, 37.554314, 48.374020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648445, 36.851219, 48.722366>,  <36.254528, 36.930435, 48.245209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648445, 36.851219, 48.722366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599449, 37.247643, 48.743553>,  <36.570049, 37.485497, 48.756264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599449, 37.247643, 48.743553>,  <36.648445, 36.851219, 48.722366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599449, 37.247643, 48.743553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263988, -0.083981, 0.960863,
		0.956716, 0.103718, 0.271914,
		-0.122494, 0.991055, 0.052966,
		36.562702, 37.544960, 48.759441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961487, 37.010849, 49.398003>,  <36.648445, 36.851219, 48.722366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961487, 37.010849, 49.398003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735592, 37.323524, 49.292152>,  <36.600056, 37.511131, 49.228642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735592, 37.323524, 49.292152>,  <36.961487, 37.010849, 49.398003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735592, 37.323524, 49.292152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228997, 0.159628, 0.960250,
		0.792860, 0.602891, 0.088857,
		-0.564742, 0.781691, -0.264623,
		36.566170, 37.558033, 49.212765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098511, 37.625328, 49.915752>,  <36.961487, 37.010849, 49.398003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098511, 37.625328, 49.915752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730541, 37.656616, 49.762070>,  <36.509758, 37.675388, 49.669861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730541, 37.656616, 49.762070>,  <37.098511, 37.625328, 49.915752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730541, 37.656616, 49.762070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388165, -0.043425, 0.920566,
		0.055320, 0.995990, 0.070309,
		-0.919928, 0.078217, -0.384207,
		36.454563, 37.680080, 49.646809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890610, 37.991333, 50.353321>,  <37.098511, 37.625328, 49.915752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890610, 37.991333, 50.353321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550167, 37.896339, 50.166039>,  <36.345901, 37.839344, 50.053669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550167, 37.896339, 50.166039>,  <36.890610, 37.991333, 50.353321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550167, 37.896339, 50.166039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498880, 0.088094, 0.862182,
		-0.163511, 0.967388, -0.193455,
		-0.851107, -0.237487, -0.468206,
		36.294834, 37.825092, 50.025578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363201, 38.583141, 50.470734>,  <36.890610, 37.991333, 50.353321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363201, 38.583141, 50.470734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165359, 38.249535, 50.372936>,  <36.046654, 38.049370, 50.314259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165359, 38.249535, 50.372936>,  <36.363201, 38.583141, 50.470734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165359, 38.249535, 50.372936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592304, 0.117594, 0.797087,
		-0.636037, 0.539056, -0.552156,
		-0.494605, -0.834021, -0.244491,
		36.016979, 37.999329, 50.299587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629326, 38.748951, 50.436134>,  <36.363201, 38.583141, 50.470734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629326, 38.748951, 50.436134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674789, 38.358147, 50.508274>,  <35.702068, 38.123665, 50.551559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674789, 38.358147, 50.508274>,  <35.629326, 38.748951, 50.436134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674789, 38.358147, 50.508274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457452, 0.109676, 0.882445,
		-0.881940, -0.182799, -0.434471,
		0.113659, -0.977014, 0.180350,
		35.708889, 38.065044, 50.562378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999283, 38.566952, 50.678036>,  <35.629326, 38.748951, 50.436134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999283, 38.566952, 50.678036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247135, 38.270260, 50.780720>,  <35.395847, 38.092247, 50.842331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247135, 38.270260, 50.780720>,  <34.999283, 38.566952, 50.678036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247135, 38.270260, 50.780720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492526, -0.112783, 0.862959,
		-0.611128, -0.661151, -0.435204,
		0.619630, -0.741727, 0.256710,
		35.433025, 38.047741, 50.857731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616852, 39.306389, 50.505428>,  <34.999283, 38.566952, 50.678036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616852, 39.306389, 50.505428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761829, 39.675789, 50.455162>,  <34.848816, 39.897427, 50.425003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761829, 39.675789, 50.455162>,  <34.616852, 39.306389, 50.505428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761829, 39.675789, 50.455162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837671, 0.263673, -0.478313,
		-0.408587, 0.278624, 0.869152,
		0.362442, 0.923496, -0.125662,
		34.870564, 39.952839, 50.417465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988567, 38.826694, 50.234104>,  <34.616852, 39.306389, 50.505428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988567, 38.826694, 50.234104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239086, 38.785427, 49.925011>,  <34.389397, 38.760666, 49.739555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239086, 38.785427, 49.925011>,  <33.988567, 38.826694, 50.234104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239086, 38.785427, 49.925011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012138, -0.992375, 0.122660,
		-0.779492, -0.067442, -0.622771,
		0.626294, -0.103172, -0.772730,
		34.426975, 38.754475, 49.693192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840332, 38.603909, 50.942150>,  <33.988567, 38.826694, 50.234104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840332, 38.603909, 50.942150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503883, 38.401360, 51.018154>,  <33.302013, 38.279831, 51.063755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503883, 38.401360, 51.018154>,  <33.840332, 38.603909, 50.942150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503883, 38.401360, 51.018154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096260, -0.485868, -0.868716,
		0.532214, -0.712403, 0.457416,
		-0.841120, -0.506374, 0.190010,
		33.251549, 38.249447, 51.075157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949825, 37.828838, 50.983788>,  <33.840332, 38.603909, 50.942150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949825, 37.828838, 50.983788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569691, 37.882790, 50.871601>,  <33.341610, 37.915161, 50.804287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569691, 37.882790, 50.871601>,  <33.949825, 37.828838, 50.983788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569691, 37.882790, 50.871601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185289, -0.478863, -0.858113,
		-0.250044, -0.867467, 0.430091,
		-0.950340, 0.134875, -0.280469,
		33.284588, 37.923252, 50.787460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709538, 37.201603, 50.625076>,  <33.949825, 37.828838, 50.983788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709538, 37.201603, 50.625076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467472, 37.493057, 50.496788>,  <33.322231, 37.667931, 50.419815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467472, 37.493057, 50.496788>,  <33.709538, 37.201603, 50.625076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467472, 37.493057, 50.496788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023249, -0.386516, -0.921990,
		-0.795762, -0.565411, 0.216965,
		-0.605163, 0.728640, -0.320720,
		33.285923, 37.711651, 50.400574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421963, 36.876785, 50.072304>,  <33.709538, 37.201603, 50.625076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421963, 36.876785, 50.072304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310162, 37.254654, 50.003643>,  <33.243080, 37.481377, 49.962448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310162, 37.254654, 50.003643>,  <33.421963, 36.876785, 50.072304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310162, 37.254654, 50.003643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187901, -0.121498, -0.974644,
		-0.941578, -0.304672, -0.143546,
		-0.279506, 0.944676, -0.171649,
		33.226311, 37.538055, 49.952148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867508, 36.922424, 49.514889>,  <33.421963, 36.876785, 50.072304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867508, 36.922424, 49.514889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.052151, 37.277225, 49.519524>,  <33.162937, 37.490108, 49.522305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.052151, 37.277225, 49.519524>,  <32.867508, 36.922424, 49.514889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052151, 37.277225, 49.519524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129740, -0.054587, -0.990044,
		-0.877544, 0.458518, -0.140278,
		0.461611, 0.887007, 0.011586,
		33.190636, 37.543327, 49.522999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629536, 37.116989, 48.955570>,  <32.867508, 36.922424, 49.514889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629536, 37.116989, 48.955570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916676, 37.375851, 49.058243>,  <33.088959, 37.531166, 49.119846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916676, 37.375851, 49.058243>,  <32.629536, 37.116989, 48.955570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916676, 37.375851, 49.058243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237718, 0.118687, -0.964056,
		-0.654356, 0.753065, -0.068640,
		0.717850, 0.647153, 0.256680,
		33.132030, 37.569996, 49.135246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580673, 37.597103, 48.496346>,  <32.629536, 37.116989, 48.955570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580673, 37.597103, 48.496346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960106, 37.643494, 48.614147>,  <33.187767, 37.671329, 48.684830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960106, 37.643494, 48.614147>,  <32.580673, 37.597103, 48.496346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960106, 37.643494, 48.614147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295389, 0.009905, -0.955326,
		-0.113711, 0.993203, -0.024862,
		0.948586, 0.115975, 0.294508,
		33.244682, 37.678288, 48.702499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810917, 38.157154, 48.112629>,  <32.580673, 37.597103, 48.496346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810917, 38.157154, 48.112629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136410, 37.963959, 48.241978>,  <33.331703, 37.848042, 48.319588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136410, 37.963959, 48.241978>,  <32.810917, 38.157154, 48.112629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136410, 37.963959, 48.241978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447663, 0.165918, -0.878675,
		0.370733, 0.859766, 0.351227,
		0.813729, -0.482985, 0.323374,
		33.380527, 37.819065, 48.338989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394508, 38.592747, 47.882225>,  <32.810917, 38.157154, 48.112629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394508, 38.592747, 47.882225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.546928, 38.227055, 47.937340>,  <33.638378, 38.007641, 47.970409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.546928, 38.227055, 47.937340>,  <33.394508, 38.592747, 47.882225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546928, 38.227055, 47.937340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504346, 0.080638, -0.859728,
		0.774879, 0.397089, 0.491815,
		0.381048, -0.914231, 0.137785,
		33.661243, 37.952785, 47.978676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213409, 38.560059, 47.953594>,  <33.394508, 38.592747, 47.882225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213409, 38.560059, 47.953594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065918, 38.217758, 47.808418>,  <33.977425, 38.012379, 47.721313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065918, 38.217758, 47.808418>,  <34.213409, 38.560059, 47.953594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065918, 38.217758, 47.808418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568238, 0.101488, -0.816582,
		0.735626, -0.507333, 0.448850,
		-0.368726, -0.855753, -0.362943,
		33.955299, 37.961033, 47.699535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780605, 38.110886, 47.833717>,  <34.213409, 38.560059, 47.953594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780605, 38.110886, 47.833717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495487, 37.973217, 47.589272>,  <34.324417, 37.890614, 47.442604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495487, 37.973217, 47.589272>,  <34.780605, 38.110886, 47.833717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495487, 37.973217, 47.589272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605933, 0.136617, -0.783697,
		0.353218, -0.928913, 0.111166,
		-0.712799, -0.344175, -0.611114,
		34.281647, 37.869965, 47.405937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121670, 37.658775, 47.330883>,  <34.780605, 38.110886, 47.833717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121670, 37.658775, 47.330883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771992, 37.733658, 47.151669>,  <34.562183, 37.778587, 47.044140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771992, 37.733658, 47.151669>,  <35.121670, 37.658775, 47.330883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771992, 37.733658, 47.151669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477206, 0.160629, -0.863986,
		-0.089773, -0.969099, -0.229756,
		-0.874194, 0.187204, -0.448040,
		34.509735, 37.789818, 47.017258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121552, 37.237534, 46.669518>,  <35.121670, 37.658775, 47.330883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121552, 37.237534, 46.669518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835133, 37.512245, 46.619534>,  <34.663280, 37.677071, 46.589542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835133, 37.512245, 46.619534>,  <35.121552, 37.237534, 46.669518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835133, 37.512245, 46.619534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267353, 0.104455, -0.957920,
		-0.644825, -0.719324, -0.258407,
		-0.716047, 0.686777, -0.124958,
		34.620319, 37.718277, 46.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788105, 37.085171, 46.015007>,  <35.121552, 37.237534, 46.669518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788105, 37.085171, 46.015007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704437, 37.473351, 46.063141>,  <34.654236, 37.706257, 46.092022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704437, 37.473351, 46.063141>,  <34.788105, 37.085171, 46.015007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704437, 37.473351, 46.063141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282551, 0.177788, -0.942633,
		-0.936169, -0.163172, -0.311389,
		-0.209173, 0.970446, 0.120335,
		34.641685, 37.764484, 46.099243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404488, 37.284603, 45.410217>,  <34.788105, 37.085171, 46.015007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404488, 37.284603, 45.410217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582539, 37.607903, 45.564411>,  <34.689369, 37.801884, 45.656929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582539, 37.607903, 45.564411>,  <34.404488, 37.284603, 45.410217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582539, 37.607903, 45.564411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152414, 0.355821, -0.922042,
		-0.882403, 0.469176, 0.035196,
		0.445124, 0.808248, 0.385487,
		34.716076, 37.850376, 45.680058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217739, 37.868595, 44.956245>,  <34.404488, 37.284603, 45.410217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217739, 37.868595, 44.956245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521465, 38.026348, 45.163284>,  <34.703701, 38.120998, 45.287510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521465, 38.026348, 45.163284>,  <34.217739, 37.868595, 44.956245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521465, 38.026348, 45.163284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300485, 0.493037, -0.816470,
		-0.577196, 0.775486, 0.255864,
		0.759311, 0.394380, 0.517601,
		34.749260, 38.144661, 45.318565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158165, 38.576046, 44.833717>,  <34.217739, 37.868595, 44.956245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158165, 38.576046, 44.833717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540714, 38.505608, 44.926968>,  <34.770245, 38.463345, 44.982918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540714, 38.505608, 44.926968>,  <34.158165, 38.576046, 44.833717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540714, 38.505608, 44.926968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292098, 0.592000, -0.751142,
		-0.005737, 0.786465, 0.617608,
		0.956371, -0.176093, 0.233121,
		34.827625, 38.452778, 44.996902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486732, 39.175812, 45.083900>,  <34.158165, 38.576046, 44.833717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486732, 39.175812, 45.083900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773079, 38.935593, 44.941422>,  <34.944889, 38.791462, 44.855934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773079, 38.935593, 44.941422>,  <34.486732, 39.175812, 45.083900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773079, 38.935593, 44.941422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168414, 0.643587, -0.746614,
		0.677621, 0.474488, 0.561864,
		0.715868, -0.600547, -0.356197,
		34.987839, 38.755428, 44.834564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097099, 39.651596, 45.037392>,  <34.486732, 39.175812, 45.083900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097099, 39.651596, 45.037392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163246, 39.332233, 44.805805>,  <35.202934, 39.140617, 44.666855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163246, 39.332233, 44.805805>,  <35.097099, 39.651596, 45.037392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163246, 39.332233, 44.805805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321737, 0.598603, -0.733594,
		0.932277, -0.064964, 0.355865,
		0.165365, -0.798407, -0.578965,
		35.212856, 39.092712, 44.632114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602390, 39.920853, 44.388645>,  <35.097099, 39.651596, 45.037392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602390, 39.920853, 44.388645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527008, 39.547535, 44.266369>,  <35.481781, 39.323544, 44.193005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527008, 39.547535, 44.266369>,  <35.602390, 39.920853, 44.388645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527008, 39.547535, 44.266369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233232, 0.259830, -0.937065,
		0.953986, -0.247889, 0.168709,
		-0.188453, -0.933295, -0.305689,
		35.470470, 39.267548, 44.174664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.378441, 29.006603, 32.841808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629009, 29.018497, 32.530239>,  <40.779350, 29.025633, 32.343300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629009, 29.018497, 32.530239>,  <40.378441, 29.006603, 32.841808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629009, 29.018497, 32.530239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234934, 0.945603, 0.225034,
		0.743239, -0.323961, 0.585359,
		0.626419, 0.029733, -0.778919,
		40.816936, 29.027418, 32.296562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101227, 29.168211, 33.008858>,  <40.378441, 29.006603, 32.841808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101227, 29.168211, 33.008858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007511, 29.285976, 32.638252>,  <40.951283, 29.356636, 32.415890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007511, 29.285976, 32.638252>,  <41.101227, 29.168211, 33.008858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007511, 29.285976, 32.638252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215104, 0.945118, 0.245934,
		0.948072, -0.141678, -0.284759,
		-0.234288, 0.294416, -0.926514,
		40.937225, 29.374302, 32.360298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683205, 29.381840, 32.730366>,  <41.101227, 29.168211, 33.008858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683205, 29.381840, 32.730366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.379436, 29.562117, 32.542679>,  <41.197178, 29.670282, 32.430069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.379436, 29.562117, 32.542679>,  <41.683205, 29.381840, 32.730366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379436, 29.562117, 32.542679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412783, 0.891225, 0.187960,
		0.502888, -0.050944, -0.862849,
		-0.759417, 0.450692, -0.469215,
		41.151611, 29.697325, 32.401913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013775, 29.968060, 32.366833>,  <41.683205, 29.381840, 32.730366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013775, 29.968060, 32.366833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.626717, 30.063896, 32.335171>,  <41.394482, 30.121399, 32.316174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.626717, 30.063896, 32.335171>,  <42.013775, 29.968060, 32.366833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626717, 30.063896, 32.335171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238489, 0.970867, 0.023252,
		0.082423, 0.003621, -0.996591,
		-0.967641, 0.239593, -0.079159,
		41.336426, 30.135775, 32.311424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883537, 30.407843, 31.719984>,  <42.013775, 29.968060, 32.366833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883537, 30.407843, 31.719984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.605606, 30.492424, 31.994940>,  <41.438847, 30.543173, 32.159912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.605606, 30.492424, 31.994940>,  <41.883537, 30.407843, 31.719984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605606, 30.492424, 31.994940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221434, 0.972267, -0.075256,
		-0.684240, 0.099922, -0.722379,
		-0.694825, 0.211452, 0.687390,
		41.397160, 30.555861, 32.201157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539173, 31.069237, 31.476276>,  <41.883537, 30.407843, 31.719984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539173, 31.069237, 31.476276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.440372, 31.072910, 31.863865>,  <41.381092, 31.075115, 32.096416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.440372, 31.072910, 31.863865>,  <41.539173, 31.069237, 31.476276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440372, 31.072910, 31.863865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070734, 0.997458, 0.008576,
		-0.966431, 0.070657, -0.247021,
		-0.246999, 0.009185, 0.968972,
		41.366272, 31.075666, 32.154556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689472, 31.724224, 31.586330>,  <41.539173, 31.069237, 31.476276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689472, 31.724224, 31.586330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528423, 31.628387, 31.939711>,  <41.431793, 31.570885, 32.151741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528423, 31.628387, 31.939711>,  <41.689472, 31.724224, 31.586330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528423, 31.628387, 31.939711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124815, 0.941752, 0.312288,
		-0.906816, 0.236003, -0.349268,
		-0.402625, -0.239593, 0.883453,
		41.407635, 31.556509, 32.204746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095913, 32.166645, 31.823460>,  <41.689472, 31.724224, 31.586330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095913, 32.166645, 31.823460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224728, 32.021534, 32.173244>,  <41.302017, 31.934467, 32.383118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224728, 32.021534, 32.173244>,  <41.095913, 32.166645, 31.823460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224728, 32.021534, 32.173244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028902, 0.919472, 0.392091,
		-0.946286, -0.151541, 0.285618,
		0.322036, -0.362775, 0.874464,
		41.321339, 31.912701, 32.435585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636368, 32.446323, 32.406311>,  <41.095913, 32.166645, 31.823460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636368, 32.446323, 32.406311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005695, 32.363232, 32.535515>,  <41.227291, 32.313377, 32.613037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005695, 32.363232, 32.535515>,  <40.636368, 32.446323, 32.406311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005695, 32.363232, 32.535515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127615, 0.959248, 0.252107,
		-0.362213, -0.191554, 0.912200,
		0.923318, -0.207727, 0.323007,
		41.282692, 32.300915, 32.632416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618660, 32.853367, 32.960316>,  <40.636368, 32.446323, 32.406311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618660, 32.853367, 32.960316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.002396, 32.740620, 32.954514>,  <41.232639, 32.672970, 32.951031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.002396, 32.740620, 32.954514>,  <40.618660, 32.853367, 32.960316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002396, 32.740620, 32.954514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277164, 0.931121, 0.237052,
		-0.053308, -0.231436, 0.971389,
		0.959343, -0.281871, -0.014509,
		41.290199, 32.656059, 32.950161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914883, 33.121540, 33.546909>,  <40.618660, 32.853367, 32.960316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914883, 33.121540, 33.546909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.249386, 33.090706, 33.329750>,  <41.450089, 33.072205, 33.199455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.249386, 33.090706, 33.329750>,  <40.914883, 33.121540, 33.546909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249386, 33.090706, 33.329750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304484, 0.888683, 0.342830,
		0.456034, -0.451996, 0.766638,
		0.836255, -0.077087, -0.542895,
		41.500263, 33.067581, 33.166882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488735, 33.169724, 34.024055>,  <40.914883, 33.121540, 33.546909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488735, 33.169724, 34.024055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621304, 33.260757, 33.657806>,  <41.700844, 33.315376, 33.438057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621304, 33.260757, 33.657806>,  <41.488735, 33.169724, 34.024055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621304, 33.260757, 33.657806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462774, 0.806501, 0.367963,
		0.822194, -0.545677, 0.161970,
		0.331418, 0.227582, -0.915625,
		41.720730, 33.329033, 33.383118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287876, 33.170052, 34.014984>,  <41.488735, 33.169724, 34.024055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287876, 33.170052, 34.014984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.148064, 33.386482, 33.709026>,  <42.064175, 33.516342, 33.525452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.148064, 33.386482, 33.709026>,  <42.287876, 33.170052, 34.014984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148064, 33.386482, 33.709026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558511, 0.775809, 0.293575,
		0.752258, -0.324586, -0.573369,
		-0.349535, 0.541076, -0.764893,
		42.043201, 33.548805, 33.479557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894753, 33.618698, 33.831745>,  <42.287876, 33.170052, 34.014984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894753, 33.618698, 33.831745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583351, 33.785519, 33.644131>,  <42.396511, 33.885612, 33.531563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583351, 33.785519, 33.644131>,  <42.894753, 33.618698, 33.831745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583351, 33.785519, 33.644131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320715, 0.906712, 0.273890,
		0.539510, 0.062796, -0.839634,
		-0.778505, 0.417050, -0.469041,
		42.349800, 33.910633, 33.503418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153107, 34.097687, 33.215160>,  <42.894753, 33.618698, 33.831745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153107, 34.097687, 33.215160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793705, 34.180454, 33.370014>,  <42.578064, 34.230114, 33.462925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793705, 34.180454, 33.370014>,  <43.153107, 34.097687, 33.215160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793705, 34.180454, 33.370014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383069, 0.800270, 0.461330,
		-0.214352, 0.562806, -0.798312,
		-0.898505, 0.206922, 0.387133,
		42.524155, 34.242531, 33.486153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096878, 34.746380, 33.023426>,  <43.153107, 34.097687, 33.215160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096878, 34.746380, 33.023426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838108, 34.690521, 33.323288>,  <42.682846, 34.657005, 33.503204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838108, 34.690521, 33.323288>,  <43.096878, 34.746380, 33.023426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838108, 34.690521, 33.323288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436536, 0.738242, 0.514232,
		-0.625237, 0.659923, -0.416630,
		-0.646927, -0.139643, 0.749657,
		42.644032, 34.648628, 33.548183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944443, 35.404755, 33.385975>,  <43.096878, 34.746380, 33.023426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944443, 35.404755, 33.385975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807491, 35.165806, 33.676056>,  <42.725319, 35.022434, 33.850105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807491, 35.165806, 33.676056>,  <42.944443, 35.404755, 33.385975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807491, 35.165806, 33.676056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438067, 0.581328, 0.685678,
		-0.831188, 0.552451, 0.062655,
		-0.342380, -0.597374, 0.725203,
		42.704777, 34.986595, 33.893616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601143, 35.871887, 33.925224>,  <42.944443, 35.404755, 33.385975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601143, 35.871887, 33.925224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684872, 35.525417, 34.106739>,  <42.735111, 35.317535, 34.215649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684872, 35.525417, 34.106739>,  <42.601143, 35.871887, 33.925224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684872, 35.525417, 34.106739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423240, 0.498602, 0.756482,
		-0.881505, 0.033710, 0.470970,
		0.209325, -0.866176, 0.453787,
		42.747669, 35.265564, 34.242874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563267, 35.996704, 34.709854>,  <42.601143, 35.871887, 33.925224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563267, 35.996704, 34.709854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732552, 35.634369, 34.702419>,  <42.834122, 35.416969, 34.697960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732552, 35.634369, 34.702419>,  <42.563267, 35.996704, 34.709854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732552, 35.634369, 34.702419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686337, 0.307136, 0.659249,
		-0.591465, -0.291760, 0.751695,
		0.423215, -0.905838, -0.018586,
		42.859516, 35.362617, 34.696842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494286, 35.772266, 35.466351>,  <42.563267, 35.996704, 34.709854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494286, 35.772266, 35.466351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794716, 35.616940, 35.252777>,  <42.974976, 35.523743, 35.124634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794716, 35.616940, 35.252777>,  <42.494286, 35.772266, 35.466351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794716, 35.616940, 35.252777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650111, 0.294088, 0.700620,
		-0.115040, -0.873339, 0.473334,
		0.751080, -0.388319, -0.533935,
		43.020039, 35.500443, 35.092598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876785, 35.396248, 35.940105>,  <42.494286, 35.772266, 35.466351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876785, 35.396248, 35.940105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122177, 35.424118, 35.625450>,  <43.269413, 35.440842, 35.436657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122177, 35.424118, 35.625450>,  <42.876785, 35.396248, 35.940105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122177, 35.424118, 35.625450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759015, 0.223012, 0.611688,
		0.218039, -0.972323, 0.083941,
		0.613479, 0.069659, -0.786633,
		43.306221, 35.445019, 35.389462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402302, 34.810947, 35.857269>,  <42.876785, 35.396248, 35.940105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402302, 34.810947, 35.857269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574707, 35.142693, 35.715069>,  <43.678150, 35.341740, 35.629749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574707, 35.142693, 35.715069>,  <43.402302, 34.810947, 35.857269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574707, 35.142693, 35.715069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748632, -0.108713, 0.654012,
		0.503767, -0.548027, -0.667746,
		0.431008, 0.829366, -0.355505,
		43.704010, 35.391502, 35.608418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960663, 34.484772, 35.871918>,  <43.402302, 34.810947, 35.857269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960663, 34.484772, 35.871918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350101, 34.472599, 35.962406>,  <44.583767, 34.465294, 36.016701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350101, 34.472599, 35.962406>,  <43.960663, 34.484772, 35.871918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350101, 34.472599, 35.962406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013099, -0.981988, -0.188490,
		0.227885, 0.186477, -0.955665,
		0.973600, -0.030436, 0.226223,
		44.642181, 34.463467, 36.030273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311779, 34.149948, 35.267483>,  <43.960663, 34.484772, 35.871918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311779, 34.149948, 35.267483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552254, 34.122433, 35.585941>,  <44.696537, 34.105923, 35.777016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552254, 34.122433, 35.585941>,  <44.311779, 34.149948, 35.267483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552254, 34.122433, 35.585941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217830, -0.944451, -0.246093,
		0.768846, 0.321372, -0.552807,
		0.601187, -0.068790, 0.796142,
		44.732609, 34.101795, 35.824783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867947, 33.698650, 35.060497>,  <44.311779, 34.149948, 35.267483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867947, 33.698650, 35.060497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846046, 33.658016, 35.457825>,  <44.832905, 33.633636, 35.696220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846046, 33.658016, 35.457825>,  <44.867947, 33.698650, 35.060497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846046, 33.658016, 35.457825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170192, -0.981203, -0.090967,
		0.983889, 0.164074, 0.071011,
		-0.054750, -0.101587, 0.993319,
		44.829620, 33.627541, 35.755821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394859, 33.291866, 35.182121>,  <44.867947, 33.698650, 35.060497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394859, 33.291866, 35.182121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172043, 33.265888, 35.513298>,  <45.038353, 33.250301, 35.712006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172043, 33.265888, 35.513298>,  <45.394859, 33.291866, 35.182121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172043, 33.265888, 35.513298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040987, -0.997872, -0.050702,
		0.829472, 0.005692, 0.558519,
		-0.557042, -0.064948, 0.827941,
		45.004929, 33.246403, 35.761681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605152, 32.707302, 35.537334>,  <45.394859, 33.291866, 35.182121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605152, 32.707302, 35.537334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245026, 32.760666, 35.703053>,  <45.028950, 32.792683, 35.802483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245026, 32.760666, 35.703053>,  <45.605152, 32.707302, 35.537334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245026, 32.760666, 35.703053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165896, -0.985194, -0.043262,
		0.402389, -0.107680, 0.909114,
		-0.900312, 0.133410, 0.414295,
		44.974934, 32.800690, 35.827339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557617, 32.259663, 36.170425>,  <45.605152, 32.707302, 35.537334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557617, 32.259663, 36.170425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182220, 32.345287, 36.062046>,  <44.956982, 32.396664, 35.997017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182220, 32.345287, 36.062046>,  <45.557617, 32.259663, 36.170425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182220, 32.345287, 36.062046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238875, -0.969084, 0.061771,
		-0.249348, 0.122694, 0.960610,
		-0.938491, 0.214063, -0.270947,
		44.900673, 32.409508, 35.980762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097733, 31.999588, 36.676098>,  <45.557617, 32.259663, 36.170425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097733, 31.999588, 36.676098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886215, 32.012466, 36.336842>,  <44.759304, 32.020195, 36.133289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886215, 32.012466, 36.336842>,  <45.097733, 31.999588, 36.676098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886215, 32.012466, 36.336842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331796, -0.927603, 0.171654,
		-0.781211, 0.372179, 0.501191,
		-0.528791, 0.032195, -0.848141,
		44.727577, 32.022125, 36.082397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510212, 31.651817, 36.895515>,  <45.097733, 31.999588, 36.676098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510212, 31.651817, 36.895515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477852, 31.683142, 36.498058>,  <44.458435, 31.701937, 36.259586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477852, 31.683142, 36.498058>,  <44.510212, 31.651817, 36.895515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477852, 31.683142, 36.498058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312280, -0.948708, -0.049343,
		-0.946539, 0.306303, 0.101206,
		-0.080901, 0.078310, -0.993641,
		44.453583, 31.706635, 36.199966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870934, 31.391987, 36.786049>,  <44.510212, 31.651817, 36.895515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870934, 31.391987, 36.786049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073368, 31.347080, 36.443993>,  <44.194828, 31.320135, 36.238758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073368, 31.347080, 36.443993>,  <43.870934, 31.391987, 36.786049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073368, 31.347080, 36.443993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434249, -0.889820, -0.140173,
		-0.745188, 0.442285, -0.499078,
		0.506086, -0.112269, -0.855145,
		44.225193, 31.313400, 36.187450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363808, 31.254324, 36.275791>,  <43.870934, 31.391987, 36.786049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363808, 31.254324, 36.275791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699429, 31.128292, 36.098381>,  <43.900803, 31.052673, 35.991936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699429, 31.128292, 36.098381>,  <43.363808, 31.254324, 36.275791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699429, 31.128292, 36.098381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488075, -0.796100, -0.357781,
		-0.240364, 0.516672, -0.821751,
		0.839052, -0.315079, -0.443529,
		43.951145, 31.033768, 35.965321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093346, 31.070255, 35.651688>,  <43.363808, 31.254324, 36.275791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093346, 31.070255, 35.651688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443176, 30.886980, 35.715172>,  <43.653072, 30.777016, 35.753262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443176, 30.886980, 35.715172>,  <43.093346, 31.070255, 35.651688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443176, 30.886980, 35.715172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330937, -0.803233, -0.495276,
		0.354407, 0.380633, -0.854116,
		0.874572, -0.458188, 0.158706,
		43.705547, 30.749523, 35.762783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323982, 30.804907, 34.936378>,  <43.093346, 31.070255, 35.651688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323982, 30.804907, 34.936378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493652, 30.609819, 35.241589>,  <43.595455, 30.492767, 35.424713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493652, 30.609819, 35.241589>,  <43.323982, 30.804907, 34.936378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493652, 30.609819, 35.241589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374373, -0.861651, -0.342640,
		0.824571, -0.140314, -0.548083,
		0.424179, -0.487719, 0.763022,
		43.620907, 30.463503, 35.470493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705978, 30.232389, 34.600910>,  <43.323982, 30.804907, 34.936378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705978, 30.232389, 34.600910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.677670, 30.090374, 34.973778>,  <43.660683, 30.005165, 35.197498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.677670, 30.090374, 34.973778>,  <43.705978, 30.232389, 34.600910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677670, 30.090374, 34.973778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391146, -0.849790, -0.353359,
		0.917603, -0.389622, -0.078728,
		-0.070774, -0.355038, 0.932169,
		43.656437, 29.983862, 35.253429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182278, 29.668850, 34.717491>,  <43.705978, 30.232389, 34.600910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182278, 29.668850, 34.717491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877140, 29.637630, 34.974232>,  <43.694057, 29.618898, 35.128277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877140, 29.637630, 34.974232>,  <44.182278, 29.668850, 34.717491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877140, 29.637630, 34.974232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343766, -0.791803, -0.504850,
		0.547621, -0.605770, 0.577195,
		-0.762848, -0.078047, 0.641851,
		43.648285, 29.614216, 35.166786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282368, 29.065493, 34.984253>,  <44.182278, 29.668850, 34.717491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282368, 29.065493, 34.984253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905613, 29.104710, 35.112770>,  <43.679558, 29.128241, 35.189880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905613, 29.104710, 35.112770>,  <44.282368, 29.065493, 34.984253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905613, 29.104710, 35.112770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155965, -0.974755, -0.159772,
		0.297521, -0.200599, 0.933403,
		-0.941890, 0.098043, 0.321296,
		43.623047, 29.134123, 35.209160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146908, 28.536299, 35.357525>,  <44.282368, 29.065493, 34.984253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146908, 28.536299, 35.357525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777691, 28.660856, 35.267174>,  <43.556160, 28.735590, 35.212963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777691, 28.660856, 35.267174>,  <44.146908, 28.536299, 35.357525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777691, 28.660856, 35.267174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290667, -0.949178, -0.120723,
		-0.251991, -0.045777, 0.966646,
		-0.923046, 0.311393, -0.225878,
		43.500778, 28.754274, 35.199409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772537, 28.000479, 35.552700>,  <44.146908, 28.536299, 35.357525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772537, 28.000479, 35.552700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513554, 28.186539, 35.311226>,  <43.358162, 28.298174, 35.166344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513554, 28.186539, 35.311226>,  <43.772537, 28.000479, 35.552700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513554, 28.186539, 35.311226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413472, -0.879813, -0.234456,
		-0.640185, 0.097806, 0.761969,
		-0.647460, 0.465148, -0.603683,
		43.319317, 28.326082, 35.130119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013355, 27.747068, 35.724037>,  <43.772537, 28.000479, 35.552700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013355, 27.747068, 35.724037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069424, 27.889294, 35.354404>,  <43.103065, 27.974628, 35.132626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069424, 27.889294, 35.354404>,  <43.013355, 27.747068, 35.724037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069424, 27.889294, 35.354404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210097, -0.901362, -0.378689,
		-0.967580, 0.247228, -0.051644,
		0.140172, 0.355562, -0.924082,
		43.111477, 27.995962, 35.077179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428020, 27.560818, 35.311981>,  <43.013355, 27.747068, 35.724037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428020, 27.560818, 35.311981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.701073, 27.642935, 35.031448>,  <42.864902, 27.692205, 34.863129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.701073, 27.642935, 35.031448>,  <42.428020, 27.560818, 35.311981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701073, 27.642935, 35.031448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272005, -0.819386, -0.504599,
		-0.678255, 0.535221, -0.503497,
		0.682630, 0.205293, -0.701335,
		42.905861, 27.704523, 34.821049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047626, 27.539553, 34.680222>,  <42.428020, 27.560818, 35.311981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047626, 27.539553, 34.680222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433922, 27.500570, 34.584019>,  <42.665699, 27.477180, 34.526299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433922, 27.500570, 34.584019>,  <42.047626, 27.539553, 34.680222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433922, 27.500570, 34.584019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232518, -0.736500, -0.635219,
		-0.115227, 0.669380, -0.733930,
		0.965742, -0.097458, -0.240508,
		42.723644, 27.471333, 34.511868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.783825, 39.910786, 41.407013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519077, 39.692757, 41.201168>,  <40.360229, 39.561939, 41.077663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519077, 39.692757, 41.201168>,  <40.783825, 39.910786, 41.407013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519077, 39.692757, 41.201168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591052, 0.042778, -0.805498,
		0.461067, -0.837298, 0.293852,
		-0.661872, -0.545070, -0.514610,
		40.320515, 39.529236, 41.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131073, 39.311829, 41.041210>,  <40.783825, 39.910786, 41.407013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131073, 39.311829, 41.041210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798691, 39.407272, 40.840179>,  <40.599262, 39.464539, 40.719563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798691, 39.407272, 40.840179>,  <41.131073, 39.311829, 41.041210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798691, 39.407272, 40.840179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548567, 0.200904, -0.811611,
		-0.092687, -0.950107, -0.297835,
		-0.830953, 0.238608, -0.502576,
		40.549404, 39.478855, 40.689407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319565, 39.257587, 40.400639>,  <41.131073, 39.311829, 41.041210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319565, 39.257587, 40.400639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972767, 39.446896, 40.338245>,  <40.764687, 39.560478, 40.300808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972767, 39.446896, 40.338245>,  <41.319565, 39.257587, 40.400639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972767, 39.446896, 40.338245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225644, 0.093764, -0.969687,
		-0.444297, -0.875914, -0.188083,
		-0.866998, 0.473269, -0.155986,
		40.712669, 39.588875, 40.291451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025955, 38.930225, 39.724213>,  <41.319565, 39.257587, 40.400639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025955, 38.930225, 39.724213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841331, 39.277412, 39.797531>,  <40.730556, 39.485725, 39.841522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841331, 39.277412, 39.797531>,  <41.025955, 38.930225, 39.724213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841331, 39.277412, 39.797531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170534, 0.289578, -0.941840,
		-0.870562, -0.403461, -0.281676,
		-0.461563, 0.867965, 0.183292,
		40.702862, 39.537804, 39.852520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445156, 38.928463, 39.294170>,  <41.025955, 38.930225, 39.724213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445156, 38.928463, 39.294170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535759, 39.307358, 39.384888>,  <40.590122, 39.534695, 39.439320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535759, 39.307358, 39.384888>,  <40.445156, 38.928463, 39.294170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535759, 39.307358, 39.384888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087944, 0.212006, -0.973304,
		-0.970031, 0.240406, -0.035283,
		0.226508, 0.947237, 0.226794,
		40.603710, 39.591530, 39.452927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103149, 39.298992, 38.895699>,  <40.445156, 38.928463, 39.294170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103149, 39.298992, 38.895699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395397, 39.544949, 39.014427>,  <40.570744, 39.692524, 39.085663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395397, 39.544949, 39.014427>,  <40.103149, 39.298992, 38.895699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395397, 39.544949, 39.014427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170201, 0.256983, -0.951310,
		-0.661233, 0.745563, 0.083101,
		0.730618, 0.614894, 0.296821,
		40.614582, 39.729416, 39.103474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976116, 39.895607, 38.466869>,  <40.103149, 39.298992, 38.895699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976116, 39.895607, 38.466869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364254, 39.899235, 38.563499>,  <40.597137, 39.901413, 38.621475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364254, 39.899235, 38.563499>,  <39.976116, 39.895607, 38.466869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364254, 39.899235, 38.563499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227145, 0.307773, -0.923949,
		-0.082730, 0.951417, 0.296584,
		0.970341, 0.009071, 0.241572,
		40.655357, 39.901955, 38.635971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209785, 40.388393, 38.096802>,  <39.976116, 39.895607, 38.466869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209785, 40.388393, 38.096802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546764, 40.190685, 38.182575>,  <40.748951, 40.072060, 38.234039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546764, 40.190685, 38.182575>,  <40.209785, 40.388393, 38.096802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546764, 40.190685, 38.182575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415603, 0.342870, -0.842446,
		0.342870, 0.798836, 0.494269,
		0.842446, -0.494269, 0.214438,
		40.799500, 40.042404, 38.246906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719379, 40.929276, 38.007889>,  <40.209785, 40.388393, 38.096802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719379, 40.929276, 38.007889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859131, 40.555180, 37.985065>,  <40.942982, 40.330723, 37.971371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859131, 40.555180, 37.985065>,  <40.719379, 40.929276, 38.007889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859131, 40.555180, 37.985065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491737, 0.234858, -0.838473,
		0.797577, 0.264886, 0.541948,
		0.349380, -0.935242, -0.057063,
		40.963943, 40.274609, 37.967945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421665, 40.997311, 37.790871>,  <40.719379, 40.929276, 38.007889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421665, 40.997311, 37.790871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296059, 40.625591, 37.713104>,  <41.220695, 40.402561, 37.666443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296059, 40.625591, 37.713104>,  <41.421665, 40.997311, 37.790871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296059, 40.625591, 37.713104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174293, 0.144870, -0.973979,
		0.933281, -0.339735, 0.116478,
		-0.314021, -0.929297, -0.194418,
		41.201851, 40.346802, 37.654778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951027, 40.704372, 37.316444>,  <41.421665, 40.997311, 37.790871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951027, 40.704372, 37.316444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655643, 40.435963, 37.289909>,  <41.478413, 40.274918, 37.273987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655643, 40.435963, 37.289909>,  <41.951027, 40.704372, 37.316444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655643, 40.435963, 37.289909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134057, -0.049684, -0.989727,
		0.660838, -0.739767, 0.126645,
		-0.738460, -0.671027, -0.066337,
		41.434105, 40.234653, 37.270008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255943, 40.207432, 36.915649>,  <41.951027, 40.704372, 37.316444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255943, 40.207432, 36.915649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858772, 40.169392, 36.887215>,  <41.620472, 40.146568, 36.870152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858772, 40.169392, 36.887215>,  <42.255943, 40.207432, 36.915649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858772, 40.169392, 36.887215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080241, -0.096130, -0.992129,
		0.087521, -0.990815, 0.103081,
		-0.992926, -0.095103, -0.071091,
		41.560894, 40.140862, 36.865887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083195, 39.628437, 36.494282>,  <42.255943, 40.207432, 36.915649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083195, 39.628437, 36.494282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773239, 39.877163, 36.448868>,  <41.587265, 40.026398, 36.421619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773239, 39.877163, 36.448868>,  <42.083195, 39.628437, 36.494282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773239, 39.877163, 36.448868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040637, -0.130239, -0.990650,
		-0.630785, -0.772262, 0.075652,
		-0.774894, 0.621812, -0.113536,
		41.540771, 40.063705, 36.414806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357079, 39.062775, 36.308926>,  <42.083195, 39.628437, 36.494282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357079, 39.062775, 36.308926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113235, 39.171925, 36.606628>,  <41.966930, 39.237415, 36.785252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113235, 39.171925, 36.606628>,  <42.357079, 39.062775, 36.308926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113235, 39.171925, 36.606628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768377, 0.027407, -0.639411,
		-0.194879, -0.961658, 0.192966,
		-0.609606, 0.272879, 0.744257,
		41.930355, 39.253788, 36.829906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664745, 38.646015, 36.883934>,  <42.357079, 39.062775, 36.308926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664745, 38.646015, 36.883934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972450, 38.408028, 36.790771>,  <43.157074, 38.265236, 36.734875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972450, 38.408028, 36.790771>,  <42.664745, 38.646015, 36.883934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972450, 38.408028, 36.790771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171933, -0.543844, 0.821384,
		-0.615366, -0.591815, -0.520654,
		0.769262, -0.594969, -0.232911,
		43.203228, 38.229538, 36.720898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373070, 37.897499, 36.866108>,  <42.664745, 38.646015, 36.883934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373070, 37.897499, 36.866108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761097, 37.939644, 36.953617>,  <42.993916, 37.964931, 37.006123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761097, 37.939644, 36.953617>,  <42.373070, 37.897499, 36.866108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761097, 37.939644, 36.953617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136519, -0.508447, 0.850203,
		0.200810, -0.854624, -0.478847,
		0.970071, 0.105357, 0.218773,
		43.052120, 37.971252, 37.019249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665695, 37.252682, 36.929951>,  <42.373070, 37.897499, 36.866108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665695, 37.252682, 36.929951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911812, 37.490528, 37.136967>,  <43.059483, 37.633236, 37.261177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911812, 37.490528, 37.136967>,  <42.665695, 37.252682, 36.929951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911812, 37.490528, 37.136967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115394, -0.581518, 0.805308,
		0.779806, -0.555223, -0.289190,
		0.615295, 0.594613, 0.517540,
		43.096401, 37.668911, 37.292229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171558, 36.800835, 37.352341>,  <42.665695, 37.252682, 36.929951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171558, 36.800835, 37.352341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204147, 37.141426, 37.559551>,  <43.223701, 37.345779, 37.683876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204147, 37.141426, 37.559551>,  <43.171558, 36.800835, 37.352341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204147, 37.141426, 37.559551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206167, -0.494111, 0.844600,
		0.975119, -0.175611, 0.135291,
		0.081472, 0.851478, 0.518022,
		43.228588, 37.396870, 37.714958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699497, 36.632252, 37.921150>,  <43.171558, 36.800835, 37.352341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699497, 36.632252, 37.921150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491928, 36.947956, 38.052479>,  <43.367386, 37.137379, 38.131275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491928, 36.947956, 38.052479>,  <43.699497, 36.632252, 37.921150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491928, 36.947956, 38.052479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071965, -0.423052, 0.903243,
		0.851786, 0.445086, 0.276330,
		-0.518923, 0.789256, 0.328319,
		43.336250, 37.184734, 38.150974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825256, 36.605049, 38.660496>,  <43.699497, 36.632252, 37.921150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825256, 36.605049, 38.660496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524502, 36.861744, 38.600037>,  <43.344048, 37.015759, 38.563763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524502, 36.861744, 38.600037>,  <43.825256, 36.605049, 38.660496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524502, 36.861744, 38.600037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299492, -0.128220, 0.945444,
		0.587343, 0.756134, 0.288600,
		-0.751886, 0.641733, -0.151147,
		43.298935, 37.054264, 38.554691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740997, 36.876530, 39.295441>,  <43.825256, 36.605049, 38.660496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740997, 36.876530, 39.295441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394497, 36.933018, 39.103748>,  <43.186596, 36.966911, 38.988731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394497, 36.933018, 39.103748>,  <43.740997, 36.876530, 39.295441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394497, 36.933018, 39.103748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487393, -0.028083, 0.872731,
		0.109793, 0.989579, 0.093158,
		-0.866252, 0.141224, -0.479231,
		43.134621, 36.975384, 38.959980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453056, 37.386555, 39.673512>,  <43.740997, 36.876530, 39.295441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453056, 37.386555, 39.673512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158066, 37.204575, 39.473850>,  <42.981071, 37.095387, 39.354053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158066, 37.204575, 39.473850>,  <43.453056, 37.386555, 39.673512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158066, 37.204575, 39.473850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476320, -0.173599, 0.861965,
		-0.478803, 0.873433, -0.088677,
		-0.737474, -0.454950, -0.499153,
		42.936825, 37.068089, 39.324104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000263, 37.544758, 40.155132>,  <43.453056, 37.386555, 39.673512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000263, 37.544758, 40.155132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827526, 37.275955, 39.914497>,  <42.723885, 37.114674, 39.770115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827526, 37.275955, 39.914497>,  <43.000263, 37.544758, 40.155132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827526, 37.275955, 39.914497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698862, -0.172339, 0.694184,
		-0.570176, 0.720209, -0.395219,
		-0.431846, -0.672010, -0.601590,
		42.697971, 37.074352, 39.734020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351345, 37.696232, 40.220581>,  <43.000263, 37.544758, 40.155132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351345, 37.696232, 40.220581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363544, 37.317768, 40.091679>,  <42.370865, 37.090691, 40.014336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363544, 37.317768, 40.091679>,  <42.351345, 37.696232, 40.220581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363544, 37.317768, 40.091679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577429, -0.279843, 0.766984,
		-0.815872, 0.162692, -0.554874,
		0.030496, -0.946160, -0.322259,
		42.372692, 37.033920, 39.994999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693584, 37.458233, 40.277241>,  <42.351345, 37.696232, 40.220581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693584, 37.458233, 40.277241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909946, 37.121983, 40.266129>,  <42.039764, 36.920231, 40.259460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909946, 37.121983, 40.266129>,  <41.693584, 37.458233, 40.277241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909946, 37.121983, 40.266129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421654, -0.299598, 0.855833,
		-0.727757, -0.451211, -0.516507,
		0.540905, -0.840625, -0.027780,
		42.072220, 36.869797, 40.257793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227730, 36.842499, 40.370728>,  <41.693584, 37.458233, 40.277241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227730, 36.842499, 40.370728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591137, 36.714043, 40.477665>,  <41.809181, 36.636967, 40.541828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591137, 36.714043, 40.477665>,  <41.227730, 36.842499, 40.370728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591137, 36.714043, 40.477665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327078, -0.148387, 0.933274,
		-0.260046, -0.935333, -0.239851,
		0.908513, -0.321144, 0.267340,
		41.863689, 36.617699, 40.557865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093529, 36.284031, 40.777184>,  <41.227730, 36.842499, 40.370728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093529, 36.284031, 40.777184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472614, 36.364887, 40.875954>,  <41.700066, 36.413399, 40.935215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472614, 36.364887, 40.875954>,  <41.093529, 36.284031, 40.777184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472614, 36.364887, 40.875954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249125, -0.014889, 0.968357,
		0.199420, -0.979244, 0.036248,
		0.947717, 0.202139, 0.246924,
		41.756931, 36.425529, 40.950031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273830, 35.829163, 41.327240>,  <41.093529, 36.284031, 40.777184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273830, 35.829163, 41.327240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527599, 36.136681, 41.359379>,  <41.679863, 36.321194, 41.378662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527599, 36.136681, 41.359379>,  <41.273830, 35.829163, 41.327240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527599, 36.136681, 41.359379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211779, 0.072905, 0.974594,
		0.743408, -0.635323, 0.209068,
		0.634424, 0.768798, 0.080350,
		41.717926, 36.367321, 41.383484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364738, 35.079502, 41.203743>,  <41.273830, 35.829163, 41.327240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364738, 35.079502, 41.203743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002102, 34.912807, 41.177132>,  <40.784519, 34.812790, 41.161163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002102, 34.912807, 41.177132>,  <41.364738, 35.079502, 41.203743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002102, 34.912807, 41.177132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039859, 0.072390, -0.996580,
		0.420130, -0.906139, -0.049017,
		-0.906588, -0.416739, -0.066531,
		40.730125, 34.787785, 41.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397797, 34.582497, 40.614136>,  <41.364738, 35.079502, 41.203743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397797, 34.582497, 40.614136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011349, 34.683983, 40.633091>,  <40.779480, 34.744873, 40.644466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011349, 34.683983, 40.633091>,  <41.397797, 34.582497, 40.614136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011349, 34.683983, 40.633091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022209, 0.101213, -0.994617,
		-0.257148, -0.961969, -0.092148,
		-0.966117, 0.253717, 0.047391,
		40.721512, 34.760098, 40.647308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042820, 34.096920, 40.112923>,  <41.397797, 34.582497, 40.614136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042820, 34.096920, 40.112923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778263, 34.383652, 40.201206>,  <40.619530, 34.555691, 40.254177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778263, 34.383652, 40.201206>,  <41.042820, 34.096920, 40.112923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778263, 34.383652, 40.201206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200267, 0.114798, -0.972993,
		-0.722807, -0.687733, 0.067630,
		-0.661395, 0.716830, 0.220707,
		40.579845, 34.598701, 40.267418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325058, 33.938725, 39.721630>,  <41.042820, 34.096920, 40.112923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325058, 33.938725, 39.721630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333271, 34.330967, 39.799599>,  <40.338200, 34.566311, 39.846382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333271, 34.330967, 39.799599>,  <40.325058, 33.938725, 39.721630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333271, 34.330967, 39.799599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294930, 0.192228, -0.935983,
		-0.955298, -0.038272, 0.293156,
		0.020531, 0.980603, 0.194923,
		40.339432, 34.625149, 39.858074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667747, 34.213093, 39.481735>,  <40.325058, 33.938725, 39.721630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667747, 34.213093, 39.481735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901955, 34.536209, 39.508987>,  <40.042480, 34.730080, 39.525341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901955, 34.536209, 39.508987>,  <39.667747, 34.213093, 39.481735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901955, 34.536209, 39.508987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225600, 0.243096, -0.943403,
		-0.778633, 0.537011, 0.324575,
		0.585521, 0.807789, 0.068133,
		40.077610, 34.778545, 39.529427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215420, 34.813980, 39.248280>,  <39.667747, 34.213093, 39.481735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215420, 34.813980, 39.248280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598484, 34.927540, 39.229126>,  <39.828323, 34.995678, 39.217632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598484, 34.927540, 39.229126>,  <39.215420, 34.813980, 39.248280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598484, 34.927540, 39.229126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179096, 0.457181, -0.871154,
		-0.225431, 0.842843, 0.488668,
		0.957656, 0.283903, -0.047887,
		39.885780, 35.012711, 39.214760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243523, 35.588306, 39.164623>,  <39.215420, 34.813980, 39.248280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243523, 35.588306, 39.164623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579155, 35.454182, 38.993271>,  <39.780533, 35.373707, 38.890461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579155, 35.454182, 38.993271>,  <39.243523, 35.588306, 39.164623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579155, 35.454182, 38.993271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256331, 0.450860, -0.854997,
		0.479832, 0.827218, 0.292356,
		0.839080, -0.335315, -0.428378,
		39.830879, 35.353588, 38.864758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416492, 36.181568, 38.776245>,  <39.243523, 35.588306, 39.164623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416492, 36.181568, 38.776245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630028, 35.875671, 38.631924>,  <39.758148, 35.692135, 38.545330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630028, 35.875671, 38.631924>,  <39.416492, 36.181568, 38.776245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630028, 35.875671, 38.631924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154920, 0.331019, -0.930820,
		0.831272, 0.552807, 0.058237,
		0.533841, -0.764742, -0.360808,
		39.790180, 35.646248, 38.523682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747116, 36.541718, 38.300453>,  <39.416492, 36.181568, 38.776245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747116, 36.541718, 38.300453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798046, 36.158749, 38.196819>,  <39.828606, 35.928967, 38.134640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798046, 36.158749, 38.196819>,  <39.747116, 36.541718, 38.300453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798046, 36.158749, 38.196819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094164, 0.248359, -0.964080,
		0.987381, 0.147149, -0.058533,
		0.127327, -0.957426, -0.259081,
		39.836243, 35.871521, 38.119095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297897, 36.475925, 37.776180>,  <39.747116, 36.541718, 38.300453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297897, 36.475925, 37.776180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069225, 36.155445, 37.705463>,  <39.932022, 35.963158, 37.663033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069225, 36.155445, 37.705463>,  <40.297897, 36.475925, 37.776180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069225, 36.155445, 37.705463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024675, 0.198589, -0.979772,
		0.820105, -0.564479, -0.093760,
		-0.571681, -0.801203, -0.176793,
		39.897720, 35.915085, 37.652424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617561, 36.209366, 37.284687>,  <40.297897, 36.475925, 37.776180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617561, 36.209366, 37.284687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254543, 36.042084, 37.269390>,  <40.036732, 35.941715, 37.260212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254543, 36.042084, 37.269390>,  <40.617561, 36.209366, 37.284687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254543, 36.042084, 37.269390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015046, 0.058618, -0.998167,
		0.419684, -0.906457, -0.046907,
		-0.907546, -0.418209, -0.038240,
		39.982281, 35.916622, 37.257919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560234, 35.785141, 36.628845>,  <40.617561, 36.209366, 37.284687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560234, 35.785141, 36.628845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172611, 35.814526, 36.723110>,  <39.940037, 35.832157, 36.779671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172611, 35.814526, 36.723110>,  <40.560234, 35.785141, 36.628845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172611, 35.814526, 36.723110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235822, 0.006636, -0.971774,
		-0.072953, -0.997276, 0.010894,
		-0.969054, 0.073462, 0.235664,
		39.881893, 35.836563, 36.793808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.826576, 33.595387, 44.662884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.437695, 33.560497, 44.575977>,  <40.204365, 33.539562, 44.523834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.437695, 33.560497, 44.575977>,  <40.826576, 33.595387, 44.662884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437695, 33.560497, 44.575977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218872, -0.009136, -0.975711,
		0.083120, -0.996147, 0.027973,
		-0.972207, -0.087224, -0.217269,
		40.146034, 33.534332, 44.510796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685612, 33.070477, 44.157108>,  <40.826576, 33.595387, 44.662884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685612, 33.070477, 44.157108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400230, 33.347385, 44.113758>,  <40.229004, 33.513531, 44.087746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400230, 33.347385, 44.113758>,  <40.685612, 33.070477, 44.157108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400230, 33.347385, 44.113758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242303, 0.098610, -0.965176,
		-0.657478, -0.714867, -0.238093,
		-0.713451, 0.692272, -0.108380,
		40.186195, 33.555069, 44.081245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323692, 32.887501, 43.463894>,  <40.685612, 33.070477, 44.157108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323692, 32.887501, 43.463894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.238338, 33.266533, 43.559017>,  <40.187126, 33.493954, 43.616093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.238338, 33.266533, 43.559017>,  <40.323692, 32.887501, 43.463894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238338, 33.266533, 43.559017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179379, 0.277280, -0.943896,
		-0.960360, -0.158754, -0.229143,
		-0.213384, 0.947583, 0.237811,
		40.174324, 33.550808, 43.630360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086254, 33.053196, 42.802261>,  <40.323692, 32.887501, 43.463894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086254, 33.053196, 42.802261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.147327, 33.386894, 43.014191>,  <40.183971, 33.587112, 43.141350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.147327, 33.386894, 43.014191>,  <40.086254, 33.053196, 42.802261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147327, 33.386894, 43.014191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060181, 0.542965, -0.837596,
		-0.986441, 0.096004, 0.133109,
		0.152686, 0.834250, 0.529825,
		40.193134, 33.637169, 43.173138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537315, 33.530441, 42.579929>,  <40.086254, 33.053196, 42.802261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537315, 33.530441, 42.579929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838081, 33.736355, 42.744667>,  <40.018543, 33.859901, 42.843510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838081, 33.736355, 42.744667>,  <39.537315, 33.530441, 42.579929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838081, 33.736355, 42.744667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031488, 0.595955, -0.802401,
		-0.658505, 0.616307, 0.431899,
		0.751918, 0.514785, 0.411845,
		40.063656, 33.890789, 42.868221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338295, 34.297756, 42.524254>,  <39.537315, 33.530441, 42.579929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338295, 34.297756, 42.524254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734196, 34.258583, 42.565838>,  <39.971737, 34.235077, 42.590790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734196, 34.258583, 42.565838>,  <39.338295, 34.297756, 42.524254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734196, 34.258583, 42.565838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141556, 0.575745, -0.805282,
		0.019011, 0.811743, 0.583706,
		0.989748, -0.097936, 0.103962,
		40.031120, 34.229202, 42.597027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528049, 34.984570, 42.381676>,  <39.338295, 34.297756, 42.524254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528049, 34.984570, 42.381676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856632, 34.759567, 42.344173>,  <40.053783, 34.624565, 42.321671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856632, 34.759567, 42.344173>,  <39.528049, 34.984570, 42.381676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856632, 34.759567, 42.344173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325306, 0.597257, -0.733117,
		0.468380, 0.571726, 0.673609,
		0.821460, -0.562506, -0.093758,
		40.103069, 34.590816, 42.316048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122131, 35.431728, 42.085552>,  <39.528049, 34.984570, 42.381676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122131, 35.431728, 42.085552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.254292, 35.056984, 42.039715>,  <40.333588, 34.832138, 42.012211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.254292, 35.056984, 42.039715>,  <40.122131, 35.431728, 42.085552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254292, 35.056984, 42.039715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342741, 0.232215, -0.910277,
		0.879411, 0.261481, 0.397824,
		0.330401, -0.936859, -0.114592,
		40.353413, 34.775925, 42.005337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854820, 35.473480, 41.836487>,  <40.122131, 35.431728, 42.085552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854820, 35.473480, 41.836487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698612, 35.121559, 41.728088>,  <40.604889, 34.910408, 41.663048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698612, 35.121559, 41.728088>,  <40.854820, 35.473480, 41.836487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698612, 35.121559, 41.728088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112151, 0.246716, -0.962577,
		0.913739, -0.406296, 0.002324,
		-0.390517, -0.879804, -0.271000,
		40.581455, 34.857616, 41.646790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614704, 35.714989, 41.968853>,  <40.854820, 35.473480, 41.836487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614704, 35.714989, 41.968853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678913, 36.103512, 41.898655>,  <41.717438, 36.336624, 41.856537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678913, 36.103512, 41.898655>,  <41.614704, 35.714989, 41.968853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678913, 36.103512, 41.898655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114875, 0.158208, 0.980701,
		0.980324, -0.177585, -0.086182,
		0.160523, 0.971305, -0.175495,
		41.727070, 36.394905, 41.846004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935982, 35.821774, 42.555126>,  <41.614704, 35.714989, 41.968853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935982, 35.821774, 42.555126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.843269, 36.180836, 42.405197>,  <41.787643, 36.396275, 42.315239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.843269, 36.180836, 42.405197>,  <41.935982, 35.821774, 42.555126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843269, 36.180836, 42.405197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085648, 0.402650, 0.911338,
		0.968991, 0.179124, -0.170208,
		-0.231777, 0.897656, -0.374823,
		41.773735, 36.450134, 42.292751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441360, 36.350258, 42.827904>,  <41.935982, 35.821774, 42.555126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441360, 36.350258, 42.827904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.114597, 36.562927, 42.738472>,  <41.918537, 36.690529, 42.684814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.114597, 36.562927, 42.738472>,  <42.441360, 36.350258, 42.827904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114597, 36.562927, 42.738472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016119, 0.366440, 0.930302,
		0.576539, 0.763578, -0.290778,
		-0.816911, 0.531669, -0.223575,
		41.869526, 36.722427, 42.671398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522320, 37.144878, 43.001503>,  <42.441360, 36.350258, 42.827904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522320, 37.144878, 43.001503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.128319, 37.076748, 43.012569>,  <41.891918, 37.035870, 43.019211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.128319, 37.076748, 43.012569>,  <42.522320, 37.144878, 43.001503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128319, 37.076748, 43.012569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029209, 0.322606, 0.946082,
		-0.170070, 0.931082, -0.322742,
		-0.984999, -0.170327, 0.027670,
		41.832821, 37.025650, 43.020870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223103, 37.679604, 43.482170>,  <42.522320, 37.144878, 43.001503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223103, 37.679604, 43.482170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.934956, 37.404350, 43.447433>,  <41.762066, 37.239201, 43.426594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.934956, 37.404350, 43.447433>,  <42.223103, 37.679604, 43.482170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934956, 37.404350, 43.447433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316721, 0.214978, 0.923836,
		-0.617051, 0.693009, -0.372810,
		-0.720372, -0.688131, -0.086838,
		41.718845, 37.197910, 43.421383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694893, 38.012501, 43.703209>,  <42.223103, 37.679604, 43.482170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694893, 38.012501, 43.703209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.593456, 37.629326, 43.756950>,  <41.532593, 37.399422, 43.789196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.593456, 37.629326, 43.756950>,  <41.694893, 38.012501, 43.703209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593456, 37.629326, 43.756950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233009, 0.195301, 0.952662,
		-0.938828, 0.210282, -0.272735,
		-0.253593, -0.957935, 0.134356,
		41.517380, 37.341946, 43.797256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062588, 38.015648, 44.086002>,  <41.694893, 38.012501, 43.703209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062588, 38.015648, 44.086002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204575, 37.646549, 44.146057>,  <41.289764, 37.425091, 44.182091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204575, 37.646549, 44.146057>,  <41.062588, 38.015648, 44.086002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204575, 37.646549, 44.146057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530285, -0.066471, 0.845210,
		-0.769934, -0.379633, -0.512913,
		0.354964, -0.922746, 0.150135,
		41.311062, 37.369724, 44.191097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490669, 37.529102, 44.341545>,  <41.062588, 38.015648, 44.086002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490669, 37.529102, 44.341545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.839386, 37.359722, 44.440060>,  <41.048618, 37.258095, 44.499168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.839386, 37.359722, 44.440060>,  <40.490669, 37.529102, 44.341545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839386, 37.359722, 44.440060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329438, -0.134699, 0.934520,
		-0.362553, -0.895847, -0.256932,
		0.871795, -0.423456, 0.246290,
		41.100925, 37.232685, 44.513947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290665, 36.990845, 44.625702>,  <40.490669, 37.529102, 44.341545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290665, 36.990845, 44.625702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650074, 37.020527, 44.798744>,  <40.865719, 37.038338, 44.902569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650074, 37.020527, 44.798744>,  <40.290665, 36.990845, 44.625702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650074, 37.020527, 44.798744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407083, -0.227636, 0.884570,
		0.164118, -0.970914, -0.174328,
		0.898525, 0.074208, 0.432602,
		40.919632, 37.042789, 44.928524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364452, 36.458527, 45.090286>,  <40.290665, 36.990845, 44.625702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364452, 36.458527, 45.090286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.638435, 36.710091, 45.237419>,  <40.802826, 36.861031, 45.325699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.638435, 36.710091, 45.237419>,  <40.364452, 36.458527, 45.090286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638435, 36.710091, 45.237419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194977, -0.328225, 0.924258,
		0.702012, -0.704795, -0.102195,
		0.684955, 0.628914, 0.367837,
		40.843922, 36.898766, 45.347771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556381, 36.007919, 45.693279>,  <40.364452, 36.458527, 45.090286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556381, 36.007919, 45.693279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.701897, 36.374737, 45.758636>,  <40.789204, 36.594826, 45.797852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.701897, 36.374737, 45.758636>,  <40.556381, 36.007919, 45.693279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701897, 36.374737, 45.758636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239467, -0.077439, 0.967811,
		0.900175, -0.391203, 0.191430,
		0.363787, 0.917041, 0.163389,
		40.811031, 36.649849, 45.807652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724945, 35.935837, 46.473110>,  <40.556381, 36.007919, 45.693279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724945, 35.935837, 46.473110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772697, 36.321930, 46.380096>,  <40.801350, 36.553585, 46.324287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772697, 36.321930, 46.380096>,  <40.724945, 35.935837, 46.473110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772697, 36.321930, 46.380096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093749, 0.244119, 0.965203,
		0.988413, -0.093426, 0.119632,
		0.119379, 0.965234, -0.232531,
		40.808510, 36.611500, 46.310337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188564, 36.205311, 46.904034>,  <40.724945, 35.935837, 46.473110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188564, 36.205311, 46.904034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.945770, 36.505829, 46.800396>,  <40.800095, 36.686138, 46.738213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.945770, 36.505829, 46.800396>,  <41.188564, 36.205311, 46.904034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945770, 36.505829, 46.800396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223308, 0.151649, 0.962879,
		0.762698, 0.642307, 0.075722,
		-0.606980, 0.751295, -0.259095,
		40.763676, 36.731216, 46.722668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367893, 36.813576, 47.233391>,  <41.188564, 36.205311, 46.904034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367893, 36.813576, 47.233391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.982590, 36.845722, 47.130890>,  <40.751408, 36.865009, 47.069389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.982590, 36.845722, 47.130890>,  <41.367893, 36.813576, 47.233391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982590, 36.845722, 47.130890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251818, 0.061342, 0.965829,
		0.093340, 0.994876, -0.038851,
		-0.963263, 0.080367, -0.256253,
		40.693611, 36.869831, 47.054012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.458740, 36.584118, 44.808739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795341, 36.369675, 44.782021>,  <32.997303, 36.241009, 44.765991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795341, 36.369675, 44.782021>,  <32.458740, 36.584118, 44.808739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795341, 36.369675, 44.782021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293963, 0.558090, -0.775965,
		0.453281, 0.633339, 0.627230,
		0.841500, -0.536112, -0.066793,
		33.047791, 36.208839, 44.761982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959351, 37.071854, 44.702366>,  <32.458740, 36.584118, 44.808739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959351, 37.071854, 44.702366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150810, 36.733555, 44.608051>,  <33.265686, 36.530575, 44.551460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150810, 36.733555, 44.608051>,  <32.959351, 37.071854, 44.702366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150810, 36.733555, 44.608051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554970, 0.499536, -0.665186,
		0.680367, 0.187537, 0.708471,
		0.478653, -0.845751, -0.235790,
		33.294407, 36.479828, 44.537315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730568, 37.196651, 44.664001>,  <32.959351, 37.071854, 44.702366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730568, 37.196651, 44.664001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.702175, 36.855038, 44.457859>,  <33.685139, 36.650070, 44.334175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.702175, 36.855038, 44.457859>,  <33.730568, 37.196651, 44.664001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702175, 36.855038, 44.457859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382680, 0.453808, -0.804745,
		0.921150, -0.254339, 0.294609,
		-0.070982, -0.854032, -0.515355,
		33.680882, 36.598827, 44.303253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378529, 37.089340, 44.248039>,  <33.730568, 37.196651, 44.664001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378529, 37.089340, 44.248039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110973, 36.853191, 44.067348>,  <33.950439, 36.711502, 43.958935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110973, 36.853191, 44.067348>,  <34.378529, 37.089340, 44.248039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110973, 36.853191, 44.067348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366399, 0.266902, -0.891355,
		0.646795, -0.761727, 0.037783,
		-0.668885, -0.590368, -0.451728,
		33.910309, 36.676083, 43.931831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751217, 36.608959, 43.873920>,  <34.378529, 37.089340, 44.248039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751217, 36.608959, 43.873920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384876, 36.635452, 43.715519>,  <34.165070, 36.651348, 43.620476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384876, 36.635452, 43.715519>,  <34.751217, 36.608959, 43.873920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384876, 36.635452, 43.715519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399397, 0.251291, -0.881666,
		0.041118, -0.965643, -0.256600,
		-0.915856, 0.066233, -0.396008,
		34.110119, 36.655323, 43.596718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826519, 36.381859, 43.184467>,  <34.751217, 36.608959, 43.873920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826519, 36.381859, 43.184467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477108, 36.575962, 43.169125>,  <34.267460, 36.692425, 43.159920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477108, 36.575962, 43.169125>,  <34.826519, 36.381859, 43.184467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477108, 36.575962, 43.169125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200329, 0.286563, -0.936883,
		-0.443635, -0.826081, -0.347532,
		-0.873531, 0.485255, -0.038359,
		34.215050, 36.721539, 43.157616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502983, 36.163826, 42.534542>,  <34.826519, 36.381859, 43.184467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502983, 36.163826, 42.534542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.315254, 36.498280, 42.648113>,  <34.202618, 36.698952, 42.716255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.315254, 36.498280, 42.648113>,  <34.502983, 36.163826, 42.534542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315254, 36.498280, 42.648113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030383, 0.306053, -0.951530,
		-0.882506, -0.455197, -0.118232,
		-0.469319, 0.836138, 0.283924,
		34.174458, 36.749123, 42.733292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922428, 36.248512, 42.024765>,  <34.502983, 36.163826, 42.534542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922428, 36.248512, 42.024765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003815, 36.604942, 42.187038>,  <34.052647, 36.818802, 42.284405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003815, 36.604942, 42.187038>,  <33.922428, 36.248512, 42.024765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003815, 36.604942, 42.187038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040400, 0.406362, -0.912819,
		-0.978248, 0.202120, 0.046682,
		0.203469, 0.891077, 0.405688,
		34.064854, 36.872265, 42.308746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605328, 36.671787, 41.590313>,  <33.922428, 36.248512, 42.024765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605328, 36.671787, 41.590313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878716, 36.909306, 41.760147>,  <34.042747, 37.051819, 41.862049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878716, 36.909306, 41.760147>,  <33.605328, 36.671787, 41.590313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878716, 36.909306, 41.760147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257468, 0.348169, -0.901382,
		-0.683066, 0.725385, 0.085079,
		0.683470, 0.593798, 0.424585,
		34.083755, 37.087444, 41.887524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391369, 37.337837, 41.364506>,  <33.605328, 36.671787, 41.590313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391369, 37.337837, 41.364506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765564, 37.392918, 41.494678>,  <33.990082, 37.425964, 41.572781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765564, 37.392918, 41.494678>,  <33.391369, 37.337837, 41.364506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765564, 37.392918, 41.494678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236677, 0.439699, -0.866400,
		-0.262394, 0.887527, 0.378742,
		0.935486, 0.137699, 0.325432,
		34.046211, 37.434227, 41.592308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538597, 37.925674, 40.984875>,  <33.391369, 37.337837, 41.364506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538597, 37.925674, 40.984875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887844, 37.774384, 41.107906>,  <34.097393, 37.683609, 41.181725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887844, 37.774384, 41.107906>,  <33.538597, 37.925674, 40.984875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887844, 37.774384, 41.107906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412958, 0.238518, -0.878963,
		0.259087, 0.894456, 0.364448,
		0.873121, -0.378229, 0.307576,
		34.149780, 37.660915, 41.200180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981575, 38.428425, 40.899338>,  <33.538597, 37.925674, 40.984875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981575, 38.428425, 40.899338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183361, 38.083138, 40.891586>,  <34.304432, 37.875965, 40.886936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183361, 38.083138, 40.891586>,  <33.981575, 38.428425, 40.899338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183361, 38.083138, 40.891586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271016, 0.179615, -0.945668,
		0.819795, 0.471805, 0.324555,
		0.504467, -0.863214, -0.019381,
		34.334702, 37.824173, 40.885773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602242, 38.608212, 40.653324>,  <33.981575, 38.428425, 40.899338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602242, 38.608212, 40.653324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588085, 38.212376, 40.597523>,  <34.579590, 37.974873, 40.564041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588085, 38.212376, 40.597523>,  <34.602242, 38.608212, 40.653324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588085, 38.212376, 40.597523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273351, 0.124680, -0.953800,
		0.961263, -0.071888, 0.266093,
		-0.035391, -0.989589, -0.139501,
		34.577469, 37.915501, 40.555672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191059, 38.526543, 40.221916>,  <34.602242, 38.608212, 40.653324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191059, 38.526543, 40.221916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946781, 38.215919, 40.159939>,  <34.800217, 38.029545, 40.122753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946781, 38.215919, 40.159939>,  <35.191059, 38.526543, 40.221916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946781, 38.215919, 40.159939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089427, 0.126780, -0.987891,
		0.786803, -0.617153, -0.007978,
		-0.610691, -0.776562, -0.154941,
		34.763573, 37.982952, 40.113457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985054, 38.756622, 40.051231>,  <35.191059, 38.526543, 40.221916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985054, 38.756622, 40.051231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920612, 39.151058, 40.034897>,  <35.881947, 39.387722, 40.025097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920612, 39.151058, 40.034897>,  <35.985054, 38.756622, 40.051231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920612, 39.151058, 40.034897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113273, 0.059574, 0.991776,
		0.980416, 0.155151, -0.121295,
		-0.161101, 0.986093, -0.040833,
		35.872284, 39.446884, 40.022648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519314, 38.947468, 40.531082>,  <35.985054, 38.756622, 40.051231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519314, 38.947468, 40.531082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248497, 39.240978, 40.508480>,  <36.086006, 39.417084, 40.494919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248497, 39.240978, 40.508480>,  <36.519314, 38.947468, 40.531082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248497, 39.240978, 40.508480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076390, 0.146439, 0.986266,
		0.731969, 0.663426, -0.155198,
		-0.677041, 0.733772, -0.056509,
		36.045383, 39.461109, 40.491528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808514, 39.388893, 41.022221>,  <36.519314, 38.947468, 40.531082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808514, 39.388893, 41.022221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447041, 39.556419, 40.986530>,  <36.230156, 39.656933, 40.965118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447041, 39.556419, 40.986530>,  <36.808514, 39.388893, 41.022221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447041, 39.556419, 40.986530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102754, -0.009818, 0.994658,
		0.415699, 0.908020, 0.051907,
		-0.903679, 0.418813, -0.089221,
		36.175938, 39.682064, 40.959763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692696, 39.967522, 41.382607>,  <36.808514, 39.388893, 41.022221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692696, 39.967522, 41.382607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321770, 39.820972, 41.351967>,  <36.099216, 39.733044, 41.333584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321770, 39.820972, 41.351967>,  <36.692696, 39.967522, 41.382607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321770, 39.820972, 41.351967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082022, -0.000757, 0.996630,
		-0.365192, 0.930470, -0.029348,
		-0.927312, -0.366368, -0.076596,
		36.043575, 39.711063, 41.328987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283619, 40.293358, 41.905842>,  <36.692696, 39.967522, 41.382607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283619, 40.293358, 41.905842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044903, 39.983677, 41.821503>,  <35.901672, 39.797867, 41.770901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044903, 39.983677, 41.821503>,  <36.283619, 40.293358, 41.905842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044903, 39.983677, 41.821503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235033, -0.082579, 0.968473,
		-0.767204, 0.627529, -0.132681,
		-0.596789, -0.774201, -0.210845,
		35.865868, 39.751415, 41.758247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750961, 40.407055, 42.284794>,  <36.283619, 40.293358, 41.905842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750961, 40.407055, 42.284794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.705528, 40.014545, 42.222576>,  <35.678268, 39.779037, 42.185246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.705528, 40.014545, 42.222576>,  <35.750961, 40.407055, 42.284794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705528, 40.014545, 42.222576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283866, -0.117981, 0.951578,
		-0.952113, 0.152239, -0.265150,
		-0.113585, -0.981277, -0.155547,
		35.671452, 39.720161, 42.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178574, 40.284580, 42.512959>,  <35.750961, 40.407055, 42.284794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178574, 40.284580, 42.512959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346054, 39.921417, 42.520920>,  <35.446541, 39.703518, 42.525696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346054, 39.921417, 42.520920>,  <35.178574, 40.284580, 42.512959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346054, 39.921417, 42.520920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270820, -0.103911, 0.957005,
		-0.866804, -0.406087, -0.289387,
		0.418698, -0.907907, 0.019906,
		35.471664, 39.649044, 42.526890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723118, 39.864998, 42.853844>,  <35.178574, 40.284580, 42.512959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723118, 39.864998, 42.853844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.055374, 39.647995, 42.904007>,  <35.254726, 39.517796, 42.934105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.055374, 39.647995, 42.904007>,  <34.723118, 39.864998, 42.853844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055374, 39.647995, 42.904007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264249, -0.185821, 0.946384,
		-0.490113, -0.819243, -0.297706,
		0.830639, -0.542504, 0.125411,
		35.304565, 39.485245, 42.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508545, 39.321732, 43.253544>,  <34.723118, 39.864998, 42.853844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508545, 39.321732, 43.253544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903568, 39.293823, 43.309906>,  <35.140583, 39.277077, 43.343723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903568, 39.293823, 43.309906>,  <34.508545, 39.321732, 43.253544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903568, 39.293823, 43.309906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157234, -0.438922, 0.884661,
		0.000122, -0.895812, -0.444433,
		0.987561, -0.069772, 0.140905,
		35.199837, 39.272892, 43.352177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629555, 38.644234, 43.521633>,  <34.508545, 39.321732, 43.253544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629555, 38.644234, 43.521633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951672, 38.859970, 43.620110>,  <35.144943, 38.989410, 43.679195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951672, 38.859970, 43.620110>,  <34.629555, 38.644234, 43.521633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951672, 38.859970, 43.620110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029799, -0.377906, 0.925364,
		0.592124, -0.752528, -0.288254,
		0.805295, 0.539341, 0.246193,
		35.193260, 39.021770, 43.693966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094826, 38.126495, 43.714451>,  <34.629555, 38.644234, 43.521633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094826, 38.126495, 43.714451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.187675, 38.488300, 43.857544>,  <35.243385, 38.705383, 43.943401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.187675, 38.488300, 43.857544>,  <35.094826, 38.126495, 43.714451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187675, 38.488300, 43.857544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220870, -0.407187, 0.886236,
		0.947279, -0.126700, -0.294296,
		0.232120, 0.904514, 0.357735,
		35.257313, 38.759655, 43.964863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720638, 38.065628, 44.003101>,  <35.094826, 38.126495, 43.714451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720638, 38.065628, 44.003101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552528, 38.374359, 44.193954>,  <35.451660, 38.559597, 44.308464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552528, 38.374359, 44.193954>,  <35.720638, 38.065628, 44.003101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552528, 38.374359, 44.193954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051697, -0.504603, 0.861803,
		0.905922, 0.386862, 0.172172,
		-0.420277, 0.771825, 0.477130,
		35.426445, 38.605907, 44.337093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942902, 37.992546, 44.580173>,  <35.720638, 38.065628, 44.003101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942902, 37.992546, 44.580173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667652, 38.265667, 44.678379>,  <35.502502, 38.429539, 44.737301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667652, 38.265667, 44.678379>,  <35.942902, 37.992546, 44.580173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667652, 38.265667, 44.678379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204819, -0.507384, 0.837024,
		0.696089, 0.525687, 0.488991,
		-0.688120, 0.682799, 0.245514,
		35.461216, 38.470505, 44.752033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045483, 38.222569, 45.293381>,  <35.942902, 37.992546, 44.580173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045483, 38.222569, 45.293381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662827, 38.312824, 45.219700>,  <35.433235, 38.366978, 45.175491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662827, 38.312824, 45.219700>,  <36.045483, 38.222569, 45.293381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662827, 38.312824, 45.219700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258957, -0.369300, 0.892502,
		0.133359, 0.901501, 0.411717,
		-0.956638, 0.225640, -0.184201,
		35.375835, 38.380516, 45.164440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469696, 38.820461, 45.210442>,  <36.045483, 38.222569, 45.293381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469696, 38.820461, 45.210442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806995, 38.717445, 45.399166>,  <37.009377, 38.655636, 45.512402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806995, 38.717445, 45.399166>,  <36.469696, 38.820461, 45.210442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806995, 38.717445, 45.399166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472823, -0.062129, -0.878964,
		0.255682, 0.964268, 0.069380,
		0.843247, -0.257540, 0.471813,
		37.059971, 38.640182, 45.540710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991898, 39.442177, 45.099007>,  <36.469696, 38.820461, 45.210442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991898, 39.442177, 45.099007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232311, 39.151024, 45.231033>,  <37.376560, 38.976334, 45.310249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232311, 39.151024, 45.231033>,  <36.991898, 39.442177, 45.099007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232311, 39.151024, 45.231033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571133, 0.102273, -0.814462,
		0.559075, 0.678033, 0.477187,
		0.601035, -0.727882, 0.330068,
		37.412621, 38.932659, 45.330055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750645, 39.605373, 44.905106>,  <36.991898, 39.442177, 45.099007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750645, 39.605373, 44.905106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734058, 39.209538, 44.960224>,  <37.724106, 38.972034, 44.993294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734058, 39.209538, 44.960224>,  <37.750645, 39.605373, 44.905106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734058, 39.209538, 44.960224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660584, -0.130620, -0.739302,
		0.749606, 0.060371, 0.659125,
		-0.041463, -0.989593, 0.137794,
		37.721619, 38.912659, 45.001564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431412, 39.501213, 44.913383>,  <37.750645, 39.605373, 44.905106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431412, 39.501213, 44.913383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258183, 39.149734, 44.833046>,  <38.154243, 38.938847, 44.784843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258183, 39.149734, 44.833046>,  <38.431412, 39.501213, 44.913383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258183, 39.149734, 44.833046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756114, -0.232858, -0.611611,
		0.490653, -0.416734, 0.765240,
		-0.433072, -0.878698, -0.200846,
		38.128262, 38.886124, 44.772793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988777, 38.942348, 44.953827>,  <38.431412, 39.501213, 44.913383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988777, 38.942348, 44.953827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.688046, 38.811138, 44.725037>,  <38.507607, 38.732414, 44.587765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.688046, 38.811138, 44.725037>,  <38.988777, 38.942348, 44.953827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688046, 38.811138, 44.725037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640563, -0.157729, -0.751532,
		0.156302, -0.931409, 0.328704,
		-0.751830, -0.328022, -0.571973,
		38.462498, 38.712730, 44.553444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250492, 38.397984, 44.590809>,  <38.988777, 38.942348, 44.953827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250492, 38.397984, 44.590809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959682, 38.562775, 44.371094>,  <38.785198, 38.661652, 44.239265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959682, 38.562775, 44.371094>,  <39.250492, 38.397984, 44.590809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959682, 38.562775, 44.371094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621088, 0.053528, -0.781910,
		-0.292729, -0.909619, -0.294792,
		-0.727021, 0.411980, -0.549285,
		38.741577, 38.686367, 44.206310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269974, 38.008274, 43.946262>,  <39.250492, 38.397984, 44.590809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269974, 38.008274, 43.946262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052429, 38.333355, 43.862610>,  <38.921902, 38.528404, 43.812420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052429, 38.333355, 43.862610>,  <39.269974, 38.008274, 43.946262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052429, 38.333355, 43.862610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478328, 0.095454, -0.872978,
		-0.689508, -0.574808, -0.440651,
		-0.543857, 0.812701, -0.209131,
		38.889271, 38.577164, 43.799870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133251, 37.857769, 43.345509>,  <39.269974, 38.008274, 43.946262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133251, 37.857769, 43.345509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.043533, 38.246891, 43.368660>,  <38.989704, 38.480362, 43.382549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.043533, 38.246891, 43.368660>,  <39.133251, 37.857769, 43.345509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043533, 38.246891, 43.368660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163907, 0.096203, -0.981774,
		-0.960639, -0.210719, -0.181027,
		-0.224294, 0.972801, 0.057878,
		38.976246, 38.538731, 43.386024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622578, 38.036171, 42.834709>,  <39.133251, 37.857769, 43.345509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622578, 38.036171, 42.834709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.827347, 38.372005, 42.907398>,  <38.950211, 38.573505, 42.951012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.827347, 38.372005, 42.907398>,  <38.622578, 38.036171, 42.834709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827347, 38.372005, 42.907398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180827, 0.101480, -0.978266,
		-0.839782, 0.533660, -0.099870,
		0.511926, 0.839589, 0.181721,
		38.980927, 38.623882, 42.961914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500729, 38.443233, 42.243790>,  <38.622578, 38.036171, 42.834709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500729, 38.443233, 42.243790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821400, 38.638134, 42.382294>,  <39.013802, 38.755074, 42.465397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821400, 38.638134, 42.382294>,  <38.500729, 38.443233, 42.243790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821400, 38.638134, 42.382294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223427, 0.293025, -0.929632,
		-0.554425, 0.822633, 0.126048,
		0.801682, 0.487249, 0.346259,
		39.061905, 38.784309, 42.486172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569229, 38.944824, 41.675537>,  <38.500729, 38.443233, 42.243790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569229, 38.944824, 41.675537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903442, 38.981915, 41.892162>,  <39.103970, 39.004169, 42.022137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903442, 38.981915, 41.892162>,  <38.569229, 38.944824, 41.675537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903442, 38.981915, 41.892162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457388, 0.428749, -0.779083,
		-0.304433, 0.898653, 0.315823,
		0.835534, 0.092725, 0.541558,
		39.154102, 39.009731, 42.054630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782051, 39.668243, 41.660278>,  <38.569229, 38.944824, 41.675537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782051, 39.668243, 41.660278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.101425, 39.438038, 41.731037>,  <39.293049, 39.299915, 41.773491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.101425, 39.438038, 41.731037>,  <38.782051, 39.668243, 41.660278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101425, 39.438038, 41.731037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466712, 0.405984, -0.785721,
		0.380373, 0.709905, 0.592749,
		0.798434, -0.575510, 0.176895,
		39.340954, 39.265385, 41.784107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361629, 40.033081, 41.746819>,  <38.782051, 39.668243, 41.660278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361629, 40.033081, 41.746819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.512844, 39.677361, 41.643871>,  <39.603573, 39.463928, 41.582104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.512844, 39.677361, 41.643871>,  <39.361629, 40.033081, 41.746819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512844, 39.677361, 41.643871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511035, 0.432257, -0.742965,
		0.771966, 0.149346, 0.617871,
		0.378038, -0.889297, -0.257367,
		39.626255, 39.410572, 41.566662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074444, 40.067852, 41.745945>,  <39.361629, 40.033081, 41.746819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074444, 40.067852, 41.745945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978519, 39.771820, 41.494621>,  <39.920963, 39.594200, 41.343826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978519, 39.771820, 41.494621>,  <40.074444, 40.067852, 41.745945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978519, 39.771820, 41.494621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499308, 0.461013, -0.733593,
		0.832575, -0.489648, 0.258968,
		-0.239814, -0.740076, -0.628313,
		39.906574, 39.549797, 41.306126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.246241, 33.111168, 42.140308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.591181, 33.117489, 42.342735>,  <28.798145, 33.121281, 42.464191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.591181, 33.117489, 42.342735>,  <28.246241, 33.111168, 42.140308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591181, 33.117489, 42.342735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254646, 0.877434, 0.406528,
		-0.437615, -0.479437, 0.760680,
		0.862350, 0.015801, 0.506065,
		28.849886, 33.122231, 42.494556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652792, 32.813366, 41.589600>,  <28.246241, 33.111168, 42.140308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652792, 32.813366, 41.589600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471931, 33.158024, 41.681793>,  <28.363415, 33.364819, 41.737110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471931, 33.158024, 41.681793>,  <28.652792, 32.813366, 41.589600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471931, 33.158024, 41.681793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692779, 0.176501, 0.699217,
		0.561796, 0.475829, -0.676736,
		-0.452153, 0.861646, 0.230487,
		28.336287, 33.416519, 41.750938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411201, 32.408947, 40.983635>,  <28.652792, 32.813366, 41.589600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411201, 32.408947, 40.983635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770643, 32.530262, 40.856812>,  <28.986309, 32.603050, 40.780716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770643, 32.530262, 40.856812>,  <28.411201, 32.408947, 40.983635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770643, 32.530262, 40.856812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434823, 0.518984, -0.735924,
		-0.058644, 0.799170, 0.598237,
		0.898604, 0.303285, -0.317063,
		29.040224, 32.621246, 40.761692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369623, 33.141445, 40.810394>,  <28.411201, 32.408947, 40.983635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369623, 33.141445, 40.810394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696289, 33.032963, 40.606625>,  <28.892288, 32.967873, 40.484364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696289, 33.032963, 40.606625>,  <28.369623, 33.141445, 40.810394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696289, 33.032963, 40.606625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268132, 0.603341, -0.751056,
		0.511046, 0.749951, 0.420006,
		0.816662, -0.271207, -0.509421,
		28.941288, 32.951599, 40.453800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680883, 33.759460, 40.650112>,  <28.369623, 33.141445, 40.810394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680883, 33.759460, 40.650112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794304, 33.482571, 40.384655>,  <28.862356, 33.316437, 40.225380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794304, 33.482571, 40.384655>,  <28.680883, 33.759460, 40.650112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794304, 33.482571, 40.384655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384812, 0.551748, -0.739928,
		0.878361, 0.465187, -0.109926,
		0.283553, -0.692225, -0.663643,
		28.879370, 33.274902, 40.185562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871500, 34.116104, 40.101410>,  <28.680883, 33.759460, 40.650112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871500, 34.116104, 40.101410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833826, 33.753986, 39.935722>,  <28.811222, 33.536716, 39.836311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833826, 33.753986, 39.935722>,  <28.871500, 34.116104, 40.101410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833826, 33.753986, 39.935722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388291, 0.416521, -0.822034,
		0.916711, 0.083415, -0.390746,
		-0.094184, -0.905291, -0.414219,
		28.805571, 33.482399, 39.811459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293417, 34.267593, 39.506916>,  <28.871500, 34.116104, 40.101410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293417, 34.267593, 39.506916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063940, 33.942139, 39.469238>,  <28.926254, 33.746868, 39.446632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063940, 33.942139, 39.469238>,  <29.293417, 34.267593, 39.506916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063940, 33.942139, 39.469238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282365, 0.304416, -0.909726,
		0.768860, -0.495307, -0.404383,
		-0.573694, -0.813635, -0.094196,
		28.891832, 33.698048, 39.440979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427998, 33.957054, 38.818569>,  <29.293417, 34.267593, 39.506916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427998, 33.957054, 38.818569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074848, 33.806957, 38.931515>,  <28.862959, 33.716900, 38.999283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074848, 33.806957, 38.931515>,  <29.427998, 33.957054, 38.818569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074848, 33.806957, 38.931515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349518, 0.123482, -0.928757,
		0.313644, -0.918664, -0.240174,
		-0.882873, -0.375244, 0.282360,
		28.809986, 33.694386, 39.016224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250025, 33.493477, 38.345261>,  <29.427998, 33.957054, 38.818569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250025, 33.493477, 38.345261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900957, 33.606888, 38.504284>,  <28.691517, 33.674934, 38.599697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900957, 33.606888, 38.504284>,  <29.250025, 33.493477, 38.345261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900957, 33.606888, 38.504284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354399, 0.192340, -0.915099,
		-0.335925, -0.939476, -0.067367,
		-0.872671, 0.283530, 0.397561,
		28.639156, 33.691948, 38.623554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710833, 33.082909, 38.052948>,  <29.250025, 33.493477, 38.345261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710833, 33.082909, 38.052948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532221, 33.409752, 38.198799>,  <28.425055, 33.605858, 38.286308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532221, 33.409752, 38.198799>,  <28.710833, 33.082909, 38.052948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532221, 33.409752, 38.198799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453781, 0.144417, -0.879333,
		-0.771165, -0.558108, 0.306300,
		-0.446528, 0.817104, 0.364628,
		28.398262, 33.654884, 38.308189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049280, 33.102592, 37.714397>,  <28.710833, 33.082909, 38.052948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049280, 33.102592, 37.714397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112034, 33.470951, 37.857132>,  <28.149687, 33.691967, 37.942772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112034, 33.470951, 37.857132>,  <28.049280, 33.102592, 37.714397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112034, 33.470951, 37.857132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453977, 0.388119, -0.802041,
		-0.877093, -0.036167, 0.478957,
		0.156885, 0.920900, 0.356835,
		28.159100, 33.747219, 37.964184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431330, 33.406792, 37.660759>,  <28.049280, 33.102592, 37.714397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431330, 33.406792, 37.660759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670219, 33.726311, 37.689716>,  <27.813553, 33.918022, 37.707092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670219, 33.726311, 37.689716>,  <27.431330, 33.406792, 37.660759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670219, 33.726311, 37.689716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490537, 0.435173, -0.754982,
		-0.634584, 0.415381, 0.651737,
		0.597224, 0.798801, 0.072394,
		27.849386, 33.965950, 37.711433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006384, 33.880634, 37.325100>,  <27.431330, 33.406792, 37.660759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006384, 33.880634, 37.325100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383596, 34.013321, 37.335361>,  <27.609924, 34.092934, 37.341518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383596, 34.013321, 37.335361>,  <27.006384, 33.880634, 37.325100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383596, 34.013321, 37.335361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103424, 0.365554, -0.925026,
		-0.316227, 0.869674, 0.379035,
		0.943029, 0.331720, 0.025653,
		27.666506, 34.112839, 37.343056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971510, 34.435211, 37.057602>,  <27.006384, 33.880634, 37.325100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971510, 34.435211, 37.057602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360777, 34.373730, 36.989113>,  <27.594337, 34.336842, 36.948017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360777, 34.373730, 36.989113>,  <26.971510, 34.435211, 37.057602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360777, 34.373730, 36.989113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113110, 0.328474, -0.937716,
		0.200371, 0.931923, 0.302276,
		0.973169, -0.153701, -0.171226,
		27.652727, 34.327618, 36.937744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266642, 35.093597, 36.823265>,  <26.971510, 34.435211, 37.057602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266642, 35.093597, 36.823265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472820, 34.779190, 36.686737>,  <27.596527, 34.590546, 36.604820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472820, 34.779190, 36.686737>,  <27.266642, 35.093597, 36.823265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472820, 34.779190, 36.686737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287238, 0.216783, -0.933006,
		0.807348, 0.578952, -0.114034,
		0.515445, -0.786015, -0.341317,
		27.627453, 34.543385, 36.584343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707235, 35.485001, 36.227161>,  <27.266642, 35.093597, 36.823265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707235, 35.485001, 36.227161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729464, 35.090038, 36.167912>,  <27.742800, 34.853062, 36.132362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729464, 35.090038, 36.167912>,  <27.707235, 35.485001, 36.227161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729464, 35.090038, 36.167912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085672, 0.143091, -0.985994,
		0.994772, 0.067483, -0.076641,
		0.055571, -0.987406, -0.148124,
		27.746136, 34.793816, 36.123474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127562, 35.424545, 35.690601>,  <27.707235, 35.485001, 36.227161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127562, 35.424545, 35.690601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972757, 35.055740, 35.695091>,  <27.879875, 34.834457, 35.697784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972757, 35.055740, 35.695091>,  <28.127562, 35.424545, 35.690601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972757, 35.055740, 35.695091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079623, 0.021287, -0.996598,
		0.918632, -0.386585, -0.081652,
		-0.387008, -0.922008, 0.011226,
		27.856655, 34.779137, 35.698460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515263, 34.958694, 35.277420>,  <28.127562, 35.424545, 35.690601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515263, 34.958694, 35.277420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145754, 34.809643, 35.312721>,  <27.924047, 34.720211, 35.333900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145754, 34.809643, 35.312721>,  <28.515263, 34.958694, 35.277420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145754, 34.809643, 35.312721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086588, -0.021236, -0.996018,
		0.373024, -0.927736, -0.012648,
		-0.923773, -0.372634, 0.088252,
		27.868622, 34.697853, 35.339195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790922, 35.726929, 35.400799>,  <28.515263, 34.958694, 35.277420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790922, 35.726929, 35.400799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927183, 35.522232, 35.085312>,  <29.008940, 35.399414, 34.896019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927183, 35.522232, 35.085312>,  <28.790922, 35.726929, 35.400799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927183, 35.522232, 35.085312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880264, -0.121103, 0.458770,
		-0.330290, -0.850558, 0.409218,
		0.340654, -0.511747, -0.788715,
		29.029379, 35.368710, 34.848698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437904, 35.339836, 35.505291>,  <28.790922, 35.726929, 35.400799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437904, 35.339836, 35.505291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740532, 35.416447, 35.255196>,  <29.922110, 35.462414, 35.105141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740532, 35.416447, 35.255196>,  <29.437904, 35.339836, 35.505291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740532, 35.416447, 35.255196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652292, -0.288324, 0.700988,
		-0.046014, -0.938183, -0.343067,
		0.756570, 0.191524, -0.625237,
		29.967503, 35.473904, 35.067623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733202, 34.778469, 35.459309>,  <29.437904, 35.339836, 35.505291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733202, 34.778469, 35.459309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.003201, 35.062756, 35.380047>,  <30.165199, 35.233326, 35.332489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.003201, 35.062756, 35.380047>,  <29.733202, 34.778469, 35.459309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003201, 35.062756, 35.380047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544658, -0.298808, 0.783621,
		0.497721, -0.636867, -0.588790,
		0.674997, 0.710714, -0.198152,
		30.205700, 35.275970, 35.320602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441517, 34.428391, 35.368889>,  <29.733202, 34.778469, 35.459309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441517, 34.428391, 35.368889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504791, 34.817177, 35.438465>,  <30.542757, 35.050449, 35.480209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504791, 34.817177, 35.438465>,  <30.441517, 34.428391, 35.368889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504791, 34.817177, 35.438465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700203, -0.234627, 0.674289,
		0.696199, 0.015130, -0.717690,
		0.158187, 0.971968, 0.173941,
		30.552248, 35.108768, 35.490646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170818, 34.551437, 35.322041>,  <30.441517, 34.428391, 35.368889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170818, 34.551437, 35.322041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.044771, 34.853756, 35.551636>,  <30.969143, 35.035149, 35.689392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.044771, 34.853756, 35.551636>,  <31.170818, 34.551437, 35.322041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044771, 34.853756, 35.551636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761994, -0.159045, 0.627750,
		0.565744, 0.635193, -0.525798,
		-0.315117, 0.755801, 0.573992,
		30.950235, 35.080498, 35.723835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686430, 35.164719, 35.328823>,  <31.170818, 34.551437, 35.322041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686430, 35.164719, 35.328823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.469067, 35.152096, 35.664375>,  <31.338650, 35.144520, 35.865707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.469067, 35.152096, 35.664375>,  <31.686430, 35.164719, 35.328823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469067, 35.152096, 35.664375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822026, -0.222661, 0.524114,
		0.170244, 0.974385, 0.146939,
		-0.543406, -0.031560, 0.838876,
		31.306046, 35.142628, 35.916039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158623, 35.357899, 35.752190>,  <31.686430, 35.164719, 35.328823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158623, 35.357899, 35.752190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.877918, 35.257408, 36.018848>,  <31.709496, 35.197113, 36.178844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.877918, 35.257408, 36.018848>,  <32.158623, 35.357899, 35.752190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877918, 35.257408, 36.018848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698642, -0.425769, 0.574995,
		0.139386, 0.869257, 0.474304,
		-0.701763, -0.251222, 0.666646,
		31.667389, 35.182041, 36.218842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298946, 35.639454, 36.487244>,  <32.158623, 35.357899, 35.752190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298946, 35.639454, 36.487244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073280, 35.309502, 36.501633>,  <31.937881, 35.111530, 36.510265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073280, 35.309502, 36.501633>,  <32.298946, 35.639454, 36.487244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073280, 35.309502, 36.501633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715503, -0.466687, 0.519864,
		-0.412035, 0.319030, 0.853491,
		-0.564166, -0.824878, 0.035976,
		31.904030, 35.062038, 36.512424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460773, 35.446609, 37.155617>,  <32.298946, 35.639454, 36.487244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460773, 35.446609, 37.155617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.301090, 35.119240, 36.990299>,  <32.205280, 34.922817, 36.891109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.301090, 35.119240, 36.990299>,  <32.460773, 35.446609, 37.155617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301090, 35.119240, 36.990299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491645, -0.571566, 0.656961,
		-0.773900, 0.059068, 0.630548,
		-0.399205, -0.818427, -0.413294,
		32.181328, 34.873711, 36.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002216, 35.051361, 37.655003>,  <32.460773, 35.446609, 37.155617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002216, 35.051361, 37.655003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.102425, 34.777580, 37.381138>,  <32.162552, 34.613312, 37.216820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.102425, 34.777580, 37.381138>,  <32.002216, 35.051361, 37.655003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102425, 34.777580, 37.381138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213053, -0.650894, 0.728660,
		-0.944376, -0.328416, -0.017239,
		0.250525, -0.684456, -0.684659,
		32.177582, 34.572243, 37.175739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629196, 34.469181, 37.841370>,  <32.002216, 35.051361, 37.655003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629196, 34.469181, 37.841370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.909414, 34.318127, 37.599171>,  <32.077545, 34.227493, 37.453854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.909414, 34.318127, 37.599171>,  <31.629196, 34.469181, 37.841370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909414, 34.318127, 37.599171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095491, -0.791258, 0.603981,
		-0.707188, -0.480936, -0.518253,
		0.700547, -0.377640, -0.605493,
		32.119579, 34.204834, 37.417522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533699, 33.623669, 37.746311>,  <31.629196, 34.469181, 37.841370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533699, 33.623669, 37.746311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920492, 33.677208, 37.659569>,  <32.152569, 33.709332, 37.607525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920492, 33.677208, 37.659569>,  <31.533699, 33.623669, 37.746311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920492, 33.677208, 37.659569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239175, -0.770390, 0.591012,
		-0.087955, -0.623365, -0.776968,
		0.966985, 0.133849, -0.216853,
		32.210587, 33.717361, 37.594513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820185, 32.925827, 37.657139>,  <31.533699, 33.623669, 37.746311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820185, 32.925827, 37.657139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.121037, 33.176201, 37.739609>,  <32.301548, 33.326424, 37.789093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.121037, 33.176201, 37.739609>,  <31.820185, 32.925827, 37.657139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121037, 33.176201, 37.739609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194695, -0.509944, 0.837885,
		0.629597, -0.590057, -0.505410,
		0.752131, 0.625931, 0.206178,
		32.346676, 33.363979, 37.801460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504368, 32.524189, 37.744545>,  <31.820185, 32.925827, 37.657139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504368, 32.524189, 37.744545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.588951, 32.869877, 37.927151>,  <32.639702, 33.077290, 38.036713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.588951, 32.869877, 37.927151>,  <32.504368, 32.524189, 37.744545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588951, 32.869877, 37.927151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366769, -0.503105, 0.782538,
		0.905961, 0.001957, -0.423357,
		0.211461, 0.864223, 0.456511,
		32.652390, 33.129143, 38.064106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099689, 32.427849, 38.064564>,  <32.504368, 32.524189, 37.744545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099689, 32.427849, 38.064564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.959831, 32.744286, 38.265335>,  <32.875916, 32.934147, 38.385796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.959831, 32.744286, 38.265335>,  <33.099689, 32.427849, 38.064564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959831, 32.744286, 38.265335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457029, -0.323653, 0.828476,
		0.817848, 0.519065, -0.248388,
		-0.349641, 0.791088, 0.501927,
		32.854939, 32.981613, 38.415913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655838, 32.725029, 38.287308>,  <33.099689, 32.427849, 38.064564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655838, 32.725029, 38.287308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342262, 32.818913, 38.517208>,  <33.154118, 32.875244, 38.655148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342262, 32.818913, 38.517208>,  <33.655838, 32.725029, 38.287308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342262, 32.818913, 38.517208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504320, -0.299157, 0.810041,
		0.362068, 0.924887, 0.116152,
		-0.783944, 0.234712, 0.574754,
		33.107079, 32.889328, 38.689632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939350, 32.870003, 38.873371>,  <33.655838, 32.725029, 38.287308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939350, 32.870003, 38.873371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.566078, 32.822788, 39.009163>,  <33.342117, 32.794460, 39.090637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.566078, 32.822788, 39.009163>,  <33.939350, 32.870003, 38.873371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566078, 32.822788, 39.009163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359412, -0.310512, 0.880003,
		0.001541, 0.943212, 0.332187,
		-0.933178, -0.118035, 0.339481,
		33.286125, 32.787376, 39.111008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019016, 33.054672, 39.499821>,  <33.939350, 32.870003, 38.873371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019016, 33.054672, 39.499821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.667503, 32.864418, 39.515358>,  <33.456596, 32.750267, 39.524681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.667503, 32.864418, 39.515358>,  <34.019016, 33.054672, 39.499821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667503, 32.864418, 39.515358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280879, -0.449713, 0.847860,
		-0.385799, 0.755998, 0.528796,
		-0.878787, -0.475631, 0.038845,
		33.403866, 32.721729, 39.527012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777691, 33.012871, 40.222149>,  <34.019016, 33.054672, 39.499821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777691, 33.012871, 40.222149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.543640, 32.730621, 40.062286>,  <33.403210, 32.561272, 39.966370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.543640, 32.730621, 40.062286>,  <33.777691, 33.012871, 40.222149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543640, 32.730621, 40.062286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013202, -0.501053, 0.865316,
		-0.810832, 0.501047, 0.302497,
		-0.585131, -0.705619, -0.399655,
		33.368099, 32.518936, 39.942390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263363, 32.852905, 40.696224>,  <33.777691, 33.012871, 40.222149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263363, 32.852905, 40.696224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.285465, 32.536667, 40.452286>,  <33.298725, 32.346924, 40.305923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.285465, 32.536667, 40.452286>,  <33.263363, 32.852905, 40.696224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285465, 32.536667, 40.452286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052449, -0.612233, 0.788936,
		-0.997094, -0.011607, -0.075294,
		0.055254, -0.790592, -0.609845,
		33.302040, 32.299488, 40.269333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637634, 32.405205, 40.888306>,  <33.263363, 32.852905, 40.696224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637634, 32.405205, 40.888306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.901356, 32.183655, 40.684914>,  <33.059589, 32.050724, 40.562878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.901356, 32.183655, 40.684914>,  <32.637634, 32.405205, 40.888306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901356, 32.183655, 40.684914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034693, -0.653145, 0.756438,
		-0.751080, -0.516359, -0.411403,
		0.659299, -0.553872, -0.508478,
		33.099144, 32.017494, 40.532372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325272, 31.769415, 40.796696>,  <32.637634, 32.405205, 40.888306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325272, 31.769415, 40.796696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.722984, 31.730137, 40.779930>,  <32.961613, 31.706570, 40.769871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.722984, 31.730137, 40.779930>,  <32.325272, 31.769415, 40.796696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722984, 31.730137, 40.779930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016335, -0.527874, 0.849166,
		-0.105508, -0.843627, -0.526460,
		0.994284, -0.098194, -0.041915,
		33.021271, 31.700678, 40.767357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422012, 31.118088, 41.068836>,  <32.325272, 31.769415, 40.796696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422012, 31.118088, 41.068836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.783035, 31.287697, 41.098774>,  <32.999649, 31.389462, 41.116737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.783035, 31.287697, 41.098774>,  <32.422012, 31.118088, 41.068836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783035, 31.287697, 41.098774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188389, -0.545178, 0.816878,
		0.387176, -0.723178, -0.571934,
		0.902554, 0.424021, 0.074841,
		33.053802, 31.414904, 41.121227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870094, 30.580145, 40.970016>,  <32.422012, 31.118088, 41.068836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870094, 30.580145, 40.970016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.047741, 30.860334, 41.193478>,  <33.154331, 31.028448, 41.327557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.047741, 30.860334, 41.193478>,  <32.870094, 30.580145, 40.970016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047741, 30.860334, 41.193478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100512, -0.658538, 0.745805,
		0.890311, -0.275076, -0.362876,
		0.444121, 0.700472, 0.558655,
		33.180977, 31.070477, 41.361073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.095348, 37.365463, 47.750729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773106, 37.174213, 47.610790>,  <40.579758, 37.059464, 47.526829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773106, 37.174213, 47.610790>,  <41.095348, 37.365463, 47.750729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773106, 37.174213, 47.610790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395725, -0.005189, 0.918355,
		-0.440903, 0.878277, -0.185025,
		-0.805609, -0.478124, -0.349844,
		40.531422, 37.030777, 47.505836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495770, 37.624847, 48.243176>,  <41.095348, 37.365463, 47.750729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495770, 37.624847, 48.243176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351509, 37.308582, 48.045273>,  <40.264954, 37.118824, 47.926533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351509, 37.308582, 48.045273>,  <40.495770, 37.624847, 48.243176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351509, 37.308582, 48.045273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579509, -0.225682, 0.783095,
		-0.730823, 0.569135, -0.376806,
		-0.360648, -0.790666, -0.494752,
		40.243313, 37.071381, 47.896847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725231, 37.642666, 48.443218>,  <40.495770, 37.624847, 48.243176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725231, 37.642666, 48.443218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808907, 37.272636, 48.316422>,  <39.859112, 37.050621, 48.240345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808907, 37.272636, 48.316422>,  <39.725231, 37.642666, 48.443218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808907, 37.272636, 48.316422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490467, -0.379698, 0.784392,
		-0.845979, -0.008616, -0.533147,
		0.209193, -0.925071, -0.316991,
		39.871666, 36.995117, 48.221325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101395, 37.288746, 48.320950>,  <39.725231, 37.642666, 48.443218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101395, 37.288746, 48.320950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373585, 37.002480, 48.383915>,  <39.536900, 36.830719, 48.421692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373585, 37.002480, 48.383915>,  <39.101395, 37.288746, 48.320950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373585, 37.002480, 48.383915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574354, -0.387516, 0.721075,
		-0.455048, -0.581084, -0.674739,
		0.680477, -0.715663, 0.157409,
		39.577728, 36.787781, 48.431137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764427, 36.688000, 48.412155>,  <39.101395, 37.288746, 48.320950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764427, 36.688000, 48.412155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.118889, 36.591358, 48.570320>,  <39.331566, 36.533375, 48.665218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.118889, 36.591358, 48.570320>,  <38.764427, 36.688000, 48.412155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118889, 36.591358, 48.570320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463247, -0.482492, 0.743373,
		0.011184, -0.841921, -0.539485,
		0.886159, -0.241601, 0.395413,
		39.384735, 36.518879, 48.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586815, 35.975159, 48.668625>,  <38.764427, 36.688000, 48.412155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586815, 35.975159, 48.668625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.914978, 36.102531, 48.858585>,  <39.111877, 36.178955, 48.972561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.914978, 36.102531, 48.858585>,  <38.586815, 35.975159, 48.668625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914978, 36.102531, 48.858585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370432, -0.336694, 0.865689,
		0.435556, -0.886138, -0.158272,
		0.820410, 0.318427, 0.474903,
		39.161102, 36.198059, 49.001057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950321, 35.381111, 49.018311>,  <38.586815, 35.975159, 48.668625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950321, 35.381111, 49.018311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.050285, 35.716152, 49.212620>,  <39.110264, 35.917175, 49.329205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.050285, 35.716152, 49.212620>,  <38.950321, 35.381111, 49.018311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050285, 35.716152, 49.212620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144874, -0.463695, 0.874070,
		0.957370, -0.288811, 0.005466,
		0.249906, 0.837601, 0.485769,
		39.125256, 35.967434, 49.358349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967052, 35.167725, 49.654003>,  <38.950321, 35.381111, 49.018311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967052, 35.167725, 49.654003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022202, 35.556515, 49.730167>,  <39.055290, 35.789787, 49.775864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022202, 35.556515, 49.730167>,  <38.967052, 35.167725, 49.654003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022202, 35.556515, 49.730167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345664, -0.132937, 0.928894,
		0.928175, -0.193885, 0.317649,
		0.137871, 0.971976, 0.190408,
		39.063564, 35.848106, 49.787289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273518, 35.164680, 50.287254>,  <38.967052, 35.167725, 49.654003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273518, 35.164680, 50.287254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078362, 35.507843, 50.222805>,  <38.961266, 35.713741, 50.184135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078362, 35.507843, 50.222805>,  <39.273518, 35.164680, 50.287254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078362, 35.507843, 50.222805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364784, -0.032695, 0.930518,
		0.793028, 0.512768, 0.328902,
		-0.487893, 0.857904, -0.161122,
		38.931995, 35.765213, 50.174469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296337, 35.589157, 50.922676>,  <39.273518, 35.164680, 50.287254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296337, 35.589157, 50.922676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979870, 35.741783, 50.731487>,  <38.789989, 35.833359, 50.616772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979870, 35.741783, 50.731487>,  <39.296337, 35.589157, 50.922676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979870, 35.741783, 50.731487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526644, -0.027677, 0.849635,
		0.310964, 0.923927, 0.222847,
		-0.791168, 0.381567, -0.477974,
		38.742519, 35.856255, 50.588097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933842, 35.906746, 51.419121>,  <39.296337, 35.589157, 50.922676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933842, 35.906746, 51.419121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.636841, 35.884785, 51.152088>,  <38.458641, 35.871609, 50.991867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.636841, 35.884785, 51.152088>,  <38.933842, 35.906746, 51.419121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636841, 35.884785, 51.152088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657270, 0.251886, 0.710317,
		0.129155, 0.966198, -0.223114,
		-0.742506, -0.054905, -0.667585,
		38.414089, 35.868313, 50.951813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492355, 36.468800, 51.598763>,  <38.933842, 35.906746, 51.419121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492355, 36.468800, 51.598763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274696, 36.231060, 51.361897>,  <38.144100, 36.088417, 51.219776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274696, 36.231060, 51.361897>,  <38.492355, 36.468800, 51.598763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274696, 36.231060, 51.361897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807356, 0.178953, 0.562274,
		-0.228214, 0.784048, -0.577224,
		-0.544145, -0.594344, -0.592166,
		38.111454, 36.052757, 51.184246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922707, 36.904507, 51.421616>,  <38.492355, 36.468800, 51.598763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922707, 36.904507, 51.421616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746857, 36.546478, 51.391758>,  <37.641346, 36.331661, 51.373844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746857, 36.546478, 51.391758>,  <37.922707, 36.904507, 51.421616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746857, 36.546478, 51.391758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729334, 0.307244, 0.611289,
		-0.524215, 0.323178, -0.787880,
		-0.439627, -0.895074, -0.074643,
		37.614967, 36.277958, 51.369366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068596, 36.934406, 51.186985>,  <37.922707, 36.904507, 51.421616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068596, 36.934406, 51.186985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200020, 36.671028, 51.457832>,  <37.278873, 36.513000, 51.620342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200020, 36.671028, 51.457832>,  <37.068596, 36.934406, 51.186985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200020, 36.671028, 51.457832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704424, 0.306730, 0.640081,
		-0.629153, -0.687287, -0.363046,
		0.328563, -0.658447, 0.677122,
		37.298588, 36.473495, 51.660969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277466, 37.091503, 51.066311>,  <37.068596, 36.934406, 51.186985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277466, 37.091503, 51.066311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998737, 37.373741, 51.014820>,  <35.831501, 37.543083, 50.983925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998737, 37.373741, 51.014820>,  <36.277466, 37.091503, 51.066311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998737, 37.373741, 51.014820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106424, -0.075767, -0.991430,
		-0.709305, -0.704549, -0.022297,
		-0.696822, 0.705599, -0.128723,
		35.789692, 37.585423, 50.976204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725040, 36.782688, 50.688915>,  <36.277466, 37.091503, 51.066311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725040, 36.782688, 50.688915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728973, 37.180630, 50.648563>,  <35.731335, 37.419395, 50.624352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728973, 37.180630, 50.648563>,  <35.725040, 36.782688, 50.688915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728973, 37.180630, 50.648563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172729, -0.101054, -0.979772,
		-0.984920, -0.007789, -0.172833,
		0.009834, 0.994851, -0.100875,
		35.731922, 37.479084, 50.618301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446739, 36.800949, 49.997204>,  <35.725040, 36.782688, 50.688915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446739, 36.800949, 49.997204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606407, 37.152298, 50.102375>,  <35.702206, 37.363106, 50.165478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606407, 37.152298, 50.102375>,  <35.446739, 36.800949, 49.997204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606407, 37.152298, 50.102375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284745, 0.153827, -0.946181,
		-0.871542, 0.452553, -0.188709,
		0.399168, 0.878370, 0.262929,
		35.726158, 37.415810, 50.181255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291508, 37.269737, 49.497055>,  <35.446739, 36.800949, 49.997204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291508, 37.269737, 49.497055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605358, 37.460045, 49.656055>,  <35.793667, 37.574230, 49.751457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605358, 37.460045, 49.656055>,  <35.291508, 37.269737, 49.497055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605358, 37.460045, 49.656055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256400, 0.334738, -0.906758,
		-0.564464, 0.813386, 0.140658,
		0.784627, 0.475767, 0.397500,
		35.840748, 37.602776, 49.775307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305916, 37.915276, 49.169788>,  <35.291508, 37.269737, 49.497055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305916, 37.915276, 49.169788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673122, 37.841957, 49.310436>,  <35.893448, 37.797966, 49.394825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673122, 37.841957, 49.310436>,  <35.305916, 37.915276, 49.169788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673122, 37.841957, 49.310436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386623, 0.216758, -0.896403,
		0.088093, 0.958863, 0.269856,
		0.918021, -0.183299, 0.351623,
		35.948528, 37.786968, 49.415924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694530, 38.486183, 48.916916>,  <35.305916, 37.915276, 49.169788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694530, 38.486183, 48.916916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975849, 38.212906, 48.995525>,  <36.144642, 38.048939, 49.042690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975849, 38.212906, 48.995525>,  <35.694530, 38.486183, 48.916916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975849, 38.212906, 48.995525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482056, 0.255142, -0.838168,
		0.522490, 0.684214, 0.508778,
		0.703297, -0.683194, 0.196520,
		36.186840, 38.007946, 49.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307838, 38.771343, 48.863411>,  <35.694530, 38.486183, 48.916916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307838, 38.771343, 48.863411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386883, 38.382595, 48.812153>,  <36.434311, 38.149345, 48.781399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386883, 38.382595, 48.812153>,  <36.307838, 38.771343, 48.863411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386883, 38.382595, 48.812153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435164, 0.204110, -0.876910,
		0.878397, 0.117524, 0.463257,
		0.197613, -0.971868, -0.128147,
		36.446167, 38.091034, 48.773708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764336, 38.794323, 48.380589>,  <36.307838, 38.771343, 48.863411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764336, 38.794323, 48.380589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704689, 38.399021, 48.393982>,  <36.668900, 38.161842, 48.402020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704689, 38.399021, 48.393982>,  <36.764336, 38.794323, 48.380589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704689, 38.399021, 48.393982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438754, -0.096475, -0.893413,
		0.886148, -0.118534, 0.447986,
		-0.149119, -0.988252, 0.033484,
		36.659954, 38.102547, 48.404026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468048, 38.436935, 48.281300>,  <36.764336, 38.794323, 48.380589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468048, 38.436935, 48.281300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182617, 38.183376, 48.161980>,  <37.011360, 38.031242, 48.090385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182617, 38.183376, 48.161980>,  <37.468048, 38.436935, 48.281300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182617, 38.183376, 48.161980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341297, 0.057309, -0.938207,
		0.611821, -0.771292, 0.175453,
		-0.713576, -0.633896, -0.298302,
		36.968544, 37.993206, 48.072491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751816, 37.831059, 47.856449>,  <37.468048, 38.436935, 48.281300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751816, 37.831059, 47.856449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371067, 37.892399, 47.750301>,  <37.142616, 37.929203, 47.686611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371067, 37.892399, 47.750301>,  <37.751816, 37.831059, 47.856449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371067, 37.892399, 47.750301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284571, 0.120615, -0.951037,
		-0.113836, -0.980783, -0.158450,
		-0.951872, 0.153352, -0.265372,
		37.085506, 37.938404, 47.670689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767387, 37.618320, 47.224133>,  <37.751816, 37.831059, 47.856449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767387, 37.618320, 47.224133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408295, 37.794178, 47.212944>,  <37.192837, 37.899693, 47.206230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408295, 37.794178, 47.212944>,  <37.767387, 37.618320, 47.224133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408295, 37.794178, 47.212944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081093, 0.102505, -0.991421,
		-0.433009, -0.892302, -0.127675,
		-0.897735, 0.439648, -0.027974,
		37.138973, 37.926071, 47.204552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269867, 37.263168, 46.784439>,  <37.767387, 37.618320, 47.224133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269867, 37.263168, 46.784439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152527, 37.645069, 46.804054>,  <37.082123, 37.874210, 46.815823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152527, 37.645069, 46.804054>,  <37.269867, 37.263168, 46.784439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152527, 37.645069, 46.804054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029995, 0.042076, -0.998664,
		-0.955535, -0.294426, 0.016295,
		-0.293347, 0.954747, 0.049036,
		37.064522, 37.931492, 46.818764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827366, 37.341328, 46.197678>,  <37.269867, 37.263168, 46.784439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827366, 37.341328, 46.197678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944332, 37.710663, 46.297237>,  <37.014511, 37.932262, 46.356972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944332, 37.710663, 46.297237>,  <36.827366, 37.341328, 46.197678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944332, 37.710663, 46.297237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063609, 0.278477, -0.958334,
		-0.954174, 0.264398, 0.140163,
		0.292414, 0.923333, 0.248897,
		37.032055, 37.987663, 46.371906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327621, 37.840305, 45.929691>,  <36.827366, 37.341328, 46.197678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327621, 37.840305, 45.929691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690804, 38.000648, 45.978577>,  <36.908710, 38.096855, 46.007908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690804, 38.000648, 45.978577>,  <36.327621, 37.840305, 45.929691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690804, 38.000648, 45.978577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024589, 0.240159, -0.970422,
		-0.418351, 0.884102, 0.208197,
		0.907952, 0.400858, 0.122210,
		36.963188, 38.120907, 46.015240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823277, 38.497688, 45.910633>,  <36.327621, 37.840305, 45.929691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823277, 38.497688, 45.910633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478783, 38.427608, 45.719814>,  <35.272087, 38.385559, 45.605324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478783, 38.427608, 45.719814>,  <35.823277, 38.497688, 45.910633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478783, 38.427608, 45.719814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425575, -0.264422, 0.865428,
		-0.277764, 0.948359, 0.153170,
		-0.861239, -0.175200, -0.477046,
		35.220409, 38.375050, 45.576702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273872, 38.810974, 46.299458>,  <35.823277, 38.497688, 45.910633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273872, 38.810974, 46.299458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059444, 38.536865, 46.102268>,  <34.930786, 38.372398, 45.983955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059444, 38.536865, 46.102268>,  <35.273872, 38.810974, 46.299458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059444, 38.536865, 46.102268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517255, -0.194869, 0.833351,
		-0.667141, 0.701729, -0.249999,
		-0.536069, -0.685275, -0.492978,
		34.898624, 38.331284, 45.954376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498283, 39.039227, 46.294300>,  <35.273872, 38.810974, 46.299458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498283, 39.039227, 46.294300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529682, 38.645596, 46.230522>,  <34.548519, 38.409416, 46.192253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529682, 38.645596, 46.230522>,  <34.498283, 39.039227, 46.294300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529682, 38.645596, 46.230522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448858, -0.177698, 0.875757,
		-0.890149, 0.002828, -0.455660,
		0.078493, -0.984081, -0.159447,
		34.553230, 38.350372, 46.182690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836678, 38.723820, 46.424221>,  <34.498283, 39.039227, 46.294300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836678, 38.723820, 46.424221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067558, 38.399204, 46.460537>,  <34.206085, 38.204433, 46.482327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067558, 38.399204, 46.460537>,  <33.836678, 38.723820, 46.424221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067558, 38.399204, 46.460537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477996, -0.245620, 0.843321,
		-0.662090, -0.530161, -0.529685,
		0.577198, -0.811542, 0.090792,
		34.240719, 38.155743, 46.487774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378746, 38.021725, 46.417763>,  <33.836678, 38.723820, 46.424221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378746, 38.021725, 46.417763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726242, 37.959492, 46.605843>,  <33.934738, 37.922150, 46.718689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726242, 37.959492, 46.605843>,  <33.378746, 38.021725, 46.417763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726242, 37.959492, 46.605843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488498, -0.425646, 0.761706,
		0.081628, -0.891414, -0.445778,
		0.868739, -0.155586, 0.470198,
		33.986862, 37.912815, 46.746902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274338, 37.348881, 46.732906>,  <33.378746, 38.021725, 46.417763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274338, 37.348881, 46.732906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581066, 37.515469, 46.928265>,  <33.765102, 37.615421, 47.045479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581066, 37.515469, 46.928265>,  <33.274338, 37.348881, 46.732906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581066, 37.515469, 46.928265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314653, -0.419299, 0.851576,
		0.559445, -0.806683, -0.190483,
		0.766821, 0.416474, 0.488400,
		33.811111, 37.640411, 47.074783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553612, 36.800636, 47.222767>,  <33.274338, 37.348881, 46.732906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553612, 36.800636, 47.222767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669113, 37.148987, 47.381863>,  <33.738415, 37.357998, 47.477322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669113, 37.148987, 47.381863>,  <33.553612, 36.800636, 47.222767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669113, 37.148987, 47.381863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180894, -0.358329, 0.915903,
		0.940159, -0.336418, 0.054068,
		0.288752, 0.870875, 0.397742,
		33.755737, 37.410248, 47.501186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652454, 36.076859, 47.394184>,  <33.553612, 36.800636, 47.222767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652454, 36.076859, 47.394184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493870, 35.716026, 47.462383>,  <33.398720, 35.499527, 47.503304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493870, 35.716026, 47.462383>,  <33.652454, 36.076859, 47.394184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493870, 35.716026, 47.462383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248039, -0.073553, -0.965954,
		0.883907, -0.425256, -0.194590,
		-0.396465, -0.902080, 0.170494,
		33.374931, 35.445404, 47.513531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039112, 35.451546, 47.101547>,  <33.652454, 36.076859, 47.394184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039112, 35.451546, 47.101547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645336, 35.382774, 47.116093>,  <33.409069, 35.341511, 47.124821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645336, 35.382774, 47.116093>,  <34.039112, 35.451546, 47.101547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645336, 35.382774, 47.116093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037819, 0.005212, -0.999271,
		0.171612, -0.985096, -0.011633,
		-0.984438, -0.171926, 0.036361,
		33.350006, 35.331196, 47.127003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913284, 35.078297, 46.524422>,  <34.039112, 35.451546, 47.101547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913284, 35.078297, 46.524422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544479, 35.194344, 46.626965>,  <33.323196, 35.263969, 46.688492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544479, 35.194344, 46.626965>,  <33.913284, 35.078297, 46.524422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544479, 35.194344, 46.626965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230923, 0.119368, -0.965622,
		-0.310742, -0.949518, -0.043065,
		-0.922016, 0.290114, 0.256358,
		33.267876, 35.281380, 46.703873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408875, 34.606407, 46.183838>,  <33.913284, 35.078297, 46.524422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408875, 34.606407, 46.183838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255966, 34.970646, 46.246681>,  <33.164223, 35.189190, 46.284389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255966, 34.970646, 46.246681>,  <33.408875, 34.606407, 46.183838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255966, 34.970646, 46.246681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207942, 0.080894, -0.974790,
		-0.900351, -0.405301, 0.158429,
		-0.382267, 0.910597, 0.157112,
		33.141285, 35.243824, 46.293816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870865, 34.686031, 45.608475>,  <33.408875, 34.606407, 46.183838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870865, 34.686031, 45.608475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958866, 35.048145, 45.753830>,  <33.011669, 35.265415, 45.841042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958866, 35.048145, 45.753830>,  <32.870865, 34.686031, 45.608475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958866, 35.048145, 45.753830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051474, 0.382771, -0.922408,
		-0.974139, 0.184232, 0.130812,
		0.220008, 0.905287, 0.363389,
		33.024868, 35.319733, 45.862846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331806, 35.193687, 45.424091>,  <32.870865, 34.686031, 45.608475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331806, 35.193687, 45.424091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659187, 35.414986, 45.486122>,  <32.855618, 35.547764, 45.523342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659187, 35.414986, 45.486122>,  <32.331806, 35.193687, 45.424091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659187, 35.414986, 45.486122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210358, 0.539695, -0.815156,
		-0.534677, 0.634547, 0.558096,
		0.818456, 0.553245, 0.155080,
		32.904724, 35.580959, 45.532646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208305, 35.909172, 45.142521>,  <32.331806, 35.193687, 45.424091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208305, 35.909172, 45.142521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607327, 35.898216, 45.168255>,  <32.846741, 35.891644, 45.183697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607327, 35.898216, 45.168255>,  <32.208305, 35.909172, 45.142521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607327, 35.898216, 45.168255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069871, 0.426085, -0.901981,
		-0.002705, 0.904268, 0.426956,
		0.997552, -0.027392, 0.064335,
		32.906593, 35.889999, 45.187553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.695312, 33.238087, 50.370502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.655087, 33.633656, 50.414177>,  <36.630951, 33.870998, 50.440380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.655087, 33.633656, 50.414177>,  <36.695312, 33.238087, 50.370502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655087, 33.633656, 50.414177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666855, 0.148441, -0.730253,
		-0.738370, -0.000625, -0.674395,
		-0.100565, 0.988921, 0.109187,
		36.624916, 33.930332, 50.446934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432201, 33.565937, 49.714634>,  <36.695312, 33.238087, 50.370502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432201, 33.565937, 49.714634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.657471, 33.810936, 49.936512>,  <36.792633, 33.957935, 50.069637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.657471, 33.810936, 49.936512>,  <36.432201, 33.565937, 49.714634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657471, 33.810936, 49.936512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524928, 0.253258, -0.812595,
		-0.638193, 0.748805, -0.178889,
		0.563170, 0.612496, 0.554696,
		36.826424, 33.994686, 50.102921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352406, 34.249786, 49.504276>,  <36.432201, 33.565937, 49.714634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352406, 34.249786, 49.504276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712505, 34.188675, 49.667355>,  <36.928566, 34.152008, 49.765202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712505, 34.188675, 49.667355>,  <36.352406, 34.249786, 49.504276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712505, 34.188675, 49.667355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434018, 0.240963, -0.868081,
		0.034384, 0.958434, 0.283234,
		0.900248, -0.152777, 0.407692,
		36.982578, 34.142841, 49.789661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833519, 34.715046, 49.113594>,  <36.352406, 34.249786, 49.504276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833519, 34.715046, 49.113594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095688, 34.469357, 49.289391>,  <37.252987, 34.321941, 49.394867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095688, 34.469357, 49.289391>,  <36.833519, 34.715046, 49.113594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095688, 34.469357, 49.289391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534145, -0.034429, -0.844692,
		0.533963, 0.788378, 0.305521,
		0.655418, -0.614227, 0.439492,
		37.292313, 34.285088, 49.421238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492783, 35.072502, 49.146606>,  <36.833519, 34.715046, 49.113594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492783, 35.072502, 49.146606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.525501, 34.674057, 49.159676>,  <37.545132, 34.434990, 49.167519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.525501, 34.674057, 49.159676>,  <37.492783, 35.072502, 49.146606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525501, 34.674057, 49.159676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738782, 0.038594, -0.672839,
		0.668963, 0.079175, 0.739067,
		0.081796, -0.996113, 0.032675,
		37.550041, 34.375221, 49.169479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280201, 34.916122, 49.046436>,  <37.492783, 35.072502, 49.146606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280201, 34.916122, 49.046436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.079617, 34.588032, 48.936337>,  <37.959267, 34.391178, 48.870277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.079617, 34.588032, 48.936337>,  <38.280201, 34.916122, 49.046436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079617, 34.588032, 48.936337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657489, -0.154494, -0.737455,
		0.562354, -0.550784, 0.616762,
		-0.501464, -0.820225, -0.275254,
		37.929176, 34.341965, 48.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845009, 34.346050, 48.906612>,  <38.280201, 34.916122, 49.046436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845009, 34.346050, 48.906612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502674, 34.249592, 48.723572>,  <38.297272, 34.191719, 48.613747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502674, 34.249592, 48.723572>,  <38.845009, 34.346050, 48.906612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502674, 34.249592, 48.723572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514366, -0.303527, -0.802059,
		0.054516, -0.921804, 0.383804,
		-0.855836, -0.241141, -0.457598,
		38.245922, 34.177250, 48.586292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006184, 34.026825, 48.388218>,  <38.845009, 34.346050, 48.906612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006184, 34.026825, 48.388218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.633156, 34.020676, 48.243950>,  <38.409340, 34.016987, 48.157391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.633156, 34.020676, 48.243950>,  <39.006184, 34.026825, 48.388218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633156, 34.020676, 48.243950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330824, -0.436268, -0.836795,
		-0.144482, -0.899685, 0.411936,
		-0.932567, -0.015376, -0.360671,
		38.353386, 34.016064, 48.135750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885170, 33.355747, 48.057255>,  <39.006184, 34.026825, 48.388218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885170, 33.355747, 48.057255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.613441, 33.607746, 47.906719>,  <38.450405, 33.758945, 47.816399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.613441, 33.607746, 47.906719>,  <38.885170, 33.355747, 48.057255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613441, 33.607746, 47.906719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305754, -0.223212, -0.925576,
		-0.667112, -0.743828, -0.040992,
		-0.679320, 0.629997, -0.376336,
		38.409645, 33.796745, 47.793819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478249, 33.016434, 47.541862>,  <38.885170, 33.355747, 48.057255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478249, 33.016434, 47.541862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.466740, 33.410545, 47.474449>,  <38.459835, 33.647011, 47.434002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.466740, 33.410545, 47.474449>,  <38.478249, 33.016434, 47.541862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466740, 33.410545, 47.474449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188169, -0.160246, -0.968976,
		-0.981715, -0.059594, -0.180787,
		-0.028775, 0.985277, -0.168530,
		38.458107, 33.706127, 47.423889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123142, 33.036583, 46.968243>,  <38.478249, 33.016434, 47.541862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123142, 33.036583, 46.968243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.315964, 33.386986, 46.974510>,  <38.431656, 33.597225, 46.978271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.315964, 33.386986, 46.974510>,  <38.123142, 33.036583, 46.968243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315964, 33.386986, 46.974510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168755, -0.075285, -0.982779,
		-0.859738, 0.476393, -0.184121,
		0.482051, 0.876003, 0.015669,
		38.460579, 33.649788, 46.979210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930763, 33.368401, 46.356865>,  <38.123142, 33.036583, 46.968243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930763, 33.368401, 46.356865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.241344, 33.600880, 46.454304>,  <38.427692, 33.740368, 46.512768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.241344, 33.600880, 46.454304>,  <37.930763, 33.368401, 46.356865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241344, 33.600880, 46.454304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294193, 0.007546, -0.955716,
		-0.557296, 0.813729, -0.165124,
		0.776448, 0.581195, 0.243598,
		38.474277, 33.775238, 46.527382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314068, 33.824604, 46.274422>,  <37.930763, 33.368401, 46.356865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314068, 33.824604, 46.274422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.980320, 33.640030, 46.153820>,  <36.780071, 33.529285, 46.081459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.980320, 33.640030, 46.153820>,  <37.314068, 33.824604, 46.274422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980320, 33.640030, 46.153820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230994, -0.203933, 0.951343,
		-0.500467, 0.863419, 0.063568,
		-0.834371, -0.461431, -0.301506,
		36.730007, 33.501602, 46.063370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840450, 33.938175, 46.756134>,  <37.314068, 33.824604, 46.274422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840450, 33.938175, 46.756134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.650887, 33.632751, 46.580685>,  <36.537148, 33.449497, 46.475414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.650887, 33.632751, 46.580685>,  <36.840450, 33.938175, 46.756134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650887, 33.632751, 46.580685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436401, -0.228984, 0.870127,
		-0.764830, 0.603775, -0.224701,
		-0.473908, -0.763559, -0.438622,
		36.508713, 33.403683, 46.449097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210625, 33.921173, 47.184673>,  <36.840450, 33.938175, 46.756134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210625, 33.921173, 47.184673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.155338, 33.579281, 46.984543>,  <36.122166, 33.374146, 46.864464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.155338, 33.579281, 46.984543>,  <36.210625, 33.921173, 47.184673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155338, 33.579281, 46.984543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571624, -0.343692, 0.745064,
		-0.808790, 0.388978, -0.441083,
		-0.138217, -0.854735, -0.500325,
		36.113873, 33.322861, 46.834446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540867, 33.843750, 47.245281>,  <36.210625, 33.921173, 47.184673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540867, 33.843750, 47.245281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.679935, 33.474682, 47.178577>,  <35.763374, 33.253242, 47.138554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.679935, 33.474682, 47.178577>,  <35.540867, 33.843750, 47.245281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679935, 33.474682, 47.178577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442209, -0.318187, 0.838575,
		-0.826788, -0.217804, -0.518636,
		0.347668, -0.922669, -0.166758,
		35.784237, 33.197880, 47.128551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033649, 33.353413, 47.088261>,  <35.540867, 33.843750, 47.245281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033649, 33.353413, 47.088261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340412, 33.147327, 47.241310>,  <35.524471, 33.023674, 47.333141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340412, 33.147327, 47.241310>,  <35.033649, 33.353413, 47.088261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340412, 33.147327, 47.241310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561079, -0.248880, 0.789461,
		-0.311519, -0.820126, -0.479948,
		0.766907, -0.515221, 0.382624,
		35.570484, 32.992764, 47.356098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740562, 32.652916, 47.230629>,  <35.033649, 33.353413, 47.088261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740562, 32.652916, 47.230629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070724, 32.712959, 47.448318>,  <35.268822, 32.748985, 47.578934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070724, 32.712959, 47.448318>,  <34.740562, 32.652916, 47.230629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070724, 32.712959, 47.448318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409998, -0.503307, 0.760647,
		0.388092, -0.850970, -0.353885,
		0.825401, 0.150109, 0.544225,
		35.318344, 32.757992, 47.611588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836983, 32.022766, 47.536453>,  <34.740562, 32.652916, 47.230629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836983, 32.022766, 47.536453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.065514, 32.264843, 47.758205>,  <35.202633, 32.410088, 47.891254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.065514, 32.264843, 47.758205>,  <34.836983, 32.022766, 47.536453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065514, 32.264843, 47.758205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311874, -0.464714, 0.828719,
		0.759161, -0.646362, -0.076758,
		0.571323, 0.605192, 0.554376,
		35.236912, 32.446400, 47.924519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182251, 31.559896, 48.050354>,  <34.836983, 32.022766, 47.536453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182251, 31.559896, 48.050354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.241505, 31.933470, 48.180477>,  <35.277058, 32.157612, 48.258553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.241505, 31.933470, 48.180477>,  <35.182251, 31.559896, 48.050354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241505, 31.933470, 48.180477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500404, -0.212943, 0.839196,
		0.853026, -0.287097, 0.435801,
		0.148130, 0.933933, 0.325310,
		35.285942, 32.213650, 48.278069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368492, 31.498821, 48.766327>,  <35.182251, 31.559896, 48.050354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368492, 31.498821, 48.766327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246765, 31.875719, 48.710373>,  <35.173729, 32.101856, 48.676800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246765, 31.875719, 48.710373>,  <35.368492, 31.498821, 48.766327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246765, 31.875719, 48.710373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454147, -0.014425, 0.890810,
		0.837341, 0.334620, 0.432307,
		-0.304319, 0.942243, -0.139888,
		35.155468, 32.158390, 48.668407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314922, 31.724890, 49.480534>,  <35.368492, 31.498821, 48.766327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314922, 31.724890, 49.480534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.099007, 32.006634, 49.296143>,  <34.969456, 32.175678, 49.185509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.099007, 32.006634, 49.296143>,  <35.314922, 31.724890, 49.480534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099007, 32.006634, 49.296143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700910, -0.072788, 0.709526,
		0.466208, 0.706101, 0.532983,
		-0.539792, 0.704360, -0.460979,
		34.937069, 32.217941, 49.157848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078655, 32.184784, 50.046280>,  <35.314922, 31.724890, 49.480534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078655, 32.184784, 50.046280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836468, 32.253586, 49.735455>,  <34.691154, 32.294868, 49.548962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836468, 32.253586, 49.735455>,  <35.078655, 32.184784, 50.046280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836468, 32.253586, 49.735455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788293, 0.004787, 0.615281,
		0.109551, 0.985085, 0.132691,
		-0.605469, 0.172004, -0.777060,
		34.654827, 32.305187, 49.502338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688568, 32.765892, 50.296856>,  <35.078655, 32.184784, 50.046280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688568, 32.765892, 50.296856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482338, 32.586739, 50.004669>,  <34.358601, 32.479244, 49.829357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482338, 32.586739, 50.004669>,  <34.688568, 32.765892, 50.296856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482338, 32.586739, 50.004669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806401, -0.034552, 0.590358,
		-0.289653, 0.893423, -0.343361,
		-0.515576, -0.447886, -0.730466,
		34.327663, 32.452374, 49.785530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148560, 33.244904, 50.201290>,  <34.688568, 32.765892, 50.296856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148560, 33.244904, 50.201290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035606, 32.887009, 50.062897>,  <33.967834, 32.672272, 49.979862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035606, 32.887009, 50.062897>,  <34.148560, 33.244904, 50.201290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035606, 32.887009, 50.062897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888026, 0.107381, 0.447079,
		-0.362867, 0.433488, -0.824873,
		-0.282379, -0.894739, -0.345984,
		33.950893, 32.618587, 49.959103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403133, 33.393539, 49.963783>,  <34.148560, 33.244904, 50.201290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403133, 33.393539, 49.963783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.471264, 33.005226, 50.031384>,  <33.512142, 32.772236, 50.071945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.471264, 33.005226, 50.031384>,  <33.403133, 33.393539, 49.963783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471264, 33.005226, 50.031384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807105, -0.039048, 0.589115,
		-0.565307, -0.236741, -0.790179,
		0.170322, -0.970788, 0.169001,
		33.522362, 32.713989, 50.082085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889267, 33.802410, 50.257591>,  <33.403133, 33.393539, 49.963783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889267, 33.802410, 50.257591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.962517, 34.195568, 50.265522>,  <33.006466, 34.431461, 50.270279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.962517, 34.195568, 50.265522>,  <32.889267, 33.802410, 50.257591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962517, 34.195568, 50.265522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073520, 0.006415, -0.997273,
		-0.980337, 0.184080, -0.071087,
		0.183122, 0.982890, 0.019823,
		33.017452, 34.490437, 50.271469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461720, 34.144432, 49.782459>,  <32.889267, 33.802410, 50.257591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461720, 34.144432, 49.782459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761864, 34.406914, 49.814369>,  <32.941948, 34.564404, 49.833515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761864, 34.406914, 49.814369>,  <32.461720, 34.144432, 49.782459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761864, 34.406914, 49.814369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049259, 0.175851, -0.983184,
		-0.659193, 0.733810, 0.164274,
		0.750358, 0.656200, 0.079773,
		32.986973, 34.603775, 49.838303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211575, 34.778603, 49.452488>,  <32.461720, 34.144432, 49.782459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211575, 34.778603, 49.452488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609566, 34.817265, 49.442039>,  <32.848358, 34.840462, 49.435772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609566, 34.817265, 49.442039>,  <32.211575, 34.778603, 49.452488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609566, 34.817265, 49.442039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060516, 0.372782, -0.925943,
		-0.079757, 0.922871, 0.376758,
		0.994976, 0.096650, -0.026117,
		32.908058, 34.846260, 49.434204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256687, 35.306553, 49.028255>,  <32.211575, 34.778603, 49.452488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256687, 35.306553, 49.028255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.632046, 35.168468, 49.034443>,  <32.857262, 35.085617, 49.038155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.632046, 35.168468, 49.034443>,  <32.256687, 35.306553, 49.028255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632046, 35.168468, 49.034443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171982, 0.427741, -0.887389,
		0.299715, 0.835386, 0.460761,
		0.938399, -0.345207, 0.015471,
		32.913567, 35.064907, 49.039085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665257, 35.880657, 48.963448>,  <32.256687, 35.306553, 49.028255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665257, 35.880657, 48.963448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.870483, 35.563198, 48.832672>,  <32.993618, 35.372723, 48.754208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.870483, 35.563198, 48.832672>,  <32.665257, 35.880657, 48.963448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870483, 35.563198, 48.832672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233189, 0.495446, -0.836753,
		0.826065, 0.353074, 0.439267,
		0.513069, -0.793645, -0.326938,
		33.024403, 35.325104, 48.734592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218040, 36.062561, 48.577915>,  <32.665257, 35.880657, 48.963448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218040, 36.062561, 48.577915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259106, 35.675793, 48.484516>,  <33.283745, 35.443733, 48.428474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259106, 35.675793, 48.484516>,  <33.218040, 36.062561, 48.577915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259106, 35.675793, 48.484516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314700, 0.254255, -0.914504,
		0.943623, 0.020403, 0.330393,
		0.102663, -0.966922, -0.233500,
		33.289906, 35.385715, 48.414467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860992, 35.936115, 48.214951>,  <33.218040, 36.062561, 48.577915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860992, 35.936115, 48.214951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623676, 35.637150, 48.095364>,  <33.481289, 35.457771, 48.023613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623676, 35.637150, 48.095364>,  <33.860992, 35.936115, 48.214951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623676, 35.637150, 48.095364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174341, 0.243272, -0.954161,
		0.785886, -0.618212, -0.014025,
		-0.593286, -0.747417, -0.298964,
		33.445690, 35.412926, 48.005676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046505, 36.681671, 48.158737>,  <33.860992, 35.936115, 48.214951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046505, 36.681671, 48.158737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.955128, 37.068703, 48.115650>,  <33.900303, 37.300922, 48.089798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.955128, 37.068703, 48.115650>,  <34.046505, 36.681671, 48.158737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955128, 37.068703, 48.115650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182157, 0.066205, 0.981038,
		0.956365, 0.243731, 0.161127,
		-0.228442, 0.967581, -0.107714,
		33.886597, 37.358978, 48.083336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295090, 36.961391, 48.687653>,  <34.046505, 36.681671, 48.158737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295090, 36.961391, 48.687653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041492, 37.247051, 48.568962>,  <33.889336, 37.418446, 48.497746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041492, 37.247051, 48.568962>,  <34.295090, 36.961391, 48.687653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041492, 37.247051, 48.568962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291675, 0.134544, 0.947008,
		0.716228, 0.686942, 0.122999,
		-0.633990, 0.714149, -0.296728,
		33.851295, 37.461296, 48.479942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484413, 37.740234, 48.988960>,  <34.295090, 36.961391, 48.687653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484413, 37.740234, 48.988960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092487, 37.715675, 48.912868>,  <33.857330, 37.700939, 48.867214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092487, 37.715675, 48.912868>,  <34.484413, 37.740234, 48.988960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092487, 37.715675, 48.912868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199622, 0.349694, 0.915350,
		0.010325, 0.934850, -0.354892,
		-0.979819, -0.061394, -0.190227,
		33.798542, 37.697258, 48.855801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153477, 38.340324, 49.229504>,  <34.484413, 37.740234, 48.988960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153477, 38.340324, 49.229504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.830227, 38.109844, 49.180649>,  <33.636276, 37.971554, 49.151337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.830227, 38.109844, 49.180649>,  <34.153477, 38.340324, 49.229504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830227, 38.109844, 49.180649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301333, 0.226276, 0.926282,
		-0.506089, 0.785359, -0.356489,
		-0.808129, -0.576203, -0.122139,
		33.587788, 37.936985, 49.144009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660141, 38.727726, 49.428383>,  <34.153477, 38.340324, 49.229504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660141, 38.727726, 49.428383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525448, 38.352501, 49.460991>,  <33.444633, 38.127365, 49.480556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525448, 38.352501, 49.460991>,  <33.660141, 38.727726, 49.428383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525448, 38.352501, 49.460991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291969, 0.186333, 0.938101,
		-0.895192, 0.292082, -0.336630,
		-0.336728, -0.938066, 0.081525,
		33.424431, 38.071079, 49.485447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989155, 38.849812, 49.686386>,  <33.660141, 38.727726, 49.428383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989155, 38.849812, 49.686386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.082142, 38.466446, 49.752594>,  <33.137932, 38.236427, 49.792320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.082142, 38.466446, 49.752594>,  <32.989155, 38.849812, 49.686386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082142, 38.466446, 49.752594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323326, 0.084356, 0.942520,
		-0.917290, -0.272619, -0.290272,
		0.232463, -0.958417, 0.165524,
		33.151882, 38.178921, 49.802250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398952, 38.589417, 49.966644>,  <32.989155, 38.849812, 49.686386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398952, 38.589417, 49.966644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664146, 38.323074, 50.103516>,  <32.823261, 38.163269, 50.185638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664146, 38.323074, 50.103516>,  <32.398952, 38.589417, 49.966644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664146, 38.323074, 50.103516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378981, 0.095665, 0.920446,
		-0.645623, -0.739918, -0.188925,
		0.662981, -0.665860, 0.342178,
		32.863041, 38.123318, 50.206169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098858, 38.268589, 50.504765>,  <32.398952, 38.589417, 49.966644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098858, 38.268589, 50.504765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.471527, 38.145073, 50.581314>,  <32.695129, 38.070961, 50.627243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.471527, 38.145073, 50.581314>,  <32.098858, 38.268589, 50.504765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471527, 38.145073, 50.581314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224408, -0.074917, 0.971611,
		-0.285691, -0.948174, -0.139094,
		0.931677, -0.308794, 0.191375,
		32.751030, 38.052437, 50.638725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111378, 37.728222, 51.061882>,  <32.098858, 38.268589, 50.504765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111378, 37.728222, 51.061882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447624, 37.943775, 51.040081>,  <32.649372, 38.073105, 51.027000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447624, 37.943775, 51.040081>,  <32.111378, 37.728222, 51.061882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447624, 37.943775, 51.040081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044673, 0.169269, 0.984557,
		0.539785, -0.825200, 0.166364,
		0.840617, 0.538881, -0.054504,
		32.699810, 38.105438, 51.023731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.367310, 38.881573, 35.934689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561249, 39.186367, 36.106411>,  <38.677612, 39.369244, 36.209442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561249, 39.186367, 36.106411>,  <38.367310, 38.881573, 35.934689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561249, 39.186367, 36.106411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625875, -0.040568, 0.778868,
		0.610900, -0.646325, 0.457236,
		0.484853, 0.761983, 0.429302,
		38.706703, 39.414963, 36.235203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577999, 38.564426, 36.558270>,  <38.367310, 38.881573, 35.934689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577999, 38.564426, 36.558270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614098, 38.960175, 36.603893>,  <38.635757, 39.197624, 36.631268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614098, 38.960175, 36.603893>,  <38.577999, 38.564426, 36.558270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614098, 38.960175, 36.603893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569910, -0.042613, 0.820602,
		0.816736, -0.139060, 0.560004,
		0.090250, 0.989367, 0.114055,
		38.641174, 39.256985, 36.638111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528954, 38.731731, 37.256222>,  <38.577999, 38.564426, 36.558270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528954, 38.731731, 37.256222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434093, 39.085220, 37.094830>,  <38.377178, 39.297314, 36.997993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434093, 39.085220, 37.094830>,  <38.528954, 38.731731, 37.256222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434093, 39.085220, 37.094830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512243, 0.239144, 0.824874,
		0.825448, 0.402300, 0.395967,
		-0.237154, 0.883722, -0.403476,
		38.362946, 39.350338, 36.973785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512436, 39.173294, 37.814621>,  <38.528954, 38.731731, 37.256222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512436, 39.173294, 37.814621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287739, 39.340031, 37.528774>,  <38.152920, 39.440071, 37.357265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287739, 39.340031, 37.528774>,  <38.512436, 39.173294, 37.814621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287739, 39.340031, 37.528774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660191, 0.294708, 0.690866,
		0.498587, 0.859877, 0.109645,
		-0.561747, 0.416843, -0.714621,
		38.119213, 39.465084, 37.314388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456142, 39.963364, 38.021553>,  <38.512436, 39.173294, 37.814621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456142, 39.963364, 38.021553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169647, 39.866165, 37.759876>,  <37.997749, 39.807846, 37.602871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169647, 39.866165, 37.759876>,  <38.456142, 39.963364, 38.021553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169647, 39.866165, 37.759876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696484, 0.307742, 0.648232,
		0.043804, 0.919918, -0.389657,
		-0.716234, -0.242995, -0.654189,
		37.954777, 39.793266, 37.563622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985806, 40.546627, 38.047268>,  <38.456142, 39.963364, 38.021553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985806, 40.546627, 38.047268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805344, 40.215408, 37.914124>,  <37.697067, 40.016678, 37.834236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805344, 40.215408, 37.914124>,  <37.985806, 40.546627, 38.047268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805344, 40.215408, 37.914124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757536, 0.158145, 0.633348,
		-0.471800, 0.537896, -0.698623,
		-0.451159, -0.828045, -0.332862,
		37.669994, 39.966995, 37.814266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321407, 40.710098, 38.151970>,  <37.985806, 40.546627, 38.047268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321407, 40.710098, 38.151970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270321, 40.323387, 38.063393>,  <37.239670, 40.091362, 38.010246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270321, 40.323387, 38.063393>,  <37.321407, 40.710098, 38.151970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270321, 40.323387, 38.063393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666954, -0.081531, 0.740625,
		-0.734071, 0.242284, -0.634380,
		-0.127720, -0.966774, -0.221442,
		37.232006, 40.033356, 37.996960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599712, 40.621811, 38.031372>,  <37.321407, 40.710098, 38.151970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599712, 40.621811, 38.031372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719276, 40.254631, 38.135689>,  <36.791016, 40.034321, 38.198280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719276, 40.254631, 38.135689>,  <36.599712, 40.621811, 38.031372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719276, 40.254631, 38.135689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764899, -0.067064, 0.640649,
		-0.570596, -0.390979, -0.722188,
		0.298913, -0.917953, 0.260794,
		36.808952, 39.979244, 38.213928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011398, 40.212894, 38.121765>,  <36.599712, 40.621811, 38.031372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011398, 40.212894, 38.121765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286606, 40.013298, 38.332535>,  <36.451729, 39.893539, 38.458996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286606, 40.013298, 38.332535>,  <36.011398, 40.212894, 38.121765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286606, 40.013298, 38.332535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601269, 0.014593, 0.798913,
		-0.406338, -0.866485, -0.289987,
		0.688015, -0.498989, 0.526920,
		36.493011, 39.863602, 38.490612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567055, 39.752926, 38.460014>,  <36.011398, 40.212894, 38.121765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567055, 39.752926, 38.460014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918842, 39.725250, 38.648376>,  <36.129913, 39.708645, 38.761395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918842, 39.725250, 38.648376>,  <35.567055, 39.752926, 38.460014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918842, 39.725250, 38.648376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472177, -0.251302, 0.844924,
		0.059881, -0.965433, -0.253680,
		0.879467, -0.069188, 0.470903,
		36.182682, 39.704494, 38.789646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493237, 39.214714, 38.872627>,  <35.567055, 39.752926, 38.460014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493237, 39.214714, 38.872627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788074, 39.428680, 39.037827>,  <35.964977, 39.557060, 39.136944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788074, 39.428680, 39.037827>,  <35.493237, 39.214714, 38.872627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788074, 39.428680, 39.037827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447558, -0.071502, 0.891392,
		0.506347, -0.841876, 0.186701,
		0.737092, 0.534913, 0.412993,
		36.009201, 39.589153, 39.161724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723915, 38.871048, 39.351425>,  <35.493237, 39.214714, 38.872627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723915, 38.871048, 39.351425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820839, 39.242661, 39.463276>,  <35.878994, 39.465630, 39.530384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820839, 39.242661, 39.463276>,  <35.723915, 38.871048, 39.351425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820839, 39.242661, 39.463276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343878, -0.187262, 0.920153,
		0.907212, -0.319119, 0.274097,
		0.242310, 0.929030, 0.279624,
		35.893532, 39.521370, 39.547165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437988, 38.136368, 39.437977>,  <35.723915, 38.871048, 39.351425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437988, 38.136368, 39.437977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069649, 38.004829, 39.521790>,  <34.848644, 37.925907, 39.572079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069649, 38.004829, 39.521790>,  <35.437988, 38.136368, 39.437977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069649, 38.004829, 39.521790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162844, -0.163927, -0.972939,
		0.354296, -0.930047, 0.097401,
		-0.920845, -0.328847, 0.209531,
		34.793396, 37.906174, 39.584648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357597, 37.675159, 38.946201>,  <35.437988, 38.136368, 39.437977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357597, 37.675159, 38.946201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977299, 37.723766, 39.060261>,  <34.749119, 37.752930, 39.128696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977299, 37.723766, 39.060261>,  <35.357597, 37.675159, 38.946201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977299, 37.723766, 39.060261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304647, -0.196658, -0.931942,
		-0.057170, -0.972913, 0.223992,
		-0.950748, 0.121518, 0.285152,
		34.692074, 37.760223, 39.145805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011360, 37.074841, 38.694023>,  <35.357597, 37.675159, 38.946201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011360, 37.074841, 38.694023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765526, 37.382236, 38.765247>,  <34.618023, 37.566673, 38.807983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765526, 37.382236, 38.765247>,  <35.011360, 37.074841, 38.694023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765526, 37.382236, 38.765247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388561, -0.098474, -0.916146,
		-0.686512, -0.632242, 0.359125,
		-0.614590, 0.768487, 0.178061,
		34.581150, 37.612782, 38.818665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442898, 36.865761, 38.398098>,  <35.011360, 37.074841, 38.694023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442898, 36.865761, 38.398098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375523, 37.258297, 38.435177>,  <34.335098, 37.493820, 38.457424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375523, 37.258297, 38.435177>,  <34.442898, 36.865761, 38.398098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375523, 37.258297, 38.435177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390270, 0.019963, -0.920484,
		-0.905162, -0.191222, 0.379626,
		-0.168439, 0.981344, 0.092698,
		34.324989, 37.552700, 38.462986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742329, 36.963070, 38.125881>,  <34.442898, 36.865761, 38.398098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742329, 36.963070, 38.125881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895374, 37.332165, 38.144505>,  <33.987202, 37.553619, 38.155678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895374, 37.332165, 38.144505>,  <33.742329, 36.963070, 38.125881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895374, 37.332165, 38.144505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378609, 0.202566, -0.903118,
		-0.842768, 0.327920, 0.426860,
		0.382618, 0.922733, 0.046562,
		34.010159, 37.608986, 38.158474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215282, 37.448463, 37.905605>,  <33.742329, 36.963070, 38.125881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215282, 37.448463, 37.905605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580692, 37.598644, 37.842991>,  <33.799938, 37.688755, 37.805420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580692, 37.598644, 37.842991>,  <33.215282, 37.448463, 37.905605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580692, 37.598644, 37.842991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207970, 0.100353, -0.972973,
		-0.349598, 0.921392, 0.169759,
		0.913526, 0.375454, -0.156539,
		33.854752, 37.711281, 37.796028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077969, 38.027557, 37.417881>,  <33.215282, 37.448463, 37.905605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077969, 38.027557, 37.417881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463612, 37.924366, 37.392765>,  <33.694996, 37.862450, 37.377697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463612, 37.924366, 37.392765>,  <33.077969, 38.027557, 37.417881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463612, 37.924366, 37.392765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071381, -0.024056, -0.997159,
		0.255740, 0.965850, -0.041607,
		0.964107, -0.257983, -0.062791,
		33.752842, 37.846970, 37.373928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342075, 38.489330, 36.949055>,  <33.077969, 38.027557, 37.417881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342075, 38.489330, 36.949055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590515, 38.175854, 36.952183>,  <33.739578, 37.987766, 36.954060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590515, 38.175854, 36.952183>,  <33.342075, 38.489330, 36.949055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590515, 38.175854, 36.952183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061776, -0.058906, -0.996350,
		0.781294, 0.618348, -0.085000,
		0.621098, -0.783694, 0.007824,
		33.776844, 37.940746, 36.954529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641190, 38.651306, 36.410301>,  <33.342075, 38.489330, 36.949055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641190, 38.651306, 36.410301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735188, 38.269192, 36.482079>,  <33.791584, 38.039921, 36.525146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735188, 38.269192, 36.482079>,  <33.641190, 38.651306, 36.410301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735188, 38.269192, 36.482079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054897, -0.197365, -0.978792,
		0.970446, 0.220157, -0.098821,
		0.234992, -0.955289, 0.179447,
		33.805683, 37.982605, 36.535912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036385, 38.540688, 35.771034>,  <33.641190, 38.651306, 36.410301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036385, 38.540688, 35.771034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960274, 38.177341, 35.919987>,  <33.914608, 37.959335, 36.009357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960274, 38.177341, 35.919987>,  <34.036385, 38.540688, 35.771034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960274, 38.177341, 35.919987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080823, -0.363534, -0.928068,
		0.978398, -0.206688, -0.004245,
		-0.190278, -0.908363, 0.372386,
		33.903191, 37.904831, 36.031704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511288, 38.072525, 35.468719>,  <34.036385, 38.540688, 35.771034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511288, 38.072525, 35.468719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177475, 37.891823, 35.594872>,  <33.977188, 37.783401, 35.670563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177475, 37.891823, 35.594872>,  <34.511288, 38.072525, 35.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177475, 37.891823, 35.594872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154770, -0.357147, -0.921136,
		0.528769, -0.817532, 0.228133,
		-0.834536, -0.451760, 0.315377,
		33.927113, 37.756294, 35.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590633, 37.360069, 35.202042>,  <34.511288, 38.072525, 35.468719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590633, 37.360069, 35.202042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198296, 37.408268, 35.263264>,  <33.962894, 37.437187, 35.299995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198296, 37.408268, 35.263264>,  <34.590633, 37.360069, 35.202042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198296, 37.408268, 35.263264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194214, -0.544281, -0.816112,
		-0.015033, -0.830204, 0.557257,
		-0.980844, 0.120496, 0.153055,
		33.904041, 37.444416, 35.309181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137951, 37.270363, 34.799957>,  <34.590633, 37.360069, 35.202042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137951, 37.270363, 34.799957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367588, 37.194736, 35.118622>,  <35.505371, 37.149361, 35.309822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367588, 37.194736, 35.118622>,  <35.137951, 37.270363, 34.799957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367588, 37.194736, 35.118622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790722, 0.124565, 0.599368,
		-0.212556, -0.974032, -0.077986,
		0.574090, -0.189064, 0.796666,
		35.539814, 37.138016, 35.357620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772594, 37.649807, 35.044628>,  <35.137951, 37.270363, 34.799957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772594, 37.649807, 35.044628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869339, 37.288467, 35.186310>,  <35.927387, 37.071663, 35.271320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869339, 37.288467, 35.186310>,  <35.772594, 37.649807, 35.044628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869339, 37.288467, 35.186310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634455, -0.128961, -0.762126,
		0.734144, 0.409060, 0.541943,
		0.241866, -0.903349, 0.354206,
		35.941898, 37.017464, 35.292572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459766, 37.541161, 35.243622>,  <35.772594, 37.649807, 35.044628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459766, 37.541161, 35.243622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340343, 37.175293, 35.134624>,  <36.268692, 36.955772, 35.069225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340343, 37.175293, 35.134624>,  <36.459766, 37.541161, 35.243622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340343, 37.175293, 35.134624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837959, -0.114559, -0.533574,
		0.456826, -0.387636, 0.800655,
		-0.298554, -0.914666, -0.272489,
		36.250778, 36.900894, 35.052879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552868, 36.910854, 35.764805>,  <36.459766, 37.541161, 35.243622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552868, 36.910854, 35.764805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836468, 36.639923, 35.843334>,  <37.006630, 36.477364, 35.890450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836468, 36.639923, 35.843334>,  <36.552868, 36.910854, 35.764805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836468, 36.639923, 35.843334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421627, -0.183988, 0.887907,
		-0.565283, -0.712303, -0.416028,
		0.709003, -0.677328, 0.196321,
		37.049168, 36.436726, 35.902229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314999, 36.131893, 35.829559>,  <36.552868, 36.910854, 35.764805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314999, 36.131893, 35.829559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658184, 36.190060, 36.026642>,  <36.864094, 36.224960, 36.144890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658184, 36.190060, 36.026642>,  <36.314999, 36.131893, 35.829559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658184, 36.190060, 36.026642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447445, -0.259670, 0.855783,
		0.252385, -0.954686, -0.157721,
		0.857960, 0.145416, 0.492706,
		36.915573, 36.233685, 36.174454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273075, 35.570377, 36.323521>,  <36.314999, 36.131893, 35.829559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273075, 35.570377, 36.323521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524921, 35.856964, 36.443699>,  <36.676029, 36.028915, 36.515808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524921, 35.856964, 36.443699>,  <36.273075, 35.570377, 36.323521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524921, 35.856964, 36.443699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176620, -0.244599, 0.953403,
		0.756567, -0.653340, -0.027461,
		0.629613, 0.716463, 0.300448,
		36.713806, 36.071903, 36.533833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703018, 35.222794, 36.650795>,  <36.273075, 35.570377, 36.323521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703018, 35.222794, 36.650795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690048, 35.595940, 36.794300>,  <36.682266, 35.819828, 36.880402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690048, 35.595940, 36.794300>,  <36.703018, 35.222794, 36.650795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690048, 35.595940, 36.794300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019977, -0.359484, 0.932937,
		0.999275, 0.023083, 0.030292,
		-0.032425, 0.932866, 0.358762,
		36.680321, 35.875801, 36.901928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991966, 35.226955, 37.271076>,  <36.703018, 35.222794, 36.650795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991966, 35.226955, 37.271076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804611, 35.579304, 37.298466>,  <36.692200, 35.790710, 37.314899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804611, 35.579304, 37.298466>,  <36.991966, 35.226955, 37.271076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804611, 35.579304, 37.298466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164316, -0.162996, 0.972848,
		0.868110, 0.444418, 0.221086,
		-0.468387, 0.880866, 0.068474,
		36.664097, 35.843563, 37.319008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236557, 35.508793, 37.846050>,  <36.991966, 35.226955, 37.271076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236557, 35.508793, 37.846050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922138, 35.753109, 37.807968>,  <36.733486, 35.899696, 37.785118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922138, 35.753109, 37.807968>,  <37.236557, 35.508793, 37.846050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922138, 35.753109, 37.807968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054138, 0.085403, 0.994875,
		0.615786, 0.787176, -0.034064,
		-0.786051, 0.610786, -0.095206,
		36.686321, 35.936344, 37.779408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364712, 36.178577, 38.306908>,  <37.236557, 35.508793, 37.846050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364712, 36.178577, 38.306908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976822, 36.099384, 38.249733>,  <36.744087, 36.051868, 38.215427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976822, 36.099384, 38.249733>,  <37.364712, 36.178577, 38.306908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976822, 36.099384, 38.249733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165613, 0.103076, 0.980789,
		-0.179444, 0.974771, -0.132745,
		-0.969728, -0.197981, -0.142939,
		36.685905, 36.039989, 38.206852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080212, 36.618385, 38.735744>,  <37.364712, 36.178577, 38.306908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080212, 36.618385, 38.735744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789097, 36.357853, 38.649872>,  <36.614426, 36.201534, 38.598347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789097, 36.357853, 38.649872>,  <37.080212, 36.618385, 38.735744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789097, 36.357853, 38.649872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198124, -0.100002, 0.975062,
		-0.656559, 0.752173, -0.056264,
		-0.727789, -0.651334, -0.214681,
		36.570759, 36.162453, 38.585468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461319, 36.876648, 38.991455>,  <37.080212, 36.618385, 38.735744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461319, 36.876648, 38.991455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375374, 36.489418, 38.939823>,  <36.323807, 36.257080, 38.908844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375374, 36.489418, 38.939823>,  <36.461319, 36.876648, 38.991455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375374, 36.489418, 38.939823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260435, -0.070585, 0.962908,
		-0.941279, 0.240514, -0.236954,
		-0.214867, -0.968076, -0.129079,
		36.310913, 36.198994, 38.901100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846394, 36.755405, 39.247288>,  <36.461319, 36.876648, 38.991455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846394, 36.755405, 39.247288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022232, 36.397049, 39.272999>,  <36.127735, 36.182034, 39.288425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022232, 36.397049, 39.272999>,  <35.846394, 36.755405, 39.247288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022232, 36.397049, 39.272999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198451, -0.027086, 0.979737,
		-0.876000, -0.443439, -0.189698,
		0.439592, -0.895895, 0.064274,
		36.154110, 36.128281, 39.292282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379997, 36.393345, 39.671978>,  <35.846394, 36.755405, 39.247288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379997, 36.393345, 39.671978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732967, 36.206314, 39.692768>,  <35.944748, 36.094097, 39.705242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732967, 36.206314, 39.692768>,  <35.379997, 36.393345, 39.671978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732967, 36.206314, 39.692768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135918, -0.147614, 0.979661,
		-0.450395, -0.871540, -0.193811,
		0.882423, -0.467577, 0.051973,
		35.997696, 36.066040, 39.708359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236271, 35.996330, 40.247124>,  <35.379997, 36.393345, 39.671978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236271, 35.996330, 40.247124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633408, 35.973618, 40.205101>,  <35.871689, 35.959991, 40.179886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633408, 35.973618, 40.205101>,  <35.236271, 35.996330, 40.247124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633408, 35.973618, 40.205101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100791, -0.073385, 0.992197,
		-0.064028, -0.995687, -0.067139,
		0.992845, -0.056761, -0.105055,
		35.931259, 35.956585, 40.173584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358288, 35.298199, 40.545940>,  <35.236271, 35.996330, 40.247124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358288, 35.298199, 40.545940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683338, 35.531242, 40.540230>,  <35.878368, 35.671070, 40.536804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683338, 35.531242, 40.540230>,  <35.358288, 35.298199, 40.545940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683338, 35.531242, 40.540230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263632, -0.345638, 0.900574,
		0.519749, -0.735593, -0.434469,
		0.812625, 0.582612, -0.014281,
		35.927124, 35.706024, 40.535946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923271, 34.871723, 40.700871>,  <35.358288, 35.298199, 40.545940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923271, 34.871723, 40.700871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996471, 35.250343, 40.807117>,  <36.040390, 35.477516, 40.870865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996471, 35.250343, 40.807117>,  <35.923271, 34.871723, 40.700871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996471, 35.250343, 40.807117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333946, -0.313967, 0.888766,
		0.924657, -0.073941, -0.373553,
		0.182999, 0.946550, 0.265619,
		36.051373, 35.534309, 40.886803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623165, 34.851322, 41.043442>,  <35.923271, 34.871723, 40.700871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623165, 34.851322, 41.043442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525188, 35.221264, 41.159813>,  <36.466404, 35.443230, 41.229637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525188, 35.221264, 41.159813>,  <36.623165, 34.851322, 41.043442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525188, 35.221264, 41.159813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415983, -0.170799, 0.893189,
		0.875763, 0.339803, -0.342889,
		-0.244943, 0.924858, 0.290932,
		36.451706, 35.498722, 41.247093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185162, 35.168747, 41.230133>,  <36.623165, 34.851322, 41.043442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185162, 35.168747, 41.230133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902443, 35.377541, 41.421120>,  <36.732811, 35.502815, 41.535713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902443, 35.377541, 41.421120>,  <37.185162, 35.168747, 41.230133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902443, 35.377541, 41.421120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307617, -0.381007, 0.871898,
		0.637030, 0.763133, 0.108725,
		-0.706798, 0.521979, 0.477466,
		36.690403, 35.534134, 41.564358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440384, 35.374523, 41.834923>,  <37.185162, 35.168747, 41.230133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440384, 35.374523, 41.834923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046131, 35.394447, 41.899483>,  <36.809578, 35.406403, 41.938217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046131, 35.394447, 41.899483>,  <37.440384, 35.374523, 41.834923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046131, 35.394447, 41.899483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131242, -0.375666, 0.917415,
		0.106329, 0.925415, 0.363731,
		-0.985632, 0.049811, 0.161397,
		36.750443, 35.409389, 41.947903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477169, 35.623737, 42.499054>,  <37.440384, 35.374523, 41.834923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477169, 35.623737, 42.499054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101547, 35.496105, 42.447891>,  <36.876175, 35.419525, 42.417194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101547, 35.496105, 42.447891>,  <37.477169, 35.623737, 42.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101547, 35.496105, 42.447891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020044, -0.422266, 0.906250,
		-0.343182, 0.848455, 0.402927,
		-0.939055, -0.319085, -0.127908,
		36.819832, 35.400379, 42.409519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148849, 35.745914, 43.144501>,  <37.477169, 35.623737, 42.499054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148849, 35.745914, 43.144501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932259, 35.464222, 42.960823>,  <36.802303, 35.295204, 42.850616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932259, 35.464222, 42.960823>,  <37.148849, 35.745914, 43.144501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932259, 35.464222, 42.960823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063782, -0.510205, 0.857684,
		-0.838291, 0.493706, 0.231349,
		-0.541480, -0.704233, -0.459190,
		36.769814, 35.252953, 42.823067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598454, 35.675583, 43.590382>,  <37.148849, 35.745914, 43.144501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598454, 35.675583, 43.590382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648609, 35.340664, 43.377510>,  <36.678703, 35.139713, 43.249786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648609, 35.340664, 43.377510>,  <36.598454, 35.675583, 43.590382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648609, 35.340664, 43.377510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007359, -0.535609, 0.844434,
		-0.992081, -0.109796, -0.060995,
		0.125385, -0.837298, -0.532176,
		36.686226, 35.089474, 43.217857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058472, 35.263222, 43.727825>,  <36.598454, 35.675583, 43.590382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058472, 35.263222, 43.727825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318596, 34.995625, 43.583855>,  <36.474670, 34.835064, 43.497475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318596, 34.995625, 43.583855>,  <36.058472, 35.263222, 43.727825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318596, 34.995625, 43.583855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101159, -0.545827, 0.831769,
		-0.752907, -0.504495, -0.422630,
		0.650306, -0.668997, -0.359923,
		36.513687, 34.794926, 43.475880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741131, 34.568539, 43.706322>,  <36.058472, 35.263222, 43.727825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741131, 34.568539, 43.706322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136379, 34.511421, 43.683628>,  <36.373528, 34.477150, 43.670013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136379, 34.511421, 43.683628>,  <35.741131, 34.568539, 43.706322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136379, 34.511421, 43.683628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023406, -0.504801, 0.862918,
		-0.151861, -0.851343, -0.502149,
		0.988125, -0.142797, -0.056733,
		36.432816, 34.468582, 43.666607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770008, 33.856602, 43.844570>,  <35.741131, 34.568539, 43.706322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770008, 33.856602, 43.844570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129654, 34.009727, 43.929462>,  <36.345440, 34.101604, 43.980396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129654, 34.009727, 43.929462>,  <35.770008, 33.856602, 43.844570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129654, 34.009727, 43.929462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059365, -0.587035, 0.807382,
		0.433668, -0.713330, -0.550538,
		0.899115, 0.382818, 0.212231,
		36.399387, 34.124573, 43.993134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271534, 33.284672, 43.907413>,  <35.770008, 33.856602, 43.844570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271534, 33.284672, 43.907413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404377, 33.612793, 44.093666>,  <36.484081, 33.809666, 44.205418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404377, 33.612793, 44.093666>,  <36.271534, 33.284672, 43.907413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404377, 33.612793, 44.093666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067854, -0.513149, 0.855613,
		0.940798, -0.252560, -0.226080,
		0.332107, 0.820300, 0.465632,
		36.504009, 33.858883, 44.233356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752296, 32.967869, 44.362370>,  <36.271534, 33.284672, 43.907413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752296, 32.967869, 44.362370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740116, 33.336143, 44.518013>,  <36.732807, 33.557110, 44.611397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740116, 33.336143, 44.518013>,  <36.752296, 32.967869, 44.362370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740116, 33.336143, 44.518013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250727, -0.369805, 0.894640,
		0.967579, 0.124802, -0.219581,
		-0.030450, 0.920689, 0.389107,
		36.730980, 33.612350, 44.634747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419483, 33.078861, 44.712597>,  <36.752296, 32.967869, 44.362370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419483, 33.078861, 44.712597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126427, 33.299412, 44.872204>,  <36.950592, 33.431744, 44.967968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126427, 33.299412, 44.872204>,  <37.419483, 33.078861, 44.712597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126427, 33.299412, 44.872204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302485, -0.261398, 0.916610,
		0.609703, 0.792244, 0.024727,
		-0.732643, 0.551380, 0.399017,
		36.906635, 33.464825, 44.991909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579681, 33.124565, 45.394104>,  <37.419483, 33.078861, 44.712597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579681, 33.124565, 45.394104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203827, 33.251530, 45.445236>,  <36.978313, 33.327709, 45.475918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203827, 33.251530, 45.445236>,  <37.579681, 33.124565, 45.394104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203827, 33.251530, 45.445236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082847, -0.151438, 0.984989,
		0.332006, 0.936118, 0.115999,
		-0.939632, 0.317412, 0.127833,
		36.921936, 33.346752, 45.483585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018829, 33.837166, 45.715408>,  <37.579681, 33.124565, 45.394104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018829, 33.837166, 45.715408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356865, 33.856174, 45.928410>,  <38.559689, 33.867580, 46.056210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356865, 33.856174, 45.928410>,  <38.018829, 33.837166, 45.715408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356865, 33.856174, 45.928410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508149, 0.238128, -0.827695,
		-0.166136, 0.970071, 0.177093,
		0.845094, 0.047520, 0.532502,
		38.610394, 33.870430, 46.088161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359955, 34.464062, 45.610901>,  <38.018829, 33.837166, 45.715408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359955, 34.464062, 45.610901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655552, 34.225227, 45.735722>,  <38.832912, 34.081928, 45.810612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655552, 34.225227, 45.735722>,  <38.359955, 34.464062, 45.610901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655552, 34.225227, 45.735722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529435, 0.228248, -0.817069,
		0.416635, 0.769020, 0.484792,
		0.738995, -0.597086, 0.312050,
		38.877251, 34.046101, 45.829338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011032, 34.801796, 45.599323>,  <38.359955, 34.464062, 45.610901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011032, 34.801796, 45.599323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071098, 34.406597, 45.584846>,  <39.107136, 34.169479, 45.576160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071098, 34.406597, 45.584846>,  <39.011032, 34.801796, 45.599323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071098, 34.406597, 45.584846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665181, 0.128045, -0.735621,
		0.731427, 0.086391, 0.676426,
		0.150164, -0.987999, -0.036190,
		39.116146, 34.110199, 45.573990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716873, 34.721622, 45.292492>,  <39.011032, 34.801796, 45.599323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716873, 34.721622, 45.292492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593868, 34.342045, 45.264359>,  <39.520065, 34.114300, 45.247478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593868, 34.342045, 45.264359>,  <39.716873, 34.721622, 45.292492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593868, 34.342045, 45.264359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567628, -0.123612, -0.813953,
		0.763700, -0.290222, 0.576658,
		-0.307509, -0.948942, -0.070335,
		39.501617, 34.057362, 45.243259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269424, 34.445587, 45.110424>,  <39.716873, 34.721622, 45.292492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269424, 34.445587, 45.110424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985222, 34.186359, 45.000744>,  <39.814701, 34.030823, 44.934937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985222, 34.186359, 45.000744>,  <40.269424, 34.445587, 45.110424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985222, 34.186359, 45.000744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418771, -0.076258, -0.904884,
		0.565519, -0.757753, 0.325575,
		-0.710506, -0.648071, -0.274199,
		39.772072, 33.991940, 44.918484>
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
