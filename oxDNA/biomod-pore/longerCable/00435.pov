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
	<24.217768, 34.567020, 34.743465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302851, 34.858471, 35.003883>,  <24.353901, 35.033340, 35.160133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302851, 34.858471, 35.003883>,  <24.217768, 34.567020, 34.743465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302851, 34.858471, 35.003883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350079, -0.565234, 0.746964,
		0.912250, -0.386801, 0.134848,
		0.212706, 0.728625, 0.651046,
		24.366663, 35.077057, 35.199196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892523, 34.220097, 34.918793>,  <24.217768, 34.567020, 34.743465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892523, 34.220097, 34.918793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239128, 34.417229, 34.887123>,  <25.447092, 34.535507, 34.868122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239128, 34.417229, 34.887123>,  <24.892523, 34.220097, 34.918793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239128, 34.417229, 34.887123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463824, 0.853609, 0.237106,
		0.184440, -0.168731, 0.968252,
		0.866515, 0.492830, -0.079178,
		25.499083, 34.565079, 34.863369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127914, 34.007111, 35.189766>,  <24.892523, 34.220097, 34.918793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127914, 34.007111, 35.189766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465239, 33.792297, 35.181534>,  <24.667633, 33.663410, 35.176594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465239, 33.792297, 35.181534>,  <24.127914, 34.007111, 35.189766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465239, 33.792297, 35.181534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084223, 0.094235, 0.991981,
		-0.530785, -0.838282, 0.124699,
		0.843311, -0.537031, -0.020584,
		24.718231, 33.631187, 35.175358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.081717, 33.477959, 35.713284>,  <24.127914, 34.007111, 35.189766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.081717, 33.477959, 35.713284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470566, 33.529400, 35.634857>,  <24.703875, 33.560265, 35.587803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470566, 33.529400, 35.634857>,  <24.081717, 33.477959, 35.713284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470566, 33.529400, 35.634857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193318, 0.033616, 0.980560,
		0.132696, -0.991126, 0.007817,
		0.972122, 0.128605, -0.196063,
		24.762201, 33.567982, 35.576038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397232, 33.050587, 36.156406>,  <24.081717, 33.477959, 35.713284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397232, 33.050587, 36.156406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681154, 33.320038, 36.074032>,  <24.851507, 33.481709, 36.024609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681154, 33.320038, 36.074032>,  <24.397232, 33.050587, 36.156406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681154, 33.320038, 36.074032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251693, 0.030508, 0.967326,
		0.657897, -0.738444, -0.147892,
		0.709804, 0.673625, -0.205932,
		24.894096, 33.522125, 36.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015879, 32.842594, 36.381359>,  <24.397232, 33.050587, 36.156406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015879, 32.842594, 36.381359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030804, 33.242188, 36.371265>,  <25.039759, 33.481945, 36.365211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030804, 33.242188, 36.371265>,  <25.015879, 32.842594, 36.381359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030804, 33.242188, 36.371265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422160, 0.007126, 0.906493,
		0.905753, -0.044474, -0.421466,
		0.037312, 0.998985, -0.025230,
		25.041998, 33.541882, 36.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772514, 33.082676, 36.618557>,  <25.015879, 32.842594, 36.381359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772514, 33.082676, 36.618557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507858, 33.378654, 36.667065>,  <25.349064, 33.556244, 36.696167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507858, 33.378654, 36.667065>,  <25.772514, 33.082676, 36.618557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507858, 33.378654, 36.667065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387363, 0.198836, 0.900230,
		0.642012, 0.642605, -0.418187,
		-0.661643, 0.739948, 0.121266,
		25.309366, 33.600639, 36.703445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168221, 33.753860, 36.735077>,  <25.772514, 33.082676, 36.618557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168221, 33.753860, 36.735077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798933, 33.751030, 36.888760>,  <25.577360, 33.749332, 36.980968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798933, 33.751030, 36.888760>,  <26.168221, 33.753860, 36.735077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798933, 33.751030, 36.888760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384242, -0.029478, 0.922762,
		0.004793, 0.999540, 0.029935,
		-0.923220, -0.007080, 0.384206,
		25.521967, 33.748905, 37.004021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251801, 34.233009, 37.263134>,  <26.168221, 33.753860, 36.735077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251801, 34.233009, 37.263134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914503, 34.029259, 37.331810>,  <25.712126, 33.907009, 37.373016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914503, 34.029259, 37.331810>,  <26.251801, 34.233009, 37.263134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914503, 34.029259, 37.331810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299519, -0.180032, 0.936951,
		-0.446353, 0.841500, 0.304379,
		-0.843242, -0.509379, 0.171687,
		25.661530, 33.876446, 37.383316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823645, 34.687649, 37.738697>,  <26.251801, 34.233009, 37.263134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823645, 34.687649, 37.738697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692497, 34.316544, 37.809975>,  <25.613808, 34.093880, 37.852741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692497, 34.316544, 37.809975>,  <25.823645, 34.687649, 37.738697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692497, 34.316544, 37.809975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249147, 0.097032, 0.963593,
		-0.911278, 0.360330, 0.199336,
		-0.327870, -0.927764, 0.178198,
		25.594137, 34.038216, 37.863434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366312, 34.719940, 38.312492>,  <25.823645, 34.687649, 37.738697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366312, 34.719940, 38.312492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422657, 34.323959, 38.317574>,  <25.456465, 34.086372, 38.320621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422657, 34.323959, 38.317574>,  <25.366312, 34.719940, 38.312492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422657, 34.323959, 38.317574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255644, 0.048764, 0.965540,
		-0.956454, -0.132762, 0.259943,
		0.140863, -0.989948, 0.012700,
		25.464916, 34.026974, 38.321384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080227, 34.553852, 38.893661>,  <25.366312, 34.719940, 38.312492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080227, 34.553852, 38.893661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340036, 34.269051, 38.786957>,  <25.495922, 34.098167, 38.722935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340036, 34.269051, 38.786957>,  <25.080227, 34.553852, 38.893661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340036, 34.269051, 38.786957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232434, -0.148113, 0.961268,
		-0.723941, -0.686373, 0.069292,
		0.649526, -0.712007, -0.266761,
		25.534895, 34.055447, 38.706928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013859, 33.926704, 39.374584>,  <25.080227, 34.553852, 38.893661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013859, 33.926704, 39.374584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375412, 34.009666, 39.224930>,  <25.592344, 34.059444, 39.135139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375412, 34.009666, 39.224930>,  <25.013859, 33.926704, 39.374584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375412, 34.009666, 39.224930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381243, 0.006130, 0.924455,
		0.194034, -0.978235, -0.073532,
		0.903883, 0.207410, -0.374134,
		25.646578, 34.071888, 39.112690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766485, 33.793892, 39.562332>,  <25.013859, 33.926704, 39.374584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766485, 33.793892, 39.562332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820860, 33.409477, 39.466061>,  <25.853485, 33.178829, 39.408298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820860, 33.409477, 39.466061>,  <25.766485, 33.793892, 39.562332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820860, 33.409477, 39.466061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107114, 0.227251, -0.967927,
		0.984910, 0.157357, -0.072049,
		0.135937, -0.961039, -0.240677,
		25.861641, 33.121166, 39.393856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405409, 33.683411, 39.066177>,  <25.766485, 33.793892, 39.562332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405409, 33.683411, 39.066177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064260, 33.474689, 39.058903>,  <25.859571, 33.349457, 39.054539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064260, 33.474689, 39.058903>,  <26.405409, 33.683411, 39.066177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064260, 33.474689, 39.058903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165467, 0.303161, -0.938464,
		0.495213, -0.797377, -0.344899,
		-0.852869, -0.521808, -0.018190,
		25.808399, 33.318146, 39.053448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396942, 33.249897, 38.515152>,  <26.405409, 33.683411, 39.066177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396942, 33.249897, 38.515152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024448, 33.351608, 38.619572>,  <25.800953, 33.412636, 38.682224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024448, 33.351608, 38.619572>,  <26.396942, 33.249897, 38.515152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024448, 33.351608, 38.619572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222189, 0.171615, -0.959782,
		-0.288852, -0.951783, -0.103316,
		-0.931234, 0.254280, 0.261047,
		25.745079, 33.427891, 38.697887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895153, 32.873985, 38.114296>,  <26.396942, 33.249897, 38.515152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895153, 32.873985, 38.114296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707979, 33.211491, 38.219437>,  <25.595675, 33.413994, 38.282520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707979, 33.211491, 38.219437>,  <25.895153, 32.873985, 38.114296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707979, 33.211491, 38.219437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262613, 0.151233, -0.952976,
		-0.843842, -0.514961, 0.150817,
		-0.467937, 0.843768, 0.262852,
		25.567598, 33.464622, 38.298294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170980, 32.816326, 37.845074>,  <25.895153, 32.873985, 38.114296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170980, 32.816326, 37.845074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290216, 33.197052, 37.873905>,  <25.361759, 33.425488, 37.891205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290216, 33.197052, 37.873905>,  <25.170980, 32.816326, 37.845074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290216, 33.197052, 37.873905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324378, 0.172027, -0.930153,
		-0.897730, 0.253891, 0.360027,
		0.298092, 0.951812, 0.072077,
		25.379644, 33.482597, 37.895527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605274, 33.279747, 37.848274>,  <25.170980, 32.816326, 37.845074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605274, 33.279747, 37.848274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930685, 33.446819, 37.686424>,  <25.125931, 33.547062, 37.589314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930685, 33.446819, 37.686424>,  <24.605274, 33.279747, 37.848274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930685, 33.446819, 37.686424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554858, 0.349202, -0.755110,
		-0.174097, 0.838811, 0.515836,
		0.813525, 0.417678, -0.404626,
		25.174742, 33.572124, 37.565037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.340572, 33.892586, 37.553616>,  <24.605274, 33.279747, 37.848274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.340572, 33.892586, 37.553616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697502, 33.811119, 37.392479>,  <24.911659, 33.762238, 37.295799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697502, 33.811119, 37.392479>,  <24.340572, 33.892586, 37.553616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.697502, 33.811119, 37.392479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333373, 0.304338, -0.892323,
		0.304338, 0.930536, 0.203670,
		0.892323, -0.203670, -0.402837,
		24.965199, 33.750019, 37.271629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.576664, 34.516171, 37.159962>,  <24.340572, 33.892586, 37.553616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.576664, 34.516171, 37.159962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738485, 34.182808, 37.009350>,  <24.835577, 33.982792, 36.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738485, 34.182808, 37.009350>,  <24.576664, 34.516171, 37.159962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738485, 34.182808, 37.009350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221605, 0.310117, -0.924510,
		0.887259, 0.457452, -0.059228,
		0.404552, -0.833406, -0.376528,
		24.859850, 33.932785, 36.896393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887877, 34.650616, 36.525536>,  <24.576664, 34.516171, 37.159962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887877, 34.650616, 36.525536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813156, 34.259632, 36.486198>,  <24.768324, 34.025040, 36.462597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813156, 34.259632, 36.486198>,  <24.887877, 34.650616, 36.525536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813156, 34.259632, 36.486198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292295, 0.150872, -0.944352,
		0.937907, -0.147660, -0.313890,
		-0.186801, -0.977463, -0.098344,
		24.757116, 33.966393, 36.456696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593460, 34.556862, 36.821987>,  <24.887877, 34.650616, 36.525536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593460, 34.556862, 36.821987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588963, 34.165401, 36.739906>,  <25.586264, 33.930523, 36.690659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588963, 34.165401, 36.739906>,  <25.593460, 34.556862, 36.821987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588963, 34.165401, 36.739906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138907, 0.204754, -0.968907,
		0.990242, 0.017611, -0.138244,
		-0.011242, -0.978655, -0.205203,
		25.585590, 33.871803, 36.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589479, 34.590046, 36.154438>,  <25.593460, 34.556862, 36.821987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589479, 34.590046, 36.154438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522310, 34.201172, 36.219738>,  <25.482008, 33.967846, 36.258919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522310, 34.201172, 36.219738>,  <25.589479, 34.590046, 36.154438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522310, 34.201172, 36.219738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361229, -0.093395, -0.927788,
		0.917232, -0.214768, -0.335499,
		-0.167925, -0.972189, 0.163245,
		25.471933, 33.909515, 36.268711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827274, 34.277939, 35.620716>,  <25.589479, 34.590046, 36.154438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827274, 34.277939, 35.620716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546362, 34.024193, 35.749950>,  <25.377815, 33.871944, 35.827492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546362, 34.024193, 35.749950>,  <25.827274, 34.277939, 35.620716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546362, 34.024193, 35.749950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153603, -0.308122, -0.938865,
		0.695132, -0.708973, 0.118947,
		-0.702280, -0.634365, 0.323086,
		25.335678, 33.833885, 35.846878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003611, 33.719574, 35.300323>,  <25.827274, 34.277939, 35.620716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003611, 33.719574, 35.300323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613844, 33.694836, 35.386753>,  <25.379984, 33.679993, 35.438610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613844, 33.694836, 35.386753>,  <26.003611, 33.719574, 35.300323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613844, 33.694836, 35.386753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193897, -0.254832, -0.947346,
		0.113653, -0.965005, 0.236321,
		-0.974416, -0.061847, 0.216074,
		25.321520, 33.676281, 35.451576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874462, 33.079823, 35.051575>,  <26.003611, 33.719574, 35.300323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874462, 33.079823, 35.051575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521000, 33.263042, 35.090225>,  <25.308922, 33.372974, 35.113415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521000, 33.263042, 35.090225>,  <25.874462, 33.079823, 35.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521000, 33.263042, 35.090225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215903, -0.215621, -0.952310,
		-0.415375, -0.862377, 0.289430,
		-0.883657, 0.458054, 0.096626,
		25.255903, 33.400459, 35.119213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349674, 32.632263, 35.016045>,  <25.874462, 33.079823, 35.051575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349674, 32.632263, 35.016045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255526, 32.992771, 34.870548>,  <25.199038, 33.209076, 34.783249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255526, 32.992771, 34.870548>,  <25.349674, 32.632263, 35.016045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255526, 32.992771, 34.870548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108639, -0.396308, -0.911667,
		-0.965815, -0.175062, 0.191192,
		-0.235369, 0.901273, -0.363742,
		25.184916, 33.263153, 34.761425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820662, 32.459602, 34.631851>,  <25.349674, 32.632263, 35.016045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820662, 32.459602, 34.631851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990181, 32.795589, 34.496288>,  <25.091892, 32.997181, 34.414951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990181, 32.795589, 34.496288>,  <24.820662, 32.459602, 34.631851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990181, 32.795589, 34.496288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068599, -0.402857, -0.912688,
		-0.903155, 0.363548, -0.228351,
		0.423799, 0.839964, -0.338903,
		25.117321, 33.047577, 34.394619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446024, 32.617073, 34.007015>,  <24.820662, 32.459602, 34.631851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446024, 32.617073, 34.007015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794035, 32.809273, 33.962887>,  <25.002842, 32.924591, 33.936409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794035, 32.809273, 33.962887>,  <24.446024, 32.617073, 34.007015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794035, 32.809273, 33.962887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065521, -0.334481, -0.940122,
		-0.488627, 0.810705, -0.322491,
		0.870029, 0.480499, -0.110319,
		25.055044, 32.953423, 33.929790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523834, 32.874691, 33.347656>,  <24.446024, 32.617073, 34.007015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523834, 32.874691, 33.347656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901043, 32.840057, 33.476166>,  <25.127367, 32.819279, 33.553272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901043, 32.840057, 33.476166>,  <24.523834, 32.874691, 33.347656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901043, 32.840057, 33.476166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273811, -0.346666, -0.897135,
		0.189050, 0.933984, -0.303206,
		0.943020, -0.086583, 0.321272,
		25.183949, 32.814083, 33.572548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139994, 33.325703, 32.994453>,  <24.523834, 32.874691, 33.347656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139994, 33.325703, 32.994453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247128, 32.965012, 33.130188>,  <25.311409, 32.748596, 33.211628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247128, 32.965012, 33.130188>,  <25.139994, 33.325703, 32.994453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247128, 32.965012, 33.130188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004066, -0.353263, -0.935515,
		0.963456, 0.249185, -0.098283,
		0.267837, -0.901727, 0.339340,
		25.327478, 32.694492, 33.231991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752804, 33.152565, 32.635872>,  <25.139994, 33.325703, 32.994453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752804, 33.152565, 32.635872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578045, 32.812069, 32.752155>,  <25.473190, 32.607773, 32.821926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578045, 32.812069, 32.752155>,  <25.752804, 33.152565, 32.635872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578045, 32.812069, 32.752155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188802, -0.402768, -0.895618,
		0.879474, -0.336407, 0.336684,
		-0.436898, -0.851239, 0.290709,
		25.446976, 32.556698, 32.839367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317495, 32.577766, 32.549545>,  <25.752804, 33.152565, 32.635872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317495, 32.577766, 32.549545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945850, 32.430084, 32.541153>,  <25.722864, 32.341476, 32.536118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945850, 32.430084, 32.541153>,  <26.317495, 32.577766, 32.549545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945850, 32.430084, 32.541153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186365, -0.418472, -0.888903,
		0.319406, -0.829801, 0.457613,
		-0.929111, -0.369204, -0.020983,
		25.667116, 32.319324, 32.534859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351469, 31.841379, 32.788406>,  <26.317495, 32.577766, 32.549545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351469, 31.841379, 32.788406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974718, 31.724703, 32.855080>,  <25.748667, 31.654697, 32.895084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974718, 31.724703, 32.855080>,  <26.351469, 31.841379, 32.788406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974718, 31.724703, 32.855080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180430, 0.020668, -0.983371,
		0.283393, -0.956290, -0.072096,
		-0.941878, -0.291689, 0.166686,
		25.692154, 31.637196, 32.905087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150627, 31.610523, 32.145409>,  <26.351469, 31.841379, 32.788406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150627, 31.610523, 32.145409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809216, 31.583746, 32.352100>,  <25.604368, 31.567680, 32.476116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809216, 31.583746, 32.352100>,  <26.150627, 31.610523, 32.145409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809216, 31.583746, 32.352100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504813, -0.139348, -0.851907,
		0.129035, -0.987978, 0.085143,
		-0.853530, -0.066945, 0.516725,
		25.553156, 31.563663, 32.507118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808430, 31.015162, 31.876690>,  <26.150627, 31.610523, 32.145409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808430, 31.015162, 31.876690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533535, 31.276804, 32.003090>,  <25.368599, 31.433788, 32.078930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533535, 31.276804, 32.003090>,  <25.808430, 31.015162, 31.876690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533535, 31.276804, 32.003090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414914, 0.003623, -0.909853,
		-0.596284, -0.756396, 0.268907,
		-0.687235, 0.654104, 0.316000,
		25.327364, 31.473036, 32.097889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083755, 30.727411, 31.874466>,  <25.808430, 31.015162, 31.876690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083755, 30.727411, 31.874466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032293, 31.123690, 31.856707>,  <25.001415, 31.361456, 31.846052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032293, 31.123690, 31.856707>,  <25.083755, 30.727411, 31.874466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032293, 31.123690, 31.856707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607146, -0.114086, -0.786358,
		-0.784106, -0.074215, 0.616174,
		-0.128656, 0.990695, -0.044396,
		24.993696, 31.420898, 31.843388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348433, 30.812761, 31.847334>,  <25.083755, 30.727411, 31.874466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348433, 30.812761, 31.847334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530157, 31.139534, 31.705223>,  <24.639193, 31.335598, 31.619957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530157, 31.139534, 31.705223>,  <24.348433, 30.812761, 31.847334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530157, 31.139534, 31.705223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525049, -0.076629, -0.847615,
		-0.719669, 0.571619, 0.394116,
		0.454313, 0.816933, -0.355275,
		24.666451, 31.384613, 31.598640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028027, 31.160172, 31.270067>,  <24.348433, 30.812761, 31.847334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028027, 31.160172, 31.270067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394880, 31.306395, 31.206530>,  <24.614992, 31.394129, 31.168407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394880, 31.306395, 31.206530>,  <24.028027, 31.160172, 31.270067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394880, 31.306395, 31.206530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193016, 0.058659, -0.979441,
		-0.348725, 0.928938, 0.124357,
		0.917134, 0.365559, -0.158844,
		24.670021, 31.416061, 31.158876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.329617, 30.915277, 30.579369>,  <24.028027, 31.160172, 31.270067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.329617, 30.915277, 30.579369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196384, 31.292213, 30.566397>,  <24.116446, 31.518375, 30.558613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196384, 31.292213, 30.566397>,  <24.329617, 30.915277, 30.579369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196384, 31.292213, 30.566397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520685, 0.212498, 0.826881,
		0.786095, 0.258530, -0.561441,
		-0.333079, 0.942341, -0.032431,
		24.096460, 31.574915, 30.556667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957340, 31.362646, 30.558599>,  <24.329617, 30.915277, 30.579369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957340, 31.362646, 30.558599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625956, 31.532883, 30.704216>,  <24.427124, 31.635025, 30.791586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625956, 31.532883, 30.704216>,  <24.957340, 31.362646, 30.558599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625956, 31.532883, 30.704216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491506, 0.240918, 0.836887,
		0.268467, 0.872256, -0.408772,
		-0.828461, 0.425590, 0.364040,
		24.377417, 31.660561, 30.813429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147533, 32.022873, 30.680202>,  <24.957340, 31.362646, 30.558599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147533, 32.022873, 30.680202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843868, 31.938992, 30.926680>,  <24.661669, 31.888662, 31.074566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843868, 31.938992, 30.926680>,  <25.147533, 32.022873, 30.680202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843868, 31.938992, 30.926680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592114, 0.170663, 0.787575,
		-0.270321, 0.962755, -0.005391,
		-0.759162, -0.209706, 0.616195,
		24.616119, 31.876080, 31.111538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182102, 32.512981, 31.288626>,  <25.147533, 32.022873, 30.680202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182102, 32.512981, 31.288626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981115, 32.182053, 31.389071>,  <24.860523, 31.983494, 31.449337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981115, 32.182053, 31.389071>,  <25.182102, 32.512981, 31.288626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981115, 32.182053, 31.389071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296343, 0.108046, 0.948950,
		-0.812223, 0.551232, 0.190883,
		-0.502468, -0.827327, 0.251112,
		24.830376, 31.933855, 31.464403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956898, 32.699677, 31.930567>,  <25.182102, 32.512981, 31.288626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956898, 32.699677, 31.930567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929405, 32.301620, 31.902342>,  <24.912909, 32.062786, 31.885406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929405, 32.301620, 31.902342>,  <24.956898, 32.699677, 31.930567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929405, 32.301620, 31.902342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339614, -0.089843, 0.936264,
		-0.938050, 0.040389, 0.344137,
		-0.068733, -0.995137, -0.070560,
		24.908785, 32.003078, 31.881174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569763, 32.465866, 32.504421>,  <24.956898, 32.699677, 31.930567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569763, 32.465866, 32.504421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807148, 32.164448, 32.391300>,  <24.949579, 31.983597, 32.323429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807148, 32.164448, 32.391300>,  <24.569763, 32.465866, 32.504421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807148, 32.164448, 32.391300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290817, -0.126866, 0.948330,
		-0.750485, -0.645042, 0.143853,
		0.593463, -0.753542, -0.282800,
		24.985188, 31.938385, 32.306461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.469284, 31.775707, 32.764435>,  <24.569763, 32.465866, 32.504421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.469284, 31.775707, 32.764435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840988, 31.904472, 32.691936>,  <25.064011, 31.981731, 32.648438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840988, 31.904472, 32.691936>,  <24.469284, 31.775707, 32.764435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840988, 31.904472, 32.691936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181584, 0.029240, 0.982941,
		0.321722, -0.946317, -0.031283,
		0.929259, 0.321914, -0.181243,
		25.119766, 32.001045, 32.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868555, 31.511120, 33.321861>,  <24.469284, 31.775707, 32.764435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868555, 31.511120, 33.321861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097818, 31.796246, 33.160179>,  <25.235376, 31.967321, 33.063168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097818, 31.796246, 33.160179>,  <24.868555, 31.511120, 33.321861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097818, 31.796246, 33.160179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244540, 0.322010, 0.914609,
		0.782107, -0.623060, 0.010250,
		0.573157, 0.712816, -0.404209,
		25.269766, 32.010090, 33.038918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561384, 31.466993, 33.507301>,  <24.868555, 31.511120, 33.321861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561384, 31.466993, 33.507301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489771, 31.849051, 33.412937>,  <25.446804, 32.078285, 33.356319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489771, 31.849051, 33.412937>,  <25.561384, 31.466993, 33.507301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489771, 31.849051, 33.412937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253352, 0.276455, 0.927031,
		0.950663, 0.106199, -0.291481,
		-0.179031, 0.955141, -0.235910,
		25.436062, 32.135593, 33.342163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083771, 31.892242, 33.718277>,  <25.561384, 31.466993, 33.507301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083771, 31.892242, 33.718277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844532, 32.204262, 33.644733>,  <25.700989, 32.391472, 33.600605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844532, 32.204262, 33.644733>,  <26.083771, 31.892242, 33.718277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844532, 32.204262, 33.644733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430775, 0.506367, 0.747011,
		0.675808, 0.367580, -0.638881,
		-0.598095, 0.780050, -0.183863,
		25.665104, 32.438278, 33.589573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270529, 31.298239, 34.103283>,  <26.083771, 31.892242, 33.718277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270529, 31.298239, 34.103283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050627, 31.027258, 33.907803>,  <25.918686, 30.864670, 33.790516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050627, 31.027258, 33.907803>,  <26.270529, 31.298239, 34.103283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050627, 31.027258, 33.907803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822549, -0.540969, -0.175398,
		-0.145547, -0.498406, 0.854639,
		-0.549753, -0.677454, -0.488700,
		25.885700, 30.824022, 33.761192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253309, 30.639181, 34.414619>,  <26.270529, 31.298239, 34.103283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253309, 30.639181, 34.414619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200092, 30.535307, 34.032024>,  <26.168163, 30.472982, 33.802467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200092, 30.535307, 34.032024>,  <26.253309, 30.639181, 34.414619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200092, 30.535307, 34.032024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709975, -0.698343, 0.090846,
		-0.691546, -0.666994, 0.277277,
		-0.133041, -0.259684, -0.956486,
		26.160179, 30.457401, 33.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625546, 30.209496, 34.796833>,  <26.253309, 30.639181, 34.414619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625546, 30.209496, 34.796833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552811, 30.094231, 34.420769>,  <26.509171, 30.025072, 34.195129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552811, 30.094231, 34.420769>,  <26.625546, 30.209496, 34.796833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552811, 30.094231, 34.420769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840276, 0.451077, -0.300774,
		0.510756, -0.844684, 0.160113,
		-0.181836, -0.288162, -0.940159,
		26.498260, 30.007782, 34.138721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214710, 29.778954, 34.415730>,  <26.625546, 30.209496, 34.796833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214710, 29.778954, 34.415730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995750, 29.977629, 34.146317>,  <26.864374, 30.096834, 33.984669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995750, 29.977629, 34.146317>,  <27.214710, 29.778954, 34.415730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995750, 29.977629, 34.146317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748284, 0.650880, -0.128169,
		0.374730, -0.574156, -0.727958,
		-0.547402, 0.496690, -0.673535,
		26.831530, 30.126637, 33.944256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590351, 30.016340, 33.767483>,  <27.214710, 29.778954, 34.415730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590351, 30.016340, 33.767483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284925, 30.267420, 33.828098>,  <27.101669, 30.418068, 33.864468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284925, 30.267420, 33.828098>,  <27.590351, 30.016340, 33.767483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284925, 30.267420, 33.828098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641506, 0.764186, 0.067003,
		-0.073746, 0.148375, -0.986178,
		-0.763565, 0.627698, 0.151539,
		27.055857, 30.455729, 33.873562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882820, 30.548719, 33.556499>,  <27.590351, 30.016340, 33.767483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882820, 30.548719, 33.556499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562288, 30.660324, 33.768169>,  <27.369968, 30.727287, 33.895172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562288, 30.660324, 33.768169>,  <27.882820, 30.548719, 33.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562288, 30.660324, 33.768169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404367, 0.904515, 0.135422,
		-0.440859, 0.322497, -0.837639,
		-0.801330, 0.279011, 0.529171,
		27.321890, 30.744028, 33.926922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418076, 30.996435, 33.159309>,  <27.882820, 30.548719, 33.556499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418076, 30.996435, 33.159309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418959, 31.030983, 33.557816>,  <27.419489, 31.051712, 33.796917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418959, 31.030983, 33.557816>,  <27.418076, 30.996435, 33.159309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418959, 31.030983, 33.557816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451028, 0.889088, -0.078077,
		-0.892507, 0.449514, -0.036992,
		0.002208, 0.086369, 0.996261,
		27.419621, 31.056894, 33.856693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230230, 31.665028, 33.362999>,  <27.418076, 30.996435, 33.159309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230230, 31.665028, 33.362999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447535, 31.561979, 33.682625>,  <27.577917, 31.500151, 33.874401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447535, 31.561979, 33.682625>,  <27.230230, 31.665028, 33.362999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447535, 31.561979, 33.682625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566529, 0.814894, -0.122442,
		-0.619607, 0.519209, 0.588650,
		0.543261, -0.257622, 0.799061,
		27.610514, 31.484694, 33.922344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408030, 32.304787, 33.635426>,  <27.230230, 31.665028, 33.362999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408030, 32.304787, 33.635426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661057, 32.041515, 33.798725>,  <27.812872, 31.883554, 33.896706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661057, 32.041515, 33.798725>,  <27.408030, 32.304787, 33.635426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661057, 32.041515, 33.798725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730447, 0.682223, -0.031928,
		-0.257502, 0.318400, 0.912313,
		0.632567, -0.658174, 0.408248,
		27.850826, 31.844063, 33.921200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845531, 32.597992, 34.201626>,  <27.408030, 32.304787, 33.635426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845531, 32.597992, 34.201626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081470, 32.310734, 34.053925>,  <28.223034, 32.138378, 33.965305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081470, 32.310734, 34.053925>,  <27.845531, 32.597992, 34.201626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081470, 32.310734, 34.053925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802575, 0.571858, 0.169861,
		0.089173, -0.396542, 0.913675,
		0.589849, -0.718146, -0.369249,
		28.258425, 32.095291, 33.943150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585760, 32.534885, 34.620224>,  <27.845531, 32.597992, 34.201626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585760, 32.534885, 34.620224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628029, 32.383972, 34.252205>,  <28.653391, 32.293427, 34.031391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628029, 32.383972, 34.252205>,  <28.585760, 32.534885, 34.620224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628029, 32.383972, 34.252205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847809, 0.517702, -0.114915,
		0.519667, -0.767883, 0.374569,
		0.105673, -0.377280, -0.920050,
		28.659731, 32.270786, 33.976189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078270, 32.019096, 34.551258>,  <28.585760, 32.534885, 34.620224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078270, 32.019096, 34.551258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056580, 32.228039, 34.210857>,  <29.043566, 32.353405, 34.006618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056580, 32.228039, 34.210857>,  <29.078270, 32.019096, 34.551258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056580, 32.228039, 34.210857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884456, 0.420697, 0.201871,
		0.463463, -0.741728, -0.484811,
		-0.054225, 0.522354, -0.851003,
		29.040312, 32.384747, 33.955555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617983, 31.930737, 34.045708>,  <29.078270, 32.019096, 34.551258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617983, 31.930737, 34.045708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474419, 32.302589, 34.012321>,  <29.388281, 32.525700, 33.992290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474419, 32.302589, 34.012321>,  <29.617983, 31.930737, 34.045708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474419, 32.302589, 34.012321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874511, 0.366182, 0.318028,
		0.326213, 0.041151, -0.944400,
		-0.358909, 0.929633, -0.083466,
		29.366745, 32.581478, 33.987282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145325, 32.229530, 33.714947>,  <29.617983, 31.930737, 34.045708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145325, 32.229530, 33.714947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949919, 32.511169, 33.921093>,  <29.832676, 32.680153, 34.044781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949919, 32.511169, 33.921093>,  <30.145325, 32.229530, 33.714947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949919, 32.511169, 33.921093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871036, 0.428355, 0.240432,
		-0.051475, 0.566361, -0.822548,
		-0.488514, 0.704093, 0.515370,
		29.803364, 32.722397, 34.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248205, 33.100178, 33.539928>,  <30.145325, 32.229530, 33.714947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248205, 33.100178, 33.539928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185865, 32.985779, 33.918118>,  <30.148460, 32.917141, 34.145031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185865, 32.985779, 33.918118>,  <30.248205, 33.100178, 33.539928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185865, 32.985779, 33.918118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926188, 0.290395, 0.240514,
		-0.343346, 0.913169, 0.219625,
		-0.155852, -0.285993, 0.945472,
		30.139111, 32.899982, 34.201759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887438, 33.277946, 33.794041>,  <30.248205, 33.100178, 33.539928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887438, 33.277946, 33.794041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679712, 33.137524, 34.105701>,  <30.555077, 33.053272, 34.292698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679712, 33.137524, 34.105701>,  <30.887438, 33.277946, 33.794041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679712, 33.137524, 34.105701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829183, 0.013653, 0.558810,
		-0.206810, 0.936256, 0.283997,
		-0.519312, -0.351053, 0.779151,
		30.523918, 33.032207, 34.339447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196909, 33.913551, 33.797108>,  <30.887438, 33.277946, 33.794041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196909, 33.913551, 33.797108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176195, 34.222103, 33.543400>,  <31.163767, 34.407234, 33.391174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176195, 34.222103, 33.543400>,  <31.196909, 33.913551, 33.797108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176195, 34.222103, 33.543400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284831, -0.597330, -0.749713,
		-0.957178, -0.219482, -0.188780,
		-0.051784, 0.771379, -0.634266,
		31.160660, 34.453518, 33.353119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888552, 33.674992, 33.197964>,  <31.196909, 33.913551, 33.797108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888552, 33.674992, 33.197964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093363, 33.994297, 33.071095>,  <31.216249, 34.185883, 32.994972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093363, 33.994297, 33.071095>,  <30.888552, 33.674992, 33.197964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093363, 33.994297, 33.071095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082983, -0.413490, -0.906719,
		-0.854951, 0.437945, -0.277961,
		0.512027, 0.798267, -0.317172,
		31.246971, 34.233776, 32.975945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552328, 33.953396, 32.573891>,  <30.888552, 33.674992, 33.197964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552328, 33.953396, 32.573891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934326, 34.070351, 32.553909>,  <31.163525, 34.140526, 32.541920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934326, 34.070351, 32.553909>,  <30.552328, 33.953396, 32.573891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934326, 34.070351, 32.553909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106652, -0.495618, -0.861967,
		-0.276791, 0.817845, -0.504496,
		0.954993, 0.292391, -0.049958,
		31.220823, 34.158070, 32.538921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701384, 34.157478, 31.841619>,  <30.552328, 33.953396, 32.573891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701384, 34.157478, 31.841619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065878, 34.112724, 32.000179>,  <31.284575, 34.085873, 32.095314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065878, 34.112724, 32.000179>,  <30.701384, 34.157478, 31.841619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065878, 34.112724, 32.000179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323352, -0.401807, -0.856735,
		0.255135, 0.908863, -0.329962,
		0.911236, -0.111889, 0.396397,
		31.339249, 34.079159, 32.119099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130148, 34.354946, 31.344208>,  <30.701384, 34.157478, 31.841619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130148, 34.354946, 31.344208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389410, 34.159313, 31.577684>,  <31.544968, 34.041935, 31.717770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389410, 34.159313, 31.577684>,  <31.130148, 34.354946, 31.344208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389410, 34.159313, 31.577684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424739, -0.404008, -0.810170,
		0.632056, 0.773030, -0.054127,
		0.648154, -0.489082, 0.583691,
		31.583857, 34.012589, 31.752792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877134, 34.469357, 31.081610>,  <31.130148, 34.354946, 31.344208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877134, 34.469357, 31.081610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895678, 34.139114, 31.306547>,  <31.906803, 33.940971, 31.441509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895678, 34.139114, 31.306547>,  <31.877134, 34.469357, 31.081610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895678, 34.139114, 31.306547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456301, -0.483282, -0.747146,
		0.888617, 0.291233, 0.354320,
		0.046357, -0.825604, 0.562343,
		31.909584, 33.891434, 31.475250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514420, 34.173985, 30.908543>,  <31.877134, 34.469357, 31.081610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514420, 34.173985, 30.908543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355827, 33.859318, 31.097839>,  <32.260674, 33.670517, 31.211418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355827, 33.859318, 31.097839>,  <32.514420, 34.173985, 30.908543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355827, 33.859318, 31.097839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424862, -0.614193, -0.665026,
		0.813817, -0.062604, 0.577739,
		-0.396476, -0.786669, 0.473243,
		32.236885, 33.623318, 31.239813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094181, 33.595284, 31.121359>,  <32.514420, 34.173985, 30.908543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094181, 33.595284, 31.121359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720959, 33.455128, 31.088778>,  <32.497025, 33.371033, 31.069229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720959, 33.455128, 31.088778>,  <33.094181, 33.595284, 31.121359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720959, 33.455128, 31.088778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333659, -0.758310, -0.560033,
		0.134462, -0.549720, 0.824456,
		-0.933055, -0.350391, -0.081455,
		32.441044, 33.350010, 31.064341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249653, 32.841171, 31.182541>,  <33.094181, 33.595284, 31.121359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249653, 32.841171, 31.182541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898064, 32.903755, 31.002354>,  <32.687111, 32.941303, 30.894241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898064, 32.903755, 31.002354>,  <33.249653, 32.841171, 31.182541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898064, 32.903755, 31.002354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313722, -0.521706, -0.793348,
		-0.359135, -0.838656, 0.409484,
		-0.878977, 0.156456, -0.450468,
		32.634369, 32.950691, 30.867212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979790, 32.253189, 30.957407>,  <33.249653, 32.841171, 31.182541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979790, 32.253189, 30.957407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791477, 32.513824, 30.719486>,  <32.678490, 32.670208, 30.576733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791477, 32.513824, 30.719486>,  <32.979790, 32.253189, 30.957407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791477, 32.513824, 30.719486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441719, -0.409518, -0.798236,
		-0.763707, -0.638531, -0.095027,
		-0.470783, 0.651593, -0.594803,
		32.650242, 32.709301, 30.541046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827045, 31.817335, 30.445526>,  <32.979790, 32.253189, 30.957407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827045, 31.817335, 30.445526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761330, 32.175129, 30.279200>,  <32.721901, 32.389805, 30.179403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761330, 32.175129, 30.279200>,  <32.827045, 31.817335, 30.445526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761330, 32.175129, 30.279200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286276, -0.360165, -0.887878,
		-0.943957, -0.264909, -0.196898,
		-0.164291, 0.894486, -0.415817,
		32.712044, 32.443474, 30.154455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636654, 31.683504, 29.808443>,  <32.827045, 31.817335, 30.445526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636654, 31.683504, 29.808443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704952, 32.072212, 29.743317>,  <32.745930, 32.305435, 29.704241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704952, 32.072212, 29.743317>,  <32.636654, 31.683504, 29.808443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704952, 32.072212, 29.743317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175441, -0.192587, -0.965469,
		-0.969571, 0.136283, -0.203371,
		0.170743, 0.971770, -0.162817,
		32.756176, 32.363743, 29.694471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978407, 32.018188, 29.425840>,  <32.636654, 31.683504, 29.808443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978407, 32.018188, 29.425840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325939, 32.204350, 29.358276>,  <32.534458, 32.316048, 29.317738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325939, 32.204350, 29.358276>,  <31.978407, 32.018188, 29.425840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325939, 32.204350, 29.358276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095699, -0.176862, -0.979572,
		-0.485773, 0.867247, -0.109125,
		0.868831, 0.465406, -0.168909,
		32.586590, 32.343971, 29.307604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887678, 32.520134, 28.826571>,  <31.978407, 32.018188, 29.425840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887678, 32.520134, 28.826571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280945, 32.449429, 28.845078>,  <32.516903, 32.407005, 28.856182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280945, 32.449429, 28.845078>,  <31.887678, 32.520134, 28.826571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280945, 32.449429, 28.845078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020694, -0.143863, -0.989381,
		0.181538, 0.973684, -0.137783,
		0.983166, -0.176759, 0.046266,
		32.575893, 32.396400, 28.858957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174923, 32.783955, 28.211922>,  <31.887678, 32.520134, 28.826571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174923, 32.783955, 28.211922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459557, 32.548458, 28.365301>,  <32.630337, 32.407162, 28.457329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459557, 32.548458, 28.365301>,  <32.174923, 32.783955, 28.211922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459557, 32.548458, 28.365301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135139, -0.420881, -0.896993,
		0.689482, 0.690105, -0.219931,
		0.711584, -0.588739, 0.383450,
		32.673031, 32.371838, 28.480335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739079, 32.976608, 27.910057>,  <32.174923, 32.783955, 28.211922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739079, 32.976608, 27.910057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829922, 32.604355, 28.024834>,  <32.884430, 32.381001, 28.093700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829922, 32.604355, 28.024834>,  <32.739079, 32.976608, 27.910057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829922, 32.604355, 28.024834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196194, -0.244877, -0.949497,
		0.953902, 0.271938, 0.126971,
		0.227112, -0.930637, 0.286941,
		32.898056, 32.325165, 28.110916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264065, 32.850586, 27.564682>,  <32.739079, 32.976608, 27.910057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264065, 32.850586, 27.564682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115250, 32.496948, 27.677795>,  <33.025963, 32.284767, 27.745663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115250, 32.496948, 27.677795>,  <33.264065, 32.850586, 27.564682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115250, 32.496948, 27.677795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212255, -0.377608, -0.901310,
		0.903624, -0.275297, 0.328138,
		-0.372035, -0.884095, 0.282783,
		33.003639, 32.231720, 27.762630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743298, 32.438622, 27.387596>,  <33.264065, 32.850586, 27.564682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743298, 32.438622, 27.387596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414970, 32.211929, 27.416101>,  <33.217976, 32.075912, 27.433205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414970, 32.211929, 27.416101>,  <33.743298, 32.438622, 27.387596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414970, 32.211929, 27.416101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053012, -0.199808, -0.978400,
		0.568728, -0.799308, 0.194049,
		-0.820815, -0.566730, 0.071263,
		33.168724, 32.041912, 27.437481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942856, 31.949976, 26.947273>,  <33.743298, 32.438622, 27.387596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942856, 31.949976, 26.947273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549606, 31.890551, 26.989986>,  <33.313656, 31.854895, 27.015614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549606, 31.890551, 26.989986>,  <33.942856, 31.949976, 26.947273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549606, 31.890551, 26.989986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045636, -0.366075, -0.929466,
		0.177176, -0.918650, 0.353116,
		-0.983120, -0.148564, 0.106783,
		33.254669, 31.845982, 27.022022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904251, 31.295982, 26.766941>,  <33.942856, 31.949976, 26.947273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904251, 31.295982, 26.766941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544689, 31.464760, 26.719736>,  <33.328953, 31.566027, 26.691414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544689, 31.464760, 26.719736>,  <33.904251, 31.295982, 26.766941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544689, 31.464760, 26.719736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028814, -0.325697, -0.945035,
		-0.437190, -0.846099, 0.304929,
		-0.898908, 0.421946, -0.118012,
		33.275017, 31.591343, 26.684332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523777, 30.821814, 26.399483>,  <33.904251, 31.295982, 26.766941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523777, 30.821814, 26.399483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295944, 31.141998, 26.324829>,  <33.159245, 31.334108, 26.280037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295944, 31.141998, 26.324829>,  <33.523777, 30.821814, 26.399483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295944, 31.141998, 26.324829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197760, -0.353865, -0.914150,
		-0.797786, -0.483778, 0.359856,
		-0.569586, 0.800462, -0.186636,
		33.125069, 31.382137, 26.268839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987350, 30.608513, 26.059229>,  <33.523777, 30.821814, 26.399483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987350, 30.608513, 26.059229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972347, 30.994110, 25.953924>,  <32.963345, 31.225470, 25.890741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972347, 30.994110, 25.953924>,  <32.987350, 30.608513, 26.059229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972347, 30.994110, 25.953924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200906, -0.265344, -0.942990,
		-0.978892, 0.017522, 0.203625,
		-0.037508, 0.963995, -0.263264,
		32.961094, 31.283308, 25.874945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466911, 30.625988, 25.509584>,  <32.987350, 30.608513, 26.059229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466911, 30.625988, 25.509584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655949, 30.977982, 25.490477>,  <32.769371, 31.189178, 25.479012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655949, 30.977982, 25.490477>,  <32.466911, 30.625988, 25.509584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655949, 30.977982, 25.490477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241148, 0.076993, -0.967429,
		-0.847645, 0.468720, 0.248593,
		0.472594, 0.879985, -0.047769,
		32.797726, 31.241978, 25.476147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078468, 30.978828, 25.095631>,  <32.466911, 30.625988, 25.509584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078468, 30.978828, 25.095631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430965, 31.165388, 25.064949>,  <32.642464, 31.277325, 25.046539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430965, 31.165388, 25.064949>,  <32.078468, 30.978828, 25.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430965, 31.165388, 25.064949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121767, 0.067206, -0.990281,
		-0.456711, 0.882017, 0.116017,
		0.881242, 0.466399, -0.076706,
		32.695339, 31.305307, 25.041937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964216, 31.429642, 24.539801>,  <32.078468, 30.978828, 25.095631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964216, 31.429642, 24.539801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362183, 31.413317, 24.576618>,  <32.600964, 31.403521, 24.598709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362183, 31.413317, 24.576618>,  <31.964216, 31.429642, 24.539801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362183, 31.413317, 24.576618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096825, 0.137018, -0.985825,
		0.027624, 0.989727, 0.140274,
		0.994918, -0.040814, 0.092045,
		32.660660, 31.401072, 24.604231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215904, 31.983526, 24.110291>,  <31.964216, 31.429642, 24.539801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215904, 31.983526, 24.110291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517048, 31.722076, 24.141209>,  <32.697735, 31.565207, 24.159760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517048, 31.722076, 24.141209>,  <32.215904, 31.983526, 24.110291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517048, 31.722076, 24.141209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001282, -0.118898, -0.992906,
		0.658176, 0.747423, -0.090352,
		0.752863, -0.653623, 0.077298,
		32.742908, 31.525990, 24.164398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646591, 32.159069, 23.615393>,  <32.215904, 31.983526, 24.110291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646591, 32.159069, 23.615393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766670, 31.785908, 23.694967>,  <32.838718, 31.562012, 23.742712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766670, 31.785908, 23.694967>,  <32.646591, 32.159069, 23.615393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766670, 31.785908, 23.694967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149820, -0.159851, -0.975705,
		0.942037, 0.322710, 0.091780,
		0.300199, -0.932902, 0.198934,
		32.856731, 31.506037, 23.754648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277359, 32.125214, 23.468737>,  <32.646591, 32.159069, 23.615393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277359, 32.125214, 23.468737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124928, 31.756376, 23.441820>,  <33.033470, 31.535074, 23.425671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124928, 31.756376, 23.441820>,  <33.277359, 32.125214, 23.468737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124928, 31.756376, 23.441820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234545, -0.026018, -0.971757,
		0.894297, -0.386098, 0.226187,
		-0.381078, -0.922091, -0.067290,
		33.010605, 31.479750, 23.421633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676094, 31.788925, 23.040520>,  <33.277359, 32.125214, 23.468737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676094, 31.788925, 23.040520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382744, 31.517033, 23.036200>,  <33.206734, 31.353897, 23.033607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382744, 31.517033, 23.036200>,  <33.676094, 31.788925, 23.040520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382744, 31.517033, 23.036200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278170, -0.285550, -0.917106,
		0.620303, -0.675591, 0.398498,
		-0.733379, -0.679734, -0.010801,
		33.162731, 31.313112, 23.032959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977440, 31.110106, 22.866711>,  <33.676094, 31.788925, 23.040520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977440, 31.110106, 22.866711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593704, 31.098709, 22.754381>,  <33.363464, 31.091871, 22.686983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593704, 31.098709, 22.754381>,  <33.977440, 31.110106, 22.866711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593704, 31.098709, 22.754381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272880, -0.348042, -0.896886,
		-0.072184, -0.937046, 0.341664,
		-0.959336, -0.028492, -0.280824,
		33.305904, 31.090162, 22.670134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964333, 30.591499, 22.351519>,  <33.977440, 31.110106, 22.866711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964333, 30.591499, 22.351519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603546, 30.756502, 22.300467>,  <33.387074, 30.855503, 22.269836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603546, 30.756502, 22.300467>,  <33.964333, 30.591499, 22.351519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603546, 30.756502, 22.300467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093241, -0.102534, -0.990350,
		-0.421611, -0.905166, 0.054020,
		-0.901970, 0.412505, -0.127628,
		33.332954, 30.880253, 22.262178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725403, 30.139465, 21.924288>,  <33.964333, 30.591499, 22.351519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725403, 30.139465, 21.924288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517826, 30.478424, 21.879351>,  <33.393280, 30.681799, 21.852388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517826, 30.478424, 21.879351>,  <33.725403, 30.139465, 21.924288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517826, 30.478424, 21.879351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304822, 0.060663, -0.950475,
		-0.798615, -0.527483, -0.289786,
		-0.518939, 0.847397, -0.112342,
		33.362144, 30.732643, 21.845648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328049, 30.003275, 21.408550>,  <33.725403, 30.139465, 21.924288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328049, 30.003275, 21.408550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328930, 30.403212, 21.415602>,  <33.329456, 30.643173, 21.419832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328930, 30.403212, 21.415602>,  <33.328049, 30.003275, 21.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328930, 30.403212, 21.415602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128644, 0.017201, -0.991542,
		-0.991689, 0.004448, -0.128586,
		0.002199, 0.999842, 0.017630,
		33.329590, 30.703165, 21.420891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756126, 30.281820, 20.925053>,  <33.328049, 30.003275, 21.408550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756126, 30.281820, 20.925053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034569, 30.561714, 20.989302>,  <33.201633, 30.729650, 21.027851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034569, 30.561714, 20.989302>,  <32.756126, 30.281820, 20.925053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034569, 30.561714, 20.989302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050308, 0.175634, -0.983169,
		-0.716170, 0.692475, 0.087059,
		0.696111, 0.699736, 0.160621,
		33.243401, 30.771635, 21.037487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644657, 30.714888, 20.427425>,  <32.756126, 30.281820, 20.925053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644657, 30.714888, 20.427425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004124, 30.854084, 20.534229>,  <33.219803, 30.937603, 20.598312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004124, 30.854084, 20.534229>,  <32.644657, 30.714888, 20.427425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004124, 30.854084, 20.534229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208120, 0.197558, -0.957944,
		-0.386107, 0.916445, 0.105115,
		0.898670, 0.347993, 0.267009,
		33.273724, 30.958483, 20.614332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818684, 31.328053, 20.007010>,  <32.644657, 30.714888, 20.427425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818684, 31.328053, 20.007010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185848, 31.223648, 20.126549>,  <33.406147, 31.161005, 20.198273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185848, 31.223648, 20.126549>,  <32.818684, 31.328053, 20.007010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185848, 31.223648, 20.126549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367003, 0.272225, -0.889495,
		0.150814, 0.926157, 0.345671,
		0.917913, -0.261011, 0.298848,
		33.461224, 31.145346, 20.216204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296776, 31.827114, 19.651707>,  <32.818684, 31.328053, 20.007010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296776, 31.827114, 19.651707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517582, 31.517101, 19.774736>,  <33.650066, 31.331095, 19.848555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517582, 31.517101, 19.774736>,  <33.296776, 31.827114, 19.651707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517582, 31.517101, 19.774736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503681, 0.015969, -0.863742,
		0.664515, 0.631722, 0.399183,
		0.552019, -0.775030, 0.307575,
		33.683189, 31.284592, 19.867008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950966, 32.101048, 19.594084>,  <33.296776, 31.827114, 19.651707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950966, 32.101048, 19.594084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963825, 31.702410, 19.563707>,  <33.971542, 31.463226, 19.545481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963825, 31.702410, 19.563707>,  <33.950966, 32.101048, 19.594084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963825, 31.702410, 19.563707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441858, 0.082326, -0.893299,
		0.896508, -0.004836, 0.443000,
		0.032150, -0.996594, -0.075943,
		33.973469, 31.403431, 19.540924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734772, 31.875666, 19.490196>,  <33.950966, 32.101048, 19.594084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734772, 31.875666, 19.490196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490311, 31.595755, 19.342247>,  <34.343636, 31.427807, 19.253477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490311, 31.595755, 19.342247>,  <34.734772, 31.875666, 19.490196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490311, 31.595755, 19.342247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437461, 0.090811, -0.894640,
		0.659639, -0.708564, 0.250627,
		-0.611150, -0.699779, -0.369871,
		34.306965, 31.385820, 19.231285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074093, 31.455599, 19.007856>,  <34.734772, 31.875666, 19.490196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074093, 31.455599, 19.007856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693672, 31.367109, 18.921537>,  <34.465420, 31.314014, 18.869747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693672, 31.367109, 18.921537>,  <35.074093, 31.455599, 19.007856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693672, 31.367109, 18.921537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260245, -0.196700, -0.945295,
		0.166676, -0.955180, 0.244644,
		-0.951048, -0.221225, -0.215795,
		34.408360, 31.300741, 18.856798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215481, 30.925592, 18.591066>,  <35.074093, 31.455599, 19.007856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215481, 30.925592, 18.591066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840927, 31.040577, 18.510513>,  <34.616196, 31.109568, 18.462181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840927, 31.040577, 18.510513>,  <35.215481, 30.925592, 18.591066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840927, 31.040577, 18.510513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177854, -0.106034, -0.978328,
		-0.302588, -0.951904, 0.048161,
		-0.936381, 0.287464, -0.201385,
		34.560013, 31.126816, 18.450098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034641, 30.404278, 18.029203>,  <35.215481, 30.925592, 18.591066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034641, 30.404278, 18.029203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777290, 30.710493, 18.030933>,  <34.622879, 30.894222, 18.031971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777290, 30.710493, 18.030933>,  <35.034641, 30.404278, 18.029203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777290, 30.710493, 18.030933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011002, 0.014897, -0.999829,
		-0.765474, -0.643215, -0.018007,
		-0.643373, 0.765541, 0.004326,
		34.584278, 30.940155, 18.032230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462624, 30.240665, 17.527122>,  <35.034641, 30.404278, 18.029203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462624, 30.240665, 17.527122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464302, 30.637236, 17.579363>,  <34.465309, 30.875177, 17.610706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464302, 30.637236, 17.579363>,  <34.462624, 30.240665, 17.527122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464302, 30.637236, 17.579363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055840, 0.130630, -0.989858,
		-0.998431, -0.003136, 0.055910,
		0.004199, 0.991427, 0.130600,
		34.465561, 30.934664, 17.618544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971767, 30.529007, 17.124386>,  <34.462624, 30.240665, 17.527122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971767, 30.529007, 17.124386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228630, 30.828444, 17.190409>,  <34.382748, 31.008104, 17.230022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228630, 30.828444, 17.190409>,  <33.971767, 30.529007, 17.124386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228630, 30.828444, 17.190409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068821, 0.158152, -0.985014,
		-0.763476, 0.643895, 0.050040,
		0.642159, 0.748590, 0.165059,
		34.421276, 31.053020, 17.239925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705078, 31.260450, 16.852922>,  <33.971767, 30.529007, 17.124386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705078, 31.260450, 16.852922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098728, 31.189676, 16.847296>,  <34.334919, 31.147211, 16.843920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098728, 31.189676, 16.847296>,  <33.705078, 31.260450, 16.852922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098728, 31.189676, 16.847296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004461, 0.103880, -0.994580,
		0.177437, 0.978725, 0.103020,
		0.984122, -0.176935, -0.014066,
		34.393967, 31.136597, 16.843077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704300, 31.370905, 16.179878>,  <33.705078, 31.260450, 16.852922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704300, 31.370905, 16.179878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075958, 31.270844, 16.288776>,  <34.298954, 31.210808, 16.354115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075958, 31.270844, 16.288776>,  <33.704300, 31.370905, 16.179878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075958, 31.270844, 16.288776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267182, -0.054664, -0.962094,
		0.255552, 0.966662, 0.016046,
		0.929143, -0.250152, 0.272245,
		34.354702, 31.195797, 16.370449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311691, 31.894415, 16.020754>,  <33.704300, 31.370905, 16.179878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311691, 31.894415, 16.020754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367680, 31.498384, 16.015789>,  <34.401272, 31.260765, 16.012810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367680, 31.498384, 16.015789>,  <34.311691, 31.894415, 16.020754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367680, 31.498384, 16.015789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186475, 0.038672, -0.981699,
		0.972438, 0.135096, 0.190037,
		0.139973, -0.990078, -0.012414,
		34.409672, 31.201361, 16.012064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075432, 31.698662, 15.838454>,  <34.311691, 31.894415, 16.020754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075432, 31.698662, 15.838454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769833, 31.465828, 15.727108>,  <34.586475, 31.326128, 15.660300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769833, 31.465828, 15.727108>,  <35.075432, 31.698662, 15.838454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769833, 31.465828, 15.727108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083900, 0.338139, -0.937349,
		0.639745, -0.739484, -0.209499,
		-0.763994, -0.582087, -0.278366,
		34.540634, 31.291203, 15.643599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758877, 31.464272, 15.877461>,  <35.075432, 31.698662, 15.838454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758877, 31.464272, 15.877461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130558, 31.497559, 15.733426>,  <36.353565, 31.517530, 15.647005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130558, 31.497559, 15.733426>,  <35.758877, 31.464272, 15.877461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130558, 31.497559, 15.733426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317203, 0.679570, -0.661488,
		0.189657, 0.728875, 0.657853,
		0.929200, 0.083217, -0.360087,
		36.409317, 31.522524, 15.625400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893356, 32.143742, 16.049234>,  <35.758877, 31.464272, 15.877461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893356, 32.143742, 16.049234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193249, 32.208912, 16.305780>,  <36.373184, 32.248016, 16.459709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193249, 32.208912, 16.305780>,  <35.893356, 32.143742, 16.049234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193249, 32.208912, 16.305780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515345, 0.751750, 0.411450,
		-0.415111, -0.639004, 0.647578,
		0.749735, 0.162928, 0.641367,
		36.418171, 32.257790, 16.498190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851768, 32.208870, 16.815252>,  <35.893356, 32.143742, 16.049234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851768, 32.208870, 16.815252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184662, 32.423698, 16.760204>,  <36.384399, 32.552597, 16.727177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184662, 32.423698, 16.760204>,  <35.851768, 32.208870, 16.815252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184662, 32.423698, 16.760204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466698, 0.812623, 0.349052,
		0.299298, -0.226267, 0.926943,
		0.832234, 0.537073, -0.137618,
		36.434334, 32.584820, 16.718920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116924, 32.478863, 17.442595>,  <35.851768, 32.208870, 16.815252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116924, 32.478863, 17.442595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199604, 32.709332, 17.126289>,  <36.249210, 32.847610, 16.936506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199604, 32.709332, 17.126289>,  <36.116924, 32.478863, 17.442595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199604, 32.709332, 17.126289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461524, 0.770065, 0.440451,
		0.862712, 0.273915, 0.425087,
		0.206699, 0.576170, -0.790762,
		36.261612, 32.882183, 16.889061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609238, 33.089584, 17.429743>,  <36.116924, 32.478863, 17.442595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609238, 33.089584, 17.429743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293606, 33.164772, 17.195812>,  <36.104225, 33.209885, 17.055454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293606, 33.164772, 17.195812>,  <36.609238, 33.089584, 17.429743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293606, 33.164772, 17.195812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414293, 0.540084, 0.732578,
		0.453560, 0.820351, -0.348293,
		-0.789079, 0.187973, -0.584826,
		36.056881, 33.221165, 17.020365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481930, 33.874142, 17.375385>,  <36.609238, 33.089584, 17.429743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481930, 33.874142, 17.375385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184830, 33.606415, 17.367998>,  <36.006569, 33.445778, 17.363565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184830, 33.606415, 17.367998>,  <36.481930, 33.874142, 17.375385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184830, 33.606415, 17.367998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345009, 0.358928, 0.867260,
		-0.573842, 0.650528, -0.497513,
		-0.742748, -0.669316, -0.018470,
		35.962006, 33.405621, 17.362457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737240, 34.187763, 17.312319>,  <36.481930, 33.874142, 17.375385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737240, 34.187763, 17.312319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697357, 33.831661, 17.490082>,  <35.673428, 33.618000, 17.596739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697357, 33.831661, 17.490082>,  <35.737240, 34.187763, 17.312319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697357, 33.831661, 17.490082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450738, 0.438591, 0.777478,
		-0.887070, -0.122789, -0.445005,
		-0.099709, -0.890259, 0.444407,
		35.667446, 33.564583, 17.623404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170708, 34.357548, 17.686863>,  <35.737240, 34.187763, 17.312319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170708, 34.357548, 17.686863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296371, 34.020275, 17.861382>,  <35.371769, 33.817913, 17.966093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296371, 34.020275, 17.861382>,  <35.170708, 34.357548, 17.686863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296371, 34.020275, 17.861382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417342, 0.290121, 0.861194,
		-0.852718, -0.452638, -0.260749,
		0.314161, -0.843178, 0.436296,
		35.390621, 33.767323, 17.992271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622631, 34.192654, 18.166777>,  <35.170708, 34.357548, 17.686863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622631, 34.192654, 18.166777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915058, 33.974987, 18.331419>,  <35.090515, 33.844387, 18.430204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915058, 33.974987, 18.331419>,  <34.622631, 34.192654, 18.166777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915058, 33.974987, 18.331419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445236, 0.076643, 0.892127,
		-0.517010, -0.835470, -0.186250,
		0.731071, -0.544164, 0.411607,
		35.134380, 33.811737, 18.454901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418434, 33.563393, 18.578487>,  <34.622631, 34.192654, 18.166777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418434, 33.563393, 18.578487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784664, 33.651394, 18.713140>,  <35.004402, 33.704197, 18.793932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784664, 33.651394, 18.713140>,  <34.418434, 33.563393, 18.578487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784664, 33.651394, 18.713140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356341, 0.055844, 0.932686,
		0.186401, -0.973898, 0.129528,
		0.915574, 0.220009, 0.336631,
		35.059338, 33.717396, 18.814129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486404, 33.234283, 19.233797>,  <34.418434, 33.563393, 18.578487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486404, 33.234283, 19.233797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763065, 33.523140, 19.238350>,  <34.929062, 33.696453, 19.241081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763065, 33.523140, 19.238350>,  <34.486404, 33.234283, 19.233797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763065, 33.523140, 19.238350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245614, 0.220368, 0.943987,
		0.679180, -0.655711, 0.329785,
		0.691657, 0.722137, 0.011382,
		34.970562, 33.739780, 19.241764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630913, 33.216442, 19.891630>,  <34.486404, 33.234283, 19.233797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630913, 33.216442, 19.891630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819111, 33.553020, 19.785349>,  <34.932030, 33.754967, 19.721581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819111, 33.553020, 19.785349>,  <34.630913, 33.216442, 19.891630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819111, 33.553020, 19.785349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100365, 0.350193, 0.931285,
		0.876675, -0.411499, 0.249217,
		0.470497, 0.841447, -0.265706,
		34.960258, 33.805454, 19.705637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265442, 33.331005, 20.270397>,  <34.630913, 33.216442, 19.891630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265442, 33.331005, 20.270397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109081, 33.682980, 20.162390>,  <35.015266, 33.894165, 20.097586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109081, 33.682980, 20.162390>,  <35.265442, 33.331005, 20.270397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109081, 33.682980, 20.162390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057790, 0.269317, 0.961316,
		0.918618, 0.391381, -0.054424,
		-0.390898, 0.879937, -0.270018,
		34.991814, 33.946960, 20.081385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425922, 33.788406, 20.738457>,  <35.265442, 33.331005, 20.270397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425922, 33.788406, 20.738457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141052, 34.015049, 20.572676>,  <34.970131, 34.151035, 20.473207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141052, 34.015049, 20.572676>,  <35.425922, 33.788406, 20.738457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141052, 34.015049, 20.572676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228517, 0.371114, 0.900030,
		0.663768, 0.735687, -0.134820,
		-0.712174, 0.566603, -0.414451,
		34.927399, 34.185028, 20.448341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534752, 34.392540, 20.992952>,  <35.425922, 33.788406, 20.738457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534752, 34.392540, 20.992952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150387, 34.405769, 20.883001>,  <34.919769, 34.413708, 20.817030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150387, 34.405769, 20.883001>,  <35.534752, 34.392540, 20.992952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150387, 34.405769, 20.883001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238434, 0.405756, 0.882333,
		0.140719, 0.913383, -0.382008,
		-0.960910, 0.033077, -0.274879,
		34.862114, 34.415691, 20.800537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340897, 34.928154, 21.270887>,  <35.534752, 34.392540, 20.992952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340897, 34.928154, 21.270887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979469, 34.787048, 21.173632>,  <34.762611, 34.702385, 21.115278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979469, 34.787048, 21.173632>,  <35.340897, 34.928154, 21.270887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979469, 34.787048, 21.173632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371981, 0.364356, 0.853742,
		-0.212582, 0.861859, -0.460443,
		-0.903570, -0.352766, -0.243139,
		34.708397, 34.681217, 21.100689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878933, 35.534100, 21.365013>,  <35.340897, 34.928154, 21.270887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878933, 35.534100, 21.365013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664680, 35.197536, 21.393646>,  <34.536129, 34.995598, 21.410826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664680, 35.197536, 21.393646>,  <34.878933, 35.534100, 21.365013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664680, 35.197536, 21.393646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412801, 0.334848, 0.847037,
		-0.736675, 0.424154, -0.526691,
		-0.535636, -0.841410, 0.071582,
		34.503990, 34.945114, 21.415121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264175, 35.820755, 21.585186>,  <34.878933, 35.534100, 21.365013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264175, 35.820755, 21.585186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218704, 35.433311, 21.673609>,  <34.191422, 35.200844, 21.726664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218704, 35.433311, 21.673609>,  <34.264175, 35.820755, 21.585186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218704, 35.433311, 21.673609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478091, 0.248375, 0.842460,
		-0.870923, -0.009920, -0.491319,
		-0.113674, -0.968613, 0.221058,
		34.184601, 35.142727, 21.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572189, 35.709908, 21.641367>,  <34.264175, 35.820755, 21.585186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572189, 35.709908, 21.641367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724716, 35.396805, 21.838095>,  <33.816231, 35.208942, 21.956131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724716, 35.396805, 21.838095>,  <33.572189, 35.709908, 21.641367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724716, 35.396805, 21.838095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629598, 0.169664, 0.758169,
		-0.676907, -0.598752, -0.428127,
		0.381318, -0.782758, 0.491820,
		33.839111, 35.161976, 21.985641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016552, 35.279842, 21.832245>,  <33.572189, 35.709908, 21.641367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016552, 35.279842, 21.832245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320210, 35.194149, 22.078106>,  <33.502403, 35.142735, 22.225622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320210, 35.194149, 22.078106>,  <33.016552, 35.279842, 21.832245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320210, 35.194149, 22.078106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611186, 0.090261, 0.786323,
		-0.223934, -0.972604, -0.062413,
		0.759148, -0.214230, 0.614655,
		33.547955, 35.129879, 22.262503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670830, 34.959053, 22.310930>,  <33.016552, 35.279842, 21.832245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670830, 34.959053, 22.310930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016613, 35.053051, 22.488691>,  <33.224083, 35.109451, 22.595348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016613, 35.053051, 22.488691>,  <32.670830, 34.959053, 22.310930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016613, 35.053051, 22.488691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480336, 0.125333, 0.868084,
		0.148297, -0.963882, 0.221221,
		0.864457, 0.234995, 0.444401,
		33.275951, 35.123550, 22.622011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780125, 34.600883, 23.044605>,  <32.670830, 34.959053, 22.310930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780125, 34.600883, 23.044605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000511, 34.934441, 23.031538>,  <33.132744, 35.134575, 23.023697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000511, 34.934441, 23.031538>,  <32.780125, 34.600883, 23.044605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000511, 34.934441, 23.031538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177663, 0.155453, 0.971735,
		0.815398, -0.529588, 0.233800,
		0.550965, 0.833889, -0.032668,
		33.165802, 35.184608, 23.021738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170284, 34.571808, 23.592869>,  <32.780125, 34.600883, 23.044605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170284, 34.571808, 23.592869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192223, 34.963299, 23.513786>,  <33.205387, 35.198193, 23.466337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192223, 34.963299, 23.513786>,  <33.170284, 34.571808, 23.592869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192223, 34.963299, 23.513786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322261, 0.204758, 0.924241,
		0.945061, 0.013023, 0.326635,
		0.054845, 0.978726, -0.197706,
		33.208675, 35.256916, 23.454475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529285, 34.928768, 24.132343>,  <33.170284, 34.571808, 23.592869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529285, 34.928768, 24.132343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322784, 35.231544, 23.972082>,  <33.198883, 35.413212, 23.875925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322784, 35.231544, 23.972082>,  <33.529285, 34.928768, 24.132343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322784, 35.231544, 23.972082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289976, 0.285693, 0.913397,
		0.805850, 0.587725, 0.072004,
		-0.516255, 0.756940, -0.400652,
		33.167908, 35.458626, 23.851887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750782, 35.504532, 24.503162>,  <33.529285, 34.928768, 24.132343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750782, 35.504532, 24.503162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400265, 35.596886, 24.334021>,  <33.189957, 35.652298, 24.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400265, 35.596886, 24.334021>,  <33.750782, 35.504532, 24.503162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400265, 35.596886, 24.334021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364311, 0.256772, 0.895179,
		0.315263, 0.938487, -0.140892,
		-0.876291, 0.230889, -0.422852,
		33.137379, 35.666153, 24.207165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613708, 36.162289, 24.700470>,  <33.750782, 35.504532, 24.503162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613708, 36.162289, 24.700470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259624, 36.017292, 24.583853>,  <33.047173, 35.930294, 24.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259624, 36.017292, 24.583853>,  <33.613708, 36.162289, 24.700470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259624, 36.017292, 24.583853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422209, 0.362967, 0.830659,
		-0.195286, 0.858402, -0.474351,
		-0.885213, -0.362491, -0.291543,
		32.994061, 35.908546, 24.496389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070015, 36.718410, 24.993376>,  <33.613708, 36.162289, 24.700470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070015, 36.718410, 24.993376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870075, 36.388779, 24.886763>,  <32.750111, 36.190998, 24.822794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870075, 36.388779, 24.886763>,  <33.070015, 36.718410, 24.993376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870075, 36.388779, 24.886763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706564, 0.210008, 0.675769,
		-0.500913, 0.526108, -0.687238,
		-0.499853, -0.824080, -0.266533,
		32.720119, 36.141556, 24.806803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314701, 36.822262, 25.162716>,  <33.070015, 36.718410, 24.993376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314701, 36.822262, 25.162716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314438, 36.424175, 25.123646>,  <32.314281, 36.185322, 25.100204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314438, 36.424175, 25.123646>,  <32.314701, 36.822262, 25.162716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314438, 36.424175, 25.123646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496628, -0.084454, 0.863845,
		-0.867963, 0.049076, -0.494197,
		-0.000657, -0.995218, -0.097676,
		32.314240, 36.125610, 25.094343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680073, 36.635246, 25.130949>,  <32.314701, 36.822262, 25.162716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680073, 36.635246, 25.130949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899044, 36.336704, 25.282358>,  <32.030426, 36.157578, 25.373203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899044, 36.336704, 25.282358>,  <31.680073, 36.635246, 25.130949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899044, 36.336704, 25.282358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580394, -0.012754, 0.814236,
		-0.602880, -0.665427, -0.440162,
		0.547428, -0.746354, 0.378521,
		32.063274, 36.112797, 25.395914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265543, 36.424011, 25.664240>,  <31.680073, 36.635246, 25.130949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265543, 36.424011, 25.664240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620367, 36.254066, 25.736483>,  <31.833261, 36.152100, 25.779829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620367, 36.254066, 25.736483>,  <31.265543, 36.424011, 25.664240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620367, 36.254066, 25.736483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236217, -0.081581, 0.968270,
		-0.396649, -0.901573, -0.172728,
		0.887057, -0.424865, 0.180608,
		31.886484, 36.126606, 25.790665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145870, 35.790359, 26.187410>,  <31.265543, 36.424011, 25.664240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145870, 35.790359, 26.187410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532299, 35.886616, 26.224926>,  <31.764156, 35.944370, 26.247435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532299, 35.886616, 26.224926>,  <31.145870, 35.790359, 26.187410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532299, 35.886616, 26.224926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065564, -0.122749, 0.990270,
		0.249808, -0.962822, -0.102808,
		0.966073, 0.240637, 0.093790,
		31.822121, 35.958805, 26.253063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522730, 35.273132, 26.635561>,  <31.145870, 35.790359, 26.187410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522730, 35.273132, 26.635561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722210, 35.619514, 26.650669>,  <31.841898, 35.827343, 26.659735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722210, 35.619514, 26.650669>,  <31.522730, 35.273132, 26.635561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722210, 35.619514, 26.650669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023031, -0.030324, 0.999275,
		0.866469, -0.499207, 0.004821,
		0.498698, 0.865952, 0.037772,
		31.871820, 35.879299, 26.662001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042294, 35.185238, 27.077551>,  <31.522730, 35.273132, 26.635561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042294, 35.185238, 27.077551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070038, 35.584229, 27.071484>,  <32.086685, 35.823624, 27.067842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070038, 35.584229, 27.071484>,  <32.042294, 35.185238, 27.077551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070038, 35.584229, 27.071484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095063, 0.008528, 0.995435,
		0.993052, -0.070490, -0.094231,
		0.069365, 0.997476, -0.015170,
		32.090847, 35.883472, 27.066933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675793, 35.313446, 27.403048>,  <32.042294, 35.185238, 27.077551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675793, 35.313446, 27.403048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433460, 35.630062, 27.435122>,  <32.288059, 35.820030, 27.454367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433460, 35.630062, 27.435122>,  <32.675793, 35.313446, 27.403048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433460, 35.630062, 27.435122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179053, 0.037449, 0.983126,
		0.775182, 0.609967, -0.164416,
		-0.605832, 0.791541, 0.080186,
		32.251709, 35.867523, 27.459177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968311, 35.708309, 27.847931>,  <32.675793, 35.313446, 27.403048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968311, 35.708309, 27.847931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593407, 35.847759, 27.847368>,  <32.368465, 35.931431, 27.847031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593407, 35.847759, 27.847368>,  <32.968311, 35.708309, 27.847931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593407, 35.847759, 27.847368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050040, 0.138515, 0.989096,
		0.345022, 0.926969, -0.147270,
		-0.937260, 0.348629, -0.001405,
		32.312229, 35.952347, 27.846947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098202, 36.341885, 28.281019>,  <32.968311, 35.708309, 27.847931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098202, 36.341885, 28.281019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713963, 36.232704, 28.301970>,  <32.483418, 36.167194, 28.314539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713963, 36.232704, 28.301970>,  <33.098202, 36.341885, 28.281019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713963, 36.232704, 28.301970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049199, 0.352468, 0.934530,
		-0.273546, 0.895132, -0.352010,
		-0.960600, -0.272956, 0.052376,
		32.425781, 36.150818, 28.317682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797482, 36.818569, 28.641026>,  <33.098202, 36.341885, 28.281019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797482, 36.818569, 28.641026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493717, 36.558399, 28.647289>,  <32.311459, 36.402298, 28.651047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493717, 36.558399, 28.647289>,  <32.797482, 36.818569, 28.641026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493717, 36.558399, 28.647289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345620, 0.423687, 0.837279,
		-0.551223, 0.630424, -0.546552,
		-0.759408, -0.650427, 0.015659,
		32.265896, 36.363270, 28.651987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171028, 37.183659, 28.919956>,  <32.797482, 36.818569, 28.641026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171028, 37.183659, 28.919956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119591, 36.791496, 28.979650>,  <32.088726, 36.556198, 29.015467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119591, 36.791496, 28.979650>,  <32.171028, 37.183659, 28.919956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119591, 36.791496, 28.979650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314045, 0.183002, 0.931604,
		-0.940659, 0.072935, -0.331424,
		-0.128598, -0.980404, 0.149238,
		32.081013, 36.497375, 29.024422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513462, 37.014359, 29.204494>,  <32.171028, 37.183659, 28.919956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513462, 37.014359, 29.204494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753994, 36.713219, 29.311548>,  <31.898314, 36.532536, 29.375780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753994, 36.713219, 29.311548>,  <31.513462, 37.014359, 29.204494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753994, 36.713219, 29.311548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278834, 0.116176, 0.953286,
		-0.748770, -0.647863, -0.140059,
		0.601327, -0.752845, 0.267636,
		31.934393, 36.487366, 29.391838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096264, 36.627182, 29.568655>,  <31.513462, 37.014359, 29.204494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096264, 36.627182, 29.568655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466463, 36.524265, 29.679831>,  <31.688583, 36.462513, 29.746536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466463, 36.524265, 29.679831>,  <31.096264, 36.627182, 29.568655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466463, 36.524265, 29.679831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262425, 0.093519, 0.960410,
		-0.273103, -0.961796, 0.019031,
		0.925499, -0.257297, 0.277939,
		31.744112, 36.447075, 29.763212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021891, 36.127689, 30.100245>,  <31.096264, 36.627182, 29.568655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021891, 36.127689, 30.100245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382164, 36.295197, 30.146557>,  <31.598328, 36.395699, 30.174345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382164, 36.295197, 30.146557>,  <31.021891, 36.127689, 30.100245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382164, 36.295197, 30.146557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200425, 0.164025, 0.965881,
		0.385488, -0.893157, 0.231665,
		0.900683, 0.418767, 0.115781,
		31.652369, 36.420826, 30.181292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309111, 35.729885, 30.712639>,  <31.021891, 36.127689, 30.100245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309111, 35.729885, 30.712639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568262, 36.034527, 30.718401>,  <31.723753, 36.217312, 30.721859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568262, 36.034527, 30.718401>,  <31.309111, 35.729885, 30.712639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568262, 36.034527, 30.718401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127100, 0.089438, 0.987849,
		0.751063, -0.641839, 0.154745,
		0.647881, 0.761606, 0.014405,
		31.762627, 36.263008, 30.722723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738766, 35.536613, 31.270054>,  <31.309111, 35.729885, 30.712639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738766, 35.536613, 31.270054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812958, 35.922707, 31.196375>,  <31.857473, 36.154362, 31.152166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812958, 35.922707, 31.196375>,  <31.738766, 35.536613, 31.270054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812958, 35.922707, 31.196375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102654, 0.167393, 0.980531,
		0.977271, -0.200779, -0.068036,
		0.185481, 0.965229, -0.184199,
		31.868603, 36.212276, 31.141115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223492, 35.626480, 31.661259>,  <31.738766, 35.536613, 31.270054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223492, 35.626480, 31.661259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065685, 35.989170, 31.601635>,  <31.971003, 36.206783, 31.565861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065685, 35.989170, 31.601635>,  <32.223492, 35.626480, 31.661259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065685, 35.989170, 31.601635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087764, 0.198654, 0.976132,
		0.914690, 0.372014, -0.157949,
		-0.394512, 0.906721, -0.149057,
		31.947332, 36.261185, 31.556917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731136, 36.161373, 31.938335>,  <32.223492, 35.626480, 31.661259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731136, 36.161373, 31.938335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363430, 36.318611, 31.946573>,  <32.142807, 36.412956, 31.951515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363430, 36.318611, 31.946573>,  <32.731136, 36.161373, 31.938335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363430, 36.318611, 31.946573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202629, 0.427704, 0.880915,
		0.337477, 0.813968, -0.472827,
		-0.919266, 0.393097, 0.020594,
		32.087650, 36.436539, 31.952751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515831, 36.249695, 32.152561>,  <32.731136, 36.161373, 31.938335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515831, 36.249695, 32.152561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808598, 36.436989, 32.350578>,  <33.984257, 36.549366, 32.469387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808598, 36.436989, 32.350578>,  <33.515831, 36.249695, 32.152561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808598, 36.436989, 32.350578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284288, 0.450421, -0.846346,
		-0.619261, 0.760185, 0.196557,
		0.731912, 0.468230, 0.495040,
		34.028172, 36.577457, 32.499092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603092, 36.912937, 31.858704>,  <33.515831, 36.249695, 32.152561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603092, 36.912937, 31.858704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933762, 36.894646, 32.083031>,  <34.132164, 36.883671, 32.217628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933762, 36.894646, 32.083031>,  <33.603092, 36.912937, 31.858704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933762, 36.894646, 32.083031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532830, 0.383941, -0.754110,
		-0.180833, 0.922225, 0.341762,
		0.826675, -0.045733, 0.560818,
		34.181763, 36.880924, 32.251278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987534, 37.617786, 31.716887>,  <33.603092, 36.912937, 31.858704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987534, 37.617786, 31.716887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262539, 37.352131, 31.834354>,  <34.427544, 37.192738, 31.904835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262539, 37.352131, 31.834354>,  <33.987534, 37.617786, 31.716887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262539, 37.352131, 31.834354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559136, 0.226117, -0.797645,
		0.463342, 0.712596, 0.526803,
		0.687518, -0.664137, 0.293669,
		34.468796, 37.152889, 31.922455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552032, 37.890858, 31.372574>,  <33.987534, 37.617786, 31.716887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552032, 37.890858, 31.372574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641216, 37.512508, 31.466909>,  <34.694725, 37.285500, 31.523512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641216, 37.512508, 31.466909>,  <34.552032, 37.890858, 31.372574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641216, 37.512508, 31.466909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567778, -0.070657, -0.820144,
		0.792413, 0.316764, 0.521290,
		0.222959, -0.945869, 0.235841,
		34.708103, 37.228748, 31.537663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226639, 37.889767, 31.173712>,  <34.552032, 37.890858, 31.372574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226639, 37.889767, 31.173712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106262, 37.509342, 31.201729>,  <35.034035, 37.281086, 31.218540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106262, 37.509342, 31.201729>,  <35.226639, 37.889767, 31.173712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106262, 37.509342, 31.201729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462463, -0.209781, -0.861464,
		0.834003, -0.226860, 0.502966,
		-0.300944, -0.951066, 0.070044,
		35.015980, 37.224022, 31.222742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773731, 37.506844, 30.941051>,  <35.226639, 37.889767, 31.173712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773731, 37.506844, 30.941051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448811, 37.273560, 30.938795>,  <35.253857, 37.133591, 30.937441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448811, 37.273560, 30.938795>,  <35.773731, 37.506844, 30.941051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448811, 37.273560, 30.938795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243729, -0.330647, -0.911739,
		0.529871, -0.741982, 0.410731,
		-0.812301, -0.583212, -0.005642,
		35.205120, 37.098595, 30.937103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949944, 36.762974, 30.642332>,  <35.773731, 37.506844, 30.941051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949944, 36.762974, 30.642332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556377, 36.817486, 30.596125>,  <35.320240, 36.850193, 30.568401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556377, 36.817486, 30.596125>,  <35.949944, 36.762974, 30.642332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556377, 36.817486, 30.596125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049336, -0.414178, -0.908858,
		-0.171705, -0.899936, 0.400791,
		-0.983913, 0.136282, -0.115516,
		35.261204, 36.858372, 30.561470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588097, 36.128086, 30.316574>,  <35.949944, 36.762974, 30.642332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588097, 36.128086, 30.316574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367405, 36.455044, 30.250301>,  <35.234989, 36.651218, 30.210537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367405, 36.455044, 30.250301>,  <35.588097, 36.128086, 30.316574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367405, 36.455044, 30.250301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118719, -0.273604, -0.954488,
		-0.825529, -0.506951, 0.247997,
		-0.551732, 0.817399, -0.165683,
		35.201885, 36.700264, 30.200596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221291, 35.814892, 29.804674>,  <35.588097, 36.128086, 30.316574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221291, 35.814892, 29.804674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152229, 36.205589, 29.753807>,  <35.110794, 36.440006, 29.723288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152229, 36.205589, 29.753807>,  <35.221291, 35.814892, 29.804674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152229, 36.205589, 29.753807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122934, -0.106727, -0.986659,
		-0.977281, -0.185983, -0.101648,
		-0.172653, 0.976739, -0.127166,
		35.100433, 36.498611, 29.715658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887913, 35.754593, 29.165354>,  <35.221291, 35.814892, 29.804674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887913, 35.754593, 29.165354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978386, 36.141006, 29.215334>,  <35.032669, 36.372856, 29.245321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978386, 36.141006, 29.215334>,  <34.887913, 35.754593, 29.165354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978386, 36.141006, 29.215334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019685, 0.123713, -0.992123,
		-0.973886, 0.226863, 0.008965,
		0.226185, 0.966038, 0.124948,
		35.046242, 36.430817, 29.252819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359962, 36.159988, 28.797459>,  <34.887913, 35.754593, 29.165354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359962, 36.159988, 28.797459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688313, 36.387280, 28.820377>,  <34.885323, 36.523655, 28.834127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688313, 36.387280, 28.820377>,  <34.359962, 36.159988, 28.797459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688313, 36.387280, 28.820377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050263, 0.171813, -0.983847,
		-0.568895, 0.804733, 0.169597,
		0.820873, 0.568230, 0.057295,
		34.934574, 36.557747, 28.837566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302654, 36.732170, 28.351435>,  <34.359962, 36.159988, 28.797459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302654, 36.732170, 28.351435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698460, 36.732750, 28.409214>,  <34.935944, 36.733097, 28.443882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698460, 36.732750, 28.409214>,  <34.302654, 36.732170, 28.351435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698460, 36.732750, 28.409214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138349, 0.278122, -0.950530,
		-0.041556, 0.960545, 0.275004,
		0.989511, 0.001454, 0.144448,
		34.995312, 36.733185, 28.452549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640007, 37.401592, 28.127995>,  <34.302654, 36.732170, 28.351435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640007, 37.401592, 28.127995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931721, 37.128128, 28.138958>,  <35.106750, 36.964050, 28.145536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931721, 37.128128, 28.138958>,  <34.640007, 37.401592, 28.127995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931721, 37.128128, 28.138958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221567, 0.198078, -0.954816,
		0.647340, 0.702407, 0.295932,
		0.729286, -0.683659, 0.027407,
		35.150505, 36.923031, 28.147181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131783, 37.760677, 27.733429>,  <34.640007, 37.401592, 28.127995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131783, 37.760677, 27.733429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224873, 37.371704, 27.739288>,  <35.280727, 37.138321, 27.742804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224873, 37.371704, 27.739288>,  <35.131783, 37.760677, 27.733429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224873, 37.371704, 27.739288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197107, 0.032413, -0.979846,
		0.952359, 0.230924, 0.199216,
		0.232727, -0.972432, 0.014648,
		35.294689, 37.079975, 27.743683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785210, 37.713776, 27.414476>,  <35.131783, 37.760677, 27.733429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785210, 37.713776, 27.414476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621532, 37.349438, 27.392878>,  <35.523327, 37.130833, 27.379919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621532, 37.349438, 27.392878>,  <35.785210, 37.713776, 27.414476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621532, 37.349438, 27.392878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362426, -0.107940, -0.925741,
		0.837381, -0.398378, 0.374284,
		-0.409195, -0.910848, -0.053996,
		35.498775, 37.076183, 27.376678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056690, 37.366421, 26.794529>,  <35.785210, 37.713776, 27.414476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056690, 37.366421, 26.794529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762596, 37.109566, 26.881330>,  <35.586140, 36.955452, 26.933411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762596, 37.109566, 26.881330>,  <36.056690, 37.366421, 26.794529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762596, 37.109566, 26.881330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084843, -0.404820, -0.910452,
		0.672481, -0.650985, 0.352119,
		-0.735236, -0.642136, 0.217002,
		35.542027, 36.916924, 26.946430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376892, 36.677582, 26.643492>,  <36.056690, 37.366421, 26.794529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376892, 36.677582, 26.643492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979626, 36.670555, 26.597338>,  <35.741264, 36.666340, 26.569645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979626, 36.670555, 26.597338>,  <36.376892, 36.677582, 26.643492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979626, 36.670555, 26.597338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114452, -0.340339, -0.933311,
		-0.022873, -0.940138, 0.340024,
		-0.993166, -0.017569, -0.115385,
		35.681675, 36.665283, 26.562721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247467, 36.139908, 26.304634>,  <36.376892, 36.677582, 26.643492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247467, 36.139908, 26.304634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891495, 36.317677, 26.263607>,  <35.677914, 36.424339, 26.238991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891495, 36.317677, 26.263607>,  <36.247467, 36.139908, 26.304634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891495, 36.317677, 26.263607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047758, -0.314435, -0.948077,
		-0.453596, -0.838821, 0.301049,
		-0.889927, 0.444421, -0.102566,
		35.624516, 36.451004, 26.232838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833309, 35.726986, 25.979456>,  <36.247467, 36.139908, 26.304634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833309, 35.726986, 25.979456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578255, 36.029682, 25.921814>,  <35.425224, 36.211300, 25.887228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578255, 36.029682, 25.921814>,  <35.833309, 35.726986, 25.979456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578255, 36.029682, 25.921814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029639, -0.211028, -0.977031,
		-0.769769, -0.618717, 0.156988,
		-0.637634, 0.756741, -0.144105,
		35.386963, 36.256706, 25.878582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256229, 35.438206, 25.681334>,  <35.833309, 35.726986, 25.979456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256229, 35.438206, 25.681334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278660, 35.820644, 25.566280>,  <35.292118, 36.050106, 25.497248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278660, 35.820644, 25.566280>,  <35.256229, 35.438206, 25.681334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278660, 35.820644, 25.566280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132833, -0.278383, -0.951240,
		-0.989551, 0.091546, 0.111391,
		0.056073, 0.956097, -0.287635,
		35.295483, 36.107475, 25.479990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726055, 35.504246, 25.287737>,  <35.256229, 35.438206, 25.681334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726055, 35.504246, 25.287737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977455, 35.790775, 25.166500>,  <35.128296, 35.962692, 25.093758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977455, 35.790775, 25.166500>,  <34.726055, 35.504246, 25.287737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977455, 35.790775, 25.166500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073111, -0.333543, -0.939896,
		-0.774365, 0.612885, -0.157261,
		0.628501, 0.716325, -0.303092,
		35.166004, 36.005672, 25.075573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505653, 35.684216, 24.637560>,  <34.726055, 35.504246, 25.287737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505653, 35.684216, 24.637560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872833, 35.842434, 24.649609>,  <35.093143, 35.937363, 24.656837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872833, 35.842434, 24.649609>,  <34.505653, 35.684216, 24.637560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872833, 35.842434, 24.649609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148818, -0.272987, -0.950437,
		-0.367714, 0.876941, -0.309453,
		0.917954, 0.395541, 0.030124,
		35.148220, 35.961098, 24.658646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517258, 36.149467, 24.160109>,  <34.505653, 35.684216, 24.637560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517258, 36.149467, 24.160109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900818, 36.060154, 24.230148>,  <35.130955, 36.006565, 24.272173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900818, 36.060154, 24.230148>,  <34.517258, 36.149467, 24.160109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900818, 36.060154, 24.230148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106632, -0.288303, -0.951583,
		0.262954, 0.931142, -0.252644,
		0.958898, -0.223283, 0.175100,
		35.188488, 35.993168, 24.282679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829819, 36.522594, 23.622423>,  <34.517258, 36.149467, 24.160109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829819, 36.522594, 23.622423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084339, 36.238251, 23.742287>,  <35.237053, 36.067642, 23.814205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084339, 36.238251, 23.742287>,  <34.829819, 36.522594, 23.622423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084339, 36.238251, 23.742287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265418, -0.162993, -0.950256,
		0.724342, 0.684185, 0.084962,
		0.636303, -0.710861, 0.299658,
		35.275230, 36.024994, 23.832184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388580, 36.655010, 23.204002>,  <34.829819, 36.522594, 23.622423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388580, 36.655010, 23.204002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450974, 36.292118, 23.360262>,  <35.488411, 36.074383, 23.454018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450974, 36.292118, 23.360262>,  <35.388580, 36.655010, 23.204002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450974, 36.292118, 23.360262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465206, -0.281404, -0.839282,
		0.871350, 0.312648, 0.378153,
		0.155987, -0.907228, 0.390647,
		35.497768, 36.019951, 23.477455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061756, 36.461224, 23.034458>,  <35.388580, 36.655010, 23.204002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061756, 36.461224, 23.034458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908798, 36.097733, 23.101376>,  <35.817024, 35.879639, 23.141527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908798, 36.097733, 23.101376>,  <36.061756, 36.461224, 23.034458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908798, 36.097733, 23.101376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386893, -0.321891, -0.864118,
		0.839098, -0.265713, 0.474670,
		-0.382399, -0.908726, 0.167296,
		35.794079, 35.825115, 23.151564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575603, 35.926395, 23.161243>,  <36.061756, 36.461224, 23.034458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575603, 35.926395, 23.161243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263580, 35.725227, 23.012341>,  <36.076366, 35.604527, 22.922998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263580, 35.725227, 23.012341>,  <36.575603, 35.926395, 23.161243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263580, 35.725227, 23.012341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599484, -0.430300, -0.674879,
		0.179225, -0.749611, 0.637152,
		-0.780062, -0.502917, -0.372259,
		36.029560, 35.574352, 22.900663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971718, 35.424118, 22.921936>,  <36.575603, 35.926395, 23.161243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971718, 35.424118, 22.921936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625355, 35.395893, 22.723856>,  <36.417538, 35.378960, 22.605007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625355, 35.395893, 22.723856>,  <36.971718, 35.424118, 22.921936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625355, 35.395893, 22.723856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471816, -0.443965, -0.761764,
		-0.166102, -0.893261, 0.417725,
		-0.865909, -0.070559, -0.495199,
		36.365582, 35.374725, 22.575296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897060, 34.689690, 22.696865>,  <36.971718, 35.424118, 22.921936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897060, 34.689690, 22.696865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656509, 34.917259, 22.472483>,  <36.512180, 35.053802, 22.337852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656509, 34.917259, 22.472483>,  <36.897060, 34.689690, 22.696865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656509, 34.917259, 22.472483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344778, -0.448573, -0.824566,
		-0.720746, -0.689280, 0.073609,
		-0.601376, 0.568924, -0.560956,
		36.476097, 35.087936, 22.304195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598606, 34.202614, 22.299604>,  <36.897060, 34.689690, 22.696865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598606, 34.202614, 22.299604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574337, 34.546188, 22.096216>,  <36.559776, 34.752335, 21.974184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574337, 34.546188, 22.096216>,  <36.598606, 34.202614, 22.299604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574337, 34.546188, 22.096216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266709, -0.476936, -0.837495,
		-0.961865, -0.186430, -0.200148,
		-0.060677, 0.858939, -0.508471,
		36.556133, 34.803871, 21.943674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468052, 34.051212, 21.676025>,  <36.598606, 34.202614, 22.299604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468052, 34.051212, 21.676025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561020, 34.421101, 21.555443>,  <36.616802, 34.643032, 21.483093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561020, 34.421101, 21.555443>,  <36.468052, 34.051212, 21.676025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561020, 34.421101, 21.555443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217418, -0.351498, -0.910593,
		-0.948004, 0.146097, -0.282745,
		0.232419, 0.924719, -0.301457,
		36.630745, 34.698517, 21.465006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259892, 34.169243, 21.008099>,  <36.468052, 34.051212, 21.676025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259892, 34.169243, 21.008099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555214, 34.436131, 21.047543>,  <36.732407, 34.596264, 21.071209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555214, 34.436131, 21.047543>,  <36.259892, 34.169243, 21.008099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555214, 34.436131, 21.047543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301545, -0.195763, -0.933138,
		-0.603299, 0.718680, -0.345729,
		0.738309, 0.667215, 0.098610,
		36.776707, 34.636295, 21.077126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402645, 34.336060, 20.319542>,  <36.259892, 34.169243, 21.008099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402645, 34.336060, 20.319542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701023, 34.547863, 20.481125>,  <36.880051, 34.674946, 20.578075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701023, 34.547863, 20.481125>,  <36.402645, 34.336060, 20.319542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701023, 34.547863, 20.481125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535931, -0.117146, -0.836095,
		-0.395396, 0.840179, -0.371163,
		0.745950, 0.529506, 0.403958,
		36.924809, 34.706715, 20.602312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606342, 34.822300, 19.817678>,  <36.402645, 34.336060, 20.319542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606342, 34.822300, 19.817678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926258, 34.791672, 20.055828>,  <37.118206, 34.773296, 20.198719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926258, 34.791672, 20.055828>,  <36.606342, 34.822300, 19.817678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926258, 34.791672, 20.055828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595444, -0.024447, -0.803025,
		0.076040, 0.996765, 0.026039,
		0.799790, -0.076567, 0.595376,
		37.166195, 34.768703, 20.234442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195511, 35.211483, 19.459646>,  <36.606342, 34.822300, 19.817678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195511, 35.211483, 19.459646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410480, 34.999008, 19.721643>,  <37.539463, 34.871525, 19.878841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410480, 34.999008, 19.721643>,  <37.195511, 35.211483, 19.459646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410480, 34.999008, 19.721643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629618, -0.263975, -0.730684,
		0.561030, 0.805083, 0.192577,
		0.537426, -0.531186, 0.654992,
		37.571709, 34.839653, 19.918140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987679, 35.410015, 19.432266>,  <37.195511, 35.211483, 19.459646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987679, 35.410015, 19.432266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983192, 35.049301, 19.605082>,  <37.980499, 34.832874, 19.708771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983192, 35.049301, 19.605082>,  <37.987679, 35.410015, 19.432266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983192, 35.049301, 19.605082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805956, -0.263893, -0.529901,
		0.591869, 0.342261, 0.729759,
		-0.011214, -0.901786, 0.432038,
		37.979828, 34.778767, 19.734694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720352, 35.259792, 19.686819>,  <37.987679, 35.410015, 19.432266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720352, 35.259792, 19.686819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559086, 34.895214, 19.654030>,  <38.462326, 34.676468, 19.634356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559086, 34.895214, 19.654030>,  <38.720352, 35.259792, 19.686819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559086, 34.895214, 19.654030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764886, -0.286446, -0.576973,
		0.502400, -0.295317, 0.812639,
		-0.403167, -0.911447, -0.081973,
		38.438137, 34.621780, 19.629438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262051, 34.729855, 19.895615>,  <38.720352, 35.259792, 19.686819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262051, 34.729855, 19.895615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989479, 34.554573, 19.661135>,  <38.825935, 34.449406, 19.520447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989479, 34.554573, 19.661135>,  <39.262051, 34.729855, 19.895615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989479, 34.554573, 19.661135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721289, -0.266303, -0.639395,
		0.124080, -0.858521, 0.497539,
		-0.681430, -0.438205, -0.586199,
		38.785049, 34.423111, 19.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863995, 34.317158, 19.749296>,  <39.262051, 34.729855, 19.895615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863995, 34.317158, 19.749296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944473, 33.925999, 19.772060>,  <39.992760, 33.691303, 19.785719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944473, 33.925999, 19.772060>,  <39.863995, 34.317158, 19.749296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944473, 33.925999, 19.772060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637822, -0.086690, 0.765290,
		-0.743440, -0.190274, -0.641165,
		0.201197, -0.977896, 0.056912,
		40.004833, 33.632629, 19.789133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265263, 33.832138, 19.661200>,  <39.863995, 34.317158, 19.749296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265263, 33.832138, 19.661200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528442, 33.675686, 19.918608>,  <39.686348, 33.581814, 20.073053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528442, 33.675686, 19.918608>,  <39.265263, 33.832138, 19.661200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528442, 33.675686, 19.918608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671516, 0.082044, 0.736434,
		-0.340841, -0.916670, -0.208672,
		0.657946, -0.391134, 0.643523,
		39.725826, 33.558346, 20.111664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019775, 33.213028, 19.958504>,  <39.265263, 33.832138, 19.661200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019775, 33.213028, 19.958504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274578, 33.363594, 20.227585>,  <39.427460, 33.453934, 20.389034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274578, 33.363594, 20.227585>,  <39.019775, 33.213028, 19.958504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274578, 33.363594, 20.227585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699633, -0.084051, 0.709542,
		0.323622, -0.922631, 0.209810,
		0.637011, 0.376413, 0.672704,
		39.465683, 33.476517, 20.429396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711529, 33.086296, 20.559937>,  <39.019775, 33.213028, 19.958504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711529, 33.086296, 20.559937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017204, 33.295364, 20.711103>,  <39.200611, 33.420807, 20.801804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017204, 33.295364, 20.711103>,  <38.711529, 33.086296, 20.559937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017204, 33.295364, 20.711103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432724, -0.019025, 0.901326,
		0.478289, -0.852320, 0.211634,
		0.764192, 0.522674, 0.377919,
		39.246464, 33.452168, 20.824480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983337, 32.663948, 21.157618>,  <38.711529, 33.086296, 20.559937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983337, 32.663948, 21.157618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085957, 33.047825, 21.203524>,  <39.147526, 33.278152, 21.231068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085957, 33.047825, 21.203524>,  <38.983337, 32.663948, 21.157618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085957, 33.047825, 21.203524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371828, -0.011607, 0.928229,
		0.892148, -0.280806, 0.353864,
		0.256545, 0.959694, 0.114766,
		39.162922, 33.335732, 21.237953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487839, 32.623608, 21.698507>,  <38.983337, 32.663948, 21.157618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487839, 32.623608, 21.698507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342480, 32.996258, 21.700182>,  <39.255264, 33.219849, 21.701187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342480, 32.996258, 21.700182>,  <39.487839, 32.623608, 21.698507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342480, 32.996258, 21.700182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173992, -0.072281, 0.982091,
		0.915242, 0.356162, 0.188362,
		-0.363398, 0.931625, 0.004186,
		39.233459, 33.275745, 21.701437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830685, 33.033638, 22.288919>,  <39.487839, 32.623608, 21.698507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830685, 33.033638, 22.288919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483063, 33.215366, 22.210608>,  <39.274490, 33.324402, 22.163620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483063, 33.215366, 22.210608>,  <39.830685, 33.033638, 22.288919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483063, 33.215366, 22.210608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188552, 0.061690, 0.980124,
		0.457368, 0.888700, 0.032051,
		-0.869059, 0.454320, -0.195781,
		39.222343, 33.351662, 22.151873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681950, 33.412460, 22.976721>,  <39.830685, 33.033638, 22.288919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681950, 33.412460, 22.976721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339664, 33.412819, 22.769741>,  <39.134293, 33.413033, 22.645554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339664, 33.412819, 22.769741>,  <39.681950, 33.412460, 22.976721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339664, 33.412819, 22.769741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516068, -0.074533, 0.853299,
		-0.037805, 0.997218, 0.064240,
		-0.855713, 0.000894, -0.517450,
		39.082951, 33.413086, 22.614506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319798, 34.032440, 23.310287>,  <39.681950, 33.412460, 22.976721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319798, 34.032440, 23.310287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047966, 33.802143, 23.128435>,  <38.884865, 33.663963, 23.019323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047966, 33.802143, 23.128435>,  <39.319798, 34.032440, 23.310287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047966, 33.802143, 23.128435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550603, -0.009215, 0.834716,
		-0.484772, 0.817579, -0.310744,
		-0.679583, -0.575744, -0.454629,
		38.844090, 33.629421, 22.992046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669003, 34.304947, 23.390093>,  <39.319798, 34.032440, 23.310287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669003, 34.304947, 23.390093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600216, 33.914783, 23.334949>,  <38.558945, 33.680687, 23.301865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600216, 33.914783, 23.334949>,  <38.669003, 34.304947, 23.390093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600216, 33.914783, 23.334949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525884, -0.027434, 0.850114,
		-0.832991, 0.218690, -0.508234,
		-0.171969, -0.975409, -0.137858,
		38.548626, 33.622162, 23.293592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958553, 34.249142, 23.551426>,  <38.669003, 34.304947, 23.390093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958553, 34.249142, 23.551426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093155, 33.872471, 23.549864>,  <38.173916, 33.646469, 23.548925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093155, 33.872471, 23.549864>,  <37.958553, 34.249142, 23.551426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093155, 33.872471, 23.549864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568218, -0.206358, 0.796583,
		-0.750927, -0.265836, -0.604517,
		0.336507, -0.941673, -0.003907,
		38.194107, 33.589970, 23.548693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439671, 33.970783, 23.281071>,  <37.958553, 34.249142, 23.551426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439671, 33.970783, 23.281071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664471, 33.751389, 23.528721>,  <37.799351, 33.619751, 23.677311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664471, 33.751389, 23.528721>,  <37.439671, 33.970783, 23.281071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664471, 33.751389, 23.528721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734286, 0.013726, 0.678701,
		-0.380756, -0.836047, -0.395031,
		0.562004, -0.548486, 0.619124,
		37.833073, 33.586842, 23.714458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940807, 33.427677, 23.621580>,  <37.439671, 33.970783, 23.281071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940807, 33.427677, 23.621580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260147, 33.392826, 23.859922>,  <37.451752, 33.371914, 24.002928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260147, 33.392826, 23.859922>,  <36.940807, 33.427677, 23.621580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260147, 33.392826, 23.859922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589278, 0.090778, 0.802814,
		-0.124041, -0.992052, 0.021128,
		0.798351, -0.087132, 0.595855,
		37.499653, 33.366688, 24.038679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704132, 32.955391, 24.144262>,  <36.940807, 33.427677, 23.621580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704132, 32.955391, 24.144262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019714, 33.150620, 24.293573>,  <37.209064, 33.267757, 24.383160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019714, 33.150620, 24.293573>,  <36.704132, 32.955391, 24.144262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019714, 33.150620, 24.293573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522739, 0.213851, 0.825234,
		0.322951, -0.846197, 0.423855,
		0.788953, 0.488076, 0.373277,
		37.256401, 33.297043, 24.405556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847588, 32.731735, 24.842602>,  <36.704132, 32.955391, 24.144262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847588, 32.731735, 24.842602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010090, 33.097153, 24.834703>,  <37.107594, 33.316402, 24.829964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010090, 33.097153, 24.834703>,  <36.847588, 32.731735, 24.842602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010090, 33.097153, 24.834703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299177, 0.153403, 0.941786,
		0.863392, -0.376702, 0.335633,
		0.406260, 0.913544, -0.019746,
		37.131969, 33.371216, 24.828779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202858, 32.821857, 25.462425>,  <36.847588, 32.731735, 24.842602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202858, 32.821857, 25.462425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158802, 33.202412, 25.347372>,  <37.132370, 33.430744, 25.278339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158802, 33.202412, 25.347372>,  <37.202858, 32.821857, 25.462425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158802, 33.202412, 25.347372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383165, 0.226384, 0.895508,
		0.917090, 0.208842, 0.339604,
		-0.110139, 0.951386, -0.287635,
		37.125759, 33.487827, 25.261082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606422, 33.216393, 25.986692>,  <37.202858, 32.821857, 25.462425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606422, 33.216393, 25.986692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327785, 33.447243, 25.816193>,  <37.160603, 33.585754, 25.713892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327785, 33.447243, 25.816193>,  <37.606422, 33.216393, 25.986692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327785, 33.447243, 25.816193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261259, 0.349273, 0.899862,
		0.668213, 0.738195, -0.092520,
		-0.696589, 0.577128, -0.426249,
		37.118809, 33.620380, 25.688318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732727, 33.746353, 26.327822>,  <37.606422, 33.216393, 25.986692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732727, 33.746353, 26.327822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375801, 33.814789, 26.160730>,  <37.161644, 33.855850, 26.060476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375801, 33.814789, 26.160730>,  <37.732727, 33.746353, 26.327822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375801, 33.814789, 26.160730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324220, 0.400969, 0.856799,
		0.314087, 0.899973, -0.302320,
		-0.892317, 0.171092, -0.417729,
		37.108105, 33.866116, 26.035412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615650, 34.498505, 26.352642>,  <37.732727, 33.746353, 26.327822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615650, 34.498505, 26.352642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248127, 34.346928, 26.308462>,  <37.027615, 34.255981, 26.281954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248127, 34.346928, 26.308462>,  <37.615650, 34.498505, 26.352642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248127, 34.346928, 26.308462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310240, 0.520329, 0.795618,
		-0.244024, 0.765284, -0.595644,
		-0.918805, -0.378943, -0.110450,
		36.972485, 34.233246, 26.275328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093445, 35.089771, 26.334402>,  <37.615650, 34.498505, 26.352642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093445, 35.089771, 26.334402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903198, 34.757408, 26.449913>,  <36.789051, 34.557991, 26.519220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903198, 34.757408, 26.449913>,  <37.093445, 35.089771, 26.334402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903198, 34.757408, 26.449913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243274, 0.439724, 0.864558,
		-0.845347, 0.340942, -0.411275,
		-0.475612, -0.830904, 0.288777,
		36.760513, 34.508137, 26.536547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404339, 35.301559, 26.540173>,  <37.093445, 35.089771, 26.334402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404339, 35.301559, 26.540173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494549, 34.956020, 26.720350>,  <36.548676, 34.748695, 26.828457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494549, 34.956020, 26.720350>,  <36.404339, 35.301559, 26.540173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494549, 34.956020, 26.720350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277287, 0.386315, 0.879700,
		-0.933944, -0.323295, -0.152411,
		0.225524, -0.863852, 0.450442,
		36.562206, 34.696865, 26.855482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921947, 35.314632, 27.069672>,  <36.404339, 35.301559, 26.540173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921947, 35.314632, 27.069672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178406, 35.037579, 27.201847>,  <36.332279, 34.871346, 27.281153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178406, 35.037579, 27.201847>,  <35.921947, 35.314632, 27.069672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178406, 35.037579, 27.201847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112552, 0.341060, 0.933279,
		-0.759122, -0.635558, 0.140711,
		0.641144, -0.692636, 0.330440,
		36.370750, 34.829788, 27.300980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667152, 35.161819, 27.651268>,  <35.921947, 35.314632, 27.069672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667152, 35.161819, 27.651268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000748, 34.956085, 27.731195>,  <36.200905, 34.832645, 27.779152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000748, 34.956085, 27.731195>,  <35.667152, 35.161819, 27.651268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000748, 34.956085, 27.731195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060631, 0.274523, 0.959667,
		-0.548445, -0.812464, 0.197764,
		0.833986, -0.514334, 0.199821,
		36.250942, 34.801785, 27.791142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663597, 34.802227, 28.345577>,  <35.667152, 35.161819, 27.651268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663597, 34.802227, 28.345577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056141, 34.822708, 28.271492>,  <36.291668, 34.834999, 28.227041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056141, 34.822708, 28.271492>,  <35.663597, 34.802227, 28.345577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056141, 34.822708, 28.271492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147923, 0.413916, 0.898216,
		0.122654, -0.908874, 0.398628,
		0.981364, 0.051204, -0.185212,
		36.350552, 34.838070, 28.215929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019115, 34.619347, 28.991291>,  <35.663597, 34.802227, 28.345577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019115, 34.619347, 28.991291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325611, 34.790180, 28.799259>,  <36.509510, 34.892681, 28.684040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325611, 34.790180, 28.799259>,  <36.019115, 34.619347, 28.991291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325611, 34.790180, 28.799259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393120, 0.279407, 0.876007,
		0.508267, -0.859960, 0.046197,
		0.766238, 0.427084, -0.480080,
		36.555481, 34.918304, 28.655235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534103, 34.382172, 29.301878>,  <36.019115, 34.619347, 28.991291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534103, 34.382172, 29.301878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678310, 34.716022, 29.135303>,  <36.764835, 34.916332, 29.035358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678310, 34.716022, 29.135303>,  <36.534103, 34.382172, 29.301878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678310, 34.716022, 29.135303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384845, 0.273589, 0.881500,
		0.849658, -0.478063, -0.222568,
		0.360520, 0.834628, -0.416438,
		36.786465, 34.966412, 29.010372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244987, 34.439484, 29.496916>,  <36.534103, 34.382172, 29.301878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244987, 34.439484, 29.496916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141987, 34.806736, 29.376434>,  <37.080189, 35.027088, 29.304146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141987, 34.806736, 29.376434>,  <37.244987, 34.439484, 29.496916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141987, 34.806736, 29.376434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479879, 0.392068, 0.784856,
		0.838696, 0.057557, -0.541550,
		-0.257498, 0.918134, -0.301205,
		37.064739, 35.082176, 29.286074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817200, 34.896832, 29.514481>,  <37.244987, 34.439484, 29.496916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817200, 34.896832, 29.514481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518181, 35.161945, 29.531879>,  <37.338772, 35.321014, 29.542318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518181, 35.161945, 29.531879>,  <37.817200, 34.896832, 29.514481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518181, 35.161945, 29.531879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361168, 0.350650, 0.864061,
		0.557436, 0.661634, -0.501504,
		-0.747544, 0.662786, 0.043496,
		37.293919, 35.360783, 29.544928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136078, 35.527321, 29.760885>,  <37.817200, 34.896832, 29.514481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136078, 35.527321, 29.760885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744778, 35.558704, 29.837700>,  <37.509998, 35.577534, 29.883789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744778, 35.558704, 29.837700>,  <38.136078, 35.527321, 29.760885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744778, 35.558704, 29.837700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206721, 0.291406, 0.933996,
		0.017323, 0.953376, -0.301286,
		-0.978247, 0.078462, 0.192034,
		37.451305, 35.582241, 29.895309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162861, 36.013454, 30.170519>,  <38.136078, 35.527321, 29.760885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162861, 36.013454, 30.170519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798565, 35.863659, 30.240160>,  <37.579987, 35.773781, 30.281944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798565, 35.863659, 30.240160>,  <38.162861, 36.013454, 30.170519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798565, 35.863659, 30.240160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112747, 0.180095, 0.977166,
		-0.397296, 0.909572, -0.121796,
		-0.910738, -0.374492, 0.174103,
		37.525345, 35.751312, 30.292391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848003, 36.492764, 30.544683>,  <38.162861, 36.013454, 30.170519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848003, 36.492764, 30.544683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655003, 36.154808, 30.637085>,  <37.539204, 35.952034, 30.692526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655003, 36.154808, 30.637085>,  <37.848003, 36.492764, 30.544683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655003, 36.154808, 30.637085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014895, 0.271610, 0.962292,
		-0.875769, 0.460866, -0.143637,
		-0.482501, -0.844885, 0.231002,
		37.510254, 35.901344, 30.706387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421535, 36.650162, 31.152246>,  <37.848003, 36.492764, 30.544683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421535, 36.650162, 31.152246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440567, 36.251099, 31.132601>,  <37.451984, 36.011662, 31.120813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440567, 36.251099, 31.132601>,  <37.421535, 36.650162, 31.152246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440567, 36.251099, 31.132601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266933, -0.034681, 0.963091,
		-0.962540, -0.058928, 0.264658,
		0.047574, -0.997660, -0.049112,
		37.454838, 35.951801, 31.117867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046341, 36.432339, 31.706015>,  <37.421535, 36.650162, 31.152246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046341, 36.432339, 31.706015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288994, 36.131733, 31.602297>,  <37.434586, 35.951370, 31.540066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288994, 36.131733, 31.602297>,  <37.046341, 36.432339, 31.706015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288994, 36.131733, 31.602297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357293, -0.033638, 0.933387,
		-0.710172, -0.658863, 0.248103,
		0.606628, -0.751511, -0.259296,
		37.470982, 35.906281, 31.524508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236259, 36.110065, 32.357258>,  <37.046341, 36.432339, 31.706015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236259, 36.110065, 32.357258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495560, 35.916519, 32.122089>,  <37.651138, 35.800392, 31.980989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495560, 35.916519, 32.122089>,  <37.236259, 36.110065, 32.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495560, 35.916519, 32.122089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518420, -0.285048, 0.806219,
		-0.557685, -0.827419, 0.066063,
		0.648250, -0.483865, -0.587917,
		37.690033, 35.771358, 31.945715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367104, 35.490040, 32.651516>,  <37.236259, 36.110065, 32.357258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367104, 35.490040, 32.651516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685818, 35.542217, 32.415512>,  <37.877048, 35.573524, 32.273911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685818, 35.542217, 32.415512>,  <37.367104, 35.490040, 32.651516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685818, 35.542217, 32.415512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596947, -0.321360, 0.735107,
		-0.093718, -0.937930, -0.333921,
		0.796788, 0.130440, -0.590012,
		37.924854, 35.581348, 32.238510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746826, 34.833218, 32.681065>,  <37.367104, 35.490040, 32.651516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746826, 34.833218, 32.681065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029327, 35.096680, 32.577236>,  <38.198830, 35.254757, 32.514938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029327, 35.096680, 32.577236>,  <37.746826, 34.833218, 32.681065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029327, 35.096680, 32.577236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611177, -0.382197, 0.693100,
		0.357308, -0.648148, -0.672484,
		0.706253, 0.658657, -0.259571,
		38.241203, 35.294277, 32.499363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321075, 34.467731, 32.724163>,  <37.746826, 34.833218, 32.681065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321075, 34.467731, 32.724163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471153, 34.837215, 32.693176>,  <38.561199, 35.058907, 32.674583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471153, 34.837215, 32.693176>,  <38.321075, 34.467731, 32.724163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471153, 34.837215, 32.693176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694377, -0.224712, 0.683626,
		0.614062, -0.310279, -0.725710,
		0.375191, 0.923705, -0.077463,
		38.583710, 35.114326, 32.669937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061043, 34.354927, 32.787838>,  <38.321075, 34.467731, 32.724163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061043, 34.354927, 32.787838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036739, 34.741009, 32.889568>,  <39.022156, 34.972660, 32.950607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036739, 34.741009, 32.889568>,  <39.061043, 34.354927, 32.787838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036739, 34.741009, 32.889568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602351, -0.167712, 0.780414,
		0.795916, 0.200611, -0.571204,
		-0.060762, 0.965209, 0.254322,
		39.018509, 35.030571, 32.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741436, 34.498550, 33.109867>,  <39.061043, 34.354927, 32.787838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741436, 34.498550, 33.109867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486492, 34.785660, 33.221985>,  <39.333527, 34.957928, 33.289257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486492, 34.785660, 33.221985>,  <39.741436, 34.498550, 33.109867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486492, 34.785660, 33.221985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353655, -0.050699, 0.934001,
		0.684614, 0.694425, -0.221532,
		-0.637362, 0.717776, 0.280296,
		39.295284, 35.000992, 33.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070984, 34.895309, 33.453259>,  <39.741436, 34.498550, 33.109867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070984, 34.895309, 33.453259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722569, 35.035637, 33.590790>,  <39.513519, 35.119835, 33.673309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722569, 35.035637, 33.590790>,  <40.070984, 34.895309, 33.453259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722569, 35.035637, 33.590790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388336, 0.063142, 0.919352,
		0.300817, 0.934312, -0.191235,
		-0.871036, 0.350820, 0.343833,
		39.461258, 35.140884, 33.693939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817635, 35.112926, 33.432121>,  <40.070984, 34.895309, 33.453259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817635, 35.112926, 33.432121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922848, 35.197895, 33.808567>,  <40.985973, 35.248875, 34.034435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922848, 35.197895, 33.808567>,  <40.817635, 35.112926, 33.432121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922848, 35.197895, 33.808567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014270, -0.976210, 0.216357,
		0.964682, -0.043479, -0.259803,
		0.263030, 0.212423, 0.941112,
		41.001759, 35.261623, 34.090900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248192, 34.480644, 33.586174>,  <40.817635, 35.112926, 33.432121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248192, 34.480644, 33.586174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174484, 34.647419, 33.942200>,  <41.130260, 34.747482, 34.155815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174484, 34.647419, 33.942200>,  <41.248192, 34.480644, 33.586174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174484, 34.647419, 33.942200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073564, -0.897180, 0.435496,
		0.980119, 0.145726, 0.134653,
		-0.184272, 0.416932, 0.890063,
		41.119202, 34.772499, 34.209217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755962, 34.164158, 33.967430>,  <41.248192, 34.480644, 33.586174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755962, 34.164158, 33.967430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485928, 34.317154, 34.219769>,  <41.323906, 34.408951, 34.371170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485928, 34.317154, 34.219769>,  <41.755962, 34.164158, 33.967430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485928, 34.317154, 34.219769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026291, -0.842088, 0.538698,
		0.737273, 0.380252, 0.558423,
		-0.675083, 0.382487, 0.630846,
		41.283401, 34.431900, 34.409023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095619, 34.021782, 34.580620>,  <41.755962, 34.164158, 33.967430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095619, 34.021782, 34.580620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706486, 34.060051, 34.664948>,  <41.473007, 34.083012, 34.715546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706486, 34.060051, 34.664948>,  <42.095619, 34.021782, 34.580620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706486, 34.060051, 34.664948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024524, -0.862905, 0.504770,
		0.230212, 0.496227, 0.837115,
		-0.972832, 0.095674, 0.210820,
		41.414635, 34.088753, 34.728195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012966, 34.025326, 35.319878>,  <42.095619, 34.021782, 34.580620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012966, 34.025326, 35.319878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671055, 33.895390, 35.157974>,  <41.465908, 33.817429, 35.060833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671055, 33.895390, 35.157974>,  <42.012966, 34.025326, 35.319878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671055, 33.895390, 35.157974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089259, -0.860289, 0.501932,
		-0.511253, 0.392915, 0.764355,
		-0.854782, -0.324840, -0.404754,
		41.414619, 33.797939, 35.036549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569561, 33.706123, 35.798172>,  <42.012966, 34.025326, 35.319878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569561, 33.706123, 35.798172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421234, 33.559296, 35.456936>,  <41.332237, 33.471199, 35.252193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421234, 33.559296, 35.456936>,  <41.569561, 33.706123, 35.798172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421234, 33.559296, 35.456936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028666, -0.922660, 0.384547,
		-0.928264, 0.118141, 0.352659,
		-0.370815, -0.367071, -0.853086,
		41.309990, 33.449173, 35.201012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974873, 33.302372, 35.993275>,  <41.569561, 33.706123, 35.798172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974873, 33.302372, 35.993275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108040, 33.178474, 35.637024>,  <41.187939, 33.104134, 35.423271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108040, 33.178474, 35.637024>,  <40.974873, 33.302372, 35.993275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108040, 33.178474, 35.637024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013385, -0.942862, 0.332915,
		-0.942862, -0.122753, -0.309747,
		-0.332915, 0.309747, 0.890631,
		41.207916, 33.085548, 35.369835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825638, 32.603188, 35.974857>,  <40.974873, 33.302372, 35.993275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825638, 32.603188, 35.974857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062065, 32.621880, 35.652752>,  <41.203922, 32.633095, 35.459488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062065, 32.621880, 35.652752>,  <40.825638, 32.603188, 35.974857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062065, 32.621880, 35.652752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197649, -0.976276, 0.088428,
		-0.782028, -0.211427, -0.586286,
		0.591073, 0.046726, -0.805263,
		41.239388, 32.635899, 35.411171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674782, 31.970720, 35.583042>,  <40.825638, 32.603188, 35.974857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674782, 31.970720, 35.583042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021545, 32.123215, 35.454586>,  <41.229603, 32.214710, 35.377510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021545, 32.123215, 35.454586>,  <40.674782, 31.970720, 35.583042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021545, 32.123215, 35.454586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357343, -0.924478, -0.132843,
		-0.347536, 0.000404, -0.937666,
		0.866905, 0.381236, -0.321145,
		41.281616, 32.237587, 35.358242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750740, 31.762157, 34.933464>,  <40.674782, 31.970720, 35.583042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750740, 31.762157, 34.933464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115955, 31.841751, 35.075886>,  <41.335083, 31.889507, 35.161339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115955, 31.841751, 35.075886>,  <40.750740, 31.762157, 34.933464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115955, 31.841751, 35.075886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335745, -0.862327, -0.379034,
		0.231611, 0.465614, -0.854143,
		0.913034, 0.198985, 0.356052,
		41.389866, 31.901447, 35.182701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206436, 31.429100, 34.457069>,  <40.750740, 31.762157, 34.933464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206436, 31.429100, 34.457069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445393, 31.499388, 34.770054>,  <41.588768, 31.541561, 34.957844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445393, 31.499388, 34.770054>,  <41.206436, 31.429100, 34.457069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445393, 31.499388, 34.770054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546270, -0.803491, -0.236624,
		0.587121, 0.568792, -0.575990,
		0.597393, 0.175719, 0.782460,
		41.624611, 31.552103, 35.004791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846939, 31.432121, 34.113300>,  <41.206436, 31.429100, 34.457069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846939, 31.432121, 34.113300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901882, 31.359659, 34.502827>,  <41.934849, 31.316181, 34.736542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901882, 31.359659, 34.502827>,  <41.846939, 31.432121, 34.113300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901882, 31.359659, 34.502827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489613, -0.842213, -0.225735,
		0.861052, 0.507800, -0.026989,
		0.137359, -0.181155, 0.973815,
		41.943089, 31.305313, 34.794971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439625, 31.027872, 34.054451>,  <41.846939, 31.432121, 34.113300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439625, 31.027872, 34.054451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348175, 30.990633, 34.442074>,  <42.293304, 30.968290, 34.674648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348175, 30.990633, 34.442074>,  <42.439625, 31.027872, 34.054451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348175, 30.990633, 34.442074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564945, -0.823348, 0.054185,
		0.792823, 0.559849, 0.240833,
		-0.228625, -0.093098, 0.969053,
		42.279587, 30.962704, 34.732788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019283, 31.184864, 34.553368>,  <42.439625, 31.027872, 34.054451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019283, 31.184864, 34.553368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752853, 30.935286, 34.716850>,  <42.592995, 30.785538, 34.814941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752853, 30.935286, 34.716850>,  <43.019283, 31.184864, 34.553368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752853, 30.935286, 34.716850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695371, -0.717665, 0.037635,
		0.269832, 0.309270, 0.911890,
		-0.666071, -0.623946, 0.408707,
		42.553032, 30.748102, 34.839462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293316, 30.890486, 35.208523>,  <43.019283, 31.184864, 34.553368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293316, 30.890486, 35.208523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037415, 30.638088, 35.032997>,  <42.883873, 30.486649, 34.927681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037415, 30.638088, 35.032997>,  <43.293316, 30.890486, 35.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037415, 30.638088, 35.032997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631450, -0.757011, 0.167946,
		-0.438160, -0.169645, 0.882744,
		-0.639756, -0.630995, -0.438814,
		42.845490, 30.448790, 34.901352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397930, 30.252974, 35.643440>,  <43.293316, 30.890486, 35.208523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397930, 30.252974, 35.643440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235573, 30.163439, 35.289005>,  <43.138157, 30.109718, 35.076344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235573, 30.163439, 35.289005>,  <43.397930, 30.252974, 35.643440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235573, 30.163439, 35.289005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583332, -0.809815, -0.062639,
		-0.703543, -0.542306, 0.459272,
		-0.405895, -0.223839, -0.886084,
		43.113804, 30.096287, 35.023178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060032, 29.605902, 35.645786>,  <43.397930, 30.252974, 35.643440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060032, 29.605902, 35.645786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144836, 29.676176, 35.261250>,  <43.195721, 29.718342, 35.030525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144836, 29.676176, 35.261250>,  <43.060032, 29.605902, 35.645786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144836, 29.676176, 35.261250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506274, -0.861159, -0.045726,
		-0.835905, -0.477010, -0.271522,
		0.212012, 0.175688, -0.961345,
		43.208439, 29.728882, 34.972847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173203, 28.932898, 35.522743>,  <43.060032, 29.605902, 35.645786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173203, 28.932898, 35.522743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304588, 29.143482, 35.209068>,  <43.383423, 29.269833, 35.020863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304588, 29.143482, 35.209068>,  <43.173203, 28.932898, 35.522743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304588, 29.143482, 35.209068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581181, -0.767124, -0.271568,
		-0.744538, -0.366552, -0.557945,
		0.328469, 0.526459, -0.784186,
		43.403130, 29.301420, 34.973812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018215, 28.486948, 34.881241>,  <43.173203, 28.932898, 35.522743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018215, 28.486948, 34.881241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307182, 28.740435, 34.770592>,  <43.480560, 28.892527, 34.704205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307182, 28.740435, 34.770592>,  <43.018215, 28.486948, 34.881241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307182, 28.740435, 34.770592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614964, -0.771740, -0.161975,
		-0.316125, -0.053098, -0.947231,
		0.722415, 0.633717, -0.276620,
		43.523907, 28.930550, 34.687607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396267, 28.172520, 34.304890>,  <43.018215, 28.486948, 34.881241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396267, 28.172520, 34.304890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634140, 28.414377, 34.516834>,  <43.776863, 28.559492, 34.644001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634140, 28.414377, 34.516834>,  <43.396267, 28.172520, 34.304890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634140, 28.414377, 34.516834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723418, -0.689973, -0.024570,
		0.350736, 0.397925, -0.847727,
		0.594686, 0.604643, 0.529864,
		43.812546, 28.595770, 34.675793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832539, 27.688967, 34.537148>,  <43.396267, 28.172520, 34.304890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832539, 27.688967, 34.537148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759407, 27.648123, 34.928280>,  <43.715530, 27.623615, 35.162960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759407, 27.648123, 34.928280>,  <43.832539, 27.688967, 34.537148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759407, 27.648123, 34.928280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459927, 0.887931, 0.006731,
		-0.868931, -0.448499, -0.209301,
		-0.182826, -0.102112, 0.977828,
		43.704559, 27.617489, 35.221630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341118, 27.208050, 34.438850>,  <43.832539, 27.688967, 34.537148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341118, 27.208050, 34.438850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696648, 27.391277, 34.443882>,  <44.909966, 27.501213, 34.446903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696648, 27.391277, 34.443882>,  <44.341118, 27.208050, 34.438850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696648, 27.391277, 34.443882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444294, 0.854729, 0.268407,
		0.112193, -0.244158, 0.963223,
		0.888828, 0.458067, 0.012583,
		44.963295, 27.528698, 34.447659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518661, 27.605616, 35.116508>,  <44.341118, 27.208050, 34.438850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518661, 27.605616, 35.116508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703026, 27.776125, 34.805161>,  <44.813644, 27.878429, 34.618351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703026, 27.776125, 34.805161>,  <44.518661, 27.605616, 35.116508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703026, 27.776125, 34.805161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401218, 0.882421, 0.245677,
		0.791572, 0.199059, 0.577745,
		0.460910, 0.426272, -0.778366,
		44.841297, 27.904007, 34.571651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859726, 28.243591, 35.342350>,  <44.518661, 27.605616, 35.116508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859726, 28.243591, 35.342350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752232, 28.241737, 34.957069>,  <44.687737, 28.240625, 34.725899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752232, 28.241737, 34.957069>,  <44.859726, 28.243591, 35.342350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752232, 28.241737, 34.957069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552903, 0.819575, 0.150317,
		0.788721, 0.572953, -0.222808,
		-0.268732, -0.004633, -0.963204,
		44.671612, 28.240347, 34.668110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722420, 28.971207, 35.284008>,  <44.859726, 28.243591, 35.342350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722420, 28.971207, 35.284008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582176, 28.795147, 34.953350>,  <44.498028, 28.689512, 34.754955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582176, 28.795147, 34.953350>,  <44.722420, 28.971207, 35.284008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582176, 28.795147, 34.953350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580941, 0.794544, -0.176656,
		0.734559, 0.418293, -0.534279,
		-0.350614, -0.440149, -0.826643,
		44.476994, 28.663103, 34.705357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707809, 29.460192, 34.856529>,  <44.722420, 28.971207, 35.284008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707809, 29.460192, 34.856529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438148, 29.195744, 34.724808>,  <44.276352, 29.037075, 34.645775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438148, 29.195744, 34.724808>,  <44.707809, 29.460192, 34.856529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438148, 29.195744, 34.724808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638108, 0.745860, -0.191079,
		0.371942, 0.081317, -0.924687,
		-0.674149, -0.661121, -0.329306,
		44.235905, 28.997408, 34.626015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517918, 29.641539, 34.181007>,  <44.707809, 29.460192, 34.856529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517918, 29.641539, 34.181007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221661, 29.423317, 34.337891>,  <44.043907, 29.292383, 34.432018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221661, 29.423317, 34.337891>,  <44.517918, 29.641539, 34.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221661, 29.423317, 34.337891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626131, 0.772157, -0.108321,
		-0.243749, -0.325799, -0.913477,
		-0.740639, -0.545554, 0.392206,
		43.999470, 29.259651, 34.455551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930302, 29.945480, 33.968609>,  <44.517918, 29.641539, 34.181007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930302, 29.945480, 33.968609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759136, 29.746262, 34.270294>,  <43.656437, 29.626730, 34.451305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759136, 29.746262, 34.270294>,  <43.930302, 29.945480, 33.968609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759136, 29.746262, 34.270294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738534, 0.673720, 0.025873,
		-0.521015, -0.545941, -0.656119,
		-0.427915, -0.498046, 0.754214,
		43.630760, 29.596848, 34.496559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276772, 29.838799, 33.688053>,  <43.930302, 29.945480, 33.968609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276772, 29.838799, 33.688053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266205, 29.816996, 34.087318>,  <43.259865, 29.803915, 34.326878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266205, 29.816996, 34.087318>,  <43.276772, 29.838799, 33.688053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266205, 29.816996, 34.087318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789590, 0.613506, 0.012602,
		-0.613066, -0.787807, -0.059246,
		-0.026420, -0.054506, 0.998164,
		43.258278, 29.800644, 34.386768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589062, 29.847799, 33.838940>,  <43.276772, 29.838799, 33.688053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589062, 29.847799, 33.838940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739006, 29.906399, 34.205112>,  <42.828972, 29.941559, 34.424816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739006, 29.906399, 34.205112>,  <42.589062, 29.847799, 33.838940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739006, 29.906399, 34.205112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823988, 0.505192, 0.256565,
		-0.424884, -0.850482, 0.310087,
		0.374858, 0.146497, 0.915435,
		42.851463, 29.950348, 34.479744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093002, 29.575348, 34.295860>,  <42.589062, 29.847799, 33.838940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093002, 29.575348, 34.295860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322201, 29.856461, 34.464512>,  <42.459721, 30.025129, 34.565701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322201, 29.856461, 34.464512>,  <42.093002, 29.575348, 34.295860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322201, 29.856461, 34.464512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814683, 0.544451, 0.199659,
		-0.089237, -0.457895, 0.884516,
		0.572999, 0.702783, 0.421625,
		42.494099, 30.067295, 34.591000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722839, 29.976383, 34.657547>,  <42.093002, 29.575348, 34.295860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722839, 29.976383, 34.657547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073269, 30.063253, 34.829746>,  <42.283527, 30.115376, 34.933067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073269, 30.063253, 34.829746>,  <41.722839, 29.976383, 34.657547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073269, 30.063253, 34.829746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336217, 0.915110, 0.222556,
		-0.345620, -0.339716, 0.874723,
		0.876074, 0.217176, 0.430499,
		42.336090, 30.128407, 34.958897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623188, 30.131994, 35.455036>,  <41.722839, 29.976383, 34.657547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623188, 30.131994, 35.455036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925945, 30.316229, 35.269577>,  <42.107601, 30.426769, 35.158302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925945, 30.316229, 35.269577>,  <41.623188, 30.131994, 35.455036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925945, 30.316229, 35.269577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319000, 0.879562, 0.353001,
		0.570392, -0.119282, 0.812665,
		0.756896, 0.460589, -0.463644,
		42.153015, 30.454405, 35.130486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923000, 30.632835, 35.893162>,  <41.623188, 30.131994, 35.455036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923000, 30.632835, 35.893162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027065, 30.742807, 35.522923>,  <42.089504, 30.808790, 35.300781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027065, 30.742807, 35.522923>,  <41.923000, 30.632835, 35.893162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027065, 30.742807, 35.522923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260874, 0.942970, 0.206764,
		0.929655, 0.187671, 0.317050,
		0.260165, 0.274929, -0.925596,
		42.105114, 30.825287, 35.245243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331566, 31.083158, 36.077877>,  <41.923000, 30.632835, 35.893162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331566, 31.083158, 36.077877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199512, 31.161997, 35.708626>,  <42.120281, 31.209299, 35.487076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199512, 31.161997, 35.708626>,  <42.331566, 31.083158, 36.077877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199512, 31.161997, 35.708626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213680, 0.936967, 0.276467,
		0.919430, 0.288526, -0.267212,
		-0.330137, 0.197094, -0.923127,
		42.100471, 31.221125, 35.431686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549931, 31.710077, 35.949783>,  <42.331566, 31.083158, 36.077877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549931, 31.710077, 35.949783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263870, 31.671799, 35.672829>,  <42.092236, 31.648832, 35.506653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263870, 31.671799, 35.672829>,  <42.549931, 31.710077, 35.949783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263870, 31.671799, 35.672829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102462, 0.994235, -0.031584,
		0.691422, 0.048357, -0.720831,
		-0.715148, -0.095695, -0.692392,
		42.049324, 31.643089, 35.465111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461517, 32.351955, 35.716213>,  <42.549931, 31.710077, 35.949783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461517, 32.351955, 35.716213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194782, 32.191498, 35.465004>,  <42.034740, 32.095222, 35.314278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194782, 32.191498, 35.465004>,  <42.461517, 32.351955, 35.716213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194782, 32.191498, 35.465004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306368, 0.915813, -0.259665,
		0.679315, 0.019253, -0.733594,
		-0.666836, -0.401143, -0.628024,
		41.994732, 32.071156, 35.276596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557381, 32.633087, 35.094475>,  <42.461517, 32.351955, 35.716213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557381, 32.633087, 35.094475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177650, 32.509876, 35.119461>,  <41.949814, 32.435951, 35.134453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177650, 32.509876, 35.119461>,  <42.557381, 32.633087, 35.094475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177650, 32.509876, 35.119461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313985, 0.920591, -0.232220,
		0.014027, -0.240065, -0.970656,
		-0.949324, -0.308028, 0.062464,
		41.892853, 32.417469, 35.138199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168140, 32.692883, 34.524738>,  <42.557381, 32.633087, 35.094475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168140, 32.692883, 34.524738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867939, 32.673759, 34.788395>,  <41.687820, 32.662285, 34.946587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867939, 32.673759, 34.788395>,  <42.168140, 32.692883, 34.524738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867939, 32.673759, 34.788395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381658, 0.845599, -0.373228,
		-0.539523, -0.531673, -0.652869,
		-0.750501, -0.047808, 0.659138,
		41.642788, 32.659416, 34.986137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446774, 32.666965, 34.197262>,  <42.168140, 32.692883, 34.524738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446774, 32.666965, 34.197262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373863, 32.795971, 34.568802>,  <41.330116, 32.873375, 34.791725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373863, 32.795971, 34.568802>,  <41.446774, 32.666965, 34.197262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373863, 32.795971, 34.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444498, 0.815604, -0.370422,
		-0.877039, -0.480390, -0.005306,
		-0.182274, 0.322516, 0.928849,
		41.319180, 32.892727, 34.847458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733871, 32.908672, 34.237782>,  <41.446774, 32.666965, 34.197262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733871, 32.908672, 34.237782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941921, 33.089478, 34.527653>,  <41.066753, 33.197960, 34.701576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941921, 33.089478, 34.527653>,  <40.733871, 32.908672, 34.237782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941921, 33.089478, 34.527653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268412, 0.891997, -0.363727,
		-0.810815, -0.005326, 0.585278,
		0.520128, 0.452011, 0.724674,
		41.097961, 33.225082, 34.745056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238956, 33.519588, 34.571873>,  <40.733871, 32.908672, 34.237782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238956, 33.519588, 34.571873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599621, 33.594479, 34.727802>,  <40.816017, 33.639412, 34.821358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599621, 33.594479, 34.727802>,  <40.238956, 33.519588, 34.571873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599621, 33.594479, 34.727802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143355, 0.979856, -0.139036,
		-0.408001, 0.069479, 0.910334,
		0.901657, 0.187228, 0.389822,
		40.870117, 33.650646, 34.844749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108589, 34.121357, 34.816086>,  <40.238956, 33.519588, 34.571873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108589, 34.121357, 34.816086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508446, 34.115276, 34.824921>,  <40.748360, 34.111626, 34.830223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508446, 34.115276, 34.824921>,  <40.108589, 34.121357, 34.816086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508446, 34.115276, 34.824921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016940, 0.996600, -0.080636,
		-0.020790, 0.080981, 0.996499,
		0.999640, -0.015204, 0.022091,
		40.808338, 34.110714, 34.831547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267448, 34.676201, 35.197460>,  <40.108589, 34.121357, 34.816086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267448, 34.676201, 35.197460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592094, 34.598679, 34.977016>,  <40.786880, 34.552166, 34.844749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592094, 34.598679, 34.977016>,  <40.267448, 34.676201, 35.197460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592094, 34.598679, 34.977016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159985, 0.981039, -0.109392,
		0.561860, 0.000615, 0.827232,
		0.811615, -0.193808, -0.551108,
		40.835579, 34.540535, 34.811684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887146, 35.155327, 35.414963>,  <40.267448, 34.676201, 35.197460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887146, 35.155327, 35.414963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968063, 35.039410, 35.040775>,  <41.016613, 34.969860, 34.816265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968063, 35.039410, 35.040775>,  <40.887146, 35.155327, 35.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968063, 35.039410, 35.040775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222279, 0.943872, -0.244330,
		0.953765, -0.158507, 0.255357,
		0.202296, -0.289794, -0.935466,
		41.028751, 34.952473, 34.760136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486118, 35.447792, 35.239567>,  <40.887146, 35.155327, 35.414963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486118, 35.447792, 35.239567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338413, 35.379601, 34.874146>,  <41.249790, 35.338688, 34.654892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338413, 35.379601, 34.874146>,  <41.486118, 35.447792, 35.239567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338413, 35.379601, 34.874146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286607, 0.914224, -0.286446,
		0.884027, -0.367605, -0.288727,
		-0.369259, -0.170474, -0.913557,
		41.227634, 35.328457, 34.600079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039150, 35.610695, 34.732658>,  <41.486118, 35.447792, 35.239567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039150, 35.610695, 34.732658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674156, 35.661636, 34.577148>,  <41.455158, 35.692204, 34.483845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674156, 35.661636, 34.577148>,  <42.039150, 35.610695, 34.732658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674156, 35.661636, 34.577148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210389, 0.961098, -0.178959,
		0.350855, -0.245091, -0.903787,
		-0.912490, 0.127358, -0.388770,
		41.400410, 35.699844, 34.460518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128300, 36.005142, 34.088726>,  <42.039150, 35.610695, 34.732658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128300, 36.005142, 34.088726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771763, 36.049606, 34.264526>,  <41.557842, 36.076286, 34.370007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771763, 36.049606, 34.264526>,  <42.128300, 36.005142, 34.088726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771763, 36.049606, 34.264526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091603, 0.993636, -0.065542,
		-0.443986, -0.018161, -0.895850,
		-0.891339, 0.111162, 0.439497,
		41.504360, 36.082954, 34.396374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727070, 36.528461, 33.833942>,  <42.128300, 36.005142, 34.088726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727070, 36.528461, 33.833942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604633, 36.520344, 34.214657>,  <41.531174, 36.515472, 34.443085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604633, 36.520344, 34.214657>,  <41.727070, 36.528461, 33.833942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604633, 36.520344, 34.214657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173907, 0.981758, 0.076865,
		-0.935984, 0.189050, -0.296973,
		-0.306087, -0.020299, 0.951787,
		41.512806, 36.514256, 34.500195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760483, 36.399853, 33.120716>,  <41.727070, 36.528461, 33.833942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760483, 36.399853, 33.120716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859684, 36.761326, 33.260345>,  <41.919205, 36.978210, 33.344124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859684, 36.761326, 33.260345>,  <41.760483, 36.399853, 33.120716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859684, 36.761326, 33.260345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654205, 0.109532, -0.748344,
		-0.714501, 0.413957, -0.564029,
		0.248003, 0.903683, 0.349073,
		41.934086, 37.032433, 33.365067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871098, 36.928738, 32.481285>,  <41.760483, 36.399853, 33.120716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871098, 36.928738, 32.481285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060989, 37.049377, 32.812023>,  <42.174927, 37.121761, 33.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060989, 37.049377, 32.812023>,  <41.871098, 36.928738, 32.481285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060989, 37.049377, 32.812023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781774, 0.287054, -0.553561,
		-0.404301, 0.909197, -0.099506,
		0.474732, 0.301597, 0.826843,
		42.203407, 37.139858, 33.060078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208942, 37.589436, 32.426533>,  <41.871098, 36.928738, 32.481285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208942, 37.589436, 32.426533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411633, 37.354195, 32.678684>,  <42.533245, 37.213051, 32.829975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411633, 37.354195, 32.678684>,  <42.208942, 37.589436, 32.426533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411633, 37.354195, 32.678684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861208, 0.378740, -0.338935,
		-0.039421, 0.714630, 0.698391,
		0.506722, -0.588099, 0.630375,
		42.563648, 37.177765, 32.867798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633312, 37.980350, 32.905533>,  <42.208942, 37.589436, 32.426533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633312, 37.980350, 32.905533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812057, 37.633690, 32.816792>,  <42.919304, 37.425694, 32.763546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812057, 37.633690, 32.816792>,  <42.633312, 37.980350, 32.905533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812057, 37.633690, 32.816792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872981, 0.476635, -0.103552,
		0.195486, -0.147397, 0.969567,
		0.446866, -0.866656, -0.221851,
		42.946117, 37.373692, 32.750237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260777, 37.750015, 33.386806>,  <42.633312, 37.980350, 32.905533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260777, 37.750015, 33.386806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251801, 37.682713, 32.992611>,  <43.246414, 37.642330, 32.756092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251801, 37.682713, 32.992611>,  <43.260777, 37.750015, 33.386806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251801, 37.682713, 32.992611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844859, 0.523835, -0.108670,
		0.534517, -0.835037, 0.130399,
		-0.022436, -0.168255, -0.985488,
		43.245071, 37.632236, 32.696964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913754, 37.566322, 32.970814>,  <43.260777, 37.750015, 33.386806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913754, 37.566322, 32.970814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250019, 37.394527, 32.838856>,  <44.451778, 37.291451, 32.759682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250019, 37.394527, 32.838856>,  <43.913754, 37.566322, 32.970814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250019, 37.394527, 32.838856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114482, -0.736316, 0.666882,
		-0.529324, -0.522855, -0.668161,
		0.840660, -0.429489, -0.329893,
		44.502216, 37.265682, 32.739887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896370, 36.765877, 32.700134>,  <43.913754, 37.566322, 32.970814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896370, 36.765877, 32.700134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235107, 36.868660, 32.886391>,  <44.438351, 36.930332, 32.998146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235107, 36.868660, 32.886391>,  <43.896370, 36.765877, 32.700134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235107, 36.868660, 32.886391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202455, -0.653859, 0.729027,
		0.491796, -0.711645, -0.501695,
		0.846846, 0.256962, 0.465641,
		44.489162, 36.945747, 33.026085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195812, 36.152737, 32.843029>,  <43.896370, 36.765877, 32.700134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195812, 36.152737, 32.843029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295170, 36.418995, 33.124516>,  <44.354782, 36.578751, 33.293407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295170, 36.418995, 33.124516>,  <44.195812, 36.152737, 32.843029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295170, 36.418995, 33.124516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350436, -0.615525, 0.705920,
		0.903049, -0.421951, 0.080375,
		0.248391, 0.665647, 0.703716,
		44.369686, 36.618690, 33.335629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969391, 36.025986, 32.850056>,  <44.195812, 36.152737, 32.843029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969391, 36.025986, 32.850056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246769, 35.848270, 32.623165>,  <45.413197, 35.741642, 32.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246769, 35.848270, 32.623165>,  <44.969391, 36.025986, 32.850056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246769, 35.848270, 32.623165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493187, 0.866610, -0.075853,
		0.525262, -0.227147, 0.820064,
		0.693446, -0.444287, -0.567223,
		45.454803, 35.714985, 32.452999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441204, 35.397667, 33.025661>,  <44.969391, 36.025986, 32.850056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441204, 35.397667, 33.025661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192753, 35.377102, 33.338470>,  <45.043682, 35.364761, 33.526157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192753, 35.377102, 33.338470>,  <45.441204, 35.397667, 33.025661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192753, 35.377102, 33.338470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772040, 0.131426, 0.621837,
		-0.134751, 0.989992, -0.041936,
		-0.621125, -0.051417, 0.782023,
		45.006416, 35.361675, 33.573078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887123, 35.499195, 33.537365>,  <45.441204, 35.397667, 33.025661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887123, 35.499195, 33.537365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538395, 35.486229, 33.732864>,  <45.329159, 35.478451, 33.850163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538395, 35.486229, 33.732864>,  <45.887123, 35.499195, 33.537365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538395, 35.486229, 33.732864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481426, 0.127208, 0.867207,
		-0.090283, 0.991346, -0.095298,
		-0.871825, -0.032415, 0.488744,
		45.276848, 35.476505, 33.879486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735065, 36.111202, 33.978554>,  <45.887123, 35.499195, 33.537365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735065, 36.111202, 33.978554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635265, 35.739231, 34.086620>,  <45.575386, 35.516048, 34.151459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635265, 35.739231, 34.086620>,  <45.735065, 36.111202, 33.978554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635265, 35.739231, 34.086620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718644, 0.009191, 0.695318,
		-0.649076, 0.367633, 0.665992,
		-0.249501, -0.929925, 0.270163,
		45.560413, 35.460255, 34.167667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743866, 35.972038, 34.678707>,  <45.735065, 36.111202, 33.978554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743866, 35.972038, 34.678707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855240, 35.625870, 34.512081>,  <45.922062, 35.418171, 34.412106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855240, 35.625870, 34.512081>,  <45.743866, 35.972038, 34.678707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855240, 35.625870, 34.512081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789477, -0.040791, 0.612423,
		-0.546994, -0.499388, 0.671870,
		0.278430, -0.865418, -0.416568,
		45.938770, 35.366245, 34.387112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013325, 35.505241, 35.212227>,  <45.743866, 35.972038, 34.678707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013325, 35.505241, 35.212227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.185143, 35.438023, 34.857319>,  <46.288235, 35.397690, 34.644375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.185143, 35.438023, 34.857319>,  <46.013325, 35.505241, 35.212227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.185143, 35.438023, 34.857319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872879, -0.174567, 0.455642,
		-0.231459, -0.970199, 0.071703,
		0.429546, -0.168050, -0.887271,
		46.314007, 35.387608, 34.591137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693272, 35.454315, 35.493805>,  <46.013325, 35.505241, 35.212227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693272, 35.454315, 35.493805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702499, 35.364342, 35.104164>,  <46.708035, 35.310356, 34.870380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702499, 35.364342, 35.104164>,  <46.693272, 35.454315, 35.493805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702499, 35.364342, 35.104164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968219, -0.237691, 0.077812,
		-0.249038, -0.944938, 0.212302,
		0.023065, -0.224933, -0.974101,
		46.709419, 35.296864, 34.811935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029007, 34.866474, 35.462273>,  <46.693272, 35.454315, 35.493805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029007, 34.866474, 35.462273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073032, 35.034176, 35.101803>,  <47.099449, 35.134796, 34.885521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073032, 35.034176, 35.101803>,  <47.029007, 34.866474, 35.462273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073032, 35.034176, 35.101803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893849, -0.438250, -0.094713,
		-0.434648, -0.795088, -0.422985,
		0.110068, 0.419252, -0.901173,
		47.106052, 35.159950, 34.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.434017, 35.424774, 35.670559>,  <47.029007, 34.866474, 35.462273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.434017, 35.424774, 35.670559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565094, 35.047787, 35.697010>,  <47.643742, 34.821594, 35.712879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565094, 35.047787, 35.697010>,  <47.434017, 35.424774, 35.670559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.565094, 35.047787, 35.697010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597777, -0.261030, -0.757975,
		0.731628, 0.208853, -0.648923,
		0.327694, -0.942467, 0.066129,
		47.663403, 34.765045, 35.716850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.670910, 35.167797, 34.997135>,  <47.434017, 35.424774, 35.670559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.670910, 35.167797, 34.997135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539833, 34.836212, 35.178432>,  <47.461185, 34.637260, 35.287212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539833, 34.836212, 35.178432>,  <47.670910, 35.167797, 34.997135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539833, 34.836212, 35.178432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634435, -0.162401, -0.755724,
		0.700077, -0.535201, -0.472707,
		-0.327696, -0.828967, 0.453243,
		47.441525, 34.587521, 35.314404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.164482, 30.117632, 25.737787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790207, 30.016470, 25.639380>,  <35.565643, 29.955772, 25.580336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790207, 30.016470, 25.639380>,  <36.164482, 30.117632, 25.737787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790207, 30.016470, 25.639380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312774, 0.271886, 0.910083,
		-0.163274, 0.928503, -0.333502,
		-0.935689, -0.252903, -0.246020,
		35.509499, 29.940599, 25.565573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700874, 30.673491, 25.932083>,  <36.164482, 30.117632, 25.737787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700874, 30.673491, 25.932083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450081, 30.362127, 25.919575>,  <35.299606, 30.175310, 25.912069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450081, 30.362127, 25.919575>,  <35.700874, 30.673491, 25.932083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450081, 30.362127, 25.919575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347183, 0.243258, 0.905698,
		-0.697394, 0.578714, -0.422768,
		-0.626981, -0.778406, -0.031273,
		35.261986, 30.128605, 25.910192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997822, 30.840082, 26.165810>,  <35.700874, 30.673491, 25.932083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997822, 30.840082, 26.165810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960911, 30.441843, 26.172382>,  <34.938763, 30.202900, 26.176325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960911, 30.441843, 26.172382>,  <34.997822, 30.840082, 26.165810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960911, 30.441843, 26.172382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360280, 0.048766, 0.931569,
		-0.928269, 0.080042, -0.363194,
		-0.092276, -0.995598, 0.016430,
		34.933228, 30.143164, 26.177311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278400, 30.724426, 26.331024>,  <34.997822, 30.840082, 26.165810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278400, 30.724426, 26.331024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511051, 30.414011, 26.428574>,  <34.650642, 30.227762, 26.487103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511051, 30.414011, 26.428574>,  <34.278400, 30.724426, 26.331024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511051, 30.414011, 26.428574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160687, 0.184283, 0.969649,
		-0.797425, -0.603164, -0.017515,
		0.581630, -0.776037, 0.243872,
		34.685539, 30.181200, 26.501736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975822, 30.384363, 26.896128>,  <34.278400, 30.724426, 26.331024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975822, 30.384363, 26.896128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339325, 30.218004, 26.909941>,  <34.557426, 30.118189, 26.918228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339325, 30.218004, 26.909941>,  <33.975822, 30.384363, 26.896128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339325, 30.218004, 26.909941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011853, 0.108436, 0.994033,
		-0.417158, -0.902925, 0.103471,
		0.908757, -0.415895, 0.034532,
		34.611954, 30.093235, 26.920300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051659, 29.942904, 27.450542>,  <33.975822, 30.384363, 26.896128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051659, 29.942904, 27.450542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438362, 30.002342, 27.367304>,  <34.670383, 30.038006, 27.317360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438362, 30.002342, 27.367304>,  <34.051659, 29.942904, 27.450542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438362, 30.002342, 27.367304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178519, 0.190439, 0.965331,
		0.183059, -0.970390, 0.157584,
		0.966758, 0.148581, -0.208094,
		34.728390, 30.046923, 27.304874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336750, 29.559999, 27.936573>,  <34.051659, 29.942904, 27.450542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336750, 29.559999, 27.936573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578846, 29.852707, 27.811226>,  <34.724102, 30.028332, 27.736017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578846, 29.852707, 27.811226>,  <34.336750, 29.559999, 27.936573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578846, 29.852707, 27.811226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005398, 0.397422, 0.917620,
		0.796026, -0.553687, 0.244485,
		0.605238, 0.731769, -0.313370,
		34.760418, 30.072237, 27.717215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818756, 29.647299, 28.440653>,  <34.336750, 29.559999, 27.936573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818756, 29.647299, 28.440653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853291, 29.990009, 28.237289>,  <34.874012, 30.195635, 28.115271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853291, 29.990009, 28.237289>,  <34.818756, 29.647299, 28.440653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853291, 29.990009, 28.237289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018935, 0.511634, 0.858995,
		0.996086, -0.064538, 0.060396,
		0.086338, 0.856776, -0.508409,
		34.879192, 30.247042, 28.084766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399418, 29.988819, 28.697617>,  <34.818756, 29.647299, 28.440653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399418, 29.988819, 28.697617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150051, 30.264633, 28.550167>,  <35.000431, 30.430122, 28.461697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150051, 30.264633, 28.550167>,  <35.399418, 29.988819, 28.697617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150051, 30.264633, 28.550167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038064, 0.497663, 0.866535,
		0.780960, 0.526184, -0.336500,
		-0.623420, 0.689537, -0.368626,
		34.963024, 30.471495, 28.439579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672161, 30.660105, 28.791151>,  <35.399418, 29.988819, 28.697617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672161, 30.660105, 28.791151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284168, 30.748077, 28.749640>,  <35.051373, 30.800861, 28.724733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284168, 30.748077, 28.749640>,  <35.672161, 30.660105, 28.791151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284168, 30.748077, 28.749640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082742, 0.699751, 0.709579,
		0.228679, 0.679690, -0.696941,
		-0.969979, 0.219933, -0.103780,
		34.993176, 30.814056, 28.718506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778507, 31.335653, 28.854174>,  <35.672161, 30.660105, 28.791151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778507, 31.335653, 28.854174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396557, 31.231823, 28.911919>,  <35.167389, 31.169525, 28.946566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396557, 31.231823, 28.911919>,  <35.778507, 31.335653, 28.854174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396557, 31.231823, 28.911919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025663, 0.556325, 0.830568,
		-0.295909, 0.789381, -0.537881,
		-0.954871, -0.259576, 0.144364,
		35.110096, 31.153950, 28.955227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452660, 31.950020, 29.120199>,  <35.778507, 31.335653, 28.854174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452660, 31.950020, 29.120199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244228, 31.625854, 29.227316>,  <35.119171, 31.431355, 29.291586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244228, 31.625854, 29.227316>,  <35.452660, 31.950020, 29.120199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244228, 31.625854, 29.227316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090090, 0.259776, 0.961457,
		-0.848743, 0.525116, -0.062352,
		-0.521075, -0.810413, 0.267791,
		35.087906, 31.382730, 29.307653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938171, 32.131470, 29.692518>,  <35.452660, 31.950020, 29.120199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938171, 32.131470, 29.692518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903446, 31.738123, 29.756332>,  <34.882610, 31.502115, 29.794621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903446, 31.738123, 29.756332>,  <34.938171, 32.131470, 29.692518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903446, 31.738123, 29.756332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075560, 0.166179, 0.983196,
		-0.993355, 0.073300, -0.088730,
		-0.086814, -0.983367, 0.159537,
		34.877403, 31.443113, 29.804193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354271, 32.070312, 30.129362>,  <34.938171, 32.131470, 29.692518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354271, 32.070312, 30.129362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.571152, 31.735718, 30.161129>,  <34.701283, 31.534962, 30.180189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.571152, 31.735718, 30.161129>,  <34.354271, 32.070312, 30.129362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571152, 31.735718, 30.161129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092499, 0.034518, 0.995114,
		-0.835139, -0.546902, -0.058658,
		0.542205, -0.836485, 0.079415,
		34.733814, 31.484772, 30.184954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048676, 31.723528, 30.672323>,  <34.354271, 32.070312, 30.129362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048676, 31.723528, 30.672323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419144, 31.574446, 30.649357>,  <34.641426, 31.484997, 30.635576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419144, 31.574446, 30.649357>,  <34.048676, 31.723528, 30.672323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419144, 31.574446, 30.649357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073781, 0.029782, 0.996830,
		-0.369816, -0.927471, 0.055082,
		0.926171, -0.372708, -0.057415,
		34.696995, 31.462633, 30.632132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093014, 31.185789, 31.296196>,  <34.048676, 31.723528, 30.672323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093014, 31.185789, 31.296196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467628, 31.267843, 31.182487>,  <34.692398, 31.317076, 31.114262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467628, 31.267843, 31.182487>,  <34.093014, 31.185789, 31.296196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467628, 31.267843, 31.182487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268198, 0.102919, 0.957851,
		0.225749, -0.973307, 0.041370,
		0.936540, 0.205138, -0.284272,
		34.748592, 31.329384, 31.097206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483429, 30.809364, 31.683626>,  <34.093014, 31.185789, 31.296196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483429, 30.809364, 31.683626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723629, 31.116467, 31.594225>,  <34.867748, 31.300728, 31.540585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723629, 31.116467, 31.594225>,  <34.483429, 30.809364, 31.683626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723629, 31.116467, 31.594225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350127, -0.001163, 0.936702,
		0.718897, -0.640743, -0.269510,
		0.600499, 0.767754, -0.223505,
		34.903778, 31.346792, 31.527174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156639, 30.566256, 31.823261>,  <34.483429, 30.809364, 31.683626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156639, 30.566256, 31.823261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149509, 30.964571, 31.859241>,  <35.145229, 31.203560, 31.880829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149509, 30.964571, 31.859241>,  <35.156639, 30.566256, 31.823261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149509, 30.964571, 31.859241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529559, -0.066905, 0.845630,
		0.848085, 0.062709, -0.526135,
		-0.017828, 0.995787, 0.089950,
		35.144161, 31.263308, 31.886227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580353, 30.693525, 32.340233>,  <35.156639, 30.566256, 31.823261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580353, 30.693525, 32.340233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451500, 31.070549, 32.304882>,  <35.374187, 31.296764, 32.283672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451500, 31.070549, 32.304882>,  <35.580353, 30.693525, 32.340233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451500, 31.070549, 32.304882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417478, 0.225217, 0.880334,
		0.849672, 0.246690, -0.466049,
		-0.322132, 0.942561, -0.088373,
		35.354862, 31.353317, 32.278370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219990, 31.222748, 32.489697>,  <35.580353, 30.693525, 32.340233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219990, 31.222748, 32.489697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871132, 31.406845, 32.556084>,  <35.661819, 31.517303, 32.595917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871132, 31.406845, 32.556084>,  <36.219990, 31.222748, 32.489697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871132, 31.406845, 32.556084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326120, 0.293997, 0.898449,
		0.364710, 0.837701, -0.406502,
		-0.872143, 0.460241, 0.165967,
		35.609489, 31.544918, 32.605873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472492, 31.774973, 32.921272>,  <36.219990, 31.222748, 32.489697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472492, 31.774973, 32.921272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080830, 31.776873, 33.002487>,  <35.845833, 31.778011, 33.051216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080830, 31.776873, 33.002487>,  <36.472492, 31.774973, 32.921272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080830, 31.776873, 33.002487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175612, 0.521979, 0.834684,
		-0.102020, 0.852945, -0.511935,
		-0.979159, 0.004747, 0.203039,
		35.787083, 31.778297, 33.063400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232899, 32.502449, 33.050602>,  <36.472492, 31.774973, 32.921272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232899, 32.502449, 33.050602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002331, 32.234398, 33.237652>,  <35.863991, 32.073566, 33.349880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002331, 32.234398, 33.237652>,  <36.232899, 32.502449, 33.050602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002331, 32.234398, 33.237652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176247, 0.456831, 0.871919,
		-0.797919, 0.585010, -0.145220,
		-0.576422, -0.670126, 0.467620,
		35.829403, 32.033360, 33.377937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456482, 33.115158, 32.810097>,  <36.232899, 32.502449, 33.050602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456482, 33.115158, 32.810097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816875, 33.224369, 32.944962>,  <37.033112, 33.289898, 33.025883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816875, 33.224369, 32.944962>,  <36.456482, 33.115158, 32.810097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816875, 33.224369, 32.944962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431795, -0.488752, -0.758072,
		-0.042187, 0.828598, -0.558252,
		0.900984, 0.273032, 0.337166,
		37.087170, 33.306278, 33.046112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834751, 33.453728, 32.265968>,  <36.456482, 33.115158, 32.810097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834751, 33.453728, 32.265968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085274, 33.284592, 32.527943>,  <37.235588, 33.183109, 32.685127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085274, 33.284592, 32.527943>,  <36.834751, 33.453728, 32.265968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085274, 33.284592, 32.527943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502782, -0.422948, -0.753873,
		0.595774, 0.801448, -0.052298,
		0.626309, -0.422843, 0.654935,
		37.273167, 33.157738, 32.724422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508801, 33.493610, 32.034786>,  <36.834751, 33.453728, 32.265968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508801, 33.493610, 32.034786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550175, 33.226212, 32.329380>,  <37.575001, 33.065773, 32.506138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550175, 33.226212, 32.329380>,  <37.508801, 33.493610, 32.034786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550175, 33.226212, 32.329380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773384, -0.411557, -0.482181,
		0.625443, 0.619461, 0.474436,
		0.103434, -0.668498, 0.736486,
		37.581203, 33.025661, 32.550327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253311, 33.535843, 32.255039>,  <37.508801, 33.493610, 32.034786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253311, 33.535843, 32.255039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089657, 33.192558, 32.379025>,  <37.991463, 32.986588, 32.453415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089657, 33.192558, 32.379025>,  <38.253311, 33.535843, 32.255039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089657, 33.192558, 32.379025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713728, -0.512639, -0.477277,
		0.568504, 0.025956, 0.822271,
		-0.409140, -0.858212, 0.309963,
		37.966915, 32.935093, 32.472012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715019, 32.995296, 32.225166>,  <38.253311, 33.535843, 32.255039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715019, 32.995296, 32.225166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379726, 32.779343, 32.255875>,  <38.178551, 32.649769, 32.274300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379726, 32.779343, 32.255875>,  <38.715019, 32.995296, 32.225166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379726, 32.779343, 32.255875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388241, -0.689697, -0.611218,
		0.382941, -0.482533, 0.787730,
		-0.838228, -0.539889, 0.076774,
		38.128258, 32.617374, 32.278908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966499, 32.296177, 32.366524>,  <38.715019, 32.995296, 32.225166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966499, 32.296177, 32.366524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595840, 32.260292, 32.220497>,  <38.373444, 32.238762, 32.132881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595840, 32.260292, 32.220497>,  <38.966499, 32.296177, 32.366524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595840, 32.260292, 32.220497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340460, -0.612049, -0.713781,
		-0.159400, -0.785715, 0.597699,
		-0.926649, -0.089716, -0.365065,
		38.317844, 32.233376, 32.110977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972992, 31.624741, 32.302563>,  <38.966499, 32.296177, 32.366524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972992, 31.624741, 32.302563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694683, 31.772167, 32.055965>,  <38.527699, 31.860622, 31.908009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694683, 31.772167, 32.055965>,  <38.972992, 31.624741, 32.302563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694683, 31.772167, 32.055965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438871, -0.461301, -0.771099,
		-0.568590, -0.807068, 0.159206,
		-0.695771, 0.368568, -0.616490,
		38.485950, 31.882738, 31.871017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720703, 31.058048, 31.792814>,  <38.972992, 31.624741, 32.302563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720703, 31.058048, 31.792814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636219, 31.416103, 31.635782>,  <38.585529, 31.630938, 31.541563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636219, 31.416103, 31.635782>,  <38.720703, 31.058048, 31.792814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636219, 31.416103, 31.635782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174511, -0.360652, -0.916229,
		-0.961737, -0.262022, -0.080040,
		-0.211206, 0.895140, -0.392578,
		38.572857, 31.684645, 31.518009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360695, 30.802954, 31.115467>,  <38.720703, 31.058048, 31.792814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360695, 30.802954, 31.115467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441414, 31.188967, 31.048542>,  <38.489845, 31.420574, 31.008387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441414, 31.188967, 31.048542>,  <38.360695, 30.802954, 31.115467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441414, 31.188967, 31.048542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130927, -0.195872, -0.971850,
		-0.970637, 0.174213, -0.165875,
		0.201799, 0.965031, -0.167312,
		38.501953, 31.478476, 30.998348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910999, 30.956869, 30.580606>,  <38.360695, 30.802954, 31.115467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910999, 30.956869, 30.580606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178268, 31.254259, 30.569384>,  <38.338631, 31.432693, 30.562649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178268, 31.254259, 30.569384>,  <37.910999, 30.956869, 30.580606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178268, 31.254259, 30.569384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044468, -0.077552, -0.995996,
		-0.742674, 0.664252, -0.084879,
		0.668175, 0.743475, -0.028058,
		38.378719, 31.477301, 30.560966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673237, 31.297901, 30.168262>,  <37.910999, 30.956869, 30.580606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673237, 31.297901, 30.168262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044250, 31.447372, 30.165810>,  <38.266861, 31.537054, 30.164337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044250, 31.447372, 30.165810>,  <37.673237, 31.297901, 30.168262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044250, 31.447372, 30.165810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028377, 0.054053, -0.998135,
		-0.372648, 0.925983, 0.060740,
		0.927539, 0.373677, -0.006134,
		38.322514, 31.559475, 30.163969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723248, 31.962389, 29.800613>,  <37.673237, 31.297901, 30.168262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723248, 31.962389, 29.800613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082005, 31.785738, 29.791260>,  <38.297260, 31.679747, 29.785648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082005, 31.785738, 29.791260>,  <37.723248, 31.962389, 29.800613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082005, 31.785738, 29.791260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059706, 0.173309, -0.983056,
		0.438198, 0.880300, 0.181808,
		0.896893, -0.441629, -0.023384,
		38.351074, 31.653250, 29.784245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151619, 32.466255, 29.408133>,  <37.723248, 31.962389, 29.800613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151619, 32.466255, 29.408133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296780, 32.093548, 29.403851>,  <38.383877, 31.869925, 29.401281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296780, 32.093548, 29.403851>,  <38.151619, 32.466255, 29.408133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296780, 32.093548, 29.403851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123040, -0.036529, -0.991729,
		0.923670, 0.361214, -0.127901,
		0.362899, -0.931767, -0.010703,
		38.405647, 31.814018, 29.400639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793510, 32.500103, 28.953083>,  <38.151619, 32.466255, 29.408133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793510, 32.500103, 28.953083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665405, 32.121197, 28.957573>,  <38.588543, 31.893854, 28.960268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665405, 32.121197, 28.957573>,  <38.793510, 32.500103, 28.953083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665405, 32.121197, 28.957573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304719, 0.091789, -0.948009,
		0.896982, -0.307034, -0.318046,
		-0.320264, -0.947261, 0.011226,
		38.569324, 31.837019, 28.960941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876076, 32.313530, 28.198231>,  <38.793510, 32.500103, 28.953083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876076, 32.313530, 28.198231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666054, 32.009933, 28.352245>,  <38.540043, 31.827776, 28.444654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666054, 32.009933, 28.352245>,  <38.876076, 32.313530, 28.198231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666054, 32.009933, 28.352245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377132, -0.198077, -0.904730,
		0.762950, -0.620238, -0.182240,
		-0.525051, -0.758993, 0.385034,
		38.508537, 31.782236, 28.467756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037663, 31.653791, 27.811184>,  <38.876076, 32.313530, 28.198231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037663, 31.653791, 27.811184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688931, 31.566793, 27.986736>,  <38.479691, 31.514595, 28.092068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688931, 31.566793, 27.986736>,  <39.037663, 31.653791, 27.811184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688931, 31.566793, 27.986736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369528, -0.296085, -0.880785,
		0.321512, -0.930070, 0.177764,
		-0.871825, -0.217494, 0.438882,
		38.427383, 31.501545, 28.118401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837917, 30.970261, 27.666464>,  <39.037663, 31.653791, 27.811184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837917, 30.970261, 27.666464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489269, 31.151484, 27.741312>,  <38.280079, 31.260218, 27.786221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489269, 31.151484, 27.741312>,  <38.837917, 30.970261, 27.666464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489269, 31.151484, 27.741312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397040, -0.428673, -0.811541,
		-0.287459, -0.781652, 0.553522,
		-0.871623, 0.453055, 0.187121,
		38.227783, 31.287401, 27.797447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296631, 30.504610, 27.585281>,  <38.837917, 30.970261, 27.666464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296631, 30.504610, 27.585281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115929, 30.859602, 27.548855>,  <38.007507, 31.072598, 27.526999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115929, 30.859602, 27.548855>,  <38.296631, 30.504610, 27.585281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115929, 30.859602, 27.548855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321373, -0.257107, -0.911381,
		-0.832246, -0.382459, 0.401363,
		-0.451759, 0.887480, -0.091065,
		37.980400, 31.125847, 27.521536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.462097, 30.397278, 27.301453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554104, 30.780834, 27.234980>,  <37.609310, 31.010969, 27.195095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554104, 30.780834, 27.234980>,  <37.462097, 30.397278, 27.301453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554104, 30.780834, 27.234980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496680, -0.031178, -0.867373,
		-0.836899, 0.282052, 0.469091,
		0.230019, 0.958892, -0.166182,
		37.623108, 31.068502, 27.185125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935658, 30.571365, 26.951769>,  <37.462097, 30.397278, 27.301453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935658, 30.571365, 26.951769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216846, 30.844006, 26.870529>,  <37.385559, 31.007591, 26.821785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216846, 30.844006, 26.870529>,  <36.935658, 30.571365, 26.951769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216846, 30.844006, 26.870529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349211, 0.082017, -0.933448,
		-0.619583, 0.727111, 0.295679,
		0.702971, 0.681603, -0.203099,
		37.427738, 31.048487, 26.809599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545609, 31.050358, 26.510323>,  <36.935658, 30.571365, 26.951769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545609, 31.050358, 26.510323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940571, 31.096155, 26.466654>,  <37.177547, 31.123634, 26.440453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940571, 31.096155, 26.466654>,  <36.545609, 31.050358, 26.510323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940571, 31.096155, 26.466654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095965, -0.115142, -0.988703,
		-0.125770, 0.986729, -0.102705,
		0.987407, 0.114493, -0.109173,
		37.236794, 31.130503, 26.433903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652599, 31.549171, 25.955309>,  <36.545609, 31.050358, 26.510323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652599, 31.549171, 25.955309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008320, 31.368000, 25.980614>,  <37.221752, 31.259298, 25.995796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008320, 31.368000, 25.980614>,  <36.652599, 31.549171, 25.955309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008320, 31.368000, 25.980614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033804, -0.072852, -0.996770,
		0.456073, 0.888566, -0.049477,
		0.889300, -0.452928, 0.063263,
		37.275108, 31.232122, 25.999592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188358, 31.831852, 25.369581>,  <36.652599, 31.549171, 25.955309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188358, 31.831852, 25.369581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334915, 31.476213, 25.479313>,  <37.422852, 31.262831, 25.545153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334915, 31.476213, 25.479313>,  <37.188358, 31.831852, 25.369581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334915, 31.476213, 25.479313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195364, -0.214751, -0.956930,
		0.909718, 0.404210, 0.095014,
		0.366397, -0.889098, 0.274332,
		37.444836, 31.209484, 25.561613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838722, 31.715086, 25.037163>,  <37.188358, 31.831852, 25.369581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838722, 31.715086, 25.037163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746544, 31.335794, 25.124577>,  <37.691238, 31.108219, 25.177025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746544, 31.335794, 25.124577>,  <37.838722, 31.715086, 25.037163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746544, 31.335794, 25.124577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495367, -0.307615, -0.812394,
		0.837561, -0.078955, 0.540609,
		-0.230442, -0.948229, 0.218535,
		37.677410, 31.051325, 25.190138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376705, 31.296686, 24.607294>,  <37.838722, 31.715086, 25.037163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376705, 31.296686, 24.607294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106129, 31.025078, 24.721384>,  <37.943783, 30.862112, 24.789837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106129, 31.025078, 24.721384>,  <38.376705, 31.296686, 24.607294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106129, 31.025078, 24.721384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225197, -0.559420, -0.797707,
		0.701219, -0.475373, 0.531330,
		-0.676445, -0.679021, 0.285224,
		37.903194, 30.821371, 24.806952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749592, 30.722319, 24.633083>,  <38.376705, 31.296686, 24.607294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749592, 30.722319, 24.633083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363228, 30.632662, 24.581270>,  <38.131409, 30.578869, 24.550182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363228, 30.632662, 24.581270>,  <38.749592, 30.722319, 24.633083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363228, 30.632662, 24.581270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234874, -0.548326, -0.802604,
		0.108869, -0.805667, 0.582278,
		-0.965910, -0.224141, -0.129534,
		38.073456, 30.565420, 24.542410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774128, 29.998631, 24.471298>,  <38.749592, 30.722319, 24.633083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774128, 29.998631, 24.471298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434841, 30.155333, 24.328718>,  <38.231270, 30.249353, 24.243170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434841, 30.155333, 24.328718>,  <38.774128, 29.998631, 24.471298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434841, 30.155333, 24.328718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219961, -0.351663, -0.909918,
		-0.481817, -0.850212, 0.212114,
		-0.848215, 0.391757, -0.356450,
		38.180378, 30.272860, 24.221783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514507, 29.539171, 24.069704>,  <38.774128, 29.998631, 24.471298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514507, 29.539171, 24.069704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302341, 29.847643, 23.928883>,  <38.175041, 30.032726, 23.844389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302341, 29.847643, 23.928883>,  <38.514507, 29.539171, 24.069704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302341, 29.847643, 23.928883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342178, -0.185195, -0.921204,
		-0.775613, -0.609085, -0.165651,
		-0.530414, 0.771180, -0.352055,
		38.143219, 30.078997, 23.823267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292896, 29.302914, 23.408897>,  <38.514507, 29.539171, 24.069704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292896, 29.302914, 23.408897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.232349, 29.698191, 23.399410>,  <38.196022, 29.935356, 23.393719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.232349, 29.698191, 23.399410>,  <38.292896, 29.302914, 23.408897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232349, 29.698191, 23.399410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115514, -0.006146, -0.993287,
		-0.981705, -0.153089, -0.113220,
		-0.151365, 0.988193, -0.023717,
		38.186939, 29.994648, 23.392296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717426, 29.419708, 23.056444>,  <38.292896, 29.302914, 23.408897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717426, 29.419708, 23.056444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945129, 29.747398, 23.028673>,  <38.081749, 29.944012, 23.012011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945129, 29.747398, 23.028673>,  <37.717426, 29.419708, 23.056444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945129, 29.747398, 23.028673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112088, -0.160990, -0.980570,
		-0.814484, 0.550414, -0.183469,
		0.569256, 0.819223, -0.069429,
		38.115906, 29.993166, 23.007845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520683, 29.765860, 22.507694>,  <37.717426, 29.419708, 23.056444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520683, 29.765860, 22.507694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883221, 29.924513, 22.565968>,  <38.100742, 30.019705, 22.600931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883221, 29.924513, 22.565968>,  <37.520683, 29.765860, 22.507694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883221, 29.924513, 22.565968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080601, 0.176162, -0.981056,
		-0.414781, 0.900917, 0.127694,
		0.906344, 0.396631, 0.145683,
		38.155125, 30.043503, 22.609673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598598, 30.223480, 21.982428>,  <37.520683, 29.765860, 22.507694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598598, 30.223480, 21.982428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985847, 30.214441, 22.082207>,  <38.218197, 30.209019, 22.142075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985847, 30.214441, 22.082207>,  <37.598598, 30.223480, 21.982428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985847, 30.214441, 22.082207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245411, 0.284700, -0.926671,
		-0.050079, 0.958350, 0.281170,
		0.968125, -0.022596, 0.249447,
		38.276283, 30.207663, 22.157042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825878, 30.764515, 21.616940>,  <37.598598, 30.223480, 21.982428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825878, 30.764515, 21.616940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138512, 30.530279, 21.702925>,  <38.326092, 30.389738, 21.754517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138512, 30.530279, 21.702925>,  <37.825878, 30.764515, 21.616940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138512, 30.530279, 21.702925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374602, 0.165055, -0.912376,
		0.498796, 0.793626, 0.348367,
		0.781586, -0.585588, 0.214965,
		38.372986, 30.354603, 21.767414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505520, 31.171167, 21.656937>,  <37.825878, 30.764515, 21.616940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505520, 31.171167, 21.656937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606354, 30.789852, 21.590370>,  <38.666855, 30.561062, 21.550430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606354, 30.789852, 21.590370>,  <38.505520, 31.171167, 21.656937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606354, 30.789852, 21.590370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561787, 0.284186, -0.776939,
		0.787941, 0.102361, 0.607183,
		0.252081, -0.953289, -0.166417,
		38.681976, 30.503866, 21.540445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290138, 31.089941, 21.597260>,  <38.505520, 31.171167, 21.656937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290138, 31.089941, 21.597260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131466, 30.764423, 21.427372>,  <39.036263, 30.569113, 21.325439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131466, 30.764423, 21.427372>,  <39.290138, 31.089941, 21.597260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131466, 30.764423, 21.427372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636213, 0.089798, -0.766270,
		0.661726, -0.574172, 0.482126,
		-0.396677, -0.813795, -0.424718,
		39.012463, 30.520285, 21.299957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854546, 30.626738, 21.319904>,  <39.290138, 31.089941, 21.597260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854546, 30.626738, 21.319904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517826, 30.530731, 21.126507>,  <39.315796, 30.473127, 21.010468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517826, 30.530731, 21.126507>,  <39.854546, 30.626738, 21.319904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517826, 30.530731, 21.126507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443156, 0.204124, -0.872895,
		0.308205, -0.949065, -0.065465,
		-0.841797, -0.240019, -0.483495,
		39.265285, 30.458727, 20.981459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120651, 30.548662, 20.736475>,  <39.854546, 30.626738, 21.319904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120651, 30.548662, 20.736475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.737068, 30.518978, 20.627007>,  <39.506920, 30.501167, 20.561325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.737068, 30.518978, 20.627007>,  <40.120651, 30.548662, 20.736475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737068, 30.518978, 20.627007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263381, 0.124403, -0.956637,
		0.105032, -0.989453, -0.099753,
		-0.958957, -0.074205, -0.273669,
		39.449383, 30.496716, 20.544905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070450, 30.019377, 20.238476>,  <40.120651, 30.548662, 20.736475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070450, 30.019377, 20.238476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758568, 30.263290, 20.181602>,  <39.571438, 30.409639, 20.147478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758568, 30.263290, 20.181602>,  <40.070450, 30.019377, 20.238476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758568, 30.263290, 20.181602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289163, 0.149267, -0.945571,
		-0.555372, -0.778384, -0.292712,
		-0.779709, 0.609785, -0.142181,
		39.524654, 30.446226, 20.138948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720852, 29.787310, 19.671902>,  <40.070450, 30.019377, 20.238476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720852, 29.787310, 19.671902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616318, 30.173183, 19.685085>,  <39.553596, 30.404709, 19.692995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616318, 30.173183, 19.685085>,  <39.720852, 29.787310, 19.671902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616318, 30.173183, 19.685085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175474, 0.081055, -0.981141,
		-0.949164, -0.250624, -0.190460,
		-0.261335, 0.964685, 0.032957,
		39.537918, 30.462589, 19.694973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103336, 29.949551, 19.213606>,  <39.720852, 29.787310, 19.671902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103336, 29.949551, 19.213606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305935, 30.287304, 19.283443>,  <39.427494, 30.489956, 19.325346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305935, 30.287304, 19.283443>,  <39.103336, 29.949551, 19.213606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305935, 30.287304, 19.283443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121466, 0.130597, -0.983967,
		-0.853645, 0.519580, -0.036417,
		0.506494, 0.844382, 0.174595,
		39.457882, 30.540619, 19.335821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844700, 30.481592, 18.738752>,  <39.103336, 29.949551, 19.213606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844700, 30.481592, 18.738752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.217793, 30.609312, 18.805750>,  <39.441650, 30.685944, 18.845947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.217793, 30.609312, 18.805750>,  <38.844700, 30.481592, 18.738752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217793, 30.609312, 18.805750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216164, -0.123406, -0.968527,
		-0.288578, 0.939585, -0.184126,
		0.932736, 0.319297, 0.167492,
		39.497612, 30.705101, 18.855997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155605, 30.493708, 18.419106>,  <38.844700, 30.481592, 18.738752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155605, 30.493708, 18.419106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872105, 30.518503, 18.138012>,  <37.702003, 30.533381, 17.969357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872105, 30.518503, 18.138012>,  <38.155605, 30.493708, 18.419106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872105, 30.518503, 18.138012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703728, -0.131918, 0.698115,
		-0.049429, 0.989321, 0.137119,
		-0.708748, 0.061988, -0.702733,
		37.659481, 30.537100, 17.927193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644398, 30.888155, 18.622513>,  <38.155605, 30.493708, 18.419106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644398, 30.888155, 18.622513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469509, 30.640736, 18.361364>,  <37.364578, 30.492285, 18.204676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469509, 30.640736, 18.361364>,  <37.644398, 30.888155, 18.622513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469509, 30.640736, 18.361364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667566, -0.263240, 0.696462,
		-0.602657, 0.740339, -0.297829,
		-0.437218, -0.618548, -0.652869,
		37.338345, 30.455172, 18.165504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924862, 31.044680, 18.683342>,  <37.644398, 30.888155, 18.622513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924862, 31.044680, 18.683342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928173, 30.692764, 18.493225>,  <36.930161, 30.481615, 18.379154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928173, 30.692764, 18.493225>,  <36.924862, 31.044680, 18.683342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928173, 30.692764, 18.493225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742168, -0.323955, 0.586720,
		-0.670163, 0.347889, -0.655633,
		0.008282, -0.879788, -0.475294,
		36.930656, 30.428827, 18.350637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239216, 30.871218, 18.555569>,  <36.924862, 31.044680, 18.683342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239216, 30.871218, 18.555569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445549, 30.528572, 18.550985>,  <36.569347, 30.322985, 18.548235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445549, 30.528572, 18.550985>,  <36.239216, 30.871218, 18.555569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445549, 30.528572, 18.550985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545222, -0.338575, 0.766876,
		-0.660798, -0.389328, -0.641693,
		0.515828, -0.856616, -0.011459,
		36.600296, 30.271587, 18.547548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662495, 30.264864, 18.625393>,  <36.239216, 30.871218, 18.555569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662495, 30.264864, 18.625393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035511, 30.159479, 18.724154>,  <36.259319, 30.096249, 18.783411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035511, 30.159479, 18.724154>,  <35.662495, 30.264864, 18.625393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035511, 30.159479, 18.724154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315509, -0.262067, 0.912017,
		-0.175570, -0.928392, -0.327510,
		0.932539, -0.263455, 0.246905,
		36.315273, 30.080441, 18.798225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556828, 29.764666, 18.907675>,  <35.662495, 30.264864, 18.625393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556828, 29.764666, 18.907675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917034, 29.842537, 19.063200>,  <36.133156, 29.889259, 19.156515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917034, 29.842537, 19.063200>,  <35.556828, 29.764666, 18.907675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917034, 29.842537, 19.063200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343216, -0.230782, 0.910463,
		0.266978, -0.953331, -0.141005,
		0.900514, 0.194678, 0.388812,
		36.187187, 29.900940, 19.179844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528168, 29.349550, 19.396999>,  <35.556828, 29.764666, 18.907675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528168, 29.349550, 19.396999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814934, 29.604609, 19.509739>,  <35.986992, 29.757645, 19.577383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814934, 29.604609, 19.509739>,  <35.528168, 29.349550, 19.396999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814934, 29.604609, 19.509739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277361, -0.110035, 0.954444,
		0.639611, -0.762429, 0.097973,
		0.716916, 0.637647, 0.281848,
		36.030010, 29.795902, 19.594294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955475, 28.982273, 19.868294>,  <35.528168, 29.349550, 19.396999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955475, 28.982273, 19.868294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026428, 29.372845, 19.917484>,  <36.069000, 29.607187, 19.946999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026428, 29.372845, 19.917484>,  <35.955475, 28.982273, 19.868294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026428, 29.372845, 19.917484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000430, -0.125036, 0.992152,
		0.984142, -0.175935, -0.022598,
		0.177379, 0.976429, 0.122978,
		36.079643, 29.665773, 19.954378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411839, 28.976492, 20.432430>,  <35.955475, 28.982273, 19.868294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411839, 28.976492, 20.432430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269302, 29.347874, 20.390482>,  <36.183781, 29.570702, 20.365313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269302, 29.347874, 20.390482>,  <36.411839, 28.976492, 20.432430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269302, 29.347874, 20.390482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000499, 0.112049, 0.993703,
		0.934356, 0.354149, -0.039464,
		-0.356341, 0.928452, -0.104870,
		36.162399, 29.626410, 20.359020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630440, 29.292990, 20.994217>,  <36.411839, 28.976492, 20.432430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630440, 29.292990, 20.994217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347759, 29.557505, 20.893602>,  <36.178150, 29.716213, 20.833233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347759, 29.557505, 20.893602>,  <36.630440, 29.292990, 20.994217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347759, 29.557505, 20.893602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157254, 0.199816, 0.967132,
		0.689815, 0.723029, -0.037220,
		-0.706701, 0.661289, -0.251536,
		36.135750, 29.755892, 20.818142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775070, 29.944441, 21.275803>,  <36.630440, 29.292990, 20.994217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775070, 29.944441, 21.275803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379692, 29.907192, 21.227970>,  <36.142464, 29.884844, 21.199270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379692, 29.907192, 21.227970>,  <36.775070, 29.944441, 21.275803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379692, 29.907192, 21.227970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142639, 0.304797, 0.941676,
		-0.051242, 0.947854, -0.314558,
		-0.988447, -0.093122, -0.119583,
		36.083157, 29.879255, 21.192095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502254, 30.421495, 21.727560>,  <36.775070, 29.944441, 21.275803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502254, 30.421495, 21.727560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167049, 30.216343, 21.653065>,  <35.965927, 30.093252, 21.608368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167049, 30.216343, 21.653065>,  <36.502254, 30.421495, 21.727560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167049, 30.216343, 21.653065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335357, 0.214871, 0.917260,
		-0.430428, 0.831134, -0.352063,
		-0.838014, -0.512881, -0.186240,
		35.915646, 30.062479, 21.597193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989075, 30.818108, 22.017092>,  <36.502254, 30.421495, 21.727560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989075, 30.818108, 22.017092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828381, 30.451815, 22.014544>,  <35.731964, 30.232038, 22.013016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828381, 30.451815, 22.014544>,  <35.989075, 30.818108, 22.017092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828381, 30.451815, 22.014544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303224, 0.126457, 0.944491,
		-0.864096, 0.381369, -0.328475,
		-0.401737, -0.915733, -0.006370,
		35.707859, 30.177095, 22.012632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274227, 30.871944, 22.254765>,  <35.989075, 30.818108, 22.017092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274227, 30.871944, 22.254765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392860, 30.495419, 22.319216>,  <35.464043, 30.269503, 22.357887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392860, 30.495419, 22.319216>,  <35.274227, 30.871944, 22.254765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392860, 30.495419, 22.319216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388137, 0.035346, 0.920924,
		-0.872574, -0.335674, -0.354876,
		0.296587, -0.941315, 0.161129,
		35.481838, 30.213024, 22.367554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727615, 30.592615, 22.830008>,  <35.274227, 30.871944, 22.254765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727615, 30.592615, 22.830008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.026375, 30.326670, 22.826094>,  <35.205631, 30.167103, 22.823746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.026375, 30.326670, 22.826094>,  <34.727615, 30.592615, 22.830008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026375, 30.326670, 22.826094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043046, -0.063034, 0.997083,
		-0.663542, -0.744299, -0.075699,
		0.746899, -0.664865, -0.009787,
		35.250446, 30.127211, 22.823158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469292, 29.996019, 23.210142>,  <34.727615, 30.592615, 22.830008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469292, 29.996019, 23.210142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867905, 29.966751, 23.225994>,  <35.107071, 29.949190, 23.235506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867905, 29.966751, 23.225994>,  <34.469292, 29.996019, 23.210142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867905, 29.966751, 23.225994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044781, -0.070139, 0.996531,
		-0.070139, -0.994850, -0.073173,
		-0.996531, 0.073173, -0.039630,
		35.166862, 29.944799, 23.237883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604000, 29.369152, 23.503658>,  <34.469292, 29.996019, 23.210142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604000, 29.369152, 23.503658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933899, 29.585474, 23.569775>,  <35.131840, 29.715267, 23.609444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933899, 29.585474, 23.569775>,  <34.604000, 29.369152, 23.503658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933899, 29.585474, 23.569775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057172, -0.211052, 0.975801,
		0.562605, -0.814239, -0.143145,
		0.824746, 0.540807, 0.165291,
		35.181324, 29.747717, 23.619362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120190, 28.941267, 23.717562>,  <34.604000, 29.369152, 23.503658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120190, 28.941267, 23.717562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235542, 29.306936, 23.831490>,  <35.304752, 29.526339, 23.899847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235542, 29.306936, 23.831490>,  <35.120190, 28.941267, 23.717562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235542, 29.306936, 23.831490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022721, -0.303906, 0.952431,
		0.957247, -0.268190, -0.108411,
		0.288379, 0.914175, 0.284820,
		35.322056, 29.581188, 23.916935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479813, 28.742313, 24.264273>,  <35.120190, 28.941267, 23.717562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479813, 28.742313, 24.264273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448498, 29.140827, 24.278629>,  <35.429710, 29.379936, 24.287243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448498, 29.140827, 24.278629>,  <35.479813, 28.742313, 24.264273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448498, 29.140827, 24.278629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103722, -0.043947, 0.993635,
		0.991521, 0.074065, 0.106777,
		-0.078286, 0.996285, 0.035892,
		35.425011, 29.439713, 24.289396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965683, 29.049671, 24.610006>,  <35.479813, 28.742313, 24.264273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965683, 29.049671, 24.610006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.693001, 29.339067, 24.653519>,  <35.529392, 29.512707, 24.679626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.693001, 29.339067, 24.653519>,  <35.965683, 29.049671, 24.610006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693001, 29.339067, 24.653519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149717, -0.007586, 0.988700,
		0.716143, 0.690290, -0.103147,
		-0.681707, 0.723493, 0.108781,
		35.488487, 29.556116, 24.686153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168953, 29.506544, 25.168295>,  <35.965683, 29.049671, 24.610006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168953, 29.506544, 25.168295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782562, 29.605732, 25.138891>,  <35.550728, 29.665245, 25.121248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782562, 29.605732, 25.138891>,  <36.168953, 29.506544, 25.168295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782562, 29.605732, 25.138891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059440, 0.063770, 0.996193,
		0.251716, 0.966666, -0.046861,
		-0.965974, 0.247972, -0.073511,
		35.492771, 29.680124, 25.116838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.535870, 31.176199, 29.749950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160774, 31.314484, 29.763437>,  <38.935719, 31.397455, 29.771530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160774, 31.314484, 29.763437>,  <39.535870, 31.176199, 29.749950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160774, 31.314484, 29.763437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134429, 0.271693, 0.952949,
		0.320285, 0.898146, -0.301250,
		-0.937735, 0.345712, 0.033717,
		38.879456, 31.418198, 29.773552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630188, 31.746683, 30.195597>,  <39.535870, 31.176199, 29.749950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630188, 31.746683, 30.195597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231464, 31.715094, 30.190872>,  <38.992229, 31.696140, 30.188038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231464, 31.715094, 30.190872>,  <39.630188, 31.746683, 30.195597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231464, 31.715094, 30.190872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045245, 0.436739, 0.898450,
		-0.065796, 0.896115, -0.438917,
		-0.996807, -0.078973, -0.011809,
		38.932423, 31.691402, 30.187330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333050, 32.366123, 30.544979>,  <39.630188, 31.746683, 30.195597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333050, 32.366123, 30.544979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053135, 32.080875, 30.561764>,  <38.885185, 31.909727, 30.571835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053135, 32.080875, 30.561764>,  <39.333050, 32.366123, 30.544979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053135, 32.080875, 30.561764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159051, 0.212804, 0.964063,
		-0.696422, 0.667962, -0.262340,
		-0.699785, -0.713120, 0.041961,
		38.843201, 31.866940, 30.574352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709354, 32.704441, 30.745998>,  <39.333050, 32.366123, 30.544979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709354, 32.704441, 30.745998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.687279, 32.316666, 30.841614>,  <38.674034, 32.084000, 30.898983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.687279, 32.316666, 30.841614>,  <38.709354, 32.704441, 30.745998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687279, 32.316666, 30.841614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310139, 0.244205, 0.918792,
		-0.949088, -0.023428, -0.314138,
		-0.055189, -0.969441, 0.239038,
		38.670723, 32.025833, 30.913324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056355, 32.680218, 30.865505>,  <38.709354, 32.704441, 30.745998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056355, 32.680218, 30.865505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225628, 32.377411, 31.064642>,  <38.327190, 32.195728, 31.184124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225628, 32.377411, 31.064642>,  <38.056355, 32.680218, 30.865505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225628, 32.377411, 31.064642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357501, 0.365373, 0.859474,
		-0.832532, -0.541693, -0.116014,
		0.423183, -0.757015, 0.497840,
		38.352581, 32.150307, 31.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481400, 32.236565, 31.082340>,  <38.056355, 32.680218, 30.865505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481400, 32.236565, 31.082340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782700, 32.141956, 31.327833>,  <37.963478, 32.085190, 31.475130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782700, 32.141956, 31.327833>,  <37.481400, 32.236565, 31.082340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782700, 32.141956, 31.327833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550363, 0.284289, 0.785035,
		-0.360156, -0.929106, 0.083968,
		0.753252, -0.236522, 0.613734,
		38.008675, 32.070999, 31.511953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127232, 31.982473, 31.650581>,  <37.481400, 32.236565, 31.082340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127232, 31.982473, 31.650581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494194, 32.071613, 31.782457>,  <37.714371, 32.125099, 31.861584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494194, 32.071613, 31.782457>,  <37.127232, 31.982473, 31.650581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494194, 32.071613, 31.782457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387082, 0.307502, 0.869258,
		0.092333, -0.925084, 0.368366,
		0.917410, 0.222849, 0.329691,
		37.769417, 32.138470, 31.881365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089161, 31.833960, 32.330204>,  <37.127232, 31.982473, 31.650581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089161, 31.833960, 32.330204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413292, 32.068260, 32.323681>,  <37.607769, 32.208839, 32.319767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413292, 32.068260, 32.323681>,  <37.089161, 31.833960, 32.330204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413292, 32.068260, 32.323681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262666, 0.387971, 0.883451,
		0.523813, -0.711597, 0.468240,
		0.810325, 0.585754, -0.016311,
		37.656391, 32.243988, 32.318787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421211, 31.774860, 32.993504>,  <37.089161, 31.833960, 32.330204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421211, 31.774860, 32.993504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.541103, 32.108414, 32.808117>,  <37.613037, 32.308544, 32.696884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.541103, 32.108414, 32.808117>,  <37.421211, 31.774860, 32.993504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541103, 32.108414, 32.808117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319244, 0.545462, 0.774955,
		0.899025, -0.084317, 0.429703,
		0.299728, 0.833884, -0.463466,
		37.631023, 32.358578, 32.669079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773170, 32.172691, 33.521149>,  <37.421211, 31.774860, 32.993504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773170, 32.172691, 33.521149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.728611, 32.443832, 33.230465>,  <37.701878, 32.606518, 33.056053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.728611, 32.443832, 33.230465>,  <37.773170, 32.172691, 33.521149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728611, 32.443832, 33.230465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239529, 0.691390, 0.681620,
		0.964478, 0.249998, 0.085347,
		-0.111396, 0.677850, -0.726712,
		37.695194, 32.647186, 33.012451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124702, 32.788948, 33.668068>,  <37.773170, 32.172691, 33.521149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124702, 32.788948, 33.668068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.865192, 32.896965, 33.383488>,  <37.709484, 32.961777, 33.212738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.865192, 32.896965, 33.383488>,  <38.124702, 32.788948, 33.668068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865192, 32.896965, 33.383488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310365, 0.759724, 0.571395,
		0.694808, 0.591518, -0.409081,
		-0.648779, 0.270045, -0.711450,
		37.670559, 32.977978, 33.170052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234142, 33.583561, 33.608215>,  <38.124702, 32.788948, 33.668068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234142, 33.583561, 33.608215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886795, 33.495571, 33.430431>,  <37.678387, 33.442776, 33.323761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886795, 33.495571, 33.430431>,  <38.234142, 33.583561, 33.608215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886795, 33.495571, 33.430431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406028, 0.829956, 0.382510,
		0.284741, 0.512624, -0.810024,
		-0.868368, -0.219976, -0.444462,
		37.626286, 33.429577, 33.297092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997425, 34.154327, 33.997017>,  <38.234142, 33.583561, 33.608215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997425, 34.154327, 33.997017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909271, 33.960873, 34.335846>,  <37.856380, 33.844799, 34.539143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909271, 33.960873, 34.335846>,  <37.997425, 34.154327, 33.997017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909271, 33.960873, 34.335846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746295, 0.475574, 0.465696,
		-0.628072, 0.734796, 0.256126,
		-0.220385, -0.483636, 0.847069,
		37.843155, 33.815781, 34.589966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568531, 34.602825, 34.127220>,  <37.997425, 34.154327, 33.997017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568531, 34.602825, 34.127220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904259, 34.819000, 34.103668>,  <39.105694, 34.948708, 34.089539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904259, 34.819000, 34.103668>,  <38.568531, 34.602825, 34.127220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904259, 34.819000, 34.103668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363614, 0.477568, -0.799821,
		-0.404138, 0.692714, 0.597344,
		0.839319, 0.540441, -0.058877,
		39.156055, 34.981133, 34.086006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281712, 35.245247, 34.150909>,  <38.568531, 34.602825, 34.127220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281712, 35.245247, 34.150909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645683, 35.233185, 33.985443>,  <38.864067, 35.225948, 33.886162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645683, 35.233185, 33.985443>,  <38.281712, 35.245247, 34.150909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645683, 35.233185, 33.985443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341603, 0.511166, -0.788680,
		0.235237, 0.858953, 0.454823,
		0.909929, -0.030158, -0.413665,
		38.918663, 35.224136, 33.861343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447868, 35.885986, 33.723824>,  <38.281712, 35.245247, 34.150909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447868, 35.885986, 33.723824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.713100, 35.621300, 33.583847>,  <38.872238, 35.462486, 33.499863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.713100, 35.621300, 33.583847>,  <38.447868, 35.885986, 33.723824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713100, 35.621300, 33.583847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045271, 0.431181, -0.901129,
		0.747178, 0.613363, 0.255952,
		0.663080, -0.661716, -0.349937,
		38.912025, 35.422783, 33.478867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875885, 36.210369, 33.373402>,  <38.447868, 35.885986, 33.723824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875885, 36.210369, 33.373402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904781, 35.842384, 33.219284>,  <38.922119, 35.621593, 33.126812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904781, 35.842384, 33.219284>,  <38.875885, 36.210369, 33.373402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904781, 35.842384, 33.219284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175061, 0.368614, -0.912950,
		0.981904, 0.133405, -0.134419,
		0.072244, -0.919960, -0.385297,
		38.926453, 35.566395, 33.103695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002243, 36.327137, 32.686047>,  <38.875885, 36.210369, 33.373402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002243, 36.327137, 32.686047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890736, 35.943180, 32.674110>,  <38.823833, 35.712807, 32.666950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890736, 35.943180, 32.674110>,  <39.002243, 36.327137, 32.686047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890736, 35.943180, 32.674110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313892, 0.120435, -0.941789,
		0.907613, -0.253171, -0.334877,
		-0.278764, -0.959896, -0.029840,
		38.807106, 35.655212, 32.665157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206123, 36.053722, 32.027386>,  <39.002243, 36.327137, 32.686047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206123, 36.053722, 32.027386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899586, 35.830540, 32.154758>,  <38.715664, 35.696629, 32.231182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899586, 35.830540, 32.154758>,  <39.206123, 36.053722, 32.027386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899586, 35.830540, 32.154758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359983, -0.037595, -0.932201,
		0.532102, -0.829016, -0.172046,
		-0.766342, -0.557960, 0.318436,
		38.669682, 35.663151, 32.250290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970860, 35.713062, 31.465763>,  <39.206123, 36.053722, 32.027386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970860, 35.713062, 31.465763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.657845, 35.661957, 31.709505>,  <38.470036, 35.631294, 31.855751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.657845, 35.661957, 31.709505>,  <38.970860, 35.713062, 31.465763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657845, 35.661957, 31.709505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592272, -0.149018, -0.791838,
		0.191975, -0.980546, 0.040939,
		-0.782534, -0.127766, 0.609357,
		38.423084, 35.623627, 31.892313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517017, 35.134632, 31.184832>,  <38.970860, 35.713062, 31.465763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517017, 35.134632, 31.184832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278027, 35.362667, 31.410404>,  <38.134632, 35.499489, 31.545748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278027, 35.362667, 31.410404>,  <38.517017, 35.134632, 31.184832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278027, 35.362667, 31.410404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649253, 0.068822, -0.757452,
		-0.470624, -0.818698, 0.329010,
		-0.597481, 0.570086, 0.563932,
		38.098782, 35.533691, 31.579584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960075, 34.746811, 31.361334>,  <38.517017, 35.134632, 31.184832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960075, 34.746811, 31.361334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832809, 35.125179, 31.386616>,  <37.756451, 35.352200, 31.401785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832809, 35.125179, 31.386616>,  <37.960075, 34.746811, 31.361334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832809, 35.125179, 31.386616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437562, -0.087381, -0.894932,
		-0.841016, -0.312394, 0.441703,
		-0.318168, 0.945925, 0.063203,
		37.737358, 35.408958, 31.405577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385284, 34.645447, 31.005411>,  <37.960075, 34.746811, 31.361334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385284, 34.645447, 31.005411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406040, 35.042896, 31.045450>,  <37.418495, 35.281364, 31.069473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406040, 35.042896, 31.045450>,  <37.385284, 34.645447, 31.005411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406040, 35.042896, 31.045450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411764, 0.112604, -0.904307,
		-0.909812, 0.005709, 0.414981,
		0.051892, 0.993624, 0.100097,
		37.421608, 35.340984, 31.075480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704235, 34.915188, 31.006710>,  <37.385284, 34.645447, 31.005411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704235, 34.915188, 31.006710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957947, 35.196133, 30.877481>,  <37.110172, 35.364700, 30.799944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957947, 35.196133, 30.877481>,  <36.704235, 34.915188, 31.006710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957947, 35.196133, 30.877481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524777, 0.084280, -0.847057,
		-0.567716, 0.706809, 0.422043,
		0.634277, 0.702366, -0.323070,
		37.148232, 35.406841, 30.780560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417240, 35.102673, 30.415958>,  <36.704235, 34.915188, 31.006710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417240, 35.102673, 30.415958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750484, 35.323124, 30.397306>,  <36.950432, 35.455395, 30.386116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750484, 35.323124, 30.397306>,  <36.417240, 35.102673, 30.415958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750484, 35.323124, 30.397306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233838, 0.274565, -0.932702,
		-0.501238, 0.787952, 0.357619,
		0.833115, 0.551131, -0.046630,
		37.000420, 35.488464, 30.383318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193562, 35.709587, 30.173887>,  <36.417240, 35.102673, 30.415958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193562, 35.709587, 30.173887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580151, 35.651485, 30.089197>,  <36.812103, 35.616627, 30.038383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580151, 35.651485, 30.089197>,  <36.193562, 35.709587, 30.173887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580151, 35.651485, 30.089197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205610, 0.056071, -0.977026,
		0.153786, 0.987804, 0.024326,
		0.966475, -0.145251, -0.211726,
		36.870094, 35.607910, 30.025679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234108, 36.092342, 29.557314>,  <36.193562, 35.709587, 30.173887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234108, 36.092342, 29.557314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.577301, 35.887241, 29.569677>,  <36.783215, 35.764179, 29.577095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.577301, 35.887241, 29.569677>,  <36.234108, 36.092342, 29.557314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577301, 35.887241, 29.569677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031260, -0.112177, -0.993196,
		0.512734, 0.851175, -0.112274,
		0.857978, -0.512755, 0.030909,
		36.834694, 35.733414, 29.578951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709599, 36.312721, 29.086060>,  <36.234108, 36.092342, 29.557314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709599, 36.312721, 29.086060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.847797, 35.939777, 29.128641>,  <36.930717, 35.716011, 29.154190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.847797, 35.939777, 29.128641>,  <36.709599, 36.312721, 29.086060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847797, 35.939777, 29.128641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014887, -0.118870, -0.992798,
		0.938301, 0.341426, -0.054949,
		0.345499, -0.932362, 0.106453,
		36.951447, 35.660069, 29.160578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280567, 36.757156, 28.773699>,  <36.709599, 36.312721, 29.086060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280567, 36.757156, 28.773699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.899731, 36.790443, 28.655983>,  <35.671230, 36.810417, 28.585354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.899731, 36.790443, 28.655983>,  <36.280567, 36.757156, 28.773699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899731, 36.790443, 28.655983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284476, 0.112268, 0.952087,
		0.112268, 0.990187, -0.083216,
		-0.952087, 0.083216, -0.294288,
		35.614105, 36.815407, 28.567696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051392, 37.258820, 29.213409>,  <36.280567, 36.757156, 28.773699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051392, 37.258820, 29.213409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.730461, 37.061115, 29.079559>,  <35.537903, 36.942493, 28.999249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.730461, 37.061115, 29.079559>,  <36.051392, 37.258820, 29.213409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730461, 37.061115, 29.079559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385303, 0.000710, 0.922790,
		-0.455864, 0.869311, -0.191011,
		-0.802327, -0.494264, -0.334625,
		35.489761, 36.912834, 28.979172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579220, 37.659954, 29.411160>,  <36.051392, 37.258820, 29.213409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579220, 37.659954, 29.411160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.396935, 37.309330, 29.349237>,  <35.287563, 37.098953, 29.312084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.396935, 37.309330, 29.349237>,  <35.579220, 37.659954, 29.411160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396935, 37.309330, 29.349237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446374, 0.074580, 0.891733,
		-0.770115, 0.475474, -0.425261,
		-0.455712, -0.876563, -0.154804,
		35.260220, 37.046360, 29.302795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790474, 37.721592, 29.451700>,  <35.579220, 37.659954, 29.411160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790474, 37.721592, 29.451700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921642, 37.358273, 29.555593>,  <35.000343, 37.140282, 29.617929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921642, 37.358273, 29.555593>,  <34.790474, 37.721592, 29.451700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921642, 37.358273, 29.555593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489343, 0.071868, 0.869125,
		-0.808091, -0.412103, -0.420903,
		0.327919, -0.908298, 0.259735,
		35.020020, 37.085785, 29.633514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229385, 37.570721, 30.038755>,  <34.790474, 37.721592, 29.451700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229385, 37.570721, 30.038755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.507153, 37.285000, 30.073532>,  <34.673813, 37.113567, 30.094398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.507153, 37.285000, 30.073532>,  <34.229385, 37.570721, 30.038755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507153, 37.285000, 30.073532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170905, -0.046354, 0.984197,
		-0.698982, -0.698302, -0.154266,
		0.694418, -0.714301, 0.086943,
		34.715477, 37.070709, 30.099615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934113, 36.960014, 30.398241>,  <34.229385, 37.570721, 30.038755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934113, 36.960014, 30.398241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.328888, 36.937862, 30.458754>,  <34.565754, 36.924572, 30.495062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.328888, 36.937862, 30.458754>,  <33.934113, 36.960014, 30.398241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328888, 36.937862, 30.458754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153203, -0.032269, 0.987668,
		-0.049825, -0.997943, -0.040333,
		0.986938, -0.055389, 0.151280,
		34.624969, 36.921249, 30.504137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187752, 36.375111, 30.809561>,  <33.934113, 36.960014, 30.398241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187752, 36.375111, 30.809561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.494625, 36.623417, 30.874157>,  <34.678749, 36.772400, 30.912914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.494625, 36.623417, 30.874157>,  <34.187752, 36.375111, 30.809561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494625, 36.623417, 30.874157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072363, -0.166398, 0.983400,
		0.637336, -0.766131, -0.082736,
		0.767181, 0.620769, 0.161491,
		34.724781, 36.809647, 30.922604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799030, 35.970509, 31.178366>,  <34.187752, 36.375111, 30.809561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799030, 35.970509, 31.178366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842052, 36.366253, 31.217539>,  <34.867867, 36.603699, 31.241043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842052, 36.366253, 31.217539>,  <34.799030, 35.970509, 31.178366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842052, 36.366253, 31.217539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093876, -0.108173, 0.989690,
		0.989757, -0.097257, -0.104512,
		0.107560, 0.989363, 0.097935,
		34.874321, 36.663063, 31.246920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112118, 36.051865, 31.911371>,  <34.799030, 35.970509, 31.178366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112118, 36.051865, 31.911371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.978008, 36.418713, 31.825136>,  <34.897541, 36.638821, 31.773396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.978008, 36.418713, 31.825136>,  <35.112118, 36.051865, 31.911371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978008, 36.418713, 31.825136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092671, 0.195616, 0.976292,
		0.937550, 0.347308, 0.019405,
		-0.335278, 0.917121, -0.215586,
		34.877426, 36.693848, 31.760460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449169, 36.410179, 32.313072>,  <35.112118, 36.051865, 31.911371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449169, 36.410179, 32.313072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.128479, 36.618885, 32.196449>,  <34.936066, 36.744106, 32.126476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.128479, 36.618885, 32.196449>,  <35.449169, 36.410179, 32.313072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128479, 36.618885, 32.196449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380656, -0.069649, 0.922090,
		0.460805, 0.850243, 0.254451,
		-0.801723, 0.521762, -0.291555,
		34.887962, 36.775414, 32.108982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371773, 36.931847, 32.777290>,  <35.449169, 36.410179, 32.313072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371773, 36.931847, 32.777290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.996838, 36.914536, 32.639004>,  <34.771877, 36.904148, 32.556030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.996838, 36.914536, 32.639004>,  <35.371773, 36.931847, 32.777290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996838, 36.914536, 32.639004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342857, -0.061994, 0.937340,
		-0.061994, 0.997138, 0.043273,
		-0.937340, -0.043273, -0.345719,
		34.715637, 36.901554, 32.535290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003670, 37.173271, 33.255943>,  <35.371773, 36.931847, 32.777290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003670, 37.173271, 33.255943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.750172, 36.937008, 33.056145>,  <34.598072, 36.795250, 32.936268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.750172, 36.937008, 33.056145>,  <35.003670, 37.173271, 33.255943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750172, 36.937008, 33.056145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387805, -0.316108, 0.865842,
		-0.669310, 0.742428, -0.028729,
		-0.633744, -0.590658, -0.499492,
		34.560047, 36.759811, 32.906296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.842556, 37.085442, 24.799322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627480, 36.758270, 24.881186>,  <35.498432, 36.561970, 24.930304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627480, 36.758270, 24.881186>,  <35.842556, 37.085442, 24.799322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627480, 36.758270, 24.881186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263215, 0.393442, 0.880864,
		-0.801002, 0.419766, -0.426841,
		-0.537694, -0.817924, 0.204659,
		35.466171, 36.512894, 24.942583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355320, 37.331326, 25.175489>,  <35.842556, 37.085442, 24.799322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355320, 37.331326, 25.175489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338654, 36.943272, 25.271070>,  <35.328655, 36.710438, 25.328419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338654, 36.943272, 25.271070>,  <35.355320, 37.331326, 25.175489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338654, 36.943272, 25.271070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065182, 0.241289, 0.968262,
		-0.997003, 0.024766, -0.073289,
		-0.041664, -0.970138, 0.238951,
		35.326153, 36.652229, 25.342756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775272, 37.310688, 25.606247>,  <35.355320, 37.331326, 25.175489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775272, 37.310688, 25.606247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968761, 36.971584, 25.693260>,  <35.084854, 36.768124, 25.745468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968761, 36.971584, 25.693260>,  <34.775272, 37.310688, 25.606247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968761, 36.971584, 25.693260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210621, 0.128490, 0.969087,
		-0.849503, -0.514582, -0.116403,
		0.483718, -0.847759, 0.217535,
		35.113876, 36.717258, 25.758520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395367, 36.964024, 26.139816>,  <34.775272, 37.310688, 25.606247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395367, 36.964024, 26.139816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757751, 36.797638, 26.171331>,  <34.975182, 36.697807, 26.190241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757751, 36.797638, 26.171331>,  <34.395367, 36.964024, 26.139816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757751, 36.797638, 26.171331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086079, 0.001231, 0.996288,
		-0.414515, -0.909381, -0.034690,
		0.905962, -0.415963, 0.078789,
		35.029541, 36.672848, 26.194967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384243, 36.488068, 26.692934>,  <34.395367, 36.964024, 26.139816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384243, 36.488068, 26.692934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772781, 36.571869, 26.648048>,  <35.005905, 36.622150, 26.621117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772781, 36.571869, 26.648048>,  <34.384243, 36.488068, 26.692934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772781, 36.571869, 26.648048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094494, 0.092791, 0.991192,
		0.218068, -0.973396, 0.070335,
		0.971348, 0.209501, -0.112214,
		35.064186, 36.634720, 26.614384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547821, 36.185719, 27.256533>,  <34.384243, 36.488068, 26.692934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547821, 36.185719, 27.256533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874748, 36.390572, 27.150925>,  <35.070904, 36.513485, 27.087559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874748, 36.390572, 27.150925>,  <34.547821, 36.185719, 27.256533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874748, 36.390572, 27.150925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229021, 0.131717, 0.964469,
		0.528715, -0.848745, -0.009635,
		0.817319, 0.512136, -0.264021,
		35.119946, 36.544212, 27.071718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168762, 35.861637, 27.530561>,  <34.547821, 36.185719, 27.256533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168762, 35.861637, 27.530561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247074, 36.249950, 27.475058>,  <35.294064, 36.482937, 27.441755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247074, 36.249950, 27.475058>,  <35.168762, 35.861637, 27.530561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247074, 36.249950, 27.475058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323891, 0.069542, 0.943535,
		0.925615, -0.229672, -0.300812,
		0.195784, 0.970781, -0.138758,
		35.305809, 36.541183, 27.433430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849789, 35.882156, 27.797781>,  <35.168762, 35.861637, 27.530561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849789, 35.882156, 27.797781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674839, 36.241699, 27.786736>,  <35.569870, 36.457424, 27.780107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674839, 36.241699, 27.786736>,  <35.849789, 35.882156, 27.797781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674839, 36.241699, 27.786736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212981, 0.133371, 0.967911,
		0.873694, 0.417459, -0.249772,
		-0.437376, 0.898855, -0.027614,
		35.543625, 36.511356, 27.778452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269802, 36.289898, 28.202600>,  <35.849789, 35.882156, 27.797781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269802, 36.289898, 28.202600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912415, 36.468239, 28.180937>,  <35.697983, 36.575245, 28.167938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912415, 36.468239, 28.180937>,  <36.269802, 36.289898, 28.202600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912415, 36.468239, 28.180937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008740, 0.137828, 0.990418,
		0.449045, 0.884431, -0.127041,
		-0.893466, 0.445853, -0.054161,
		35.644375, 36.601994, 28.164688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965851, 36.104485, 28.452728>,  <36.269802, 36.289898, 28.202600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965851, 36.104485, 28.452728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963413, 35.743290, 28.624582>,  <36.961952, 35.526573, 28.727694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963413, 35.743290, 28.624582>,  <36.965851, 36.104485, 28.452728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963413, 35.743290, 28.624582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177013, -0.421882, -0.889203,
		0.984190, -0.081467, -0.157270,
		-0.006091, -0.902983, 0.429633,
		36.961586, 35.472397, 28.753471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430756, 35.708565, 28.167048>,  <36.965851, 36.104485, 28.452728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430756, 35.708565, 28.167048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156914, 35.451607, 28.304825>,  <36.992607, 35.297432, 28.387491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156914, 35.451607, 28.304825>,  <37.430756, 35.708565, 28.167048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156914, 35.451607, 28.304825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079380, -0.535436, -0.840837,
		0.724580, -0.548299, 0.417555,
		-0.684604, -0.642399, 0.344442,
		36.951534, 35.258888, 28.408157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611496, 35.031342, 27.920824>,  <37.430756, 35.708565, 28.167048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611496, 35.031342, 27.920824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225964, 34.983219, 28.015949>,  <36.994644, 34.954346, 28.073025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225964, 34.983219, 28.015949>,  <37.611496, 35.031342, 27.920824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225964, 34.983219, 28.015949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130179, -0.566119, -0.813980,
		0.232555, -0.815498, 0.529983,
		-0.963832, -0.120302, 0.237815,
		36.936813, 34.947128, 28.087294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480640, 34.266998, 27.914490>,  <37.611496, 35.031342, 27.920824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480640, 34.266998, 27.914490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135860, 34.455849, 27.840593>,  <36.928993, 34.569160, 27.796255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135860, 34.455849, 27.840593>,  <37.480640, 34.266998, 27.914490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135860, 34.455849, 27.840593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060279, -0.457244, -0.887296,
		-0.503394, -0.753671, 0.422582,
		-0.861952, 0.472132, -0.184743,
		36.877274, 34.597488, 27.785172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187317, 33.810921, 27.530365>,  <37.480640, 34.266998, 27.914490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187317, 33.810921, 27.530365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935078, 34.118107, 27.485498>,  <36.783733, 34.302418, 27.458578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935078, 34.118107, 27.485498>,  <37.187317, 33.810921, 27.530365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935078, 34.118107, 27.485498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295774, -0.371415, -0.880095,
		-0.717540, -0.521810, 0.461357,
		-0.630598, 0.767961, -0.112167,
		36.745899, 34.348495, 27.451849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557278, 33.518177, 27.424314>,  <37.187317, 33.810921, 27.530365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557278, 33.518177, 27.424314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568558, 33.884285, 27.263577>,  <36.575325, 34.103951, 27.167133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568558, 33.884285, 27.263577>,  <36.557278, 33.518177, 27.424314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568558, 33.884285, 27.263577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269622, -0.380141, -0.884758,
		-0.962553, 0.133301, 0.236056,
		0.028205, 0.915272, -0.401847,
		36.577019, 34.158867, 27.143023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089901, 33.415588, 26.843782>,  <36.557278, 33.518177, 27.424314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089901, 33.415588, 26.843782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287331, 33.751953, 26.755011>,  <36.405788, 33.953770, 26.701748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287331, 33.751953, 26.755011>,  <36.089901, 33.415588, 26.843782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287331, 33.751953, 26.755011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104087, -0.310461, -0.944870,
		-0.863451, 0.443267, -0.240764,
		0.493577, 0.840909, -0.221930,
		36.435402, 34.004227, 26.688431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816277, 33.645588, 26.252016>,  <36.089901, 33.415588, 26.843782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816277, 33.645588, 26.252016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179588, 33.812775, 26.259270>,  <36.397575, 33.913086, 26.263622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179588, 33.812775, 26.259270>,  <35.816277, 33.645588, 26.252016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179588, 33.812775, 26.259270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151036, -0.287180, -0.945894,
		-0.390142, 0.861878, -0.323968,
		0.908283, 0.417964, 0.018133,
		36.452072, 33.938164, 26.264709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882080, 33.881165, 25.611782>,  <35.816277, 33.645588, 26.252016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882080, 33.881165, 25.611782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258698, 33.897381, 25.745558>,  <36.484669, 33.907108, 25.825823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258698, 33.897381, 25.745558>,  <35.882080, 33.881165, 25.611782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258698, 33.897381, 25.745558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332245, -0.275974, -0.901915,
		0.055736, 0.960310, -0.273310,
		0.941545, 0.040537, 0.334440,
		36.541161, 33.909542, 25.845890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224937, 34.402477, 25.119303>,  <35.882080, 33.881165, 25.611782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224937, 34.402477, 25.119303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526569, 34.199017, 25.285505>,  <36.707546, 34.076942, 25.385227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526569, 34.199017, 25.285505>,  <36.224937, 34.402477, 25.119303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526569, 34.199017, 25.285505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469686, -0.024574, -0.882491,
		0.459089, 0.860623, 0.220374,
		0.754077, -0.508649, 0.415504,
		36.752792, 34.046421, 25.410156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900597, 34.657700, 24.839134>,  <36.224937, 34.402477, 25.119303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900597, 34.657700, 24.839134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998123, 34.299740, 24.988642>,  <37.056637, 34.084965, 25.078346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998123, 34.299740, 24.988642>,  <36.900597, 34.657700, 24.839134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998123, 34.299740, 24.988642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495696, -0.216263, -0.841140,
		0.833571, 0.390356, 0.390872,
		0.243813, -0.894904, 0.373768,
		37.071266, 34.031269, 25.100773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650501, 34.553402, 24.595678>,  <36.900597, 34.657700, 24.839134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650501, 34.553402, 24.595678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492035, 34.193356, 24.668173>,  <37.396954, 33.977329, 24.711670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492035, 34.193356, 24.668173>,  <37.650501, 34.553402, 24.595678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492035, 34.193356, 24.668173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690526, -0.422175, -0.587318,
		0.605167, -0.107527, 0.788804,
		-0.396166, -0.900114, 0.181236,
		37.373184, 33.923321, 24.722544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224121, 34.123981, 24.703928>,  <37.650501, 34.553402, 24.595678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224121, 34.123981, 24.703928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938469, 33.853390, 24.631931>,  <37.767078, 33.691036, 24.588734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938469, 33.853390, 24.631931>,  <38.224121, 34.123981, 24.703928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938469, 33.853390, 24.631931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562152, -0.400981, -0.723326,
		0.417140, -0.617731, 0.666636,
		-0.714128, -0.676479, -0.179993,
		37.724232, 33.650448, 24.577934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553558, 33.434727, 24.779362>,  <38.224121, 34.123981, 24.703928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553558, 33.434727, 24.779362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240269, 33.423679, 24.530910>,  <38.052296, 33.417053, 24.381840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240269, 33.423679, 24.530910>,  <38.553558, 33.434727, 24.779362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240269, 33.423679, 24.530910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558950, -0.468784, -0.683972,
		-0.272286, -0.882881, 0.382598,
		-0.783221, -0.027617, -0.621130,
		38.005302, 33.415394, 24.344572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.172493, 30.495962, 23.137009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.487892, 30.739441, 23.101757>,  <32.677132, 30.885529, 23.080606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.487892, 30.739441, 23.101757>,  <32.172493, 30.495962, 23.137009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487892, 30.739441, 23.101757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158371, -0.062483, 0.985401,
		0.594302, -0.790940, -0.145667,
		0.788495, 0.608696, -0.088128,
		32.724442, 30.922049, 23.075319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796169, 30.219540, 23.572252>,  <32.172493, 30.495962, 23.137009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796169, 30.219540, 23.572252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.868004, 30.610640, 23.528879>,  <32.911106, 30.845299, 23.502855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.868004, 30.610640, 23.528879>,  <32.796169, 30.219540, 23.572252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868004, 30.610640, 23.528879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126566, 0.086343, 0.988193,
		0.975567, -0.191188, -0.108244,
		0.179585, 0.977749, -0.108431,
		32.921879, 30.903965, 23.496349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391117, 30.317844, 23.933313>,  <32.796169, 30.219540, 23.572252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391117, 30.317844, 23.933313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222446, 30.678299, 23.893019>,  <33.121246, 30.894571, 23.868843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222446, 30.678299, 23.893019>,  <33.391117, 30.317844, 23.933313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222446, 30.678299, 23.893019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196879, 0.199435, 0.959929,
		0.885116, 0.384944, -0.261511,
		-0.421673, 0.901135, -0.100736,
		33.095943, 30.948639, 23.862799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687263, 30.679323, 24.343035>,  <33.391117, 30.317844, 23.933313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687263, 30.679323, 24.343035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401131, 30.949747, 24.272331>,  <33.229450, 31.112001, 24.229910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401131, 30.949747, 24.272331>,  <33.687263, 30.679323, 24.343035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401131, 30.949747, 24.272331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026670, 0.279178, 0.959869,
		0.698276, 0.681911, -0.217735,
		-0.715332, 0.676060, -0.176757,
		33.186531, 31.152565, 24.219305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960724, 31.289169, 24.653973>,  <33.687263, 30.679323, 24.343035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960724, 31.289169, 24.653973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.561100, 31.305347, 24.647675>,  <33.321327, 31.315054, 24.643896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.561100, 31.305347, 24.647675>,  <33.960724, 31.289169, 24.653973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561100, 31.305347, 24.647675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006120, 0.227886, 0.973669,
		0.042967, 0.972848, -0.227424,
		-0.999058, 0.040444, -0.015746,
		33.261383, 31.317480, 24.642950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876488, 31.916910, 24.953028>,  <33.960724, 31.289169, 24.653973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876488, 31.916910, 24.953028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.515930, 31.744530, 24.969866>,  <33.299595, 31.641102, 24.979969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.515930, 31.744530, 24.969866>,  <33.876488, 31.916910, 24.953028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515930, 31.744530, 24.969866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044545, 0.188992, 0.980968,
		-0.430703, 0.882363, -0.189553,
		-0.901393, -0.430950, 0.042094,
		33.245514, 31.615244, 24.982494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457256, 32.397926, 25.357616>,  <33.876488, 31.916910, 24.953028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457256, 32.397926, 25.357616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258987, 32.051941, 25.388983>,  <33.140026, 31.844351, 25.407803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258987, 32.051941, 25.388983>,  <33.457256, 32.397926, 25.357616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258987, 32.051941, 25.388983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149243, 0.173771, 0.973412,
		-0.855590, 0.470792, -0.215223,
		-0.495674, -0.864962, 0.078414,
		33.110287, 31.792452, 25.412506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867180, 32.594357, 25.680294>,  <33.457256, 32.397926, 25.357616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867180, 32.594357, 25.680294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.890774, 32.198627, 25.733599>,  <32.904930, 31.961189, 25.765581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.890774, 32.198627, 25.733599>,  <32.867180, 32.594357, 25.680294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890774, 32.198627, 25.733599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244344, 0.115126, 0.962830,
		-0.967893, -0.089355, -0.234944,
		0.058985, -0.989324, 0.133263,
		32.908470, 31.901831, 25.773579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337921, 32.388359, 26.126858>,  <32.867180, 32.594357, 25.680294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337921, 32.388359, 26.126858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.593391, 32.081890, 26.155336>,  <32.746674, 31.898008, 26.172424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.593391, 32.081890, 26.155336>,  <32.337921, 32.388359, 26.126858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593391, 32.081890, 26.155336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159741, -0.041509, 0.986286,
		-0.752712, -0.641290, -0.148901,
		0.638676, -0.766175, 0.071196,
		32.784996, 31.852037, 26.176695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972002, 31.735870, 26.397612>,  <32.337921, 32.388359, 26.126858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972002, 31.735870, 26.397612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.362053, 31.710241, 26.482489>,  <32.596085, 31.694864, 26.533415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.362053, 31.710241, 26.482489>,  <31.972002, 31.735870, 26.397612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362053, 31.710241, 26.482489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199431, 0.164170, 0.966062,
		-0.096736, -0.984349, 0.147308,
		0.975126, -0.064075, 0.212191,
		32.654591, 31.691019, 26.546146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977674, 31.707409, 27.099884>,  <31.972002, 31.735870, 26.397612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977674, 31.707409, 27.099884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.377174, 31.714636, 27.081236>,  <32.616875, 31.718973, 27.070047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.377174, 31.714636, 27.081236>,  <31.977674, 31.707409, 27.099884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377174, 31.714636, 27.081236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046426, 0.011119, 0.998860,
		0.018593, -0.999775, 0.010265,
		0.998749, 0.018095, -0.046623,
		32.676800, 31.720057, 27.067249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237492, 31.133308, 27.504330>,  <31.977674, 31.707409, 27.099884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237492, 31.133308, 27.504330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519756, 31.416224, 27.487446>,  <32.689117, 31.585972, 27.477316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519756, 31.416224, 27.487446>,  <32.237492, 31.133308, 27.504330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519756, 31.416224, 27.487446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013743, 0.045896, 0.998852,
		0.708412, -0.705435, 0.022667,
		0.705665, 0.707287, -0.042209,
		32.731457, 31.628410, 27.474783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630054, 30.996986, 28.119989>,  <32.237492, 31.133308, 27.504330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630054, 30.996986, 28.119989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790764, 31.349615, 28.020866>,  <32.887188, 31.561192, 27.961393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790764, 31.349615, 28.020866>,  <32.630054, 30.996986, 28.119989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790764, 31.349615, 28.020866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195060, 0.182011, 0.963755,
		0.894723, -0.435549, -0.098832,
		0.401774, 0.881572, -0.247808,
		32.911297, 31.614086, 27.946524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219013, 31.201347, 28.617311>,  <32.630054, 30.996986, 28.119989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219013, 31.201347, 28.617311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.134075, 31.554073, 28.448879>,  <33.083111, 31.765709, 28.347820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.134075, 31.554073, 28.448879>,  <33.219013, 31.201347, 28.617311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134075, 31.554073, 28.448879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192236, 0.460183, 0.866762,
		0.958100, 0.103106, -0.267234,
		-0.212345, 0.881817, -0.421081,
		33.070374, 31.818619, 28.322556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868099, 31.272516, 28.342695>,  <33.219013, 31.201347, 28.617311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868099, 31.272516, 28.342695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.212933, 31.122643, 28.479179>,  <34.419834, 31.032719, 28.561069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.212933, 31.122643, 28.479179>,  <33.868099, 31.272516, 28.342695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212933, 31.122643, 28.479179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301338, -0.162324, -0.939599,
		0.407439, 0.912832, -0.027031,
		0.862084, -0.374684, 0.341208,
		34.471558, 31.010237, 28.581541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353867, 31.432835, 27.867283>,  <33.868099, 31.272516, 28.342695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353867, 31.432835, 27.867283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519775, 31.112541, 28.040159>,  <34.619320, 30.920364, 28.143885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519775, 31.112541, 28.040159>,  <34.353867, 31.432835, 27.867283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519775, 31.112541, 28.040159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325371, -0.313056, -0.892261,
		0.849765, 0.510705, 0.130690,
		0.414769, -0.800735, 0.432192,
		34.644207, 30.872320, 28.169817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075169, 31.329954, 27.473158>,  <34.353867, 31.432835, 27.867283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075169, 31.329954, 27.473158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004612, 30.982441, 27.658243>,  <34.962276, 30.773933, 27.769295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004612, 30.982441, 27.658243>,  <35.075169, 31.329954, 27.473158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004612, 30.982441, 27.658243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355758, -0.494575, -0.792990,
		0.917781, 0.024737, 0.396315,
		-0.176391, -0.868783, 0.462712,
		34.951694, 30.721806, 27.797056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617287, 30.994741, 27.248270>,  <35.075169, 31.329954, 27.473158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617287, 30.994741, 27.248270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.370682, 30.717419, 27.397530>,  <35.222717, 30.551025, 27.487085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.370682, 30.717419, 27.397530>,  <35.617287, 30.994741, 27.248270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370682, 30.717419, 27.397530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074323, -0.523063, -0.849047,
		0.783830, -0.495713, 0.374003,
		-0.616511, -0.693306, 0.373150,
		35.185730, 30.509426, 27.509474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949818, 30.343405, 27.120413>,  <35.617287, 30.994741, 27.248270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949818, 30.343405, 27.120413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561199, 30.264225, 27.172422>,  <35.328026, 30.216717, 27.203629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561199, 30.264225, 27.172422>,  <35.949818, 30.343405, 27.120413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561199, 30.264225, 27.172422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005749, -0.568564, -0.822619,
		0.236765, -0.798468, 0.553526,
		-0.971550, -0.197950, 0.130025,
		35.269733, 30.204840, 27.211430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850300, 29.714672, 26.947416>,  <35.949818, 30.343405, 27.120413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850300, 29.714672, 26.947416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.463902, 29.817835, 26.940178>,  <35.232063, 29.879732, 26.935835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.463902, 29.817835, 26.940178>,  <35.850300, 29.714672, 26.947416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463902, 29.817835, 26.940178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124802, -0.526452, -0.840995,
		-0.226424, -0.810144, 0.540740,
		-0.966000, 0.257906, -0.018094,
		35.174103, 29.895206, 26.934750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486923, 29.195173, 26.800161>,  <35.850300, 29.714672, 26.947416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486923, 29.195173, 26.800161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257507, 29.504890, 26.693188>,  <35.119858, 29.690722, 26.629004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257507, 29.504890, 26.693188>,  <35.486923, 29.195173, 26.800161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257507, 29.504890, 26.693188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119008, -0.401760, -0.907979,
		-0.810488, -0.488934, 0.322572,
		-0.573538, 0.774295, -0.267435,
		35.085445, 29.737179, 26.612957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836235, 28.885471, 26.441269>,  <35.486923, 29.195173, 26.800161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836235, 28.885471, 26.441269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898567, 29.269636, 26.348902>,  <34.935966, 29.500135, 26.293482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898567, 29.269636, 26.348902>,  <34.836235, 28.885471, 26.441269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898567, 29.269636, 26.348902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063961, -0.243094, -0.967891,
		-0.985711, 0.136057, -0.099311,
		0.155831, 0.960413, -0.230918,
		34.945316, 29.557760, 26.279627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364635, 29.086922, 25.938686>,  <34.836235, 28.885471, 26.441269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364635, 29.086922, 25.938686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651905, 29.364340, 25.915964>,  <34.824265, 29.530790, 25.902330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651905, 29.364340, 25.915964>,  <34.364635, 29.086922, 25.938686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651905, 29.364340, 25.915964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014292, -0.066912, -0.997656,
		-0.695719, 0.717300, -0.038142,
		0.718171, 0.693544, -0.056804,
		34.867355, 29.572403, 25.898924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305752, 29.390230, 25.331470>,  <34.364635, 29.086922, 25.938686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305752, 29.390230, 25.331470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.652985, 29.569292, 25.417303>,  <34.861324, 29.676729, 25.468803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.652985, 29.569292, 25.417303>,  <34.305752, 29.390230, 25.331470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652985, 29.569292, 25.417303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123420, 0.224067, -0.966727,
		-0.480842, 0.865678, 0.139258,
		0.868077, 0.447656, 0.214583,
		34.913406, 29.703588, 25.481678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254589, 30.098585, 24.993969>,  <34.305752, 29.390230, 25.331470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254589, 30.098585, 24.993969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631180, 29.969646, 25.033377>,  <34.857136, 29.892282, 25.057020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631180, 29.969646, 25.033377>,  <34.254589, 30.098585, 24.993969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631180, 29.969646, 25.033377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181451, 0.238378, -0.954071,
		0.284057, 0.916116, 0.282918,
		0.941481, -0.322346, 0.098518,
		34.913624, 29.872942, 25.062931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616173, 30.539295, 24.633963>,  <34.254589, 30.098585, 24.993969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616173, 30.539295, 24.633963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.875183, 30.235704, 24.661263>,  <35.030590, 30.053551, 24.677643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.875183, 30.235704, 24.661263>,  <34.616173, 30.539295, 24.633963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875183, 30.235704, 24.661263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225097, 0.104940, -0.968669,
		0.728036, 0.642605, 0.238796,
		0.647531, -0.758977, 0.068248,
		35.069443, 30.008011, 24.681736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345039, 30.792810, 24.433315>,  <34.616173, 30.539295, 24.633963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345039, 30.792810, 24.433315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384426, 30.397633, 24.385530>,  <35.408058, 30.160526, 24.356859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384426, 30.397633, 24.385530>,  <35.345039, 30.792810, 24.433315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384426, 30.397633, 24.385530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361941, 0.147377, -0.920477,
		0.926986, 0.047396, 0.372089,
		0.098465, -0.987944, -0.119462,
		35.413967, 30.101250, 24.349691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050091, 30.604683, 24.220938>,  <35.345039, 30.792810, 24.433315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050091, 30.604683, 24.220938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808277, 30.302401, 24.120188>,  <35.663189, 30.121031, 24.059738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808277, 30.302401, 24.120188>,  <36.050091, 30.604683, 24.220938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808277, 30.302401, 24.120188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315470, 0.063211, -0.946828,
		0.731445, -0.651853, 0.200189,
		-0.604539, -0.755706, -0.251876,
		35.626915, 30.075689, 24.044624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815384, 30.256256, 24.429628>,  <36.050091, 30.604683, 24.220938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815384, 30.256256, 24.429628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205151, 30.342339, 24.455540>,  <37.439011, 30.393988, 24.471087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205151, 30.342339, 24.455540>,  <36.815384, 30.256256, 24.429628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205151, 30.342339, 24.455540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116037, 0.234899, 0.965069,
		0.192466, -0.947899, 0.253861,
		0.974419, 0.215200, 0.064781,
		37.497475, 30.406900, 24.474974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911247, 29.970821, 25.073103>,  <36.815384, 30.256256, 24.429628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911247, 29.970821, 25.073103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211697, 30.221937, 24.991430>,  <37.391968, 30.372606, 24.942427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211697, 30.221937, 24.991430>,  <36.911247, 29.970821, 25.073103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211697, 30.221937, 24.991430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034041, 0.345713, 0.937723,
		0.659284, -0.697395, 0.281044,
		0.751124, 0.627792, -0.204183,
		37.437035, 30.410275, 24.930176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591301, 29.803238, 25.484482>,  <36.911247, 29.970821, 25.073103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591301, 29.803238, 25.484482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593208, 30.194113, 25.399548>,  <37.594353, 30.428637, 25.348587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593208, 30.194113, 25.399548>,  <37.591301, 29.803238, 25.484482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593208, 30.194113, 25.399548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148195, 0.209302, 0.966556,
		0.988947, -0.036074, -0.143816,
		0.004766, 0.977185, -0.212334,
		37.594639, 30.487268, 25.335848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914391, 30.090355, 25.982609>,  <37.591301, 29.803238, 25.484482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914391, 30.090355, 25.982609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774380, 30.438042, 25.842930>,  <37.690372, 30.646654, 25.759123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774380, 30.438042, 25.842930>,  <37.914391, 30.090355, 25.982609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774380, 30.438042, 25.842930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165688, 0.424352, 0.890210,
		0.921969, 0.253742, -0.292555,
		-0.350029, 0.869219, -0.349197,
		37.669373, 30.698807, 25.738171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397354, 30.589077, 26.152857>,  <37.914391, 30.090355, 25.982609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397354, 30.589077, 26.152857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048241, 30.777016, 26.099958>,  <37.838772, 30.889778, 26.068218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048241, 30.777016, 26.099958>,  <38.397354, 30.589077, 26.152857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048241, 30.777016, 26.099958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122152, 0.472572, 0.872786,
		0.472572, 0.745601, -0.469846,
		-0.872786, 0.469846, -0.132248,
		37.786404, 30.917969, 26.060284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530811, 31.244522, 26.290556>,  <38.397354, 30.589077, 26.152857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530811, 31.244522, 26.290556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.134907, 31.230682, 26.345955>,  <37.897366, 31.222380, 26.379194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.134907, 31.230682, 26.345955>,  <38.530811, 31.244522, 26.290556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134907, 31.230682, 26.345955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123189, 0.283206, 0.951115,
		-0.072129, 0.958435, -0.276044,
		-0.989759, -0.034597, 0.138496,
		37.837978, 31.220303, 26.387503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316227, 31.923826, 26.555367>,  <38.530811, 31.244522, 26.290556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316227, 31.923826, 26.555367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027935, 31.660480, 26.642176>,  <37.854958, 31.502472, 26.694262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027935, 31.660480, 26.642176>,  <38.316227, 31.923826, 26.555367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027935, 31.660480, 26.642176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013791, 0.299390, 0.954031,
		-0.693077, 0.690593, -0.206700,
		-0.720732, -0.658366, 0.217024,
		37.811714, 31.462971, 26.707283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874744, 32.355072, 27.021978>,  <38.316227, 31.923826, 26.555367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874744, 32.355072, 27.021978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781818, 31.969185, 27.071545>,  <37.726063, 31.737654, 27.101284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781818, 31.969185, 27.071545>,  <37.874744, 32.355072, 27.021978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781818, 31.969185, 27.071545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211180, 0.074333, 0.974617,
		-0.949437, 0.252589, 0.186460,
		-0.232317, -0.964714, 0.123917,
		37.712124, 31.679771, 27.108719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410030, 32.280899, 27.695463>,  <37.874744, 32.355072, 27.021978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410030, 32.280899, 27.695463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.586349, 31.928362, 27.627428>,  <37.692142, 31.716839, 27.586607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.586349, 31.928362, 27.627428>,  <37.410030, 32.280899, 27.695463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586349, 31.928362, 27.627428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169324, -0.104441, 0.980011,
		-0.881490, -0.460788, 0.103195,
		0.440800, -0.881343, -0.170087,
		37.718590, 31.663960, 27.576403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179363, 31.871599, 28.274845>,  <37.410030, 32.280899, 27.695463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179363, 31.871599, 28.274845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483334, 31.659239, 28.124828>,  <37.665714, 31.531822, 28.034819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483334, 31.659239, 28.124828>,  <37.179363, 31.871599, 28.274845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483334, 31.659239, 28.124828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401038, -0.071134, 0.913295,
		-0.511549, -0.844442, 0.158856,
		0.759925, -0.530903, -0.375042,
		37.711311, 31.499968, 28.012316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297977, 31.375259, 28.692141>,  <37.179363, 31.871599, 28.274845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297977, 31.375259, 28.692141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649231, 31.424288, 28.507158>,  <37.859982, 31.453705, 28.396170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649231, 31.424288, 28.507158>,  <37.297977, 31.375259, 28.692141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649231, 31.424288, 28.507158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478321, -0.204983, 0.853927,
		0.009870, -0.971061, -0.238629,
		0.878130, 0.122570, -0.462455,
		37.912670, 31.461058, 28.368422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684334, 30.863298, 28.996994>,  <37.297977, 31.375259, 28.692141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684334, 30.863298, 28.996994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922470, 31.143656, 28.839865>,  <38.065353, 31.311871, 28.745586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922470, 31.143656, 28.839865>,  <37.684334, 30.863298, 28.996994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922470, 31.143656, 28.839865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550685, 0.000070, 0.834713,
		0.585075, -0.713264, -0.385931,
		0.595344, 0.700896, -0.392825,
		38.101074, 31.353924, 28.722017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361675, 30.632633, 29.110001>,  <37.684334, 30.863298, 28.996994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361675, 30.632633, 29.110001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.384911, 31.030199, 29.072575>,  <38.398853, 31.268740, 29.050119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.384911, 31.030199, 29.072575>,  <38.361675, 30.632633, 29.110001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384911, 31.030199, 29.072575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537930, 0.047790, 0.841634,
		0.840985, -0.099225, -0.531882,
		0.058092, 0.993917, -0.093567,
		38.402340, 31.328375, 29.044504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079960, 30.696169, 29.240541>,  <38.361675, 30.632633, 29.110001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079960, 30.696169, 29.240541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864719, 31.024418, 29.317513>,  <38.735577, 31.221367, 29.363695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864719, 31.024418, 29.317513>,  <39.079960, 30.696169, 29.240541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864719, 31.024418, 29.317513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508205, 0.133742, 0.850789,
		0.672439, 0.555604, -0.489010,
		-0.538103, 0.820620, 0.192427,
		38.703289, 31.270603, 29.375240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.586090, 32.747982, 24.449869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.367851, 33.000443, 24.229334>,  <38.236908, 33.151917, 24.097013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.367851, 33.000443, 24.229334>,  <38.586090, 32.747982, 24.449869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367851, 33.000443, 24.229334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498625, -0.284287, -0.818874,
		-0.673568, -0.721689, -0.159599,
		-0.545600, 0.631147, -0.551338,
		38.204170, 33.189785, 24.063932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478848, 32.383385, 23.798351>,  <38.586090, 32.747982, 24.449869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478848, 32.383385, 23.798351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375862, 32.760799, 23.714981>,  <38.314072, 32.987251, 23.664959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375862, 32.760799, 23.714981>,  <38.478848, 32.383385, 23.798351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375862, 32.760799, 23.714981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486439, -0.059815, -0.871665,
		-0.834919, -0.325809, -0.443575,
		-0.257464, 0.943542, -0.208427,
		38.298622, 33.043861, 23.652452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137703, 32.437992, 23.080816>,  <38.478848, 32.383385, 23.798351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137703, 32.437992, 23.080816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261303, 32.815163, 23.130482>,  <38.335464, 33.041466, 23.160280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261303, 32.815163, 23.130482>,  <38.137703, 32.437992, 23.080816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261303, 32.815163, 23.130482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304915, 0.025441, -0.952040,
		-0.900858, 0.332041, -0.279649,
		0.309002, 0.942922, 0.124163,
		38.354004, 33.098038, 23.167730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892857, 32.843288, 22.499884>,  <38.137703, 32.437992, 23.080816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892857, 32.843288, 22.499884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.180935, 33.082279, 22.640930>,  <38.353783, 33.225674, 22.725557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.180935, 33.082279, 22.640930>,  <37.892857, 32.843288, 22.499884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180935, 33.082279, 22.640930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426703, 0.019281, -0.904186,
		-0.547032, 0.801652, -0.241061,
		0.720195, 0.597480, 0.352615,
		38.396992, 33.261524, 22.746714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881374, 33.429752, 22.074848>,  <37.892857, 32.843288, 22.499884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881374, 33.429752, 22.074848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248302, 33.455002, 22.232096>,  <38.468460, 33.470150, 22.326445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248302, 33.455002, 22.232096>,  <37.881374, 33.429752, 22.074848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248302, 33.455002, 22.232096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357176, 0.305814, -0.882555,
		-0.175930, 0.949996, 0.257983,
		0.917319, 0.063123, 0.393118,
		38.523499, 33.473938, 22.350031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163589, 33.982841, 21.754921>,  <37.881374, 33.429752, 22.074848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163589, 33.982841, 21.754921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491341, 33.793545, 21.884331>,  <38.687992, 33.679966, 21.961977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491341, 33.793545, 21.884331>,  <38.163589, 33.982841, 21.754921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491341, 33.793545, 21.884331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509266, 0.341794, -0.789826,
		0.263201, 0.811922, 0.521064,
		0.819374, -0.473243, 0.323524,
		38.737152, 33.651573, 21.981388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724052, 34.498775, 21.593096>,  <38.163589, 33.982841, 21.754921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724052, 34.498775, 21.593096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885208, 34.136822, 21.648041>,  <38.981903, 33.919651, 21.681007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885208, 34.136822, 21.648041>,  <38.724052, 34.498775, 21.593096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885208, 34.136822, 21.648041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500481, 0.092161, -0.860828,
		0.766289, 0.415566, 0.490006,
		0.402891, -0.904882, 0.137361,
		39.006077, 33.865356, 21.689249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431995, 34.636139, 21.360764>,  <38.724052, 34.498775, 21.593096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431995, 34.636139, 21.360764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380257, 34.240051, 21.339872>,  <39.349213, 34.002399, 21.327337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380257, 34.240051, 21.339872>,  <39.431995, 34.636139, 21.360764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380257, 34.240051, 21.339872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599440, -0.036128, -0.799604,
		0.789899, -0.134737, 0.598252,
		-0.129350, -0.990223, -0.052230,
		39.341454, 33.942986, 21.324203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053761, 34.291161, 21.362717>,  <39.431995, 34.636139, 21.360764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053761, 34.291161, 21.362717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815071, 34.018631, 21.193150>,  <39.671856, 33.855114, 21.091410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815071, 34.018631, 21.193150>,  <40.053761, 34.291161, 21.362717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815071, 34.018631, 21.193150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711224, -0.204434, -0.672582,
		0.371586, -0.702850, 0.606568,
		-0.596727, -0.681328, -0.423919,
		39.636051, 33.814232, 21.065973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547741, 33.777443, 21.212322>,  <40.053761, 34.291161, 21.362717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547741, 33.777443, 21.212322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223236, 33.673813, 21.002661>,  <40.028534, 33.611633, 20.876863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223236, 33.673813, 21.002661>,  <40.547741, 33.777443, 21.212322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223236, 33.673813, 21.002661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584637, -0.347582, -0.733066,
		0.007734, -0.901147, 0.433445,
		-0.811258, -0.259078, -0.524156,
		39.979858, 33.596088, 20.845413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538845, 33.058178, 20.994881>,  <40.547741, 33.777443, 21.212322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538845, 33.058178, 20.994881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291962, 33.220409, 20.725199>,  <40.143829, 33.317749, 20.563389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291962, 33.220409, 20.725199>,  <40.538845, 33.058178, 20.994881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291962, 33.220409, 20.725199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549628, -0.390896, -0.738315,
		-0.562992, -0.826258, 0.018346,
		-0.617211, 0.405583, -0.674206,
		40.106800, 33.342083, 20.522938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123356, 32.604069, 20.521950>,  <40.538845, 33.058178, 20.994881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123356, 32.604069, 20.521950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.264881, 32.957039, 20.397924>,  <40.349796, 33.168823, 20.323509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.264881, 32.957039, 20.397924>,  <40.123356, 32.604069, 20.521950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264881, 32.957039, 20.397924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537733, -0.463153, -0.704509,
		-0.765285, 0.082531, -0.638379,
		0.353810, 0.882428, -0.310064,
		40.371025, 33.221767, 20.304905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372974, 32.376236, 19.944555>,  <40.123356, 32.604069, 20.521950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372974, 32.376236, 19.944555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511776, 32.751316, 19.951605>,  <40.595055, 32.976364, 19.955835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511776, 32.751316, 19.951605>,  <40.372974, 32.376236, 19.944555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511776, 32.751316, 19.951605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690908, -0.242874, -0.680925,
		-0.634222, 0.248459, -0.732141,
		0.347000, 0.937699, 0.017626,
		40.615875, 33.032627, 19.956892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592693, 32.271641, 19.892469>,  <40.372974, 32.376236, 19.944555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592693, 32.271641, 19.892469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.470787, 31.937302, 20.075104>,  <39.397644, 31.736696, 20.184685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.470787, 31.937302, 20.075104>,  <39.592693, 32.271641, 19.892469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470787, 31.937302, 20.075104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603217, -0.540381, -0.586615,
		0.737054, 0.096643, 0.668888,
		-0.304762, -0.835852, 0.456587,
		39.379356, 31.686546, 20.212080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833885, 31.722099, 19.494251>,  <39.592693, 32.271641, 19.892469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833885, 31.722099, 19.494251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.670593, 31.365580, 19.415319>,  <39.572620, 31.151669, 19.367960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.670593, 31.365580, 19.415319>,  <39.833885, 31.722099, 19.494251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670593, 31.365580, 19.415319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398747, -0.020351, 0.916835,
		-0.821190, 0.452960, -0.347094,
		-0.408226, -0.891299, -0.197328,
		39.548126, 31.098190, 19.356121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075348, 31.621624, 19.593184>,  <39.833885, 31.722099, 19.494251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075348, 31.621624, 19.593184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229267, 31.255430, 19.640200>,  <39.321621, 31.035713, 19.668409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229267, 31.255430, 19.640200>,  <39.075348, 31.621624, 19.593184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229267, 31.255430, 19.640200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415261, -0.057985, 0.907853,
		-0.824310, -0.398152, -0.402478,
		0.384801, -0.915485, 0.117539,
		39.344707, 30.980785, 19.675461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509480, 31.212543, 20.015200>,  <39.075348, 31.621624, 19.593184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509480, 31.212543, 20.015200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833900, 30.981468, 20.052027>,  <39.028553, 30.842823, 20.074123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833900, 30.981468, 20.052027>,  <38.509480, 31.212543, 20.015200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833900, 30.981468, 20.052027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473621, -0.556101, 0.682960,
		-0.343338, -0.597520, -0.724630,
		0.811050, -0.577686, 0.092067,
		39.077217, 30.808163, 20.079647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215752, 30.540146, 20.185452>,  <38.509480, 31.212543, 20.015200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215752, 30.540146, 20.185452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594814, 30.504684, 20.308151>,  <38.822250, 30.483408, 20.381771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594814, 30.504684, 20.308151>,  <38.215752, 30.540146, 20.185452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594814, 30.504684, 20.308151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296609, -0.600125, 0.742882,
		0.118231, -0.794979, -0.595005,
		0.947652, -0.088652, 0.306751,
		38.879108, 30.478088, 20.400177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249714, 29.863808, 20.390724>,  <38.215752, 30.540146, 20.185452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249714, 29.863808, 20.390724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.557072, 30.050970, 20.565371>,  <38.741486, 30.163267, 20.670158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.557072, 30.050970, 20.565371>,  <38.249714, 29.863808, 20.390724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557072, 30.050970, 20.565371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172880, -0.505110, 0.845563,
		0.616185, -0.725207, -0.307231,
		0.768394, 0.467909, 0.436615,
		38.787590, 30.191343, 20.696356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509533, 29.355541, 20.745993>,  <38.249714, 29.863808, 20.390724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509533, 29.355541, 20.745993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646786, 29.699150, 20.897961>,  <38.729137, 29.905315, 20.989141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646786, 29.699150, 20.897961>,  <38.509533, 29.355541, 20.745993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646786, 29.699150, 20.897961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192418, -0.331615, 0.923584,
		0.919367, -0.390014, 0.051503,
		0.343132, 0.859023, 0.379922,
		38.749725, 29.956858, 21.011938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950752, 29.238972, 21.418871>,  <38.509533, 29.355541, 20.745993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950752, 29.238972, 21.418871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854595, 29.627216, 21.423368>,  <38.796902, 29.860163, 21.426067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854595, 29.627216, 21.423368>,  <38.950752, 29.238972, 21.418871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854595, 29.627216, 21.423368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179867, -0.055926, 0.982100,
		0.953864, 0.234072, 0.188026,
		-0.240397, 0.970610, 0.011244,
		38.782475, 29.918400, 21.426743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384346, 29.599585, 22.018820>,  <38.950752, 29.238972, 21.418871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384346, 29.599585, 22.018820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077076, 29.843916, 21.942101>,  <38.892712, 29.990515, 21.896069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077076, 29.843916, 21.942101>,  <39.384346, 29.599585, 22.018820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077076, 29.843916, 21.942101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052230, 0.238789, 0.969666,
		0.638100, 0.754896, -0.151529,
		-0.768180, 0.610830, -0.191799,
		38.846622, 30.027164, 21.884562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535721, 30.126320, 22.458216>,  <39.384346, 29.599585, 22.018820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535721, 30.126320, 22.458216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.148422, 30.160095, 22.364101>,  <38.916042, 30.180361, 22.307632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.148422, 30.160095, 22.364101>,  <39.535721, 30.126320, 22.458216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148422, 30.160095, 22.364101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210096, 0.235163, 0.948978,
		0.135462, 0.968281, -0.209957,
		-0.968251, 0.084439, -0.235287,
		38.857948, 30.185427, 22.293516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289848, 30.712614, 22.835543>,  <39.535721, 30.126320, 22.458216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289848, 30.712614, 22.835543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954681, 30.505419, 22.766743>,  <38.753582, 30.381102, 22.725464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954681, 30.505419, 22.766743>,  <39.289848, 30.712614, 22.835543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954681, 30.505419, 22.766743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291676, 0.158610, 0.943275,
		-0.461326, 0.840553, -0.283987,
		-0.837916, -0.517990, -0.171999,
		38.703308, 30.350021, 22.715143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766300, 31.171394, 23.101152>,  <39.289848, 30.712614, 22.835543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766300, 31.171394, 23.101152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584274, 30.815899, 23.079025>,  <38.475060, 30.602602, 23.065748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584274, 30.815899, 23.079025>,  <38.766300, 31.171394, 23.101152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584274, 30.815899, 23.079025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507368, 0.207733, 0.836316,
		-0.731776, 0.408643, -0.545449,
		-0.455063, -0.888740, -0.055319,
		38.447754, 30.549276, 23.062429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116974, 31.275625, 23.247866>,  <38.766300, 31.171394, 23.101152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116974, 31.275625, 23.247866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.117016, 30.877970, 23.291109>,  <38.117043, 30.639376, 23.317055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.117016, 30.877970, 23.291109>,  <38.116974, 31.275625, 23.247866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117016, 30.877970, 23.291109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640873, 0.082922, 0.763155,
		-0.767647, -0.069363, -0.637108,
		0.000104, -0.994139, 0.108108,
		38.117046, 30.579727, 23.323542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416622, 31.011505, 23.332136>,  <38.116974, 31.275625, 23.247866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416622, 31.011505, 23.332136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646729, 30.729280, 23.497663>,  <37.784794, 30.559946, 23.596981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646729, 30.729280, 23.497663>,  <37.416622, 31.011505, 23.332136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646729, 30.729280, 23.497663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611388, -0.034811, 0.790565,
		-0.543388, -0.707791, -0.451399,
		0.575268, -0.705564, 0.413819,
		37.819309, 30.517611, 23.621809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975521, 30.598026, 23.699293>,  <37.416622, 31.011505, 23.332136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975521, 30.598026, 23.699293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.337166, 30.546314, 23.862202>,  <37.554153, 30.515287, 23.959948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.337166, 30.546314, 23.862202>,  <36.975521, 30.598026, 23.699293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337166, 30.546314, 23.862202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406106, 0.036480, 0.913098,
		-0.132906, -0.990936, -0.019521,
		0.904110, -0.129284, 0.407273,
		37.608398, 30.507530, 23.984385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384182, 30.273739, 23.694567>,  <36.975521, 30.598026, 23.699293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384182, 30.273739, 23.694567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023857, 30.100075, 23.691889>,  <35.807663, 29.995876, 23.690283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023857, 30.100075, 23.691889>,  <36.384182, 30.273739, 23.694567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023857, 30.100075, 23.691889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096333, -0.184798, -0.978044,
		0.423391, -0.881677, 0.208292,
		-0.900811, -0.434161, -0.006692,
		35.753613, 29.969826, 23.689880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516853, 29.775484, 23.238707>,  <36.384182, 30.273739, 23.694567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516853, 29.775484, 23.238707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120346, 29.828146, 23.241634>,  <35.882442, 29.859743, 23.243391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120346, 29.828146, 23.241634>,  <36.516853, 29.775484, 23.238707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120346, 29.828146, 23.241634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019285, -0.089844, -0.995769,
		-0.130437, -0.987216, 0.091598,
		-0.991269, 0.131651, 0.007320,
		35.822964, 29.867641, 23.243830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279182, 29.310249, 22.881344>,  <36.516853, 29.775484, 23.238707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279182, 29.310249, 22.881344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.976303, 29.569767, 22.851118>,  <35.794575, 29.725477, 22.832983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.976303, 29.569767, 22.851118>,  <36.279182, 29.310249, 22.881344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976303, 29.569767, 22.851118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092725, -0.221285, -0.970791,
		-0.646567, -0.728077, 0.227716,
		-0.757201, 0.648796, -0.075565,
		35.749142, 29.764406, 22.828449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722565, 28.943371, 22.626282>,  <36.279182, 29.310249, 22.881344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722565, 28.943371, 22.626282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683708, 29.333647, 22.547697>,  <35.660393, 29.567812, 22.500547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683708, 29.333647, 22.547697>,  <35.722565, 28.943371, 22.626282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683708, 29.333647, 22.547697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214752, -0.213292, -0.953094,
		-0.971826, -0.050396, 0.230251,
		-0.097143, 0.975688, -0.196460,
		35.654564, 29.626352, 22.488760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326019, 28.950642, 21.947098>,  <35.722565, 28.943371, 22.626282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326019, 28.950642, 21.947098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.450775, 29.330557, 21.957102>,  <35.525627, 29.558506, 21.963104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.450775, 29.330557, 21.957102>,  <35.326019, 28.950642, 21.947098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450775, 29.330557, 21.957102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143826, -0.021174, -0.989376,
		-0.939170, 0.312173, -0.143208,
		0.311889, 0.949789, 0.025012,
		35.544342, 29.615494, 21.964605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964905, 29.235657, 21.398333>,  <35.326019, 28.950642, 21.947098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964905, 29.235657, 21.398333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248993, 29.510540, 21.459429>,  <35.419445, 29.675470, 21.496086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248993, 29.510540, 21.459429>,  <34.964905, 29.235657, 21.398333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248993, 29.510540, 21.459429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155796, 0.058151, -0.986076,
		-0.686520, 0.724131, -0.065764,
		0.710224, 0.687207, 0.152738,
		35.462059, 29.716702, 21.505251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816750, 29.847387, 20.938868>,  <34.964905, 29.235657, 21.398333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816750, 29.847387, 20.938868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203453, 29.843033, 21.041058>,  <35.435474, 29.840420, 21.102371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203453, 29.843033, 21.041058>,  <34.816750, 29.847387, 20.938868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203453, 29.843033, 21.041058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255705, 0.046179, -0.965651,
		-0.001283, 0.998874, 0.047428,
		0.966754, -0.010888, 0.255476,
		35.493481, 29.839766, 21.117701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459133, 30.523783, 20.735624>,  <34.816750, 29.847387, 20.938868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459133, 30.523783, 20.735624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163780, 30.728174, 20.559582>,  <33.986568, 30.850809, 20.453957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163780, 30.728174, 20.559582>,  <34.459133, 30.523783, 20.735624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163780, 30.728174, 20.559582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392972, 0.204345, 0.896558,
		0.548055, 0.834952, 0.049915,
		-0.738383, 0.510978, -0.440105,
		33.942265, 30.881468, 20.427549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472668, 31.213531, 20.891008>,  <34.459133, 30.523783, 20.735624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472668, 31.213531, 20.891008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085403, 31.132097, 20.832745>,  <33.853046, 31.083237, 20.797787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085403, 31.132097, 20.832745>,  <34.472668, 31.213531, 20.891008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085403, 31.132097, 20.832745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186221, 0.196888, 0.962578,
		-0.167290, 0.959056, -0.228531,
		-0.968161, -0.203587, -0.145659,
		33.794956, 31.071022, 20.789047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173458, 31.669889, 21.250938>,  <34.472668, 31.213531, 20.891008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173458, 31.669889, 21.250938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887577, 31.397324, 21.187851>,  <33.716049, 31.233784, 21.149998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887577, 31.397324, 21.187851>,  <34.173458, 31.669889, 21.250938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887577, 31.397324, 21.187851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405565, 0.220029, 0.887189,
		-0.569839, 0.698043, -0.433612,
		-0.714703, -0.681413, -0.157721,
		33.673164, 31.192900, 21.140535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544857, 31.983047, 21.513428>,  <34.173458, 31.669889, 21.250938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544857, 31.983047, 21.513428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437061, 31.600634, 21.467165>,  <33.372383, 31.371185, 21.439407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437061, 31.600634, 21.467165>,  <33.544857, 31.983047, 21.513428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437061, 31.600634, 21.467165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386587, -0.002598, 0.922249,
		-0.882002, 0.293246, -0.368890,
		-0.269488, -0.956033, -0.115656,
		33.356216, 31.313824, 21.432468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746571, 31.923157, 21.705347>,  <33.544857, 31.983047, 21.513428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746571, 31.923157, 21.705347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908524, 31.557928, 21.724796>,  <33.005695, 31.338791, 21.736465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908524, 31.557928, 21.724796>,  <32.746571, 31.923157, 21.705347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908524, 31.557928, 21.724796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386765, -0.122836, 0.913961,
		-0.828541, -0.388855, -0.402880,
		0.404886, -0.913073, 0.048621,
		33.029991, 31.284006, 21.739382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193729, 31.528259, 21.953991>,  <32.746571, 31.923157, 21.705347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193729, 31.528259, 21.953991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524471, 31.324015, 22.048302>,  <32.722916, 31.201468, 22.104887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524471, 31.324015, 22.048302>,  <32.193729, 31.528259, 21.953991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524471, 31.324015, 22.048302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307770, -0.059920, 0.949572,
		-0.470733, -0.857722, -0.206696,
		0.826854, -0.510610, 0.235775,
		32.772526, 31.170832, 22.119034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007381, 31.023279, 22.453482>,  <32.193729, 31.528259, 21.953991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007381, 31.023279, 22.453482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402409, 31.049690, 22.510555>,  <32.639423, 31.065536, 22.544800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402409, 31.049690, 22.510555>,  <32.007381, 31.023279, 22.453482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402409, 31.049690, 22.510555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139302, -0.053287, 0.988815,
		0.072897, -0.996394, -0.043425,
		0.987563, 0.066032, 0.142685,
		32.698677, 31.069500, 22.553360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.915836, 33.717403, 18.800682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179276, 33.948074, 18.994051>,  <38.337337, 34.086475, 19.110071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179276, 33.948074, 18.994051>,  <37.915836, 33.717403, 18.800682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179276, 33.948074, 18.994051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641274, 0.093987, 0.761534,
		0.393722, -0.811550, 0.431705,
		0.658598, 0.576674, 0.483421,
		38.376854, 34.121078, 19.139078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906879, 33.448807, 19.435110>,  <37.915836, 33.717403, 18.800682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906879, 33.448807, 19.435110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068977, 33.806847, 19.509489>,  <38.166237, 34.021671, 19.554115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068977, 33.806847, 19.509489>,  <37.906879, 33.448807, 19.435110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068977, 33.806847, 19.509489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661409, 0.146644, 0.735550,
		0.631121, -0.421065, 0.651453,
		0.405246, 0.895098, 0.185946,
		38.190552, 34.075375, 19.565273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981323, 33.554321, 20.097149>,  <37.906879, 33.448807, 19.435110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981323, 33.554321, 20.097149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970901, 33.944679, 20.010475>,  <37.964649, 34.178894, 19.958471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970901, 33.944679, 20.010475>,  <37.981323, 33.554321, 20.097149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970901, 33.944679, 20.010475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561645, 0.165022, 0.810755,
		0.826968, 0.142823, 0.543806,
		-0.026054, 0.975894, -0.216684,
		37.963085, 34.237446, 19.945471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124916, 33.992054, 20.751301>,  <37.981323, 33.554321, 20.097149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124916, 33.992054, 20.751301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924435, 34.222298, 20.492853>,  <37.804146, 34.360443, 20.337786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924435, 34.222298, 20.492853>,  <38.124916, 33.992054, 20.751301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924435, 34.222298, 20.492853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605445, 0.300204, 0.737098,
		0.618246, 0.760628, 0.198034,
		-0.501207, 0.575607, -0.646118,
		37.774075, 34.394981, 20.299017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249893, 34.715191, 20.957855>,  <38.124916, 33.992054, 20.751301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249893, 34.715191, 20.957855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912621, 34.722450, 20.742928>,  <37.710258, 34.726807, 20.613970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912621, 34.722450, 20.742928>,  <38.249893, 34.715191, 20.957855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912621, 34.722450, 20.742928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490828, 0.381847, 0.783123,
		0.219390, 0.924047, -0.313057,
		-0.843182, 0.018152, -0.537321,
		37.659664, 34.727898, 20.581732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995892, 35.363510, 21.073599>,  <38.249893, 34.715191, 20.957855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995892, 35.363510, 21.073599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.684395, 35.147976, 20.945087>,  <37.497498, 35.018654, 20.867981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.684395, 35.147976, 20.945087>,  <37.995892, 35.363510, 21.073599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684395, 35.147976, 20.945087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501223, 0.226412, 0.835172,
		-0.377280, 0.811414, -0.446393,
		-0.778739, -0.538836, -0.321279,
		37.450771, 34.986324, 20.848703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499298, 35.773930, 21.157219>,  <37.995892, 35.363510, 21.073599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499298, 35.773930, 21.157219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289692, 35.434593, 21.126965>,  <37.163929, 35.230991, 21.108812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289692, 35.434593, 21.126965>,  <37.499298, 35.773930, 21.157219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289692, 35.434593, 21.126965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532704, 0.257165, 0.806283,
		-0.664553, 0.462798, -0.586675,
		-0.524018, -0.848342, -0.075634,
		37.132488, 35.180092, 21.104275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909977, 35.947506, 21.319489>,  <37.499298, 35.773930, 21.157219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909977, 35.947506, 21.319489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.855614, 35.555367, 21.376686>,  <36.822994, 35.320084, 21.411005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.855614, 35.555367, 21.376686>,  <36.909977, 35.947506, 21.319489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855614, 35.555367, 21.376686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493541, 0.192146, 0.848232,
		-0.859038, 0.044707, -0.509955,
		-0.135907, -0.980348, 0.142996,
		36.814842, 35.261261, 21.419584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221359, 35.923874, 21.395899>,  <36.909977, 35.947506, 21.319489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221359, 35.923874, 21.395899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.340843, 35.574417, 21.549532>,  <36.412533, 35.364742, 21.641712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.340843, 35.574417, 21.549532>,  <36.221359, 35.923874, 21.395899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340843, 35.574417, 21.549532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755540, 0.029388, 0.654443,
		-0.583038, -0.485677, -0.651295,
		0.298707, -0.873645, 0.384083,
		36.430454, 35.312325, 21.664757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616432, 35.669090, 21.606220>,  <36.221359, 35.923874, 21.395899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616432, 35.669090, 21.606220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889950, 35.470623, 21.820225>,  <36.054062, 35.351543, 21.948627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889950, 35.470623, 21.820225>,  <35.616432, 35.669090, 21.606220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889950, 35.470623, 21.820225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570437, 0.093710, 0.815978,
		-0.454996, -0.863156, -0.218952,
		0.683799, -0.496165, 0.535014,
		36.095089, 35.321774, 21.980728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209900, 35.145020, 21.962677>,  <35.616432, 35.669090, 21.606220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209900, 35.145020, 21.962677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.548714, 35.240978, 22.152409>,  <35.752003, 35.298553, 22.266247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.548714, 35.240978, 22.152409>,  <35.209900, 35.145020, 21.962677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548714, 35.240978, 22.152409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514198, 0.143719, 0.845544,
		0.134632, -0.960113, 0.245066,
		0.847039, 0.239850, 0.474339,
		35.802822, 35.312946, 22.294708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100224, 34.768826, 22.577944>,  <35.209900, 35.145020, 21.962677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100224, 34.768826, 22.577944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.389725, 35.033714, 22.655550>,  <35.563427, 35.192646, 22.702114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.389725, 35.033714, 22.655550>,  <35.100224, 34.768826, 22.577944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389725, 35.033714, 22.655550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423805, 0.204687, 0.882322,
		0.544581, -0.720809, 0.428796,
		0.723754, 0.662222, 0.194014,
		35.606850, 35.232380, 22.713755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489849, 34.219360, 22.580545>,  <35.100224, 34.768826, 22.577944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489849, 34.219360, 22.580545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.280289, 34.519989, 22.420214>,  <34.154552, 34.700367, 22.324015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.280289, 34.519989, 22.420214>,  <34.489849, 34.219360, 22.580545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280289, 34.519989, 22.420214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298385, -0.278823, -0.912811,
		-0.797806, -0.597824, -0.078183,
		-0.523901, 0.751575, -0.400828,
		34.123119, 34.745461, 22.299965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117775, 33.848438, 22.041048>,  <34.489849, 34.219360, 22.580545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117775, 33.848438, 22.041048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.117577, 34.234692, 21.937086>,  <34.117458, 34.466442, 21.874708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.117577, 34.234692, 21.937086>,  <34.117775, 33.848438, 22.041048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117577, 34.234692, 21.937086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406807, -0.237234, -0.882173,
		-0.913514, -0.106167, -0.392710,
		-0.000494, 0.965634, -0.259906,
		34.117428, 34.524384, 21.859114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660973, 33.959118, 21.528263>,  <34.117775, 33.848438, 22.041048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660973, 33.959118, 21.528263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.929344, 34.251209, 21.476683>,  <34.090366, 34.426464, 21.445734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.929344, 34.251209, 21.476683>,  <33.660973, 33.959118, 21.528263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929344, 34.251209, 21.476683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155516, -0.308601, -0.938392,
		-0.725033, 0.609538, -0.320610,
		0.670926, 0.730225, -0.128953,
		34.130623, 34.470276, 21.437996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568096, 34.105438, 20.868282>,  <33.660973, 33.959118, 21.528263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568096, 34.105438, 20.868282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.916515, 34.293396, 20.925512>,  <34.125568, 34.406170, 20.959850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.916515, 34.293396, 20.925512>,  <33.568096, 34.105438, 20.868282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916515, 34.293396, 20.925512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250906, -0.175236, -0.952018,
		-0.422278, 0.865153, -0.270539,
		0.871049, 0.469897, 0.143074,
		34.177830, 34.434364, 20.968435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681412, 34.526726, 20.312199>,  <33.568096, 34.105438, 20.868282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681412, 34.526726, 20.312199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056599, 34.507347, 20.449526>,  <34.281712, 34.495720, 20.531923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056599, 34.507347, 20.449526>,  <33.681412, 34.526726, 20.312199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056599, 34.507347, 20.449526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323236, -0.236044, -0.916407,
		0.125437, 0.970534, -0.205741,
		0.937968, -0.048448, 0.343320,
		34.337990, 34.492813, 20.552523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057552, 34.877487, 19.829109>,  <33.681412, 34.526726, 20.312199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057552, 34.877487, 19.829109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.319839, 34.643597, 20.020157>,  <34.477211, 34.503262, 20.134785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.319839, 34.643597, 20.020157>,  <34.057552, 34.877487, 19.829109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319839, 34.643597, 20.020157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502388, -0.134302, -0.854148,
		0.563592, 0.800033, 0.205697,
		0.655721, -0.584731, 0.477619,
		34.516556, 34.468178, 20.163443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635612, 35.074314, 19.656651>,  <34.057552, 34.877487, 19.829109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635612, 35.074314, 19.656651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.752342, 34.710884, 19.776207>,  <34.822380, 34.492828, 19.847940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.752342, 34.710884, 19.776207>,  <34.635612, 35.074314, 19.656651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752342, 34.710884, 19.776207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635419, -0.049409, -0.770585,
		0.714901, 0.414793, 0.562907,
		0.291821, -0.908573, 0.298890,
		34.839890, 34.438313, 19.865873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174545, 34.958534, 19.246208>,  <34.635612, 35.074314, 19.656651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174545, 34.958534, 19.246208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.126904, 34.597954, 19.412678>,  <35.098320, 34.381607, 19.512560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.126904, 34.597954, 19.412678>,  <35.174545, 34.958534, 19.246208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126904, 34.597954, 19.412678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522848, -0.413277, -0.745542,
		0.844064, 0.128801, 0.520544,
		-0.119103, -0.901450, 0.416175,
		35.091171, 34.327518, 19.537531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838226, 34.696598, 19.261492>,  <35.174545, 34.958534, 19.246208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838226, 34.696598, 19.261492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.574265, 34.396057, 19.261780>,  <35.415886, 34.215733, 19.261951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.574265, 34.396057, 19.261780>,  <35.838226, 34.696598, 19.261492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574265, 34.396057, 19.261780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470543, -0.414021, -0.779215,
		0.585760, -0.513870, 0.626756,
		-0.659905, -0.751349, 0.000719,
		35.376293, 34.170654, 19.261995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221699, 33.995014, 19.222940>,  <35.838226, 34.696598, 19.261492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221699, 33.995014, 19.222940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.844147, 33.907795, 19.123703>,  <35.617615, 33.855461, 19.064161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.844147, 33.907795, 19.123703>,  <36.221699, 33.995014, 19.222940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844147, 33.907795, 19.123703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328618, -0.544283, -0.771859,
		0.033272, -0.810068, 0.585392,
		-0.943877, -0.218051, -0.248093,
		35.560986, 33.842381, 19.049274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161720, 33.258091, 19.006058>,  <36.221699, 33.995014, 19.222940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161720, 33.258091, 19.006058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.858788, 33.444672, 18.823246>,  <35.677029, 33.556618, 18.713558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.858788, 33.444672, 18.823246>,  <36.161720, 33.258091, 19.006058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858788, 33.444672, 18.823246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293625, -0.381895, -0.876322,
		-0.583295, -0.797862, 0.152261,
		-0.757332, 0.466447, -0.457029,
		35.631588, 33.584606, 18.686138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763428, 32.713409, 18.617887>,  <36.161720, 33.258091, 19.006058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763428, 32.713409, 18.617887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.674072, 33.043953, 18.411112>,  <35.620457, 33.242279, 18.287046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.674072, 33.043953, 18.411112>,  <35.763428, 32.713409, 18.617887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674072, 33.043953, 18.411112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346701, -0.428295, -0.834483,
		-0.910986, -0.365639, -0.190823,
		-0.223391, 0.826361, -0.516938,
		35.607056, 33.291862, 18.256031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424271, 32.415249, 18.130842>,  <35.763428, 32.713409, 18.617887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424271, 32.415249, 18.130842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.537399, 32.775150, 17.997906>,  <35.605278, 32.991093, 17.918144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.537399, 32.775150, 17.997906>,  <35.424271, 32.415249, 18.130842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537399, 32.775150, 17.997906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308357, -0.413386, -0.856755,
		-0.908256, 0.139829, -0.394360,
		0.282821, 0.899756, -0.332343,
		35.622246, 33.045078, 17.898203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078972, 32.120590, 17.416134>,  <35.424271, 32.415249, 18.130842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078972, 32.120590, 17.416134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.886826, 31.773844, 17.362778>,  <34.771538, 31.565796, 17.330763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.886826, 31.773844, 17.362778>,  <35.078972, 32.120590, 17.416134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886826, 31.773844, 17.362778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426554, 0.098014, 0.899136,
		-0.766354, 0.488814, -0.416847,
		-0.480367, -0.866864, -0.133392,
		34.742714, 31.513784, 17.322760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401848, 32.266621, 17.760353>,  <35.078972, 32.120590, 17.416134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401848, 32.266621, 17.760353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.407627, 31.870493, 17.705118>,  <34.411095, 31.632818, 17.671978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.407627, 31.870493, 17.705118>,  <34.401848, 32.266621, 17.760353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407627, 31.870493, 17.705118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326329, -0.135207, 0.935537,
		-0.945146, 0.031548, -0.325122,
		0.014444, -0.990315, -0.138085,
		34.411961, 31.573399, 17.663692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752518, 31.988598, 17.916899>,  <34.401848, 32.266621, 17.760353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752518, 31.988598, 17.916899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.015545, 31.690088, 17.958248>,  <34.173359, 31.510983, 17.983059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.015545, 31.690088, 17.958248>,  <33.752518, 31.988598, 17.916899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015545, 31.690088, 17.958248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394296, -0.223964, 0.891275,
		-0.641982, -0.626830, -0.441523,
		0.657564, -0.746273, 0.103375,
		34.212814, 31.466206, 17.989262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377583, 31.527567, 18.289415>,  <33.752518, 31.988598, 17.916899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377583, 31.527567, 18.289415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.745098, 31.376644, 18.335840>,  <33.965607, 31.286091, 18.363695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.745098, 31.376644, 18.335840>,  <33.377583, 31.527567, 18.289415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745098, 31.376644, 18.335840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281883, -0.421249, 0.862028,
		-0.276358, -0.824736, -0.493394,
		0.918786, -0.377307, 0.116064,
		34.020733, 31.263453, 18.370659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263733, 30.855526, 18.527880>,  <33.377583, 31.527567, 18.289415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263733, 30.855526, 18.527880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.625336, 30.987715, 18.636366>,  <33.842297, 31.067028, 18.701458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.625336, 30.987715, 18.636366>,  <33.263733, 30.855526, 18.527880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625336, 30.987715, 18.636366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121454, -0.409733, 0.904084,
		0.409898, -0.850240, -0.330265,
		0.904009, 0.330470, 0.271214,
		33.896538, 31.086855, 18.717730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581188, 30.325640, 18.924074>,  <33.263733, 30.855526, 18.527880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581188, 30.325640, 18.924074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.764328, 30.667223, 19.022972>,  <33.874214, 30.872173, 19.082310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.764328, 30.667223, 19.022972>,  <33.581188, 30.325640, 18.924074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764328, 30.667223, 19.022972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066926, -0.244209, 0.967410,
		0.886506, -0.459478, -0.054660,
		0.457852, 0.853956, 0.247244,
		33.901684, 30.923410, 19.097145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085487, 30.142740, 19.477757>,  <33.581188, 30.325640, 18.924074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085487, 30.142740, 19.477757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041721, 30.539236, 19.507351>,  <34.015461, 30.777134, 19.525108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041721, 30.539236, 19.507351>,  <34.085487, 30.142740, 19.477757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041721, 30.539236, 19.507351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103105, -0.085350, 0.991002,
		0.988634, 0.100804, 0.111541,
		-0.109417, 0.991239, 0.073987,
		34.008896, 30.836607, 19.529547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475433, 30.313686, 19.997473>,  <34.085487, 30.142740, 19.477757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475433, 30.313686, 19.997473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.213570, 30.614977, 19.971962>,  <34.056450, 30.795752, 19.956656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.213570, 30.614977, 19.971962>,  <34.475433, 30.313686, 19.997473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213570, 30.614977, 19.971962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189826, -0.082146, 0.978375,
		0.731698, 0.652613, 0.196760,
		-0.654663, 0.753225, -0.063776,
		34.017170, 30.840944, 19.952829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148380, 30.474537, 20.497841>,  <34.475433, 30.313686, 19.997473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148380, 30.474537, 20.497841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.473988, 30.264156, 20.596436>,  <35.669350, 30.137928, 20.655592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.473988, 30.264156, 20.596436>,  <35.148380, 30.474537, 20.497841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473988, 30.264156, 20.596436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327193, 0.064576, -0.942748,
		0.479921, 0.848061, 0.224653,
		0.814015, -0.525950, 0.246489,
		35.718193, 30.106371, 20.670382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684948, 30.846148, 20.364733>,  <35.148380, 30.474537, 20.497841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684948, 30.846148, 20.364733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.813404, 30.467377, 20.359070>,  <35.890476, 30.240114, 20.355673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.813404, 30.467377, 20.359070>,  <35.684948, 30.846148, 20.364733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813404, 30.467377, 20.359070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294928, 0.114204, -0.948670,
		0.899938, 0.300477, 0.315950,
		0.321136, -0.946927, -0.014157,
		35.909744, 30.183298, 20.354822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349152, 30.941769, 20.192533>,  <35.684948, 30.846148, 20.364733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349152, 30.941769, 20.192533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.267914, 30.558474, 20.112003>,  <36.219170, 30.328497, 20.063684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.267914, 30.558474, 20.112003>,  <36.349152, 30.941769, 20.192533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267914, 30.558474, 20.112003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311457, 0.131709, -0.941088,
		0.928303, -0.253837, 0.271700,
		-0.203098, -0.958238, -0.201325,
		36.206985, 30.271002, 20.051605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970337, 30.634007, 19.892227>,  <36.349152, 30.941769, 20.192533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970337, 30.634007, 19.892227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.701180, 30.357969, 19.785658>,  <36.539684, 30.192347, 19.721716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.701180, 30.357969, 19.785658>,  <36.970337, 30.634007, 19.892227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701180, 30.357969, 19.785658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308604, 0.065443, -0.948937,
		0.672291, -0.720755, 0.168929,
		-0.672896, -0.690093, -0.266425,
		36.499310, 30.150942, 19.705730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366505, 30.070065, 19.617155>,  <36.970337, 30.634007, 19.892227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366505, 30.070065, 19.617155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994034, 30.049339, 19.472811>,  <36.770550, 30.036905, 19.386204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994034, 30.049339, 19.472811>,  <37.366505, 30.070065, 19.617155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994034, 30.049339, 19.472811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364557, -0.128149, -0.922321,
		0.001543, -0.990400, 0.138218,
		-0.931179, -0.051812, -0.360860,
		36.714680, 30.033796, 19.364553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479816, 29.557829, 19.164644>,  <37.366505, 30.070065, 19.617155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479816, 29.557829, 19.164644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.129215, 29.713842, 19.051777>,  <36.918854, 29.807449, 18.984056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.129215, 29.713842, 19.051777>,  <37.479816, 29.557829, 19.164644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129215, 29.713842, 19.051777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288455, -0.043745, -0.956494,
		-0.385407, -0.919761, -0.074165,
		-0.876502, 0.390033, -0.282169,
		36.866264, 29.830853, 18.967127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334091, 29.186638, 18.612585>,  <37.479816, 29.557829, 19.164644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334091, 29.186638, 18.612585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108837, 29.515182, 18.576275>,  <36.973682, 29.712309, 18.554489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108837, 29.515182, 18.576275>,  <37.334091, 29.186638, 18.612585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108837, 29.515182, 18.576275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276369, 0.083674, -0.957402,
		-0.778778, -0.564237, -0.274119,
		-0.563139, 0.821361, -0.090774,
		36.939896, 29.761591, 18.549042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044731, 29.230833, 17.888710>,  <37.334091, 29.186638, 18.612585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044731, 29.230833, 17.888710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973900, 29.599422, 18.027002>,  <36.931400, 29.820576, 18.109978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973900, 29.599422, 18.027002>,  <37.044731, 29.230833, 17.888710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973900, 29.599422, 18.027002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366439, 0.387752, -0.845796,
		-0.913437, -0.023079, -0.406325,
		-0.177074, 0.921475, 0.345730,
		36.920776, 29.875864, 18.130722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566166, 29.695526, 17.354965>,  <37.044731, 29.230833, 17.888710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566166, 29.695526, 17.354965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.836872, 29.881582, 17.583221>,  <36.999298, 29.993216, 17.720175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.836872, 29.881582, 17.583221>,  <36.566166, 29.695526, 17.354965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836872, 29.881582, 17.583221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333984, 0.496782, -0.801038,
		-0.656078, 0.732702, 0.180857,
		0.676769, 0.465140, 0.570639,
		37.039902, 30.021124, 17.754414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.853611, 31.224056, 33.824566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148926, 31.459002, 33.691940>,  <35.326115, 31.599968, 33.612366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148926, 31.459002, 33.691940>,  <34.853611, 31.224056, 33.824566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148926, 31.459002, 33.691940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425770, 0.024597, -0.904497,
		-0.523112, 0.808950, 0.268241,
		0.738291, 0.587363, -0.331560,
		35.370415, 31.635210, 33.592472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561871, 31.737041, 33.443539>,  <34.853611, 31.224056, 33.824566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561871, 31.737041, 33.443539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941040, 31.741047, 33.316196>,  <35.168541, 31.743450, 33.239792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941040, 31.741047, 33.316196>,  <34.561871, 31.737041, 33.443539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941040, 31.741047, 33.316196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315456, -0.108562, -0.942710,
		-0.044001, 0.994039, -0.099750,
		0.947920, 0.010013, -0.318352,
		35.225414, 31.744051, 33.220692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567654, 32.169006, 32.907291>,  <34.561871, 31.737041, 33.443539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567654, 32.169006, 32.907291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890621, 31.948700, 32.822681>,  <35.084400, 31.816517, 32.771915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890621, 31.948700, 32.822681>,  <34.567654, 32.169006, 32.907291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890621, 31.948700, 32.822681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244825, 0.013414, -0.969474,
		0.536789, 0.834553, -0.124010,
		0.807414, -0.550764, -0.211520,
		35.132847, 31.783470, 32.759224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862267, 32.530476, 32.300674>,  <34.567654, 32.169006, 32.907291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862267, 32.530476, 32.300674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039593, 32.172085, 32.290146>,  <35.145988, 31.957050, 32.283829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039593, 32.172085, 32.290146>,  <34.862267, 32.530476, 32.300674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039593, 32.172085, 32.290146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068770, -0.004724, -0.997621,
		0.893723, 0.444072, -0.063711,
		0.443317, -0.895979, -0.026317,
		35.172588, 31.903292, 32.282249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286240, 32.542591, 31.704947>,  <34.862267, 32.530476, 32.300674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286240, 32.542591, 31.704947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229000, 32.156487, 31.792391>,  <35.194656, 31.924824, 31.844858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229000, 32.156487, 31.792391>,  <35.286240, 32.542591, 31.704947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229000, 32.156487, 31.792391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081631, -0.208620, -0.974584,
		0.986336, -0.157308, -0.048942,
		-0.143100, -0.965262, 0.218611,
		35.186069, 31.866907, 31.857975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684143, 32.314880, 31.162884>,  <35.286240, 32.542591, 31.704947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684143, 32.314880, 31.162884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474499, 31.998325, 31.288752>,  <35.348713, 31.808393, 31.364271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474499, 31.998325, 31.288752>,  <35.684143, 32.314880, 31.162884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474499, 31.998325, 31.288752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011760, -0.376172, -0.926475,
		0.851567, -0.481878, 0.206463,
		-0.524114, -0.791384, 0.314669,
		35.317265, 31.760910, 31.383152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954342, 31.684935, 30.853838>,  <35.684143, 32.314880, 31.162884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954342, 31.684935, 30.853838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567104, 31.610312, 30.920753>,  <35.334763, 31.565536, 30.960903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567104, 31.610312, 30.920753>,  <35.954342, 31.684935, 30.853838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567104, 31.610312, 30.920753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067213, -0.449810, -0.890592,
		0.241397, -0.873422, 0.422920,
		-0.968096, -0.186561, 0.167288,
		35.276676, 31.554344, 30.970940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905411, 30.959425, 30.664957>,  <35.954342, 31.684935, 30.853838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905411, 30.959425, 30.664957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552612, 31.147039, 30.646679>,  <35.340935, 31.259609, 30.635712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552612, 31.147039, 30.646679>,  <35.905411, 30.959425, 30.664957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552612, 31.147039, 30.646679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194896, -0.451330, -0.870814,
		-0.429060, -0.759153, 0.489485,
		-0.881999, 0.469030, -0.045692,
		35.288013, 31.287750, 30.632969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443512, 30.390526, 30.343349>,  <35.905411, 30.959425, 30.664957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443512, 30.390526, 30.343349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245747, 30.733696, 30.287468>,  <35.127087, 30.939598, 30.253939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245747, 30.733696, 30.287468>,  <35.443512, 30.390526, 30.343349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245747, 30.733696, 30.287468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406226, -0.370148, -0.835447,
		-0.768462, -0.356307, 0.531518,
		-0.494416, 0.857925, -0.139703,
		35.097424, 30.991074, 30.245558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842506, 30.195415, 29.804850>,  <35.443512, 30.390526, 30.343349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842506, 30.195415, 29.804850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871063, 30.594254, 29.815496>,  <34.888199, 30.833555, 29.821884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871063, 30.594254, 29.815496>,  <34.842506, 30.195415, 29.804850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871063, 30.594254, 29.815496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356007, 0.050401, -0.933123,
		-0.931752, 0.057146, 0.358571,
		0.071397, 0.997093, 0.026617,
		34.892483, 30.893381, 29.823481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194004, 30.476030, 29.619175>,  <34.842506, 30.195415, 29.804850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194004, 30.476030, 29.619175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480236, 30.739979, 29.527512>,  <34.651974, 30.898348, 29.472513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480236, 30.739979, 29.527512>,  <34.194004, 30.476030, 29.619175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480236, 30.739979, 29.527512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319844, 0.017870, -0.947302,
		-0.621003, 0.751166, 0.223843,
		0.715581, 0.659872, -0.229159,
		34.694912, 30.937941, 29.458763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854790, 30.905985, 29.075861>,  <34.194004, 30.476030, 29.619175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854790, 30.905985, 29.075861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246342, 30.982868, 29.047983>,  <34.481274, 31.028997, 29.031256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246342, 30.982868, 29.047983>,  <33.854790, 30.905985, 29.075861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246342, 30.982868, 29.047983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042501, -0.142135, -0.988934,
		-0.199988, 0.971006, -0.130964,
		0.978876, 0.192209, -0.069695,
		34.540005, 31.040531, 29.027075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679329, 31.663202, 28.902359>,  <33.854790, 30.905985, 29.075861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679329, 31.663202, 28.902359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394527, 31.903019, 28.756155>,  <33.223648, 32.046909, 28.668432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394527, 31.903019, 28.756155>,  <33.679329, 31.663202, 28.902359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394527, 31.903019, 28.756155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189383, 0.337284, 0.922157,
		0.676153, 0.725802, -0.126605,
		-0.712005, 0.599542, -0.365510,
		33.180927, 32.082882, 28.646502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841972, 32.322464, 29.170383>,  <33.679329, 31.663202, 28.902359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841972, 32.322464, 29.170383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460674, 32.316933, 29.049625>,  <33.231895, 32.313614, 28.977171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460674, 32.316933, 29.049625>,  <33.841972, 32.322464, 29.170383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460674, 32.316933, 29.049625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285875, 0.365234, 0.885934,
		0.098012, 0.930813, -0.352109,
		-0.953241, -0.013827, -0.301894,
		33.174702, 32.312786, 28.959057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658794, 33.033455, 29.370186>,  <33.841972, 32.322464, 29.170383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658794, 33.033455, 29.370186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331348, 32.811317, 29.311581>,  <33.134880, 32.678036, 29.276417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331348, 32.811317, 29.311581>,  <33.658794, 33.033455, 29.370186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331348, 32.811317, 29.311581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324871, 0.237352, 0.915491,
		-0.473635, 0.797031, -0.374715,
		-0.818614, -0.555342, -0.146514,
		33.085766, 32.644714, 29.267626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147705, 33.559185, 29.459541>,  <33.658794, 33.033455, 29.370186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147705, 33.559185, 29.459541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009071, 33.188175, 29.515499>,  <32.925892, 32.965569, 29.549074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009071, 33.188175, 29.515499>,  <33.147705, 33.559185, 29.459541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009071, 33.188175, 29.515499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440483, 0.292606, 0.848738,
		-0.828161, 0.232542, -0.509973,
		-0.346589, -0.927527, 0.139894,
		32.905094, 32.909916, 29.557467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430534, 33.624474, 29.625130>,  <33.147705, 33.559185, 29.459541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430534, 33.624474, 29.625130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511955, 33.264931, 29.780367>,  <32.560806, 33.049206, 29.873510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511955, 33.264931, 29.780367>,  <32.430534, 33.624474, 29.625130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511955, 33.264931, 29.780367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556819, 0.219763, 0.801035,
		-0.805307, -0.379151, -0.455769,
		0.203552, -0.898860, 0.388095,
		32.573021, 32.995274, 29.896795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900156, 33.458546, 29.845716>,  <32.430534, 33.624474, 29.625130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900156, 33.458546, 29.845716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137463, 33.201984, 30.040298>,  <32.279846, 33.048046, 30.157047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137463, 33.201984, 30.040298>,  <31.900156, 33.458546, 29.845716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137463, 33.201984, 30.040298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489991, 0.191732, 0.850381,
		-0.638705, -0.742861, -0.200533,
		0.593266, -0.641402, 0.486456,
		32.315441, 33.009563, 30.186235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444727, 33.206306, 30.360798>,  <31.900156, 33.458546, 29.845716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444727, 33.206306, 30.360798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807964, 33.109947, 30.497816>,  <32.025906, 33.052132, 30.580027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807964, 33.109947, 30.497816>,  <31.444727, 33.206306, 30.360798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807964, 33.109947, 30.497816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265236, 0.302137, 0.915622,
		-0.324063, -0.922325, 0.210475,
		0.908093, -0.240894, 0.342545,
		32.080391, 33.037678, 30.600580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305088, 32.778278, 30.974401>,  <31.444727, 33.206306, 30.360798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305088, 32.778278, 30.974401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655132, 32.970657, 30.995813>,  <31.865160, 33.086086, 31.008661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655132, 32.970657, 30.995813>,  <31.305088, 32.778278, 30.974401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655132, 32.970657, 30.995813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292051, 0.436691, 0.850886,
		0.385856, -0.760255, 0.522616,
		0.875112, 0.480949, 0.053533,
		31.917665, 33.114944, 31.011873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542862, 32.644897, 31.732592>,  <31.305088, 32.778278, 30.974401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542862, 32.644897, 31.732592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.748655, 32.944248, 31.565144>,  <31.872131, 33.123859, 31.464676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.748655, 32.944248, 31.565144>,  <31.542862, 32.644897, 31.732592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748655, 32.944248, 31.565144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162686, 0.564504, 0.809239,
		0.841927, -0.348236, 0.412177,
		0.514482, 0.748376, -0.418619,
		31.903000, 33.168762, 31.439558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944101, 32.808258, 32.224552>,  <31.542862, 32.644897, 31.732592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944101, 32.808258, 32.224552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916914, 33.125717, 31.982725>,  <31.900600, 33.316193, 31.837629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916914, 33.125717, 31.982725>,  <31.944101, 32.808258, 32.224552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916914, 33.125717, 31.982725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156940, 0.589916, 0.792067,
		0.985266, 0.148717, 0.084459,
		-0.067970, 0.793652, -0.604564,
		31.896523, 33.363811, 31.801355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351753, 33.196796, 32.510086>,  <31.944101, 32.808258, 32.224552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351753, 33.196796, 32.510086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122303, 33.442337, 32.293148>,  <31.984634, 33.589661, 32.162983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122303, 33.442337, 32.293148>,  <32.351753, 33.196796, 32.510086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122303, 33.442337, 32.293148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007542, 0.666039, 0.745879,
		0.819086, 0.423762, -0.386684,
		-0.573622, 0.613855, -0.542347,
		31.950216, 33.626495, 32.130444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492062, 33.857399, 32.622253>,  <32.351753, 33.196796, 32.510086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492062, 33.857399, 32.622253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128334, 33.916008, 32.466476>,  <31.910097, 33.951176, 32.373009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128334, 33.916008, 32.466476>,  <32.492062, 33.857399, 32.622253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128334, 33.916008, 32.466476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174925, 0.714607, 0.677302,
		0.377542, 0.684008, -0.624176,
		-0.909320, 0.146526, -0.389444,
		31.855537, 33.959965, 32.349644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450855, 34.597336, 32.444260>,  <32.492062, 33.857399, 32.622253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450855, 34.597336, 32.444260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089741, 34.431400, 32.489662>,  <31.873072, 34.331841, 32.516903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089741, 34.431400, 32.489662>,  <32.450855, 34.597336, 32.444260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089741, 34.431400, 32.489662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234971, 0.696783, 0.677703,
		-0.360224, 0.585153, -0.726523,
		-0.902789, -0.414837, 0.113504,
		31.818905, 34.306950, 32.523712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000515, 35.245220, 32.581928>,  <32.450855, 34.597336, 32.444260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000515, 35.245220, 32.581928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777428, 34.934734, 32.699528>,  <31.643574, 34.748444, 32.770088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777428, 34.934734, 32.699528>,  <32.000515, 35.245220, 32.581928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777428, 34.934734, 32.699528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358339, 0.544668, 0.758242,
		-0.748692, 0.317535, -0.581920,
		-0.557722, -0.776214, 0.294003,
		31.610111, 34.701870, 32.787727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684765, 35.928547, 32.651825>,  <32.000515, 35.245220, 32.581928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684765, 35.928547, 32.651825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675768, 36.322952, 32.717892>,  <31.670370, 36.559593, 32.757530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675768, 36.322952, 32.717892>,  <31.684765, 35.928547, 32.651825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675768, 36.322952, 32.717892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090827, 0.162510, -0.982518,
		-0.995613, -0.037100, 0.085901,
		-0.022492, 0.986009, 0.165166,
		31.669020, 36.618755, 32.767441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022972, 36.302464, 32.471111>,  <31.684765, 35.928547, 32.651825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022972, 36.302464, 32.471111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359821, 36.511856, 32.419270>,  <31.561930, 36.637493, 32.388165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359821, 36.511856, 32.419270>,  <31.022972, 36.302464, 32.471111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359821, 36.511856, 32.419270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161307, 0.015186, -0.986787,
		-0.514598, 0.851901, 0.097230,
		0.842122, 0.523482, -0.129603,
		31.612457, 36.668900, 32.380390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918215, 36.957901, 31.953278>,  <31.022972, 36.302464, 32.471111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918215, 36.957901, 31.953278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.287775, 36.805164, 31.963144>,  <31.509512, 36.713524, 31.969065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.287775, 36.805164, 31.963144>,  <30.918215, 36.957901, 31.953278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287775, 36.805164, 31.963144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006653, -0.080485, -0.996734,
		0.382575, 0.920718, -0.076900,
		0.923900, -0.381837, 0.024666,
		31.564945, 36.690613, 31.970545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288759, 37.373539, 31.479855>,  <30.918215, 36.957901, 31.953278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288759, 37.373539, 31.479855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512720, 37.042114, 31.479414>,  <31.647097, 36.843262, 31.479149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512720, 37.042114, 31.479414>,  <31.288759, 37.373539, 31.479855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512720, 37.042114, 31.479414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145639, 0.099727, -0.984299,
		0.815658, 0.550951, 0.176507,
		0.559903, -0.828558, -0.001103,
		31.680691, 36.793549, 31.479082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803463, 37.496918, 30.995369>,  <31.288759, 37.373539, 31.479855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803463, 37.496918, 30.995369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841175, 37.100548, 31.033686>,  <31.863802, 36.862724, 31.056675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841175, 37.100548, 31.033686>,  <31.803463, 37.496918, 30.995369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841175, 37.100548, 31.033686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320399, -0.060899, -0.945323,
		0.942579, 0.119819, 0.311750,
		0.094282, -0.990926, 0.095792,
		31.869459, 36.803268, 31.062424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474850, 37.329697, 30.698936>,  <31.803463, 37.496918, 30.995369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474850, 37.329697, 30.698936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280056, 36.980484, 30.709297>,  <32.163181, 36.770958, 30.715513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280056, 36.980484, 30.709297>,  <32.474850, 37.329697, 30.698936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280056, 36.980484, 30.709297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328231, -0.210411, -0.920864,
		0.809391, -0.439942, 0.389021,
		-0.486981, -0.873028, 0.025902,
		32.133961, 36.718575, 30.717068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870659, 36.706341, 30.400091>,  <32.474850, 37.329697, 30.698936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870659, 36.706341, 30.400091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482452, 36.623100, 30.351433>,  <32.249531, 36.573158, 30.322239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482452, 36.623100, 30.351433>,  <32.870659, 36.706341, 30.400091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482452, 36.623100, 30.351433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158048, -0.168344, -0.972975,
		0.181995, -0.963512, 0.196270,
		-0.970514, -0.208097, -0.121644,
		32.191299, 36.560673, 30.314939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930244, 36.037987, 30.018518>,  <32.870659, 36.706341, 30.400091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930244, 36.037987, 30.018518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554321, 36.164833, 29.967604>,  <32.328770, 36.240940, 29.937056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554321, 36.164833, 29.967604>,  <32.930244, 36.037987, 30.018518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554321, 36.164833, 29.967604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008809, -0.349890, -0.936749,
		-0.341565, -0.881494, 0.326040,
		-0.939817, 0.317088, -0.127275,
		32.272381, 36.259968, 29.929419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498020, 35.411091, 29.759115>,  <32.930244, 36.037987, 30.018518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498020, 35.411091, 29.759115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319550, 35.749470, 29.642288>,  <32.212467, 35.952496, 29.572191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319550, 35.749470, 29.642288>,  <32.498020, 35.411091, 29.759115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319550, 35.749470, 29.642288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104172, -0.373228, -0.921872,
		-0.888860, -0.380894, 0.254650,
		-0.446178, 0.845944, -0.292069,
		32.185696, 36.003254, 29.554668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893370, 35.274193, 29.359318>,  <32.498020, 35.411091, 29.759115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893370, 35.274193, 29.359318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982637, 35.647606, 29.247101>,  <32.036198, 35.871655, 29.179770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982637, 35.647606, 29.247101>,  <31.893370, 35.274193, 29.359318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982637, 35.647606, 29.247101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195116, -0.239198, -0.951165,
		-0.955052, 0.267011, 0.128765,
		0.223171, 0.933536, -0.280544,
		32.049587, 35.927666, 29.162937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418966, 35.394302, 28.751936>,  <31.893370, 35.274193, 29.359318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418966, 35.394302, 28.751936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673368, 35.702541, 28.735565>,  <31.826010, 35.887486, 28.725742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673368, 35.702541, 28.735565>,  <31.418966, 35.394302, 28.751936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673368, 35.702541, 28.735565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085152, 0.017373, -0.996216,
		-0.766971, 0.637086, 0.076667,
		0.636007, 0.770597, -0.040925,
		31.864170, 35.933720, 28.723288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159977, 35.840080, 28.279970>,  <31.418966, 35.394302, 28.751936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159977, 35.840080, 28.279970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547173, 35.938423, 28.300186>,  <31.779490, 35.997429, 28.312315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547173, 35.938423, 28.300186>,  <31.159977, 35.840080, 28.279970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547173, 35.938423, 28.300186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023034, 0.113499, -0.993271,
		-0.249934, 0.962639, 0.104203,
		0.967989, 0.245853, 0.050540,
		31.837568, 36.012180, 28.315348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106874, 36.466446, 27.849264>,  <31.159977, 35.840080, 28.279970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106874, 36.466446, 27.849264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476421, 36.315880, 27.876909>,  <31.698151, 36.225540, 27.893496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476421, 36.315880, 27.876909>,  <31.106874, 36.466446, 27.849264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476421, 36.315880, 27.876909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035908, -0.094529, -0.994874,
		0.381022, 0.921615, -0.073815,
		0.923868, -0.376418, 0.069111,
		31.753582, 36.202953, 27.897642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536921, 36.991840, 27.513786>,  <31.106874, 36.466446, 27.849264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536921, 36.991840, 27.513786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.736603, 36.645679, 27.531105>,  <31.856413, 36.437984, 27.541496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.736603, 36.645679, 27.531105>,  <31.536921, 36.991840, 27.513786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736603, 36.645679, 27.531105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119736, 0.019406, -0.992616,
		0.858170, 0.500706, 0.113307,
		0.499207, -0.865400, 0.043299,
		31.886366, 36.386059, 27.544094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111576, 37.179367, 27.095135>,  <31.536921, 36.991840, 27.513786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111576, 37.179367, 27.095135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109257, 36.779762, 27.077497>,  <32.107864, 36.540001, 27.066916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109257, 36.779762, 27.077497>,  <32.111576, 37.179367, 27.095135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109257, 36.779762, 27.077497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184325, 0.042272, -0.981956,
		0.982848, -0.013818, 0.183898,
		-0.005795, -0.999011, -0.044094,
		32.107517, 36.480061, 27.064270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623741, 36.944157, 26.628345>,  <32.111576, 37.179367, 27.095135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623741, 36.944157, 26.628345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391117, 36.620167, 26.658609>,  <32.251541, 36.425774, 26.676767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391117, 36.620167, 26.658609>,  <32.623741, 36.944157, 26.628345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391117, 36.620167, 26.658609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238149, -0.258441, -0.936212,
		0.777863, -0.526447, 0.343194,
		-0.581562, -0.809976, 0.075659,
		32.216648, 36.377174, 26.681307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021896, 36.414639, 26.330938>,  <32.623741, 36.944157, 26.628345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021896, 36.414639, 26.330938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643108, 36.287319, 26.313324>,  <32.415836, 36.210930, 26.302755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643108, 36.287319, 26.313324>,  <33.021896, 36.414639, 26.330938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643108, 36.287319, 26.313324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148966, -0.313438, -0.937852,
		0.284711, -0.894676, 0.344231,
		-0.946968, -0.318295, -0.044037,
		32.359016, 36.191830, 26.300114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115028, 35.796303, 26.068491>,  <33.021896, 36.414639, 26.330938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115028, 35.796303, 26.068491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747990, 35.908241, 25.955572>,  <32.527767, 35.975407, 25.887821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747990, 35.908241, 25.955572>,  <33.115028, 35.796303, 26.068491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747990, 35.908241, 25.955572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199846, -0.289118, -0.936201,
		-0.343618, -0.915474, 0.209367,
		-0.917599, 0.279855, -0.282300,
		32.472710, 35.992195, 25.870882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759338, 35.095474, 25.759916>,  <33.115028, 35.796303, 26.068491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759338, 35.095474, 25.759916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557732, 35.415226, 25.629101>,  <32.436768, 35.607079, 25.550611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557732, 35.415226, 25.629101>,  <32.759338, 35.095474, 25.759916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557732, 35.415226, 25.629101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102945, -0.320352, -0.941688,
		-0.857534, -0.508298, 0.079172,
		-0.504021, 0.799380, -0.327039,
		32.406525, 35.655041, 25.530989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440300, 34.872505, 25.142641>,  <32.759338, 35.095474, 25.759916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440300, 34.872505, 25.142641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410564, 35.271248, 25.131720>,  <32.392723, 35.510494, 25.125166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410564, 35.271248, 25.131720>,  <32.440300, 34.872505, 25.142641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410564, 35.271248, 25.131720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209646, -0.011148, -0.977714,
		-0.974948, -0.078403, -0.208159,
		-0.074335, 0.996859, -0.027305,
		32.388264, 35.570305, 25.123528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080467, 35.000381, 24.508535>,  <32.440300, 34.872505, 25.142641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080467, 35.000381, 24.508535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283363, 35.323853, 24.627695>,  <32.405102, 35.517937, 24.699190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283363, 35.323853, 24.627695>,  <32.080467, 35.000381, 24.508535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283363, 35.323853, 24.627695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360880, 0.114590, -0.925546,
		-0.782606, 0.576981, -0.233711,
		0.507241, 0.808679, 0.297899,
		32.435535, 35.566456, 24.717066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860752, 35.512348, 24.054493>,  <32.080467, 35.000381, 24.508535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860752, 35.512348, 24.054493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219040, 35.620106, 24.195976>,  <32.434013, 35.684761, 24.280867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219040, 35.620106, 24.195976>,  <31.860752, 35.512348, 24.054493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219040, 35.620106, 24.195976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330961, 0.127233, -0.935028,
		-0.296897, 0.954587, 0.024806,
		0.895722, 0.269397, 0.353706,
		32.487755, 35.700924, 24.302088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009514, 36.045235, 23.595371>,  <31.860752, 35.512348, 24.054493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009514, 36.045235, 23.595371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353909, 35.965073, 23.782362>,  <32.560547, 35.916973, 23.894556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353909, 35.965073, 23.782362>,  <32.009514, 36.045235, 23.595371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353909, 35.965073, 23.782362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461281, -0.079552, -0.883680,
		0.214285, 0.976477, 0.023951,
		0.860989, -0.200408, 0.467478,
		32.612206, 35.904949, 23.922606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605854, 36.423397, 23.210173>,  <32.009514, 36.045235, 23.595371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605854, 36.423397, 23.210173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778664, 36.138195, 23.431076>,  <32.882347, 35.967075, 23.563618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778664, 36.138195, 23.431076>,  <32.605854, 36.423397, 23.210173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778664, 36.138195, 23.431076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700388, -0.120530, -0.703512,
		0.568169, 0.690726, 0.447306,
		0.432020, -0.713001, 0.552257,
		32.908268, 35.924294, 23.596754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405674, 36.538956, 23.207008>,  <32.605854, 36.423397, 23.210173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405674, 36.538956, 23.207008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353096, 36.151711, 23.292311>,  <33.321548, 35.919365, 23.343493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353096, 36.151711, 23.292311>,  <33.405674, 36.538956, 23.207008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353096, 36.151711, 23.292311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587480, -0.249353, -0.769864,
		0.798492, 0.024088, 0.601524,
		-0.131447, -0.968113, 0.213257,
		33.313663, 35.861275, 23.356287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033146, 36.147690, 23.136778>,  <33.405674, 36.538956, 23.207008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033146, 36.147690, 23.136778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766350, 35.851059, 23.107967>,  <33.606270, 35.673080, 23.090681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766350, 35.851059, 23.107967>,  <34.033146, 36.147690, 23.136778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766350, 35.851059, 23.107967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443413, -0.317405, -0.838236,
		0.598752, -0.591036, 0.540531,
		-0.666994, -0.741573, -0.072026,
		33.566250, 35.628586, 23.086359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469109, 35.425667, 23.089396>,  <34.033146, 36.147690, 23.136778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469109, 35.425667, 23.089396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103512, 35.302612, 22.983582>,  <33.884155, 35.228779, 22.920094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103512, 35.302612, 22.983582>,  <34.469109, 35.425667, 23.089396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103512, 35.302612, 22.983582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383786, -0.444000, -0.809674,
		0.131635, -0.841559, 0.523880,
		-0.913991, -0.307639, -0.264533,
		33.829315, 35.210320, 22.904222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479473, 34.748817, 23.089336>,  <34.469109, 35.425667, 23.089396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479473, 34.748817, 23.089336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196159, 34.880310, 22.839451>,  <34.026173, 34.959206, 22.689520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196159, 34.880310, 22.839451>,  <34.479473, 34.748817, 23.089336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196159, 34.880310, 22.839451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435324, -0.493262, -0.753118,
		-0.555720, -0.805376, 0.206266,
		-0.708286, 0.328729, -0.624715,
		33.983673, 34.978928, 22.652037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194584, 34.755024, 23.329605>,  <34.479473, 34.748817, 23.089336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194584, 34.755024, 23.329605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423447, 35.080631, 23.289591>,  <35.560764, 35.275997, 23.265583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423447, 35.080631, 23.289591>,  <35.194584, 34.755024, 23.329605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423447, 35.080631, 23.289591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237757, 0.281363, 0.929681,
		0.784924, -0.508141, 0.354523,
		0.572159, 0.814019, -0.100034,
		35.595093, 35.324837, 23.259581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589756, 34.811974, 23.932852>,  <35.194584, 34.755024, 23.329605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589756, 34.811974, 23.932852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606152, 35.187313, 23.795555>,  <35.615990, 35.412518, 23.713177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606152, 35.187313, 23.795555>,  <35.589756, 34.811974, 23.932852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606152, 35.187313, 23.795555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163238, 0.345204, 0.924223,
		0.985735, 0.018149, 0.167324,
		0.040987, 0.938352, -0.343242,
		35.618446, 35.468819, 23.692583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177593, 35.177532, 24.297234>,  <35.589756, 34.811974, 23.932852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177593, 35.177532, 24.297234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912189, 35.437084, 24.148254>,  <35.752949, 35.592815, 24.058867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912189, 35.437084, 24.148254>,  <36.177593, 35.177532, 24.297234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912189, 35.437084, 24.148254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048721, 0.459283, 0.886953,
		0.746581, 0.606646, -0.273124,
		-0.663508, 0.648875, -0.372449,
		35.713139, 35.631748, 24.036520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442688, 35.809658, 24.517149>,  <36.177593, 35.177532, 24.297234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442688, 35.809658, 24.517149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058620, 35.857063, 24.415926>,  <35.828182, 35.885506, 24.355192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058620, 35.857063, 24.415926>,  <36.442688, 35.809658, 24.517149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058620, 35.857063, 24.415926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144028, 0.566163, 0.811613,
		0.239456, 0.815730, -0.526542,
		-0.960165, 0.118509, -0.253059,
		35.770573, 35.892616, 24.340008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301376, 36.519772, 24.670515>,  <36.442688, 35.809658, 24.517149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301376, 36.519772, 24.670515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926785, 36.380619, 24.652662>,  <35.702030, 36.297127, 24.641951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926785, 36.380619, 24.652662>,  <36.301376, 36.519772, 24.670515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926785, 36.380619, 24.652662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203966, 0.436645, 0.876207,
		-0.285326, 0.829651, -0.479863,
		-0.936476, -0.347880, -0.044634,
		35.645844, 36.276257, 24.639273>
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
