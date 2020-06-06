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
	<24.245089, 35.524498, 35.009708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384607, 35.155235, 34.945065>,  <24.468319, 34.933678, 34.906277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384607, 35.155235, 34.945065>,  <24.245089, 35.524498, 35.009708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384607, 35.155235, 34.945065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498158, 0.328686, -0.802374,
		0.793839, 0.199356, 0.574524,
		0.348796, -0.923159, -0.161613,
		24.489246, 34.878288, 34.896580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.204355, 36.166885, 35.542534>,  <24.245089, 35.524498, 35.009708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.204355, 36.166885, 35.542534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.113157, 36.536705, 35.420399>,  <24.058437, 36.758598, 35.347118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.113157, 36.536705, 35.420399>,  <24.204355, 36.166885, 35.542534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.113157, 36.536705, 35.420399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433752, 0.377202, 0.818277,
		0.871709, 0.054126, -0.487026,
		-0.227997, 0.924548, -0.305333,
		24.044758, 36.814068, 35.328800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.153099, 36.386799, 36.295296>,  <24.204355, 36.166885, 35.542534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.153099, 36.386799, 36.295296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134001, 36.015198, 36.148502>,  <24.122541, 35.792236, 36.060425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134001, 36.015198, 36.148502>,  <24.153099, 36.386799, 36.295296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.134001, 36.015198, 36.148502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405655, -0.353777, 0.842784,
		-0.912778, -0.108631, 0.393745,
		-0.047745, -0.929000, -0.366987,
		24.119677, 35.736496, 36.038406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.935265, 36.055286, 36.862206>,  <24.153099, 36.386799, 36.295296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.935265, 36.055286, 36.862206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.090452, 35.780670, 36.616234>,  <24.183565, 35.615898, 36.468651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.090452, 35.780670, 36.616234>,  <23.935265, 36.055286, 36.862206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.090452, 35.780670, 36.616234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616548, -0.302610, 0.726839,
		-0.685090, -0.661125, 0.305884,
		0.387969, -0.686543, -0.614931,
		24.206842, 35.574707, 36.431755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.908331, 35.400059, 37.195267>,  <23.935265, 36.055286, 36.862206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.908331, 35.400059, 37.195267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201700, 35.384457, 36.923805>,  <24.377722, 35.375095, 36.760929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201700, 35.384457, 36.923805>,  <23.908331, 35.400059, 37.195267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201700, 35.384457, 36.923805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544177, -0.564613, 0.620551,
		-0.407380, -0.824433, -0.392876,
		0.733426, -0.039006, -0.678650,
		24.421728, 35.372753, 36.720211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119024, 34.677677, 36.944393>,  <23.908331, 35.400059, 37.195267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119024, 34.677677, 36.944393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433874, 34.924366, 36.940617>,  <24.622784, 35.072380, 36.938351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433874, 34.924366, 36.940617>,  <24.119024, 34.677677, 36.944393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433874, 34.924366, 36.940617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368410, -0.457817, 0.809121,
		0.494681, -0.640357, -0.587566,
		0.787124, 0.616722, -0.009440,
		24.670012, 35.109383, 36.937786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731573, 34.303040, 37.026554>,  <24.119024, 34.677677, 36.944393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731573, 34.303040, 37.026554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856567, 34.671185, 37.120602>,  <24.931564, 34.892071, 37.177029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856567, 34.671185, 37.120602>,  <24.731573, 34.303040, 37.026554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856567, 34.671185, 37.120602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371004, -0.346103, 0.861724,
		0.874476, -0.182047, -0.449611,
		0.312486, 0.920365, 0.235119,
		24.950314, 34.947292, 37.191135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432926, 34.349579, 37.089649>,  <24.731573, 34.303040, 37.026554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432926, 34.349579, 37.089649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316418, 34.658318, 37.315716>,  <25.246513, 34.843559, 37.451355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316418, 34.658318, 37.315716>,  <25.432926, 34.349579, 37.089649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316418, 34.658318, 37.315716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515957, -0.370743, 0.772229,
		0.805575, 0.516529, -0.290254,
		-0.291269, 0.771847, 0.565168,
		25.229036, 34.889874, 37.485268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174324, 34.512917, 37.304047>,  <25.432926, 34.349579, 37.089649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174324, 34.512917, 37.304047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473335, 34.498165, 37.569328>,  <26.652742, 34.489315, 37.728497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473335, 34.498165, 37.569328>,  <26.174324, 34.512917, 37.304047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473335, 34.498165, 37.569328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006509, 0.998816, 0.048205,
		-0.664200, -0.031718, 0.746882,
		0.747526, -0.036879, 0.663208,
		26.697594, 34.487103, 37.768291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013813, 34.760761, 37.966328>,  <26.174324, 34.512917, 37.304047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013813, 34.760761, 37.966328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401480, 34.810997, 37.881531>,  <26.634081, 34.841137, 37.830650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401480, 34.810997, 37.881531>,  <26.013813, 34.760761, 37.966328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401480, 34.810997, 37.881531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147476, 0.984893, -0.090752,
		0.197395, 0.119218, 0.973048,
		0.969168, 0.125587, -0.211995,
		26.692230, 34.848675, 37.817932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292021, 35.358776, 38.390770>,  <26.013813, 34.760761, 37.966328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292021, 35.358776, 38.390770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552454, 35.317451, 38.089993>,  <26.708714, 35.292656, 37.909527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552454, 35.317451, 38.089993>,  <26.292021, 35.358776, 38.390770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552454, 35.317451, 38.089993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160831, 0.986975, 0.003659,
		0.741772, -0.123318, 0.659217,
		0.651082, -0.103308, -0.751944,
		26.747778, 35.286457, 37.864410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495966, 36.102413, 38.320469>,  <26.292021, 35.358776, 38.390770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495966, 36.102413, 38.320469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719019, 35.929218, 38.037182>,  <26.852850, 35.825302, 37.867210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719019, 35.929218, 38.037182>,  <26.495966, 36.102413, 38.320469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719019, 35.929218, 38.037182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328596, 0.898628, -0.290677,
		0.762281, -0.070626, 0.643381,
		0.557631, -0.432990, -0.708215,
		26.886309, 35.799320, 37.824718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582535, 36.606182, 38.944210>,  <26.495966, 36.102413, 38.320469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582535, 36.606182, 38.944210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209002, 36.544884, 38.814919>,  <25.984882, 36.508106, 38.737343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209002, 36.544884, 38.814919>,  <26.582535, 36.606182, 38.944210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209002, 36.544884, 38.814919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345154, -0.148657, -0.926698,
		0.093960, -0.976943, 0.191713,
		-0.933831, -0.153244, -0.323228,
		25.928852, 36.498909, 38.717949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290897, 36.844414, 38.603233>,  <26.582535, 36.606182, 38.944210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290897, 36.844414, 38.603233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337343, 37.185051, 38.807709>,  <27.365211, 37.389431, 38.930393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337343, 37.185051, 38.807709>,  <27.290897, 36.844414, 38.603233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337343, 37.185051, 38.807709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638929, 0.330003, -0.694886,
		-0.760451, 0.407300, -0.505787,
		0.116116, 0.851589, 0.511188,
		27.372177, 37.440529, 38.961063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236727, 37.462482, 38.131348>,  <27.290897, 36.844414, 38.603233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236727, 37.462482, 38.131348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457474, 37.599651, 38.435413>,  <27.589922, 37.681953, 38.617851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457474, 37.599651, 38.435413>,  <27.236727, 37.462482, 38.131348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457474, 37.599651, 38.435413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654041, 0.387535, -0.649651,
		-0.517370, 0.855698, -0.010419,
		0.551868, 0.342925, 0.760161,
		27.623034, 37.702530, 38.663460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922939, 37.517525, 38.041393>,  <27.236727, 37.462482, 38.131348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922939, 37.517525, 38.041393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695679, 37.727703, 38.294727>,  <27.559322, 37.853809, 38.446728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695679, 37.727703, 38.294727>,  <27.922939, 37.517525, 38.041393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695679, 37.727703, 38.294727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149561, 0.690869, -0.707341,
		-0.809218, -0.496600, -0.313934,
		-0.568153, 0.525441, 0.633335,
		27.525232, 37.885334, 38.484730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316683, 36.770401, 38.193516>,  <27.922939, 37.517525, 38.041393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316683, 36.770401, 38.193516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996140, 36.592152, 38.033894>,  <27.803814, 36.485203, 37.938122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996140, 36.592152, 38.033894>,  <28.316683, 36.770401, 38.193516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996140, 36.592152, 38.033894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564954, 0.783067, 0.260064,
		0.196596, 0.433851, -0.879274,
		-0.801360, -0.445622, -0.399053,
		27.755732, 36.458466, 37.914177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864151, 36.247280, 38.158539>,  <28.316683, 36.770401, 38.193516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864151, 36.247280, 38.158539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720104, 36.383785, 38.505840>,  <28.633675, 36.465687, 38.714222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720104, 36.383785, 38.505840>,  <28.864151, 36.247280, 38.158539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720104, 36.383785, 38.505840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776933, 0.624902, 0.076632,
		-0.516419, 0.702169, -0.490174,
		-0.360119, 0.341258, 0.868249,
		28.612068, 36.486164, 38.766315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033464, 36.979733, 38.302444>,  <28.864151, 36.247280, 38.158539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033464, 36.979733, 38.302444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024179, 36.901688, 38.694649>,  <29.018608, 36.854862, 38.929970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024179, 36.901688, 38.694649>,  <29.033464, 36.979733, 38.302444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024179, 36.901688, 38.694649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707993, 0.689243, 0.153914,
		-0.705838, 0.697765, 0.122136,
		-0.023214, -0.195109, 0.980507,
		29.017216, 36.843155, 38.988800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866415, 37.568840, 38.608845>,  <29.033464, 36.979733, 38.302444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866415, 37.568840, 38.608845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095343, 37.331680, 38.835442>,  <29.232698, 37.189384, 38.971401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095343, 37.331680, 38.835442>,  <28.866415, 37.568840, 38.608845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095343, 37.331680, 38.835442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734097, 0.678303, -0.031719,
		-0.365450, 0.434016, 0.823454,
		0.572318, -0.592903, 0.566496,
		29.267038, 37.153809, 39.005390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255995, 38.024025, 39.062443>,  <28.866415, 37.568840, 38.608845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255995, 38.024025, 39.062443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024120, 37.789284, 39.288567>,  <28.884995, 37.648441, 39.424240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024120, 37.789284, 39.288567>,  <29.255995, 38.024025, 39.062443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024120, 37.789284, 39.288567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171211, 0.590554, 0.788627,
		-0.796649, 0.553944, -0.241862,
		-0.579688, -0.586849, 0.565305,
		28.850214, 37.613228, 39.458157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730358, 38.702343, 39.202393>,  <29.255995, 38.024025, 39.062443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730358, 38.702343, 39.202393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483263, 38.641014, 38.893875>,  <29.335007, 38.604218, 38.708763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483263, 38.641014, 38.893875>,  <29.730358, 38.702343, 39.202393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483263, 38.641014, 38.893875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562040, -0.772074, -0.296669,
		-0.550012, -0.616762, 0.563108,
		-0.617736, -0.153318, -0.771295,
		29.297943, 38.595020, 38.662487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418495, 38.487946, 39.058239>,  <29.730358, 38.702343, 39.202393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418495, 38.487946, 39.058239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502068, 38.331314, 38.699795>,  <30.552212, 38.237335, 38.484730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502068, 38.331314, 38.699795>,  <30.418495, 38.487946, 39.058239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502068, 38.331314, 38.699795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236628, 0.909348, -0.342189,
		0.948870, -0.140551, 0.282649,
		0.208931, -0.391575, -0.896112,
		30.564747, 38.213840, 38.430962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220295, 38.582855, 38.821426>,  <30.418495, 38.487946, 39.058239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220295, 38.582855, 38.821426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920450, 38.587120, 38.556709>,  <30.740543, 38.589680, 38.397881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920450, 38.587120, 38.556709>,  <31.220295, 38.582855, 38.821426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920450, 38.587120, 38.556709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164399, 0.971535, -0.170566,
		0.641136, -0.236657, -0.730026,
		-0.749612, 0.010660, -0.661792,
		30.695566, 38.590317, 38.358173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412348, 38.791744, 38.092903>,  <31.220295, 38.582855, 38.821426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412348, 38.791744, 38.092903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041189, 38.905979, 38.188778>,  <30.818495, 38.974522, 38.246304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041189, 38.905979, 38.188778>,  <31.412348, 38.791744, 38.092903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041189, 38.905979, 38.188778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285028, 0.957775, -0.037777,
		-0.240351, 0.033263, -0.970116,
		-0.927896, 0.285590, 0.239683,
		30.762821, 38.991657, 38.260681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016006, 39.120075, 37.495918>,  <31.412348, 38.791744, 38.092903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016006, 39.120075, 37.495918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907793, 39.245148, 37.860126>,  <30.842865, 39.320190, 38.078651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907793, 39.245148, 37.860126>,  <31.016006, 39.120075, 37.495918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907793, 39.245148, 37.860126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321541, 0.920822, -0.220678,
		-0.907426, 0.233068, -0.349653,
		-0.270536, 0.312677, 0.910518,
		30.826632, 39.338951, 38.133282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499277, 39.786110, 37.526516>,  <31.016006, 39.120075, 37.495918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499277, 39.786110, 37.526516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737217, 39.732346, 37.843525>,  <30.879980, 39.700085, 38.033730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737217, 39.732346, 37.843525>,  <30.499277, 39.786110, 37.526516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737217, 39.732346, 37.843525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532369, 0.804580, -0.263125,
		-0.602276, 0.578432, 0.550163,
		0.594850, -0.134416, 0.792519,
		30.915672, 39.692020, 38.081280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620354, 40.483967, 37.746620>,  <30.499277, 39.786110, 37.526516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620354, 40.483967, 37.746620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918402, 40.256641, 37.886230>,  <31.097231, 40.120247, 37.969997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918402, 40.256641, 37.886230>,  <30.620354, 40.483967, 37.746620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918402, 40.256641, 37.886230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664314, 0.678767, -0.312989,
		-0.059029, 0.465074, 0.883302,
		0.745119, -0.568315, 0.349022,
		31.141937, 40.086147, 37.990936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208681, 40.961632, 37.784466>,  <30.620354, 40.483967, 37.746620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208681, 40.961632, 37.784466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373262, 40.602928, 37.849625>,  <31.472012, 40.387707, 37.888718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373262, 40.602928, 37.849625>,  <31.208681, 40.961632, 37.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373262, 40.602928, 37.849625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910352, 0.395650, -0.121326,
		0.044350, 0.198212, 0.979155,
		0.411451, -0.896757, 0.162895,
		31.496698, 40.333900, 37.898495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779774, 41.421265, 37.861687>,  <31.208681, 40.961632, 37.784466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779774, 41.421265, 37.861687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912830, 41.544106, 38.218346>,  <31.992664, 41.617809, 38.432343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912830, 41.544106, 38.218346>,  <31.779774, 41.421265, 37.861687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912830, 41.544106, 38.218346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934053, 0.023016, -0.356391,
		-0.129972, 0.951397, -0.279196,
		0.332643, 0.307105, 0.891647,
		32.012623, 41.636238, 38.485840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187840, 42.063229, 37.683628>,  <31.779774, 41.421265, 37.861687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187840, 42.063229, 37.683628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291920, 41.890282, 38.028961>,  <32.354370, 41.786514, 38.236160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291920, 41.890282, 38.028961>,  <32.187840, 42.063229, 37.683628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291920, 41.890282, 38.028961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960556, 0.025059, -0.276955,
		0.098112, 0.901348, 0.421836,
		0.260203, -0.432370, 0.863337,
		32.369980, 41.760571, 38.287964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602970, 42.565529, 37.973183>,  <32.187840, 42.063229, 37.683628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602970, 42.565529, 37.973183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681271, 42.200188, 38.115990>,  <32.728252, 41.980984, 38.201675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681271, 42.200188, 38.115990>,  <32.602970, 42.565529, 37.973183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681271, 42.200188, 38.115990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974694, 0.141138, -0.173356,
		0.107947, 0.381917, 0.917871,
		0.195754, -0.913356, 0.357016,
		32.739998, 41.926182, 38.223095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211166, 42.641983, 38.280712>,  <32.602970, 42.565529, 37.973183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211166, 42.641983, 38.280712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183849, 42.245625, 38.234314>,  <33.167458, 42.007809, 38.206474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183849, 42.245625, 38.234314>,  <33.211166, 42.641983, 38.280712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183849, 42.245625, 38.234314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979044, -0.044206, -0.198790,
		0.191853, -0.127139, 0.973154,
		-0.068293, -0.990899, -0.115994,
		33.163361, 41.948357, 38.199516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765362, 42.334484, 38.628628>,  <33.211166, 42.641983, 38.280712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765362, 42.334484, 38.628628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645939, 42.097797, 38.329098>,  <33.574284, 41.955784, 38.149380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645939, 42.097797, 38.329098>,  <33.765362, 42.334484, 38.628628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645939, 42.097797, 38.329098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948174, -0.094483, -0.303379,
		0.108763, -0.800591, 0.589258,
		-0.298558, -0.591715, -0.748823,
		33.556370, 41.920284, 38.104450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318928, 41.949387, 38.403152>,  <33.765362, 42.334484, 38.628628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318928, 41.949387, 38.403152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067802, 41.917950, 38.093395>,  <33.917130, 41.899090, 37.907543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067802, 41.917950, 38.093395>,  <34.318928, 41.949387, 38.403152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067802, 41.917950, 38.093395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760952, -0.271247, -0.589388,
		-0.163732, -0.959296, 0.230094,
		-0.627809, -0.078589, -0.774390,
		33.879459, 41.894375, 37.861080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383461, 41.274746, 38.154671>,  <34.318928, 41.949387, 38.403152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383461, 41.274746, 38.154671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277035, 41.541603, 37.876354>,  <34.213181, 41.701717, 37.709366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277035, 41.541603, 37.876354>,  <34.383461, 41.274746, 38.154671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277035, 41.541603, 37.876354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850387, -0.177458, -0.495329,
		-0.453931, -0.723481, -0.520117,
		-0.266062, 0.667146, -0.695792,
		34.197216, 41.741749, 37.667618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743778, 40.982151, 38.487564>,  <34.383461, 41.274746, 38.154671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743778, 40.982151, 38.487564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522259, 40.876022, 38.171867>,  <33.389347, 40.812344, 37.982449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522259, 40.876022, 38.171867>,  <33.743778, 40.982151, 38.487564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522259, 40.876022, 38.171867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656526, -0.722144, -0.217904,
		-0.512133, -0.638835, 0.574116,
		-0.553799, -0.265327, -0.789246,
		33.356117, 40.796425, 37.935093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772068, 40.863785, 39.212139>,  <33.743778, 40.982151, 38.487564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772068, 40.863785, 39.212139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647091, 41.234238, 39.127613>,  <33.572105, 41.456509, 39.076897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647091, 41.234238, 39.127613>,  <33.772068, 40.863785, 39.212139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647091, 41.234238, 39.127613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387219, 0.327297, 0.861938,
		0.867433, 0.187485, -0.460880,
		-0.312445, 0.926135, -0.211311,
		33.553356, 41.512077, 39.064220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353065, 41.372051, 39.220020>,  <33.772068, 40.863785, 39.212139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353065, 41.372051, 39.220020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990059, 41.500511, 39.328297>,  <33.772255, 41.577587, 39.393261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990059, 41.500511, 39.328297>,  <34.353065, 41.372051, 39.220020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990059, 41.500511, 39.328297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379124, 0.348988, 0.857014,
		0.180766, 0.880379, -0.438470,
		-0.907518, 0.321154, 0.270687,
		33.717804, 41.596859, 39.409504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351364, 42.122604, 39.224270>,  <34.353065, 41.372051, 39.220020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351364, 42.122604, 39.224270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094685, 41.944794, 39.474266>,  <33.940678, 41.838108, 39.624264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094685, 41.944794, 39.474266>,  <34.351364, 42.122604, 39.224270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094685, 41.944794, 39.474266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549107, 0.302632, 0.779035,
		-0.535444, 0.843096, 0.049893,
		-0.641702, -0.444526, 0.624992,
		33.902176, 41.811436, 39.661762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064125, 42.549629, 39.655846>,  <34.351364, 42.122604, 39.224270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064125, 42.549629, 39.655846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094681, 42.184631, 39.816605>,  <34.113014, 41.965633, 39.913059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094681, 42.184631, 39.816605>,  <34.064125, 42.549629, 39.655846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094681, 42.184631, 39.816605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638402, 0.354380, 0.683270,
		-0.765903, 0.204374, 0.609609,
		0.076390, -0.912494, 0.401893,
		34.117599, 41.910885, 39.937172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702595, 42.075623, 40.302143>,  <34.064125, 42.549629, 39.655846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702595, 42.075623, 40.302143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097733, 42.086758, 40.240959>,  <34.334816, 42.093437, 40.204247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097733, 42.086758, 40.240959>,  <33.702595, 42.075623, 40.302143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097733, 42.086758, 40.240959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111858, 0.556053, 0.823585,
		0.107981, -0.830680, 0.546178,
		0.987840, 0.027838, -0.152961,
		34.394085, 42.095108, 40.195072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903084, 41.739803, 40.835960>,  <33.702595, 42.075623, 40.302143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903084, 41.739803, 40.835960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199162, 41.992783, 40.744637>,  <34.376808, 42.144569, 40.689842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199162, 41.992783, 40.744637>,  <33.903084, 41.739803, 40.835960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199162, 41.992783, 40.744637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078361, 0.418375, 0.904888,
		0.667814, -0.651900, 0.359237,
		0.740192, 0.632447, -0.228313,
		34.421219, 42.182518, 40.676144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401894, 41.768795, 41.468964>,  <33.903084, 41.739803, 40.835960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401894, 41.768795, 41.468964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376728, 42.079323, 41.218086>,  <34.361629, 42.265640, 41.067558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376728, 42.079323, 41.218086>,  <34.401894, 41.768795, 41.468964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376728, 42.079323, 41.218086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133322, 0.616267, 0.776170,
		0.989074, 0.132452, 0.064728,
		-0.062915, 0.776319, -0.627193,
		34.357853, 42.312218, 41.029930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770760, 42.297447, 41.734718>,  <34.401894, 41.768795, 41.468964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770760, 42.297447, 41.734718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541985, 42.491982, 41.470490>,  <34.404720, 42.608704, 41.311951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541985, 42.491982, 41.470490>,  <34.770760, 42.297447, 41.734718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541985, 42.491982, 41.470490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090167, 0.763138, 0.639914,
		0.815324, 0.425556, -0.392619,
		-0.571942, 0.486336, -0.660576,
		34.370403, 42.637882, 41.272316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189014, 41.835045, 42.245106>,  <34.770760, 42.297447, 41.734718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189014, 41.835045, 42.245106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574116, 41.727448, 42.256050>,  <35.805176, 41.662888, 42.262615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574116, 41.727448, 42.256050>,  <35.189014, 41.835045, 42.245106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574116, 41.727448, 42.256050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267440, 0.962271, 0.050102,
		-0.039807, -0.040918, 0.998369,
		0.962752, -0.268998, 0.027362,
		35.862942, 41.646748, 42.264259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217461, 41.151367, 42.423981>,  <35.189014, 41.835045, 42.245106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217461, 41.151367, 42.423981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529690, 41.363903, 42.555668>,  <35.717030, 41.491425, 42.634682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529690, 41.363903, 42.555668>,  <35.217461, 41.151367, 42.423981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529690, 41.363903, 42.555668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589731, -0.800593, -0.106151,
		0.207167, 0.277008, -0.938269,
		0.780576, 0.531335, 0.329217,
		35.763863, 41.523304, 42.654434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816387, 41.178772, 41.936176>,  <35.217461, 41.151367, 42.423981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816387, 41.178772, 41.936176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894909, 41.180073, 42.328392>,  <35.942020, 41.180855, 42.563721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894909, 41.180073, 42.328392>,  <35.816387, 41.178772, 41.936176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894909, 41.180073, 42.328392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546105, -0.830910, -0.106572,
		0.814392, 0.556397, -0.164887,
		0.196303, 0.003255, 0.980538,
		35.953800, 41.181049, 42.622555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529369, 41.117031, 41.970673>,  <35.816387, 41.178772, 41.936176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529369, 41.117031, 41.970673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345665, 40.961159, 42.289982>,  <36.235443, 40.867638, 42.481567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345665, 40.961159, 42.289982>,  <36.529369, 41.117031, 41.970673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345665, 40.961159, 42.289982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598959, -0.799476, -0.045677,
		0.655996, 0.457152, 0.600567,
		-0.459257, -0.389679, 0.798269,
		36.207890, 40.844254, 42.529461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014996, 40.969227, 42.605518>,  <36.529369, 41.117031, 41.970673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014996, 40.969227, 42.605518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706821, 40.721062, 42.546856>,  <36.521915, 40.572163, 42.511658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706821, 40.721062, 42.546856>,  <37.014996, 40.969227, 42.605518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706821, 40.721062, 42.546856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633828, -0.770142, -0.071715,
		-0.068456, -0.148210, 0.986584,
		-0.770439, -0.620415, -0.146661,
		36.475689, 40.534939, 42.502857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194466, 40.437344, 43.113613>,  <37.014996, 40.969227, 42.605518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194466, 40.437344, 43.113613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962624, 40.278221, 42.829132>,  <36.823517, 40.182747, 42.658443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962624, 40.278221, 42.829132>,  <37.194466, 40.437344, 43.113613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962624, 40.278221, 42.829132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580621, -0.813978, -0.017896,
		-0.571782, -0.423310, 0.702763,
		-0.579608, -0.397806, -0.711199,
		36.788742, 40.158878, 42.615772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879578, 39.770542, 43.394917>,  <37.194466, 40.437344, 43.113613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879578, 39.770542, 43.394917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892963, 39.792816, 42.995762>,  <36.900997, 39.806183, 42.756268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892963, 39.792816, 42.995762>,  <36.879578, 39.770542, 43.394917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892963, 39.792816, 42.995762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498175, -0.866498, -0.031647,
		-0.866430, -0.496064, -0.056742,
		0.033468, 0.055687, -0.997887,
		36.903004, 39.809521, 42.696396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746567, 39.162159, 43.211266>,  <36.879578, 39.770542, 43.394917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746567, 39.162159, 43.211266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910995, 39.277393, 42.865311>,  <37.009651, 39.346535, 42.657738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910995, 39.277393, 42.865311>,  <36.746567, 39.162159, 43.211266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910995, 39.277393, 42.865311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420218, -0.901822, -0.100669,
		-0.808974, -0.322058, -0.491771,
		0.411069, 0.288089, -0.864886,
		37.034317, 39.363819, 42.605846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984581, 38.459503, 43.108028>,  <36.746567, 39.162159, 43.211266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984581, 38.459503, 43.108028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199139, 38.660213, 42.836590>,  <37.327873, 38.780640, 42.673725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199139, 38.660213, 42.836590>,  <36.984581, 38.459503, 43.108028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199139, 38.660213, 42.836590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342319, -0.864301, -0.368511,
		-0.771424, -0.034628, -0.635378,
		0.536398, 0.501781, -0.678597,
		37.360058, 38.810749, 42.633011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694576, 38.294975, 42.421093>,  <36.984581, 38.459503, 43.108028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694576, 38.294975, 42.421093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079235, 38.404377, 42.429298>,  <37.310032, 38.470020, 42.434223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079235, 38.404377, 42.429298>,  <36.694576, 38.294975, 42.421093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079235, 38.404377, 42.429298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257284, -0.873624, -0.413020,
		-0.095041, 0.402460, -0.910491,
		0.961651, 0.273509, 0.020516,
		37.367729, 38.486431, 42.435452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899185, 38.014847, 41.786598>,  <36.694576, 38.294975, 42.421093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899185, 38.014847, 41.786598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218132, 38.113625, 42.006859>,  <37.409500, 38.172890, 42.139015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218132, 38.113625, 42.006859>,  <36.899185, 38.014847, 41.786598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218132, 38.113625, 42.006859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516605, -0.750975, -0.411286,
		0.311964, 0.612418, -0.726377,
		0.797370, 0.246943, 0.550655,
		37.457344, 38.187706, 42.172054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469822, 38.213947, 41.357445>,  <36.899185, 38.014847, 41.786598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469822, 38.213947, 41.357445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595703, 38.063080, 41.705860>,  <37.671230, 37.972561, 41.914909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595703, 38.063080, 41.705860>,  <37.469822, 38.213947, 41.357445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595703, 38.063080, 41.705860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531643, -0.690174, -0.490934,
		0.786332, 0.617579, -0.016680,
		0.314702, -0.377169, 0.871037,
		37.690113, 37.949928, 41.967171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182167, 38.137867, 41.319145>,  <37.469822, 38.213947, 41.357445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182167, 38.137867, 41.319145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126617, 37.863453, 41.604820>,  <38.093288, 37.698803, 41.776226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126617, 37.863453, 41.604820>,  <38.182167, 38.137867, 41.319145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126617, 37.863453, 41.604820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636656, -0.614245, -0.466232,
		0.758540, 0.389944, 0.522074,
		-0.138877, -0.686037, 0.714190,
		38.084953, 37.657642, 41.819077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836639, 37.874905, 41.360470>,  <38.182167, 38.137867, 41.319145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836639, 37.874905, 41.360470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604603, 37.598064, 41.532280>,  <38.465382, 37.431961, 41.635368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604603, 37.598064, 41.532280>,  <38.836639, 37.874905, 41.360470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604603, 37.598064, 41.532280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664313, -0.707120, -0.242216,
		0.471367, 0.144836, 0.869963,
		-0.580087, -0.692101, 0.429529,
		38.430576, 37.390434, 41.661140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301701, 37.427372, 41.720905>,  <38.836639, 37.874905, 41.360470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301701, 37.427372, 41.720905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970634, 37.205566, 41.686298>,  <38.771996, 37.072483, 41.665535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970634, 37.205566, 41.686298>,  <39.301701, 37.427372, 41.720905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970634, 37.205566, 41.686298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558753, -0.799731, -0.219602,
		0.052583, -0.230098, 0.971746,
		-0.827666, -0.554513, -0.086516,
		38.722336, 37.039211, 41.660343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441357, 36.765038, 42.005848>,  <39.301701, 37.427372, 41.720905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441357, 36.765038, 42.005848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140877, 36.660217, 41.763515>,  <38.960590, 36.597324, 41.618118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140877, 36.660217, 41.763515>,  <39.441357, 36.765038, 42.005848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140877, 36.660217, 41.763515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448229, -0.876271, -0.176749,
		-0.484553, -0.404324, 0.775713,
		-0.751199, -0.262052, -0.605829,
		38.915516, 36.581600, 41.581768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170616, 36.156624, 42.211109>,  <39.441357, 36.765038, 42.005848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170616, 36.156624, 42.211109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086861, 36.170158, 41.820210>,  <39.036606, 36.178280, 41.585670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086861, 36.170158, 41.820210>,  <39.170616, 36.156624, 42.211109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086861, 36.170158, 41.820210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447795, -0.885128, -0.126599,
		-0.869272, -0.464115, 0.170187,
		-0.209393, 0.033840, -0.977246,
		39.024044, 36.180309, 41.527035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754230, 35.567387, 41.965717>,  <39.170616, 36.156624, 42.211109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754230, 35.567387, 41.965717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951847, 35.694019, 41.641815>,  <39.070419, 35.769997, 41.447475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951847, 35.694019, 41.641815>,  <38.754230, 35.567387, 41.965717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951847, 35.694019, 41.641815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318236, -0.932566, -0.170433,
		-0.809102, -0.173491, -0.561476,
		0.494044, 0.316579, -0.809752,
		39.100060, 35.788994, 41.398891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416920, 35.350178, 41.334251>,  <38.754230, 35.567387, 41.965717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416920, 35.350178, 41.334251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814251, 35.394421, 41.321194>,  <39.052650, 35.420967, 41.313358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814251, 35.394421, 41.321194>,  <38.416920, 35.350178, 41.334251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814251, 35.394421, 41.321194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103855, -0.981022, -0.163734,
		-0.050136, 0.159251, -0.985964,
		0.993328, 0.110607, -0.032646,
		39.112247, 35.427601, 41.311401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529602, 35.239727, 40.655922>,  <38.416920, 35.350178, 41.334251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529602, 35.239727, 40.655922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825871, 35.146935, 40.908138>,  <39.003632, 35.091259, 41.059467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825871, 35.146935, 40.908138>,  <38.529602, 35.239727, 40.655922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825871, 35.146935, 40.908138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071823, -0.960462, -0.268989,
		0.668013, 0.153946, -0.728051,
		0.740675, -0.231979, 0.630544,
		39.048073, 35.077339, 41.097301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250713, 34.896152, 40.427429>,  <38.529602, 35.239727, 40.655922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250713, 34.896152, 40.427429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155140, 34.770184, 40.794849>,  <39.097794, 34.694603, 41.015301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155140, 34.770184, 40.794849>,  <39.250713, 34.896152, 40.427429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155140, 34.770184, 40.794849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041960, -0.948415, -0.314243,
		0.970128, -0.036542, 0.239826,
		-0.238938, -0.314919, 0.918551,
		39.083458, 34.675709, 41.070415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737186, 34.320404, 40.577736>,  <39.250713, 34.896152, 40.427429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737186, 34.320404, 40.577736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394783, 34.293587, 40.782776>,  <39.189342, 34.277496, 40.905800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394783, 34.293587, 40.782776>,  <39.737186, 34.320404, 40.577736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394783, 34.293587, 40.782776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226749, -0.842392, -0.488835,
		0.464581, -0.534678, 0.705893,
		-0.856008, -0.067043, 0.512597,
		39.137981, 34.273476, 40.936554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574379, 33.622833, 40.829002>,  <39.737186, 34.320404, 40.577736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574379, 33.622833, 40.829002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210197, 33.783344, 40.788910>,  <38.991688, 33.879650, 40.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210197, 33.783344, 40.788910>,  <39.574379, 33.622833, 40.829002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210197, 33.783344, 40.788910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350477, -0.877180, -0.328210,
		-0.219625, -0.263691, 0.939272,
		-0.910456, 0.401276, -0.100233,
		38.937061, 33.903728, 40.758839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227482, 33.124920, 41.176392>,  <39.574379, 33.622833, 40.829002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227482, 33.124920, 41.176392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996479, 33.344158, 40.934376>,  <38.857876, 33.475700, 40.789165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996479, 33.344158, 40.934376>,  <39.227482, 33.124920, 41.176392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996479, 33.344158, 40.934376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439879, -0.833250, -0.334963,
		-0.687744, 0.072703, 0.722304,
		-0.577507, 0.548095, -0.605043,
		38.823227, 33.508587, 40.752861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788391, 32.633915, 40.947491>,  <39.227482, 33.124920, 41.176392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788391, 32.633915, 40.947491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666435, 32.914799, 40.690136>,  <38.593262, 33.083328, 40.535725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666435, 32.914799, 40.690136>,  <38.788391, 32.633915, 40.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666435, 32.914799, 40.690136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320528, -0.711796, -0.624987,
		-0.896832, 0.015674, 0.442094,
		-0.304885, 0.702212, -0.643385,
		38.574970, 33.125462, 40.497120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116302, 32.415161, 40.692570>,  <38.788391, 32.633915, 40.947491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116302, 32.415161, 40.692570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277771, 32.662151, 40.422527>,  <38.374653, 32.810345, 40.260502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277771, 32.662151, 40.422527>,  <38.116302, 32.415161, 40.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277771, 32.662151, 40.422527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222138, -0.649675, -0.727033,
		-0.887525, 0.443454, -0.125094,
		0.403676, 0.617472, -0.675111,
		38.398872, 32.847393, 40.219994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570049, 32.396313, 40.091743>,  <38.116302, 32.415161, 40.692570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570049, 32.396313, 40.091743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924015, 32.519730, 39.952190>,  <38.136395, 32.593781, 39.868458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924015, 32.519730, 39.952190>,  <37.570049, 32.396313, 40.091743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924015, 32.519730, 39.952190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091354, -0.619556, -0.779619,
		-0.456698, 0.721771, -0.520070,
		0.884919, 0.308540, -0.348886,
		38.189491, 32.612293, 39.847523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386452, 32.604755, 39.413525>,  <37.570049, 32.396313, 40.091743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386452, 32.604755, 39.413525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776043, 32.515636, 39.430168>,  <38.009796, 32.462166, 39.440155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776043, 32.515636, 39.430168>,  <37.386452, 32.604755, 39.413525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776043, 32.515636, 39.430168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048108, -0.382622, -0.922652,
		0.221488, 0.896639, -0.383383,
		0.973976, -0.222800, 0.041611,
		38.068237, 32.448795, 39.442650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566761, 32.913986, 38.796936>,  <37.386452, 32.604755, 39.413525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566761, 32.913986, 38.796936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831989, 32.652046, 38.941994>,  <37.991127, 32.494881, 39.029030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831989, 32.652046, 38.941994>,  <37.566761, 32.913986, 38.796936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831989, 32.652046, 38.941994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111630, -0.565543, -0.817129,
		0.740190, 0.501329, -0.448094,
		0.663067, -0.654851, 0.362646,
		38.030910, 32.455589, 39.050789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034325, 32.889702, 38.225422>,  <37.566761, 32.913986, 38.796936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034325, 32.889702, 38.225422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081532, 32.567669, 38.457947>,  <38.109856, 32.374451, 38.597462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081532, 32.567669, 38.457947>,  <38.034325, 32.889702, 38.225422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081532, 32.567669, 38.457947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018879, -0.587113, -0.809285,
		0.992832, 0.084534, -0.084488,
		0.118016, -0.805079, 0.581308,
		38.116936, 32.326145, 38.632339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636383, 32.628880, 37.974628>,  <38.034325, 32.889702, 38.225422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636383, 32.628880, 37.974628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489143, 32.315128, 38.174328>,  <38.400799, 32.126877, 38.294147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489143, 32.315128, 38.174328>,  <38.636383, 32.628880, 37.974628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489143, 32.315128, 38.174328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000864, -0.536661, -0.843797,
		0.929787, -0.311031, 0.196866,
		-0.368097, -0.784382, 0.499249,
		38.378716, 32.079815, 38.324104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036892, 31.960657, 37.793316>,  <38.636383, 32.628880, 37.974628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036892, 31.960657, 37.793316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693546, 31.815800, 37.938679>,  <38.487537, 31.728886, 38.025894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693546, 31.815800, 37.938679>,  <39.036892, 31.960657, 37.793316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693546, 31.815800, 37.938679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050293, -0.645528, -0.762079,
		0.510570, -0.672418, 0.535884,
		-0.858364, -0.362144, 0.363406,
		38.436039, 31.707157, 38.047699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142078, 31.206898, 37.828556>,  <39.036892, 31.960657, 37.793316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142078, 31.206898, 37.828556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750195, 31.285753, 37.814053>,  <38.515064, 31.333067, 37.805351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750195, 31.285753, 37.814053>,  <39.142078, 31.206898, 37.828556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750195, 31.285753, 37.814053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091745, -0.601864, -0.793311,
		-0.178215, -0.773884, 0.607736,
		-0.979706, 0.197137, -0.036261,
		38.456284, 31.344894, 37.803173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885330, 30.562239, 37.823181>,  <39.142078, 31.206898, 37.828556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885330, 30.562239, 37.823181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578922, 30.783054, 37.691441>,  <38.395077, 30.915543, 37.612396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578922, 30.783054, 37.691441>,  <38.885330, 30.562239, 37.823181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578922, 30.783054, 37.691441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288292, -0.752965, -0.591550,
		-0.574548, -0.358189, 0.735932,
		-0.766017, 0.552037, -0.329351,
		38.349117, 30.948666, 37.592636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312183, 30.087626, 37.734657>,  <38.885330, 30.562239, 37.823181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312183, 30.087626, 37.734657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197598, 30.401396, 37.514614>,  <38.128845, 30.589657, 37.382587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197598, 30.401396, 37.514614>,  <38.312183, 30.087626, 37.734657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197598, 30.401396, 37.514614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644322, -0.582665, -0.495328,
		-0.709076, 0.212554, 0.672333,
		-0.286461, 0.784425, -0.550107,
		38.111660, 30.636723, 37.349583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642307, 30.089767, 37.743923>,  <38.312183, 30.087626, 37.734657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642307, 30.089767, 37.743923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706474, 30.325825, 37.427444>,  <37.744972, 30.467459, 37.237556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706474, 30.325825, 37.427444>,  <37.642307, 30.089767, 37.743923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706474, 30.325825, 37.427444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451727, -0.668816, -0.590448,
		-0.877616, 0.452123, 0.159295,
		0.160416, 0.590144, -0.791200,
		37.754601, 30.502869, 37.190086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017563, 30.127335, 37.500977>,  <37.642307, 30.089767, 37.743923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017563, 30.127335, 37.500977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284206, 30.197498, 37.211185>,  <37.444191, 30.239597, 37.037312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284206, 30.197498, 37.211185>,  <37.017563, 30.127335, 37.500977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284206, 30.197498, 37.211185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462141, -0.665330, -0.586313,
		-0.584863, 0.725650, -0.362448,
		0.666605, 0.175410, -0.724479,
		37.484188, 30.250122, 36.993843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614761, 29.887272, 36.955215>,  <37.017563, 30.127335, 37.500977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614761, 29.887272, 36.955215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954037, 29.940628, 36.750168>,  <37.157604, 29.972643, 36.627140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954037, 29.940628, 36.750168>,  <36.614761, 29.887272, 36.955215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954037, 29.940628, 36.750168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314913, -0.651175, -0.690507,
		-0.425913, 0.747112, -0.510315,
		0.848191, 0.133392, -0.512619,
		37.208492, 29.980646, 36.596382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474941, 30.099354, 36.249065>,  <36.614761, 29.887272, 36.955215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474941, 30.099354, 36.249065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826973, 29.912350, 36.282280>,  <37.038193, 29.800148, 36.302208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826973, 29.912350, 36.282280>,  <36.474941, 30.099354, 36.249065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826973, 29.912350, 36.282280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304047, -0.689184, -0.657709,
		0.364714, 0.553588, -0.748681,
		0.880079, -0.467510, 0.083038,
		37.090996, 29.772097, 36.307190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581673, 29.863997, 35.634705>,  <36.474941, 30.099354, 36.249065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581673, 29.863997, 35.634705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859035, 29.642990, 35.819710>,  <37.025452, 29.510386, 35.930714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859035, 29.642990, 35.819710>,  <36.581673, 29.863997, 35.634705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859035, 29.642990, 35.819710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132427, -0.728673, -0.671936,
		0.708274, 0.404675, -0.578434,
		0.693405, -0.552516, 0.462511,
		37.067059, 29.477236, 35.958462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026024, 29.612118, 35.143120>,  <36.581673, 29.863997, 35.634705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026024, 29.612118, 35.143120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058773, 29.359840, 35.451801>,  <37.078423, 29.208473, 35.637009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058773, 29.359840, 35.451801>,  <37.026024, 29.612118, 35.143120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058773, 29.359840, 35.451801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038068, -0.775713, -0.629937,
		0.995916, 0.022196, -0.087517,
		0.081870, -0.630696, 0.771700,
		37.083336, 29.170631, 35.683311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210899, 29.050531, 34.802608>,  <37.026024, 29.612118, 35.143120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210899, 29.050531, 34.802608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124187, 28.911860, 35.167645>,  <37.072159, 28.828657, 35.386665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124187, 28.911860, 35.167645>,  <37.210899, 29.050531, 34.802608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124187, 28.911860, 35.167645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246754, -0.885005, -0.394814,
		0.944520, -0.310774, 0.106308,
		-0.216781, -0.346677, 0.912590,
		37.059155, 28.807856, 35.441422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472347, 28.332426, 34.831131>,  <37.210899, 29.050531, 34.802608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472347, 28.332426, 34.831131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207485, 28.366453, 35.128937>,  <37.048569, 28.386869, 35.307621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207485, 28.366453, 35.128937>,  <37.472347, 28.332426, 34.831131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207485, 28.366453, 35.128937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360293, -0.907305, -0.216766,
		0.657065, -0.411778, 0.631430,
		-0.662159, 0.085070, 0.744519,
		37.008839, 28.391973, 35.352291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250824, 27.703495, 35.034546>,  <37.472347, 28.332426, 34.831131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250824, 27.703495, 35.034546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929020, 27.897263, 35.172005>,  <36.735935, 28.013523, 35.254482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929020, 27.897263, 35.172005>,  <37.250824, 27.703495, 35.034546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929020, 27.897263, 35.172005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590287, -0.716159, -0.372396,
		0.065714, -0.502451, 0.862105,
		-0.804514, 0.484418, 0.343652,
		36.687664, 28.042587, 35.275101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831814, 27.157122, 35.240078>,  <37.250824, 27.703495, 35.034546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831814, 27.157122, 35.240078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594261, 27.473845, 35.183022>,  <36.451729, 27.663879, 35.148788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594261, 27.473845, 35.183022>,  <36.831814, 27.157122, 35.240078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594261, 27.473845, 35.183022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686473, -0.591153, -0.423430,
		-0.419597, -0.153549, 0.894629,
		-0.593880, 0.791809, -0.142639,
		36.416096, 27.711388, 35.140228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161037, 26.942276, 35.456581>,  <36.831814, 27.157122, 35.240078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161037, 26.942276, 35.456581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099701, 27.267715, 35.232246>,  <36.062901, 27.462980, 35.097645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099701, 27.267715, 35.232246>,  <36.161037, 26.942276, 35.456581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099701, 27.267715, 35.232246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571718, -0.535962, -0.621196,
		-0.805994, 0.225390, 0.547333,
		-0.153338, 0.813600, -0.560841,
		36.053699, 27.511795, 35.063995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367748, 26.918407, 35.289963>,  <36.161037, 26.942276, 35.456581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367748, 26.918407, 35.289963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520500, 27.187662, 35.036648>,  <35.612152, 27.349215, 34.884659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520500, 27.187662, 35.036648>,  <35.367748, 26.918407, 35.289963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520500, 27.187662, 35.036648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696904, -0.240331, -0.675696,
		-0.607035, 0.699377, 0.377334,
		0.381881, 0.673137, -0.633288,
		35.635063, 27.389603, 34.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721607, 27.316311, 35.029541>,  <35.367748, 26.918407, 35.289963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721607, 27.316311, 35.029541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031330, 27.337551, 34.777309>,  <35.217163, 27.350296, 34.625973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031330, 27.337551, 34.777309>,  <34.721607, 27.316311, 35.029541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031330, 27.337551, 34.777309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614536, -0.174633, -0.769318,
		-0.150971, 0.983201, -0.102587,
		0.774309, 0.053101, -0.630576,
		35.263622, 27.353481, 34.588135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332596, 27.622465, 34.375214>,  <34.721607, 27.316311, 35.029541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332596, 27.622465, 34.375214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694595, 27.501778, 34.255245>,  <34.911793, 27.429365, 34.183266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694595, 27.501778, 34.255245>,  <34.332596, 27.622465, 34.375214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694595, 27.501778, 34.255245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411886, -0.445008, -0.795184,
		0.106455, 0.843170, -0.527004,
		0.904996, -0.301717, -0.299917,
		34.966095, 27.411263, 34.165272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499081, 27.881588, 33.766888>,  <34.332596, 27.622465, 34.375214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499081, 27.881588, 33.766888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684002, 27.529877, 33.812756>,  <34.794956, 27.318850, 33.840275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684002, 27.529877, 33.812756>,  <34.499081, 27.881588, 33.766888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684002, 27.529877, 33.812756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421157, -0.331530, -0.844224,
		0.780322, 0.341994, -0.523581,
		0.462303, -0.879277, 0.114667,
		34.822693, 27.266094, 33.847157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787319, 27.613598, 33.086353>,  <34.499081, 27.881588, 33.766888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787319, 27.613598, 33.086353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752728, 27.286795, 33.314396>,  <34.731972, 27.090712, 33.451221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752728, 27.286795, 33.314396>,  <34.787319, 27.613598, 33.086353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752728, 27.286795, 33.314396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435672, -0.483614, -0.759149,
		0.895942, -0.314027, -0.314127,
		-0.086477, -0.817009, 0.570103,
		34.726784, 27.041693, 33.485428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165764, 27.020643, 32.623329>,  <34.787319, 27.613598, 33.086353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165764, 27.020643, 32.623329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921185, 26.853024, 32.891811>,  <34.774437, 26.752451, 33.052902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921185, 26.853024, 32.891811>,  <35.165764, 27.020643, 32.623329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921185, 26.853024, 32.891811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492641, -0.462201, -0.737343,
		0.619218, -0.781516, 0.076173,
		-0.611453, -0.419051, 0.671210,
		34.737747, 26.727308, 33.093174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052235, 26.465122, 32.375217>,  <35.165764, 27.020643, 32.623329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052235, 26.465122, 32.375217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774471, 26.455481, 32.662888>,  <34.607811, 26.449696, 32.835491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774471, 26.455481, 32.662888>,  <35.052235, 26.465122, 32.375217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774471, 26.455481, 32.662888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665126, -0.359886, -0.654285,
		0.274591, -0.932685, 0.233877,
		-0.694411, -0.024103, 0.719175,
		34.566147, 26.448250, 32.878639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793560, 25.750330, 32.474979>,  <35.052235, 26.465122, 32.375217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793560, 25.750330, 32.474979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519005, 26.018438, 32.587841>,  <34.354271, 26.179302, 32.655556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519005, 26.018438, 32.587841>,  <34.793560, 25.750330, 32.474979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519005, 26.018438, 32.587841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632549, -0.358823, -0.686388,
		-0.358823, -0.649603, 0.670270,
		0.686388, -0.670270, -0.282152,
		34.313087, 26.219519, 32.672485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272411, 25.411705, 32.530365>,  <34.793560, 25.750330, 32.474979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272411, 25.411705, 32.530365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112694, 25.775002, 32.480301>,  <34.016861, 25.992979, 32.450264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112694, 25.775002, 32.480301>,  <34.272411, 25.411705, 32.530365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112694, 25.775002, 32.480301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628419, -0.370529, -0.683957,
		-0.667572, -0.194449, 0.718706,
		-0.399296, 0.908239, -0.125159,
		33.992905, 26.047474, 32.442753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539963, 25.307985, 32.408455>,  <34.272411, 25.411705, 32.530365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539963, 25.307985, 32.408455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571175, 25.691532, 32.299286>,  <33.589901, 25.921659, 32.233784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571175, 25.691532, 32.299286>,  <33.539963, 25.307985, 32.408455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571175, 25.691532, 32.299286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706678, -0.139901, -0.693566,
		-0.703219, 0.246992, 0.666692,
		0.078034, 0.958865, -0.272925,
		33.594585, 25.979191, 32.217407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861359, 25.522024, 32.457802>,  <33.539963, 25.307985, 32.408455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861359, 25.522024, 32.457802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069798, 25.756319, 32.209488>,  <33.194859, 25.896896, 32.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069798, 25.756319, 32.209488>,  <32.861359, 25.522024, 32.457802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069798, 25.756319, 32.209488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688308, -0.141673, -0.711449,
		-0.504672, 0.798022, 0.329344,
		0.521093, 0.585739, -0.620783,
		33.226124, 25.932041, 32.023254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393600, 25.998064, 32.260494>,  <32.861359, 25.522024, 32.457802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393600, 25.998064, 32.260494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668186, 26.046627, 31.973711>,  <32.832939, 26.075766, 31.801641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668186, 26.046627, 31.973711>,  <32.393600, 25.998064, 32.260494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668186, 26.046627, 31.973711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719281, -0.031399, -0.694009,
		-0.106770, 0.992106, 0.065771,
		0.686465, 0.121407, -0.716956,
		32.874126, 26.083050, 31.758625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197861, 26.609663, 31.878941>,  <32.393600, 25.998064, 32.260494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197861, 26.609663, 31.878941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429966, 26.397905, 31.631380>,  <32.569229, 26.270851, 31.482843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429966, 26.397905, 31.631380>,  <32.197861, 26.609663, 31.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429966, 26.397905, 31.631380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745221, -0.038569, -0.665701,
		0.328546, 0.847500, -0.416894,
		0.580261, -0.529392, -0.618903,
		32.604046, 26.239088, 31.445709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058678, 26.839827, 31.199991>,  <32.197861, 26.609663, 31.878941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058678, 26.839827, 31.199991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228603, 26.482956, 31.138601>,  <32.330559, 26.268833, 31.101767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228603, 26.482956, 31.138601>,  <32.058678, 26.839827, 31.199991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228603, 26.482956, 31.138601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594386, -0.147011, -0.790628,
		0.682819, 0.427090, -0.592750,
		0.424810, -0.892178, -0.153474,
		32.356045, 26.215302, 31.092560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286198, 26.803318, 30.527693>,  <32.058678, 26.839827, 31.199991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286198, 26.803318, 30.527693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256218, 26.413416, 30.611818>,  <32.238232, 26.179474, 30.662292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256218, 26.413416, 30.611818>,  <32.286198, 26.803318, 30.527693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256218, 26.413416, 30.611818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602521, -0.123788, -0.788444,
		0.794576, -0.185809, -0.578035,
		-0.074946, -0.974757, 0.210313,
		32.233734, 26.120989, 30.674911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196163, 26.435072, 29.926432>,  <32.286198, 26.803318, 30.527693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196163, 26.435072, 29.926432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057236, 26.158785, 30.180134>,  <31.973879, 25.993013, 30.332355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057236, 26.158785, 30.180134>,  <32.196163, 26.435072, 29.926432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057236, 26.158785, 30.180134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617561, -0.340503, -0.708996,
		0.705681, -0.637939, -0.308297,
		-0.347320, -0.690718, 0.634253,
		31.953039, 25.951569, 30.370409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156555, 25.849186, 29.549820>,  <32.196163, 26.435072, 29.926432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156555, 25.849186, 29.549820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927013, 25.763582, 29.866022>,  <31.789289, 25.712219, 30.055742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927013, 25.763582, 29.866022>,  <32.156555, 25.849186, 29.549820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927013, 25.763582, 29.866022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594700, -0.554738, -0.581892,
		0.563053, -0.804031, 0.191065,
		-0.573850, -0.214010, 0.790504,
		31.754858, 25.699379, 30.103172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135929, 25.160686, 29.556738>,  <32.156555, 25.849186, 29.549820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135929, 25.160686, 29.556738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820492, 25.325336, 29.739466>,  <31.631229, 25.424126, 29.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820492, 25.325336, 29.739466>,  <32.135929, 25.160686, 29.556738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820492, 25.325336, 29.739466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601969, -0.365158, -0.710136,
		-0.125497, -0.835000, 0.535747,
		-0.788596, 0.411623, 0.456818,
		31.583914, 25.448824, 29.876511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604067, 24.567558, 29.803568>,  <32.135929, 25.160686, 29.556738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604067, 24.567558, 29.803568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475822, 24.933807, 29.706537>,  <31.398876, 25.153557, 29.648319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475822, 24.933807, 29.706537>,  <31.604067, 24.567558, 29.803568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475822, 24.933807, 29.706537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582680, -0.392554, -0.711607,
		-0.746789, -0.086803, 0.659372,
		-0.320609, 0.915624, -0.242577,
		31.379641, 25.208494, 29.633764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859339, 24.615122, 29.817438>,  <31.604067, 24.567558, 29.803568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859339, 24.615122, 29.817438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042355, 24.823126, 29.528925>,  <31.152164, 24.947927, 29.355818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042355, 24.823126, 29.528925>,  <30.859339, 24.615122, 29.817438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042355, 24.823126, 29.528925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605158, -0.412223, -0.681070,
		-0.651491, 0.748107, 0.126078,
		0.457541, 0.520008, -0.721282,
		31.179617, 24.979128, 29.312540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362734, 24.792839, 29.373583>,  <30.859339, 24.615122, 29.817438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362734, 24.792839, 29.373583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683321, 24.826885, 29.136803>,  <30.875673, 24.847313, 28.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683321, 24.826885, 29.136803>,  <30.362734, 24.792839, 29.373583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683321, 24.826885, 29.136803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512542, -0.412242, -0.753232,
		-0.308137, 0.907090, -0.286774,
		0.801469, 0.085115, -0.591948,
		30.923761, 24.852419, 28.959219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264286, 24.992052, 28.605904>,  <30.362734, 24.792839, 29.373583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264286, 24.992052, 28.605904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618242, 24.808529, 28.573746>,  <30.830616, 24.698416, 28.554451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618242, 24.808529, 28.573746>,  <30.264286, 24.992052, 28.605904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618242, 24.808529, 28.573746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308070, -0.447009, -0.839807,
		0.349372, 0.767905, -0.536899,
		0.884891, -0.458808, -0.080396,
		30.883709, 24.670887, 28.549627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454395, 25.085117, 27.930082>,  <30.264286, 24.992052, 28.605904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454395, 25.085117, 27.930082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624729, 24.761381, 28.091890>,  <30.726929, 24.567141, 28.188974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624729, 24.761381, 28.091890>,  <30.454395, 25.085117, 27.930082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624729, 24.761381, 28.091890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243658, -0.533139, -0.810181,
		0.871376, 0.246439, -0.424231,
		0.425834, -0.809340, 0.404518,
		30.752480, 24.518579, 28.213245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242048, 25.717104, 28.290333>,  <30.454395, 25.085117, 27.930082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242048, 25.717104, 28.290333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978355, 25.865175, 28.552137>,  <29.820141, 25.954018, 28.709221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978355, 25.865175, 28.552137>,  <30.242048, 25.717104, 28.290333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978355, 25.865175, 28.552137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712104, 0.586899, 0.385302,
		-0.241502, 0.720083, -0.650505,
		-0.659230, 0.370176, 0.654511,
		29.780586, 25.976229, 28.748491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102392, 26.449411, 28.237568>,  <30.242048, 25.717104, 28.290333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102392, 26.449411, 28.237568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025200, 26.372843, 28.622507>,  <29.978886, 26.326900, 28.853472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025200, 26.372843, 28.622507>,  <30.102392, 26.449411, 28.237568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025200, 26.372843, 28.622507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570322, 0.776208, 0.268763,
		-0.798431, 0.600715, -0.040620,
		-0.192980, -0.191423, 0.962349,
		29.967306, 26.315416, 28.911211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952026, 27.053749, 28.649940>,  <30.102392, 26.449411, 28.237568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952026, 27.053749, 28.649940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092129, 26.783772, 28.909718>,  <30.176189, 26.621786, 29.065584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092129, 26.783772, 28.909718>,  <29.952026, 27.053749, 28.649940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092129, 26.783772, 28.909718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595615, 0.695614, 0.401701,
		-0.722886, 0.246120, 0.645648,
		0.350255, -0.674942, 0.649442,
		30.197205, 26.581289, 29.104549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339039, 26.883112, 29.055822>,  <29.952026, 27.053749, 28.649940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339039, 26.883112, 29.055822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118971, 26.551287, 29.094061>,  <28.986931, 26.352192, 29.117004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118971, 26.551287, 29.094061>,  <29.339039, 26.883112, 29.055822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118971, 26.551287, 29.094061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143185, 0.206502, 0.967913,
		-0.822687, 0.518826, -0.232392,
		-0.550168, -0.829564, 0.095598,
		28.953920, 26.302418, 29.122740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632240, 26.901228, 29.412601>,  <29.339039, 26.883112, 29.055822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632240, 26.901228, 29.412601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815332, 26.548555, 29.458426>,  <28.925188, 26.336952, 29.485920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815332, 26.548555, 29.458426>,  <28.632240, 26.901228, 29.412601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815332, 26.548555, 29.458426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019299, 0.138674, 0.990150,
		-0.888882, -0.451009, 0.080491,
		0.457729, -0.881680, 0.114560,
		28.952652, 26.284052, 29.492794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195587, 26.485851, 29.642382>,  <28.632240, 26.901228, 29.412601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195587, 26.485851, 29.642382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554701, 26.385931, 29.787477>,  <28.770170, 26.325979, 29.874535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554701, 26.385931, 29.787477>,  <28.195587, 26.485851, 29.642382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554701, 26.385931, 29.787477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299407, 0.257869, 0.918618,
		-0.323012, -0.933329, 0.156719,
		0.897785, -0.249802, 0.362740,
		28.824036, 26.310991, 29.896299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098631, 26.208221, 30.391859>,  <28.195587, 26.485851, 29.642382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098631, 26.208221, 30.391859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490055, 26.283422, 30.358208>,  <28.724909, 26.328543, 30.338017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490055, 26.283422, 30.358208>,  <28.098631, 26.208221, 30.391859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490055, 26.283422, 30.358208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018434, 0.326863, 0.944892,
		0.205141, -0.926183, 0.316389,
		0.978559, 0.188003, -0.084126,
		28.783623, 26.339825, 30.332970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443546, 25.792288, 30.847326>,  <28.098631, 26.208221, 30.391859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443546, 25.792288, 30.847326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679482, 26.108006, 30.779085>,  <28.821043, 26.297436, 30.738140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679482, 26.108006, 30.779085>,  <28.443546, 25.792288, 30.847326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679482, 26.108006, 30.779085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097168, 0.279106, 0.955332,
		0.801656, -0.546912, 0.241320,
		0.589836, 0.789295, -0.170604,
		28.856432, 26.344793, 30.727903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904152, 25.858168, 31.382616>,  <28.443546, 25.792288, 30.847326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904152, 25.858168, 31.382616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939619, 26.225571, 31.228483>,  <28.960899, 26.446012, 31.136003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939619, 26.225571, 31.228483>,  <28.904152, 25.858168, 31.382616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939619, 26.225571, 31.228483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060969, 0.381125, 0.922511,
		0.994194, -0.105289, -0.022208,
		0.088667, 0.918508, -0.385331,
		28.966219, 26.501123, 31.112885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353867, 26.227762, 31.809822>,  <28.904152, 25.858168, 31.382616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353867, 26.227762, 31.809822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211206, 26.549463, 31.619675>,  <29.125610, 26.742485, 31.505587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211206, 26.549463, 31.619675>,  <29.353867, 26.227762, 31.809822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211206, 26.549463, 31.619675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169995, 0.556202, 0.813474,
		0.918641, 0.209317, -0.335090,
		-0.356652, 0.804255, -0.475367,
		29.104212, 26.790739, 31.477064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860420, 26.823139, 31.955822>,  <29.353867, 26.227762, 31.809822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860420, 26.823139, 31.955822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508051, 26.976006, 31.844162>,  <29.296629, 27.067726, 31.777166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508051, 26.976006, 31.844162>,  <29.860420, 26.823139, 31.955822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508051, 26.976006, 31.844162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077747, 0.698689, 0.711188,
		0.466832, 0.604799, -0.645203,
		-0.880922, 0.382168, -0.279149,
		29.243774, 27.090656, 31.760418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956356, 27.511469, 31.824097>,  <29.860420, 26.823139, 31.955822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956356, 27.511469, 31.824097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563761, 27.486408, 31.896488>,  <29.328203, 27.471373, 31.939924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563761, 27.486408, 31.896488>,  <29.956356, 27.511469, 31.824097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563761, 27.486408, 31.896488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097183, 0.651356, 0.752523,
		-0.165029, 0.756181, -0.633210,
		-0.981489, -0.062651, 0.180981,
		29.269314, 27.467613, 31.950783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678503, 28.194151, 31.679649>,  <29.956356, 27.511469, 31.824097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678503, 28.194151, 31.679649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439350, 27.997179, 31.932648>,  <29.295858, 27.878996, 32.084446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439350, 27.997179, 31.932648>,  <29.678503, 28.194151, 31.679649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439350, 27.997179, 31.932648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180720, 0.685936, 0.704863,
		-0.780946, 0.535730, -0.321117,
		-0.597882, -0.492427, 0.632497,
		29.259985, 27.849451, 32.122398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341757, 28.696199, 31.957193>,  <29.678503, 28.194151, 31.679649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341757, 28.696199, 31.957193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257957, 28.410822, 32.224659>,  <29.207678, 28.239595, 32.385139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257957, 28.410822, 32.224659>,  <29.341757, 28.696199, 31.957193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257957, 28.410822, 32.224659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036385, 0.677677, 0.734459,
		-0.977132, 0.178196, -0.116012,
		-0.209496, -0.713442, 0.668664,
		29.195108, 28.196789, 32.425259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972446, 29.078442, 32.343754>,  <29.341757, 28.696199, 31.957193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972446, 29.078442, 32.343754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119202, 28.760954, 32.537827>,  <29.207254, 28.570461, 32.654270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119202, 28.760954, 32.537827>,  <28.972446, 29.078442, 32.343754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119202, 28.760954, 32.537827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174915, 0.571109, 0.802022,
		-0.913673, -0.209385, 0.348366,
		0.366887, -0.793721, 0.485182,
		29.229267, 28.522839, 32.683380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661163, 29.145502, 32.944687>,  <28.972446, 29.078442, 32.343754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661163, 29.145502, 32.944687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978613, 28.914967, 33.022663>,  <29.169083, 28.776646, 33.069447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978613, 28.914967, 33.022663>,  <28.661163, 29.145502, 32.944687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978613, 28.914967, 33.022663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214392, 0.564766, 0.796917,
		-0.569387, -0.590657, 0.571772,
		0.793622, -0.576337, 0.194938,
		29.216700, 28.742065, 33.081146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641232, 29.116764, 33.672993>,  <28.661163, 29.145502, 32.944687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641232, 29.116764, 33.672993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010517, 29.005606, 33.566818>,  <29.232088, 28.938911, 33.503113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010517, 29.005606, 33.566818>,  <28.641232, 29.116764, 33.672993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010517, 29.005606, 33.566818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356540, 0.361685, 0.861431,
		-0.143385, -0.889920, 0.432993,
		0.923212, -0.277896, -0.265431,
		29.287481, 28.922237, 33.487190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898149, 28.765522, 34.182320>,  <28.641232, 29.116764, 33.672993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898149, 28.765522, 34.182320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221710, 28.902304, 33.991013>,  <29.415846, 28.984373, 33.876228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221710, 28.902304, 33.991013>,  <28.898149, 28.765522, 34.182320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221710, 28.902304, 33.991013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378842, 0.318935, 0.868769,
		0.449618, -0.883938, 0.128440,
		0.808902, 0.341956, -0.478271,
		29.464380, 29.004890, 33.847530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353918, 28.727179, 34.717140>,  <28.898149, 28.765522, 34.182320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353918, 28.727179, 34.717140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561291, 28.935513, 34.445858>,  <29.685715, 29.060513, 34.283089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561291, 28.935513, 34.445858>,  <29.353918, 28.727179, 34.717140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561291, 28.935513, 34.445858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469987, 0.489026, 0.734824,
		0.714380, -0.699703, 0.008742,
		0.518433, 0.520835, -0.678202,
		29.716820, 29.091763, 34.242397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071236, 28.581545, 34.770824>,  <29.353918, 28.727179, 34.717140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071236, 28.581545, 34.770824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043684, 28.951445, 34.621109>,  <30.027153, 29.173384, 34.531281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043684, 28.951445, 34.621109>,  <30.071236, 28.581545, 34.770824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043684, 28.951445, 34.621109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461855, 0.362114, 0.809669,
		0.884277, -0.117098, -0.452043,
		-0.068881, 0.924749, -0.374292,
		30.023020, 29.228870, 34.508823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762754, 28.865244, 34.581814>,  <30.071236, 28.581545, 34.770824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762754, 28.865244, 34.581814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524818, 29.179066, 34.651829>,  <30.382057, 29.367359, 34.693836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524818, 29.179066, 34.651829>,  <30.762754, 28.865244, 34.581814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524818, 29.179066, 34.651829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614872, 0.303826, 0.727752,
		0.517781, 0.540521, -0.663129,
		-0.594841, 0.784555, 0.175036,
		30.346367, 29.414433, 34.704338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225019, 29.369667, 34.645748>,  <30.762754, 28.865244, 34.581814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225019, 29.369667, 34.645748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909819, 29.541622, 34.822041>,  <30.720697, 29.644796, 34.927818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909819, 29.541622, 34.822041>,  <31.225019, 29.369667, 34.645748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909819, 29.541622, 34.822041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603689, 0.398967, 0.690206,
		0.120875, 0.809950, -0.573907,
		-0.788003, 0.429890, 0.440733,
		30.673418, 29.670589, 34.954262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426966, 29.934992, 34.962654>,  <31.225019, 29.369667, 34.645748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426966, 29.934992, 34.962654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068283, 29.945095, 35.139416>,  <30.853073, 29.951157, 35.245472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068283, 29.945095, 35.139416>,  <31.426966, 29.934992, 34.962654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068283, 29.945095, 35.139416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342177, 0.672844, 0.655893,
		-0.280764, 0.739353, -0.611988,
		-0.896709, 0.025257, 0.441900,
		30.799271, 29.952673, 35.271984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224243, 30.598894, 35.122746>,  <31.426966, 29.934992, 34.962654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224243, 30.598894, 35.122746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039474, 30.368933, 35.392891>,  <30.928614, 30.230955, 35.554977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039474, 30.368933, 35.392891>,  <31.224243, 30.598894, 35.122746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039474, 30.368933, 35.392891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378135, 0.561137, 0.736301,
		-0.802273, 0.595492, -0.041811,
		-0.461923, -0.574904, 0.675361,
		30.900898, 30.196461, 35.595501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929485, 31.093119, 35.597122>,  <31.224243, 30.598894, 35.122746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929485, 31.093119, 35.597122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928902, 30.748354, 35.799946>,  <30.928551, 30.541494, 35.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928902, 30.748354, 35.799946>,  <30.929485, 31.093119, 35.597122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928902, 30.748354, 35.799946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469304, 0.447159, 0.761448,
		-0.883035, 0.239076, 0.403845,
		-0.001461, -0.861912, 0.507056,
		30.928463, 30.489780, 35.952065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766813, 31.291117, 36.247040>,  <30.929485, 31.093119, 35.597122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766813, 31.291117, 36.247040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957117, 30.939953, 36.268665>,  <31.071301, 30.729254, 36.281643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957117, 30.939953, 36.268665>,  <30.766813, 31.291117, 36.247040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957117, 30.939953, 36.268665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454681, 0.298092, 0.839290,
		-0.752939, -0.374718, 0.540990,
		0.475761, -0.877911, 0.054068,
		31.099846, 30.676580, 36.284885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935415, 31.180119, 36.936714>,  <30.766813, 31.291117, 36.247040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935415, 31.180119, 36.936714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172859, 30.887398, 36.802795>,  <31.315325, 30.711765, 36.722443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172859, 30.887398, 36.802795>,  <30.935415, 31.180119, 36.936714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172859, 30.887398, 36.802795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657789, 0.201546, 0.725736,
		-0.463619, -0.651032, 0.601012,
		0.593609, -0.731804, -0.334801,
		31.350943, 30.667856, 36.702354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124950, 30.837572, 37.518349>,  <30.935415, 31.180119, 36.936714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124950, 30.837572, 37.518349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426668, 30.712276, 37.287552>,  <31.607698, 30.637098, 37.149075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426668, 30.712276, 37.287552>,  <31.124950, 30.837572, 37.518349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426668, 30.712276, 37.287552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637962, 0.142133, 0.756837,
		-0.155061, -0.938978, 0.307044,
		0.754295, -0.313239, -0.576993,
		31.652956, 30.618305, 37.114452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492958, 30.242683, 37.813778>,  <31.124950, 30.837572, 37.518349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492958, 30.242683, 37.813778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744644, 30.410110, 37.551819>,  <31.895655, 30.510567, 37.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744644, 30.410110, 37.551819>,  <31.492958, 30.242683, 37.813778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744644, 30.410110, 37.551819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641667, 0.195719, 0.741591,
		0.438582, -0.886846, -0.145431,
		0.629213, 0.418567, -0.654899,
		31.933409, 30.535681, 37.355350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140640, 30.012148, 38.064095>,  <31.492958, 30.242683, 37.813778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140640, 30.012148, 38.064095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208378, 30.340157, 37.845413>,  <32.249020, 30.536961, 37.714203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208378, 30.340157, 37.845413>,  <32.140640, 30.012148, 38.064095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208378, 30.340157, 37.845413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632780, 0.334815, 0.698204,
		0.755587, -0.464182, -0.462194,
		0.169344, 0.820021, -0.546707,
		32.259182, 30.586163, 37.681400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857853, 30.039091, 38.056110>,  <32.140640, 30.012148, 38.064095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857853, 30.039091, 38.056110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724831, 30.401636, 37.951870>,  <32.645020, 30.619164, 37.889324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724831, 30.401636, 37.951870>,  <32.857853, 30.039091, 38.056110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724831, 30.401636, 37.951870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704570, 0.422455, 0.570187,
		0.626890, 0.006003, -0.779085,
		-0.332551, 0.906364, -0.260603,
		32.625065, 30.673546, 37.873688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551376, 30.439831, 37.914543>,  <32.857853, 30.039091, 38.056110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551376, 30.439831, 37.914543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262726, 30.710621, 37.972450>,  <33.089535, 30.873095, 38.007195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262726, 30.710621, 37.972450>,  <33.551376, 30.439831, 37.914543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262726, 30.710621, 37.972450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650570, 0.591667, 0.476119,
		0.236668, 0.437760, -0.867383,
		-0.721628, 0.676975, 0.144765,
		33.046238, 30.913713, 38.015881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832951, 31.100130, 37.654747>,  <33.551376, 30.439831, 37.914543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832951, 31.100130, 37.654747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517414, 31.215130, 37.872028>,  <33.328091, 31.284130, 38.002399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517414, 31.215130, 37.872028>,  <33.832951, 31.100130, 37.654747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517414, 31.215130, 37.872028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583766, 0.626921, 0.515934,
		-0.192216, 0.724095, -0.662374,
		-0.788841, 0.287501, 0.543207,
		33.280762, 31.301380, 38.034992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035023, 31.736746, 37.851173>,  <33.832951, 31.100130, 37.654747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035023, 31.736746, 37.851173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724010, 31.686867, 38.097717>,  <33.537403, 31.656939, 38.245644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724010, 31.686867, 38.097717>,  <34.035023, 31.736746, 37.851173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724010, 31.686867, 38.097717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408192, 0.645506, 0.645524,
		-0.478361, 0.753506, -0.450998,
		-0.777528, -0.124699, 0.616360,
		33.490753, 31.649456, 38.282627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729637, 32.293781, 37.888218>,  <34.035023, 31.736746, 37.851173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729637, 32.293781, 37.888218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664494, 32.106255, 38.235477>,  <33.625408, 31.993738, 38.443832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664494, 32.106255, 38.235477>,  <33.729637, 32.293781, 37.888218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664494, 32.106255, 38.235477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481110, 0.730466, 0.484719,
		-0.861399, 0.496619, 0.106588,
		-0.162862, -0.468817, 0.868151,
		33.615635, 31.965609, 38.495922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737976, 32.815716, 38.358181>,  <33.729637, 32.293781, 37.888218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737976, 32.815716, 38.358181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772392, 32.480038, 38.572971>,  <33.793041, 32.278629, 38.701847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772392, 32.480038, 38.572971>,  <33.737976, 32.815716, 38.358181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772392, 32.480038, 38.572971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696222, 0.436176, 0.570110,
		-0.712651, 0.324802, 0.621797,
		0.086040, -0.839199, 0.536976,
		33.798203, 32.228279, 38.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718224, 33.015491, 39.127445>,  <33.737976, 32.815716, 38.358181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718224, 33.015491, 39.127445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924408, 32.676014, 39.080070>,  <34.048119, 32.472328, 39.051647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924408, 32.676014, 39.080070>,  <33.718224, 33.015491, 39.127445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924408, 32.676014, 39.080070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773752, 0.401573, 0.489946,
		-0.368253, -0.344185, 0.863671,
		0.515458, -0.848691, -0.118433,
		34.079044, 32.421406, 39.044540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961037, 32.847279, 39.768948>,  <33.718224, 33.015491, 39.127445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961037, 32.847279, 39.768948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203667, 32.643192, 39.525063>,  <34.349243, 32.520741, 39.378731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203667, 32.643192, 39.525063>,  <33.961037, 32.847279, 39.768948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203667, 32.643192, 39.525063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794316, 0.421387, 0.437601,
		0.033653, -0.749740, 0.660876,
		0.606572, -0.510218, -0.609711,
		34.385639, 32.490128, 39.342148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369129, 32.558708, 40.306664>,  <33.961037, 32.847279, 39.768948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369129, 32.558708, 40.306664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531624, 32.553150, 39.941196>,  <34.629120, 32.549816, 39.721916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531624, 32.553150, 39.941196>,  <34.369129, 32.558708, 40.306664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531624, 32.553150, 39.941196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781358, 0.523696, 0.339445,
		0.473767, -0.851792, 0.223596,
		0.406233, -0.013891, -0.913664,
		34.653492, 32.548985, 39.667099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163864, 32.416157, 40.490982>,  <34.369129, 32.558708, 40.306664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163864, 32.416157, 40.490982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106510, 32.566208, 40.124657>,  <35.072098, 32.656239, 39.904861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106510, 32.566208, 40.124657>,  <35.163864, 32.416157, 40.490982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106510, 32.566208, 40.124657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765340, 0.628721, 0.137708,
		0.627451, -0.681165, -0.377253,
		-0.143385, 0.375132, -0.915815,
		35.063496, 32.678749, 39.849911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828247, 32.484745, 40.300648>,  <35.163864, 32.416157, 40.490982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828247, 32.484745, 40.300648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632576, 32.733269, 40.055801>,  <35.515175, 32.882381, 39.908894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632576, 32.733269, 40.055801>,  <35.828247, 32.484745, 40.300648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632576, 32.733269, 40.055801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684947, 0.708146, 0.171397,
		0.539955, -0.335421, -0.771972,
		-0.489179, 0.621307, -0.612112,
		35.485821, 32.919662, 39.872169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288700, 32.787968, 40.080364>,  <35.828247, 32.484745, 40.300648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288700, 32.787968, 40.080364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016930, 33.059353, 39.968601>,  <35.853867, 33.222183, 39.901543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016930, 33.059353, 39.968601>,  <36.288700, 32.787968, 40.080364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016930, 33.059353, 39.968601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635037, 0.734483, 0.239297,
		0.367572, -0.014847, -0.929877,
		-0.679426, 0.678465, -0.279404,
		35.813103, 33.262894, 39.884781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618404, 33.238335, 39.789024>,  <36.288700, 32.787968, 40.080364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618404, 33.238335, 39.789024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285122, 33.445332, 39.866955>,  <36.085152, 33.569530, 39.913715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285122, 33.445332, 39.866955>,  <36.618404, 33.238335, 39.789024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285122, 33.445332, 39.866955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550734, 0.808203, 0.208567,
		-0.049529, 0.281079, -0.958406,
		-0.833210, 0.517496, 0.194829,
		36.035160, 33.600582, 39.925404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563995, 33.851631, 39.353184>,  <36.618404, 33.238335, 39.789024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563995, 33.851631, 39.353184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311337, 33.922169, 39.655159>,  <36.159740, 33.964489, 39.836346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311337, 33.922169, 39.655159>,  <36.563995, 33.851631, 39.353184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311337, 33.922169, 39.655159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271811, 0.962347, 0.002630,
		-0.726048, 0.206861, -0.655791,
		-0.631643, 0.176342, 0.754937,
		36.121845, 33.975071, 39.881641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196877, 34.495789, 39.157860>,  <36.563995, 33.851631, 39.353184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196877, 34.495789, 39.157860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166252, 34.448753, 39.553902>,  <36.147877, 34.420532, 39.791527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166252, 34.448753, 39.553902>,  <36.196877, 34.495789, 39.157860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166252, 34.448753, 39.553902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142672, 0.981510, 0.127602,
		-0.986804, 0.151030, -0.058372,
		-0.076564, -0.117590, 0.990106,
		36.143284, 34.413475, 39.850933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741386, 35.164455, 39.441406>,  <36.196877, 34.495789, 39.157860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741386, 35.164455, 39.441406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633736, 35.542866, 39.369183>,  <35.569145, 35.769913, 39.325848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633736, 35.542866, 39.369183>,  <35.741386, 35.164455, 39.441406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633736, 35.542866, 39.369183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940400, -0.298591, -0.162763,
		-0.207892, 0.125998, 0.970003,
		-0.269126, 0.946027, -0.180563,
		35.552998, 35.826675, 39.315014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154606, 35.247192, 39.840446>,  <35.741386, 35.164455, 39.441406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154606, 35.247192, 39.840446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138325, 35.526649, 39.554722>,  <35.128555, 35.694324, 39.383289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138325, 35.526649, 39.554722>,  <35.154606, 35.247192, 39.840446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138325, 35.526649, 39.554722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949690, -0.249235, -0.189659,
		-0.310535, 0.670652, 0.673642,
		-0.040700, 0.698647, -0.714308,
		35.126114, 35.736244, 39.340431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557034, 35.739910, 39.957527>,  <35.154606, 35.247192, 39.840446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557034, 35.739910, 39.957527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631264, 35.749645, 39.564594>,  <34.675804, 35.755486, 39.328835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631264, 35.749645, 39.564594>,  <34.557034, 35.739910, 39.957527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631264, 35.749645, 39.564594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971017, -0.148693, -0.187128,
		-0.150620, 0.988584, -0.003958,
		0.185580, 0.024342, -0.982328,
		34.686939, 35.756947, 39.269897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922672, 36.085018, 39.608681>,  <34.557034, 35.739910, 39.957527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922672, 36.085018, 39.608681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112171, 35.899590, 39.309170>,  <34.225868, 35.788330, 39.129463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112171, 35.899590, 39.309170>,  <33.922672, 36.085018, 39.608681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112171, 35.899590, 39.309170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875738, -0.158198, -0.456131,
		0.092997, 0.871820, -0.480917,
		0.473745, -0.463576, -0.748774,
		34.254295, 35.760517, 39.084538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615021, 36.387081, 38.998993>,  <33.922672, 36.085018, 39.608681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615021, 36.387081, 38.998993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797581, 36.051178, 38.881340>,  <33.907116, 35.849636, 38.810749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797581, 36.051178, 38.881340>,  <33.615021, 36.387081, 38.998993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797581, 36.051178, 38.881340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787660, -0.227541, -0.572553,
		0.413877, 0.492988, -0.765290,
		0.456397, -0.839755, -0.294133,
		33.934502, 35.799252, 38.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491978, 36.319622, 38.304752>,  <33.615021, 36.387081, 38.998993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491978, 36.319622, 38.304752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577976, 35.956722, 38.449352>,  <33.629578, 35.738983, 38.536110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577976, 35.956722, 38.449352>,  <33.491978, 36.319622, 38.304752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577976, 35.956722, 38.449352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817236, -0.369792, -0.442017,
		0.534696, -0.200394, -0.820940,
		0.214999, -0.907246, 0.361495,
		33.642475, 35.684547, 38.557800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484913, 35.884583, 37.624401>,  <33.491978, 36.319622, 38.304752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484913, 35.884583, 37.624401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509068, 35.625347, 37.928070>,  <33.523560, 35.469807, 38.110271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509068, 35.625347, 37.928070>,  <33.484913, 35.884583, 37.624401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509068, 35.625347, 37.928070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682676, -0.581684, -0.442265,
		0.728222, -0.491560, -0.477558,
		0.060388, -0.648084, 0.759171,
		33.527184, 35.430923, 38.155823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686676, 35.275448, 37.310032>,  <33.484913, 35.884583, 37.624401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686676, 35.275448, 37.310032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512081, 35.191181, 37.659912>,  <33.407326, 35.140621, 37.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512081, 35.191181, 37.659912>,  <33.686676, 35.275448, 37.310032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512081, 35.191181, 37.659912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673751, -0.567778, -0.472956,
		0.596271, -0.795769, 0.105892,
		-0.436487, -0.210666, 0.874700,
		33.381134, 35.127983, 37.922321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481590, 34.553581, 37.289574>,  <33.686676, 35.275448, 37.310032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481590, 34.553581, 37.289574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241611, 34.700882, 37.573677>,  <33.097626, 34.789261, 37.744137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241611, 34.700882, 37.573677>,  <33.481590, 34.553581, 37.289574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241611, 34.700882, 37.573677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784928, -0.442676, -0.433504,
		0.154776, -0.817577, 0.554628,
		-0.599944, 0.368248, 0.710255,
		33.061630, 34.811356, 37.786755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070877, 34.047203, 37.407936>,  <33.481590, 34.553581, 37.289574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070877, 34.047203, 37.407936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872559, 34.360096, 37.558826>,  <32.753567, 34.547832, 37.649361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872559, 34.360096, 37.558826>,  <33.070877, 34.047203, 37.407936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872559, 34.360096, 37.558826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858797, -0.377066, -0.346827,
		-0.129061, -0.495915, 0.858727,
		-0.495794, 0.782234, 0.377225,
		32.723820, 34.594765, 37.671993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517948, 33.688461, 37.778847>,  <33.070877, 34.047203, 37.407936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517948, 33.688461, 37.778847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419743, 34.067635, 37.697716>,  <32.360817, 34.295139, 37.649036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419743, 34.067635, 37.697716>,  <32.517948, 33.688461, 37.778847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419743, 34.067635, 37.697716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792577, -0.316764, -0.521038,
		-0.558160, 0.032835, 0.829083,
		-0.245516, 0.947936, -0.202829,
		32.346088, 34.352016, 37.636868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876408, 33.774990, 37.956291>,  <32.517948, 33.688461, 37.778847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876408, 33.774990, 37.956291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916710, 34.084320, 37.705910>,  <31.940891, 34.269917, 37.555679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916710, 34.084320, 37.705910>,  <31.876408, 33.774990, 37.956291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916710, 34.084320, 37.705910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822859, -0.288877, -0.489340,
		-0.559242, 0.564376, 0.607230,
		0.100757, 0.773324, -0.625954,
		31.946938, 34.316319, 37.518124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237642, 34.163918, 37.952946>,  <31.876408, 33.774990, 37.956291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237642, 34.163918, 37.952946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411310, 34.232788, 37.599255>,  <31.515511, 34.274109, 37.387039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411310, 34.232788, 37.599255>,  <31.237642, 34.163918, 37.952946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411310, 34.232788, 37.599255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858148, -0.219512, -0.464109,
		-0.274005, 0.960297, 0.052444,
		0.434171, 0.172173, -0.884224,
		31.541561, 34.284439, 37.333988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610357, 34.409801, 37.546528>,  <31.237642, 34.163918, 37.952946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610357, 34.409801, 37.546528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882059, 34.361576, 37.256954>,  <31.045080, 34.332642, 37.083210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882059, 34.361576, 37.256954>,  <30.610357, 34.409801, 37.546528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882059, 34.361576, 37.256954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701505, -0.396502, -0.592180,
		-0.215645, 0.910083, -0.353902,
		0.679256, -0.120563, -0.723931,
		31.085836, 34.325409, 37.039776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306499, 34.717789, 36.950958>,  <30.610357, 34.409801, 37.546528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306499, 34.717789, 36.950958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582834, 34.462337, 36.815369>,  <30.748634, 34.309067, 36.734013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582834, 34.462337, 36.815369>,  <30.306499, 34.717789, 36.950958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582834, 34.462337, 36.815369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636762, -0.315341, -0.703629,
		0.342461, 0.701940, -0.624500,
		0.690836, -0.638624, -0.338977,
		30.790085, 34.270752, 36.713676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343645, 34.748196, 36.163788>,  <30.306499, 34.717789, 36.950958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343645, 34.748196, 36.163788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494829, 34.401398, 36.293690>,  <30.585539, 34.193317, 36.371632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494829, 34.401398, 36.293690>,  <30.343645, 34.748196, 36.163788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494829, 34.401398, 36.293690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625990, -0.497755, -0.600314,
		0.682117, 0.023604, -0.730862,
		0.377960, -0.866996, 0.324752,
		30.608217, 34.141300, 36.391113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529171, 34.349983, 35.535095>,  <30.343645, 34.748196, 36.163788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529171, 34.349983, 35.535095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504337, 34.070866, 35.820538>,  <30.489437, 33.903397, 35.991802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504337, 34.070866, 35.820538>,  <30.529171, 34.349983, 35.535095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504337, 34.070866, 35.820538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373468, -0.646800, -0.664960,
		0.925563, -0.307790, -0.220449,
		-0.062082, -0.697793, 0.713604,
		30.485712, 33.861526, 36.034618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838104, 33.711376, 35.222443>,  <30.529171, 34.349983, 35.535095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838104, 33.711376, 35.222443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627098, 33.578693, 35.535290>,  <30.500494, 33.499084, 35.722996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627098, 33.578693, 35.535290>,  <30.838104, 33.711376, 35.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627098, 33.578693, 35.535290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283770, -0.798951, -0.530237,
		0.800752, -0.501648, 0.327330,
		-0.527513, -0.331702, 0.782115,
		30.468843, 33.479183, 35.769924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037985, 33.073063, 35.226711>,  <30.838104, 33.711376, 35.222443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037985, 33.073063, 35.226711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692318, 33.094261, 35.426876>,  <30.484919, 33.106979, 35.546974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692318, 33.094261, 35.426876>,  <31.037985, 33.073063, 35.226711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692318, 33.094261, 35.426876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330767, -0.809250, -0.485498,
		0.379226, -0.585069, 0.716856,
		-0.864165, 0.052999, 0.500410,
		30.433069, 33.110161, 35.577000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918207, 32.522804, 35.554157>,  <31.037985, 33.073063, 35.226711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918207, 32.522804, 35.554157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552933, 32.672836, 35.490402>,  <30.333767, 32.762856, 35.452148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552933, 32.672836, 35.490402>,  <30.918207, 32.522804, 35.554157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552933, 32.672836, 35.490402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277938, -0.859212, -0.429540,
		-0.298059, -0.347951, 0.888871,
		-0.913188, 0.375079, -0.159387,
		30.278976, 32.785358, 35.442585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489843, 31.957930, 35.497150>,  <30.918207, 32.522804, 35.554157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489843, 31.957930, 35.497150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281160, 32.256145, 35.331264>,  <30.155951, 32.435074, 35.231731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281160, 32.256145, 35.331264>,  <30.489843, 31.957930, 35.497150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281160, 32.256145, 35.331264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465933, -0.656212, -0.593542,
		-0.714652, -0.116426, 0.689723,
		-0.521708, 0.745540, -0.414717,
		30.124647, 32.479809, 35.206848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717594, 31.669285, 35.356468>,  <30.489843, 31.957930, 35.497150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717594, 31.669285, 35.356468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800940, 31.975561, 35.113056>,  <29.850946, 32.159328, 34.967010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800940, 31.975561, 35.113056>,  <29.717594, 31.669285, 35.356468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800940, 31.975561, 35.113056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345209, -0.524562, -0.778244,
		-0.915104, 0.372227, 0.155023,
		0.208364, 0.765690, -0.608525,
		29.863449, 32.205269, 34.930500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107086, 31.535772, 34.900768>,  <29.717594, 31.669285, 35.356468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107086, 31.535772, 34.900768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356554, 31.804295, 34.740578>,  <29.506235, 31.965408, 34.644463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356554, 31.804295, 34.740578>,  <29.107086, 31.535772, 34.900768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356554, 31.804295, 34.740578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131807, -0.414679, -0.900371,
		-0.770495, 0.614320, -0.170140,
		0.623670, 0.671306, -0.400480,
		29.543655, 32.005688, 34.620434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726894, 31.837626, 34.255955>,  <29.107086, 31.535772, 34.900768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726894, 31.837626, 34.255955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100737, 31.933218, 34.150578>,  <29.325041, 31.990574, 34.087349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100737, 31.933218, 34.150578>,  <28.726894, 31.837626, 34.255955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100737, 31.933218, 34.150578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141008, -0.431035, -0.891249,
		-0.326547, 0.870113, -0.369149,
		0.934604, 0.238982, -0.263446,
		29.381117, 32.004913, 34.071545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686583, 32.009281, 33.608002>,  <28.726894, 31.837626, 34.255955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686583, 32.009281, 33.608002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076441, 31.942003, 33.667030>,  <29.310356, 31.901636, 33.702446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076441, 31.942003, 33.667030>,  <28.686583, 32.009281, 33.608002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076441, 31.942003, 33.667030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088647, -0.315305, -0.944841,
		0.205448, 0.933966, -0.292401,
		0.974645, -0.168195, 0.147572,
		29.368834, 31.891544, 33.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982016, 32.236801, 33.068253>,  <28.686583, 32.009281, 33.608002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982016, 32.236801, 33.068253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268446, 31.984222, 33.187252>,  <29.440304, 31.832674, 33.258652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268446, 31.984222, 33.187252>,  <28.982016, 32.236801, 33.068253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268446, 31.984222, 33.187252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098447, -0.330585, -0.938628,
		0.691046, 0.701416, -0.174560,
		0.716075, -0.631450, 0.297502,
		29.483269, 31.794786, 33.276501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600950, 32.337437, 32.700710>,  <28.982016, 32.236801, 33.068253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600950, 32.337437, 32.700710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613047, 31.957127, 32.824074>,  <29.620304, 31.728941, 32.898090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613047, 31.957127, 32.824074>,  <29.600950, 32.337437, 32.700710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613047, 31.957127, 32.824074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089562, -0.304728, -0.948219,
		0.995522, 0.056298, 0.075938,
		0.030242, -0.950774, 0.308406,
		29.622120, 31.671894, 32.916595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167105, 32.034142, 32.324020>,  <29.600950, 32.337437, 32.700710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167105, 32.034142, 32.324020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934509, 31.733122, 32.447662>,  <29.794952, 31.552511, 32.521847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934509, 31.733122, 32.447662>,  <30.167105, 32.034142, 32.324020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934509, 31.733122, 32.447662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151802, -0.473634, -0.867540,
		0.799266, -0.457543, 0.389651,
		-0.581489, -0.752546, 0.309104,
		29.760063, 31.507359, 32.540394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606983, 31.435686, 32.257790>,  <30.167105, 32.034142, 32.324020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606983, 31.435686, 32.257790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223133, 31.326830, 32.286232>,  <29.992823, 31.261517, 32.303295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223133, 31.326830, 32.286232>,  <30.606983, 31.435686, 32.257790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223133, 31.326830, 32.286232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058345, -0.439883, -0.896158,
		0.275156, -0.855829, 0.438002,
		-0.959627, -0.272139, 0.071103,
		29.935246, 31.245188, 32.307564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656593, 30.719770, 32.061584>,  <30.606983, 31.435686, 32.257790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656593, 30.719770, 32.061584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263229, 30.790632, 32.045959>,  <30.027212, 30.833149, 32.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263229, 30.790632, 32.045959>,  <30.656593, 30.719770, 32.061584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263229, 30.790632, 32.045959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081753, -0.624998, -0.776333,
		-0.161945, -0.760258, 0.629111,
		-0.983407, 0.177155, -0.039062,
		29.968206, 30.843779, 32.034241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366344, 30.143326, 32.170193>,  <30.656593, 30.719770, 32.061584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366344, 30.143326, 32.170193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112904, 30.352312, 31.941956>,  <29.960838, 30.477705, 31.805014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112904, 30.352312, 31.941956>,  <30.366344, 30.143326, 32.170193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112904, 30.352312, 31.941956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090976, -0.682092, -0.725585,
		-0.768292, -0.511642, 0.384643,
		-0.633602, 0.522467, -0.570593,
		29.922823, 30.509052, 31.770779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958950, 29.713882, 31.868509>,  <30.366344, 30.143326, 32.170193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958950, 29.713882, 31.868509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886637, 30.026476, 31.629646>,  <29.843248, 30.214031, 31.486328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886637, 30.026476, 31.629646>,  <29.958950, 29.713882, 31.868509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886637, 30.026476, 31.629646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144399, -0.621674, -0.769850,
		-0.972865, -0.052948, 0.225235,
		-0.180785, 0.781484, -0.597159,
		29.832401, 30.260921, 31.450499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457451, 29.397911, 31.440666>,  <29.958950, 29.713882, 31.868509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457451, 29.397911, 31.440666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592726, 29.724367, 31.253242>,  <29.673891, 29.920240, 31.140789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592726, 29.724367, 31.253242>,  <29.457451, 29.397911, 31.440666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592726, 29.724367, 31.253242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030708, -0.488061, -0.872269,
		-0.940578, 0.309378, -0.139994,
		0.338186, 0.816139, -0.468560,
		29.694181, 29.969208, 31.112675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935638, 29.583447, 30.854197>,  <29.457451, 29.397911, 31.440666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935638, 29.583447, 30.854197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304270, 29.721575, 30.783264>,  <29.525448, 29.804453, 30.740705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304270, 29.721575, 30.783264>,  <28.935638, 29.583447, 30.854197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304270, 29.721575, 30.783264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040146, -0.539145, -0.841256,
		-0.386111, 0.768164, -0.510727,
		0.921578, 0.345322, -0.177331,
		29.580744, 29.825171, 30.730064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966299, 29.637327, 30.126030>,  <28.935638, 29.583447, 30.854197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966299, 29.637327, 30.126030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360319, 29.652342, 30.193281>,  <29.596731, 29.661350, 30.233631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360319, 29.652342, 30.193281>,  <28.966299, 29.637327, 30.126030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360319, 29.652342, 30.193281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157776, -0.588386, -0.793038,
		0.069158, 0.807709, -0.585512,
		0.985050, 0.037535, 0.168128,
		29.655834, 29.663603, 30.243719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349602, 29.605728, 29.405474>,  <28.966299, 29.637327, 30.126030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349602, 29.605728, 29.405474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633953, 29.498041, 29.665373>,  <29.804564, 29.433430, 29.821312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633953, 29.498041, 29.665373>,  <29.349602, 29.605728, 29.405474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633953, 29.498041, 29.665373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348624, -0.667472, -0.657984,
		0.610829, 0.694265, -0.380637,
		0.710879, -0.269217, 0.649749,
		29.847218, 29.417276, 29.860298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971018, 29.689108, 29.067799>,  <29.349602, 29.605728, 29.405474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971018, 29.689108, 29.067799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020073, 29.409161, 29.349266>,  <30.049505, 29.241192, 29.518147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020073, 29.409161, 29.349266>,  <29.971018, 29.689108, 29.067799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020073, 29.409161, 29.349266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349229, -0.633241, -0.690684,
		0.928977, 0.330445, 0.166755,
		0.122637, -0.699866, 0.703667,
		30.056864, 29.199202, 29.560366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649794, 29.412735, 28.964584>,  <29.971018, 29.689108, 29.067799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649794, 29.412735, 28.964584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492939, 29.128601, 29.198387>,  <30.398827, 28.958120, 29.338669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492939, 29.128601, 29.198387>,  <30.649794, 29.412735, 28.964584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492939, 29.128601, 29.198387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347246, -0.702694, -0.621001,
		0.851850, -0.040550, 0.522215,
		-0.392138, -0.710336, 0.584509,
		30.375298, 28.915501, 29.373739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355078, 29.019184, 28.269632>,  <30.649794, 29.412735, 28.964584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355078, 29.019184, 28.269632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589624, 29.131426, 27.965675>,  <30.730352, 29.198771, 27.783302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589624, 29.131426, 27.965675>,  <30.355078, 29.019184, 28.269632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589624, 29.131426, 27.965675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501401, 0.611050, 0.612547,
		0.636216, -0.740188, 0.217603,
		0.586367, 0.280606, -0.759891,
		30.765535, 29.215607, 27.737707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008579, 28.922649, 28.561670>,  <30.355078, 29.019184, 28.269632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008579, 28.922649, 28.561670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045034, 29.169178, 28.248789>,  <31.066908, 29.317095, 28.061060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045034, 29.169178, 28.248789>,  <31.008579, 28.922649, 28.561670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045034, 29.169178, 28.248789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397052, 0.697848, 0.596118,
		0.913260, -0.364903, -0.181114,
		0.091136, 0.616322, -0.782203,
		31.072374, 29.354074, 28.014128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639872, 29.256239, 28.560425>,  <31.008579, 28.922649, 28.561670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639872, 29.256239, 28.560425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445621, 29.511118, 28.321043>,  <31.329071, 29.664045, 28.177414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445621, 29.511118, 28.321043>,  <31.639872, 29.256239, 28.560425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445621, 29.511118, 28.321043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401495, 0.770701, 0.494794,
		0.776511, 0.000009, -0.630104,
		-0.485626, 0.637197, -0.598454,
		31.299934, 29.702276, 28.141506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190586, 29.758572, 28.372210>,  <31.639872, 29.256239, 28.560425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190586, 29.758572, 28.372210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841362, 29.946602, 28.320383>,  <31.631826, 30.059420, 28.289288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841362, 29.946602, 28.320383>,  <32.190586, 29.758572, 28.372210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841362, 29.946602, 28.320383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309453, 0.739509, 0.597801,
		0.376827, 0.481824, -0.791105,
		-0.873064, 0.470077, -0.129565,
		31.579443, 30.087626, 28.281513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370731, 30.439116, 28.328876>,  <32.190586, 29.758572, 28.372210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370731, 30.439116, 28.328876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987947, 30.526762, 28.405001>,  <31.758278, 30.579350, 28.450676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987947, 30.526762, 28.405001>,  <32.370731, 30.439116, 28.328876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987947, 30.526762, 28.405001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278082, 0.879950, 0.385174,
		-0.083068, 0.421518, -0.903007,
		-0.956959, 0.219114, 0.190312,
		31.700859, 30.592497, 28.462095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353527, 31.158064, 28.344557>,  <32.370731, 30.439116, 28.328876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353527, 31.158064, 28.344557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000546, 31.082228, 28.516756>,  <31.788755, 31.036726, 28.620075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000546, 31.082228, 28.516756>,  <32.353527, 31.158064, 28.344557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000546, 31.082228, 28.516756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058480, 0.863864, 0.500319,
		-0.466746, 0.466685, -0.751235,
		-0.882456, -0.189589, 0.430497,
		31.735809, 31.025351, 28.645905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866261, 31.790775, 28.207699>,  <32.353527, 31.158064, 28.344557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866261, 31.790775, 28.207699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786932, 31.578220, 28.537134>,  <31.739336, 31.450687, 28.734795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786932, 31.578220, 28.537134>,  <31.866261, 31.790775, 28.207699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786932, 31.578220, 28.537134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187587, 0.804167, 0.564028,
		-0.962019, 0.266352, -0.059801,
		-0.198320, -0.531388, 0.823588,
		31.727436, 31.418804, 28.784210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438755, 32.177967, 28.671070>,  <31.866261, 31.790775, 28.207699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438755, 32.177967, 28.671070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564440, 31.901367, 28.931253>,  <31.639851, 31.735407, 29.087364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564440, 31.901367, 28.931253>,  <31.438755, 32.177967, 28.671070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564440, 31.901367, 28.931253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091484, 0.659916, 0.745749,
		-0.944935, -0.293829, 0.144091,
		0.314211, -0.691502, 0.650458,
		31.658703, 31.693916, 29.126390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985735, 32.138615, 29.200176>,  <31.438755, 32.177967, 28.671070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985735, 32.138615, 29.200176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336405, 32.004791, 29.338459>,  <31.546806, 31.924498, 29.421429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336405, 32.004791, 29.338459>,  <30.985735, 32.138615, 29.200176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336405, 32.004791, 29.338459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038066, 0.668106, 0.743091,
		-0.479578, -0.664608, 0.572976,
		0.876673, -0.334559, 0.345708,
		31.599407, 31.904423, 29.442171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835255, 32.041321, 29.959696>,  <30.985735, 32.138615, 29.200176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835255, 32.041321, 29.959696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233263, 32.033188, 29.920673>,  <31.472069, 32.028309, 29.897261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233263, 32.033188, 29.920673>,  <30.835255, 32.041321, 29.959696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233263, 32.033188, 29.920673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099493, 0.258133, 0.960973,
		0.005641, -0.965896, 0.258871,
		0.995022, -0.020335, -0.097556,
		31.531769, 32.027088, 29.891407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067978, 31.619545, 30.648516>,  <30.835255, 32.041321, 29.959696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067978, 31.619545, 30.648516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390816, 31.805206, 30.502550>,  <31.584518, 31.916603, 30.414970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390816, 31.805206, 30.502550>,  <31.067978, 31.619545, 30.648516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390816, 31.805206, 30.502550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204452, 0.360105, 0.910233,
		0.553895, -0.809250, 0.195742,
		0.807093, 0.464153, -0.364913,
		31.632944, 31.944452, 30.393076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537603, 31.623487, 31.192110>,  <31.067978, 31.619545, 30.648516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537603, 31.623487, 31.192110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686094, 31.910887, 30.956841>,  <31.775188, 32.083328, 30.815678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686094, 31.910887, 30.956841>,  <31.537603, 31.623487, 31.192110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686094, 31.910887, 30.956841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175872, 0.567565, 0.804325,
		0.911735, -0.402029, 0.084331,
		0.371225, 0.718500, -0.588175,
		31.797462, 32.126438, 30.780388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231228, 31.860699, 31.485168>,  <31.537603, 31.623487, 31.192110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231228, 31.860699, 31.485168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064419, 32.146076, 31.259924>,  <31.964334, 32.317303, 31.124777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064419, 32.146076, 31.259924>,  <32.231228, 31.860699, 31.485168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064419, 32.146076, 31.259924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061466, 0.640273, 0.765684,
		0.906816, 0.284694, -0.310860,
		-0.417021, 0.713442, -0.563111,
		31.939312, 32.360107, 31.090990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595402, 32.473133, 31.586046>,  <32.231228, 31.860699, 31.485168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595402, 32.473133, 31.586046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263382, 32.630035, 31.427481>,  <32.064171, 32.724178, 31.332340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263382, 32.630035, 31.427481>,  <32.595402, 32.473133, 31.586046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263382, 32.630035, 31.427481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095851, 0.800593, 0.591493,
		0.549385, 0.452973, -0.702133,
		-0.830053, 0.392258, -0.396416,
		32.014366, 32.747711, 31.308556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681461, 33.151829, 31.382952>,  <32.595402, 32.473133, 31.586046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681461, 33.151829, 31.382952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289593, 33.137562, 31.461926>,  <32.054474, 33.129002, 31.509310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289593, 33.137562, 31.461926>,  <32.681461, 33.151829, 31.382952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289593, 33.137562, 31.461926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092796, 0.791930, 0.603520,
		-0.177878, 0.609570, -0.772518,
		-0.979668, -0.035666, 0.197432,
		31.995693, 33.126862, 31.521154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575729, 33.856491, 31.327248>,  <32.681461, 33.151829, 31.382952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575729, 33.856491, 31.327248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272617, 33.687263, 31.525953>,  <32.090748, 33.585728, 31.645176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272617, 33.687263, 31.525953>,  <32.575729, 33.856491, 31.327248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272617, 33.687263, 31.525953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020650, 0.745385, 0.666314,
		-0.652178, 0.515181, -0.556105,
		-0.757785, -0.423072, 0.496762,
		32.045280, 33.560341, 31.674982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122257, 34.446461, 31.480648>,  <32.575729, 33.856491, 31.327248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122257, 34.446461, 31.480648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052288, 34.132393, 31.718273>,  <32.010307, 33.943951, 31.860847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052288, 34.132393, 31.718273>,  <32.122257, 34.446461, 31.480648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052288, 34.132393, 31.718273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117833, 0.615722, 0.779103,
		-0.977506, 0.066282, -0.200222,
		-0.174922, -0.785171, 0.594061,
		31.999811, 33.896843, 31.896492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541241, 34.667782, 31.853409>,  <32.122257, 34.446461, 31.480648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541241, 34.667782, 31.853409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707642, 34.382534, 32.079121>,  <31.807482, 34.211388, 32.214546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707642, 34.382534, 32.079121>,  <31.541241, 34.667782, 31.853409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707642, 34.382534, 32.079121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082599, 0.588323, 0.804397,
		-0.905605, -0.381239, 0.185841,
		0.416002, -0.713115, 0.564277,
		31.832443, 34.168598, 32.248405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384974, 34.946507, 32.536781>,  <31.541241, 34.667782, 31.853409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384974, 34.946507, 32.536781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617208, 34.637421, 32.639408>,  <31.756550, 34.451969, 32.700985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617208, 34.637421, 32.639408>,  <31.384974, 34.946507, 32.536781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617208, 34.637421, 32.639408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085932, 0.371509, 0.924444,
		-0.809652, -0.514671, 0.282094,
		0.580585, -0.772719, 0.256566,
		31.791384, 34.405605, 32.716377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187677, 34.703045, 33.196545>,  <31.384974, 34.946507, 32.536781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187677, 34.703045, 33.196545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565355, 34.584377, 33.139297>,  <31.791962, 34.513176, 33.104950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565355, 34.584377, 33.139297>,  <31.187677, 34.703045, 33.196545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565355, 34.584377, 33.139297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207172, 0.197090, 0.958246,
		-0.256079, -0.934420, 0.247554,
		0.944194, -0.296673, -0.143115,
		31.848614, 34.495377, 33.096363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380619, 34.152203, 33.729805>,  <31.187677, 34.703045, 33.196545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380619, 34.152203, 33.729805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695942, 34.354027, 33.588951>,  <31.885136, 34.475121, 33.504440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695942, 34.354027, 33.588951>,  <31.380619, 34.152203, 33.729805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695942, 34.354027, 33.588951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258451, 0.247829, 0.933694,
		0.558371, -0.827044, 0.064962,
		0.788305, 0.504558, -0.352131,
		31.932434, 34.505394, 33.483311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778494, 34.105392, 34.354893>,  <31.380619, 34.152203, 33.729805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778494, 34.105392, 34.354893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975973, 34.385532, 34.148678>,  <32.094460, 34.553616, 34.024948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975973, 34.385532, 34.148678>,  <31.778494, 34.105392, 34.354893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975973, 34.385532, 34.148678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263952, 0.444174, 0.856177,
		0.828610, -0.558767, 0.034428,
		0.493696, 0.700349, -0.515534,
		32.124081, 34.595638, 33.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389977, 34.172276, 34.716419>,  <31.778494, 34.105392, 34.354893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389977, 34.172276, 34.716419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395775, 34.509106, 34.500755>,  <32.399254, 34.711205, 34.371357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395775, 34.509106, 34.500755>,  <32.389977, 34.172276, 34.716419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395775, 34.509106, 34.500755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405298, 0.487984, 0.773049,
		0.914070, -0.229724, -0.334220,
		0.014494, 0.842080, -0.539159,
		32.400124, 34.761730, 34.339008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125599, 34.429993, 34.851738>,  <32.389977, 34.172276, 34.716419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125599, 34.429993, 34.851738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886681, 34.724594, 34.724743>,  <32.743328, 34.901356, 34.648548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886681, 34.724594, 34.724743>,  <33.125599, 34.429993, 34.851738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886681, 34.724594, 34.724743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294055, 0.569394, 0.767673,
		0.746171, 0.365169, -0.556670,
		-0.597295, 0.736506, -0.317486,
		32.707493, 34.945545, 34.629498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580074, 35.067329, 34.685539>,  <33.125599, 34.429993, 34.851738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580074, 35.067329, 34.685539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201035, 35.157421, 34.776161>,  <32.973610, 35.211475, 34.830536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201035, 35.157421, 34.776161>,  <33.580074, 35.067329, 34.685539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201035, 35.157421, 34.776161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314056, 0.786674, 0.531520,
		-0.058510, 0.574819, -0.816186,
		-0.947600, 0.225229, 0.226553,
		32.916756, 35.224991, 34.844128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525787, 35.797596, 34.536030>,  <33.580074, 35.067329, 34.685539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525787, 35.797596, 34.536030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206112, 35.725796, 34.765491>,  <33.014305, 35.682716, 34.903168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206112, 35.725796, 34.765491>,  <33.525787, 35.797596, 34.536030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206112, 35.725796, 34.765491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239387, 0.780371, 0.577680,
		-0.551355, 0.599001, -0.580694,
		-0.799188, -0.179496, 0.573655,
		32.966354, 35.671947, 34.937588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217144, 36.525211, 34.635185>,  <33.525787, 35.797596, 34.536030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217144, 36.525211, 34.635185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103970, 36.288490, 34.937103>,  <33.036064, 36.146458, 35.118256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103970, 36.288490, 34.937103>,  <33.217144, 36.525211, 34.635185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103970, 36.288490, 34.937103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375102, 0.656002, 0.654950,
		-0.882748, 0.468436, 0.036378,
		-0.282938, -0.591801, 0.754796,
		33.019089, 36.110950, 35.163544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820766, 36.904037, 34.961811>,  <33.217144, 36.525211, 34.635185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820766, 36.904037, 34.961811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947582, 36.638958, 35.233200>,  <33.023670, 36.479912, 35.396034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947582, 36.638958, 35.233200>,  <32.820766, 36.904037, 34.961811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947582, 36.638958, 35.233200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265132, 0.748781, 0.607481,
		-0.910600, -0.012710, 0.413093,
		0.317037, -0.662696, 0.678470,
		33.042694, 36.440147, 35.436741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677696, 37.211826, 35.660561>,  <32.820766, 36.904037, 34.961811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677696, 37.211826, 35.660561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914623, 36.905807, 35.761639>,  <33.056778, 36.722195, 35.822285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914623, 36.905807, 35.761639>,  <32.677696, 37.211826, 35.660561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914623, 36.905807, 35.761639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507498, 0.597863, 0.620488,
		-0.625785, -0.239281, 0.742386,
		0.592317, -0.765051, 0.252699,
		33.092319, 36.676292, 35.837448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640068, 37.184692, 36.391506>,  <32.677696, 37.211826, 35.660561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640068, 37.184692, 36.391506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974777, 36.995934, 36.280422>,  <33.175602, 36.882679, 36.213772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974777, 36.995934, 36.280422>,  <32.640068, 37.184692, 36.391506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974777, 36.995934, 36.280422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502899, 0.461726, 0.730686,
		-0.216583, -0.751078, 0.623677,
		0.836770, -0.471901, -0.277715,
		33.225807, 36.854362, 36.197109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999477, 37.069813, 37.019787>,  <32.640068, 37.184692, 36.391506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999477, 37.069813, 37.019787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292366, 37.031944, 36.750004>,  <33.468098, 37.009224, 36.588135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292366, 37.031944, 36.750004>,  <32.999477, 37.069813, 37.019787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292366, 37.031944, 36.750004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655741, 0.365531, 0.660599,
		0.183992, -0.925972, 0.329731,
		0.732223, -0.094673, -0.674453,
		33.512032, 37.003544, 36.547668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731377, 36.949772, 37.392632>,  <32.999477, 37.069813, 37.019787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731377, 36.949772, 37.392632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833641, 37.086090, 37.030750>,  <33.895000, 37.167881, 36.813622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833641, 37.086090, 37.030750>,  <33.731377, 36.949772, 37.392632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833641, 37.086090, 37.030750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865716, 0.335833, 0.371149,
		0.430316, -0.878109, -0.209172,
		0.255662, 0.340795, -0.904708,
		33.910339, 37.188328, 36.759338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438625, 36.804878, 37.315342>,  <33.731377, 36.949772, 37.392632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438625, 36.804878, 37.315342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368320, 37.095943, 37.050129>,  <34.326138, 37.270584, 36.891003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368320, 37.095943, 37.050129>,  <34.438625, 36.804878, 37.315342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368320, 37.095943, 37.050129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801143, 0.497129, 0.333215,
		0.572081, -0.472614, -0.670342,
		-0.175765, 0.727666, -0.663030,
		34.315590, 37.314243, 36.851219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080124, 36.991360, 36.980133>,  <34.438625, 36.804878, 37.315342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080124, 36.991360, 36.980133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830685, 37.302696, 36.951004>,  <34.681019, 37.489498, 36.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830685, 37.302696, 36.951004>,  <35.080124, 36.991360, 36.980133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830685, 37.302696, 36.951004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680024, 0.586049, 0.440583,
		0.385603, 0.225227, -0.894753,
		-0.623601, 0.778344, -0.072822,
		34.643604, 37.536198, 36.929157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534859, 37.457989, 36.810188>,  <35.080124, 36.991360, 36.980133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534859, 37.457989, 36.810188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204056, 37.650227, 36.926868>,  <35.005573, 37.765568, 36.996876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204056, 37.650227, 36.926868>,  <35.534859, 37.457989, 36.810188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204056, 37.650227, 36.926868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562150, 0.700373, 0.439846,
		0.007087, 0.527736, -0.849379,
		-0.827005, 0.480596, 0.291703,
		34.955956, 37.794407, 37.014378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613216, 38.213230, 36.674953>,  <35.534859, 37.457989, 36.810188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613216, 38.213230, 36.674953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332069, 38.202194, 36.959267>,  <35.163380, 38.195572, 37.129856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332069, 38.202194, 36.959267>,  <35.613216, 38.213230, 36.674953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332069, 38.202194, 36.959267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426893, 0.782928, 0.452533,
		-0.568979, 0.621501, -0.538517,
		-0.702870, -0.027593, 0.710783,
		35.121208, 38.193916, 37.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466087, 38.909233, 36.812988>,  <35.613216, 38.213230, 36.674953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466087, 38.909233, 36.812988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362690, 38.702770, 37.139610>,  <35.300652, 38.578892, 37.335583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362690, 38.702770, 37.139610>,  <35.466087, 38.909233, 36.812988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362690, 38.702770, 37.139610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453244, 0.681668, 0.574368,
		-0.853084, 0.518569, 0.057740,
		-0.258490, -0.516154, 0.816558,
		35.285145, 38.547924, 37.384579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524540, 39.361752, 37.346405>,  <35.466087, 38.909233, 36.812988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524540, 39.361752, 37.346405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488846, 39.011459, 37.536194>,  <35.467430, 38.801285, 37.650066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488846, 39.011459, 37.536194>,  <35.524540, 39.361752, 37.346405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488846, 39.011459, 37.536194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508841, 0.369437, 0.777559,
		-0.856224, 0.310815, 0.412644,
		-0.089231, -0.875734, 0.474476,
		35.462078, 38.748737, 37.678535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306889, 39.482887, 38.050270>,  <35.524540, 39.361752, 37.346405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306889, 39.482887, 38.050270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491398, 39.129784, 38.085957>,  <35.602104, 38.917919, 38.107368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491398, 39.129784, 38.085957>,  <35.306889, 39.482887, 38.050270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491398, 39.129784, 38.085957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502778, 0.342915, 0.793488,
		-0.731056, -0.321157, 0.602010,
		0.461272, -0.882761, 0.089220,
		35.629780, 38.864956, 38.112724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327442, 39.356781, 38.779877>,  <35.306889, 39.482887, 38.050270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327442, 39.356781, 38.779877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611496, 39.120296, 38.626945>,  <35.781929, 38.978405, 38.535187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611496, 39.120296, 38.626945>,  <35.327442, 39.356781, 38.779877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611496, 39.120296, 38.626945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508564, 0.055198, 0.859253,
		-0.486898, -0.804625, 0.339868,
		0.710136, -0.591213, -0.382327,
		35.824535, 38.942932, 38.512249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367393, 38.627285, 38.977661>,  <35.327442, 39.356781, 38.779877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367393, 38.627285, 38.977661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720211, 38.789604, 38.881893>,  <35.931904, 38.886993, 38.824432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720211, 38.789604, 38.881893>,  <35.367393, 38.627285, 38.977661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720211, 38.789604, 38.881893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278441, -0.039018, 0.959660,
		0.380083, -0.913131, -0.147406,
		0.882047, 0.405795, -0.239423,
		35.984825, 38.911343, 38.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925522, 38.092648, 39.079979>,  <35.367393, 38.627285, 38.977661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925522, 38.092648, 39.079979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031044, 38.474194, 39.137314>,  <36.094357, 38.703121, 39.171715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031044, 38.474194, 39.137314>,  <35.925522, 38.092648, 39.079979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031044, 38.474194, 39.137314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386212, -0.240622, 0.890472,
		0.883881, -0.179556, -0.431873,
		0.263808, 0.953866, 0.143334,
		36.110188, 38.760353, 39.180313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646084, 38.193653, 39.409809>,  <35.925522, 38.092648, 39.079979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646084, 38.193653, 39.409809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430450, 38.522766, 39.481823>,  <36.301071, 38.720234, 39.525032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430450, 38.522766, 39.481823>,  <36.646084, 38.193653, 39.409809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430450, 38.522766, 39.481823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096708, -0.151878, 0.983657,
		0.836680, 0.547688, 0.002305,
		-0.539087, 0.822783, 0.180039,
		36.268723, 38.769600, 39.535835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857864, 38.647884, 40.036507>,  <36.646084, 38.193653, 39.409809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857864, 38.647884, 40.036507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477001, 38.767971, 40.013660>,  <36.248482, 38.840023, 39.999954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477001, 38.767971, 40.013660>,  <36.857864, 38.647884, 40.036507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477001, 38.767971, 40.013660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011983, 0.150076, 0.988602,
		0.305365, 0.941991, -0.139299,
		-0.952160, 0.300216, -0.057116,
		36.191353, 38.858036, 39.996525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731586, 39.349785, 40.380039>,  <36.857864, 38.647884, 40.036507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731586, 39.349785, 40.380039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412121, 39.109329, 40.391125>,  <36.220444, 38.965054, 40.397778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412121, 39.109329, 40.391125>,  <36.731586, 39.349785, 40.380039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412121, 39.109329, 40.391125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101171, 0.179523, 0.978538,
		-0.593215, 0.778717, -0.204196,
		-0.798662, -0.601142, 0.027712,
		36.172523, 38.928986, 40.399437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048080, 39.676441, 40.717842>,  <36.731586, 39.349785, 40.380039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048080, 39.676441, 40.717842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067577, 39.277954, 40.746624>,  <36.079277, 39.038864, 40.763893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067577, 39.277954, 40.746624>,  <36.048080, 39.676441, 40.717842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067577, 39.277954, 40.746624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297268, 0.054309, 0.953248,
		-0.953549, -0.067854, -0.293496,
		0.048743, -0.996216, 0.071957,
		36.082199, 38.979088, 40.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490528, 39.529243, 41.102943>,  <36.048080, 39.676441, 40.717842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490528, 39.529243, 41.102943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750282, 39.225430, 41.117928>,  <35.906136, 39.043140, 41.126919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750282, 39.225430, 41.117928>,  <35.490528, 39.529243, 41.102943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750282, 39.225430, 41.117928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148221, -0.078109, 0.985865,
		-0.745872, -0.645762, -0.163302,
		0.649389, -0.759533, 0.037457,
		35.945099, 38.997570, 41.129166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025543, 40.186142, 41.048557>,  <35.490528, 39.529243, 41.102943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025543, 40.186142, 41.048557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648518, 40.303143, 40.984039>,  <34.422302, 40.373344, 40.945328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648518, 40.303143, 40.984039>,  <35.025543, 40.186142, 41.048557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648518, 40.303143, 40.984039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327343, -0.904988, 0.271743,
		-0.066487, 0.308934, 0.948757,
		-0.942564, 0.292501, -0.161298,
		34.365749, 40.390892, 40.935650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483898, 40.084644, 41.580074>,  <35.025543, 40.186142, 41.048557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483898, 40.084644, 41.580074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320839, 40.058224, 41.215775>,  <34.223003, 40.042374, 40.997196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320839, 40.058224, 41.215775>,  <34.483898, 40.084644, 41.580074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320839, 40.058224, 41.215775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413254, -0.876051, 0.248505,
		-0.814273, 0.477673, 0.329830,
		-0.407653, -0.066048, -0.910745,
		34.198544, 40.038410, 40.942551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765900, 39.943199, 41.652752>,  <34.483898, 40.084644, 41.580074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765900, 39.943199, 41.652752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996998, 39.792870, 41.362934>,  <34.135658, 39.702671, 41.189045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996998, 39.792870, 41.362934>,  <33.765900, 39.943199, 41.652752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996998, 39.792870, 41.362934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315418, -0.921527, 0.226494,
		-0.752808, 0.097677, -0.650952,
		0.577747, -0.375828, -0.724543,
		34.170322, 39.680122, 41.145573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529346, 39.346748, 41.372906>,  <33.765900, 39.943199, 41.652752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529346, 39.346748, 41.372906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885162, 39.291176, 41.198822>,  <34.098652, 39.257832, 41.094372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885162, 39.291176, 41.198822>,  <33.529346, 39.346748, 41.372906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885162, 39.291176, 41.198822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135597, -0.990001, 0.038880,
		-0.436261, 0.024428, -0.899489,
		0.889545, -0.138930, -0.435211,
		34.152027, 39.249496, 41.068260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381260, 38.986855, 40.700642>,  <33.529346, 39.346748, 41.372906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381260, 38.986855, 40.700642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716557, 38.924072, 40.909531>,  <33.917732, 38.886402, 41.034866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716557, 38.924072, 40.909531>,  <33.381260, 38.986855, 40.700642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716557, 38.924072, 40.909531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323025, -0.914490, 0.243647,
		0.439328, -0.372926, -0.817262,
		0.838240, -0.156955, 0.522225,
		33.968029, 38.876987, 41.066196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823021, 38.371159, 40.376167>,  <33.381260, 38.986855, 40.700642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823021, 38.371159, 40.376167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853439, 38.438114, 40.769348>,  <33.871689, 38.478287, 41.005257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853439, 38.438114, 40.769348>,  <33.823021, 38.371159, 40.376167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853439, 38.438114, 40.769348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203082, -0.962544, 0.179629,
		0.976205, -0.213279, -0.039200,
		0.076043, 0.167394, 0.982953,
		33.876251, 38.488331, 41.064236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268368, 37.842319, 40.641983>,  <33.823021, 38.371159, 40.376167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268368, 37.842319, 40.641983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992760, 37.967293, 40.903561>,  <33.827396, 38.042274, 41.060505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992760, 37.967293, 40.903561>,  <34.268368, 37.842319, 40.641983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992760, 37.967293, 40.903561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277175, -0.947311, 0.160548,
		0.669646, -0.070636, 0.739314,
		-0.689019, 0.312430, 0.653942,
		33.786053, 38.061020, 41.099743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858349, 37.397121, 40.585243>,  <34.268368, 37.842319, 40.641983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858349, 37.397121, 40.585243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157326, 37.356098, 40.847790>,  <35.336712, 37.331486, 41.005318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157326, 37.356098, 40.847790>,  <34.858349, 37.397121, 40.585243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157326, 37.356098, 40.847790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637580, -0.166792, -0.752112,
		0.186612, 0.980644, -0.059277,
		0.747441, -0.102559, 0.656364,
		35.381557, 37.325329, 41.044701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507977, 37.733574, 40.298565>,  <34.858349, 37.397121, 40.585243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507977, 37.733574, 40.298565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610222, 37.452736, 40.564415>,  <35.671570, 37.284233, 40.723927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610222, 37.452736, 40.564415>,  <35.507977, 37.733574, 40.298565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610222, 37.452736, 40.564415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728962, -0.311604, -0.609523,
		0.635042, 0.640288, 0.432149,
		0.255611, -0.702093, 0.664627,
		35.686905, 37.242107, 40.763802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168270, 37.686989, 40.254707>,  <35.507977, 37.733574, 40.298565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168270, 37.686989, 40.254707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061592, 37.336632, 40.415550>,  <35.997585, 37.126419, 40.512054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061592, 37.336632, 40.415550>,  <36.168270, 37.686989, 40.254707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061592, 37.336632, 40.415550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762481, -0.446940, -0.467833,
		0.589487, 0.181827, 0.787048,
		-0.266699, -0.875890, 0.402105,
		35.981583, 37.073864, 40.536182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687187, 37.535450, 40.793686>,  <36.168270, 37.686989, 40.254707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687187, 37.535450, 40.793686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502609, 37.205894, 40.662060>,  <36.391865, 37.008163, 40.583084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502609, 37.205894, 40.662060>,  <36.687187, 37.535450, 40.793686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502609, 37.205894, 40.662060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875366, -0.362520, -0.319867,
		0.144242, -0.435650, 0.888484,
		-0.461443, -0.823886, -0.329063,
		36.364178, 36.958729, 40.563339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108360, 36.976658, 41.062607>,  <36.687187, 37.535450, 40.793686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108360, 36.976658, 41.062607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920036, 36.887310, 40.721210>,  <36.807041, 36.833702, 40.516373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920036, 36.887310, 40.721210>,  <37.108360, 36.976658, 41.062607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920036, 36.887310, 40.721210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818512, -0.471588, -0.328091,
		-0.329211, -0.853060, 0.404855,
		-0.470806, -0.223367, -0.853492,
		36.778793, 36.820301, 40.465164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121574, 36.248627, 40.890331>,  <37.108360, 36.976658, 41.062607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121574, 36.248627, 40.890331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107773, 36.484608, 40.567650>,  <37.099491, 36.626198, 40.374043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107773, 36.484608, 40.567650>,  <37.121574, 36.248627, 40.890331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107773, 36.484608, 40.567650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869240, -0.380611, -0.315527,
		-0.493184, -0.712104, -0.499677,
		-0.034506, 0.589952, -0.806701,
		37.097420, 36.661594, 40.325638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927776, 36.316269, 40.814705>,  <37.121574, 36.248627, 40.890331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927776, 36.316269, 40.814705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217663, 36.384865, 41.081650>,  <38.391594, 36.426022, 41.241817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217663, 36.384865, 41.081650>,  <37.927776, 36.316269, 40.814705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217663, 36.384865, 41.081650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582243, 0.670356, 0.460017,
		-0.368484, -0.721951, 0.585668,
		0.724715, 0.171492, 0.667366,
		38.435078, 36.436314, 41.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688320, 36.238369, 41.552807>,  <37.927776, 36.316269, 40.814705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688320, 36.238369, 41.552807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991653, 36.499111, 41.554447>,  <38.173653, 36.655556, 41.555431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991653, 36.499111, 41.554447>,  <37.688320, 36.238369, 41.552807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991653, 36.499111, 41.554447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559309, 0.647414, 0.517716,
		0.334822, -0.394894, 0.855543,
		0.758333, 0.651855, 0.004100,
		38.219154, 36.694668, 41.555676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668621, 36.485836, 42.249119>,  <37.688320, 36.238369, 41.552807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668621, 36.485836, 42.249119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882599, 36.768101, 42.063267>,  <38.010986, 36.937458, 41.951756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882599, 36.768101, 42.063267>,  <37.668621, 36.485836, 42.249119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882599, 36.768101, 42.063267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366266, 0.689254, 0.625123,
		0.761371, -0.164227, 0.627171,
		0.534942, 0.705662, -0.464628,
		38.043083, 36.979797, 41.923878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710056, 36.940731, 42.827927>,  <37.668621, 36.485836, 42.249119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710056, 36.940731, 42.827927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860115, 37.179501, 42.544250>,  <37.950150, 37.322762, 42.374046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860115, 37.179501, 42.544250>,  <37.710056, 36.940731, 42.827927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860115, 37.179501, 42.544250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291030, 0.802222, 0.521288,
		0.880096, 0.010836, 0.474673,
		0.375144, 0.596927, -0.709186,
		37.972660, 37.358578, 42.331493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113449, 37.481693, 43.144356>,  <37.710056, 36.940731, 42.827927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113449, 37.481693, 43.144356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992397, 37.616714, 42.787823>,  <37.919765, 37.697727, 42.573902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992397, 37.616714, 42.787823>,  <38.113449, 37.481693, 43.144356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992397, 37.616714, 42.787823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509009, 0.733411, 0.450575,
		0.805806, 0.590053, -0.050134,
		-0.302632, 0.337557, -0.891330,
		37.901608, 37.717983, 42.520424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681141, 37.743427, 43.503590>,  <38.113449, 37.481693, 43.144356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681141, 37.743427, 43.503590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461777, 37.409798, 43.527443>,  <38.330158, 37.209618, 43.541756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461777, 37.409798, 43.527443>,  <38.681141, 37.743427, 43.503590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461777, 37.409798, 43.527443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759575, -0.467063, 0.452657,
		-0.349697, 0.293542, 0.889688,
		-0.548415, -0.834077, 0.059637,
		38.297253, 37.159573, 43.545334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850376, 37.416344, 44.185455>,  <38.681141, 37.743427, 43.503590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850376, 37.416344, 44.185455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707207, 37.120338, 43.957680>,  <38.621304, 36.942734, 43.821014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707207, 37.120338, 43.957680>,  <38.850376, 37.416344, 44.185455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707207, 37.120338, 43.957680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537952, -0.661889, 0.522024,
		-0.763215, -0.119489, 0.635000,
		-0.357924, -0.740017, -0.569443,
		38.599831, 36.898335, 43.786846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496235, 36.836784, 44.555534>,  <38.850376, 37.416344, 44.185455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496235, 36.836784, 44.555534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661747, 36.731350, 44.206982>,  <38.761055, 36.668087, 43.997849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661747, 36.731350, 44.206982>,  <38.496235, 36.836784, 44.555534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661747, 36.731350, 44.206982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556467, -0.684307, 0.471241,
		-0.720507, -0.679885, -0.136474,
		0.413780, -0.263590, -0.871382,
		38.785881, 36.652275, 43.945568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452564, 36.072460, 44.523773>,  <38.496235, 36.836784, 44.555534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452564, 36.072460, 44.523773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751438, 36.224068, 44.305393>,  <38.930763, 36.315033, 44.174366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751438, 36.224068, 44.305393>,  <38.452564, 36.072460, 44.523773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751438, 36.224068, 44.305393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625656, -0.678242, 0.385411,
		-0.224207, -0.629549, -0.743908,
		0.747185, 0.379018, -0.545948,
		38.975594, 36.337772, 44.141609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626743, 35.377190, 44.653442>,  <38.452564, 36.072460, 44.523773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626743, 35.377190, 44.653442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285309, 35.379364, 44.445076>,  <38.080448, 35.380669, 44.320057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285309, 35.379364, 44.445076>,  <38.626743, 35.377190, 44.653442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285309, 35.379364, 44.445076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460872, 0.474042, -0.750254,
		0.242859, -0.880485, -0.407142,
		-0.853590, 0.005434, -0.520917,
		38.029232, 35.380993, 44.288799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800285, 35.079704, 44.000317>,  <38.626743, 35.377190, 44.653442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800285, 35.079704, 44.000317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490334, 35.329926, 43.963993>,  <38.304363, 35.480057, 43.942200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490334, 35.329926, 43.963993>,  <38.800285, 35.079704, 44.000317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490334, 35.329926, 43.963993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466965, 0.469670, -0.749235,
		-0.426034, -0.622973, -0.656048,
		-0.774880, 0.625552, -0.090811,
		38.257870, 35.517590, 43.936749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507244, 35.033012, 43.220917>,  <38.800285, 35.079704, 44.000317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507244, 35.033012, 43.220917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472595, 35.376640, 43.422707>,  <38.451805, 35.582817, 43.543781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472595, 35.376640, 43.422707>,  <38.507244, 35.033012, 43.220917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472595, 35.376640, 43.422707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396667, 0.494250, -0.773545,
		-0.913867, 0.133106, -0.383575,
		-0.086618, 0.859069, 0.504478,
		38.446609, 35.634361, 43.574051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244938, 35.654724, 42.864574>,  <38.507244, 35.033012, 43.220917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244938, 35.654724, 42.864574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466061, 35.802216, 43.163490>,  <38.598732, 35.890709, 43.342842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466061, 35.802216, 43.163490>,  <38.244938, 35.654724, 42.864574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466061, 35.802216, 43.163490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559828, 0.499933, -0.660802,
		-0.617252, 0.783650, 0.069942,
		0.552804, 0.368726, 0.747294,
		38.631901, 35.912834, 43.387680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316082, 36.326149, 42.831776>,  <38.244938, 35.654724, 42.864574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316082, 36.326149, 42.831776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649883, 36.233414, 43.031715>,  <38.850166, 36.177773, 43.151680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649883, 36.233414, 43.031715>,  <38.316082, 36.326149, 42.831776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649883, 36.233414, 43.031715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537653, 0.541070, -0.646663,
		-0.120530, 0.808389, 0.576177,
		0.834507, -0.231841, 0.499848,
		38.900234, 36.163860, 43.181671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743984, 37.006157, 42.979084>,  <38.316082, 36.326149, 42.831776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743984, 37.006157, 42.979084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971790, 36.677364, 42.978661>,  <39.108475, 36.480091, 42.978405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971790, 36.677364, 42.978661>,  <38.743984, 37.006157, 42.979084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971790, 36.677364, 42.978661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649553, 0.450840, -0.612229,
		0.503715, 0.347989, 0.790680,
		0.569519, -0.821978, -0.001058,
		39.142647, 36.430771, 42.978344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403156, 37.299469, 43.121857>,  <38.743984, 37.006157, 42.979084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403156, 37.299469, 43.121857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431030, 36.942211, 42.944122>,  <39.447754, 36.727856, 42.837482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431030, 36.942211, 42.944122>,  <39.403156, 37.299469, 43.121857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431030, 36.942211, 42.944122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741160, 0.344485, -0.576204,
		0.667702, -0.289176, 0.685968,
		0.069681, -0.893144, -0.444339,
		39.451935, 36.674267, 42.810822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045822, 37.048424, 43.295414>,  <39.403156, 37.299469, 43.121857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045822, 37.048424, 43.295414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916542, 36.942177, 42.932098>,  <39.838974, 36.878429, 42.714108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916542, 36.942177, 42.932098>,  <40.045822, 37.048424, 43.295414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916542, 36.942177, 42.932098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903900, 0.197527, -0.379405,
		0.280189, -0.943625, 0.176254,
		-0.323201, -0.265621, -0.908288,
		39.819580, 36.862492, 42.659611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624577, 36.536911, 42.941536>,  <40.045822, 37.048424, 43.295414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624577, 36.536911, 42.941536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406563, 36.747597, 42.680611>,  <40.275753, 36.874008, 42.524055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406563, 36.747597, 42.680611>,  <40.624577, 36.536911, 42.941536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406563, 36.747597, 42.680611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803359, 0.105470, -0.586081,
		-0.239897, -0.843475, -0.480624,
		-0.545036, 0.526713, -0.652311,
		40.243053, 36.905609, 42.484917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659157, 36.158302, 42.378933>,  <40.624577, 36.536911, 42.941536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659157, 36.158302, 42.378933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890461, 36.098392, 42.058140>,  <41.029243, 36.062447, 41.865662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890461, 36.098392, 42.058140>,  <40.659157, 36.158302, 42.378933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890461, 36.098392, 42.058140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029060, 0.986162, -0.163216,
		0.815334, 0.071076, 0.574612,
		0.578261, -0.149774, -0.801986,
		41.063938, 36.053459, 41.817543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218880, 36.646111, 42.410439>,  <40.659157, 36.158302, 42.378933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218880, 36.646111, 42.410439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120560, 36.547050, 42.035580>,  <41.061569, 36.487614, 41.810665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120560, 36.547050, 42.035580>,  <41.218880, 36.646111, 42.410439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120560, 36.547050, 42.035580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284001, 0.942783, -0.174653,
		0.926782, 0.223222, -0.302072,
		-0.245802, -0.247654, -0.937149,
		41.046818, 36.472755, 41.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480255, 37.249298, 41.846634>,  <41.218880, 36.646111, 42.410439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480255, 37.249298, 41.846634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168144, 37.033005, 41.720921>,  <40.980877, 36.903229, 41.645493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168144, 37.033005, 41.720921>,  <41.480255, 37.249298, 41.846634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168144, 37.033005, 41.720921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459306, 0.836488, -0.298875,
		0.424502, -0.088855, -0.901056,
		-0.780279, -0.540734, -0.314279,
		40.934059, 36.870785, 41.626637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092819, 37.571590, 41.180897>,  <41.480255, 37.249298, 41.846634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092819, 37.571590, 41.180897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807808, 37.336918, 41.334831>,  <40.636799, 37.196114, 41.427193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807808, 37.336918, 41.334831>,  <41.092819, 37.571590, 41.180897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807808, 37.336918, 41.334831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699242, 0.548434, -0.458564,
		0.057973, -0.595837, -0.801010,
		-0.712531, -0.586684, 0.384840,
		40.594048, 37.160912, 41.450283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560047, 37.260147, 40.660313>,  <41.092819, 37.571590, 41.180897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560047, 37.260147, 40.660313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392342, 37.347057, 41.012905>,  <40.291718, 37.399204, 41.224461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392342, 37.347057, 41.012905>,  <40.560047, 37.260147, 40.660313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392342, 37.347057, 41.012905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688096, 0.557327, -0.464663,
		-0.592234, -0.801359, -0.084158,
		-0.419265, 0.217280, 0.881479,
		40.266563, 37.412243, 41.277348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292141, 36.540565, 40.772736>,  <40.560047, 37.260147, 40.660313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292141, 36.540565, 40.772736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626247, 36.640423, 40.968700>,  <40.826710, 36.700336, 41.086281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626247, 36.640423, 40.968700>,  <40.292141, 36.540565, 40.772736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626247, 36.640423, 40.968700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146276, -0.959772, 0.239671,
		0.530036, -0.128525, -0.838178,
		0.835264, 0.249640, 0.489913,
		40.876827, 36.715313, 41.115673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831997, 36.012722, 40.573635>,  <40.292141, 36.540565, 40.772736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831997, 36.012722, 40.573635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886112, 36.173470, 40.935894>,  <40.918583, 36.269920, 41.153248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886112, 36.173470, 40.935894>,  <40.831997, 36.012722, 40.573635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886112, 36.173470, 40.935894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055906, -0.915690, 0.397979,
		0.989227, -0.003211, -0.146351,
		0.135291, 0.401874, 0.905646,
		40.926701, 36.294033, 41.207588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495201, 35.945858, 40.863289>,  <40.831997, 36.012722, 40.573635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495201, 35.945858, 40.863289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206959, 35.956776, 41.140411>,  <41.034016, 35.963326, 41.306686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206959, 35.956776, 41.140411>,  <41.495201, 35.945858, 40.863289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206959, 35.956776, 41.140411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221610, -0.937743, 0.267447,
		0.656977, 0.346257, 0.669692,
		-0.720604, 0.027296, 0.692810,
		40.990776, 35.964966, 41.348255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827503, 35.643318, 41.484924>,  <41.495201, 35.945858, 40.863289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827503, 35.643318, 41.484924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428539, 35.619617, 41.501194>,  <41.189159, 35.605396, 41.510956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428539, 35.619617, 41.501194>,  <41.827503, 35.643318, 41.484924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428539, 35.619617, 41.501194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065595, -0.981776, 0.178363,
		0.029368, 0.180570, 0.983124,
		-0.997414, -0.059250, 0.040678,
		41.129314, 35.601841, 41.513397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169373, 36.280876, 41.231483>,  <41.827503, 35.643318, 41.484924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169373, 36.280876, 41.231483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471241, 36.467953, 41.047421>,  <42.652363, 36.580200, 40.936981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471241, 36.467953, 41.047421>,  <42.169373, 36.280876, 41.231483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471241, 36.467953, 41.047421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178102, -0.821034, -0.542386,
		-0.631472, 0.327366, -0.702904,
		0.754667, 0.467690, -0.460156,
		42.697639, 36.608261, 40.909374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091030, 36.306538, 40.476624>,  <42.169373, 36.280876, 41.231483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091030, 36.306538, 40.476624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470940, 36.294304, 40.601200>,  <42.698887, 36.286964, 40.675945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470940, 36.294304, 40.601200>,  <42.091030, 36.306538, 40.476624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470940, 36.294304, 40.601200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148998, -0.830962, -0.536005,
		0.275187, 0.555487, -0.784669,
		0.949775, -0.030588, 0.311437,
		42.755871, 36.285126, 40.694630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214115, 35.719116, 40.158665>,  <42.091030, 36.306538, 40.476624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214115, 35.719116, 40.158665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577663, 35.807228, 40.300327>,  <42.795792, 35.860096, 40.385326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577663, 35.807228, 40.300327>,  <42.214115, 35.719116, 40.158665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577663, 35.807228, 40.300327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377795, -0.794569, -0.475322,
		0.176700, 0.565807, -0.805382,
		0.908872, 0.220280, 0.354159,
		42.850327, 35.873314, 40.406574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720085, 35.747498, 39.647064>,  <42.214115, 35.719116, 40.158665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720085, 35.747498, 39.647064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880169, 35.623940, 39.992184>,  <42.976219, 35.549805, 40.199253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880169, 35.623940, 39.992184>,  <42.720085, 35.747498, 39.647064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880169, 35.623940, 39.992184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137869, -0.910470, -0.389918,
		0.905995, 0.275001, -0.321788,
		0.400207, -0.308899, 0.862795,
		43.000233, 35.531269, 40.251022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270691, 36.027966, 39.241066>,  <42.720085, 35.747498, 39.647064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270691, 36.027966, 39.241066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664375, 36.069988, 39.298054>,  <43.900585, 36.095200, 39.332249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664375, 36.069988, 39.298054>,  <43.270691, 36.027966, 39.241066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664375, 36.069988, 39.298054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169459, 0.326496, 0.929884,
		0.051170, -0.939342, 0.339142,
		0.984208, 0.105053, 0.142473,
		43.959637, 36.101505, 39.340797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875702, 35.943649, 38.748672>,  <43.270691, 36.027966, 39.241066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875702, 35.943649, 38.748672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624809, 36.124390, 38.494926>,  <43.474274, 36.232834, 38.342678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624809, 36.124390, 38.494926>,  <43.875702, 35.943649, 38.748672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624809, 36.124390, 38.494926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764490, 0.201581, -0.612308,
		-0.148798, -0.869019, -0.471874,
		-0.627228, 0.451853, -0.634361,
		43.436642, 36.259945, 38.304619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920067, 35.645447, 38.028393>,  <43.875702, 35.943649, 38.748672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920067, 35.645447, 38.028393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802696, 36.027740, 38.019703>,  <43.732273, 36.257118, 38.014488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802696, 36.027740, 38.019703>,  <43.920067, 35.645447, 38.028393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802696, 36.027740, 38.019703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649249, 0.182547, -0.738344,
		-0.701695, -0.230756, -0.674074,
		-0.293428, 0.955734, -0.021726,
		43.714668, 36.314461, 38.013184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758163, 35.867950, 37.268887>,  <43.920067, 35.645447, 38.028393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758163, 35.867950, 37.268887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853985, 36.173515, 37.508568>,  <43.911480, 36.356853, 37.652378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853985, 36.173515, 37.508568>,  <43.758163, 35.867950, 37.268887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853985, 36.173515, 37.508568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634484, 0.343972, -0.692180,
		-0.734876, 0.546004, -0.402290,
		0.239557, 0.763913, 0.599208,
		43.925854, 36.402691, 37.688332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791176, 36.519894, 36.873196>,  <43.758163, 35.867950, 37.268887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791176, 36.519894, 36.873196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007214, 36.524490, 37.209808>,  <44.136837, 36.527248, 37.411774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007214, 36.524490, 37.209808>,  <43.791176, 36.519894, 36.873196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007214, 36.524490, 37.209808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839125, 0.069364, -0.539497,
		-0.064571, 0.997525, 0.027821,
		0.540092, 0.011491, 0.841527,
		44.169243, 36.527939, 37.462265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161640, 37.145443, 36.954842>,  <43.791176, 36.519894, 36.873196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161640, 37.145443, 36.954842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337070, 36.805038, 37.070374>,  <44.442329, 36.600796, 37.139694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337070, 36.805038, 37.070374>,  <44.161640, 37.145443, 36.954842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337070, 36.805038, 37.070374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713937, 0.134729, -0.687126,
		0.545841, 0.507564, 0.666660,
		0.438579, -0.851015, 0.288829,
		44.468643, 36.549732, 37.157021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863804, 37.103985, 37.193268>,  <44.161640, 37.145443, 36.954842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863804, 37.103985, 37.193268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786316, 36.741627, 37.042629>,  <44.739822, 36.524212, 36.952248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786316, 36.741627, 37.042629>,  <44.863804, 37.103985, 37.193268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786316, 36.741627, 37.042629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812326, 0.067128, -0.579327,
		0.550091, -0.418144, 0.722880,
		-0.193717, -0.905897, -0.376596,
		44.728199, 36.469856, 36.929649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356136, 36.630047, 37.343842>,  <44.863804, 37.103985, 37.193268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356136, 36.630047, 37.343842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175503, 36.566338, 36.992683>,  <45.067123, 36.528111, 36.781990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175503, 36.566338, 36.992683>,  <45.356136, 36.630047, 37.343842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175503, 36.566338, 36.992683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858097, 0.192011, -0.476237,
		0.244419, -0.968382, 0.049965,
		-0.451585, -0.159276, -0.877896,
		45.040028, 36.518555, 36.729313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159260, 36.608967, 37.443237>,  <45.356136, 36.630047, 37.343842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159260, 36.608967, 37.443237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227657, 36.769623, 37.083359>,  <46.268696, 36.866016, 36.867432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227657, 36.769623, 37.083359>,  <46.159260, 36.608967, 37.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.227657, 36.769623, 37.083359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687802, -0.702484, -0.182876,
		-0.705470, -0.587538, -0.396372,
		0.170999, 0.401639, -0.899692,
		46.278957, 36.890114, 36.813450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143456, 36.076599, 37.083893>,  <46.159260, 36.608967, 37.443237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143456, 36.076599, 37.083893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352600, 36.353741, 36.885269>,  <46.478085, 36.520027, 36.766094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352600, 36.353741, 36.885269>,  <46.143456, 36.076599, 37.083893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352600, 36.353741, 36.885269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630109, -0.706474, -0.322270,
		-0.574094, -0.144387, -0.805958,
		0.522857, 0.692854, -0.496562,
		46.509457, 36.561596, 36.736301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.184196, 35.546558, 36.667660>,  <46.143456, 36.076599, 37.083893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.184196, 35.546558, 36.667660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579704, 35.501537, 36.706978>,  <46.817009, 35.474525, 36.730568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579704, 35.501537, 36.706978>,  <46.184196, 35.546558, 36.667660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579704, 35.501537, 36.706978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116305, 0.166664, -0.979130,
		0.093820, 0.979569, 0.177883,
		0.988772, -0.112551, 0.098292,
		46.876335, 35.467773, 36.736465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.505413, 36.073494, 36.336540>,  <46.184196, 35.546558, 36.667660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.505413, 36.073494, 36.336540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755436, 35.762131, 36.359825>,  <46.905449, 35.575314, 36.373795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755436, 35.762131, 36.359825>,  <46.505413, 36.073494, 36.336540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755436, 35.762131, 36.359825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206605, 0.093068, -0.973988,
		0.752743, 0.620822, 0.218996,
		0.625054, -0.778408, 0.058209,
		46.942951, 35.528610, 36.377289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.118114, 36.284859, 36.005459>,  <46.505413, 36.073494, 36.336540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.118114, 36.284859, 36.005459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100040, 35.885361, 35.996727>,  <47.089195, 35.645664, 35.991489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100040, 35.885361, 35.996727>,  <47.118114, 36.284859, 36.005459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.100040, 35.885361, 35.996727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272233, 0.008710, -0.962192,
		0.961170, -0.049418, 0.271497,
		-0.045184, -0.998740, -0.021825,
		47.086487, 35.585739, 35.990181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.762123, 36.000347, 35.700481>,  <47.118114, 36.284859, 36.005459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.762123, 36.000347, 35.700481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470970, 35.733044, 35.639004>,  <47.296280, 35.572662, 35.602116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470970, 35.733044, 35.639004>,  <47.762123, 36.000347, 35.700481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.470970, 35.733044, 35.639004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278401, -0.083170, -0.956857,
		0.626642, -0.739268, 0.246582,
		-0.727882, -0.668256, -0.153695,
		47.252605, 35.532566, 35.592896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.972137, 35.353477, 35.536152>,  <47.762123, 36.000347, 35.700481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.972137, 35.353477, 35.536152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620377, 35.426342, 35.360214>,  <47.409321, 35.470058, 35.254650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620377, 35.426342, 35.360214>,  <47.972137, 35.353477, 35.536152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.620377, 35.426342, 35.360214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451189, 0.024102, -0.892103,
		-0.151904, -0.982974, -0.103384,
		-0.879405, 0.182160, -0.439846,
		47.356556, 35.480991, 35.228260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.064762, 34.993382, 34.930252>,  <47.972137, 35.353477, 35.536152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.064762, 34.993382, 34.930252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751015, 35.222706, 34.835529>,  <47.562767, 35.360302, 34.778694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751015, 35.222706, 34.835529>,  <48.064762, 34.993382, 34.930252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.751015, 35.222706, 34.835529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350379, 0.094472, -0.931831,
		-0.511857, -0.813873, -0.274977,
		-0.784370, 0.573311, -0.236808,
		47.515705, 35.394699, 34.764488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.450733, 29.680149, 31.428217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536194, 29.402937, 31.703627>,  <37.587471, 29.236610, 31.868872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536194, 29.402937, 31.703627>,  <37.450733, 29.680149, 31.428217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536194, 29.402937, 31.703627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341127, 0.713355, 0.612174,
		-0.915416, 0.104084, 0.388818,
		0.213648, -0.693031, 0.688522,
		37.600288, 29.195028, 31.910183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306126, 30.055510, 32.042179>,  <37.450733, 29.680149, 31.428217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306126, 30.055510, 32.042179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486538, 29.737915, 32.205227>,  <37.594788, 29.547359, 32.303055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486538, 29.737915, 32.205227>,  <37.306126, 30.055510, 32.042179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486538, 29.737915, 32.205227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017334, 0.464425, 0.885443,
		-0.892339, -0.392298, 0.223234,
		0.451033, -0.793985, 0.407624,
		37.621849, 29.499720, 32.327515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055988, 30.016533, 32.743874>,  <37.306126, 30.055510, 32.042179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055988, 30.016533, 32.743874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400928, 29.817156, 32.708286>,  <37.607891, 29.697531, 32.686932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400928, 29.817156, 32.708286>,  <37.055988, 30.016533, 32.743874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400928, 29.817156, 32.708286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334270, 0.428477, 0.839447,
		-0.380293, -0.753634, 0.536109,
		0.862346, -0.498441, -0.088970,
		37.659634, 29.667624, 32.681595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197918, 29.617737, 33.422268>,  <37.055988, 30.016533, 32.743874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197918, 29.617737, 33.422268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551655, 29.662380, 33.240948>,  <37.763897, 29.689167, 33.132156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551655, 29.662380, 33.240948>,  <37.197918, 29.617737, 33.422268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551655, 29.662380, 33.240948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359295, 0.457250, 0.813529,
		0.298070, -0.882307, 0.364265,
		0.884342, 0.111610, -0.453301,
		37.816956, 29.695864, 33.104958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692760, 29.372089, 33.958950>,  <37.197918, 29.617737, 33.422268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692760, 29.372089, 33.958950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898781, 29.594307, 33.697845>,  <38.022392, 29.727638, 33.541183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898781, 29.594307, 33.697845>,  <37.692760, 29.372089, 33.958950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898781, 29.594307, 33.697845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372704, 0.540632, 0.754194,
		0.771890, -0.631734, 0.071399,
		0.515051, 0.555544, -0.652759,
		38.053295, 29.760969, 33.502018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274632, 29.525747, 34.267994>,  <37.692760, 29.372089, 33.958950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274632, 29.525747, 34.267994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265518, 29.799377, 33.976372>,  <38.260052, 29.963556, 33.801399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265518, 29.799377, 33.976372>,  <38.274632, 29.525747, 34.267994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265518, 29.799377, 33.976372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381530, 0.679999, 0.626128,
		0.924076, -0.263892, -0.276488,
		-0.022781, 0.684078, -0.729053,
		38.258682, 30.004601, 33.757656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810272, 29.974455, 34.461712>,  <38.274632, 29.525747, 34.267994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810272, 29.974455, 34.461712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594643, 30.196787, 34.208588>,  <38.465263, 30.330185, 34.056713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594643, 30.196787, 34.208588>,  <38.810272, 29.974455, 34.461712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594643, 30.196787, 34.208588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233127, 0.820444, 0.522038,
		0.809353, 0.133891, -0.571858,
		-0.539074, 0.555828, -0.632815,
		38.432922, 30.363535, 34.018742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305538, 30.354641, 34.166412>,  <38.810272, 29.974455, 34.461712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305538, 30.354641, 34.166412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957275, 30.548729, 34.134117>,  <38.748318, 30.665182, 34.114738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957275, 30.548729, 34.134117>,  <39.305538, 30.354641, 34.166412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957275, 30.548729, 34.134117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302982, 0.658319, 0.689070,
		0.387506, 0.575479, -0.720182,
		-0.870655, 0.485221, -0.080742,
		38.696079, 30.694296, 34.109894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426323, 31.110186, 34.007217>,  <39.305538, 30.354641, 34.166412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426323, 31.110186, 34.007217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063744, 31.083391, 34.174007>,  <38.846195, 31.067314, 34.274082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063744, 31.083391, 34.174007>,  <39.426323, 31.110186, 34.007217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063744, 31.083391, 34.174007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204570, 0.794134, 0.572278,
		-0.369472, 0.604040, -0.706135,
		-0.906445, -0.066986, 0.416979,
		38.791809, 31.063295, 34.299103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359161, 31.810789, 34.237560>,  <39.426323, 31.110186, 34.007217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359161, 31.810789, 34.237560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073994, 31.607763, 34.431107>,  <38.902893, 31.485949, 34.547234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073994, 31.607763, 34.431107>,  <39.359161, 31.810789, 34.237560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073994, 31.607763, 34.431107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101896, 0.757662, 0.644643,
		-0.693803, 0.410275, -0.591871,
		-0.712920, -0.507565, 0.483863,
		38.860119, 31.455494, 34.576267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669998, 32.053524, 34.156170>,  <39.359161, 31.810789, 34.237560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669998, 32.053524, 34.156170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709648, 31.909771, 34.527332>,  <38.733437, 31.823519, 34.750031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709648, 31.909771, 34.527332>,  <38.669998, 32.053524, 34.156170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709648, 31.909771, 34.527332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362366, 0.855438, 0.370023,
		-0.926750, -0.372920, -0.045435,
		0.099122, -0.359384, 0.927911,
		38.739384, 31.801956, 34.805706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227436, 32.347881, 34.526070>,  <38.669998, 32.053524, 34.156170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227436, 32.347881, 34.526070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.439346, 32.193684, 34.828255>,  <38.566494, 32.101166, 35.009567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.439346, 32.193684, 34.828255>,  <38.227436, 32.347881, 34.526070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439346, 32.193684, 34.828255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419457, 0.655085, 0.628426,
		-0.737150, -0.649812, 0.185351,
		0.529780, -0.385498, 0.755464,
		38.598282, 32.078033, 35.054893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840000, 32.361885, 35.136959>,  <38.227436, 32.347881, 34.526070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840000, 32.361885, 35.136959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222637, 32.338314, 35.251125>,  <38.452221, 32.324173, 35.319626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222637, 32.338314, 35.251125>,  <37.840000, 32.361885, 35.136959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222637, 32.338314, 35.251125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162463, 0.705233, 0.690110,
		-0.241949, -0.706522, 0.665046,
		0.956591, -0.058926, 0.285415,
		38.509613, 32.320637, 35.336750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781437, 32.617847, 35.819881>,  <37.840000, 32.361885, 35.136959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781437, 32.617847, 35.819881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169506, 32.672798, 35.739979>,  <38.402348, 32.705769, 35.692039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169506, 32.672798, 35.739979>,  <37.781437, 32.617847, 35.819881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169506, 32.672798, 35.739979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003262, 0.816487, 0.577355,
		0.242408, -0.560784, 0.791682,
		0.970169, 0.137373, -0.199752,
		38.460556, 32.714008, 35.680054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094608, 32.755932, 36.493481>,  <37.781437, 32.617847, 35.819881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094608, 32.755932, 36.493481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340668, 32.902287, 36.214134>,  <38.488304, 32.990101, 36.046528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340668, 32.902287, 36.214134>,  <38.094608, 32.755932, 36.493481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340668, 32.902287, 36.214134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071145, 0.856416, 0.511360,
		0.785191, -0.364250, 0.500797,
		0.615154, 0.365886, -0.698364,
		38.525215, 33.012054, 36.004623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732742, 32.953564, 36.802521>,  <38.094608, 32.755932, 36.493481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732742, 32.953564, 36.802521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765617, 33.171482, 36.468708>,  <38.785343, 33.302231, 36.268421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765617, 33.171482, 36.468708>,  <38.732742, 32.953564, 36.802521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765617, 33.171482, 36.468708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122151, 0.825547, 0.550955,
		0.989102, -0.147223, 0.001306,
		0.082192, 0.544792, -0.834534,
		38.790276, 33.334919, 36.218349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258305, 33.422089, 36.960903>,  <38.732742, 32.953564, 36.802521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258305, 33.422089, 36.960903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063828, 33.597702, 36.658680>,  <38.947144, 33.703072, 36.477345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063828, 33.597702, 36.658680>,  <39.258305, 33.422089, 36.960903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063828, 33.597702, 36.658680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140674, 0.892674, 0.428186,
		0.862455, 0.101893, -0.495770,
		-0.486191, 0.439033, -0.755558,
		38.917969, 33.729412, 36.432011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648773, 34.013817, 36.835297>,  <39.258305, 33.422089, 36.960903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648773, 34.013817, 36.835297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294075, 34.079014, 36.662270>,  <39.081257, 34.118130, 36.558453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294075, 34.079014, 36.662270>,  <39.648773, 34.013817, 36.835297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294075, 34.079014, 36.662270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014196, 0.925735, 0.377907,
		0.462040, 0.341248, -0.818577,
		-0.886745, 0.162988, -0.432571,
		39.028053, 34.127911, 36.532497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718697, 34.688377, 36.543034>,  <39.648773, 34.013817, 36.835297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718697, 34.688377, 36.543034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324726, 34.626434, 36.573853>,  <39.088345, 34.589268, 36.592346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324726, 34.626434, 36.573853>,  <39.718697, 34.688377, 36.543034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324726, 34.626434, 36.573853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112925, 0.913119, 0.391741,
		-0.131022, 0.377135, -0.916843,
		-0.984927, -0.154862, 0.077051,
		39.029247, 34.579975, 36.596970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355640, 35.371281, 36.372360>,  <39.718697, 34.688377, 36.543034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355640, 35.371281, 36.372360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.093300, 35.152649, 36.580635>,  <38.935898, 35.021469, 36.705601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.093300, 35.152649, 36.580635>,  <39.355640, 35.371281, 36.372360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093300, 35.152649, 36.580635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251054, 0.808416, 0.532386,
		-0.711925, 0.218442, -0.667418,
		-0.655847, -0.546577, 0.520691,
		38.896545, 34.988674, 36.736843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814400, 35.820496, 36.419189>,  <39.355640, 35.371281, 36.372360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814400, 35.820496, 36.419189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769928, 35.558983, 36.718575>,  <38.743244, 35.402073, 36.898205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769928, 35.558983, 36.718575>,  <38.814400, 35.820496, 36.419189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769928, 35.558983, 36.718575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210359, 0.751553, 0.625233,
		-0.971281, -0.087932, -0.221090,
		-0.111183, -0.653786, 0.748467,
		38.736572, 35.362846, 36.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264999, 36.184753, 36.818851>,  <38.814400, 35.820496, 36.419189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264999, 36.184753, 36.818851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421669, 35.908142, 37.061626>,  <38.515671, 35.742176, 37.207291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421669, 35.908142, 37.061626>,  <38.264999, 36.184753, 36.818851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421669, 35.908142, 37.061626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106357, 0.621196, 0.776405,
		-0.913937, -0.368649, 0.169756,
		0.391673, -0.691530, 0.606942,
		38.539169, 35.700684, 37.243710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628361, 36.676949, 36.997318>,  <38.264999, 36.184753, 36.818851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628361, 36.676949, 36.997318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465851, 36.976799, 36.788319>,  <37.368343, 37.156708, 36.662918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465851, 36.976799, 36.788319>,  <37.628361, 36.676949, 36.997318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465851, 36.976799, 36.788319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537323, -0.658501, -0.526935,
		-0.739069, 0.066669, 0.670323,
		-0.406278, 0.749621, -0.522500,
		37.343967, 37.201687, 36.631569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866100, 36.464031, 36.921638>,  <37.628361, 36.676949, 36.997318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866100, 36.464031, 36.921638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936413, 36.748653, 36.649521>,  <36.978600, 36.919426, 36.486252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936413, 36.748653, 36.649521>,  <36.866100, 36.464031, 36.921638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936413, 36.748653, 36.649521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451337, -0.555890, -0.698056,
		-0.874870, 0.429743, 0.223437,
		0.175778, 0.711553, -0.680290,
		36.989147, 36.962120, 36.445435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211689, 36.632370, 36.647495>,  <36.866100, 36.464031, 36.921638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211689, 36.632370, 36.647495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504375, 36.719193, 36.389046>,  <36.679989, 36.771286, 36.233978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504375, 36.719193, 36.389046>,  <36.211689, 36.632370, 36.647495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504375, 36.719193, 36.389046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471054, -0.524104, -0.709523,
		-0.492641, 0.823531, -0.281252,
		0.731719, 0.217055, -0.646122,
		36.723892, 36.784309, 36.195210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849106, 36.783287, 36.019707>,  <36.211689, 36.632370, 36.647495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849106, 36.783287, 36.019707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220253, 36.737724, 35.877666>,  <36.442940, 36.710388, 35.792442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220253, 36.737724, 35.877666>,  <35.849106, 36.783287, 36.019707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220253, 36.737724, 35.877666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355525, -0.557602, -0.750121,
		-0.112561, 0.822257, -0.557874,
		0.927864, -0.113904, -0.355097,
		36.498611, 36.703552, 35.771137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825359, 36.918095, 35.230019>,  <35.849106, 36.783287, 36.019707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825359, 36.918095, 35.230019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159607, 36.711628, 35.305183>,  <36.360157, 36.587749, 35.350285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159607, 36.711628, 35.305183>,  <35.825359, 36.918095, 35.230019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159607, 36.711628, 35.305183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251325, -0.663446, -0.704751,
		0.488439, 0.541677, -0.684115,
		0.835621, -0.516164, 0.187916,
		36.410294, 36.556778, 35.361557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178951, 36.709103, 34.573505>,  <35.825359, 36.918095, 35.230019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178951, 36.709103, 34.573505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327244, 36.443905, 34.833660>,  <36.416218, 36.284786, 34.989754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327244, 36.443905, 34.833660>,  <36.178951, 36.709103, 34.573505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327244, 36.443905, 34.833660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069489, -0.678520, -0.731288,
		0.926137, 0.316305, -0.205478,
		0.370731, -0.662994, 0.650383,
		36.438461, 36.245007, 35.028774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463032, 36.228985, 34.124786>,  <36.178951, 36.709103, 34.573505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463032, 36.228985, 34.124786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495232, 36.048351, 34.480225>,  <36.514549, 35.939972, 34.693485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495232, 36.048351, 34.480225>,  <36.463032, 36.228985, 34.124786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495232, 36.048351, 34.480225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284230, -0.844072, -0.454705,
		0.955371, 0.289166, 0.060408,
		0.080496, -0.451582, 0.888591,
		36.519379, 35.912876, 34.746803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209106, 36.047504, 34.349575>,  <36.463032, 36.228985, 34.124786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209106, 36.047504, 34.349575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947586, 35.784088, 34.498638>,  <36.790676, 35.626038, 34.588078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947586, 35.784088, 34.498638>,  <37.209106, 36.047504, 34.349575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947586, 35.784088, 34.498638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464392, -0.738057, -0.489502,
		0.597401, -0.146974, 0.788359,
		-0.653798, -0.658537, 0.372662,
		36.751446, 35.586529, 34.610435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471157, 35.441620, 34.209694>,  <37.209106, 36.047504, 34.349575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471157, 35.441620, 34.209694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.094971, 35.322380, 34.275005>,  <36.869259, 35.250835, 34.314194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.094971, 35.322380, 34.275005>,  <37.471157, 35.441620, 34.209694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094971, 35.322380, 34.275005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149493, -0.794215, -0.588960,
		0.305249, -0.529488, 0.791496,
		-0.940465, -0.298103, 0.163279,
		36.812832, 35.232948, 34.323990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550438, 34.727234, 34.396122>,  <37.471157, 35.441620, 34.209694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550438, 34.727234, 34.396122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160469, 34.725990, 34.307117>,  <36.926487, 34.725246, 34.253716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160469, 34.725990, 34.307117>,  <37.550438, 34.727234, 34.396122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160469, 34.725990, 34.307117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089003, -0.921889, -0.377094,
		-0.203958, -0.387443, 0.899049,
		-0.974925, -0.003107, -0.222510,
		36.867992, 34.725060, 34.240364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330788, 34.001976, 34.540981>,  <37.550438, 34.727234, 34.396122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330788, 34.001976, 34.540981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033859, 34.143044, 34.313091>,  <36.855701, 34.227684, 34.176357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033859, 34.143044, 34.313091>,  <37.330788, 34.001976, 34.540981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033859, 34.143044, 34.313091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005649, -0.846953, -0.531638,
		-0.670024, -0.397863, 0.626716,
		-0.742318, 0.352670, -0.569726,
		36.811165, 34.248844, 34.142174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886547, 33.481255, 34.500458>,  <37.330788, 34.001976, 34.540981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886547, 33.481255, 34.500458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768581, 33.696201, 34.184418>,  <36.697800, 33.825169, 33.994793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768581, 33.696201, 34.184418>,  <36.886547, 33.481255, 34.500458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768581, 33.696201, 34.184418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043314, -0.833548, -0.550746,
		-0.954541, -0.128201, 0.269102,
		-0.294916, 0.537366, -0.790103,
		36.680107, 33.857410, 33.947388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228821, 33.101364, 34.203140>,  <36.886547, 33.481255, 34.500458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228821, 33.101364, 34.203140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390965, 33.356056, 33.940765>,  <36.488251, 33.508873, 33.783340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390965, 33.356056, 33.940765>,  <36.228821, 33.101364, 34.203140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390965, 33.356056, 33.940765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065042, -0.695630, -0.715450,
		-0.911840, 0.332679, -0.240567,
		0.405361, 0.636729, -0.655941,
		36.512573, 33.547073, 33.743984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857975, 33.157864, 33.566685>,  <36.228821, 33.101364, 34.203140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857975, 33.157864, 33.566685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212082, 33.301907, 33.448959>,  <36.424545, 33.388332, 33.378323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212082, 33.301907, 33.448959>,  <35.857975, 33.157864, 33.566685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212082, 33.301907, 33.448959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092000, -0.484724, -0.869816,
		-0.455887, 0.797098, -0.395981,
		0.885270, 0.360107, -0.294312,
		36.477661, 33.409939, 33.360664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719711, 33.474201, 32.917694>,  <35.857975, 33.157864, 33.566685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719711, 33.474201, 32.917694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111534, 33.394642, 32.905651>,  <36.346626, 33.346909, 32.898426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111534, 33.394642, 32.905651>,  <35.719711, 33.474201, 32.917694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111534, 33.394642, 32.905651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134303, -0.535209, -0.833975,
		0.149761, 0.820970, -0.550981,
		0.979558, -0.198895, -0.030105,
		36.405403, 33.334972, 32.896618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921383, 33.588528, 32.295181>,  <35.719711, 33.474201, 32.917694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921383, 33.588528, 32.295181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207169, 33.349323, 32.440464>,  <36.378639, 33.205799, 32.527634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207169, 33.349323, 32.440464>,  <35.921383, 33.588528, 32.295181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207169, 33.349323, 32.440464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054610, -0.565188, -0.823153,
		0.697538, 0.568278, -0.436464,
		0.714464, -0.598015, 0.363206,
		36.421509, 33.169918, 32.549427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277718, 33.394810, 31.726753>,  <35.921383, 33.588528, 32.295181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277718, 33.394810, 31.726753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377499, 33.125851, 32.005508>,  <36.437366, 32.964478, 32.172764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377499, 33.125851, 32.005508>,  <36.277718, 33.394810, 31.726753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377499, 33.125851, 32.005508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047638, -0.727290, -0.684675,
		0.967214, 0.137598, -0.213459,
		0.249456, -0.672396, 0.696890,
		36.452335, 32.924133, 32.214577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864574, 32.973881, 31.539530>,  <36.277718, 33.394810, 31.726753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864574, 32.973881, 31.539530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655838, 32.746273, 31.793741>,  <36.530598, 32.609707, 31.946268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655838, 32.746273, 31.793741>,  <36.864574, 32.973881, 31.539530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655838, 32.746273, 31.793741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109441, -0.694197, -0.711417,
		0.845994, -0.440798, 0.299986,
		-0.521840, -0.569023, 0.635527,
		36.499287, 32.575565, 31.984400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.188160, 32.353485, 31.414928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866245, 32.252338, 31.629732>,  <36.673096, 32.191650, 31.758615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866245, 32.252338, 31.629732>,  <37.188160, 32.353485, 31.414928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866245, 32.252338, 31.629732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000568, -0.905043, -0.425319,
		0.593568, -0.341985, 0.728508,
		-0.804784, -0.252869, 0.537011,
		36.624809, 32.176479, 31.790834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286087, 31.698847, 31.771923>,  <37.188160, 32.353485, 31.414928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286087, 31.698847, 31.771923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898090, 31.753195, 31.691263>,  <36.665295, 31.785803, 31.642866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898090, 31.753195, 31.691263>,  <37.286087, 31.698847, 31.771923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898090, 31.753195, 31.691263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026781, -0.883964, -0.466787,
		-0.241675, -0.447378, 0.861073,
		-0.969988, 0.135871, -0.201651,
		36.607094, 31.793957, 31.630768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951134, 31.015112, 31.790985>,  <37.286087, 31.698847, 31.771923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951134, 31.015112, 31.790985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676430, 31.230730, 31.595928>,  <36.511608, 31.360100, 31.478893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676430, 31.230730, 31.595928>,  <36.951134, 31.015112, 31.790985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676430, 31.230730, 31.595928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296320, -0.820205, -0.489346,
		-0.663746, -0.191564, 0.723011,
		-0.686758, 0.539043, -0.487644,
		36.470402, 31.392443, 31.449635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348602, 30.568258, 31.932217>,  <36.951134, 31.015112, 31.790985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348602, 30.568258, 31.932217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278866, 30.817804, 31.627481>,  <36.237026, 30.967533, 31.444641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278866, 30.817804, 31.627481>,  <36.348602, 30.568258, 31.932217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278866, 30.817804, 31.627481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223585, -0.778558, -0.586394,
		-0.958966, 0.068105, 0.275219,
		-0.174338, 0.623866, -0.761838,
		36.226566, 31.004965, 31.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631184, 30.429932, 31.680708>,  <36.348602, 30.568258, 31.932217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631184, 30.429932, 31.680708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825382, 30.602186, 31.376381>,  <35.941902, 30.705540, 31.193785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825382, 30.602186, 31.376381>,  <35.631184, 30.429932, 31.680708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825382, 30.602186, 31.376381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344715, -0.705455, -0.619277,
		-0.803406, 0.562924, -0.194051,
		0.485501, 0.430638, -0.760815,
		35.971031, 30.731379, 31.148136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196720, 30.336063, 31.213650>,  <35.631184, 30.429932, 31.680708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196720, 30.336063, 31.213650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520626, 30.421700, 30.995132>,  <35.714970, 30.473082, 30.864021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520626, 30.421700, 30.995132>,  <35.196720, 30.336063, 31.213650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520626, 30.421700, 30.995132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376627, -0.524275, -0.763733,
		-0.449918, 0.824197, -0.343909,
		0.809769, 0.214092, -0.546295,
		35.763557, 30.485928, 30.831244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027676, 30.492033, 30.478994>,  <35.196720, 30.336063, 31.213650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027676, 30.492033, 30.478994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419895, 30.421600, 30.444311>,  <35.655228, 30.379341, 30.423502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419895, 30.421600, 30.444311>,  <35.027676, 30.492033, 30.478994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419895, 30.421600, 30.444311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159485, -0.457307, -0.874891,
		0.114402, 0.871702, -0.476495,
		0.980549, -0.176083, -0.086706,
		35.714062, 30.368774, 30.418299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275078, 30.799410, 29.829020>,  <35.027676, 30.492033, 30.478994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275078, 30.799410, 29.829020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519630, 30.499830, 29.931225>,  <35.666363, 30.320082, 29.992548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519630, 30.499830, 29.931225>,  <35.275078, 30.799410, 29.829020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519630, 30.499830, 29.931225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163723, -0.435618, -0.885117,
		0.774213, 0.499311, -0.388950,
		0.611382, -0.748949, 0.255512,
		35.703045, 30.275145, 30.007879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552521, 30.699814, 29.259899>,  <35.275078, 30.799410, 29.829020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552521, 30.699814, 29.259899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624702, 30.367329, 29.470240>,  <35.668011, 30.167837, 29.596443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624702, 30.367329, 29.470240>,  <35.552521, 30.699814, 29.259899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624702, 30.367329, 29.470240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278400, -0.555929, -0.783222,
		0.943361, -0.005064, -0.331728,
		0.180451, -0.831214, 0.525852,
		35.678837, 30.117964, 29.627995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875645, 30.204264, 28.826529>,  <35.552521, 30.699814, 29.259899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875645, 30.204264, 28.826529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831188, 29.934357, 29.118376>,  <35.804516, 29.772413, 29.293484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831188, 29.934357, 29.118376>,  <35.875645, 30.204264, 28.826529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831188, 29.934357, 29.118376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237341, -0.694899, -0.678811,
		0.965048, -0.248610, -0.082920,
		-0.111138, -0.674766, 0.729616,
		35.797848, 29.731928, 29.337261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144150, 29.522976, 28.638632>,  <35.875645, 30.204264, 28.826529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144150, 29.522976, 28.638632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845104, 29.475498, 28.900009>,  <35.665676, 29.447012, 29.056835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845104, 29.475498, 28.900009>,  <36.144150, 29.522976, 28.638632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845104, 29.475498, 28.900009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430086, -0.663199, -0.612530,
		0.506067, -0.738972, 0.444766,
		-0.747611, -0.118694, 0.653445,
		35.620819, 29.439890, 29.096043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914047, 28.759007, 28.630930>,  <36.144150, 29.522976, 28.638632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914047, 28.759007, 28.630930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599556, 28.935318, 28.804161>,  <35.410862, 29.041105, 28.908100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599556, 28.935318, 28.804161>,  <35.914047, 28.759007, 28.630930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599556, 28.935318, 28.804161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616909, -0.519513, -0.591210,
		-0.035602, -0.731997, 0.680377,
		-0.786228, 0.440779, 0.433080,
		35.363686, 29.067553, 28.934086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501148, 28.218935, 28.906504>,  <35.914047, 28.759007, 28.630930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501148, 28.218935, 28.906504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263271, 28.533035, 28.837540>,  <35.120544, 28.721495, 28.796162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263271, 28.533035, 28.837540>,  <35.501148, 28.218935, 28.906504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263271, 28.533035, 28.837540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616805, -0.583189, -0.528623,
		-0.515648, -0.208025, 0.831164,
		-0.594692, 0.785249, -0.172409,
		35.084866, 28.768610, 28.785816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773037, 27.932299, 28.983292>,  <35.501148, 28.218935, 28.906504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773037, 27.932299, 28.983292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752819, 28.284225, 28.794247>,  <34.740688, 28.495382, 28.680819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752819, 28.284225, 28.794247>,  <34.773037, 27.932299, 28.983292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752819, 28.284225, 28.794247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649568, -0.388412, -0.653603,
		-0.758621, 0.273961, 0.591134,
		-0.050542, 0.879819, -0.472614,
		34.737656, 28.548172, 28.652462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026218, 28.135912, 28.921474>,  <34.773037, 27.932299, 28.983292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026218, 28.135912, 28.921474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222775, 28.342386, 28.640879>,  <34.340710, 28.466270, 28.472521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222775, 28.342386, 28.640879>,  <34.026218, 28.135912, 28.921474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222775, 28.342386, 28.640879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682407, -0.272272, -0.678371,
		-0.541161, 0.812047, 0.218456,
		0.491391, 0.516185, -0.701491,
		34.370193, 28.497242, 28.430431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541466, 28.737488, 28.726450>,  <34.026218, 28.135912, 28.921474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541466, 28.737488, 28.726450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826412, 28.640585, 28.462980>,  <33.997379, 28.582443, 28.304899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826412, 28.640585, 28.462980>,  <33.541466, 28.737488, 28.726450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826412, 28.640585, 28.462980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701405, -0.213824, -0.679934,
		0.023880, 0.946356, -0.322242,
		0.712363, -0.242259, -0.658673,
		34.040119, 28.567907, 28.265379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386520, 29.094965, 28.218809>,  <33.541466, 28.737488, 28.726450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386520, 29.094965, 28.218809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629421, 28.823797, 28.053078>,  <33.775162, 28.661097, 27.953638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629421, 28.823797, 28.053078>,  <33.386520, 29.094965, 28.218809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629421, 28.823797, 28.053078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671637, -0.159426, -0.723524,
		0.424436, 0.717641, -0.552128,
		0.607254, -0.677919, -0.414328,
		33.811596, 28.620422, 27.928780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394375, 29.251472, 27.471600>,  <33.386520, 29.094965, 28.218809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394375, 29.251472, 27.471600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549099, 28.883266, 27.493641>,  <33.641933, 28.662344, 27.506866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549099, 28.883266, 27.493641>,  <33.394375, 29.251472, 27.471600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549099, 28.883266, 27.493641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521920, -0.267795, -0.809867,
		0.760250, 0.284503, -0.584019,
		0.386807, -0.920513, 0.055103,
		33.665142, 28.607113, 27.510172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586338, 29.093912, 26.793964>,  <33.394375, 29.251472, 27.471600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586338, 29.093912, 26.793964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.528034, 28.744751, 26.980211>,  <33.493053, 28.535255, 27.091959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.528034, 28.744751, 26.980211>,  <33.586338, 29.093912, 26.793964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528034, 28.744751, 26.980211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513016, -0.335731, -0.790000,
		0.845914, -0.354017, -0.398876,
		-0.145758, -0.872901, 0.465616,
		33.484306, 28.482880, 27.119896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569695, 28.676823, 26.351280>,  <33.586338, 29.093912, 26.793964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569695, 28.676823, 26.351280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443741, 28.422794, 26.633425>,  <33.368168, 28.270378, 26.802711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443741, 28.422794, 26.633425>,  <33.569695, 28.676823, 26.351280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443741, 28.422794, 26.633425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685784, -0.361541, -0.631655,
		0.656162, -0.682624, -0.321677,
		-0.314883, -0.635069, 0.705362,
		33.349277, 28.232273, 26.845034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610615, 28.071817, 25.969395>,  <33.569695, 28.676823, 26.351280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610615, 28.071817, 25.969395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357456, 28.000437, 26.270752>,  <33.205563, 27.957609, 26.451567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357456, 28.000437, 26.270752>,  <33.610615, 28.071817, 25.969395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357456, 28.000437, 26.270752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738951, -0.151189, -0.656577,
		0.231072, -0.972264, -0.036182,
		-0.632895, -0.178453, 0.753391,
		33.167587, 27.946901, 26.496769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331879, 27.360025, 25.843390>,  <33.610615, 28.071817, 25.969395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331879, 27.360025, 25.843390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082718, 27.568790, 26.076490>,  <32.933220, 27.694050, 26.216351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082718, 27.568790, 26.076490>,  <33.331879, 27.360025, 25.843390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082718, 27.568790, 26.076490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742742, -0.160682, -0.650012,
		-0.245610, -0.837730, 0.487734,
		-0.622905, 0.521909, 0.582752,
		32.895847, 27.725363, 26.251316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866398, 26.925510, 25.914061>,  <33.331879, 27.360025, 25.843390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866398, 26.925510, 25.914061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745365, 27.305296, 25.947447>,  <32.672745, 27.533167, 25.967478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745365, 27.305296, 25.947447>,  <32.866398, 26.925510, 25.914061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745365, 27.305296, 25.947447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669214, -0.149277, -0.727921,
		-0.678674, -0.276110, 0.680562,
		-0.302578, 0.949463, 0.083466,
		32.654591, 27.590136, 25.972486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273438, 26.349726, 26.136280>,  <32.866398, 26.925510, 25.914061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273438, 26.349726, 26.136280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055054, 26.054905, 26.295620>,  <32.924023, 25.878012, 26.391224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055054, 26.054905, 26.295620>,  <33.273438, 26.349726, 26.136280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055054, 26.054905, 26.295620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376059, 0.209293, 0.902650,
		-0.748673, 0.642611, 0.162911,
		-0.545957, -0.737053, 0.398351,
		32.891266, 25.833790, 26.415125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144100, 26.636070, 26.758110>,  <33.273438, 26.349726, 26.136280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144100, 26.636070, 26.758110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.065388, 26.248590, 26.818640>,  <33.018158, 26.016104, 26.854958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.065388, 26.248590, 26.818640>,  <33.144100, 26.636070, 26.758110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065388, 26.248590, 26.818640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261542, 0.096886, 0.960317,
		-0.944919, 0.228554, 0.234289,
		-0.196785, -0.968698, 0.151326,
		33.006351, 25.957981, 26.864038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676510, 26.564114, 27.324093>,  <33.144100, 26.636070, 26.758110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676510, 26.564114, 27.324093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884644, 26.223118, 27.304012>,  <33.009521, 26.018520, 27.291964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884644, 26.223118, 27.304012>,  <32.676510, 26.564114, 27.324093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884644, 26.223118, 27.304012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317288, 0.138417, 0.938174,
		-0.792833, -0.504089, 0.342506,
		0.520331, -0.852488, -0.050200,
		33.040745, 25.967371, 27.288952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547569, 26.169470, 27.918983>,  <32.676510, 26.564114, 27.324093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547569, 26.169470, 27.918983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.903381, 26.054590, 27.776855>,  <33.116867, 25.985662, 27.691578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.903381, 26.054590, 27.776855>,  <32.547569, 26.169470, 27.918983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903381, 26.054590, 27.776855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386788, 0.059461, 0.920250,
		-0.243165, -0.956024, 0.163978,
		0.889531, -0.287197, -0.355320,
		33.170242, 25.968431, 27.670259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796108, 25.713745, 28.481812>,  <32.547569, 26.169470, 27.918983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796108, 25.713745, 28.481812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120213, 25.825363, 28.275660>,  <33.314674, 25.892334, 28.151968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120213, 25.825363, 28.275660>,  <32.796108, 25.713745, 28.481812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120213, 25.825363, 28.275660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511443, 0.092760, 0.854296,
		0.286194, -0.955787, -0.067557,
		0.810259, 0.279046, -0.515378,
		33.363289, 25.909077, 28.121046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299042, 25.209368, 28.670654>,  <32.796108, 25.713745, 28.481812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299042, 25.209368, 28.670654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527565, 25.504303, 28.526468>,  <33.664680, 25.681265, 28.439957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527565, 25.504303, 28.526468>,  <33.299042, 25.209368, 28.670654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527565, 25.504303, 28.526468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434275, 0.101097, 0.895089,
		0.696425, -0.667916, -0.262450,
		0.571312, 0.737338, -0.360466,
		33.698959, 25.725504, 28.418329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915730, 25.082851, 28.939356>,  <33.299042, 25.209368, 28.670654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915730, 25.082851, 28.939356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964928, 25.467649, 28.841837>,  <33.994446, 25.698528, 28.783325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964928, 25.467649, 28.841837>,  <33.915730, 25.082851, 28.939356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964928, 25.467649, 28.841837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472594, 0.159243, 0.866773,
		0.872655, -0.221825, -0.435047,
		0.122994, 0.961995, -0.243798,
		34.001827, 25.756248, 28.768698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572079, 25.274315, 29.125967>,  <33.915730, 25.082851, 28.939356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572079, 25.274315, 29.125967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373600, 25.621376, 29.113537>,  <34.254513, 25.829613, 29.106079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373600, 25.621376, 29.113537>,  <34.572079, 25.274315, 29.125967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373600, 25.621376, 29.113537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397885, 0.259064, 0.880098,
		0.771672, 0.424335, -0.473774,
		-0.496194, 0.867655, -0.031076,
		34.224743, 25.881672, 29.104214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071110, 25.764202, 29.115990>,  <34.572079, 25.274315, 29.125967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071110, 25.764202, 29.115990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755081, 25.995401, 29.197678>,  <34.565464, 26.134121, 29.246691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755081, 25.995401, 29.197678>,  <35.071110, 25.764202, 29.115990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755081, 25.995401, 29.197678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594903, 0.642548, 0.482930,
		0.147912, 0.503040, -0.851512,
		-0.790071, 0.577998, 0.204220,
		34.518059, 26.168800, 29.258944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288670, 26.359846, 28.872917>,  <35.071110, 25.764202, 29.115990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288670, 26.359846, 28.872917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.999859, 26.445873, 29.135952>,  <34.826572, 26.497490, 29.293774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.999859, 26.445873, 29.135952>,  <35.288670, 26.359846, 28.872917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999859, 26.445873, 29.135952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667394, 0.467057, 0.580037,
		-0.182383, 0.857673, -0.480764,
		-0.722026, 0.215070, 0.657589,
		34.783253, 26.510395, 29.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461937, 27.054403, 29.135567>,  <35.288670, 26.359846, 28.872917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461937, 27.054403, 29.135567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236500, 26.927654, 29.440712>,  <35.101238, 26.851604, 29.623798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236500, 26.927654, 29.440712>,  <35.461937, 27.054403, 29.135567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236500, 26.927654, 29.440712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497592, 0.606926, 0.619713,
		-0.659371, 0.728857, -0.184384,
		-0.563589, -0.316872, 0.762862,
		35.067425, 26.832592, 29.669571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405796, 27.625462, 29.545019>,  <35.461937, 27.054403, 29.135567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405796, 27.625462, 29.545019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321846, 27.315977, 29.784126>,  <35.271477, 27.130287, 29.927591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321846, 27.315977, 29.784126>,  <35.405796, 27.625462, 29.545019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321846, 27.315977, 29.784126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560686, 0.405627, 0.721871,
		-0.800990, 0.486662, 0.348678,
		-0.209874, -0.773710, 0.597768,
		35.258884, 27.083864, 29.963457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089840, 27.951208, 30.186174>,  <35.405796, 27.625462, 29.545019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089840, 27.951208, 30.186174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211605, 27.590010, 30.307457>,  <35.284664, 27.373291, 30.380226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211605, 27.590010, 30.307457>,  <35.089840, 27.951208, 30.186174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211605, 27.590010, 30.307457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565950, 0.427496, 0.704945,
		-0.766181, -0.042994, 0.641185,
		0.304413, -0.902994, 0.303207,
		35.302929, 27.319111, 30.398418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084759, 27.880512, 30.978065>,  <35.089840, 27.951208, 30.186174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084759, 27.880512, 30.978065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341724, 27.603960, 30.845825>,  <35.495903, 27.438028, 30.766481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341724, 27.603960, 30.845825>,  <35.084759, 27.880512, 30.978065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341724, 27.603960, 30.845825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728782, 0.417728, 0.542567,
		-0.237018, -0.589490, 0.772220,
		0.642416, -0.691379, -0.330601,
		35.534451, 27.396547, 30.746645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332661, 27.648661, 31.682821>,  <35.084759, 27.880512, 30.978065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332661, 27.648661, 31.682821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590748, 27.517586, 31.406761>,  <35.745602, 27.438942, 31.241125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590748, 27.517586, 31.406761>,  <35.332661, 27.648661, 31.682821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590748, 27.517586, 31.406761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757142, 0.394981, 0.520313,
		0.102097, -0.858261, 0.502956,
		0.645223, -0.327686, -0.690152,
		35.784313, 27.419279, 31.199715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830883, 27.487803, 32.020737>,  <35.332661, 27.648661, 31.682821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830883, 27.487803, 32.020737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997852, 27.513031, 31.658129>,  <36.098034, 27.528168, 31.440563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997852, 27.513031, 31.658129>,  <35.830883, 27.487803, 32.020737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997852, 27.513031, 31.658129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846998, 0.334361, 0.413277,
		0.329167, -0.940333, 0.086156,
		0.417425, 0.063063, -0.906520,
		36.123077, 27.531952, 31.386173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433933, 27.318678, 32.060333>,  <35.830883, 27.487803, 32.020737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433933, 27.318678, 32.060333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477585, 27.534067, 31.726114>,  <36.503777, 27.663301, 31.525583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477585, 27.534067, 31.726114>,  <36.433933, 27.318678, 32.060333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477585, 27.534067, 31.726114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823187, 0.422207, 0.379611,
		0.557184, -0.729238, -0.397188,
		0.109131, 0.538473, -0.835546,
		36.510323, 27.695608, 31.475451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156891, 27.360060, 31.898096>,  <36.433933, 27.318678, 32.060333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156891, 27.360060, 31.898096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995583, 27.644423, 31.667622>,  <36.898800, 27.815041, 31.529337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995583, 27.644423, 31.667622>,  <37.156891, 27.360060, 31.898096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995583, 27.644423, 31.667622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745602, 0.620308, 0.243504,
		0.530521, -0.331408, -0.780203,
		-0.403267, 0.710905, -0.576185,
		36.874603, 27.857695, 31.494766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689804, 27.592381, 31.269917>,  <37.156891, 27.360060, 31.898096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689804, 27.592381, 31.269917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425922, 27.871216, 31.382242>,  <37.267593, 28.038517, 31.449638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425922, 27.871216, 31.382242>,  <37.689804, 27.592381, 31.269917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425922, 27.871216, 31.382242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751108, 0.624017, 0.215498,
		-0.025012, 0.353087, -0.935256,
		-0.659705, 0.697089, 0.280814,
		37.228012, 28.080343, 31.466486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904045, 28.281431, 31.206636>,  <37.689804, 27.592381, 31.269917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904045, 28.281431, 31.206636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600685, 28.383305, 31.446623>,  <37.418667, 28.444427, 31.590614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600685, 28.383305, 31.446623>,  <37.904045, 28.281431, 31.206636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600685, 28.383305, 31.446623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577075, 0.690293, 0.436440,
		-0.303000, 0.677224, -0.670491,
		-0.758403, 0.254682, 0.599968,
		37.373165, 28.459709, 31.626614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768951, 29.023327, 31.048222>,  <37.904045, 28.281431, 31.206636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768951, 29.023327, 31.048222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629688, 28.948015, 31.415556>,  <37.546131, 28.902828, 31.635956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629688, 28.948015, 31.415556>,  <37.768951, 29.023327, 31.048222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629688, 28.948015, 31.415556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419075, 0.845025, 0.332128,
		-0.838548, 0.500484, -0.215299,
		-0.348158, -0.188279, 0.918334,
		37.525242, 28.891531, 31.691055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.469532, 34.644268, 32.934448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535728, 34.397106, 33.241905>,  <36.575447, 34.248810, 33.426380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535728, 34.397106, 33.241905>,  <36.469532, 34.644268, 32.934448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535728, 34.397106, 33.241905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284605, 0.716303, 0.637110,
		-0.944252, -0.324197, -0.057315,
		0.165494, -0.617905, 0.768639,
		36.585377, 34.211735, 33.472496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874348, 34.609619, 33.358227>,  <36.469532, 34.644268, 32.934448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874348, 34.609619, 33.358227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.175640, 34.505661, 33.599918>,  <36.356415, 34.443287, 33.744934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.175640, 34.505661, 33.599918>,  <35.874348, 34.609619, 33.358227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175640, 34.505661, 33.599918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299675, 0.682149, 0.666984,
		-0.585520, -0.683467, 0.435934,
		0.753234, -0.259894, 0.604230,
		36.401611, 34.427692, 33.781189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599827, 34.766861, 33.969975>,  <35.874348, 34.609619, 33.358227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599827, 34.766861, 33.969975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995796, 34.751850, 34.024586>,  <36.233379, 34.742844, 34.057354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995796, 34.751850, 34.024586>,  <35.599827, 34.766861, 33.969975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995796, 34.751850, 34.024586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084326, 0.618331, 0.781381,
		-0.113742, -0.785021, 0.608937,
		0.989925, -0.037527, 0.136528,
		36.292774, 34.740593, 34.065544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649830, 34.844872, 34.715782>,  <35.599827, 34.766861, 33.969975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649830, 34.844872, 34.715782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.011642, 34.962242, 34.592026>,  <36.228729, 35.032665, 34.517773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.011642, 34.962242, 34.592026>,  <35.649830, 34.844872, 34.715782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011642, 34.962242, 34.592026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048878, 0.649452, 0.758830,
		0.423597, -0.701508, 0.573108,
		0.904531, 0.293426, -0.309394,
		36.283001, 35.050270, 34.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981030, 34.861267, 35.366558>,  <35.649830, 34.844872, 34.715782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981030, 34.861267, 35.366558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185337, 35.079029, 35.100403>,  <36.307922, 35.209686, 34.940708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185337, 35.079029, 35.100403>,  <35.981030, 34.861267, 35.366558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185337, 35.079029, 35.100403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022765, 0.765123, 0.643481,
		0.859419, -0.343814, 0.378404,
		0.510764, 0.544406, -0.665389,
		36.338566, 35.242352, 34.900787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446850, 35.110622, 35.740238>,  <35.981030, 34.861267, 35.366558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446850, 35.110622, 35.740238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454189, 35.363152, 35.430115>,  <36.458591, 35.514668, 35.244041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454189, 35.363152, 35.430115>,  <36.446850, 35.110622, 35.740238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454189, 35.363152, 35.430115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315041, 0.732286, 0.603743,
		0.948901, -0.255330, -0.185456,
		0.018347, 0.631319, -0.775306,
		36.459694, 35.552547, 35.197521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047863, 35.473915, 35.879047>,  <36.446850, 35.110622, 35.740238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047863, 35.473915, 35.879047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859215, 35.710960, 35.617855>,  <36.746025, 35.853188, 35.461140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859215, 35.710960, 35.617855>,  <37.047863, 35.473915, 35.879047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859215, 35.710960, 35.617855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223664, 0.796685, 0.561486,
		0.852965, 0.118759, -0.508278,
		-0.471620, 0.592612, -0.652983,
		36.717728, 35.888744, 35.421959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565174, 36.031700, 35.685089>,  <37.047863, 35.473915, 35.879047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565174, 36.031700, 35.685089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213375, 36.184750, 35.571884>,  <37.002296, 36.276577, 35.503963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213375, 36.184750, 35.571884>,  <37.565174, 36.031700, 35.685089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213375, 36.184750, 35.571884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203295, 0.839727, 0.503517,
		0.430305, 0.385306, -0.816319,
		-0.879493, 0.382620, -0.283008,
		36.949528, 36.299534, 35.486980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726372, 36.701180, 35.415642>,  <37.565174, 36.031700, 35.685089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726372, 36.701180, 35.415642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.339333, 36.691643, 35.516190>,  <37.107109, 36.685921, 35.576519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.339333, 36.691643, 35.516190>,  <37.726372, 36.701180, 35.415642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339333, 36.691643, 35.516190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100863, 0.876160, 0.471348,
		-0.231477, 0.481429, -0.845366,
		-0.967597, -0.023840, 0.251369,
		37.049053, 36.684490, 35.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495018, 37.333359, 35.272408>,  <37.726372, 36.701180, 35.415642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495018, 37.333359, 35.272408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.237476, 37.190372, 35.543015>,  <37.082951, 37.104580, 35.705379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.237476, 37.190372, 35.543015>,  <37.495018, 37.333359, 35.272408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237476, 37.190372, 35.543015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196237, 0.777441, 0.597559,
		-0.739558, 0.517496, -0.430409,
		-0.643852, -0.357467, 0.676514,
		37.044319, 37.083134, 35.745968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106117, 37.852604, 35.497749>,  <37.495018, 37.333359, 35.272408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106117, 37.852604, 35.497749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.079594, 37.586250, 35.794991>,  <37.063679, 37.426437, 35.973335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.079594, 37.586250, 35.794991>,  <37.106117, 37.852604, 35.497749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079594, 37.586250, 35.794991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150595, 0.729535, 0.667158,
		-0.986369, 0.156145, 0.051906,
		-0.066307, -0.665881, 0.743106,
		37.059700, 37.386486, 36.017921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685081, 38.161060, 36.137394>,  <37.106117, 37.852604, 35.497749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685081, 38.161060, 36.137394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.934635, 37.871777, 36.255882>,  <37.084366, 37.698208, 36.326973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.934635, 37.871777, 36.255882>,  <36.685081, 38.161060, 36.137394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934635, 37.871777, 36.255882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287499, 0.564830, 0.773506,
		-0.726718, -0.397413, 0.560307,
		0.623880, -0.723208, 0.296217,
		37.121799, 37.654816, 36.344746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814857, 38.396210, 36.792805>,  <36.685081, 38.161060, 36.137394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814857, 38.396210, 36.792805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068821, 38.087608, 36.776455>,  <37.221199, 37.902447, 36.766644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068821, 38.087608, 36.776455>,  <36.814857, 38.396210, 36.792805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068821, 38.087608, 36.776455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564177, 0.426838, 0.706763,
		-0.527826, -0.471789, 0.706268,
		0.634905, -0.771508, -0.040876,
		37.259293, 37.856155, 36.764191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781555, 37.961884, 37.426876>,  <36.814857, 38.396210, 36.792805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781555, 37.961884, 37.426876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130550, 37.934212, 37.233391>,  <37.339947, 37.917610, 37.117302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130550, 37.934212, 37.233391>,  <36.781555, 37.961884, 37.426876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130550, 37.934212, 37.233391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468386, 0.400405, 0.787585,
		0.139194, -0.913723, 0.381753,
		0.872490, -0.069180, -0.483710,
		37.392296, 37.913456, 37.088280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705612, 38.106728, 38.109760>,  <36.781555, 37.961884, 37.426876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705612, 38.106728, 38.109760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.408466, 38.333721, 38.251816>,  <36.230179, 38.469917, 38.337048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.408466, 38.333721, 38.251816>,  <36.705612, 38.106728, 38.109760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408466, 38.333721, 38.251816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628511, -0.408550, -0.661862,
		-0.230501, -0.714881, 0.660163,
		-0.742861, 0.567479, 0.355140,
		36.185608, 38.503967, 38.358356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245392, 37.672428, 38.169079>,  <36.705612, 38.106728, 38.109760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245392, 37.672428, 38.169079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044273, 38.018188, 38.168171>,  <35.923603, 38.225643, 38.167625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044273, 38.018188, 38.168171>,  <36.245392, 37.672428, 38.169079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044273, 38.018188, 38.168171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690393, -0.403157, -0.600684,
		-0.520148, -0.300454, 0.799483,
		-0.502796, 0.864403, -0.002270,
		35.893433, 38.277508, 38.167492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529335, 37.561691, 38.321449>,  <36.245392, 37.672428, 38.169079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529335, 37.561691, 38.321449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.499481, 37.912903, 38.132347>,  <35.481567, 38.123631, 38.018887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.499481, 37.912903, 38.132347>,  <35.529335, 37.561691, 38.321449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499481, 37.912903, 38.132347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674992, -0.393446, -0.624168,
		-0.734040, 0.272522, 0.622027,
		-0.074635, 0.878028, -0.472755,
		35.477089, 38.176311, 37.990520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813614, 37.724697, 38.365898>,  <35.529335, 37.561691, 38.321449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813614, 37.724697, 38.365898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.951145, 37.964901, 38.077129>,  <35.033665, 38.109024, 37.903866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.951145, 37.964901, 38.077129>,  <34.813614, 37.724697, 38.365898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951145, 37.964901, 38.077129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773302, -0.255071, -0.580467,
		-0.532716, 0.757847, 0.376672,
		0.343827, 0.600506, -0.721925,
		35.054295, 38.145054, 37.860554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249859, 38.197079, 38.143959>,  <34.813614, 37.724697, 38.365898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249859, 38.197079, 38.143959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.518406, 38.176197, 37.848244>,  <34.679535, 38.163670, 37.670815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.518406, 38.176197, 37.848244>,  <34.249859, 38.197079, 38.143959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518406, 38.176197, 37.848244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673336, -0.459742, -0.579012,
		-0.309657, 0.886517, -0.343803,
		0.671365, -0.052199, -0.739286,
		34.719814, 38.160538, 37.626457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881779, 38.411266, 37.542603>,  <34.249859, 38.197079, 38.143959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881779, 38.411266, 37.542603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.206913, 38.256508, 37.368423>,  <34.401993, 38.163654, 37.263916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.206913, 38.256508, 37.368423>,  <33.881779, 38.411266, 37.542603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206913, 38.256508, 37.368423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575254, -0.415675, -0.704484,
		0.091556, 0.823121, -0.560437,
		0.812835, -0.386893, -0.435446,
		34.450764, 38.140438, 37.237789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873028, 38.547802, 36.760410>,  <33.881779, 38.411266, 37.542603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873028, 38.547802, 36.760410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.100597, 38.222961, 36.812283>,  <34.237137, 38.028057, 36.843407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.100597, 38.222961, 36.812283>,  <33.873028, 38.547802, 36.760410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100597, 38.222961, 36.812283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599673, -0.517563, -0.610345,
		0.562780, 0.269473, -0.781449,
		0.568921, -0.812104, 0.129679,
		34.271275, 37.979332, 36.851185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984154, 38.266933, 36.049240>,  <33.873028, 38.547802, 36.760410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984154, 38.266933, 36.049240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.097652, 37.955025, 36.272472>,  <34.165752, 37.767879, 36.406410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.097652, 37.955025, 36.272472>,  <33.984154, 38.266933, 36.049240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097652, 37.955025, 36.272472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624659, -0.591876, -0.509395,
		0.727523, -0.204071, -0.655031,
		0.283745, -0.779767, 0.558078,
		34.182777, 37.721096, 36.439896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207973, 37.695614, 35.553814>,  <33.984154, 38.266933, 36.049240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207973, 37.695614, 35.553814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.130238, 37.524006, 35.906670>,  <34.083595, 37.421040, 36.118385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.130238, 37.524006, 35.906670>,  <34.207973, 37.695614, 35.553814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130238, 37.524006, 35.906670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496156, -0.732780, -0.465685,
		0.846204, -0.528181, -0.070453,
		-0.194339, -0.429020, 0.882142,
		34.071938, 37.395298, 36.171310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313293, 36.952309, 35.465469>,  <34.207973, 37.695614, 35.553814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313293, 36.952309, 35.465469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.098785, 36.966709, 35.802780>,  <33.970081, 36.975349, 36.005165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.098785, 36.966709, 35.802780>,  <34.313293, 36.952309, 35.465469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098785, 36.966709, 35.802780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513851, -0.806532, -0.292342,
		0.669606, -0.590094, 0.451018,
		-0.536270, 0.036002, 0.843279,
		33.937904, 36.977509, 36.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435081, 36.335030, 35.928207>,  <34.313293, 36.952309, 35.465469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435081, 36.335030, 35.928207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.077553, 36.510693, 35.964474>,  <33.863033, 36.616089, 35.986233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.077553, 36.510693, 35.964474>,  <34.435081, 36.335030, 35.928207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077553, 36.510693, 35.964474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435094, -0.800436, -0.412305,
		-0.108490, -0.407979, 0.906523,
		-0.893825, 0.439153, 0.090670,
		33.809406, 36.642437, 35.991676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018402, 35.801128, 36.033436>,  <34.435081, 36.335030, 35.928207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018402, 35.801128, 36.033436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.733517, 36.070683, 35.954815>,  <33.562588, 36.232414, 35.907642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.733517, 36.070683, 35.954815>,  <34.018402, 35.801128, 36.033436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733517, 36.070683, 35.954815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570257, -0.718717, -0.397811,
		-0.409343, -0.171241, 0.896167,
		-0.712212, 0.673887, -0.196550,
		33.519852, 36.272850, 35.895851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385864, 35.517094, 36.285717>,  <34.018402, 35.801128, 36.033436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385864, 35.517094, 36.285717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.284073, 35.800812, 36.022766>,  <33.223000, 35.971043, 35.864994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.284073, 35.800812, 36.022766>,  <33.385864, 35.517094, 36.285717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284073, 35.800812, 36.022766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558978, -0.662584, -0.498523,
		-0.789168, 0.240599, 0.565090,
		-0.254475, 0.709291, -0.657380,
		33.207729, 36.013599, 35.825554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705494, 35.312775, 36.225670>,  <33.385864, 35.517094, 36.285717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705494, 35.312775, 36.225670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.803680, 35.545776, 35.915718>,  <32.862591, 35.685577, 35.729748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.803680, 35.545776, 35.915718>,  <32.705494, 35.312775, 36.225670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803680, 35.545776, 35.915718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513080, -0.600127, -0.613674,
		-0.822493, 0.548211, 0.151560,
		0.245468, 0.582505, -0.774876,
		32.877319, 35.720528, 35.683254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072636, 35.347794, 36.729004>,  <32.705494, 35.312775, 36.225670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072636, 35.347794, 36.729004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.037598, 35.026390, 36.964531>,  <32.016575, 34.833549, 37.105846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.037598, 35.026390, 36.964531>,  <32.072636, 35.347794, 36.729004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037598, 35.026390, 36.964531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756285, 0.331068, 0.564293,
		-0.648351, 0.494742, 0.578680,
		-0.087597, -0.803508, 0.588814,
		32.011318, 34.785339, 37.141174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129162, 35.661396, 37.413631>,  <32.072636, 35.347794, 36.729004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129162, 35.661396, 37.413631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.165989, 35.271168, 37.493420>,  <32.188087, 35.037033, 37.541294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.165989, 35.271168, 37.493420>,  <32.129162, 35.661396, 37.413631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165989, 35.271168, 37.493420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671312, 0.208768, 0.711166,
		-0.735434, 0.068429, 0.674132,
		0.092072, -0.975568, 0.199472,
		32.193611, 34.978497, 37.553261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010818, 35.597813, 38.059174>,  <32.129162, 35.661396, 37.413631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010818, 35.597813, 38.059174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.242302, 35.287132, 37.959709>,  <32.381191, 35.100723, 37.900032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.242302, 35.287132, 37.959709>,  <32.010818, 35.597813, 38.059174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242302, 35.287132, 37.959709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690465, 0.304371, 0.656214,
		-0.433996, -0.551449, 0.712426,
		0.578710, -0.776700, -0.248661,
		32.415916, 35.054123, 37.885113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345482, 35.359413, 38.705746>,  <32.010818, 35.597813, 38.059174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345482, 35.359413, 38.705746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.551128, 35.183067, 38.411449>,  <32.674519, 35.077259, 38.234871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.551128, 35.183067, 38.411449>,  <32.345482, 35.359413, 38.705746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551128, 35.183067, 38.411449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857176, 0.233572, 0.459013,
		-0.030514, -0.866650, 0.497983,
		0.514119, -0.440866, -0.735744,
		32.705364, 35.050808, 38.190727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754585, 34.902416, 39.046600>,  <32.345482, 35.359413, 38.705746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754585, 34.902416, 39.046600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.939716, 34.983177, 38.701340>,  <33.050793, 35.031635, 38.494183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.939716, 34.983177, 38.701340>,  <32.754585, 34.902416, 39.046600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939716, 34.983177, 38.701340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828475, 0.247829, 0.502204,
		0.315311, -0.947531, -0.052571,
		0.462825, 0.201905, -0.863150,
		33.078564, 35.043747, 38.442394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409161, 34.504417, 39.079338>,  <32.754585, 34.902416, 39.046600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409161, 34.504417, 39.079338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439682, 34.797333, 38.808655>,  <33.457996, 34.973083, 38.646244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439682, 34.797333, 38.808655>,  <33.409161, 34.504417, 39.079338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439682, 34.797333, 38.808655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853234, 0.303216, 0.424325,
		0.515916, -0.609767, -0.601676,
		0.076302, 0.732287, -0.676708,
		33.462574, 35.017017, 38.605644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145199, 34.575191, 38.997570>,  <33.409161, 34.504417, 39.079338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145199, 34.575191, 38.997570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.994343, 34.903339, 38.825638>,  <33.903828, 35.100227, 38.722481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.994343, 34.903339, 38.825638>,  <34.145199, 34.575191, 38.997570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994343, 34.903339, 38.825638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876031, 0.466595, 0.121899,
		0.300557, -0.330567, -0.894645,
		-0.377141, 0.820374, -0.429826,
		33.881199, 35.149452, 38.696690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516399, 34.733273, 38.415234>,  <34.145199, 34.575191, 38.997570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516399, 34.733273, 38.415234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.336617, 35.077351, 38.511604>,  <34.228745, 35.283798, 38.569427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.336617, 35.077351, 38.511604>,  <34.516399, 34.733273, 38.415234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336617, 35.077351, 38.511604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893292, 0.431635, 0.125383,
		0.003860, 0.271574, -0.962410,
		-0.449461, 0.860197, 0.240929,
		34.201778, 35.335411, 38.583881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822853, 35.274990, 38.029091>,  <34.516399, 34.733273, 38.415234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822853, 35.274990, 38.029091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.661388, 35.415131, 38.367157>,  <34.564510, 35.499214, 38.569996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.661388, 35.415131, 38.367157>,  <34.822853, 35.274990, 38.029091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661388, 35.415131, 38.367157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849426, 0.486711, 0.203931,
		-0.339904, 0.800228, -0.494065,
		-0.403658, 0.350355, 0.845169,
		34.540291, 35.520237, 38.620708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137104, 35.950981, 38.085457>,  <34.822853, 35.274990, 38.029091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137104, 35.950981, 38.085457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.977463, 35.875732, 38.444416>,  <34.881676, 35.830582, 38.659790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.977463, 35.875732, 38.444416>,  <35.137104, 35.950981, 38.085457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977463, 35.875732, 38.444416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783633, 0.438175, 0.440366,
		-0.476060, 0.878984, -0.027460,
		-0.399107, -0.188122, 0.897398,
		34.857731, 35.819294, 38.713634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057037, 36.687702, 38.464542>,  <35.137104, 35.950981, 38.085457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057037, 36.687702, 38.464542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082638, 36.382145, 38.721409>,  <35.097996, 36.198811, 38.875526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082638, 36.382145, 38.721409>,  <35.057037, 36.687702, 38.464542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082638, 36.382145, 38.721409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824689, 0.402834, 0.397006,
		-0.561954, 0.504178, 0.655753,
		0.063998, -0.763891, 0.642164,
		35.101837, 36.152977, 38.914059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046913, 36.957561, 39.245148>,  <35.057037, 36.687702, 38.464542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046913, 36.957561, 39.245148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.234730, 36.609509, 39.185284>,  <35.347420, 36.400677, 39.149364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.234730, 36.609509, 39.185284>,  <35.046913, 36.957561, 39.245148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234730, 36.609509, 39.185284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850760, 0.400569, 0.340224,
		-0.236089, -0.287078, 0.928358,
		0.469542, -0.870133, -0.149665,
		35.375591, 36.348469, 39.140385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.435675, 33.483192, 34.749046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661957, 33.176163, 34.869591>,  <29.797726, 32.991947, 34.941917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661957, 33.176163, 34.869591>,  <29.435675, 33.483192, 34.749046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661957, 33.176163, 34.869591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233807, 0.499761, 0.834010,
		-0.790768, -0.401343, 0.462179,
		0.565703, -0.767570, 0.301359,
		29.831667, 32.945892, 34.959999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137072, 33.284042, 35.449627>,  <29.435675, 33.483192, 34.749046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137072, 33.284042, 35.449627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513725, 33.154289, 35.413639>,  <29.739717, 33.076435, 35.392044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513725, 33.154289, 35.413639>,  <29.137072, 33.284042, 35.449627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513725, 33.154289, 35.413639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252515, 0.503898, 0.826028,
		-0.222614, -0.800538, 0.556401,
		0.941636, -0.324385, -0.089973,
		29.796217, 33.056973, 35.386646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259897, 33.257992, 36.168556>,  <29.137072, 33.284042, 35.449627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259897, 33.257992, 36.168556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615704, 33.190552, 35.998692>,  <29.829187, 33.150085, 35.896774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615704, 33.190552, 35.998692>,  <29.259897, 33.257992, 36.168556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615704, 33.190552, 35.998692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455639, 0.396445, 0.797010,
		0.033975, -0.902444, 0.429466,
		0.889516, -0.168603, -0.424658,
		29.882559, 33.139973, 35.871296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712006, 33.157917, 36.749851>,  <29.259897, 33.257992, 36.168556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712006, 33.157917, 36.749851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942251, 33.243855, 36.434254>,  <30.080399, 33.295418, 36.244896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942251, 33.243855, 36.434254>,  <29.712006, 33.157917, 36.749851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942251, 33.243855, 36.434254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657445, 0.452154, 0.602763,
		0.486249, -0.865678, 0.119014,
		0.575612, 0.214848, -0.788994,
		30.114935, 33.308308, 36.197556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310966, 32.962364, 36.947758>,  <29.712006, 33.157917, 36.749851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310966, 32.962364, 36.947758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383986, 33.256493, 36.686691>,  <30.427797, 33.432972, 36.530052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383986, 33.256493, 36.686691>,  <30.310966, 32.962364, 36.947758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383986, 33.256493, 36.686691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749701, 0.325369, 0.576266,
		0.636101, -0.594501, -0.491878,
		0.182549, 0.735325, -0.652666,
		30.438749, 33.477089, 36.490891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092836, 32.987030, 36.737427>,  <30.310966, 32.962364, 36.947758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092836, 32.987030, 36.737427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957407, 33.340260, 36.607475>,  <30.876150, 33.552197, 36.529503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957407, 33.340260, 36.607475>,  <31.092836, 32.987030, 36.737427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957407, 33.340260, 36.607475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897050, 0.407150, 0.171840,
		0.284022, -0.233253, -0.930013,
		-0.338573, 0.883075, -0.324879,
		30.855835, 33.605183, 36.510010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657127, 33.320358, 36.363224>,  <31.092836, 32.987030, 36.737427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657127, 33.320358, 36.363224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405184, 33.614944, 36.461937>,  <31.254017, 33.791695, 36.521164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405184, 33.614944, 36.461937>,  <31.657127, 33.320358, 36.363224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405184, 33.614944, 36.461937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765977, 0.536330, 0.354443,
		0.128677, 0.412279, -0.901925,
		-0.629858, 0.736462, 0.246783,
		31.216227, 33.835884, 36.535973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914026, 33.982906, 36.075745>,  <31.657127, 33.320358, 36.363224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914026, 33.982906, 36.075745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672159, 34.088062, 36.376480>,  <31.527039, 34.151157, 36.556923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672159, 34.088062, 36.376480>,  <31.914026, 33.982906, 36.075745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672159, 34.088062, 36.376480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740611, 0.532880, 0.409308,
		-0.293035, 0.804316, -0.516919,
		-0.604669, 0.262895, 0.751839,
		31.490759, 34.166931, 36.602032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878304, 34.693718, 36.160572>,  <31.914026, 33.982906, 36.075745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878304, 34.693718, 36.160572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804996, 34.564899, 36.532097>,  <31.761013, 34.487606, 36.755013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804996, 34.564899, 36.532097>,  <31.878304, 34.693718, 36.160572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804996, 34.564899, 36.532097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682670, 0.638159, 0.355971,
		-0.707372, 0.699312, 0.102901,
		-0.183268, -0.322051, 0.928814,
		31.750015, 34.468285, 36.810741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027122, 35.432026, 35.744598>,  <31.878304, 34.693718, 36.160572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027122, 35.432026, 35.744598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336391, 35.513905, 35.504498>,  <32.521954, 35.563030, 35.360435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336391, 35.513905, 35.504498>,  <32.027122, 35.432026, 35.744598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336391, 35.513905, 35.504498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407399, -0.565057, -0.717451,
		-0.486039, 0.799255, -0.353492,
		0.773170, 0.204697, -0.600256,
		32.568344, 35.575314, 35.324421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682529, 35.558601, 35.081841>,  <32.027122, 35.432026, 35.744598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682529, 35.558601, 35.081841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063572, 35.480141, 34.988831>,  <32.292198, 35.433064, 34.933025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063572, 35.480141, 34.988831>,  <31.682529, 35.558601, 35.081841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063572, 35.480141, 34.988831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300134, -0.481254, -0.823598,
		0.049644, 0.854353, -0.517317,
		0.952604, -0.196151, -0.232529,
		32.349354, 35.421295, 34.919071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823040, 35.856949, 34.405975>,  <31.682529, 35.558601, 35.081841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823040, 35.856949, 34.405975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098850, 35.572319, 34.459953>,  <32.264336, 35.401539, 34.492340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098850, 35.572319, 34.459953>,  <31.823040, 35.856949, 34.405975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098850, 35.572319, 34.459953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249107, -0.407963, -0.878357,
		0.680073, 0.572034, -0.458561,
		0.689526, -0.711578, 0.134947,
		32.305710, 35.358845, 34.500439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279797, 35.922192, 33.741783>,  <31.823040, 35.856949, 34.405975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279797, 35.922192, 33.741783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322723, 35.569618, 33.925766>,  <32.348480, 35.358074, 34.036156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322723, 35.569618, 33.925766>,  <32.279797, 35.922192, 33.741783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322723, 35.569618, 33.925766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025171, -0.464884, -0.885014,
		0.993906, 0.083399, -0.072076,
		0.107316, -0.881435, 0.459952,
		32.354919, 35.305187, 34.063751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757103, 35.554058, 33.357510>,  <32.279797, 35.922192, 33.741783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757103, 35.554058, 33.357510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577019, 35.248863, 33.543053>,  <32.468967, 35.065746, 33.654377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577019, 35.248863, 33.543053>,  <32.757103, 35.554058, 33.357510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577019, 35.248863, 33.543053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098553, -0.558764, -0.823451,
		0.887469, -0.325008, 0.326754,
		-0.450206, -0.762990, 0.463855,
		32.441956, 35.019966, 33.682209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058136, 34.981441, 33.119194>,  <32.757103, 35.554058, 33.357510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058136, 34.981441, 33.119194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705002, 34.834965, 33.236843>,  <32.493122, 34.747078, 33.307434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705002, 34.834965, 33.236843>,  <33.058136, 34.981441, 33.119194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705002, 34.834965, 33.236843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032947, -0.576383, -0.816515,
		0.468530, -0.730537, 0.496785,
		-0.882833, -0.366195, 0.294122,
		32.440151, 34.725105, 33.325081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148224, 34.306889, 32.956879>,  <33.058136, 34.981441, 33.119194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148224, 34.306889, 32.956879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758678, 34.390739, 32.991863>,  <32.524952, 34.441051, 33.012856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758678, 34.390739, 32.991863>,  <33.148224, 34.306889, 32.956879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758678, 34.390739, 32.991863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195718, -0.579013, -0.791479,
		-0.115272, -0.787910, 0.604906,
		-0.973862, 0.209627, 0.087464,
		32.466518, 34.453629, 33.018101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770916, 33.615578, 33.035030>,  <33.148224, 34.306889, 32.956879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770916, 33.615578, 33.035030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471958, 33.861706, 32.934807>,  <32.292583, 34.009384, 32.874672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471958, 33.861706, 32.934807>,  <32.770916, 33.615578, 33.035030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471958, 33.861706, 32.934807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308190, -0.655198, -0.689735,
		-0.588572, -0.438287, 0.679329,
		-0.747397, 0.615321, -0.250556,
		32.247738, 34.046303, 32.859638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215527, 33.182076, 33.040051>,  <32.770916, 33.615578, 33.035030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215527, 33.182076, 33.040051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105209, 33.474709, 32.790657>,  <32.039021, 33.650288, 32.641022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105209, 33.474709, 32.790657>,  <32.215527, 33.182076, 33.040051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105209, 33.474709, 32.790657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391243, -0.677911, -0.622387,
		-0.877990, 0.072282, 0.473190,
		-0.275793, 0.731582, -0.623479,
		32.022472, 33.694183, 32.603615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570391, 32.956760, 32.697529>,  <32.215527, 33.182076, 33.040051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570391, 32.956760, 32.697529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714245, 33.233822, 32.447445>,  <31.800558, 33.400059, 32.297394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714245, 33.233822, 32.447445>,  <31.570391, 32.956760, 32.697529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714245, 33.233822, 32.447445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310166, -0.543198, -0.780213,
		-0.880033, 0.474512, 0.019485,
		0.359637, 0.692657, -0.625210,
		31.822136, 33.441620, 32.259884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010202, 33.154247, 32.311630>,  <31.570391, 32.956760, 32.697529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010202, 33.154247, 32.311630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341890, 33.260677, 32.115021>,  <31.540903, 33.324535, 31.997055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341890, 33.260677, 32.115021>,  <31.010202, 33.154247, 32.311630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341890, 33.260677, 32.115021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165532, -0.723048, -0.670672,
		-0.533846, 0.637498, -0.555522,
		0.829221, 0.266079, -0.491522,
		31.590656, 33.340500, 31.967564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765709, 33.031311, 31.656933>,  <31.010202, 33.154247, 32.311630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765709, 33.031311, 31.656933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160612, 33.038605, 31.593706>,  <31.397554, 33.042980, 31.555771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160612, 33.038605, 31.593706>,  <30.765709, 33.031311, 31.656933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160612, 33.038605, 31.593706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117568, -0.585790, -0.801890,
		-0.107216, 0.810257, -0.576184,
		0.987260, 0.018235, -0.158066,
		31.456791, 33.044075, 31.546286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923969, 33.219856, 30.867517>,  <30.765709, 33.031311, 31.656933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923969, 33.219856, 30.867517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256268, 33.047398, 31.008358>,  <31.455647, 32.943920, 31.092863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256268, 33.047398, 31.008358>,  <30.923969, 33.219856, 30.867517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256268, 33.047398, 31.008358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167148, -0.410138, -0.896576,
		0.530968, 0.803678, -0.268654,
		0.830743, -0.431148, 0.352103,
		31.505491, 32.918053, 31.113989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419598, 33.324673, 30.389044>,  <30.923969, 33.219856, 30.867517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419598, 33.324673, 30.389044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562468, 33.011654, 30.593023>,  <31.648190, 32.823841, 30.715412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562468, 33.011654, 30.593023>,  <31.419598, 33.324673, 30.389044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562468, 33.011654, 30.593023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313976, -0.413602, -0.854607,
		0.879685, 0.465355, 0.097972,
		0.357174, -0.782546, 0.509950,
		31.669621, 32.776890, 30.746008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.503357, 26.202118, 33.997726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.305523, 26.543003, 33.929478>,  <35.186821, 26.747534, 33.888527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.305523, 26.543003, 33.929478>,  <35.503357, 26.202118, 33.997726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305523, 26.543003, 33.929478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584638, 0.471483, 0.660229,
		0.643102, 0.226790, -0.731427,
		-0.494589, 0.852215, -0.170622,
		35.157146, 26.798668, 33.878292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981007, 26.740366, 33.837078>,  <35.503357, 26.202118, 33.997726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981007, 26.740366, 33.837078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663345, 26.939524, 33.976463>,  <35.472748, 27.059017, 34.060093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663345, 26.939524, 33.976463>,  <35.981007, 26.740366, 33.837078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663345, 26.939524, 33.976463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592793, 0.508359, 0.624634,
		0.133859, 0.702619, -0.698862,
		-0.794153, 0.497893, 0.348459,
		35.425098, 27.088892, 34.081001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243908, 27.416023, 33.732071>,  <35.981007, 26.740366, 33.837078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243908, 27.416023, 33.732071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.931614, 27.424303, 33.981880>,  <35.744236, 27.429272, 34.131763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.931614, 27.424303, 33.981880>,  <36.243908, 27.416023, 33.732071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931614, 27.424303, 33.981880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539401, 0.526861, 0.656859,
		-0.315439, 0.849699, -0.422504,
		-0.780734, 0.020700, 0.624521,
		35.697395, 27.430513, 34.169235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032055, 28.109211, 33.850620>,  <36.243908, 27.416023, 33.732071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032055, 28.109211, 33.850620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915230, 27.896366, 34.168503>,  <35.845135, 27.768660, 34.359230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915230, 27.896366, 34.168503>,  <36.032055, 28.109211, 33.850620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915230, 27.896366, 34.168503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542056, 0.592489, 0.595929,
		-0.787954, 0.604825, 0.115388,
		-0.292067, -0.532112, 0.794704,
		35.827610, 27.736732, 34.406914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842995, 28.545034, 34.339241>,  <36.032055, 28.109211, 33.850620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842995, 28.545034, 34.339241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.911812, 28.216825, 34.557285>,  <35.953102, 28.019901, 34.688110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.911812, 28.216825, 34.557285>,  <35.842995, 28.545034, 34.339241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911812, 28.216825, 34.557285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476017, 0.553713, 0.683235,
		-0.862445, 0.141939, 0.485842,
		0.172039, -0.820521, 0.545112,
		35.963425, 27.970669, 34.720818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546352, 28.691193, 34.965836>,  <35.842995, 28.545034, 34.339241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546352, 28.691193, 34.965836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833580, 28.416176, 35.009022>,  <36.005917, 28.251165, 35.034935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833580, 28.416176, 35.009022>,  <35.546352, 28.691193, 34.965836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833580, 28.416176, 35.009022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422626, 0.554025, 0.717248,
		-0.552958, -0.469404, 0.688403,
		0.718071, -0.687544, 0.107970,
		36.049000, 28.209913, 35.041412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663021, 28.734226, 35.696667>,  <35.546352, 28.691193, 34.965836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663021, 28.734226, 35.696667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.989899, 28.556915, 35.549313>,  <36.186024, 28.450529, 35.460899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.989899, 28.556915, 35.549313>,  <35.663021, 28.734226, 35.696667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989899, 28.556915, 35.549313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572543, 0.550807, 0.607294,
		-0.066290, -0.707190, 0.703909,
		0.817191, -0.443276, -0.368383,
		36.235054, 28.423933, 35.438797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090084, 28.514854, 36.314148>,  <35.663021, 28.734226, 35.696667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090084, 28.514854, 36.314148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360737, 28.484512, 36.021187>,  <36.523129, 28.466307, 35.845409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360737, 28.484512, 36.021187>,  <36.090084, 28.514854, 36.314148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360737, 28.484512, 36.021187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688133, 0.419058, 0.592337,
		0.261986, -0.904785, 0.335749,
		0.676636, -0.075856, -0.732400,
		36.563728, 28.461756, 35.801468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722443, 28.149054, 36.549171>,  <36.090084, 28.514854, 36.314148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722443, 28.149054, 36.549171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818260, 28.382257, 36.238632>,  <36.875751, 28.522181, 36.052307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818260, 28.382257, 36.238632>,  <36.722443, 28.149054, 36.549171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818260, 28.382257, 36.238632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532294, 0.589875, 0.607216,
		0.811962, -0.558701, -0.169032,
		0.239545, 0.583011, -0.776348,
		36.890125, 28.557161, 36.005726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342861, 28.429813, 36.686752>,  <36.722443, 28.149054, 36.549171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342861, 28.429813, 36.686752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245846, 28.671457, 36.383114>,  <37.187637, 28.816444, 36.200932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245846, 28.671457, 36.383114>,  <37.342861, 28.429813, 36.686752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245846, 28.671457, 36.383114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516308, 0.742822, 0.426194,
		0.821341, -0.288558, -0.492071,
		-0.242540, 0.604111, -0.759095,
		37.173084, 28.852690, 36.155384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913685, 28.729698, 36.637455>,  <37.342861, 28.429813, 36.686752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913685, 28.729698, 36.637455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.656948, 28.953991, 36.428223>,  <37.502907, 29.088568, 36.302685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.656948, 28.953991, 36.428223>,  <37.913685, 28.729698, 36.637455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656948, 28.953991, 36.428223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496972, 0.823659, 0.273139,
		0.583998, -0.084644, -0.807330,
		-0.641845, 0.560733, -0.523080,
		37.464394, 29.122211, 36.271297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318508, 29.240135, 36.455235>,  <37.913685, 28.729698, 36.637455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318508, 29.240135, 36.455235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964977, 29.411806, 36.380768>,  <37.752857, 29.514809, 36.336090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964977, 29.411806, 36.380768>,  <38.318508, 29.240135, 36.455235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964977, 29.411806, 36.380768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358606, 0.877097, 0.319537,
		0.300421, 0.215656, -0.929107,
		-0.883826, 0.429179, -0.186163,
		37.699829, 29.540560, 36.324921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385036, 29.877001, 36.090218>,  <38.318508, 29.240135, 36.455235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385036, 29.877001, 36.090218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.019268, 29.920036, 36.246296>,  <37.799805, 29.945858, 36.339943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.019268, 29.920036, 36.246296>,  <38.385036, 29.877001, 36.090218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019268, 29.920036, 36.246296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264715, 0.888238, 0.375445,
		-0.306191, 0.446606, -0.840708,
		-0.914425, 0.107590, 0.390194,
		37.744942, 29.952312, 36.363354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162056, 30.530106, 35.901855>,  <38.385036, 29.877001, 36.090218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162056, 30.530106, 35.901855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.971054, 30.432953, 36.239613>,  <37.856453, 30.374660, 36.442265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.971054, 30.432953, 36.239613>,  <38.162056, 30.530106, 35.901855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971054, 30.432953, 36.239613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127114, 0.931826, 0.339916,
		-0.869384, 0.269646, -0.414080,
		-0.477507, -0.242882, 0.844391,
		37.827801, 30.360088, 36.492931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132439, 31.091959, 35.313732>,  <38.162056, 30.530106, 35.901855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132439, 31.091959, 35.313732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264156, 31.264759, 34.977890>,  <38.343185, 31.368439, 34.776382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264156, 31.264759, 34.977890>,  <38.132439, 31.091959, 35.313732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264156, 31.264759, 34.977890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236210, -0.823238, -0.516220,
		-0.914205, 0.368311, -0.169043,
		0.329292, 0.432001, -0.839608,
		38.362946, 31.394360, 34.726009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607975, 31.048027, 34.790947>,  <38.132439, 31.091959, 35.313732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607975, 31.048027, 34.790947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977535, 31.071386, 34.639687>,  <38.199272, 31.085402, 34.548931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977535, 31.071386, 34.639687>,  <37.607975, 31.048027, 34.790947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977535, 31.071386, 34.639687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250044, -0.655932, -0.712202,
		-0.289633, 0.752558, -0.591414,
		0.923900, 0.058398, -0.378152,
		38.254704, 31.088905, 34.526241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538078, 31.294262, 34.093597>,  <37.607975, 31.048027, 34.790947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538078, 31.294262, 34.093597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890930, 31.105911, 34.089226>,  <38.102642, 30.992901, 34.086605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890930, 31.105911, 34.089226>,  <37.538078, 31.294262, 34.093597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890930, 31.105911, 34.089226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275888, -0.497765, -0.822263,
		0.381747, 0.728358, -0.569003,
		0.882131, -0.470877, -0.010925,
		38.155571, 30.964647, 34.085949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658924, 31.136032, 33.329849>,  <37.538078, 31.294262, 34.093597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658924, 31.136032, 33.329849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906013, 30.900888, 33.538784>,  <38.054268, 30.759802, 33.664146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906013, 30.900888, 33.538784>,  <37.658924, 31.136032, 33.329849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906013, 30.900888, 33.538784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019201, -0.675297, -0.737296,
		0.786159, 0.445418, -0.428436,
		0.617726, -0.587858, 0.522338,
		38.091331, 30.724531, 33.695484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118420, 30.967611, 32.868893>,  <37.658924, 31.136032, 33.329849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118420, 30.967611, 32.868893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170826, 30.666569, 33.127014>,  <38.202271, 30.485943, 33.281887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170826, 30.666569, 33.127014>,  <38.118420, 30.967611, 32.868893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170826, 30.666569, 33.127014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040437, -0.654431, -0.755040,
		0.990555, 0.072830, -0.116175,
		0.131019, -0.752606, 0.645305,
		38.210133, 30.440786, 33.320606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766003, 30.567482, 32.801422>,  <38.118420, 30.967611, 32.868893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766003, 30.567482, 32.801422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533394, 30.303774, 32.992081>,  <38.393829, 30.145548, 33.106476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533394, 30.303774, 32.992081>,  <38.766003, 30.567482, 32.801422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533394, 30.303774, 32.992081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013676, -0.593738, -0.804542,
		0.813416, -0.461340, 0.354287,
		-0.581522, -0.659272, 0.476647,
		38.358936, 30.105991, 33.135075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861629, 29.876507, 32.427197>,  <38.766003, 30.567482, 32.801422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861629, 29.876507, 32.427197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.538025, 29.820948, 32.655659>,  <38.343864, 29.787613, 32.792736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.538025, 29.820948, 32.655659>,  <38.861629, 29.876507, 32.427197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538025, 29.820948, 32.655659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297136, -0.741752, -0.601261,
		0.507166, -0.656134, 0.558812,
		-0.809008, -0.138896, 0.571152,
		38.295322, 29.779280, 32.827003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786186, 29.073278, 32.487991>,  <38.861629, 29.876507, 32.427197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786186, 29.073278, 32.487991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434174, 29.244612, 32.570038>,  <38.222965, 29.347412, 32.619267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434174, 29.244612, 32.570038>,  <38.786186, 29.073278, 32.487991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434174, 29.244612, 32.570038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443328, -0.586048, -0.678238,
		-0.170303, -0.687806, 0.705634,
		-0.880032, 0.428334, 0.205118,
		38.170162, 29.373112, 32.631573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374924, 28.547684, 32.773552>,  <38.786186, 29.073278, 32.487991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374924, 28.547684, 32.773552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139759, 28.838688, 32.632080>,  <37.998661, 29.013290, 32.547199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139759, 28.838688, 32.632080>,  <38.374924, 28.547684, 32.773552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139759, 28.838688, 32.632080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436633, -0.653455, -0.618344,
		-0.680967, -0.209100, 0.701827,
		-0.587908, 0.727512, -0.353681,
		37.963387, 29.056942, 32.525978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682880, 28.240034, 32.754707>,  <38.374924, 28.547684, 32.773552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682880, 28.240034, 32.754707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686085, 28.554136, 32.507057>,  <37.688007, 28.742598, 32.358467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686085, 28.554136, 32.507057>,  <37.682880, 28.240034, 32.754707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686085, 28.554136, 32.507057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638374, -0.472544, -0.607603,
		-0.769685, 0.400100, 0.497499,
		0.008011, 0.785253, -0.619123,
		37.688488, 28.789713, 32.321320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928864, 28.473059, 32.791584>,  <37.682880, 28.240034, 32.754707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928864, 28.473059, 32.791584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087967, 28.627453, 32.458645>,  <37.183430, 28.720089, 32.258881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087967, 28.627453, 32.458645>,  <36.928864, 28.473059, 32.791584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087967, 28.627453, 32.458645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682308, -0.482066, -0.549606,
		-0.613388, 0.786528, 0.071617,
		0.397756, 0.385987, -0.832348,
		37.207294, 28.743250, 32.208939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408512, 28.778652, 32.411564>,  <36.928864, 28.473059, 32.791584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408512, 28.778652, 32.411564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706043, 28.706230, 32.154213>,  <36.884563, 28.662777, 31.999802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706043, 28.706230, 32.154213>,  <36.408512, 28.778652, 32.411564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706043, 28.706230, 32.154213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621735, -0.540709, -0.566639,
		-0.245288, 0.821494, -0.514763,
		0.743828, -0.181057, -0.643381,
		36.929192, 28.651913, 31.961199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186821, 28.885406, 31.640846>,  <36.408512, 28.778652, 32.411564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186821, 28.885406, 31.640846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514061, 28.655378, 31.640127>,  <36.710407, 28.517363, 31.639696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514061, 28.655378, 31.640127>,  <36.186821, 28.885406, 31.640846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514061, 28.655378, 31.640127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403015, -0.571097, -0.715141,
		0.410227, 0.585785, -0.698978,
		0.818103, -0.575069, -0.001800,
		36.759491, 28.482859, 31.639587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363636, 28.905733, 30.903181>,  <36.186821, 28.885406, 31.640846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363636, 28.905733, 30.903181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502369, 28.583534, 31.095379>,  <36.585609, 28.390215, 31.210697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502369, 28.583534, 31.095379>,  <36.363636, 28.905733, 30.903181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502369, 28.583534, 31.095379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490179, -0.592436, -0.639331,
		0.799643, -0.013786, -0.600317,
		0.346836, -0.805499, 0.480495,
		36.606419, 28.341885, 31.239527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574905, 29.438324, 30.468214>,  <36.363636, 28.905733, 30.903181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574905, 29.438324, 30.468214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296959, 29.684147, 30.318830>,  <36.130192, 29.831640, 30.229200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296959, 29.684147, 30.318830>,  <36.574905, 29.438324, 30.468214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296959, 29.684147, 30.318830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389540, 0.758194, 0.522878,
		0.604495, 0.217854, -0.766241,
		-0.694870, 0.614559, -0.373461,
		36.088497, 29.868515, 30.206793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921810, 29.979460, 30.322031>,  <36.574905, 29.438324, 30.468214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921810, 29.979460, 30.322031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.550968, 30.129183, 30.314384>,  <36.328461, 30.219017, 30.309795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.550968, 30.129183, 30.314384>,  <36.921810, 29.979460, 30.322031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550968, 30.129183, 30.314384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296196, 0.762976, 0.574574,
		0.229655, 0.527029, -0.818229,
		-0.927107, 0.374310, -0.019118,
		36.272835, 30.241476, 30.308649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895191, 30.741989, 30.139399>,  <36.921810, 29.979460, 30.322031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895191, 30.741989, 30.139399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560139, 30.686499, 30.350727>,  <36.359108, 30.653204, 30.477524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560139, 30.686499, 30.350727>,  <36.895191, 30.741989, 30.139399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560139, 30.686499, 30.350727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170811, 0.852180, 0.494583,
		-0.518837, 0.504523, -0.690119,
		-0.837635, -0.138728, 0.528321,
		36.308849, 30.644880, 30.509224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568314, 31.391890, 30.170815>,  <36.895191, 30.741989, 30.139399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568314, 31.391890, 30.170815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378716, 31.189621, 30.459152>,  <36.264957, 31.068260, 30.632154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378716, 31.189621, 30.459152>,  <36.568314, 31.391890, 30.170815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378716, 31.189621, 30.459152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013192, 0.814485, 0.580035,
		-0.880426, 0.284446, -0.379394,
		-0.473999, -0.505673, 0.720846,
		36.236515, 31.037918, 30.675406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944431, 31.703485, 30.293404>,  <36.568314, 31.391890, 30.170815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944431, 31.703485, 30.293404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037937, 31.504995, 30.627857>,  <36.094040, 31.385902, 30.828529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037937, 31.504995, 30.627857>,  <35.944431, 31.703485, 30.293404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037937, 31.504995, 30.627857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055212, 0.851796, 0.520956,
		-0.970725, -0.167943, 0.171718,
		0.233760, -0.496224, 0.836133,
		36.108067, 31.356129, 30.878696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524025, 31.974001, 30.771858>,  <35.944431, 31.703485, 30.293404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524025, 31.974001, 30.771858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833431, 31.818842, 30.972340>,  <36.019073, 31.725746, 31.092628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833431, 31.818842, 30.972340>,  <35.524025, 31.974001, 30.771858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833431, 31.818842, 30.972340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035429, 0.816052, 0.576891,
		-0.632785, -0.428478, 0.644973,
		0.773516, -0.387899, 0.501205,
		36.065487, 31.702473, 31.122702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341709, 32.024441, 31.547321>,  <35.524025, 31.974001, 30.771858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341709, 32.024441, 31.547321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739925, 31.992407, 31.527359>,  <35.978855, 31.973186, 31.515381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739925, 31.992407, 31.527359>,  <35.341709, 32.024441, 31.547321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739925, 31.992407, 31.527359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079862, 0.433344, 0.897683,
		-0.050265, -0.897663, 0.437806,
		0.995538, -0.080086, -0.049908,
		36.038586, 31.968382, 31.512386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481205, 31.917389, 32.364410>,  <35.341709, 32.024441, 31.547321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481205, 31.917389, 32.364410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827618, 32.002094, 32.183239>,  <36.035465, 32.052917, 32.074535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827618, 32.002094, 32.183239>,  <35.481205, 31.917389, 32.364410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827618, 32.002094, 32.183239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299763, 0.505104, 0.809328,
		0.400160, -0.836676, 0.373959,
		0.866033, 0.211762, -0.452927,
		36.087429, 32.065624, 32.047359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868885, 32.037926, 32.899250>,  <35.481205, 31.917389, 32.364410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868885, 32.037926, 32.899250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099693, 32.179935, 32.605038>,  <36.238178, 32.265141, 32.428509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099693, 32.179935, 32.605038>,  <35.868885, 32.037926, 32.899250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099693, 32.179935, 32.605038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462980, 0.599720, 0.652676,
		0.672832, -0.717141, 0.181677,
		0.577016, 0.355028, -0.735533,
		36.272797, 32.286446, 32.384377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541462, 32.062683, 33.133705>,  <35.868885, 32.037926, 32.899250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541462, 32.062683, 33.133705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542503, 32.326645, 32.833168>,  <36.543129, 32.485020, 32.652843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542503, 32.326645, 32.833168>,  <36.541462, 32.062683, 33.133705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542503, 32.326645, 32.833168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217189, 0.733042, 0.644576,
		0.976126, -0.164862, -0.141416,
		0.002603, 0.659902, -0.751348,
		36.543285, 32.524616, 32.607765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283306, 32.403198, 33.045551>,  <36.541462, 32.062683, 33.133705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283306, 32.403198, 33.045551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009323, 32.648712, 32.888527>,  <36.844933, 32.796021, 32.794312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009323, 32.648712, 32.888527>,  <37.283306, 32.403198, 33.045551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009323, 32.648712, 32.888527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387257, 0.763093, 0.517418,
		0.617141, 0.202389, -0.760379,
		-0.684959, 0.613782, -0.392559,
		36.803837, 32.832848, 32.770760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678089, 33.045822, 32.943512>,  <37.283306, 32.403198, 33.045551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678089, 33.045822, 32.943512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.285866, 33.124004, 32.950401>,  <37.050529, 33.170914, 32.954536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.285866, 33.124004, 32.950401>,  <37.678089, 33.045822, 32.943512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285866, 33.124004, 32.950401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178033, 0.849349, 0.496900,
		0.082495, 0.490307, -0.867637,
		-0.980560, 0.195460, 0.017224,
		36.991699, 33.182644, 32.955570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675213, 33.803314, 32.933502>,  <37.678089, 33.045822, 32.943512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675213, 33.803314, 32.933502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327324, 33.665337, 33.074696>,  <37.118591, 33.582550, 33.159412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327324, 33.665337, 33.074696>,  <37.675213, 33.803314, 32.933502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327324, 33.665337, 33.074696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087628, 0.811771, 0.577365,
		-0.485702, 0.471215, -0.736241,
		-0.869721, -0.344942, 0.352987,
		37.066406, 33.561855, 33.180592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106544, 34.254532, 32.764076>,  <37.675213, 33.803314, 32.933502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106544, 34.254532, 32.764076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949959, 34.049778, 33.069946>,  <36.856007, 33.926926, 33.253468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949959, 34.049778, 33.069946>,  <37.106544, 34.254532, 32.764076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949959, 34.049778, 33.069946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061680, 0.843722, 0.533225,
		-0.918124, 0.161574, -0.361860,
		-0.391464, -0.511886, 0.764675,
		36.832520, 33.896214, 33.299351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.171780, 33.199348, 30.113491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.048702, 32.868118, 30.300943>,  <31.974855, 32.669380, 30.413416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.048702, 32.868118, 30.300943>,  <32.171780, 33.199348, 30.113491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048702, 32.868118, 30.300943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262167, -0.547246, -0.794852,
		0.914654, -0.121713, 0.385479,
		-0.307696, -0.828075, 0.468632,
		31.956394, 32.619698, 30.441532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714481, 32.660412, 30.053637>,  <32.171780, 33.199348, 30.113491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714481, 32.660412, 30.053637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.372288, 32.468643, 30.131931>,  <32.166973, 32.353584, 30.178907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.372288, 32.468643, 30.131931>,  <32.714481, 32.660412, 30.053637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372288, 32.468643, 30.131931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169631, -0.616579, -0.768801,
		0.489265, -0.624491, 0.608795,
		-0.855479, -0.479418, 0.195737,
		32.115643, 32.324818, 30.190653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897190, 31.992563, 29.818716>,  <32.714481, 32.660412, 30.053637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897190, 31.992563, 29.818716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501801, 31.980103, 29.877979>,  <32.264568, 31.972626, 29.913536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501801, 31.980103, 29.877979>,  <32.897190, 31.992563, 29.818716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501801, 31.980103, 29.877979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077737, -0.735317, -0.673250,
		0.129915, -0.677007, 0.724419,
		-0.988473, -0.031151, 0.148157,
		32.205257, 31.970757, 29.922426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645550, 31.245567, 29.949797>,  <32.897190, 31.992563, 29.818716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645550, 31.245567, 29.949797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351345, 31.460638, 29.784906>,  <32.174824, 31.589682, 29.685972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351345, 31.460638, 29.784906>,  <32.645550, 31.245567, 29.949797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351345, 31.460638, 29.784906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190706, -0.748136, -0.635550,
		-0.650122, -0.388839, 0.652798,
		-0.735508, 0.537678, -0.412226,
		32.130692, 31.621941, 29.661238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078457, 30.792339, 29.920029>,  <32.645550, 31.245567, 29.949797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078457, 30.792339, 29.920029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.960180, 31.082081, 29.670910>,  <31.889214, 31.255926, 29.521439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.960180, 31.082081, 29.670910>,  <32.078457, 30.792339, 29.920029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960180, 31.082081, 29.670910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274418, -0.688879, -0.670925,
		-0.915019, -0.027481, 0.402473,
		-0.295693, 0.724355, -0.622796,
		31.871473, 31.299387, 29.484072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345896, 30.644823, 29.824663>,  <32.078457, 30.792339, 29.920029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345896, 30.644823, 29.824663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.479301, 30.868155, 29.520811>,  <31.559345, 31.002153, 29.338499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.479301, 30.868155, 29.520811>,  <31.345896, 30.644823, 29.824663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479301, 30.868155, 29.520811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472157, -0.598502, -0.647196,
		-0.815988, 0.574514, 0.064010,
		0.333513, 0.558327, -0.759631,
		31.579355, 31.035652, 29.292921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729712, 30.576250, 29.346849>,  <31.345896, 30.644823, 29.824663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729712, 30.576250, 29.346849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045624, 30.714230, 29.143967>,  <31.235170, 30.797018, 29.022238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045624, 30.714230, 29.143967>,  <30.729712, 30.576250, 29.346849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045624, 30.714230, 29.143967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210678, -0.624038, -0.752457,
		-0.576075, 0.701133, -0.420180,
		0.789780, 0.344949, -0.507206,
		31.282558, 30.817715, 28.991804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433138, 30.786177, 28.745443>,  <30.729712, 30.576250, 29.346849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433138, 30.786177, 28.745443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814455, 30.720676, 28.643917>,  <31.043245, 30.681376, 28.583000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814455, 30.720676, 28.643917>,  <30.433138, 30.786177, 28.745443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814455, 30.720676, 28.643917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301795, -0.551226, -0.777862,
		-0.012536, 0.818129, -0.574898,
		0.953291, -0.163750, -0.253817,
		31.100443, 30.671551, 28.567772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437902, 30.648209, 28.005873>,  <30.433138, 30.786177, 28.745443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437902, 30.648209, 28.005873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.802336, 30.500599, 28.079355>,  <31.020996, 30.412033, 28.123444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.802336, 30.500599, 28.079355>,  <30.437902, 30.648209, 28.005873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802336, 30.500599, 28.079355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185962, -0.765666, -0.615772,
		0.367890, 0.526858, -0.766210,
		0.911085, -0.369022, 0.183706,
		31.075661, 30.389893, 28.134466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751028, 30.535086, 27.323647>,  <30.437902, 30.648209, 28.005873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751028, 30.535086, 27.323647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.912472, 30.275263, 27.581383>,  <31.009338, 30.119370, 27.736025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.912472, 30.275263, 27.581383>,  <30.751028, 30.535086, 27.323647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912472, 30.275263, 27.581383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193216, -0.748882, -0.633911,
		0.894296, 0.131356, -0.427761,
		0.403610, -0.649555, 0.644342,
		31.033554, 30.080397, 27.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139248, 30.171621, 26.997284>,  <30.751028, 30.535086, 27.323647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139248, 30.171621, 26.997284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.136412, 29.919077, 27.307467>,  <31.134710, 29.767551, 27.493576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.136412, 29.919077, 27.307467>,  <31.139248, 30.171621, 26.997284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136412, 29.919077, 27.307467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198850, -0.759099, -0.619860,
		0.980004, -0.158596, -0.120162,
		-0.007092, -0.631360, 0.775457,
		31.134283, 29.729670, 27.540104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585836, 29.678534, 26.803137>,  <31.139248, 30.171621, 26.997284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585836, 29.678534, 26.803137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341108, 29.523447, 27.078920>,  <31.194271, 29.430395, 27.244390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341108, 29.523447, 27.078920>,  <31.585836, 29.678534, 26.803137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341108, 29.523447, 27.078920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197590, -0.769086, -0.607836,
		0.765922, -0.508115, 0.393933,
		-0.611819, -0.387717, 0.689458,
		31.157562, 29.407131, 27.285757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690603, 29.017859, 26.894127>,  <31.585836, 29.678534, 26.803137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690603, 29.017859, 26.894127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302860, 29.031553, 26.991426>,  <31.070213, 29.039770, 27.049807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302860, 29.031553, 26.991426>,  <31.690603, 29.017859, 26.894127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302860, 29.031553, 26.991426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193465, -0.716610, -0.670106,
		0.151373, -0.696634, 0.701276,
		-0.969359, 0.034236, 0.243250,
		31.012053, 29.041824, 27.064402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075890, 28.658123, 26.349297>,  <31.690603, 29.017859, 26.894127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075890, 28.658123, 26.349297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176960, 28.273714, 26.304417>,  <32.237602, 28.043068, 26.277489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176960, 28.273714, 26.304417>,  <32.075890, 28.658123, 26.349297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176960, 28.273714, 26.304417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753297, 0.122617, 0.646150,
		-0.607207, -0.247786, 0.754918,
		0.252673, -0.961024, -0.112202,
		32.252762, 27.985407, 26.270756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139591, 28.357410, 27.042521>,  <32.075890, 28.658123, 26.349297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139591, 28.357410, 27.042521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369221, 28.163027, 26.778921>,  <32.507000, 28.046396, 26.620762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369221, 28.163027, 26.778921>,  <32.139591, 28.357410, 27.042521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369221, 28.163027, 26.778921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756898, 0.007974, 0.653484,
		-0.312312, -0.873945, 0.372400,
		0.574078, -0.485960, -0.658997,
		32.541443, 28.017239, 26.581223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285820, 27.779013, 27.416828>,  <32.139591, 28.357410, 27.042521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285820, 27.779013, 27.416828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556789, 27.865469, 27.135578>,  <32.719372, 27.917343, 26.966829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556789, 27.865469, 27.135578>,  <32.285820, 27.779013, 27.416828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556789, 27.865469, 27.135578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716446, 0.022814, 0.697270,
		0.166750, -0.976096, -0.139399,
		0.677422, 0.216141, -0.703124,
		32.760017, 27.930311, 26.924641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797562, 27.451389, 27.685810>,  <32.285820, 27.779013, 27.416828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797562, 27.451389, 27.685810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974396, 27.682856, 27.411671>,  <33.080498, 27.821735, 27.247187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974396, 27.682856, 27.411671>,  <32.797562, 27.451389, 27.685810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974396, 27.682856, 27.411671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785063, 0.119953, 0.607690,
		0.433859, -0.806696, -0.401258,
		0.442089, 0.578665, -0.685350,
		33.107021, 27.856455, 27.206066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498127, 27.266409, 27.695974>,  <32.797562, 27.451389, 27.685810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498127, 27.266409, 27.695974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477489, 27.636360, 27.545275>,  <33.465107, 27.858330, 27.454855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477489, 27.636360, 27.545275>,  <33.498127, 27.266409, 27.695974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477489, 27.636360, 27.545275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734216, 0.290853, 0.613459,
		0.676953, -0.244964, -0.694066,
		-0.051596, 0.924877, -0.376750,
		33.462009, 27.913824, 27.432249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187248, 27.432331, 27.502079>,  <33.498127, 27.266409, 27.695974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187248, 27.432331, 27.502079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007023, 27.787893, 27.535168>,  <33.898888, 28.001230, 27.555021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007023, 27.787893, 27.535168>,  <34.187248, 27.432331, 27.502079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007023, 27.787893, 27.535168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802671, 0.362796, 0.473390,
		0.390788, 0.279688, -0.876960,
		-0.450559, 0.888906, 0.082721,
		33.871857, 28.054565, 27.559984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707703, 27.858624, 27.351620>,  <34.187248, 27.432331, 27.502079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707703, 27.858624, 27.351620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423092, 28.071026, 27.535692>,  <34.252327, 28.198467, 27.646135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423092, 28.071026, 27.535692>,  <34.707703, 27.858624, 27.351620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423092, 28.071026, 27.535692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685548, 0.380948, 0.620406,
		0.154134, 0.756909, -0.635084,
		-0.711525, 0.531006, 0.460180,
		34.209633, 28.230328, 27.673746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940067, 28.521206, 27.400257>,  <34.707703, 27.858624, 27.351620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940067, 28.521206, 27.400257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655613, 28.522348, 27.681477>,  <34.484940, 28.523033, 27.850208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655613, 28.522348, 27.681477>,  <34.940067, 28.521206, 27.400257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655613, 28.522348, 27.681477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598988, 0.526030, 0.603744,
		-0.368100, 0.850461, -0.375789,
		-0.711137, 0.002855, 0.703047,
		34.442272, 28.523205, 27.892391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895245, 29.285248, 27.558704>,  <34.940067, 28.521206, 27.400257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895245, 29.285248, 27.558704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745365, 29.021555, 27.819477>,  <34.655437, 28.863340, 27.975941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745365, 29.021555, 27.819477>,  <34.895245, 29.285248, 27.558704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745365, 29.021555, 27.819477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438079, 0.493829, 0.751145,
		-0.817121, 0.567052, 0.103757,
		-0.374700, -0.659230, 0.651932,
		34.632954, 28.823786, 28.015057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582016, 29.695267, 27.963655>,  <34.895245, 29.285248, 27.558704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582016, 29.695267, 27.963655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637238, 29.355158, 28.166822>,  <34.670372, 29.151093, 28.288723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637238, 29.355158, 28.166822>,  <34.582016, 29.695267, 27.963655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637238, 29.355158, 28.166822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386038, 0.518464, 0.763001,
		-0.912094, 0.090741, 0.399813,
		0.138053, -0.850271, 0.507917,
		34.678654, 29.100077, 28.319197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440384, 29.846268, 28.558790>,  <34.582016, 29.695267, 27.963655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440384, 29.846268, 28.558790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617397, 29.499557, 28.650759>,  <34.723606, 29.291531, 28.705940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617397, 29.499557, 28.650759>,  <34.440384, 29.846268, 28.558790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617397, 29.499557, 28.650759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420536, 0.427041, 0.800491,
		-0.792033, -0.257551, 0.553490,
		0.442530, -0.866778, 0.229921,
		34.750156, 29.239525, 28.719734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303707, 29.685320, 29.334791>,  <34.440384, 29.846268, 28.558790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303707, 29.685320, 29.334791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631477, 29.484476, 29.224209>,  <34.828140, 29.363970, 29.157860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631477, 29.484476, 29.224209>,  <34.303707, 29.685320, 29.334791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631477, 29.484476, 29.224209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520496, 0.449831, 0.725766,
		-0.240055, -0.738605, 0.629949,
		0.819425, -0.502110, -0.276457,
		34.877304, 29.333843, 29.141272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636646, 29.383310, 29.907230>,  <34.303707, 29.685320, 29.334791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636646, 29.383310, 29.907230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947327, 29.398663, 29.655752>,  <35.133736, 29.407873, 29.504866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947327, 29.398663, 29.655752>,  <34.636646, 29.383310, 29.907230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947327, 29.398663, 29.655752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544321, 0.461342, 0.700627,
		0.316933, -0.886392, 0.337435,
		0.776703, 0.038379, -0.628696,
		35.180336, 29.410175, 29.467144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204205, 29.086414, 30.260830>,  <34.636646, 29.383310, 29.907230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204205, 29.086414, 30.260830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.340813, 29.311413, 29.959642>,  <35.422775, 29.446413, 29.778931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.340813, 29.311413, 29.959642>,  <35.204205, 29.086414, 30.260830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340813, 29.311413, 29.959642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640343, 0.447178, 0.624494,
		0.687988, -0.695433, -0.207472,
		0.341517, 0.562498, -0.752969,
		35.443268, 29.480162, 29.733751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928062, 29.005098, 30.344843>,  <35.204205, 29.086414, 30.260830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928062, 29.005098, 30.344843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829037, 29.342417, 30.154030>,  <35.769619, 29.544807, 30.039541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829037, 29.342417, 30.154030>,  <35.928062, 29.005098, 30.344843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829037, 29.342417, 30.154030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563595, 0.525831, 0.637073,
		0.788081, -0.111135, -0.605456,
		-0.247567, 0.843297, -0.477033,
		35.754768, 29.595406, 30.010920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459072, 28.408304, 30.391235>,  <35.928062, 29.005098, 30.344843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459072, 28.408304, 30.391235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497776, 28.185184, 30.720961>,  <36.521000, 28.051311, 30.918797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497776, 28.185184, 30.720961>,  <36.459072, 28.408304, 30.391235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497776, 28.185184, 30.720961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564157, -0.713045, -0.416285,
		0.819978, -0.424764, -0.383682,
		0.096760, -0.557801, 0.824315,
		36.526806, 28.017843, 30.968256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755184, 27.640638, 30.259678>,  <36.459072, 28.408304, 30.391235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755184, 27.640638, 30.259678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544567, 27.617485, 30.598948>,  <36.418198, 27.603592, 30.802509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544567, 27.617485, 30.598948>,  <36.755184, 27.640638, 30.259678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544567, 27.617485, 30.598948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527623, -0.760037, -0.379418,
		0.666606, -0.647297, 0.369653,
		-0.526546, -0.057885, 0.848174,
		36.386604, 27.600119, 30.853399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721924, 26.955278, 30.415697>,  <36.755184, 27.640638, 30.259678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721924, 26.955278, 30.415697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.426182, 27.118397, 30.630007>,  <36.248737, 27.216267, 30.758593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.426182, 27.118397, 30.630007>,  <36.721924, 26.955278, 30.415697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426182, 27.118397, 30.630007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654284, -0.622984, -0.428724,
		0.158949, -0.667530, 0.727420,
		-0.739356, 0.407794, 0.535776,
		36.204376, 27.240734, 30.790739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317287, 26.403482, 30.535671>,  <36.721924, 26.955278, 30.415697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317287, 26.403482, 30.535671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091152, 26.731602, 30.570305>,  <35.955471, 26.928474, 30.591085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091152, 26.731602, 30.570305>,  <36.317287, 26.403482, 30.535671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091152, 26.731602, 30.570305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740216, -0.458213, -0.492058,
		-0.363961, -0.342273, 0.866246,
		-0.565343, 0.820299, 0.086584,
		35.921551, 26.977692, 30.596279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742626, 26.071463, 30.609322>,  <36.317287, 26.403482, 30.535671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742626, 26.071463, 30.609322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621468, 26.445164, 30.534039>,  <35.548771, 26.669384, 30.488869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621468, 26.445164, 30.534039>,  <35.742626, 26.071463, 30.609322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621468, 26.445164, 30.534039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829787, -0.355667, -0.430064,
		-0.468728, 0.025906, 0.882963,
		-0.302899, 0.934254, -0.188207,
		35.530598, 26.725439, 30.477577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030270, 26.075684, 30.744823>,  <35.742626, 26.071463, 30.609322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030270, 26.075684, 30.744823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097809, 26.388098, 30.504333>,  <35.138332, 26.575546, 30.360039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097809, 26.388098, 30.504333>,  <35.030270, 26.075684, 30.744823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097809, 26.388098, 30.504333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833810, -0.212092, -0.509684,
		-0.525597, 0.587366, 0.615426,
		0.168844, 0.781037, -0.601227,
		35.148460, 26.622408, 30.323965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398186, 26.427925, 30.663132>,  <35.030270, 26.075684, 30.744823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398186, 26.427925, 30.663132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613533, 26.526587, 30.340809>,  <34.742741, 26.585783, 30.147415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613533, 26.526587, 30.340809>,  <34.398186, 26.427925, 30.663132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613533, 26.526587, 30.340809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800132, -0.150498, -0.580637,
		-0.264488, 0.957347, 0.116332,
		0.538364, 0.246653, -0.805808,
		34.775043, 26.600582, 30.099066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018181, 26.658194, 31.175879>,  <34.398186, 26.427925, 30.663132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018181, 26.658194, 31.175879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768875, 26.473322, 31.428207>,  <33.619293, 26.362400, 31.579605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768875, 26.473322, 31.428207>,  <34.018181, 26.658194, 31.175879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768875, 26.473322, 31.428207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559366, 0.300244, 0.772634,
		-0.546495, 0.834413, 0.071396,
		-0.623260, -0.462177, 0.630824,
		33.581898, 26.334669, 31.617455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782112, 27.198988, 31.737970>,  <34.018181, 26.658194, 31.175879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782112, 27.198988, 31.737970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731869, 26.826775, 31.875566>,  <33.701725, 26.603447, 31.958124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731869, 26.826775, 31.875566>,  <33.782112, 27.198988, 31.737970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731869, 26.826775, 31.875566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475047, 0.247989, 0.844294,
		-0.870950, 0.269461, 0.410898,
		-0.125606, -0.930533, 0.343992,
		33.694187, 26.547615, 31.978764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398067, 27.250929, 32.400078>,  <33.782112, 27.198988, 31.737970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398067, 27.250929, 32.400078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590515, 26.900270, 32.401695>,  <33.705982, 26.689875, 32.402664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590515, 26.900270, 32.401695>,  <33.398067, 27.250929, 32.400078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590515, 26.900270, 32.401695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426141, 0.237901, 0.872816,
		-0.766112, -0.418206, 0.488033,
		0.481120, -0.876645, 0.004044,
		33.734852, 26.637278, 32.402908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403816, 27.007793, 33.140495>,  <33.398067, 27.250929, 32.400078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403816, 27.007793, 33.140495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680561, 26.765234, 32.983727>,  <33.846607, 26.619698, 32.889668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680561, 26.765234, 32.983727>,  <33.403816, 27.007793, 33.140495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680561, 26.765234, 32.983727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541792, 0.077221, 0.836958,
		-0.477267, -0.791400, 0.381970,
		0.691865, -0.606401, -0.391919,
		33.888119, 26.583313, 32.866150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494858, 26.442251, 33.576416>,  <33.403816, 27.007793, 33.140495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494858, 26.442251, 33.576416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834599, 26.507336, 33.375565>,  <34.038441, 26.546387, 33.255054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834599, 26.507336, 33.375565>,  <33.494858, 26.442251, 33.576416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834599, 26.507336, 33.375565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465559, 0.217327, 0.857918,
		0.248717, -0.962442, 0.108836,
		0.849350, 0.162709, -0.502127,
		34.089405, 26.556149, 33.224926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031513, 26.083622, 33.948944>,  <33.494858, 26.442251, 33.576416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031513, 26.083622, 33.948944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237637, 26.299307, 33.682495>,  <34.361309, 26.428717, 33.522625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237637, 26.299307, 33.682495>,  <34.031513, 26.083622, 33.948944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237637, 26.299307, 33.682495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594407, 0.335046, 0.731043,
		0.617367, -0.772655, -0.147860,
		0.515304, 0.539211, -0.666118,
		34.392227, 26.461071, 33.482658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648464, 25.962715, 34.160416>,  <34.031513, 26.083622, 33.948944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648464, 25.962715, 34.160416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661098, 26.305595, 33.954811>,  <34.668678, 26.511324, 33.831448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661098, 26.305595, 33.954811>,  <34.648464, 25.962715, 34.160416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661098, 26.305595, 33.954811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803753, 0.283913, 0.522852,
		0.594124, -0.429654, -0.680010,
		0.031581, 0.857199, -0.514016,
		34.670574, 26.562756, 33.800606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.868170, 28.005655, 30.166847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038065, 28.286591, 29.938351>,  <30.140001, 28.455153, 29.801252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038065, 28.286591, 29.938351>,  <29.868170, 28.005655, 30.166847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038065, 28.286591, 29.938351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234042, 0.694721, 0.680137,
		0.874541, -0.155185, 0.459451,
		0.424738, 0.702339, -0.571242,
		30.165487, 28.497292, 29.766977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193918, 28.424065, 30.636339>,  <29.868170, 28.005655, 30.166847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193918, 28.424065, 30.636339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195356, 28.665340, 30.317303>,  <30.196218, 28.810106, 30.125881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195356, 28.665340, 30.317303>,  <30.193918, 28.424065, 30.636339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195356, 28.665340, 30.317303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049981, 0.796708, 0.602294,
		0.998744, 0.037699, 0.033012,
		0.003595, 0.603188, -0.797591,
		30.196434, 28.846296, 30.078026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668398, 28.940159, 30.751492>,  <30.193918, 28.424065, 30.636339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668398, 28.940159, 30.751492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422197, 29.111515, 30.486874>,  <30.274477, 29.214329, 30.328102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422197, 29.111515, 30.486874>,  <30.668398, 28.940159, 30.751492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422197, 29.111515, 30.486874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027707, 0.850619, 0.525051,
		0.787650, 0.304840, -0.535426,
		-0.615500, 0.428392, -0.661544,
		30.237547, 29.240032, 30.288410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908503, 29.650433, 30.582329>,  <30.668398, 28.940159, 30.751492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908503, 29.650433, 30.582329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.523378, 29.655193, 30.474363>,  <30.292303, 29.658051, 30.409584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.523378, 29.655193, 30.474363>,  <30.908503, 29.650433, 30.582329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523378, 29.655193, 30.474363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141409, 0.829059, 0.540986,
		0.230212, 0.559035, -0.796544,
		-0.962812, 0.011903, -0.269912,
		30.234535, 29.658764, 30.393391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771584, 30.341057, 30.506605>,  <30.908503, 29.650433, 30.582329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771584, 30.341057, 30.506605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407784, 30.182592, 30.556997>,  <30.189505, 30.087515, 30.587233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407784, 30.182592, 30.556997>,  <30.771584, 30.341057, 30.506605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407784, 30.182592, 30.556997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195750, 0.675479, 0.710922,
		-0.366735, 0.621922, -0.691895,
		-0.909498, -0.396159, 0.125981,
		30.134933, 30.063745, 30.594791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078215, 30.887846, 30.325224>,  <30.771584, 30.341057, 30.506605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078215, 30.887846, 30.325224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988283, 30.602123, 30.590317>,  <29.934324, 30.430689, 30.749372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988283, 30.602123, 30.590317>,  <30.078215, 30.887846, 30.325224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988283, 30.602123, 30.590317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299823, 0.697863, 0.650456,
		-0.927123, -0.052460, -0.371067,
		-0.224831, -0.714308, 0.662733,
		29.920834, 30.387831, 30.789137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551193, 31.182949, 30.647875>,  <30.078215, 30.887846, 30.325224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551193, 31.182949, 30.647875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622118, 30.893330, 30.914501>,  <29.664673, 30.719557, 31.074476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622118, 30.893330, 30.914501>,  <29.551193, 31.182949, 30.647875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622118, 30.893330, 30.914501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265814, 0.616892, 0.740801,
		-0.947577, -0.308537, -0.083079,
		0.177314, -0.724050, 0.666566,
		29.675312, 30.676115, 31.114471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062799, 31.312365, 31.168488>,  <29.551193, 31.182949, 30.647875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062799, 31.312365, 31.168488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324226, 31.054071, 31.326412>,  <29.481083, 30.899096, 31.421167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324226, 31.054071, 31.326412>,  <29.062799, 31.312365, 31.168488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324226, 31.054071, 31.326412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015533, 0.510087, 0.859982,
		-0.756708, -0.568190, 0.323347,
		0.653568, -0.645733, 0.394813,
		29.520296, 30.860352, 31.444857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753578, 31.159233, 31.817568>,  <29.062799, 31.312365, 31.168488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753578, 31.159233, 31.817568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135838, 31.063772, 31.886593>,  <29.365194, 31.006496, 31.928009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135838, 31.063772, 31.886593>,  <28.753578, 31.159233, 31.817568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135838, 31.063772, 31.886593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061531, 0.411219, 0.909458,
		-0.288004, -0.879742, 0.378297,
		0.955650, -0.238651, 0.172564,
		29.422533, 30.992176, 31.938362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687737, 30.848133, 32.445717>,  <28.753578, 31.159233, 31.817568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687737, 30.848133, 32.445717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073582, 30.938534, 32.391399>,  <29.305090, 30.992775, 32.358807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073582, 30.938534, 32.391399>,  <28.687737, 30.848133, 32.445717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073582, 30.938534, 32.391399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072464, 0.267960, 0.960701,
		0.253491, -0.936551, 0.242104,
		0.964620, 0.225985, -0.135791,
		29.362967, 31.006334, 32.350662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096714, 30.468237, 32.999981>,  <28.687737, 30.848133, 32.445717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096714, 30.468237, 32.999981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279753, 30.799870, 32.871464>,  <29.389576, 30.998850, 32.794353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279753, 30.799870, 32.871464>,  <29.096714, 30.468237, 32.999981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279753, 30.799870, 32.871464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077781, 0.322630, 0.943324,
		0.885752, -0.456650, 0.083147,
		0.457595, 0.829084, -0.321289,
		29.417032, 31.048595, 32.775078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814211, 30.473015, 33.326786>,  <29.096714, 30.468237, 32.999981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814211, 30.473015, 33.326786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730785, 30.844278, 33.203487>,  <29.680729, 31.067038, 33.129509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730785, 30.844278, 33.203487>,  <29.814211, 30.473015, 33.326786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730785, 30.844278, 33.203487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088411, 0.331785, 0.939203,
		0.974004, 0.168633, -0.151258,
		-0.208566, 0.928160, -0.308251,
		29.668215, 31.122726, 33.111012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298834, 29.925133, 33.405457>,  <29.814211, 30.473015, 33.326786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298834, 29.925133, 33.405457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128832, 29.667215, 33.659576>,  <30.026831, 29.512465, 33.812050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128832, 29.667215, 33.659576>,  <30.298834, 29.925133, 33.405457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128832, 29.667215, 33.659576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313719, -0.553422, -0.771560,
		0.849088, -0.527223, 0.032923,
		-0.425005, -0.644794, 0.635304,
		30.001331, 29.473778, 33.850166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526306, 29.314217, 33.236477>,  <30.298834, 29.925133, 33.405457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526306, 29.314217, 33.236477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176298, 29.242407, 33.416302>,  <29.966293, 29.199320, 33.524197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176298, 29.242407, 33.416302>,  <30.526306, 29.314217, 33.236477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176298, 29.242407, 33.416302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250506, -0.626746, -0.737859,
		0.414227, -0.758261, 0.503444,
		-0.875021, -0.179525, 0.449565,
		29.913792, 29.188549, 33.551170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500589, 28.641172, 33.091000>,  <30.526306, 29.314217, 33.236477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500589, 28.641172, 33.091000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.133400, 28.707975, 33.234909>,  <29.913086, 28.748056, 33.321255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.133400, 28.707975, 33.234909>,  <30.500589, 28.641172, 33.091000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133400, 28.707975, 33.234909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351765, -0.761879, -0.543876,
		0.183274, -0.625819, 0.758131,
		-0.917972, 0.167006, 0.359774,
		29.858009, 28.758078, 33.342842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215239, 28.015583, 33.290264>,  <30.500589, 28.641172, 33.091000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215239, 28.015583, 33.290264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897018, 28.244635, 33.211075>,  <29.706085, 28.382065, 33.163559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897018, 28.244635, 33.211075>,  <30.215239, 28.015583, 33.290264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897018, 28.244635, 33.211075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376683, -0.723383, -0.578642,
		-0.474559, -0.385766, 0.791188,
		-0.795552, 0.572627, -0.197976,
		29.658352, 28.416422, 33.151680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654146, 27.546133, 33.402401>,  <30.215239, 28.015583, 33.290264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654146, 27.546133, 33.402401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530111, 27.842981, 33.164711>,  <29.455690, 28.021090, 33.022095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530111, 27.842981, 33.164711>,  <29.654146, 27.546133, 33.402401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530111, 27.842981, 33.164711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306522, -0.669700, -0.676422,
		-0.899940, -0.027606, 0.435140,
		-0.310087, 0.742119, -0.594228,
		29.437086, 28.065617, 32.986443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963745, 27.273619, 33.323772>,  <29.654146, 27.546133, 33.402401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963745, 27.273619, 33.323772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031885, 27.555370, 33.048141>,  <29.072769, 27.724421, 32.882763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031885, 27.555370, 33.048141>,  <28.963745, 27.273619, 33.323772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031885, 27.555370, 33.048141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332660, -0.617136, -0.713078,
		-0.927533, 0.350703, 0.129189,
		0.170351, 0.704379, -0.689079,
		29.082991, 27.766684, 32.841419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394537, 27.183958, 32.869423>,  <28.963745, 27.273619, 33.323772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394537, 27.183958, 32.869423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635118, 27.413120, 32.646698>,  <28.779467, 27.550617, 32.513065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635118, 27.413120, 32.646698>,  <28.394537, 27.183958, 32.869423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635118, 27.413120, 32.646698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276202, -0.504870, -0.817814,
		-0.749645, 0.645667, -0.145417,
		0.601452, 0.572906, -0.556808,
		28.815554, 27.584991, 32.479656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045008, 27.208990, 32.193897>,  <28.394537, 27.183958, 32.869423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045008, 27.208990, 32.193897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414148, 27.336864, 32.107967>,  <28.635632, 27.413589, 32.056408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414148, 27.336864, 32.107967>,  <28.045008, 27.208990, 32.193897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414148, 27.336864, 32.107967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046516, -0.461164, -0.886095,
		-0.382340, 0.827726, -0.410715,
		0.922850, 0.319685, -0.214824,
		28.691004, 27.432770, 32.043522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085917, 27.499704, 31.414186>,  <28.045008, 27.208990, 32.193897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085917, 27.499704, 31.414186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.448946, 27.378962, 31.530939>,  <28.666763, 27.306517, 31.600990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.448946, 27.378962, 31.530939>,  <28.085917, 27.499704, 31.414186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448946, 27.378962, 31.530939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099241, -0.521234, -0.847624,
		0.407998, 0.798247, -0.443101,
		0.907573, -0.301855, 0.291882,
		28.721218, 27.288404, 31.618504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419617, 27.637648, 30.858080>,  <28.085917, 27.499704, 31.414186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419617, 27.637648, 30.858080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659931, 27.391354, 31.062012>,  <28.804119, 27.243578, 31.184372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659931, 27.391354, 31.062012>,  <28.419617, 27.637648, 30.858080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659931, 27.391354, 31.062012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205097, -0.497690, -0.842757,
		0.772652, 0.610882, -0.172721,
		0.600786, -0.615734, 0.509831,
		28.840168, 27.206633, 31.214962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054571, 27.702845, 30.506321>,  <28.419617, 27.637648, 30.858080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054571, 27.702845, 30.506321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009645, 27.355934, 30.700317>,  <28.982689, 27.147787, 30.816715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009645, 27.355934, 30.700317>,  <29.054571, 27.702845, 30.506321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009645, 27.355934, 30.700317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352644, -0.491099, -0.796532,
		0.928993, 0.081567, 0.360998,
		-0.112315, -0.867277, 0.484992,
		28.975950, 27.095751, 30.845816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685146, 27.360069, 30.494492>,  <29.054571, 27.702845, 30.506321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685146, 27.360069, 30.494492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405844, 27.081415, 30.560383>,  <29.238262, 26.914223, 30.599918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405844, 27.081415, 30.560383>,  <29.685146, 27.360069, 30.494492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405844, 27.081415, 30.560383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266715, -0.466727, -0.843225,
		0.664304, -0.544852, 0.511699,
		-0.698257, -0.696636, 0.164728,
		29.196367, 26.872425, 30.609800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031614, 26.665215, 30.336927>,  <29.685146, 27.360069, 30.494492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031614, 26.665215, 30.336927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.638243, 26.592991, 30.330389>,  <29.402220, 26.549656, 30.326466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.638243, 26.592991, 30.330389>,  <30.031614, 26.665215, 30.336927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638243, 26.592991, 30.330389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124065, -0.604479, -0.786901,
		0.132202, -0.775889, 0.616862,
		-0.983428, -0.180561, -0.016347,
		29.343214, 26.538822, 30.325485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957993, 25.991142, 30.379364>,  <30.031614, 26.665215, 30.336927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957993, 25.991142, 30.379364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618477, 26.133265, 30.222742>,  <29.414768, 26.218538, 30.128769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618477, 26.133265, 30.222742>,  <29.957993, 25.991142, 30.379364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618477, 26.133265, 30.222742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117131, -0.595797, -0.794548,
		-0.515593, -0.720267, 0.464089,
		-0.848790, 0.355304, -0.391554,
		29.363840, 26.239857, 30.105276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519470, 25.685150, 30.664463>,  <29.957993, 25.991142, 30.379364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519470, 25.685150, 30.664463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821318, 25.588190, 30.420563>,  <31.002426, 25.530014, 30.274223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821318, 25.588190, 30.420563>,  <30.519470, 25.685150, 30.664463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821318, 25.588190, 30.420563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627086, -0.007166, 0.778917,
		-0.193178, -0.970150, 0.146597,
		0.754616, -0.242399, -0.609751,
		31.047703, 25.515471, 30.237637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915403, 25.279999, 31.048178>,  <30.519470, 25.685150, 30.664463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915403, 25.279999, 31.048178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166340, 25.426796, 30.773438>,  <31.316902, 25.514874, 30.608593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166340, 25.426796, 30.773438>,  <30.915403, 25.279999, 31.048178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166340, 25.426796, 30.773438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718651, 0.066922, 0.692144,
		0.299976, -0.927814, -0.221756,
		0.627340, 0.366992, -0.686849,
		31.354542, 25.536894, 30.567383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559296, 25.012224, 31.179264>,  <30.915403, 25.279999, 31.048178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559296, 25.012224, 31.179264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639685, 25.314526, 30.929960>,  <31.687918, 25.495907, 30.780378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639685, 25.314526, 30.929960>,  <31.559296, 25.012224, 31.179264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639685, 25.314526, 30.929960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897349, 0.113160, 0.426568,
		0.392908, -0.645007, -0.655431,
		0.200971, 0.755752, -0.623257,
		31.699976, 25.541252, 30.742983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206127, 24.836525, 30.902233>,  <31.559296, 25.012224, 31.179264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206127, 24.836525, 30.902233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.198391, 25.233503, 30.853773>,  <32.193748, 25.471691, 30.824697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.198391, 25.233503, 30.853773>,  <32.206127, 24.836525, 30.902233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198391, 25.233503, 30.853773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859669, 0.078379, 0.504803,
		0.510485, -0.094386, -0.854691,
		-0.019343, 0.992446, -0.121152,
		32.192589, 25.531237, 30.817427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867859, 25.038263, 30.950609>,  <32.206127, 24.836525, 30.902233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867859, 25.038263, 30.950609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.702648, 25.400108, 30.992720>,  <32.603523, 25.617216, 31.017986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.702648, 25.400108, 30.992720>,  <32.867859, 25.038263, 30.950609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702648, 25.400108, 30.992720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783562, 0.294060, 0.547321,
		0.464157, 0.308546, -0.830275,
		-0.413025, 0.904615, 0.105275,
		32.578739, 25.671494, 31.024302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353622, 25.386431, 30.753782>,  <32.867859, 25.038263, 30.950609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353622, 25.386431, 30.753782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.139946, 25.662397, 30.949192>,  <33.011742, 25.827976, 31.066439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.139946, 25.662397, 30.949192>,  <33.353622, 25.386431, 30.753782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139946, 25.662397, 30.949192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786327, 0.193350, 0.586775,
		0.310369, 0.697591, -0.645785,
		-0.534191, 0.689915, 0.488525,
		32.979687, 25.869371, 31.095749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660519, 26.117533, 30.722458>,  <33.353622, 25.386431, 30.753782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660519, 26.117533, 30.722458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440132, 26.099524, 31.055782>,  <33.307899, 26.088718, 31.255777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440132, 26.099524, 31.055782>,  <33.660519, 26.117533, 30.722458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440132, 26.099524, 31.055782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735452, 0.445708, 0.510348,
		-0.394390, 0.894046, -0.212459,
		-0.550969, -0.045023, 0.833311,
		33.274841, 26.086018, 31.305775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819794, 26.704681, 30.267918>,  <33.660519, 26.117533, 30.722458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819794, 26.704681, 30.267918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.110142, 26.627628, 30.003796>,  <34.284351, 26.581396, 29.845322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.110142, 26.627628, 30.003796>,  <33.819794, 26.704681, 30.267918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110142, 26.627628, 30.003796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682484, -0.321184, -0.656549,
		-0.085605, 0.927218, -0.364608,
		0.725870, -0.192634, -0.660306,
		34.327904, 26.569838, 29.805704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584484, 27.003592, 29.623432>,  <33.819794, 26.704681, 30.267918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584484, 27.003592, 29.623432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.860188, 26.730145, 29.527443>,  <34.025612, 26.566076, 29.469849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.860188, 26.730145, 29.527443>,  <33.584484, 27.003592, 29.623432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860188, 26.730145, 29.527443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585697, -0.330780, -0.739962,
		0.426471, 0.650579, -0.628386,
		0.689261, -0.683616, -0.239974,
		34.066967, 26.525059, 29.455450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581604, 26.989923, 28.877207>,  <33.584484, 27.003592, 29.623432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581604, 26.989923, 28.877207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.816742, 26.674137, 28.947844>,  <33.957825, 26.484665, 28.990225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.816742, 26.674137, 28.947844>,  <33.581604, 26.989923, 28.877207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816742, 26.674137, 28.947844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133937, -0.310255, -0.941171,
		0.797812, 0.529607, -0.288119,
		0.587841, -0.789467, 0.176591,
		33.993095, 26.437298, 29.000820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073299, 26.966406, 28.327976>,  <33.581604, 26.989923, 28.877207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073299, 26.966406, 28.327976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.043716, 26.594271, 28.471642>,  <34.025967, 26.370989, 28.557840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.043716, 26.594271, 28.471642>,  <34.073299, 26.966406, 28.327976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043716, 26.594271, 28.471642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182442, -0.341449, -0.922024,
		0.980431, -0.133717, -0.144480,
		-0.073957, -0.930340, 0.359163,
		34.021530, 26.315168, 28.579390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579548, 26.557716, 27.953936>,  <34.073299, 26.966406, 28.327976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579548, 26.557716, 27.953936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.289513, 26.319984, 28.093086>,  <34.115490, 26.177345, 28.176577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.289513, 26.319984, 28.093086>,  <34.579548, 26.557716, 27.953936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289513, 26.319984, 28.093086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223658, -0.274531, -0.935206,
		0.651323, -0.755913, 0.066133,
		-0.725090, -0.594329, 0.347874,
		34.071987, 26.141685, 28.197449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525734, 26.004099, 27.486977>,  <34.579548, 26.557716, 27.953936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525734, 26.004099, 27.486977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.173134, 25.986485, 27.675026>,  <33.961575, 25.975916, 27.787855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.173134, 25.986485, 27.675026>,  <34.525734, 26.004099, 27.486977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173134, 25.986485, 27.675026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440892, -0.279649, -0.852884,
		0.169026, -0.959092, 0.227097,
		-0.881502, -0.044034, 0.470124,
		33.908684, 25.973274, 27.816063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275425, 25.434774, 27.188194>,  <34.525734, 26.004099, 27.486977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275425, 25.434774, 27.188194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945797, 25.580639, 27.361601>,  <33.748020, 25.668158, 27.465645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945797, 25.580639, 27.361601>,  <34.275425, 25.434774, 27.188194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945797, 25.580639, 27.361601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550040, -0.331967, -0.766325,
		-0.135535, -0.869955, 0.474140,
		-0.824067, 0.364660, 0.433517,
		33.698578, 25.690037, 27.491655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867840, 24.964941, 27.403294>,  <34.275425, 25.434774, 27.188194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867840, 24.964941, 27.403294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.598694, 25.257095, 27.356319>,  <33.437206, 25.432388, 27.328135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.598694, 25.257095, 27.356319>,  <33.867840, 24.964941, 27.403294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598694, 25.257095, 27.356319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434354, -0.518563, -0.736498,
		-0.598827, -0.444552, 0.666168,
		-0.672861, 0.730388, -0.117437,
		33.396835, 25.476212, 27.321089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207863, 24.689753, 27.208124>,  <33.867840, 24.964941, 27.403294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207863, 24.689753, 27.208124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.192154, 25.071033, 27.088215>,  <33.182728, 25.299801, 27.016270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.192154, 25.071033, 27.088215>,  <33.207863, 24.689753, 27.208124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192154, 25.071033, 27.088215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412039, -0.288759, -0.864200,
		-0.910320, 0.089583, 0.404095,
		-0.039269, 0.953201, -0.299775,
		33.180374, 25.356995, 26.998281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.192341, 34.946072, 38.073586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931503, 35.138741, 37.839401>,  <38.775002, 35.254341, 37.698891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931503, 35.138741, 37.839401>,  <39.192341, 34.946072, 38.073586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931503, 35.138741, 37.839401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121921, -0.695557, -0.708051,
		-0.748268, -0.533097, 0.394844,
		-0.652096, 0.481672, -0.585459,
		38.735874, 35.283241, 37.663765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585007, 34.486515, 37.902653>,  <39.192341, 34.946072, 38.073586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585007, 34.486515, 37.902653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620884, 34.751602, 37.605259>,  <38.642410, 34.910652, 37.426823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620884, 34.751602, 37.605259>,  <38.585007, 34.486515, 37.902653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620884, 34.751602, 37.605259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070163, -0.748841, -0.659025,
		-0.993495, 0.006945, -0.113664,
		0.089694, 0.662713, -0.743482,
		38.647793, 34.950417, 37.382214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038849, 34.340427, 37.395962>,  <38.585007, 34.486515, 37.902653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038849, 34.340427, 37.395962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333012, 34.528603, 37.200874>,  <38.509510, 34.641506, 37.083824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333012, 34.528603, 37.200874>,  <38.038849, 34.340427, 37.395962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333012, 34.528603, 37.200874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013210, -0.709654, -0.704427,
		-0.677496, 0.524484, -0.515671,
		0.735408, 0.470434, -0.487715,
		38.553635, 34.669731, 37.054558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736172, 34.310291, 36.730042>,  <38.038849, 34.340427, 37.395962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736172, 34.310291, 36.730042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128166, 34.384785, 36.701889>,  <38.363361, 34.429482, 36.684998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128166, 34.384785, 36.701889>,  <37.736172, 34.310291, 36.730042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128166, 34.384785, 36.701889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047726, -0.562975, -0.825095,
		-0.193281, 0.805219, -0.560594,
		0.979982, 0.186230, -0.070382,
		38.422161, 34.440655, 36.680775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860512, 34.332844, 36.063374>,  <37.736172, 34.310291, 36.730042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860512, 34.332844, 36.063374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233074, 34.286388, 36.201359>,  <38.456612, 34.258514, 36.284149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233074, 34.286388, 36.201359>,  <37.860512, 34.332844, 36.063374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233074, 34.286388, 36.201359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163680, -0.712866, -0.681932,
		0.325110, 0.691617, -0.644957,
		0.931403, -0.116137, 0.344964,
		38.512497, 34.251549, 36.304848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276501, 34.173203, 35.426628>,  <37.860512, 34.332844, 36.063374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276501, 34.173203, 35.426628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509235, 34.056633, 35.730350>,  <38.648876, 33.986691, 35.912582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509235, 34.056633, 35.730350>,  <38.276501, 34.173203, 35.426628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509235, 34.056633, 35.730350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288286, -0.799080, -0.527601,
		0.760499, 0.525873, -0.380919,
		0.581836, -0.291426, 0.759301,
		38.683784, 33.969204, 35.958141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035030, 33.993992, 35.179626>,  <38.276501, 34.173203, 35.426628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035030, 33.993992, 35.179626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938274, 33.779526, 35.503109>,  <38.880222, 33.650845, 35.697201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938274, 33.779526, 35.503109>,  <39.035030, 33.993992, 35.179626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938274, 33.779526, 35.503109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236282, -0.840921, -0.486849,
		0.941095, 0.073320, 0.330098,
		-0.241891, -0.536167, 0.808711,
		38.865707, 33.618675, 35.745724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368679, 33.448853, 35.153069>,  <39.035030, 33.993992, 35.179626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368679, 33.448853, 35.153069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.120068, 33.301014, 35.429359>,  <38.970901, 33.212311, 35.595135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.120068, 33.301014, 35.429359>,  <39.368679, 33.448853, 35.153069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120068, 33.301014, 35.429359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129382, -0.918034, -0.374798,
		0.772636, -0.143579, 0.618401,
		-0.621526, -0.369593, 0.690729,
		38.933609, 33.190136, 35.636578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714184, 32.811161, 35.399109>,  <39.368679, 33.448853, 35.153069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714184, 32.811161, 35.399109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.332256, 32.772331, 35.511459>,  <39.103100, 32.749035, 35.578869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.332256, 32.772331, 35.511459>,  <39.714184, 32.811161, 35.399109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332256, 32.772331, 35.511459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003996, -0.940868, -0.338749,
		0.297153, -0.324568, 0.897973,
		-0.954822, -0.097072, 0.280879,
		39.045811, 32.743210, 35.595722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703949, 32.219795, 35.832600>,  <39.714184, 32.811161, 35.399109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703949, 32.219795, 35.832600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324780, 32.239853, 35.706787>,  <39.097279, 32.251888, 35.631302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324780, 32.239853, 35.706787>,  <39.703949, 32.219795, 35.832600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324780, 32.239853, 35.706787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025871, -0.972141, -0.232964,
		-0.317448, -0.228969, 0.920217,
		-0.947923, 0.050147, -0.314528,
		39.040401, 32.254898, 35.612431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418652, 31.607714, 35.997826>,  <39.703949, 32.219795, 35.832600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418652, 31.607714, 35.997826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147266, 31.736872, 35.733875>,  <38.984436, 31.814365, 35.575504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147266, 31.736872, 35.733875>,  <39.418652, 31.607714, 35.997826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147266, 31.736872, 35.733875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056416, -0.918477, -0.391429,
		-0.732469, -0.228342, 0.641365,
		-0.678459, 0.322893, -0.659874,
		38.943729, 31.833740, 35.535912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801342, 31.291864, 36.046730>,  <39.418652, 31.607714, 35.997826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801342, 31.291864, 36.046730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773026, 31.424726, 35.670506>,  <38.756035, 31.504444, 35.444771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773026, 31.424726, 35.670506>,  <38.801342, 31.291864, 36.046730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773026, 31.424726, 35.670506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014992, -0.942470, -0.333954,
		-0.997379, -0.037742, 0.061737,
		-0.070790, 0.332153, -0.940565,
		38.751789, 31.524372, 35.388336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060024, 31.192711, 36.158112>,  <38.801342, 31.291864, 36.046730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060024, 31.192711, 36.158112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934380, 30.986101, 36.476742>,  <37.858994, 30.862135, 36.667919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934380, 30.986101, 36.476742>,  <38.060024, 31.192711, 36.158112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934380, 30.986101, 36.476742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170554, 0.794694, 0.582557,
		-0.933942, 0.318846, -0.161524,
		-0.314108, -0.516526, 0.796578,
		37.840149, 30.831142, 36.715714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614246, 31.535799, 36.630165>,  <38.060024, 31.192711, 36.158112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614246, 31.535799, 36.630165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.810192, 31.267889, 36.853390>,  <37.927757, 31.107143, 36.987324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.810192, 31.267889, 36.853390>,  <37.614246, 31.535799, 36.630165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810192, 31.267889, 36.853390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130379, 0.689212, 0.712733,
		-0.861997, -0.276380, 0.424942,
		0.489860, -0.669777, 0.558064,
		37.957150, 31.066956, 37.020809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232002, 31.477667, 37.187027>,  <37.614246, 31.535799, 36.630165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232002, 31.477667, 37.187027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589241, 31.341902, 37.305130>,  <37.803585, 31.260443, 37.375992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589241, 31.341902, 37.305130>,  <37.232002, 31.477667, 37.187027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589241, 31.341902, 37.305130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054725, 0.569481, 0.820181,
		-0.446523, -0.748659, 0.490028,
		0.893097, -0.339412, 0.295257,
		37.857170, 31.240078, 37.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177773, 31.622433, 37.840557>,  <37.232002, 31.477667, 37.187027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177773, 31.622433, 37.840557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562454, 31.513937, 37.824802>,  <37.793262, 31.448839, 37.815350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562454, 31.513937, 37.824802>,  <37.177773, 31.622433, 37.840557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562454, 31.513937, 37.824802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149523, 0.398754, 0.904786,
		-0.229707, -0.876028, 0.424041,
		0.961705, -0.271239, -0.039390,
		37.850967, 31.432566, 37.812984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349686, 31.249014, 38.537212>,  <37.177773, 31.622433, 37.840557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349686, 31.249014, 38.537212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685711, 31.400658, 38.381996>,  <37.887325, 31.491644, 38.288868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685711, 31.400658, 38.381996>,  <37.349686, 31.249014, 38.537212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685711, 31.400658, 38.381996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239772, 0.382158, 0.892449,
		0.486627, -0.842752, 0.230137,
		0.840062, 0.379109, -0.388037,
		37.937729, 31.514391, 38.265587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846363, 31.039368, 38.909943>,  <37.349686, 31.249014, 38.537212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846363, 31.039368, 38.909943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006580, 31.371113, 38.754135>,  <38.102711, 31.570160, 38.660652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006580, 31.371113, 38.754135>,  <37.846363, 31.039368, 38.909943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006580, 31.371113, 38.754135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069532, 0.396368, 0.915455,
		0.913638, -0.393759, 0.101094,
		0.400539, 0.829365, -0.389515,
		38.126743, 31.619923, 38.637280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503704, 31.242693, 39.276199>,  <37.846363, 31.039368, 38.909943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503704, 31.242693, 39.276199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376968, 31.572132, 39.088028>,  <38.300926, 31.769794, 38.975124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376968, 31.572132, 39.088028>,  <38.503704, 31.242693, 39.276199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376968, 31.572132, 39.088028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383987, 0.564901, 0.730370,
		0.867277, 0.050767, -0.495230,
		-0.316835, 0.823596, -0.470432,
		38.281918, 31.819210, 38.946899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059887, 31.770353, 39.249336>,  <38.503704, 31.242693, 39.276199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059887, 31.770353, 39.249336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725330, 31.982666, 39.194607>,  <38.524597, 32.110054, 39.161770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725330, 31.982666, 39.194607>,  <39.059887, 31.770353, 39.249336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725330, 31.982666, 39.194607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353320, 0.712899, 0.605756,
		0.419065, 0.458307, -0.783798,
		-0.836391, 0.530783, -0.136822,
		38.474415, 32.141899, 39.153561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387970, 32.393261, 39.303104>,  <39.059887, 31.770353, 39.249336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387970, 32.393261, 39.303104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.994404, 32.462219, 39.321796>,  <38.758263, 32.503593, 39.333012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.994404, 32.462219, 39.321796>,  <39.387970, 32.393261, 39.303104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994404, 32.462219, 39.321796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163757, 0.766131, 0.621471,
		0.071339, 0.619130, -0.782042,
		-0.983918, 0.172400, 0.046732,
		38.699230, 32.513939, 39.335815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321239, 33.090965, 39.330189>,  <39.387970, 32.393261, 39.303104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321239, 33.090965, 39.330189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984985, 32.950417, 39.495049>,  <38.783234, 32.866089, 39.593964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984985, 32.950417, 39.495049>,  <39.321239, 33.090965, 39.330189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984985, 32.950417, 39.495049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004576, 0.756355, 0.654145,
		-0.541576, 0.551786, -0.634214,
		-0.840639, -0.351367, 0.412149,
		38.732792, 32.845005, 39.618694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943760, 33.658920, 39.334755>,  <39.321239, 33.090965, 39.330189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943760, 33.658920, 39.334755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.763832, 33.411976, 39.592911>,  <38.655876, 33.263809, 39.747807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.763832, 33.411976, 39.592911>,  <38.943760, 33.658920, 39.334755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763832, 33.411976, 39.592911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022245, 0.730148, 0.682927,
		-0.892843, 0.292836, -0.342167,
		-0.449818, -0.617358, 0.645393,
		38.628887, 33.226768, 39.786530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317249, 34.009418, 39.591820>,  <38.943760, 33.658920, 39.334755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317249, 34.009418, 39.591820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401443, 33.739681, 39.874935>,  <38.451962, 33.577839, 40.044804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401443, 33.739681, 39.874935>,  <38.317249, 34.009418, 39.591820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401443, 33.739681, 39.874935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104430, 0.735372, 0.669569,
		-0.972003, -0.067020, 0.225206,
		0.210485, -0.674341, 0.707785,
		38.464588, 33.537380, 40.087269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913944, 34.228050, 40.119949>,  <38.317249, 34.009418, 39.591820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913944, 34.228050, 40.119949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182343, 33.997913, 40.307030>,  <38.343384, 33.859833, 40.419277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182343, 33.997913, 40.307030>,  <37.913944, 34.228050, 40.119949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182343, 33.997913, 40.307030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091422, 0.690173, 0.717847,
		-0.735801, -0.438916, 0.515703,
		0.670999, -0.575339, 0.467703,
		38.383640, 33.825314, 40.447342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713100, 34.302723, 40.844170>,  <37.913944, 34.228050, 40.119949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713100, 34.302723, 40.844170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095798, 34.192448, 40.806980>,  <38.325417, 34.126282, 40.784668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095798, 34.192448, 40.806980>,  <37.713100, 34.302723, 40.844170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095798, 34.192448, 40.806980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251615, 0.623596, 0.740148,
		-0.146071, -0.731523, 0.665986,
		0.956741, -0.275686, -0.092973,
		38.382820, 34.109741, 40.779087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085224, 34.307316, 40.373238>,  <37.713100, 34.302723, 40.844170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085224, 34.307316, 40.373238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849800, 34.617027, 40.466267>,  <36.708546, 34.802853, 40.522083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849800, 34.617027, 40.466267>,  <37.085224, 34.307316, 40.373238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849800, 34.617027, 40.466267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806448, -0.582536, -0.101456,
		0.056927, -0.247272, 0.967272,
		-0.588558, 0.774279, 0.232574,
		36.673233, 34.849312, 40.536037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675838, 34.196346, 40.998192>,  <37.085224, 34.307316, 40.373238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675838, 34.196346, 40.998192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497944, 34.424854, 40.722263>,  <36.391209, 34.561958, 40.556705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497944, 34.424854, 40.722263>,  <36.675838, 34.196346, 40.998192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497944, 34.424854, 40.722263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738795, -0.669396, -0.078049,
		-0.506353, 0.474927, 0.719757,
		-0.444735, 0.571274, -0.689824,
		36.364525, 34.596237, 40.515316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998074, 34.197128, 41.097134>,  <36.675838, 34.196346, 40.998192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998074, 34.197128, 41.097134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015240, 34.293774, 40.709362>,  <36.025539, 34.351761, 40.476700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015240, 34.293774, 40.709362>,  <35.998074, 34.197128, 41.097134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015240, 34.293774, 40.709362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583489, -0.781579, -0.220621,
		-0.810986, 0.575116, 0.107438,
		0.042911, 0.241609, -0.969424,
		36.028114, 34.366257, 40.418533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298149, 34.258831, 40.872578>,  <35.998074, 34.197128, 41.097134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298149, 34.258831, 40.872578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529362, 34.176102, 40.556831>,  <35.668091, 34.126465, 40.367382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529362, 34.176102, 40.556831>,  <35.298149, 34.258831, 40.872578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529362, 34.176102, 40.556831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587568, -0.776756, -0.226745,
		-0.566251, 0.594874, -0.570512,
		0.578034, -0.206820, -0.789368,
		35.702770, 34.114056, 40.320023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890308, 34.178593, 40.262608>,  <35.298149, 34.258831, 40.872578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890308, 34.178593, 40.262608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242512, 34.016590, 40.164078>,  <35.453835, 33.919388, 40.104961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242512, 34.016590, 40.164078>,  <34.890308, 34.178593, 40.262608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242512, 34.016590, 40.164078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473692, -0.732158, -0.489450,
		0.017881, 0.547647, -0.836519,
		0.880509, -0.405004, -0.246324,
		35.506664, 33.895088, 40.090179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795628, 34.042728, 39.588005>,  <34.890308, 34.178593, 40.262608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795628, 34.042728, 39.588005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105312, 33.804462, 39.673588>,  <35.291122, 33.661503, 39.724937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105312, 33.804462, 39.673588>,  <34.795628, 34.042728, 39.588005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105312, 33.804462, 39.673588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389539, -0.714879, -0.580696,
		0.498855, 0.366237, -0.785503,
		0.774211, -0.595667, 0.213957,
		35.337574, 33.625763, 39.737774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902287, 33.656536, 38.971081>,  <34.795628, 34.042728, 39.588005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902287, 33.656536, 38.971081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102383, 33.431530, 39.234394>,  <35.222439, 33.296528, 39.392384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102383, 33.431530, 39.234394>,  <34.902287, 33.656536, 38.971081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102383, 33.431530, 39.234394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360338, -0.826526, -0.432448,
		0.787347, -0.020877, -0.616156,
		0.500241, -0.562511, 0.658286,
		35.252457, 33.262775, 39.431881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041779, 33.095596, 38.607388>,  <34.902287, 33.656536, 38.971081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041779, 33.095596, 38.607388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054478, 32.999516, 38.995468>,  <35.062099, 32.941868, 39.228317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054478, 32.999516, 38.995468>,  <35.041779, 33.095596, 38.607388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054478, 32.999516, 38.995468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358694, -0.908768, -0.213257,
		0.932915, -0.341235, -0.115015,
		0.031751, -0.240205, 0.970203,
		35.064003, 32.927452, 39.286530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302303, 32.409565, 38.546593>,  <35.041779, 33.095596, 38.607388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302303, 32.409565, 38.546593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104279, 32.436573, 38.893085>,  <34.985462, 32.452778, 39.100979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104279, 32.436573, 38.893085>,  <35.302303, 32.409565, 38.546593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104279, 32.436573, 38.893085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586956, -0.761074, -0.276131,
		0.640620, -0.645141, 0.416412,
		-0.495064, 0.067521, 0.866229,
		34.955761, 32.456829, 39.152954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100494, 31.715412, 38.661400>,  <35.302303, 32.409565, 38.546593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100494, 31.715412, 38.661400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875908, 31.958202, 38.886375>,  <34.741158, 32.103878, 39.021362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875908, 31.958202, 38.886375>,  <35.100494, 31.715412, 38.661400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875908, 31.958202, 38.886375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791005, -0.593299, -0.149355,
		0.243040, -0.528751, 0.813237,
		-0.561464, 0.606976, 0.562440,
		34.707470, 32.140297, 39.055107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641445, 31.231035, 38.984905>,  <35.100494, 31.715412, 38.661400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641445, 31.231035, 38.984905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463993, 31.589012, 39.003967>,  <34.357521, 31.803799, 39.015404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463993, 31.589012, 39.003967>,  <34.641445, 31.231035, 38.984905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463993, 31.589012, 39.003967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887750, -0.431535, -0.160241,
		-0.122840, -0.113396, 0.985927,
		-0.443632, 0.894941, 0.047657,
		34.330902, 31.857494, 39.018265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007801, 31.245054, 39.449787>,  <34.641445, 31.231035, 38.984905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007801, 31.245054, 39.449787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967251, 31.540972, 39.183727>,  <33.942921, 31.718523, 39.024090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967251, 31.540972, 39.183727>,  <34.007801, 31.245054, 39.449787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967251, 31.540972, 39.183727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904791, -0.346537, -0.247519,
		-0.413613, 0.576730, 0.704491,
		-0.101380, 0.739794, -0.665152,
		33.936836, 31.762911, 38.984180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286816, 31.458920, 39.612778>,  <34.007801, 31.245054, 39.449787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286816, 31.458920, 39.612778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397350, 31.626846, 39.266972>,  <33.463669, 31.727602, 39.059486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397350, 31.626846, 39.266972>,  <33.286816, 31.458920, 39.612778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397350, 31.626846, 39.266972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759051, -0.456406, -0.464257,
		-0.589475, 0.784505, 0.192541,
		0.276335, 0.419816, -0.864519,
		33.480251, 31.752790, 39.007614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695538, 31.679424, 39.283524>,  <33.286816, 31.458920, 39.612778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695538, 31.679424, 39.283524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.931786, 31.629629, 38.964607>,  <33.073536, 31.599752, 38.773258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.931786, 31.629629, 38.964607>,  <32.695538, 31.679424, 39.283524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931786, 31.629629, 38.964607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750059, -0.449097, -0.485514,
		-0.297620, 0.884769, -0.358618,
		0.590621, -0.124486, -0.797289,
		33.108971, 31.592283, 38.725422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302284, 31.841978, 38.737164>,  <32.695538, 31.679424, 39.283524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302284, 31.841978, 38.737164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590115, 31.653650, 38.532990>,  <32.762814, 31.540653, 38.410484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590115, 31.653650, 38.532990>,  <32.302284, 31.841978, 38.737164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590115, 31.653650, 38.532990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676086, -0.307222, -0.669718,
		0.158501, 0.827007, -0.539385,
		0.719573, -0.470822, -0.510433,
		32.805988, 31.512403, 38.379860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943068, 31.701176, 38.195557>,  <32.302284, 31.841978, 38.737164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943068, 31.701176, 38.195557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272522, 31.480827, 38.141644>,  <32.470196, 31.348619, 38.109295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272522, 31.480827, 38.141644>,  <31.943068, 31.701176, 38.195557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272522, 31.480827, 38.141644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400917, -0.397483, -0.825393,
		0.401110, 0.733860, -0.548234,
		0.823636, -0.550870, -0.134782,
		32.519611, 31.315567, 38.101208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326176, 31.887495, 37.552711>,  <31.943068, 31.701176, 38.195557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326176, 31.887495, 37.552711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411751, 31.508333, 37.647121>,  <32.463097, 31.280836, 37.703766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411751, 31.508333, 37.647121>,  <32.326176, 31.887495, 37.552711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411751, 31.508333, 37.647121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503080, -0.314026, -0.805170,
		0.837341, 0.053520, -0.544055,
		0.213940, -0.947905, 0.236022,
		32.475933, 31.223961, 37.717930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516239, 31.598928, 36.952469>,  <32.326176, 31.887495, 37.552711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516239, 31.598928, 36.952469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437199, 31.283495, 37.185394>,  <32.389774, 31.094234, 37.325150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437199, 31.283495, 37.185394>,  <32.516239, 31.598928, 36.952469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437199, 31.283495, 37.185394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612902, -0.364211, -0.701214,
		0.765051, -0.495463, -0.411355,
		-0.197606, -0.788585, 0.582311,
		32.377918, 31.046919, 37.360088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592617, 31.122753, 36.436470>,  <32.516239, 31.598928, 36.952469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592617, 31.122753, 36.436470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399063, 30.931625, 36.729740>,  <32.282932, 30.816948, 36.905701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399063, 30.931625, 36.729740>,  <32.592617, 31.122753, 36.436470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399063, 30.931625, 36.729740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521864, -0.514978, -0.680041,
		0.702505, -0.711679, -0.000166,
		-0.483885, -0.477819, 0.733173,
		32.253899, 30.788280, 36.949692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632202, 30.402931, 36.315475>,  <32.592617, 31.122753, 36.436470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632202, 30.402931, 36.315475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321606, 30.455292, 36.562031>,  <32.135250, 30.486708, 36.709965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321606, 30.455292, 36.562031>,  <32.632202, 30.402931, 36.315475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321606, 30.455292, 36.562031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609075, -0.406670, -0.680916,
		0.161534, -0.904149, 0.395502,
		-0.776488, 0.130899, 0.616385,
		32.088657, 30.494562, 36.746948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151443, 29.812605, 36.197563>,  <32.632202, 30.402931, 36.315475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151443, 29.812605, 36.197563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901989, 30.079027, 36.361244>,  <31.752316, 30.238880, 36.459454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901989, 30.079027, 36.361244>,  <32.151443, 29.812605, 36.197563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901989, 30.079027, 36.361244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765084, -0.412655, -0.494330,
		-0.160389, -0.621360, 0.766934,
		-0.623636, 0.666054, 0.409207,
		31.714899, 30.278843, 36.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563343, 29.478651, 36.619514>,  <32.151443, 29.812605, 36.197563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563343, 29.478651, 36.619514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419861, 29.835060, 36.508224>,  <31.333771, 30.048906, 36.441452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419861, 29.835060, 36.508224>,  <31.563343, 29.478651, 36.619514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419861, 29.835060, 36.508224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749361, -0.452597, -0.483337,
		-0.556588, 0.035115, 0.830047,
		-0.358705, 0.891023, -0.278224,
		31.312250, 30.102367, 36.424759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848894, 29.395847, 36.671616>,  <31.563343, 29.478651, 36.619514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848894, 29.395847, 36.671616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.875338, 29.728552, 36.451145>,  <30.891203, 29.928175, 36.318863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.875338, 29.728552, 36.451145>,  <30.848894, 29.395847, 36.671616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875338, 29.728552, 36.451145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783811, -0.298543, -0.544529,
		-0.617470, 0.468019, 0.632209,
		0.066108, 0.831764, -0.551180,
		30.895170, 29.978081, 36.285789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204124, 29.504498, 36.457840>,  <30.848894, 29.395847, 36.671616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204124, 29.504498, 36.457840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406076, 29.718973, 36.187256>,  <30.527248, 29.847658, 36.024906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406076, 29.718973, 36.187256>,  <30.204124, 29.504498, 36.457840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406076, 29.718973, 36.187256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705071, -0.195925, -0.681534,
		-0.497965, 0.821046, 0.279132,
		0.504882, 0.536188, -0.676459,
		30.557541, 29.879829, 35.984318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711365, 29.776844, 35.911320>,  <30.204124, 29.504498, 36.457840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711365, 29.776844, 35.911320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059383, 29.810650, 35.717052>,  <30.268194, 29.830933, 35.600491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059383, 29.810650, 35.717052>,  <29.711365, 29.776844, 35.911320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059383, 29.810650, 35.717052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464921, -0.186894, -0.865401,
		-0.163908, 0.978738, -0.123314,
		0.870048, 0.084515, -0.485669,
		30.320398, 29.836004, 35.571350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603840, 30.253696, 35.352493>,  <29.711365, 29.776844, 35.911320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603840, 30.253696, 35.352493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.927448, 30.052361, 35.231079>,  <30.121613, 29.931559, 35.158230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.927448, 30.052361, 35.231079>,  <29.603840, 30.253696, 35.352493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927448, 30.052361, 35.231079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482404, -0.273552, -0.832139,
		0.335815, 0.819645, -0.464122,
		0.809021, -0.503340, -0.303538,
		30.170155, 29.901360, 35.140018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612234, 30.464872, 34.736115>,  <29.603840, 30.253696, 35.352493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612234, 30.464872, 34.736115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.826817, 30.128561, 34.765263>,  <29.955566, 29.926775, 34.782749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.826817, 30.128561, 34.765263>,  <29.612234, 30.464872, 34.736115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826817, 30.128561, 34.765263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321376, -0.283364, -0.903561,
		0.780341, 0.461303, -0.422218,
		0.536456, -0.840776, 0.072868,
		29.987753, 29.876328, 34.787125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892246, 30.408920, 34.050888>,  <29.612234, 30.464872, 34.736115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892246, 30.408920, 34.050888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.918251, 30.039206, 34.201336>,  <29.933853, 29.817377, 34.291603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.918251, 30.039206, 34.201336>,  <29.892246, 30.408920, 34.050888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918251, 30.039206, 34.201336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256425, -0.379734, -0.888847,
		0.964375, -0.038662, -0.261697,
		0.065011, -0.924288, 0.376120,
		29.937754, 29.761919, 34.314171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349646, 30.865856, 33.709469>,  <29.892246, 30.408920, 34.050888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349646, 30.865856, 33.709469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096056, 31.145350, 33.576893>,  <29.943903, 31.313046, 33.497349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096056, 31.145350, 33.576893>,  <30.349646, 30.865856, 33.709469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096056, 31.145350, 33.576893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179445, 0.549784, 0.815804,
		0.752248, 0.457723, -0.473932,
		-0.633973, 0.698732, -0.331438,
		29.905865, 31.354969, 33.477463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625355, 31.524725, 33.712227>,  <30.349646, 30.865856, 33.709469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625355, 31.524725, 33.712227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.243511, 31.641201, 33.737297>,  <30.014404, 31.711086, 33.752338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.243511, 31.641201, 33.737297>,  <30.625355, 31.524725, 33.712227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243511, 31.641201, 33.737297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243200, 0.640482, 0.728448,
		0.171973, 0.710626, -0.682228,
		-0.954609, 0.291191, 0.062679,
		29.957129, 31.728558, 33.756100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642790, 32.185028, 33.979797>,  <30.625355, 31.524725, 33.712227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642790, 32.185028, 33.979797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.244055, 32.155251, 33.990948>,  <30.004814, 32.137383, 33.997639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.244055, 32.155251, 33.990948>,  <30.642790, 32.185028, 33.979797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244055, 32.155251, 33.990948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026123, 0.637992, 0.769600,
		-0.075080, 0.766436, -0.637918,
		-0.996835, -0.074446, 0.027879,
		29.945004, 32.132915, 33.999310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295473, 32.841167, 33.886032>,  <30.642790, 32.185028, 33.979797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295473, 32.841167, 33.886032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.055395, 32.605698, 34.102634>,  <29.911348, 32.464417, 34.232594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.055395, 32.605698, 34.102634>,  <30.295473, 32.841167, 33.886032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055395, 32.605698, 34.102634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119767, 0.603228, 0.788525,
		-0.790837, 0.538122, -0.291550,
		-0.600194, -0.588677, 0.541504,
		29.875338, 32.429096, 34.265087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882797, 33.308567, 34.201805>,  <30.295473, 32.841167, 33.886032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882797, 33.308567, 34.201805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.875044, 32.971657, 34.417282>,  <29.870392, 32.769508, 34.546570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.875044, 32.971657, 34.417282>,  <29.882797, 33.308567, 34.201805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875044, 32.971657, 34.417282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151204, 0.530130, 0.834326,
		-0.988312, 0.097626, 0.117080,
		-0.019384, -0.842278, 0.538695,
		29.869228, 32.718975, 34.578892>
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
