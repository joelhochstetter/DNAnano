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
	<24.089489, 35.124359, 35.069031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414974, 34.991970, 34.877895>,  <24.610266, 34.912537, 34.763214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414974, 34.991970, 34.877895>,  <24.089489, 35.124359, 35.069031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414974, 34.991970, 34.877895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149897, 0.913742, -0.377632,
		0.561606, 0.235658, 0.793135,
		0.813713, -0.330969, -0.477839,
		24.659088, 34.892681, 34.734543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.153063, 35.490257, 35.720646>,  <24.089489, 35.124359, 35.069031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.153063, 35.490257, 35.720646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496279, 35.356506, 35.876572>,  <24.702209, 35.276257, 35.970127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496279, 35.356506, 35.876572>,  <24.153063, 35.490257, 35.720646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496279, 35.356506, 35.876572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151430, 0.889987, 0.430107,
		-0.490747, -0.310021, 0.814281,
		0.858042, -0.334381, 0.389812,
		24.753691, 35.256191, 35.993515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.175051, 35.635487, 36.413872>,  <24.153063, 35.490257, 35.720646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.175051, 35.635487, 36.413872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543699, 35.609425, 36.260838>,  <24.764889, 35.593788, 36.169018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543699, 35.609425, 36.260838>,  <24.175051, 35.635487, 36.413872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543699, 35.609425, 36.260838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238633, 0.872562, 0.426250,
		0.306058, -0.484138, 0.819719,
		0.921620, -0.065155, -0.382586,
		24.820185, 35.589878, 36.146061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772425, 35.532219, 36.838673>,  <24.175051, 35.635487, 36.413872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772425, 35.532219, 36.838673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940458, 35.729713, 36.534107>,  <25.041279, 35.848209, 36.351368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940458, 35.729713, 36.534107>,  <24.772425, 35.532219, 36.838673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940458, 35.729713, 36.534107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560110, 0.519086, 0.645621,
		0.714006, -0.697692, -0.058487,
		0.420085, 0.493737, -0.761415,
		25.066484, 35.877834, 36.305683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431761, 35.347900, 36.737984>,  <24.772425, 35.532219, 36.838673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431761, 35.347900, 36.737984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374254, 35.737534, 36.668133>,  <25.339750, 35.971313, 36.626221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374254, 35.737534, 36.668133>,  <25.431761, 35.347900, 36.737984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374254, 35.737534, 36.668133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644688, 0.226065, 0.730255,
		0.750806, -0.007594, -0.660479,
		-0.143765, 0.974083, -0.174626,
		25.331125, 36.029758, 36.615746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991259, 35.470009, 37.049156>,  <25.431761, 35.347900, 36.737984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991259, 35.470009, 37.049156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806829, 35.820194, 36.991226>,  <25.696173, 36.030304, 36.956467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806829, 35.820194, 36.991226>,  <25.991259, 35.470009, 37.049156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806829, 35.820194, 36.991226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671598, 0.450953, 0.587875,
		0.579973, 0.173788, -0.795882,
		-0.461071, 0.875465, -0.144825,
		25.668509, 36.082832, 36.947777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451548, 34.889362, 36.817467>,  <25.991259, 35.470009, 37.049156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451548, 34.889362, 36.817467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772896, 34.655514, 36.772182>,  <26.965704, 34.515205, 36.745010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772896, 34.655514, 36.772182>,  <26.451548, 34.889362, 36.817467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772896, 34.655514, 36.772182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489310, -0.756448, 0.434008,
		-0.339369, -0.293273, -0.893767,
		0.803371, -0.584618, -0.113213,
		27.013906, 34.480129, 36.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223465, 34.243664, 36.663414>,  <26.451548, 34.889362, 36.817467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223465, 34.243664, 36.663414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588789, 34.108772, 36.754757>,  <26.807983, 34.027840, 36.809563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588789, 34.108772, 36.754757>,  <26.223465, 34.243664, 36.663414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588789, 34.108772, 36.754757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407251, -0.761251, 0.504623,
		0.003664, -0.553874, -0.832592,
		0.913309, -0.337225, 0.228355,
		26.862782, 34.007607, 36.823265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463312, 33.512150, 36.465511>,  <26.223465, 34.243664, 36.663414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463312, 33.512150, 36.465511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661535, 33.622910, 36.794815>,  <26.780468, 33.689365, 36.992397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661535, 33.622910, 36.794815>,  <26.463312, 33.512150, 36.465511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661535, 33.622910, 36.794815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375164, -0.786614, 0.490398,
		0.783375, -0.551876, -0.285930,
		0.495556, 0.276895, 0.823258,
		26.810202, 33.705978, 37.041794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825161, 33.007519, 36.711430>,  <26.463312, 33.512150, 36.465511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825161, 33.007519, 36.711430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789570, 33.214104, 37.052101>,  <26.768215, 33.338055, 37.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789570, 33.214104, 37.052101>,  <26.825161, 33.007519, 36.711430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789570, 33.214104, 37.052101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235022, -0.841810, 0.485922,
		0.967909, -0.156927, 0.196281,
		-0.088977, 0.516459, 0.851677,
		26.762877, 33.369041, 37.307606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021238, 32.511932, 37.216640>,  <26.825161, 33.007519, 36.711430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021238, 32.511932, 37.216640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818451, 32.791302, 37.418705>,  <26.696777, 32.958923, 37.539944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818451, 32.791302, 37.418705>,  <27.021238, 32.511932, 37.216640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818451, 32.791302, 37.418705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532311, -0.714633, 0.453813,
		0.677958, -0.038834, 0.734074,
		-0.506970, 0.698422, 0.505162,
		26.666359, 33.000828, 37.570255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056564, 32.329197, 37.896614>,  <27.021238, 32.511932, 37.216640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056564, 32.329197, 37.896614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728979, 32.541458, 37.809238>,  <26.532429, 32.668816, 37.756813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728979, 32.541458, 37.809238>,  <27.056564, 32.329197, 37.896614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728979, 32.541458, 37.809238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571335, -0.718396, 0.396842,
		0.053661, 0.449798, 0.891517,
		-0.818961, 0.530649, -0.218436,
		26.483292, 32.700653, 37.743710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284971, 31.991465, 38.132427>,  <27.056564, 32.329197, 37.896614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284971, 31.991465, 38.132427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299662, 32.269829, 38.419304>,  <26.308475, 32.436848, 38.591431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299662, 32.269829, 38.419304>,  <26.284971, 31.991465, 38.132427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299662, 32.269829, 38.419304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104341, 0.711081, -0.695325,
		-0.993863, 0.100368, -0.046498,
		0.036724, 0.695910, 0.717189,
		26.310678, 32.478603, 38.634460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893164, 32.544041, 37.928062>,  <26.284971, 31.991465, 38.132427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893164, 32.544041, 37.928062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172670, 32.674866, 38.182545>,  <26.340374, 32.753361, 38.335236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172670, 32.674866, 38.182545>,  <25.893164, 32.544041, 37.928062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172670, 32.674866, 38.182545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214825, 0.752365, -0.622733,
		-0.682333, 0.571817, 0.455464,
		0.698764, 0.327067, 0.636204,
		26.382299, 32.772987, 38.373405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729479, 33.246857, 38.003658>,  <25.893164, 32.544041, 37.928062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729479, 33.246857, 38.003658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113518, 33.167881, 38.082890>,  <26.343941, 33.120495, 38.130428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113518, 33.167881, 38.082890>,  <25.729479, 33.246857, 38.003658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113518, 33.167881, 38.082890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278929, 0.727502, -0.626849,
		-0.020340, 0.657085, 0.753542,
		0.960096, -0.197435, 0.198077,
		26.401546, 33.108650, 38.142311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068054, 33.844891, 38.315426>,  <25.729479, 33.246857, 38.003658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068054, 33.844891, 38.315426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284258, 33.588165, 38.097828>,  <26.413980, 33.434132, 37.967270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284258, 33.588165, 38.097828>,  <26.068054, 33.844891, 38.315426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284258, 33.588165, 38.097828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367361, 0.761725, -0.533686,
		0.756898, 0.088622, 0.647496,
		0.540510, -0.641811, -0.543992,
		26.446411, 33.395622, 37.934631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677776, 34.136288, 38.364048>,  <26.068054, 33.844891, 38.315426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677776, 34.136288, 38.364048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673292, 33.903187, 38.039021>,  <26.670603, 33.763325, 37.844002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673292, 33.903187, 38.039021>,  <26.677776, 34.136288, 38.364048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673292, 33.903187, 38.039021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500677, 0.700150, -0.509032,
		0.865562, -0.412542, 0.283922,
		-0.011209, -0.582752, -0.812573,
		26.669930, 33.728363, 37.795250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319578, 34.299229, 38.091351>,  <26.677776, 34.136288, 38.364048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319578, 34.299229, 38.091351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123180, 34.117664, 37.793926>,  <27.005342, 34.008724, 37.615471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123180, 34.117664, 37.793926>,  <27.319578, 34.299229, 38.091351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123180, 34.117664, 37.793926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436761, 0.610249, -0.660935,
		0.753768, -0.649274, -0.101374,
		-0.490992, -0.453916, -0.743564,
		26.975883, 33.981491, 37.570858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709206, 33.839260, 37.654903>,  <27.319578, 34.299229, 38.091351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709206, 33.839260, 37.654903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409170, 34.041756, 37.484684>,  <27.229149, 34.163254, 37.382553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409170, 34.041756, 37.484684>,  <27.709206, 33.839260, 37.654903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409170, 34.041756, 37.484684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661100, 0.591169, -0.462024,
		0.017675, -0.627887, -0.778103,
		-0.750090, 0.506237, -0.425545,
		27.184143, 34.193626, 37.357021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788157, 33.967636, 36.892826>,  <27.709206, 33.839260, 37.654903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788157, 33.967636, 36.892826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555456, 34.251553, 37.051704>,  <27.415836, 34.421902, 37.147030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555456, 34.251553, 37.051704>,  <27.788157, 33.967636, 36.892826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555456, 34.251553, 37.051704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723903, 0.674481, -0.145048,
		-0.370853, 0.203148, -0.906200,
		-0.581749, 0.709793, 0.397193,
		27.380932, 34.464489, 37.170864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682568, 34.498035, 36.450817>,  <27.788157, 33.967636, 36.892826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682568, 34.498035, 36.450817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655273, 34.763191, 36.749058>,  <27.638897, 34.922283, 36.928001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655273, 34.763191, 36.749058>,  <27.682568, 34.498035, 36.450817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655273, 34.763191, 36.749058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820550, 0.462388, -0.335998,
		-0.567487, 0.588878, -0.575484,
		-0.068235, 0.662887, 0.745603,
		27.634804, 34.962059, 36.972740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629955, 35.249310, 36.213638>,  <27.682568, 34.498035, 36.450817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629955, 35.249310, 36.213638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798666, 35.228153, 36.575699>,  <27.899893, 35.215458, 36.792934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798666, 35.228153, 36.575699>,  <27.629955, 35.249310, 36.213638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798666, 35.228153, 36.575699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844126, 0.387335, -0.370706,
		-0.330990, 0.920420, 0.208020,
		0.421779, -0.052895, 0.905154,
		27.925200, 35.212284, 36.847244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169905, 35.531193, 35.669762>,  <27.629955, 35.249310, 36.213638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169905, 35.531193, 35.669762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542452, 35.593403, 35.538086>,  <28.765980, 35.630730, 35.459080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542452, 35.593403, 35.538086>,  <28.169905, 35.531193, 35.669762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542452, 35.593403, 35.538086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349304, -0.126784, 0.928392,
		0.102651, -0.979663, -0.172408,
		0.931370, 0.155523, -0.329186,
		28.821863, 35.640060, 35.439331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715471, 35.019840, 35.753094>,  <28.169905, 35.531193, 35.669762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715471, 35.019840, 35.753094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904652, 35.368164, 35.806774>,  <29.018160, 35.577160, 35.838982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904652, 35.368164, 35.806774>,  <28.715471, 35.019840, 35.753094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904652, 35.368164, 35.806774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301262, -0.302958, 0.904133,
		0.827985, -0.387180, -0.405626,
		0.472950, 0.870809, 0.134202,
		29.046537, 35.629406, 35.847034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423559, 34.773457, 35.847694>,  <28.715471, 35.019840, 35.753094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423559, 34.773457, 35.847694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312277, 35.095272, 36.057575>,  <29.245506, 35.288361, 36.183506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312277, 35.095272, 36.057575>,  <29.423559, 34.773457, 35.847694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312277, 35.095272, 36.057575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241251, -0.470232, 0.848928,
		0.929730, 0.362764, -0.063274,
		-0.278207, 0.804539, 0.524706,
		29.228815, 35.336636, 36.214989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968187, 34.985397, 36.424572>,  <29.423559, 34.773457, 35.847694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968187, 34.985397, 36.424572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600735, 35.118065, 36.510468>,  <29.380264, 35.197666, 36.562004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600735, 35.118065, 36.510468>,  <29.968187, 34.985397, 36.424572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600735, 35.118065, 36.510468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107322, -0.313603, 0.943470,
		0.380265, 0.889746, 0.252490,
		-0.918630, 0.331671, 0.214742,
		29.325146, 35.217567, 36.574890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022905, 35.344631, 37.047615>,  <29.968187, 34.985397, 36.424572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022905, 35.344631, 37.047615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641588, 35.230183, 37.008904>,  <29.412798, 35.161514, 36.985676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641588, 35.230183, 37.008904>,  <30.022905, 35.344631, 37.047615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641588, 35.230183, 37.008904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025613, -0.395837, 0.917963,
		-0.300960, 0.872609, 0.384677,
		-0.953293, -0.286123, -0.096780,
		29.355600, 35.144344, 36.979870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776329, 36.011669, 37.425335>,  <30.022905, 35.344631, 37.047615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776329, 36.011669, 37.425335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977865, 36.270096, 37.654678>,  <30.098787, 36.425152, 37.792286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977865, 36.270096, 37.654678>,  <29.776329, 36.011669, 37.425335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977865, 36.270096, 37.654678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112078, -0.609260, 0.785010,
		0.856494, -0.459781, -0.234561,
		0.503842, 0.646067, 0.573359,
		30.129017, 36.463917, 37.826687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495550, 35.785255, 37.715927>,  <29.776329, 36.011669, 37.425335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495550, 35.785255, 37.715927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274918, 36.026379, 37.946541>,  <30.142538, 36.171051, 38.084908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274918, 36.026379, 37.946541>,  <30.495550, 35.785255, 37.715927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274918, 36.026379, 37.946541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027951, -0.704152, 0.709499,
		0.833654, 0.375230, 0.405244,
		-0.551579, 0.602804, 0.576531,
		30.109444, 36.207218, 38.119499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831013, 35.840279, 38.331596>,  <30.495550, 35.785255, 37.715927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831013, 35.840279, 38.331596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432753, 35.842770, 38.368771>,  <30.193796, 35.844265, 38.391075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432753, 35.842770, 38.368771>,  <30.831013, 35.840279, 38.331596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432753, 35.842770, 38.368771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045644, -0.837128, 0.545099,
		0.081195, 0.546971, 0.833205,
		-0.995652, 0.006228, 0.092937,
		30.134056, 35.844639, 38.396652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656981, 35.678581, 38.961819>,  <30.831013, 35.840279, 38.331596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656981, 35.678581, 38.961819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331802, 35.567101, 38.757290>,  <30.136696, 35.500210, 38.634575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331802, 35.567101, 38.757290>,  <30.656981, 35.678581, 38.961819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331802, 35.567101, 38.757290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118049, -0.938678, 0.323958,
		-0.570252, 0.202999, 0.795993,
		-0.812943, -0.278704, -0.511319,
		30.087919, 35.483490, 38.603893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161839, 35.500015, 39.437172>,  <30.656981, 35.678581, 38.961819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161839, 35.500015, 39.437172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061302, 35.316742, 39.096138>,  <30.000980, 35.206779, 38.891518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061302, 35.316742, 39.096138>,  <30.161839, 35.500015, 39.437172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061302, 35.316742, 39.096138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108714, -0.888648, 0.445517,
		-0.961773, 0.019290, 0.273166,
		-0.251343, -0.458183, -0.852581,
		29.985899, 35.179287, 38.840363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921862, 34.860523, 39.663700>,  <30.161839, 35.500015, 39.437172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921862, 34.860523, 39.663700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989555, 34.795132, 39.274929>,  <30.030172, 34.755898, 39.041668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989555, 34.795132, 39.274929>,  <29.921862, 34.860523, 39.663700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989555, 34.795132, 39.274929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297959, -0.931516, 0.208563,
		-0.939457, -0.324890, -0.108935,
		0.169234, -0.163477, -0.971923,
		30.040325, 34.746090, 38.983353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479633, 34.607025, 39.530319>,  <29.921862, 34.860523, 39.663700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479633, 34.607025, 39.530319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234411, 34.293274, 39.492550>,  <30.087278, 34.105022, 39.469887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234411, 34.293274, 39.492550>,  <30.479633, 34.607025, 39.530319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234411, 34.293274, 39.492550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415901, 0.422034, -0.805552,
		0.671707, -0.454576, -0.584953,
		-0.613055, -0.784378, -0.094424,
		30.050495, 34.057961, 39.464222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530420, 34.220989, 38.855556>,  <30.479633, 34.607025, 39.530319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530420, 34.220989, 38.855556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157902, 34.282433, 38.987671>,  <29.934391, 34.319298, 39.066940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157902, 34.282433, 38.987671>,  <30.530420, 34.220989, 38.855556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157902, 34.282433, 38.987671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233646, 0.443741, -0.865161,
		-0.279456, -0.882893, -0.377365,
		-0.931297, 0.153604, 0.330291,
		29.878513, 34.328514, 39.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134897, 34.374866, 38.253986>,  <30.530420, 34.220989, 38.855556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134897, 34.374866, 38.253986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918409, 34.544880, 38.544209>,  <29.788517, 34.646889, 38.718342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918409, 34.544880, 38.544209>,  <30.134897, 34.374866, 38.253986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918409, 34.544880, 38.544209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200965, 0.772467, -0.602418,
		-0.816513, -0.471852, -0.332659,
		-0.541220, 0.425029, 0.725556,
		29.756042, 34.672390, 38.761875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451256, 34.525265, 37.885735>,  <30.134897, 34.374866, 38.253986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451256, 34.525265, 37.885735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581110, 34.746681, 38.192513>,  <29.659023, 34.879532, 38.376579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581110, 34.746681, 38.192513>,  <29.451256, 34.525265, 37.885735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581110, 34.746681, 38.192513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309293, 0.828411, -0.466983,
		-0.893840, -0.085612, 0.440137,
		0.324635, 0.553539, 0.766946,
		29.678501, 34.912743, 38.422596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047232, 35.119537, 37.947323>,  <29.451256, 34.525265, 37.885735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047232, 35.119537, 37.947323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363369, 35.239437, 38.161053>,  <29.553051, 35.311378, 38.289291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363369, 35.239437, 38.161053>,  <29.047232, 35.119537, 37.947323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363369, 35.239437, 38.161053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232167, 0.953626, -0.191563,
		-0.566970, 0.027348, 0.823285,
		0.790344, 0.299750, 0.534328,
		29.600471, 35.329361, 38.321350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821339, 35.676483, 38.285042>,  <29.047232, 35.119537, 37.947323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821339, 35.676483, 38.285042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220079, 35.699818, 38.263573>,  <29.459324, 35.713818, 38.250690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220079, 35.699818, 38.263573>,  <28.821339, 35.676483, 38.285042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220079, 35.699818, 38.263573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072903, 0.940512, -0.331848,
		0.031124, 0.334716, 0.941805,
		0.996853, 0.058332, -0.053674,
		29.519135, 35.717316, 38.247471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028191, 36.461926, 38.623787>,  <28.821339, 35.676483, 38.285042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028191, 36.461926, 38.623787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280222, 36.268429, 38.380806>,  <29.431440, 36.152328, 38.235020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280222, 36.268429, 38.380806>,  <29.028191, 36.461926, 38.623787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280222, 36.268429, 38.380806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146210, 0.842169, -0.519012,
		0.762644, 0.238202, 0.601360,
		0.630077, -0.483746, -0.607448,
		29.469246, 36.123306, 38.198570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033691, 36.742310, 39.263504>,  <29.028191, 36.461926, 38.623787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033691, 36.742310, 39.263504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939714, 36.416504, 39.475681>,  <28.883327, 36.221020, 39.602985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939714, 36.416504, 39.475681>,  <29.033691, 36.742310, 39.263504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939714, 36.416504, 39.475681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949800, -0.308366, -0.052826,
		0.206597, 0.491399, 0.846076,
		-0.234942, -0.814516, 0.530439,
		28.869232, 36.172150, 39.634811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588076, 36.636475, 39.688602>,  <29.033691, 36.742310, 39.263504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588076, 36.636475, 39.688602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388927, 36.291641, 39.650772>,  <29.269440, 36.084743, 39.628075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388927, 36.291641, 39.650772>,  <29.588076, 36.636475, 39.688602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388927, 36.291641, 39.650772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866223, -0.489000, -0.102652,
		0.042249, -0.133028, 0.990211,
		-0.497869, -0.862080, -0.094572,
		29.239567, 36.033016, 39.622402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727453, 36.227428, 40.383648>,  <29.588076, 36.636475, 39.688602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727453, 36.227428, 40.383648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657602, 36.056618, 40.028763>,  <29.615692, 35.954132, 39.815830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657602, 36.056618, 40.028763>,  <29.727453, 36.227428, 40.383648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657602, 36.056618, 40.028763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914285, -0.404799, 0.014880,
		-0.365498, -0.808569, 0.461114,
		-0.174627, -0.427028, -0.887216,
		29.605215, 35.928509, 39.762596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262005, 35.723751, 40.273994>,  <29.727453, 36.227428, 40.383648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262005, 35.723751, 40.273994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369404, 35.865883, 40.632133>,  <29.433844, 35.951164, 40.847015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369404, 35.865883, 40.632133>,  <29.262005, 35.723751, 40.273994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369404, 35.865883, 40.632133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129686, 0.934350, -0.331922,
		-0.954511, -0.026994, 0.296951,
		0.268496, 0.355334, 0.895348,
		29.449953, 35.972485, 40.900738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762444, 35.961464, 40.677849>,  <29.262005, 35.723751, 40.273994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762444, 35.961464, 40.677849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071358, 36.168728, 40.824863>,  <29.256706, 36.293087, 40.913071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071358, 36.168728, 40.824863>,  <28.762444, 35.961464, 40.677849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071358, 36.168728, 40.824863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514137, 0.849623, -0.117491,
		-0.373144, -0.098226, 0.922559,
		0.772287, 0.518163, 0.367534,
		29.303043, 36.324177, 40.935123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600357, 36.376617, 41.384254>,  <28.762444, 35.961464, 40.677849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600357, 36.376617, 41.384254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870369, 36.569939, 41.161274>,  <29.032375, 36.685932, 41.027485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870369, 36.569939, 41.161274>,  <28.600357, 36.376617, 41.384254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870369, 36.569939, 41.161274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635003, 0.765278, -0.105456,
		0.375642, 0.425172, 0.823482,
		0.675029, 0.483300, -0.557456,
		29.072878, 36.714928, 40.994038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165180, 36.521072, 41.660912>,  <28.600357, 36.376617, 41.384254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165180, 36.521072, 41.660912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260223, 36.777264, 41.368793>,  <29.317249, 36.930977, 41.193523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260223, 36.777264, 41.368793>,  <29.165180, 36.521072, 41.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260223, 36.777264, 41.368793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753333, 0.596127, 0.277709,
		0.613215, 0.484171, 0.624136,
		0.237605, 0.640477, -0.730296,
		29.331505, 36.969406, 41.149704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079956, 36.135937, 42.283047>,  <29.165180, 36.521072, 41.660912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079956, 36.135937, 42.283047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950960, 35.767616, 42.370800>,  <28.873564, 35.546623, 42.423450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950960, 35.767616, 42.370800>,  <29.079956, 36.135937, 42.283047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950960, 35.767616, 42.370800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194705, 0.162278, 0.967345,
		-0.926332, 0.354672, 0.126951,
		-0.322489, -0.920801, 0.219379,
		28.854214, 35.491375, 42.436615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587976, 36.125294, 42.919209>,  <29.079956, 36.135937, 42.283047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587976, 36.125294, 42.919209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729130, 35.753006, 42.880768>,  <28.813822, 35.529633, 42.857704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729130, 35.753006, 42.880768>,  <28.587976, 36.125294, 42.919209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729130, 35.753006, 42.880768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285487, 0.009289, 0.958337,
		-0.891051, -0.365616, 0.268986,
		0.352882, -0.930719, -0.096102,
		28.834995, 35.473789, 42.851936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193268, 35.793495, 43.496510>,  <28.587976, 36.125294, 42.919209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193268, 35.793495, 43.496510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554932, 35.657631, 43.392872>,  <28.771931, 35.576115, 43.330688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554932, 35.657631, 43.392872>,  <28.193268, 35.793495, 43.496510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554932, 35.657631, 43.392872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328166, 0.163945, 0.930284,
		-0.273502, -0.926150, 0.259697,
		0.904159, -0.339659, -0.259092,
		28.826180, 35.555733, 43.315144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366261, 35.286957, 43.972557>,  <28.193268, 35.793495, 43.496510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366261, 35.286957, 43.972557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676073, 35.481598, 43.810905>,  <28.861959, 35.598385, 43.713913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676073, 35.481598, 43.810905>,  <28.366261, 35.286957, 43.972557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676073, 35.481598, 43.810905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171572, 0.453330, 0.874674,
		0.608825, -0.746798, 0.267630,
		0.774529, 0.486606, -0.404128,
		28.908432, 35.627579, 43.689667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818087, 35.231716, 44.431610>,  <28.366261, 35.286957, 43.972557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818087, 35.231716, 44.431610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894417, 35.580662, 44.251583>,  <28.940214, 35.790031, 44.143566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894417, 35.580662, 44.251583>,  <28.818087, 35.231716, 44.431610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894417, 35.580662, 44.251583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085597, 0.441958, 0.892942,
		0.977885, -0.208918, 0.009664,
		0.190823, 0.872368, -0.450067,
		28.951664, 35.842373, 44.116562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326008, 35.610058, 44.892773>,  <28.818087, 35.231716, 44.431610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326008, 35.610058, 44.892773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129316, 35.880238, 44.672966>,  <29.011301, 36.042347, 44.541084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129316, 35.880238, 44.672966>,  <29.326008, 35.610058, 44.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129316, 35.880238, 44.672966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111271, 0.577166, 0.809011,
		0.863610, 0.458959, -0.208651,
		-0.491729, 0.675453, -0.549515,
		28.981798, 36.082874, 44.508110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669249, 36.369488, 44.860889>,  <29.326008, 35.610058, 44.892773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669249, 36.369488, 44.860889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272972, 36.321098, 44.835926>,  <29.035206, 36.292065, 44.820946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272972, 36.321098, 44.835926>,  <29.669249, 36.369488, 44.860889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272972, 36.321098, 44.835926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101526, 0.351220, 0.930772,
		-0.090679, 0.928445, -0.360232,
		-0.990692, -0.120974, -0.062413,
		28.975765, 36.284805, 44.817204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464272, 36.435047, 44.977604>,  <29.669249, 36.369488, 44.860889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464272, 36.435047, 44.977604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760122, 36.702198, 44.944382>,  <30.937632, 36.862488, 44.924450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760122, 36.702198, 44.944382>,  <30.464272, 36.435047, 44.977604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760122, 36.702198, 44.944382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655357, -0.742797, -0.136963,
		-0.153168, 0.046870, -0.987088,
		0.739626, 0.667874, -0.083056,
		30.982010, 36.902561, 44.919464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034101, 36.416504, 44.330601>,  <30.464272, 36.435047, 44.977604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034101, 36.416504, 44.330601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189873, 36.514210, 44.685833>,  <31.283337, 36.572834, 44.898972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189873, 36.514210, 44.685833>,  <31.034101, 36.416504, 44.330601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189873, 36.514210, 44.685833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638171, -0.766802, -0.068939,
		0.664140, 0.593592, -0.454496,
		0.389430, 0.244261, 0.888077,
		31.306702, 36.587490, 44.952255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703985, 36.624165, 44.279816>,  <31.034101, 36.416504, 44.330601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703985, 36.624165, 44.279816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602781, 36.453247, 44.627010>,  <31.542059, 36.350697, 44.835327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602781, 36.453247, 44.627010>,  <31.703985, 36.624165, 44.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602781, 36.453247, 44.627010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666356, -0.727407, -0.163854,
		0.701394, 0.536932, 0.468775,
		-0.253012, -0.427298, 0.867987,
		31.526878, 36.325058, 44.887405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279575, 36.636593, 44.676510>,  <31.703985, 36.624165, 44.279816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279575, 36.636593, 44.676510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044601, 36.328709, 44.776489>,  <31.903618, 36.143978, 44.836479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044601, 36.328709, 44.776489>,  <32.279575, 36.636593, 44.676510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044601, 36.328709, 44.776489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795885, -0.605417, 0.006136,
		0.146601, 0.202536, 0.968239,
		-0.587431, -0.769707, 0.249950,
		31.868372, 36.097797, 44.851475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510654, 36.241806, 45.321510>,  <32.279575, 36.636593, 44.676510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510654, 36.241806, 45.321510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317837, 35.999115, 45.068680>,  <32.202148, 35.853500, 44.916981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317837, 35.999115, 45.068680>,  <32.510654, 36.241806, 45.321510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317837, 35.999115, 45.068680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810710, -0.582449, -0.059184,
		-0.332242, -0.540958, 0.772645,
		-0.482042, -0.606728, -0.632073,
		32.173225, 35.817097, 44.879059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692230, 35.553642, 45.521278>,  <32.510654, 36.241806, 45.321510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692230, 35.553642, 45.521278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629948, 35.581982, 45.127174>,  <32.592579, 35.598984, 44.890713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629948, 35.581982, 45.127174>,  <32.692230, 35.553642, 45.521278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629948, 35.581982, 45.127174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802631, -0.572328, -0.167998,
		-0.575794, -0.816959, 0.032252,
		-0.155706, 0.070846, -0.985260,
		32.583237, 35.603233, 44.831596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554100, 34.878384, 45.223286>,  <32.692230, 35.553642, 45.521278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554100, 34.878384, 45.223286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697437, 35.128059, 44.945587>,  <32.783440, 35.277866, 44.778969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697437, 35.128059, 44.945587>,  <32.554100, 34.878384, 45.223286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697437, 35.128059, 44.945587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676741, -0.685939, -0.267412,
		-0.643125, -0.373998, -0.668219,
		0.358346, 0.624190, -0.694244,
		32.804939, 35.315315, 44.737312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525749, 34.431408, 44.628349>,  <32.554100, 34.878384, 45.223286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525749, 34.431408, 44.628349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785870, 34.729412, 44.568928>,  <32.941940, 34.908215, 44.533276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785870, 34.729412, 44.568928>,  <32.525749, 34.431408, 44.628349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785870, 34.729412, 44.568928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655128, -0.648978, -0.386827,
		-0.384597, 0.154234, -0.910108,
		0.650302, 0.745010, -0.148552,
		32.980961, 34.952915, 44.524361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804195, 34.378242, 43.971680>,  <32.525749, 34.431408, 44.628349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804195, 34.378242, 43.971680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091866, 34.541206, 44.196819>,  <33.264469, 34.638985, 44.331902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091866, 34.541206, 44.196819>,  <32.804195, 34.378242, 43.971680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091866, 34.541206, 44.196819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672365, -0.612351, -0.415874,
		0.175232, 0.677529, -0.714317,
		0.719179, 0.407408, 0.562850,
		33.307621, 34.663429, 44.365673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402767, 34.715401, 43.536572>,  <32.804195, 34.378242, 43.971680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402767, 34.715401, 43.536572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581501, 34.575809, 43.866070>,  <33.688744, 34.492054, 44.063766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581501, 34.575809, 43.866070>,  <33.402767, 34.715401, 43.536572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581501, 34.575809, 43.866070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561662, -0.607258, -0.561938,
		0.696328, 0.713759, -0.075337,
		0.446838, -0.348979, 0.823742,
		33.715553, 34.471115, 44.113194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115540, 34.805916, 43.401402>,  <33.402767, 34.715401, 43.536572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115540, 34.805916, 43.401402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051022, 34.489346, 43.637241>,  <34.012310, 34.299404, 43.778744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051022, 34.489346, 43.637241>,  <34.115540, 34.805916, 43.401402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051022, 34.489346, 43.637241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686673, -0.519095, -0.508941,
		0.708848, 0.322773, 0.627178,
		-0.161293, -0.791428, 0.589599,
		34.002632, 34.251919, 43.814121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707222, 34.451534, 43.723213>,  <34.115540, 34.805916, 43.401402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707222, 34.451534, 43.723213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415760, 34.184425, 43.662369>,  <34.240883, 34.024162, 43.625862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415760, 34.184425, 43.662369>,  <34.707222, 34.451534, 43.723213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415760, 34.184425, 43.662369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576027, -0.477402, -0.663536,
		0.370471, -0.571112, 0.732518,
		-0.728659, -0.667771, -0.152113,
		34.197163, 33.984093, 43.616734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974556, 33.982071, 43.370892>,  <34.707222, 34.451534, 43.723213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974556, 33.982071, 43.370892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619698, 33.799694, 43.342327>,  <34.406784, 33.690269, 43.325188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619698, 33.799694, 43.342327>,  <34.974556, 33.982071, 43.370892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619698, 33.799694, 43.342327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354671, -0.574565, -0.737620,
		0.295278, -0.679702, 0.671429,
		-0.887141, -0.455939, -0.071414,
		34.353554, 33.662910, 43.320904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026920, 33.154125, 43.442142>,  <34.974556, 33.982071, 43.370892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026920, 33.154125, 43.442142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705482, 33.272564, 43.235622>,  <34.512619, 33.343628, 43.111710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705482, 33.272564, 43.235622>,  <35.026920, 33.154125, 43.442142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705482, 33.272564, 43.235622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203986, -0.677910, -0.706278,
		-0.559128, -0.672879, 0.484366,
		-0.803596, 0.296096, -0.516296,
		34.464405, 33.361393, 43.080734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600830, 32.531639, 43.354359>,  <35.026920, 33.154125, 43.442142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600830, 32.531639, 43.354359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497536, 32.776070, 43.055050>,  <34.435558, 32.922726, 42.875465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497536, 32.776070, 43.055050>,  <34.600830, 32.531639, 43.354359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497536, 32.776070, 43.055050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150868, -0.739528, -0.656001,
		-0.954230, -0.282291, 0.098780,
		-0.258234, 0.611073, -0.748268,
		34.420067, 32.959393, 42.830570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091877, 32.069778, 42.941860>,  <34.600830, 32.531639, 43.354359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091877, 32.069778, 42.941860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177578, 32.391327, 42.719910>,  <34.229000, 32.584255, 42.586739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177578, 32.391327, 42.719910>,  <34.091877, 32.069778, 42.941860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177578, 32.391327, 42.719910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222905, -0.512837, -0.829043,
		-0.951005, 0.301308, 0.069311,
		0.214252, 0.803873, -0.554873,
		34.241852, 32.632488, 42.553448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554878, 32.067196, 42.442513>,  <34.091877, 32.069778, 42.941860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554878, 32.067196, 42.442513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852867, 32.281063, 42.282936>,  <34.031658, 32.409382, 42.187191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852867, 32.281063, 42.282936>,  <33.554878, 32.067196, 42.442513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852867, 32.281063, 42.282936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055248, -0.546519, -0.835623,
		-0.664806, 0.644555, -0.377601,
		0.744970, 0.534665, -0.398939,
		34.076359, 32.441463, 42.163254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394173, 32.300617, 41.766026>,  <33.554878, 32.067196, 42.442513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394173, 32.300617, 41.766026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792000, 32.274250, 41.798252>,  <34.030697, 32.258430, 41.817589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792000, 32.274250, 41.798252>,  <33.394173, 32.300617, 41.766026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792000, 32.274250, 41.798252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036934, -0.500108, -0.865175,
		0.097322, 0.863450, -0.494956,
		0.994567, -0.065920, 0.080563,
		34.090370, 32.254475, 41.822422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653580, 32.580021, 41.143154>,  <33.394173, 32.300617, 41.766026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653580, 32.580021, 41.143154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972561, 32.381504, 41.280422>,  <34.163948, 32.262394, 41.362782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972561, 32.381504, 41.280422>,  <33.653580, 32.580021, 41.143154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972561, 32.381504, 41.280422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127935, -0.416734, -0.899981,
		0.589664, 0.761594, -0.268832,
		0.797451, -0.496293, 0.343167,
		34.211796, 32.232616, 41.383373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094280, 32.534096, 40.579590>,  <33.653580, 32.580021, 41.143154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094280, 32.534096, 40.579590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226402, 32.249329, 40.827484>,  <34.305676, 32.078468, 40.976219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226402, 32.249329, 40.827484>,  <34.094280, 32.534096, 40.579590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226402, 32.249329, 40.827484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104863, -0.680198, -0.725489,
		0.938031, 0.174645, -0.299327,
		0.330304, -0.711920, 0.619733,
		34.325493, 32.035751, 41.013405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589710, 32.267956, 40.225273>,  <34.094280, 32.534096, 40.579590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589710, 32.267956, 40.225273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461720, 32.004532, 40.497719>,  <34.384926, 31.846478, 40.661186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461720, 32.004532, 40.497719>,  <34.589710, 32.267956, 40.225273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461720, 32.004532, 40.497719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075396, -0.734330, -0.674592,
		0.944422, -0.164498, 0.284618,
		-0.319972, -0.658559, 0.681116,
		34.365726, 31.806965, 40.702053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003654, 31.607964, 40.088234>,  <34.589710, 32.267956, 40.225273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003654, 31.607964, 40.088234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710827, 31.488487, 40.333138>,  <34.535130, 31.416801, 40.480080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710827, 31.488487, 40.333138>,  <35.003654, 31.607964, 40.088234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710827, 31.488487, 40.333138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096215, -0.844407, -0.526991,
		0.674402, -0.444702, 0.589425,
		-0.732069, -0.298692, 0.612256,
		34.491207, 31.398880, 40.516815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147999, 30.853048, 40.204975>,  <35.003654, 31.607964, 40.088234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147999, 30.853048, 40.204975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761051, 30.914865, 40.285282>,  <34.528881, 30.951956, 40.333466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761051, 30.914865, 40.285282>,  <35.147999, 30.853048, 40.204975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761051, 30.914865, 40.285282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240269, -0.811010, -0.533417,
		0.080393, -0.564252, 0.821679,
		-0.967372, 0.154541, 0.200772,
		34.470840, 30.961227, 40.345512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858990, 30.188395, 40.464058>,  <35.147999, 30.853048, 40.204975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858990, 30.188395, 40.464058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553051, 30.411423, 40.334980>,  <34.369488, 30.545240, 40.257534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553051, 30.411423, 40.334980>,  <34.858990, 30.188395, 40.464058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553051, 30.411423, 40.334980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339998, -0.774833, -0.532950,
		-0.547188, -0.297909, 0.782199,
		-0.764844, 0.557570, -0.322691,
		34.323597, 30.578693, 40.238174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481224, 29.667578, 40.248913>,  <34.858990, 30.188395, 40.464058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481224, 29.667578, 40.248913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290127, 29.989416, 40.107841>,  <34.175468, 30.182520, 40.023197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290127, 29.989416, 40.107841>,  <34.481224, 29.667578, 40.248913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290127, 29.989416, 40.107841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425189, -0.563077, -0.708631,
		-0.768749, -0.188589, 0.611113,
		-0.477744, 0.804598, -0.352679,
		34.146805, 30.230795, 40.002037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856400, 29.342037, 40.100571>,  <34.481224, 29.667578, 40.248913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856400, 29.342037, 40.100571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914734, 29.672558, 39.882965>,  <33.949734, 29.870871, 39.752399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914734, 29.672558, 39.882965>,  <33.856400, 29.342037, 40.100571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914734, 29.672558, 39.882965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311723, -0.483505, -0.817956,
		-0.938914, 0.288873, 0.187063,
		0.145840, 0.826302, -0.544018,
		33.958485, 29.920448, 39.719761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271038, 29.390848, 39.790092>,  <33.856400, 29.342037, 40.100571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271038, 29.390848, 39.790092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516125, 29.614599, 39.566780>,  <33.663177, 29.748850, 39.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516125, 29.614599, 39.566780>,  <33.271038, 29.390848, 39.790092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516125, 29.614599, 39.566780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510854, -0.258655, -0.819833,
		-0.602997, 0.787525, 0.127278,
		0.612718, 0.559377, -0.558278,
		33.699940, 29.782412, 39.399296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753773, 29.790949, 39.414261>,  <33.271038, 29.390848, 39.790092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753773, 29.790949, 39.414261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113937, 29.772337, 39.241245>,  <33.330036, 29.761169, 39.137436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113937, 29.772337, 39.241245>,  <32.753773, 29.790949, 39.414261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113937, 29.772337, 39.241245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433391, -0.182188, -0.882599,
		-0.037737, 0.982162, -0.184209,
		0.900416, -0.046528, -0.432535,
		33.384064, 29.758379, 39.111485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614975, 30.219713, 38.885220>,  <32.753773, 29.790949, 39.414261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614975, 30.219713, 38.885220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913792, 29.971775, 38.789124>,  <33.093082, 29.823013, 38.731464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913792, 29.971775, 38.789124>,  <32.614975, 30.219713, 38.885220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913792, 29.971775, 38.789124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475160, -0.245137, -0.845062,
		0.464914, 0.745453, -0.477654,
		0.747045, -0.619844, -0.240242,
		33.137905, 29.785822, 38.717052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704815, 30.274601, 38.199532>,  <32.614975, 30.219713, 38.885220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704815, 30.274601, 38.199532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912037, 29.937990, 38.260796>,  <33.036369, 29.736025, 38.297554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912037, 29.937990, 38.260796>,  <32.704815, 30.274601, 38.199532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912037, 29.937990, 38.260796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415560, -0.404133, -0.814854,
		0.747619, 0.358486, -0.559066,
		0.518050, -0.841525, 0.153165,
		33.067451, 29.685534, 38.306744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133514, 30.174242, 37.633083>,  <32.704815, 30.274601, 38.199532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133514, 30.174242, 37.633083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076923, 29.809496, 37.787220>,  <33.042969, 29.590649, 37.879704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076923, 29.809496, 37.787220>,  <33.133514, 30.174242, 37.633083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076923, 29.809496, 37.787220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352479, -0.317344, -0.880370,
		0.925063, -0.260380, -0.276515,
		-0.141480, -0.911863, 0.385342,
		33.034481, 29.535936, 37.902824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513893, 29.686554, 37.233303>,  <33.133514, 30.174242, 37.633083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513893, 29.686554, 37.233303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227341, 29.482864, 37.424084>,  <33.055408, 29.360651, 37.538551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227341, 29.482864, 37.424084>,  <33.513893, 29.686554, 37.233303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227341, 29.482864, 37.424084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316294, -0.372289, -0.872559,
		0.621893, -0.775945, 0.105638,
		-0.716385, -0.509225, 0.476951,
		33.012424, 29.330097, 37.567169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439865, 29.129650, 36.795368>,  <33.513893, 29.686554, 37.233303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439865, 29.129650, 36.795368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106228, 29.094793, 37.013245>,  <32.906044, 29.073879, 37.143970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106228, 29.094793, 37.013245>,  <33.439865, 29.129650, 36.795368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106228, 29.094793, 37.013245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426895, -0.523382, -0.737450,
		0.349345, -0.847631, 0.399350,
		-0.834098, -0.087144, 0.544690,
		32.855999, 29.068651, 37.176651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184475, 28.371367, 36.821583>,  <33.439865, 29.129650, 36.795368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184475, 28.371367, 36.821583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853516, 28.574913, 36.916630>,  <32.654938, 28.697041, 36.973660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853516, 28.574913, 36.916630>,  <33.184475, 28.371367, 36.821583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853516, 28.574913, 36.916630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462813, -0.378132, -0.801761,
		-0.318139, -0.773350, 0.548377,
		-0.827401, 0.508867, 0.237618,
		32.605293, 28.727571, 36.987915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698257, 27.913090, 36.770206>,  <33.184475, 28.371367, 36.821583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698257, 27.913090, 36.770206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469795, 28.241425, 36.769234>,  <32.332718, 28.438425, 36.768650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469795, 28.241425, 36.769234>,  <32.698257, 27.913090, 36.770206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469795, 28.241425, 36.769234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570757, -0.399268, -0.717511,
		-0.589931, -0.408423, 0.696543,
		-0.571155, 0.820839, -0.002430,
		32.298450, 28.487677, 36.768505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033325, 27.735970, 36.937801>,  <32.698257, 27.913090, 36.770206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033325, 27.735970, 36.937801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967817, 28.088499, 36.760509>,  <31.928513, 28.300016, 36.654137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967817, 28.088499, 36.760509>,  <32.033325, 27.735970, 36.937801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967817, 28.088499, 36.760509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641795, -0.436395, -0.630602,
		-0.749185, 0.181187, 0.637097,
		-0.163770, 0.881324, -0.443225,
		31.918686, 28.352896, 36.627541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287064, 27.738731, 36.747162>,  <32.033325, 27.735970, 36.937801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287064, 27.738731, 36.747162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471151, 28.012499, 36.520969>,  <31.581604, 28.176760, 36.385254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471151, 28.012499, 36.520969>,  <31.287064, 27.738731, 36.747162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471151, 28.012499, 36.520969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628823, -0.198339, -0.751827,
		-0.626722, 0.701592, 0.339100,
		0.460219, 0.684420, -0.565480,
		31.609217, 28.217825, 36.351326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744690, 28.126453, 36.385288>,  <31.287064, 27.738731, 36.747162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744690, 28.126453, 36.385288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080685, 28.184309, 36.176098>,  <31.282282, 28.219023, 36.050583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080685, 28.184309, 36.176098>,  <30.744690, 28.126453, 36.385288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080685, 28.184309, 36.176098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526326, -0.017131, -0.850110,
		-0.131920, 0.989336, 0.061738,
		0.839987, 0.144641, -0.522974,
		31.332680, 28.227701, 36.019207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667515, 28.602743, 35.703987>,  <30.744690, 28.126453, 36.385288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667515, 28.602743, 35.703987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013401, 28.422903, 35.614429>,  <31.220932, 28.314999, 35.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013401, 28.422903, 35.614429>,  <30.667515, 28.602743, 35.703987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013401, 28.422903, 35.614429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284973, -0.072110, -0.955819,
		0.413591, 0.890315, -0.190478,
		0.864716, -0.449600, -0.223891,
		31.272816, 28.288023, 35.547260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932449, 28.923662, 35.037449>,  <30.667515, 28.602743, 35.703987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932449, 28.923662, 35.037449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116262, 28.569904, 35.070133>,  <31.226551, 28.357649, 35.089745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116262, 28.569904, 35.070133>,  <30.932449, 28.923662, 35.037449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116262, 28.569904, 35.070133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259747, -0.221798, -0.939860,
		0.849329, 0.410674, -0.331642,
		0.459534, -0.884394, 0.081708,
		31.254122, 28.304586, 35.094646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386415, 28.804670, 34.514664>,  <30.932449, 28.923662, 35.037449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386415, 28.804670, 34.514664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313820, 28.429733, 34.633629>,  <31.270262, 28.204771, 34.705006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313820, 28.429733, 34.633629>,  <31.386415, 28.804670, 34.514664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313820, 28.429733, 34.633629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028197, -0.307267, -0.951206,
		0.982989, -0.164247, 0.082196,
		-0.181489, -0.937342, 0.297408,
		31.259373, 28.148531, 34.722851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852793, 28.439939, 34.135036>,  <31.386415, 28.804670, 34.514664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852793, 28.439939, 34.135036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574301, 28.184229, 34.265629>,  <31.407206, 28.030802, 34.343987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574301, 28.184229, 34.265629>,  <31.852793, 28.439939, 34.135036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574301, 28.184229, 34.265629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068973, -0.393145, -0.916886,
		0.714499, -0.660881, 0.229626,
		-0.696229, -0.639276, 0.326485,
		31.365433, 27.992447, 34.363575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884668, 27.874275, 33.693207>,  <31.852793, 28.439939, 34.135036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884668, 27.874275, 33.693207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518137, 27.820723, 33.844158>,  <31.298218, 27.788591, 33.934731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518137, 27.820723, 33.844158>,  <31.884668, 27.874275, 33.693207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518137, 27.820723, 33.844158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297122, -0.404474, -0.864939,
		0.268440, -0.904697, 0.330852,
		-0.916329, -0.133881, 0.377382,
		31.243238, 27.780558, 33.957375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672884, 27.174313, 33.450779>,  <31.884668, 27.874275, 33.693207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672884, 27.174313, 33.450779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347961, 27.363781, 33.586895>,  <31.153008, 27.477461, 33.668564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347961, 27.363781, 33.586895>,  <31.672884, 27.174313, 33.450779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347961, 27.363781, 33.586895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509206, -0.291487, -0.809780,
		-0.284382, -0.831065, 0.477973,
		-0.812303, 0.473674, 0.340290,
		31.104269, 27.505882, 33.688980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158022, 26.654181, 33.476948>,  <31.672884, 27.174313, 33.450779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158022, 26.654181, 33.476948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009687, 27.024755, 33.451042>,  <30.920687, 27.247101, 33.435501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009687, 27.024755, 33.451042>,  <31.158022, 26.654181, 33.476948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009687, 27.024755, 33.451042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379973, -0.214985, -0.899668,
		-0.847408, -0.309023, 0.431746,
		-0.370837, 0.926437, -0.064760,
		30.898436, 27.302687, 33.431614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388065, 26.605137, 33.349648>,  <31.158022, 26.654181, 33.476948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388065, 26.605137, 33.349648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476484, 26.968842, 33.208580>,  <30.529535, 27.187065, 33.123940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476484, 26.968842, 33.208580>,  <30.388065, 26.605137, 33.349648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476484, 26.968842, 33.208580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680575, -0.115195, -0.723567,
		-0.698539, 0.399961, 0.593358,
		0.221047, 0.909264, -0.352672,
		30.542799, 27.241621, 33.102779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744473, 26.743288, 33.031639>,  <30.388065, 26.605137, 33.349648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744473, 26.743288, 33.031639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992517, 27.021032, 32.885582>,  <30.141344, 27.187679, 32.797947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992517, 27.021032, 32.885582>,  <29.744473, 26.743288, 33.031639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992517, 27.021032, 32.885582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523690, 0.019825, -0.851678,
		-0.584132, 0.719355, 0.375923,
		0.620112, 0.694359, -0.365139,
		30.178551, 27.229340, 32.776039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348789, 27.234419, 32.698795>,  <29.744473, 26.743288, 33.031639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348789, 27.234419, 32.698795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712679, 27.305016, 32.548462>,  <29.931013, 27.347374, 32.458263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712679, 27.305016, 32.548462>,  <29.348789, 27.234419, 32.698795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712679, 27.305016, 32.548462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379786, -0.012144, -0.924995,
		-0.167819, 0.984227, 0.055982,
		0.909725, 0.176493, -0.375833,
		29.985596, 27.357964, 32.435711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398014, 27.890678, 32.281532>,  <29.348789, 27.234419, 32.698795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398014, 27.890678, 32.281532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673136, 27.632656, 32.148369>,  <29.838209, 27.477842, 32.068470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673136, 27.632656, 32.148369>,  <29.398014, 27.890678, 32.281532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673136, 27.632656, 32.148369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471365, -0.048115, -0.880625,
		0.552034, 0.762619, -0.337151,
		0.687804, -0.645056, -0.332911,
		29.879477, 27.439140, 32.048496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581865, 28.191019, 31.629593>,  <29.398014, 27.890678, 32.281532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581865, 28.191019, 31.629593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698065, 27.808514, 31.643291>,  <29.767784, 27.579010, 31.651510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698065, 27.808514, 31.643291>,  <29.581865, 28.191019, 31.629593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698065, 27.808514, 31.643291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357649, -0.141703, -0.923043,
		0.887524, 0.255895, -0.383170,
		0.290498, -0.956262, 0.034244,
		29.785213, 27.521635, 31.653564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098772, 28.075771, 31.095026>,  <29.581865, 28.191019, 31.629593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098772, 28.075771, 31.095026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904331, 27.737217, 31.182053>,  <29.787666, 27.534084, 31.234268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904331, 27.737217, 31.182053>,  <30.098772, 28.075771, 31.095026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904331, 27.737217, 31.182053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156517, -0.160617, -0.974528,
		0.859771, -0.507775, -0.054397,
		-0.486104, -0.846385, 0.217569,
		29.758499, 27.483301, 31.247324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055096, 27.774294, 30.442579>,  <30.098772, 28.075771, 31.095026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055096, 27.774294, 30.442579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794111, 27.565256, 30.662102>,  <29.637520, 27.439833, 30.793816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794111, 27.565256, 30.662102>,  <30.055096, 27.774294, 30.442579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794111, 27.565256, 30.662102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490349, -0.261022, -0.831520,
		0.577798, -0.811642, -0.085947,
		-0.652462, -0.522595, 0.548806,
		29.598373, 27.408478, 30.826744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994205, 27.232874, 30.038942>,  <30.055096, 27.774294, 30.442579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994205, 27.232874, 30.038942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664499, 27.226149, 30.265324>,  <29.466675, 27.222113, 30.401152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664499, 27.226149, 30.265324>,  <29.994205, 27.232874, 30.038942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664499, 27.226149, 30.265324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550075, -0.213093, -0.807471,
		0.134178, -0.976887, 0.166396,
		-0.824266, -0.016814, 0.565953,
		29.417219, 27.221104, 30.435110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556601, 26.669592, 29.762274>,  <29.994205, 27.232874, 30.038942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556601, 26.669592, 29.762274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326113, 26.927317, 29.963406>,  <29.187820, 27.081951, 30.084084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326113, 26.927317, 29.963406>,  <29.556601, 26.669592, 29.762274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326113, 26.927317, 29.963406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686892, -0.048387, -0.725147,
		-0.442889, -0.763232, 0.470453,
		-0.576219, 0.644310, 0.502828,
		29.153248, 27.120609, 30.114254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919825, 26.353046, 29.692802>,  <29.556601, 26.669592, 29.762274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919825, 26.353046, 29.692802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834227, 26.724091, 29.815273>,  <28.782867, 26.946716, 29.888756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834227, 26.724091, 29.815273>,  <28.919825, 26.353046, 29.692802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834227, 26.724091, 29.815273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709529, 0.067827, -0.701404,
		-0.671397, -0.367340, 0.643652,
		-0.213996, 0.927611, 0.306177,
		28.770027, 27.002373, 29.907127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164398, 26.422960, 29.888000>,  <28.919825, 26.353046, 29.692802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164398, 26.422960, 29.888000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321718, 26.768841, 29.763031>,  <28.416111, 26.976368, 29.688049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321718, 26.768841, 29.763031>,  <28.164398, 26.422960, 29.888000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321718, 26.768841, 29.763031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746659, 0.102116, -0.657323,
		-0.536484, 0.491799, 0.685798,
		0.393301, 0.864700, -0.312422,
		28.439709, 27.028252, 29.669304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686846, 26.707201, 29.441208>,  <28.164398, 26.422960, 29.888000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686846, 26.707201, 29.441208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991879, 26.953173, 29.360878>,  <28.174898, 27.100756, 29.312679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991879, 26.953173, 29.360878>,  <27.686846, 26.707201, 29.441208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991879, 26.953173, 29.360878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454297, 0.288079, -0.842985,
		-0.460522, 0.734081, 0.499044,
		0.762584, 0.614927, -0.200824,
		28.220654, 27.137651, 29.300631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657944, 27.519932, 29.311342>,  <27.686846, 26.707201, 29.441208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657944, 27.519932, 29.311342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931982, 27.398018, 29.046692>,  <28.096405, 27.324869, 28.887901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931982, 27.398018, 29.046692>,  <27.657944, 27.519932, 29.311342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931982, 27.398018, 29.046692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449961, 0.537214, -0.713398,
		0.572868, 0.786452, 0.230902,
		0.685097, -0.304786, -0.661625,
		28.137510, 27.306581, 28.848204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918789, 28.073975, 28.969622>,  <27.657944, 27.519932, 29.311342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918789, 28.073975, 28.969622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953001, 27.751665, 28.735216>,  <27.973528, 27.558279, 28.594572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953001, 27.751665, 28.735216>,  <27.918789, 28.073975, 28.969622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953001, 27.751665, 28.735216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530888, 0.460862, -0.711171,
		0.843115, 0.371933, -0.388359,
		0.085528, -0.805774, -0.586015,
		27.978659, 27.509933, 28.559412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393606, 28.243641, 28.300747>,  <27.918789, 28.073975, 28.969622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393606, 28.243641, 28.300747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089396, 27.989479, 28.247290>,  <27.906870, 27.836983, 28.215216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089396, 27.989479, 28.247290>,  <28.393606, 28.243641, 28.300747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089396, 27.989479, 28.247290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452404, 0.666191, -0.592891,
		0.465757, -0.390449, -0.794116,
		-0.760526, -0.635405, -0.133642,
		27.861238, 27.798857, 28.207197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280600, 28.061155, 27.559669>,  <28.393606, 28.243641, 28.300747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280600, 28.061155, 27.559669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975174, 28.070572, 27.817791>,  <27.791920, 28.076221, 27.972664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975174, 28.070572, 27.817791>,  <28.280600, 28.061155, 27.559669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975174, 28.070572, 27.817791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464791, 0.673695, -0.574548,
		-0.448265, -0.738635, -0.503465,
		-0.763563, 0.023544, 0.645304,
		27.746105, 28.077635, 28.011383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237701, 28.460138, 26.891283>,  <28.280600, 28.061155, 27.559669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237701, 28.460138, 26.891283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295385, 28.855335, 26.913467>,  <28.329996, 29.092453, 26.926779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295385, 28.855335, 26.913467>,  <28.237701, 28.460138, 26.891283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295385, 28.855335, 26.913467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492625, -0.120288, 0.861888,
		0.858210, -0.096969, -0.504056,
		0.144208, 0.987992, 0.055463,
		28.338648, 29.151733, 26.930107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865801, 28.449259, 27.339785>,  <28.237701, 28.460138, 26.891283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865801, 28.449259, 27.339785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695728, 28.809328, 27.377544>,  <28.593685, 29.025370, 27.400200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695728, 28.809328, 27.377544>,  <28.865801, 28.449259, 27.339785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695728, 28.809328, 27.377544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431155, 0.109731, 0.895580,
		0.795817, 0.421486, -0.434769,
		-0.425183, 0.900171, 0.094400,
		28.568174, 29.079380, 27.405865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310308, 29.025957, 27.680338>,  <28.865801, 28.449259, 27.339785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310308, 29.025957, 27.680338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931881, 29.150810, 27.715042>,  <28.704824, 29.225721, 27.735865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931881, 29.150810, 27.715042>,  <29.310308, 29.025957, 27.680338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931881, 29.150810, 27.715042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162963, 0.227058, 0.960150,
		0.279994, 0.922506, -0.265679,
		-0.946069, 0.312132, 0.086759,
		28.648060, 29.244450, 27.741070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234373, 29.732302, 27.944395>,  <29.310308, 29.025957, 27.680338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234373, 29.732302, 27.944395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917738, 29.516859, 28.059835>,  <28.727757, 29.387594, 28.129101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917738, 29.516859, 28.059835>,  <29.234373, 29.732302, 27.944395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917738, 29.516859, 28.059835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104589, 0.345907, 0.932421,
		-0.602036, 0.768279, -0.217484,
		-0.791589, -0.538605, 0.288602,
		28.680262, 29.355278, 28.146416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790146, 30.155836, 28.329205>,  <29.234373, 29.732302, 27.944395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790146, 30.155836, 28.329205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747572, 29.786701, 28.477280>,  <28.722027, 29.565220, 28.566124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747572, 29.786701, 28.477280>,  <28.790146, 30.155836, 28.329205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747572, 29.786701, 28.477280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005325, 0.371768, 0.928311,
		-0.994305, 0.100777, -0.034656,
		-0.106436, -0.922840, 0.370187,
		28.715641, 29.509850, 28.588335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160879, 30.120316, 28.743074>,  <28.790146, 30.155836, 28.329205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160879, 30.120316, 28.743074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409782, 29.847158, 28.896151>,  <28.559124, 29.683264, 28.987995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409782, 29.847158, 28.896151>,  <28.160879, 30.120316, 28.743074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409782, 29.847158, 28.896151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032976, 0.465564, 0.884399,
		-0.782116, -0.562946, 0.267183,
		0.622260, -0.682892, 0.382689,
		28.596460, 29.642290, 29.010958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901239, 29.967178, 29.464022>,  <28.160879, 30.120316, 28.743074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901239, 29.967178, 29.464022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273464, 29.824915, 29.429249>,  <28.496799, 29.739557, 29.408386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273464, 29.824915, 29.429249>,  <27.901239, 29.967178, 29.464022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273464, 29.824915, 29.429249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264840, 0.489933, 0.830557,
		-0.252806, -0.795909, 0.550107,
		0.930564, -0.355661, -0.086931,
		28.552633, 29.718216, 29.403170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047848, 30.017874, 30.202909>,  <27.901239, 29.967178, 29.464022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047848, 30.017874, 30.202909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384748, 29.971193, 29.992390>,  <28.586889, 29.943184, 29.866077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384748, 29.971193, 29.992390>,  <28.047848, 30.017874, 30.202909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384748, 29.971193, 29.992390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508858, 0.494429, 0.704701,
		0.177977, -0.861348, 0.475819,
		0.842251, -0.116703, -0.526301,
		28.637424, 29.936182, 29.834499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581301, 29.594061, 30.604071>,  <28.047848, 30.017874, 30.202909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581301, 29.594061, 30.604071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770443, 29.821522, 30.334837>,  <28.883928, 29.957998, 30.173296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770443, 29.821522, 30.334837>,  <28.581301, 29.594061, 30.604071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770443, 29.821522, 30.334837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509009, 0.447249, 0.735445,
		0.719249, -0.690364, -0.077966,
		0.472854, 0.568653, -0.673084,
		28.912300, 29.992117, 30.132912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279085, 29.665211, 30.787416>,  <28.581301, 29.594061, 30.604071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279085, 29.665211, 30.787416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252155, 29.978662, 30.540390>,  <29.235998, 30.166735, 30.392174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252155, 29.978662, 30.540390>,  <29.279085, 29.665211, 30.787416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252155, 29.978662, 30.540390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532018, 0.551828, 0.642216,
		0.844052, -0.285321, -0.454057,
		-0.067324, 0.783631, -0.617568,
		29.231958, 30.213751, 30.355120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953228, 30.008575, 30.798965>,  <29.279085, 29.665211, 30.787416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953228, 30.008575, 30.798965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696341, 30.275036, 30.647284>,  <29.542208, 30.434912, 30.556274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696341, 30.275036, 30.647284>,  <29.953228, 30.008575, 30.798965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696341, 30.275036, 30.647284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427580, 0.721922, 0.544062,
		0.636185, 0.187266, -0.748465,
		-0.642218, 0.666153, -0.379204,
		29.503675, 30.474882, 30.533522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355293, 30.574615, 30.576141>,  <29.953228, 30.008575, 30.798965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355293, 30.574615, 30.576141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992609, 30.733950, 30.631582>,  <29.775000, 30.829550, 30.664846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992609, 30.733950, 30.631582>,  <30.355293, 30.574615, 30.576141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992609, 30.733950, 30.631582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414543, 0.781179, 0.466813,
		0.077675, 0.480719, -0.873427,
		-0.906709, 0.398333, 0.138600,
		29.720596, 30.853449, 30.673162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411606, 31.258505, 30.329666>,  <30.355293, 30.574615, 30.576141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411606, 31.258505, 30.329666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104347, 31.251539, 30.585682>,  <29.919992, 31.247360, 30.739290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104347, 31.251539, 30.585682>,  <30.411606, 31.258505, 30.329666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104347, 31.251539, 30.585682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403043, 0.763576, 0.504488,
		-0.497502, 0.645483, -0.579520,
		-0.768146, -0.017412, 0.640038,
		29.873903, 31.246315, 30.777693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210072, 31.907936, 30.345661>,  <30.411606, 31.258505, 30.329666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210072, 31.907936, 30.345661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071766, 31.734350, 30.678436>,  <29.988783, 31.630199, 30.878101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071766, 31.734350, 30.678436>,  <30.210072, 31.907936, 30.345661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071766, 31.734350, 30.678436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289931, 0.793826, 0.534584,
		-0.892405, 0.426045, -0.148657,
		-0.345765, -0.433965, 0.831938,
		29.968037, 31.604160, 30.928019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908358, 32.409977, 30.663443>,  <30.210072, 31.907936, 30.345661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908358, 32.409977, 30.663443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969564, 32.133766, 30.946218>,  <30.006289, 31.968040, 31.115883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969564, 32.133766, 30.946218>,  <29.908358, 32.409977, 30.663443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969564, 32.133766, 30.946218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120935, 0.723069, 0.680107,
		-0.980796, -0.018573, 0.194149,
		0.153015, -0.690526, 0.706938,
		30.015469, 31.926609, 31.158300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625217, 32.646603, 31.302885>,  <29.908358, 32.409977, 30.663443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625217, 32.646603, 31.302885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816216, 32.345310, 31.483831>,  <29.930815, 32.164536, 31.592400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816216, 32.345310, 31.483831>,  <29.625217, 32.646603, 31.302885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816216, 32.345310, 31.483831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078779, 0.476074, 0.875869,
		-0.875095, -0.453861, 0.167985,
		0.477496, -0.753235, 0.452365,
		29.959465, 32.119339, 31.619541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330070, 32.572144, 31.916735>,  <29.625217, 32.646603, 31.302885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330070, 32.572144, 31.916735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690884, 32.408791, 31.972672>,  <29.907372, 32.310780, 32.006233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690884, 32.408791, 31.972672>,  <29.330070, 32.572144, 31.916735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690884, 32.408791, 31.972672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083439, 0.482809, 0.871742,
		-0.423525, -0.774672, 0.469585,
		0.902034, -0.408386, 0.139843,
		29.961494, 32.286274, 32.014626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265251, 32.305058, 32.557800>,  <29.330070, 32.572144, 31.916735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265251, 32.305058, 32.557800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652130, 32.358784, 32.471558>,  <29.884258, 32.391018, 32.419811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652130, 32.358784, 32.471558>,  <29.265251, 32.305058, 32.557800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652130, 32.358784, 32.471558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115442, 0.523649, 0.844076,
		0.226274, -0.841279, 0.490967,
		0.967198, 0.134315, -0.215607,
		29.942289, 32.399078, 32.406876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698582, 32.071278, 33.124283>,  <29.265251, 32.305058, 32.557800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698582, 32.071278, 33.124283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938835, 32.319256, 32.922333>,  <30.082987, 32.468044, 32.801163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938835, 32.319256, 32.922333>,  <29.698582, 32.071278, 33.124283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938835, 32.319256, 32.922333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275025, 0.432734, 0.858547,
		0.750734, -0.654526, 0.089412,
		0.600633, 0.619949, -0.504879,
		30.119024, 32.505241, 32.770870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307034, 31.987768, 33.396675>,  <29.698582, 32.071278, 33.124283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307034, 31.987768, 33.396675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354534, 32.341045, 33.215187>,  <30.383036, 32.553013, 33.106293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354534, 32.341045, 33.215187>,  <30.307034, 31.987768, 33.396675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354534, 32.341045, 33.215187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410494, 0.372408, 0.832350,
		0.904097, -0.285095, -0.318322,
		0.118753, 0.883195, -0.453723,
		30.390160, 32.606003, 33.079071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978031, 32.116051, 33.457172>,  <30.307034, 31.987768, 33.396675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978031, 32.116051, 33.457172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804239, 32.468945, 33.384621>,  <30.699965, 32.680679, 33.341087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804239, 32.468945, 33.384621>,  <30.978031, 32.116051, 33.457172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804239, 32.468945, 33.384621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438032, 0.382935, 0.813319,
		0.786992, 0.273919, -0.552822,
		-0.434478, 0.882230, -0.181381,
		30.673895, 32.733612, 33.330208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425337, 32.720573, 33.652515>,  <30.978031, 32.116051, 33.457172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425337, 32.720573, 33.652515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063356, 32.890690, 33.658058>,  <30.846169, 32.992760, 33.661385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063356, 32.890690, 33.658058>,  <31.425337, 32.720573, 33.652515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063356, 32.890690, 33.658058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245006, 0.494140, 0.834145,
		0.347908, 0.758255, -0.551371,
		-0.904949, 0.425294, 0.013862,
		30.791872, 33.018280, 33.662216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506895, 33.494724, 33.831150>,  <31.425337, 32.720573, 33.652515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506895, 33.494724, 33.831150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135000, 33.387466, 33.932095>,  <30.911863, 33.323112, 33.992661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135000, 33.387466, 33.932095>,  <31.506895, 33.494724, 33.831150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135000, 33.387466, 33.932095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124562, 0.415926, 0.900827,
		-0.346514, 0.868969, -0.353302,
		-0.929738, -0.268141, 0.252365,
		30.856079, 33.307026, 34.007805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195627, 34.056725, 34.235863>,  <31.506895, 33.494724, 33.831150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195627, 34.056725, 34.235863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964888, 33.740589, 34.318436>,  <30.826445, 33.550907, 34.367977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964888, 33.740589, 34.318436>,  <31.195627, 34.056725, 34.235863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964888, 33.740589, 34.318436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041358, 0.224131, 0.973681,
		-0.815803, 0.570204, -0.096603,
		-0.576849, -0.790337, 0.206429,
		30.791834, 33.503487, 34.380363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604986, 34.307915, 34.688522>,  <31.195627, 34.056725, 34.235863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604986, 34.307915, 34.688522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631767, 33.911903, 34.738110>,  <30.647835, 33.674297, 34.767860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631767, 33.911903, 34.738110>,  <30.604986, 34.307915, 34.688522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631767, 33.911903, 34.738110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108913, 0.116254, 0.987230,
		-0.991794, -0.079597, -0.100043,
		0.066950, -0.990025, 0.123969,
		30.651852, 33.614895, 34.775299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254023, 34.275169, 35.261257>,  <30.604986, 34.307915, 34.688522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254023, 34.275169, 35.261257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413460, 33.910084, 35.225300>,  <30.509123, 33.691032, 35.203724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413460, 33.910084, 35.225300>,  <30.254023, 34.275169, 35.261257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413460, 33.910084, 35.225300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064009, -0.070097, 0.995485,
		-0.914892, -0.402547, 0.030481,
		0.398593, -0.912711, -0.089898,
		30.533037, 33.636269, 35.198330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816526, 33.857956, 35.617832>,  <30.254023, 34.275169, 35.261257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816526, 33.857956, 35.617832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172056, 33.674988, 35.606762>,  <30.385374, 33.565208, 35.600121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172056, 33.674988, 35.606762>,  <29.816526, 33.857956, 35.617832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172056, 33.674988, 35.606762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001165, -0.058140, 0.998308,
		-0.458251, -0.887350, -0.051143,
		0.888822, -0.457416, -0.027677,
		30.438704, 33.537762, 35.598457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814960, 33.341419, 36.230591>,  <29.816526, 33.857956, 35.617832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814960, 33.341419, 36.230591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202599, 33.385597, 36.142353>,  <30.435181, 33.412102, 36.089413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202599, 33.385597, 36.142353>,  <29.814960, 33.341419, 36.230591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202599, 33.385597, 36.142353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228070, -0.060264, 0.971778,
		0.094031, -0.992054, -0.083590,
		0.969093, 0.110442, -0.220591,
		30.493326, 33.418728, 36.076176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210400, 32.638462, 36.552021>,  <29.814960, 33.341419, 36.230591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210400, 32.638462, 36.552021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474394, 32.931293, 36.484520>,  <30.632790, 33.106995, 36.444019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474394, 32.931293, 36.484520>,  <30.210400, 32.638462, 36.552021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474394, 32.931293, 36.484520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312261, -0.063008, 0.947905,
		0.683312, -0.678295, -0.270184,
		0.659983, 0.732083, -0.168751,
		30.672388, 33.150917, 36.433895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854946, 32.345097, 36.609234>,  <30.210400, 32.638462, 36.552021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854946, 32.345097, 36.609234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904819, 32.738163, 36.664120>,  <30.934744, 32.974003, 36.697052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904819, 32.738163, 36.664120>,  <30.854946, 32.345097, 36.609234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904819, 32.738163, 36.664120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496160, -0.181509, 0.849047,
		0.859232, -0.037785, -0.510189,
		0.124685, 0.982663, 0.137211,
		30.942225, 33.032963, 36.705284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482830, 32.411873, 37.040924>,  <30.854946, 32.345097, 36.609234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482830, 32.411873, 37.040924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335634, 32.782372, 37.073559>,  <31.247316, 33.004669, 37.093140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335634, 32.782372, 37.073559>,  <31.482830, 32.411873, 37.040924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335634, 32.782372, 37.073559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535730, 0.139490, 0.832788,
		0.759985, 0.350163, -0.547548,
		-0.367988, 0.926244, 0.081583,
		31.225237, 33.060246, 37.098034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038391, 32.868576, 37.119694>,  <31.482830, 32.411873, 37.040924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038391, 32.868576, 37.119694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725922, 33.041386, 37.299965>,  <31.538439, 33.145073, 37.408127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725922, 33.041386, 37.299965>,  <32.038391, 32.868576, 37.119694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725922, 33.041386, 37.299965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584771, 0.253534, 0.770560,
		0.218640, 0.865490, -0.450693,
		-0.781178, 0.432028, 0.450681,
		31.491568, 33.170994, 37.435169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304237, 33.365536, 37.429832>,  <32.038391, 32.868576, 37.119694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304237, 33.365536, 37.429832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947018, 33.388950, 37.608288>,  <31.732685, 33.403000, 37.715359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947018, 33.388950, 37.608288>,  <32.304237, 33.365536, 37.429832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947018, 33.388950, 37.608288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445517, 0.254015, 0.858482,
		-0.063072, 0.965427, -0.252927,
		-0.893049, 0.058537, 0.446135,
		31.679104, 33.406513, 37.742130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231487, 34.002930, 37.841187>,  <32.304237, 33.365536, 37.429832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231487, 34.002930, 37.841187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938574, 33.785297, 38.005009>,  <31.762825, 33.654716, 38.103302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938574, 33.785297, 38.005009>,  <32.231487, 34.002930, 37.841187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938574, 33.785297, 38.005009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179746, 0.425654, 0.886854,
		-0.656849, 0.723045, -0.213903,
		-0.732284, -0.544081, 0.409555,
		31.718889, 33.622074, 38.127876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923693, 34.507164, 38.294487>,  <32.231487, 34.002930, 37.841187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923693, 34.507164, 38.294487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819929, 34.138344, 38.409397>,  <31.757671, 33.917049, 38.478344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819929, 34.138344, 38.409397>,  <31.923693, 34.507164, 38.294487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819929, 34.138344, 38.409397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294163, 0.207886, 0.932873,
		-0.919878, 0.326501, 0.217306,
		-0.259409, -0.922052, 0.287274,
		31.742105, 33.861729, 38.495579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491762, 34.643700, 38.863945>,  <31.923693, 34.507164, 38.294487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491762, 34.643700, 38.863945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621799, 34.266079, 38.886162>,  <31.699821, 34.039509, 38.899490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621799, 34.266079, 38.886162>,  <31.491762, 34.643700, 38.863945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621799, 34.266079, 38.886162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394562, 0.188775, 0.899269,
		-0.859439, -0.270432, 0.433856,
		0.325092, -0.944050, 0.055539,
		31.719328, 33.982864, 38.902824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176840, 34.381821, 39.484997>,  <31.491762, 34.643700, 38.863945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176840, 34.381821, 39.484997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499512, 34.158577, 39.407249>,  <31.693115, 34.024632, 39.360603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499512, 34.158577, 39.407249>,  <31.176840, 34.381821, 39.484997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499512, 34.158577, 39.407249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244247, 0.015364, 0.969591,
		-0.538155, -0.829623, 0.148711,
		0.806681, -0.558112, -0.194364,
		31.741516, 33.991142, 39.348942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173111, 33.825851, 40.031429>,  <31.176840, 34.381821, 39.484997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173111, 33.825851, 40.031429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549139, 33.825603, 39.895035>,  <31.774755, 33.825455, 39.813198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549139, 33.825603, 39.895035>,  <31.173111, 33.825851, 40.031429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549139, 33.825603, 39.895035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338760, -0.112345, 0.934141,
		-0.038883, -0.993669, -0.105404,
		0.940069, -0.000616, -0.340984,
		31.831160, 33.825417, 39.792740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590622, 33.273727, 40.343891>,  <31.173111, 33.825851, 40.031429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590622, 33.273727, 40.343891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873030, 33.526642, 40.216297>,  <32.042473, 33.678391, 40.139740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873030, 33.526642, 40.216297>,  <31.590622, 33.273727, 40.343891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873030, 33.526642, 40.216297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365798, 0.060095, 0.928752,
		0.606407, -0.772400, -0.188861,
		0.706019, 0.632288, -0.318984,
		32.084835, 33.716328, 40.120602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211693, 33.135300, 40.761250>,  <31.590622, 33.273727, 40.343891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211693, 33.135300, 40.761250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307022, 33.493908, 40.611874>,  <32.364220, 33.709072, 40.522247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307022, 33.493908, 40.611874>,  <32.211693, 33.135300, 40.761250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307022, 33.493908, 40.611874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457770, 0.235432, 0.857332,
		0.856534, -0.375270, -0.354291,
		0.238320, 0.896518, -0.373443,
		32.378517, 33.762863, 40.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882118, 33.240719, 40.993206>,  <32.211693, 33.135300, 40.761250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882118, 33.240719, 40.993206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756207, 33.608879, 40.900444>,  <32.680660, 33.829777, 40.844788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756207, 33.608879, 40.900444>,  <32.882118, 33.240719, 40.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756207, 33.608879, 40.900444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402292, 0.350667, 0.845691,
		0.859696, 0.172908, -0.480651,
		-0.314775, 0.920400, -0.231907,
		32.661774, 33.884998, 40.830872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361240, 33.662163, 41.215332>,  <32.882118, 33.240719, 40.993206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361240, 33.662163, 41.215332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049736, 33.909702, 41.174236>,  <32.862835, 34.058228, 41.149578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049736, 33.909702, 41.174236>,  <33.361240, 33.662163, 41.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049736, 33.909702, 41.174236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293391, 0.504060, 0.812309,
		0.554484, 0.602452, -0.574107,
		-0.778761, 0.618850, -0.102740,
		32.816109, 34.095356, 41.143414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618675, 34.332706, 41.232147>,  <33.361240, 33.662163, 41.215332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618675, 34.332706, 41.232147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232090, 34.355396, 41.332336>,  <33.000141, 34.369011, 41.392452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232090, 34.355396, 41.332336>,  <33.618675, 34.332706, 41.232147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232090, 34.355396, 41.332336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243432, 0.513123, 0.823071,
		-0.081833, 0.856438, -0.509722,
		-0.966460, 0.056728, 0.250475,
		32.942154, 34.372414, 41.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571747, 35.000114, 41.512035>,  <33.618675, 34.332706, 41.232147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571747, 35.000114, 41.512035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255859, 34.791279, 41.640884>,  <33.066326, 34.665977, 41.718193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255859, 34.791279, 41.640884>,  <33.571747, 35.000114, 41.512035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255859, 34.791279, 41.640884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177072, 0.308751, 0.934515,
		-0.587358, 0.795044, -0.151379,
		-0.789719, -0.522090, 0.322127,
		33.018944, 34.634651, 41.737522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163109, 35.287617, 41.088802>,  <33.571747, 35.000114, 41.512035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163109, 35.287617, 41.088802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528431, 35.410492, 40.981834>,  <34.747623, 35.484219, 40.917656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528431, 35.410492, 40.981834>,  <34.163109, 35.287617, 41.088802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528431, 35.410492, 40.981834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255796, -0.078294, -0.963555,
		-0.316930, 0.948422, 0.007071,
		0.913304, 0.307189, -0.267416,
		34.802422, 35.502647, 40.901611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058281, 35.813232, 40.643646>,  <34.163109, 35.287617, 41.088802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058281, 35.813232, 40.643646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421833, 35.664581, 40.567924>,  <34.639965, 35.575390, 40.522491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421833, 35.664581, 40.567924>,  <34.058281, 35.813232, 40.643646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421833, 35.664581, 40.567924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219931, -0.041401, -0.974637,
		0.354367, 0.927458, -0.119361,
		0.908876, -0.371630, -0.189305,
		34.694496, 35.553093, 40.511131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345001, 36.223690, 40.081760>,  <34.058281, 35.813232, 40.643646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345001, 36.223690, 40.081760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553284, 35.882286, 40.089588>,  <34.678253, 35.677444, 40.094284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553284, 35.882286, 40.089588>,  <34.345001, 36.223690, 40.081760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553284, 35.882286, 40.089588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074357, -0.068173, -0.994899,
		0.850489, 0.516598, -0.098963,
		0.520710, -0.853509, 0.019567,
		34.709496, 35.626232, 40.095459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853786, 36.355618, 39.597477>,  <34.345001, 36.223690, 40.081760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853786, 36.355618, 39.597477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806675, 35.959423, 39.625942>,  <34.778408, 35.721706, 39.643021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806675, 35.959423, 39.625942>,  <34.853786, 36.355618, 39.597477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806675, 35.959423, 39.625942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053181, -0.065271, -0.996450,
		0.991615, -0.121143, -0.044987,
		-0.117777, -0.990487, 0.071166,
		34.771343, 35.662277, 39.647293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329567, 36.122959, 39.076153>,  <34.853786, 36.355618, 39.597477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329567, 36.122959, 39.076153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034096, 35.862602, 39.146240>,  <34.856815, 35.706387, 39.188293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034096, 35.862602, 39.146240>,  <35.329567, 36.122959, 39.076153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034096, 35.862602, 39.146240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217237, -0.016194, -0.975985,
		0.638098, -0.758998, -0.129435,
		-0.738674, -0.650892, 0.175216,
		34.812492, 35.667336, 39.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399620, 35.632309, 38.469486>,  <35.329567, 36.122959, 39.076153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399620, 35.632309, 38.469486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037685, 35.573826, 38.629429>,  <34.820522, 35.538734, 38.725395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037685, 35.573826, 38.629429>,  <35.399620, 35.632309, 38.469486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037685, 35.573826, 38.629429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380414, -0.144082, -0.913524,
		0.191176, -0.978705, 0.074752,
		-0.904841, -0.146207, 0.399859,
		34.766232, 35.529964, 38.749386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184921, 35.054173, 38.141361>,  <35.399620, 35.632309, 38.469486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184921, 35.054173, 38.141361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852390, 35.213459, 38.296444>,  <34.652870, 35.309029, 38.389492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852390, 35.213459, 38.296444>,  <35.184921, 35.054173, 38.141361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852390, 35.213459, 38.296444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464064, -0.113482, -0.878502,
		-0.305833, -0.910246, 0.279137,
		-0.831330, 0.398213, 0.387706,
		34.602993, 35.332924, 38.412754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668308, 34.594738, 37.953709>,  <35.184921, 35.054173, 38.141361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668308, 34.594738, 37.953709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513187, 34.952705, 38.042007>,  <34.420116, 35.167488, 38.094986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513187, 34.952705, 38.042007>,  <34.668308, 34.594738, 37.953709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513187, 34.952705, 38.042007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547887, -0.031213, -0.835970,
		-0.741237, -0.445132, 0.502420,
		-0.387799, 0.894921, 0.220745,
		34.396847, 35.221180, 38.108231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073376, 34.568657, 37.558662>,  <34.668308, 34.594738, 37.953709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073376, 34.568657, 37.558662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094276, 34.961609, 37.630444>,  <34.106815, 35.197380, 37.673512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094276, 34.961609, 37.630444>,  <34.073376, 34.568657, 37.558662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094276, 34.961609, 37.630444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359658, 0.186151, -0.914327,
		-0.931620, -0.016765, 0.363047,
		0.052253, 0.982378, 0.179451,
		34.109951, 35.256321, 37.684280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406960, 34.816628, 37.553841>,  <34.073376, 34.568657, 37.558662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406960, 34.816628, 37.553841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661903, 35.109150, 37.456715>,  <33.814869, 35.284664, 37.398441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661903, 35.109150, 37.456715>,  <33.406960, 34.816628, 37.553841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661903, 35.109150, 37.456715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439811, 0.086508, -0.893914,
		-0.632723, 0.676537, 0.376775,
		0.637360, 0.731310, -0.242813,
		33.853111, 35.328545, 37.383869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985397, 35.218857, 37.085495>,  <33.406960, 34.816628, 37.553841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985397, 35.218857, 37.085495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369953, 35.317066, 37.035767>,  <33.600685, 35.375992, 37.005928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369953, 35.317066, 37.035767>,  <32.985397, 35.218857, 37.085495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369953, 35.317066, 37.035767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140731, 0.050377, -0.988765,
		-0.236503, 0.968080, 0.082985,
		0.961385, 0.245524, -0.124325,
		33.658367, 35.390724, 36.998470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001213, 35.811607, 36.728397>,  <32.985397, 35.218857, 37.085495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001213, 35.811607, 36.728397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352966, 35.630337, 36.670002>,  <33.564018, 35.521576, 36.634964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352966, 35.630337, 36.670002>,  <33.001213, 35.811607, 36.728397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352966, 35.630337, 36.670002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221498, -0.117974, -0.967998,
		0.421452, 0.883579, -0.204122,
		0.879385, -0.453177, -0.145990,
		33.616783, 35.494385, 36.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269058, 36.239895, 36.197525>,  <33.001213, 35.811607, 36.728397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269058, 36.239895, 36.197525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497814, 35.911972, 36.185780>,  <33.635067, 35.715218, 36.178730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497814, 35.911972, 36.185780>,  <33.269058, 36.239895, 36.197525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497814, 35.911972, 36.185780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227040, -0.123778, -0.965988,
		0.788285, 0.559107, -0.256916,
		0.571891, -0.819804, -0.029367,
		33.669380, 35.666031, 36.176968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793118, 36.349998, 35.606018>,  <33.269058, 36.239895, 36.197525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793118, 36.349998, 35.606018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767155, 35.955730, 35.668301>,  <33.751579, 35.719170, 35.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767155, 35.955730, 35.668301>,  <33.793118, 36.349998, 35.606018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767155, 35.955730, 35.668301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015716, -0.155002, -0.987789,
		0.997768, -0.066558, -0.005431,
		-0.064903, -0.985670, 0.155702,
		33.747684, 35.660030, 35.715012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369095, 36.021194, 35.178028>,  <33.793118, 36.349998, 35.606018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369095, 36.021194, 35.178028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071281, 35.762367, 35.243713>,  <33.892593, 35.607071, 35.283123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071281, 35.762367, 35.243713>,  <34.369095, 36.021194, 35.178028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071281, 35.762367, 35.243713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022415, -0.221615, -0.974877,
		0.667204, -0.729513, 0.150497,
		-0.744538, -0.647069, 0.164214,
		33.847919, 35.568245, 35.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508354, 35.505123, 34.741531>,  <34.369095, 36.021194, 35.178028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508354, 35.505123, 34.741531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138325, 35.415226, 34.863995>,  <33.916309, 35.361286, 34.937473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138325, 35.415226, 34.863995>,  <34.508354, 35.505123, 34.741531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138325, 35.415226, 34.863995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181851, -0.445588, -0.876574,
		0.333426, -0.866568, 0.371331,
		-0.925071, -0.224745, 0.306157,
		33.860802, 35.347801, 34.955841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418007, 34.824055, 34.508766>,  <34.508354, 35.505123, 34.741531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418007, 34.824055, 34.508766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052647, 34.973938, 34.572369>,  <33.833431, 35.063869, 34.610531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052647, 34.973938, 34.572369>,  <34.418007, 34.824055, 34.508766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052647, 34.973938, 34.572369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330653, -0.455189, -0.826723,
		-0.237400, -0.807711, 0.539670,
		-0.913406, 0.374708, 0.159011,
		33.778625, 35.086349, 34.620071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971806, 34.266899, 34.507175>,  <34.418007, 34.824055, 34.508766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971806, 34.266899, 34.507175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708591, 34.560390, 34.439491>,  <33.550663, 34.736485, 34.398880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708591, 34.560390, 34.439491>,  <33.971806, 34.266899, 34.507175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708591, 34.560390, 34.439491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304685, -0.464954, -0.831255,
		-0.688595, -0.495435, 0.529511,
		-0.658031, 0.733732, -0.169213,
		33.511181, 34.780510, 34.388729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426785, 34.022907, 34.565121>,  <33.971806, 34.266899, 34.507175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426785, 34.022907, 34.565121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318733, 34.340321, 34.347008>,  <33.253902, 34.530769, 34.216141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318733, 34.340321, 34.347008>,  <33.426785, 34.022907, 34.565121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318733, 34.340321, 34.347008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353589, -0.608529, -0.710399,
		-0.895546, 0.000907, 0.444967,
		-0.270131, 0.793531, -0.545287,
		33.237694, 34.578381, 34.183422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630821, 34.000198, 34.314774>,  <33.426785, 34.022907, 34.565121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630821, 34.000198, 34.314774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844154, 34.219200, 34.056843>,  <32.972153, 34.350601, 33.902084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844154, 34.219200, 34.056843>,  <32.630821, 34.000198, 34.314774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844154, 34.219200, 34.056843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340121, -0.559159, -0.756082,
		-0.774515, 0.622562, -0.112002,
		0.533334, 0.547502, -0.644822,
		33.004154, 34.383450, 33.863396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212868, 34.096748, 33.778744>,  <32.630821, 34.000198, 34.314774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212868, 34.096748, 33.778744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547436, 34.215508, 33.594456>,  <32.748177, 34.286762, 33.483883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547436, 34.215508, 33.594456>,  <32.212868, 34.096748, 33.778744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547436, 34.215508, 33.594456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255153, -0.533024, -0.806711,
		-0.485080, 0.792300, -0.370077,
		0.836418, 0.296893, -0.460717,
		32.798363, 34.304577, 33.456242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971054, 34.375698, 33.213703>,  <32.212868, 34.096748, 33.778744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971054, 34.375698, 33.213703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346340, 34.255615, 33.144855>,  <32.571510, 34.183563, 33.103546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346340, 34.255615, 33.144855>,  <31.971054, 34.375698, 33.213703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346340, 34.255615, 33.144855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312378, -0.520700, -0.794538,
		0.148905, 0.799215, -0.582308,
		0.938215, -0.300211, -0.172122,
		32.627804, 34.165550, 33.093220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988285, 34.421719, 32.504528>,  <31.971054, 34.375698, 33.213703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988285, 34.421719, 32.504528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272003, 34.165207, 32.621605>,  <32.442234, 34.011299, 32.691849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272003, 34.165207, 32.621605>,  <31.988285, 34.421719, 32.504528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272003, 34.165207, 32.621605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203107, -0.583524, -0.786287,
		0.675016, 0.498263, -0.544139,
		0.709296, -0.641275, 0.292688,
		32.484791, 33.972824, 32.709412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326180, 34.285324, 31.908813>,  <31.988285, 34.421719, 32.504528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326180, 34.285324, 31.908813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418198, 33.982376, 32.153259>,  <32.473408, 33.800606, 32.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418198, 33.982376, 32.153259>,  <32.326180, 34.285324, 31.908813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418198, 33.982376, 32.153259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020282, -0.631553, -0.775067,
		0.972969, 0.165906, -0.160647,
		0.230046, -0.757374, 0.611117,
		32.487213, 33.755165, 32.336594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822578, 34.005772, 31.589844>,  <32.326180, 34.285324, 31.908813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822578, 34.005772, 31.589844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663197, 33.742645, 31.845503>,  <32.567566, 33.584770, 31.998899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663197, 33.742645, 31.845503>,  <32.822578, 34.005772, 31.589844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663197, 33.742645, 31.845503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193363, -0.620948, -0.759628,
		0.896572, -0.426268, 0.120225,
		-0.398458, -0.657814, 0.639149,
		32.543659, 33.545300, 32.037247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081913, 33.314373, 31.457542>,  <32.822578, 34.005772, 31.589844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081913, 33.314373, 31.457542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756844, 33.236099, 31.677094>,  <32.561802, 33.189133, 31.808823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756844, 33.236099, 31.677094>,  <33.081913, 33.314373, 31.457542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756844, 33.236099, 31.677094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224130, -0.764494, -0.604412,
		0.537888, -0.614211, 0.577427,
		-0.812676, -0.195687, 0.548875,
		32.513042, 33.177395, 31.841757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070301, 32.595066, 31.531506>,  <33.081913, 33.314373, 31.457542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070301, 32.595066, 31.531506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681225, 32.671329, 31.584446>,  <32.447777, 32.717087, 31.616209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681225, 32.671329, 31.584446>,  <33.070301, 32.595066, 31.531506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681225, 32.671329, 31.584446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230973, -0.739250, -0.632582,
		-0.022767, -0.645878, 0.763101,
		-0.972694, 0.190657, 0.132350,
		32.389416, 32.728527, 31.624151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676121, 32.008450, 31.744946>,  <33.070301, 32.595066, 31.531506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676121, 32.008450, 31.744946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395432, 32.233452, 31.570051>,  <32.227020, 32.368454, 31.465115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395432, 32.233452, 31.570051>,  <32.676121, 32.008450, 31.744946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395432, 32.233452, 31.570051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116524, -0.696057, -0.708468,
		-0.702865, -0.446193, 0.553979,
		-0.701714, 0.562509, -0.437243,
		32.184914, 32.402203, 31.438881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077682, 31.581144, 31.661144>,  <32.676121, 32.008450, 31.744946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077682, 31.581144, 31.661144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042839, 31.879519, 31.397026>,  <32.021931, 32.058544, 31.238554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042839, 31.879519, 31.397026>,  <32.077682, 31.581144, 31.661144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042839, 31.879519, 31.397026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225596, -0.660369, -0.716253,
		-0.970318, 0.086566, 0.225806,
		-0.087112, 0.745935, -0.660297,
		32.016705, 32.103298, 31.198936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408010, 31.410818, 31.336620>,  <32.077682, 31.581144, 31.661144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408010, 31.410818, 31.336620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611128, 31.642990, 31.081984>,  <31.732998, 31.782293, 30.929201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611128, 31.642990, 31.081984>,  <31.408010, 31.410818, 31.336620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611128, 31.642990, 31.081984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191702, -0.644288, -0.740367,
		-0.839880, 0.497988, -0.215894,
		0.507792, 0.580431, -0.636590,
		31.763466, 31.817120, 30.891006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070650, 31.401894, 30.688986>,  <31.408010, 31.410818, 31.336620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070650, 31.401894, 30.688986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420547, 31.550081, 30.564034>,  <31.630486, 31.638994, 30.489063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420547, 31.550081, 30.564034>,  <31.070650, 31.401894, 30.688986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420547, 31.550081, 30.564034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060858, -0.555538, -0.829261,
		-0.480754, 0.744400, -0.463406,
		0.874741, 0.370468, -0.312379,
		31.682970, 31.661222, 30.470320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051121, 31.565434, 29.908384>,  <31.070650, 31.401894, 30.688986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051121, 31.565434, 29.908384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437319, 31.509022, 29.995953>,  <31.669039, 31.475176, 30.048492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437319, 31.509022, 29.995953>,  <31.051121, 31.565434, 29.908384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437319, 31.509022, 29.995953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103741, -0.562779, -0.820072,
		0.238856, 0.814488, -0.528731,
		0.965497, -0.141028, 0.218919,
		31.726969, 31.466713, 30.061628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435476, 31.853340, 29.298862>,  <31.051121, 31.565434, 29.908384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435476, 31.853340, 29.298862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698153, 31.609203, 29.476061>,  <31.855759, 31.462721, 29.582380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698153, 31.609203, 29.476061>,  <31.435476, 31.853340, 29.298862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698153, 31.609203, 29.476061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096917, -0.514233, -0.852157,
		0.747908, 0.602536, -0.278539,
		0.656689, -0.610340, 0.442995,
		31.895159, 31.426102, 29.608959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913157, 31.707567, 28.859512>,  <31.435476, 31.853340, 29.298862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913157, 31.707567, 28.859512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967257, 31.411240, 29.122692>,  <31.999716, 31.233444, 29.280600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967257, 31.411240, 29.122692>,  <31.913157, 31.707567, 28.859512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967257, 31.411240, 29.122692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012974, -0.662670, -0.748799,
		0.990727, 0.109812, -0.080015,
		0.135251, -0.740817, 0.657949,
		32.007832, 31.188995, 29.320078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376465, 31.243914, 28.484642>,  <31.913157, 31.707567, 28.859512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376465, 31.243914, 28.484642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209343, 31.000704, 28.754679>,  <32.109070, 30.854778, 28.916700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209343, 31.000704, 28.754679>,  <32.376465, 31.243914, 28.484642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209343, 31.000704, 28.754679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048370, -0.756885, -0.651756,
		0.907250, -0.239650, 0.345637,
		-0.417801, -0.608024, 0.675092,
		32.084003, 30.818296, 28.957207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755573, 30.541855, 28.446781>,  <32.376465, 31.243914, 28.484642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755573, 30.541855, 28.446781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409851, 30.461102, 28.631048>,  <32.202415, 30.412649, 28.741608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409851, 30.461102, 28.631048>,  <32.755573, 30.541855, 28.446781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409851, 30.461102, 28.631048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195714, -0.708724, -0.677795,
		0.463321, -0.675983, 0.573045,
		-0.864309, -0.201883, 0.460666,
		32.150558, 30.400537, 28.769247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732143, 29.758331, 28.457596>,  <32.755573, 30.541855, 28.446781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732143, 29.758331, 28.457596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367115, 29.918827, 28.489161>,  <32.148098, 30.015125, 28.508099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367115, 29.918827, 28.489161>,  <32.732143, 29.758331, 28.457596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367115, 29.918827, 28.489161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372827, -0.737100, -0.563634,
		-0.167988, -0.543774, 0.822247,
		-0.912568, 0.401240, 0.078910,
		32.093346, 30.039200, 28.512833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279667, 29.201859, 28.567974>,  <32.732143, 29.758331, 28.457596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279667, 29.201859, 28.567974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050930, 29.505323, 28.443119>,  <31.913689, 29.687403, 28.368206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050930, 29.505323, 28.443119>,  <32.279667, 29.201859, 28.567974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050930, 29.505323, 28.443119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365827, -0.576385, -0.730720,
		-0.734281, -0.303667, 0.607139,
		-0.571841, 0.758661, -0.312139,
		31.879377, 29.732922, 28.349478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835091, 28.705721, 28.462845>,  <32.279667, 29.201859, 28.567974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835091, 28.705721, 28.462845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156494, 28.623814, 28.239256>,  <33.349335, 28.574669, 28.105103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156494, 28.623814, 28.239256>,  <32.835091, 28.705721, 28.462845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156494, 28.623814, 28.239256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556717, 0.591008, 0.583759,
		0.210821, -0.780243, 0.588876,
		0.803505, -0.204769, -0.558972,
		33.397545, 28.562384, 28.071564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285824, 28.338324, 28.844696>,  <32.835091, 28.705721, 28.462845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285824, 28.338324, 28.844696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509666, 28.503954, 28.557537>,  <33.643974, 28.603333, 28.385241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509666, 28.503954, 28.557537>,  <33.285824, 28.338324, 28.844696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509666, 28.503954, 28.557537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540739, 0.474015, 0.694919,
		0.628044, -0.777078, 0.041355,
		0.559609, 0.414077, -0.717898,
		33.677547, 28.628178, 28.342167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775867, 28.289417, 29.159687>,  <33.285824, 28.338324, 28.844696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775867, 28.289417, 29.159687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842106, 28.563879, 28.876345>,  <33.881847, 28.728556, 28.706339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842106, 28.563879, 28.876345>,  <33.775867, 28.289417, 29.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842106, 28.563879, 28.876345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595421, 0.503024, 0.626452,
		0.786163, -0.525509, -0.325252,
		0.165596, 0.686154, -0.708357,
		33.891785, 28.769726, 28.663837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543327, 28.463846, 29.069399>,  <33.775867, 28.289417, 29.159687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543327, 28.463846, 29.069399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350552, 28.777243, 28.912493>,  <34.234886, 28.965281, 28.818350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350552, 28.777243, 28.912493>,  <34.543327, 28.463846, 29.069399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350552, 28.777243, 28.912493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543044, 0.618425, 0.568027,
		0.687632, 0.060738, -0.723515,
		-0.481940, 0.783493, -0.392265,
		34.205971, 29.012291, 28.794813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003864, 28.929361, 28.981586>,  <34.543327, 28.463846, 29.069399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003864, 28.929361, 28.981586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681782, 29.166443, 28.974192>,  <34.488533, 29.308691, 28.969755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681782, 29.166443, 28.974192>,  <35.003864, 28.929361, 28.981586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681782, 29.166443, 28.974192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406495, 0.574402, 0.710510,
		0.431740, 0.564595, -0.703444,
		-0.805210, 0.592702, -0.018487,
		34.440220, 29.344254, 28.968645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241241, 29.571011, 28.966625>,  <35.003864, 28.929361, 28.981586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241241, 29.571011, 28.966625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874603, 29.615335, 29.120285>,  <34.654621, 29.641930, 29.212481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874603, 29.615335, 29.120285>,  <35.241241, 29.571011, 28.966625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874603, 29.615335, 29.120285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373709, 0.578944, 0.724683,
		-0.142098, 0.807803, -0.572069,
		-0.916597, 0.110811, 0.384150,
		34.599625, 29.648579, 29.235531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322521, 30.258930, 29.280167>,  <35.241241, 29.571011, 28.966625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322521, 30.258930, 29.280167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000713, 30.082676, 29.439457>,  <34.807629, 29.976923, 29.535030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000713, 30.082676, 29.439457>,  <35.322521, 30.258930, 29.280167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000713, 30.082676, 29.439457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093228, 0.568496, 0.817387,
		-0.586561, 0.694731, -0.416288,
		-0.804522, -0.440638, 0.398226,
		34.759357, 29.950485, 29.558924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897293, 30.769110, 29.588142>,  <35.322521, 30.258930, 29.280167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897293, 30.769110, 29.588142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730518, 30.450571, 29.763411>,  <34.630451, 30.259449, 29.868572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730518, 30.450571, 29.763411>,  <34.897293, 30.769110, 29.588142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730518, 30.450571, 29.763411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173315, 0.542882, 0.821730,
		-0.892257, 0.266670, -0.364368,
		-0.416940, -0.796345, 0.438172,
		34.605438, 30.211668, 29.894863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300137, 31.006847, 29.820971>,  <34.897293, 30.769110, 29.588142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300137, 31.006847, 29.820971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399673, 30.684174, 30.035387>,  <34.459396, 30.490570, 30.164036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399673, 30.684174, 30.035387>,  <34.300137, 31.006847, 29.820971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399673, 30.684174, 30.035387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198351, 0.499274, 0.843435,
		-0.948015, -0.316208, -0.035764,
		0.248845, -0.806683, 0.536040,
		34.474327, 30.442169, 30.196199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685760, 30.910046, 30.303295>,  <34.300137, 31.006847, 29.820971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685760, 30.910046, 30.303295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015652, 30.716761, 30.420818>,  <34.213589, 30.600790, 30.491333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015652, 30.716761, 30.420818>,  <33.685760, 30.910046, 30.303295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015652, 30.716761, 30.420818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022544, 0.491028, 0.870852,
		-0.565074, -0.724843, 0.394073,
		0.824733, -0.483212, 0.293808,
		34.263073, 30.571796, 30.508961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529415, 30.662683, 31.071951>,  <33.685760, 30.910046, 30.303295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529415, 30.662683, 31.071951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924110, 30.670485, 31.007486>,  <34.160927, 30.675165, 30.968807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924110, 30.670485, 31.007486>,  <33.529415, 30.662683, 31.071951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924110, 30.670485, 31.007486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140927, 0.389872, 0.910021,
		0.080582, -0.920662, 0.381952,
		0.986735, 0.019504, -0.161163,
		34.220131, 30.676336, 30.959137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922794, 30.486643, 31.722351>,  <33.529415, 30.662683, 31.071951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922794, 30.486643, 31.722351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185013, 30.694317, 31.503004>,  <34.342342, 30.818922, 31.371395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185013, 30.694317, 31.503004>,  <33.922794, 30.486643, 31.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185013, 30.694317, 31.503004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260498, 0.526120, 0.809530,
		0.708805, -0.673530, 0.209647,
		0.655542, 0.519187, -0.548369,
		34.381676, 30.850073, 31.338493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493587, 30.517096, 32.150379>,  <33.922794, 30.486643, 31.722351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493587, 30.517096, 32.150379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609467, 30.795237, 31.887300>,  <34.678993, 30.962120, 31.729454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609467, 30.795237, 31.887300>,  <34.493587, 30.517096, 32.150379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609467, 30.795237, 31.887300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370729, 0.551997, 0.746900,
		0.882403, -0.460202, -0.097874,
		0.289698, 0.695351, -0.657694,
		34.696377, 31.003841, 31.689993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173321, 30.675228, 32.342720>,  <34.493587, 30.517096, 32.150379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173321, 30.675228, 32.342720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022301, 30.992792, 32.152077>,  <34.931686, 31.183331, 32.037689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022301, 30.992792, 32.152077>,  <35.173321, 30.675228, 32.342720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022301, 30.992792, 32.152077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327352, 0.595906, 0.733305,
		0.866195, 0.120843, -0.484875,
		-0.377555, 0.793910, -0.476613,
		34.909035, 31.230965, 32.009094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715122, 31.079130, 32.249504>,  <35.173321, 30.675228, 32.342720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715122, 31.079130, 32.249504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404633, 31.328653, 32.212971>,  <35.218338, 31.478367, 32.191051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404633, 31.328653, 32.212971>,  <35.715122, 31.079130, 32.249504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404633, 31.328653, 32.212971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399702, 0.598953, 0.693898,
		0.487562, 0.502114, -0.714258,
		-0.776222, 0.623809, -0.091331,
		35.171764, 31.515797, 32.185570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894897, 31.746395, 32.224346>,  <35.715122, 31.079130, 32.249504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894897, 31.746395, 32.224346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513847, 31.818899, 32.322037>,  <35.285217, 31.862402, 32.380650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513847, 31.818899, 32.322037>,  <35.894897, 31.746395, 32.224346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513847, 31.818899, 32.322037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304021, 0.545177, 0.781251,
		0.008467, 0.818490, -0.574458,
		-0.952628, 0.181262, 0.244222,
		35.228058, 31.873278, 32.395302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921032, 32.481880, 32.271374>,  <35.894897, 31.746395, 32.224346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921032, 32.481880, 32.271374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592503, 32.365364, 32.467567>,  <35.395386, 32.295456, 32.585285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592503, 32.365364, 32.467567>,  <35.921032, 32.481880, 32.271374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592503, 32.365364, 32.467567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269593, 0.559542, 0.783730,
		-0.502740, 0.775928, -0.381036,
		-0.821324, -0.291287, 0.490489,
		35.346104, 32.277977, 32.614716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597805, 33.142910, 32.618732>,  <35.921032, 32.481880, 32.271374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597805, 33.142910, 32.618732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467766, 32.822933, 32.820488>,  <35.389740, 32.630947, 32.941540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467766, 32.822933, 32.820488>,  <35.597805, 33.142910, 32.618732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467766, 32.822933, 32.820488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357429, 0.389857, 0.848679,
		-0.875530, 0.456190, 0.159178,
		-0.325102, -0.799939, 0.504387,
		35.370235, 32.582951, 32.971806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021065, 33.331280, 33.048065>,  <35.597805, 33.142910, 32.618732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021065, 33.331280, 33.048065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162231, 32.998741, 33.219788>,  <35.246933, 32.799217, 33.322823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162231, 32.998741, 33.219788>,  <35.021065, 33.331280, 33.048065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162231, 32.998741, 33.219788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197735, 0.514741, 0.834232,
		-0.914521, -0.209527, 0.346049,
		0.352920, -0.831348, 0.429311,
		35.268108, 32.749336, 33.348579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718407, 33.321999, 33.636803>,  <35.021065, 33.331280, 33.048065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718407, 33.321999, 33.636803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028431, 33.076675, 33.697651>,  <35.214443, 32.929482, 33.734161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028431, 33.076675, 33.697651>,  <34.718407, 33.321999, 33.636803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028431, 33.076675, 33.697651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214879, 0.482204, 0.849297,
		-0.594233, -0.625567, 0.505523,
		0.775058, -0.613306, 0.152120,
		35.260948, 32.892685, 33.743286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655201, 33.071133, 34.319798>,  <34.718407, 33.321999, 33.636803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655201, 33.071133, 34.319798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038338, 32.998009, 34.231140>,  <35.268219, 32.954136, 34.177944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038338, 32.998009, 34.231140>,  <34.655201, 33.071133, 34.319798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038338, 32.998009, 34.231140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264120, 0.256658, 0.929713,
		-0.113073, -0.949056, 0.294120,
		0.957839, -0.182809, -0.221644,
		35.325691, 32.943165, 34.164646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818710, 32.912601, 35.023399>,  <34.655201, 33.071133, 34.319798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818710, 32.912601, 35.023399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161175, 32.973572, 34.825912>,  <35.366653, 33.010155, 34.707420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161175, 32.973572, 34.825912>,  <34.818710, 32.912601, 35.023399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161175, 32.973572, 34.825912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376636, 0.470051, 0.798246,
		0.353744, -0.869378, 0.345031,
		0.856160, 0.152424, -0.493717,
		35.418022, 33.019299, 34.677799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354969, 32.653759, 35.502853>,  <34.818710, 32.912601, 35.023399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354969, 32.653759, 35.502853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497932, 32.916512, 35.237293>,  <35.583710, 33.074162, 35.077957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497932, 32.916512, 35.237293>,  <35.354969, 32.653759, 35.502853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497932, 32.916512, 35.237293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538779, 0.435632, 0.721070,
		0.762875, -0.615412, -0.198216,
		0.357406, 0.656881, -0.663904,
		35.605156, 33.113575, 35.038120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013630, 32.837036, 35.757572>,  <35.354969, 32.653759, 35.502853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013630, 32.837036, 35.757572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926899, 33.145317, 35.517906>,  <35.874859, 33.330288, 35.374107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926899, 33.145317, 35.517906>,  <36.013630, 32.837036, 35.757572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926899, 33.145317, 35.517906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486404, 0.617447, 0.618199,
		0.846402, -0.157393, -0.508754,
		-0.216829, 0.770705, -0.599165,
		35.861851, 33.376530, 35.338158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594154, 33.280651, 35.704376>,  <36.013630, 32.837036, 35.757572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594154, 33.280651, 35.704376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324032, 33.543533, 35.570484>,  <36.161957, 33.701263, 35.490150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324032, 33.543533, 35.570484>,  <36.594154, 33.280651, 35.704376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324032, 33.543533, 35.570484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443443, 0.724450, 0.527760,
		0.589340, 0.207967, -0.780659,
		-0.675305, 0.657207, -0.334726,
		36.121441, 33.740696, 35.470066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996555, 33.904922, 35.590843>,  <36.594154, 33.280651, 35.704376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996555, 33.904922, 35.590843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617905, 34.033714, 35.584820>,  <36.390713, 34.110989, 35.581207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617905, 34.033714, 35.584820>,  <36.996555, 33.904922, 35.590843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617905, 34.033714, 35.584820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272971, 0.825634, 0.493777,
		0.171416, 0.463313, -0.869458,
		-0.946627, 0.321978, -0.015056,
		36.333916, 34.130306, 35.580303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964722, 34.434723, 35.199791>,  <36.996555, 33.904922, 35.590843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964722, 34.434723, 35.199791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646698, 34.510685, 35.430202>,  <36.455883, 34.556263, 35.568451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646698, 34.510685, 35.430202>,  <36.964722, 34.434723, 35.199791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646698, 34.510685, 35.430202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410641, 0.867485, 0.280792,
		-0.446376, 0.459790, -0.767686,
		-0.795061, 0.189905, 0.576033,
		36.408180, 34.567657, 35.603012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680016, 35.165859, 35.001369>,  <36.964722, 34.434723, 35.199791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680016, 35.165859, 35.001369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561497, 35.074860, 35.372410>,  <36.490383, 35.020260, 35.595036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561497, 35.074860, 35.372410>,  <36.680016, 35.165859, 35.001369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561497, 35.074860, 35.372410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269080, 0.911992, 0.309623,
		-0.916408, 0.341341, -0.209007,
		-0.296299, -0.227502, 0.927604,
		36.472607, 35.006611, 35.650692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394119, 35.799587, 35.318451>,  <36.680016, 35.165859, 35.001369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394119, 35.799587, 35.318451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462734, 35.568302, 35.637512>,  <36.503902, 35.429531, 35.828949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462734, 35.568302, 35.637512>,  <36.394119, 35.799587, 35.318451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462734, 35.568302, 35.637512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346877, 0.793251, 0.500429,
		-0.922091, 0.190846, 0.336638,
		0.171534, -0.578213, 0.797650,
		36.514194, 35.394836, 35.876808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299622, 36.232960, 35.803989>,  <36.394119, 35.799587, 35.318451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299622, 36.232960, 35.803989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501877, 35.941143, 35.988209>,  <36.623230, 35.766052, 36.098740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501877, 35.941143, 35.988209>,  <36.299622, 36.232960, 35.803989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501877, 35.941143, 35.988209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380392, 0.667641, 0.639966,
		-0.774362, -0.148401, 0.615094,
		0.505634, -0.729543, 0.460545,
		36.653568, 35.722279, 36.126373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094814, 36.099216, 36.522327>,  <36.299622, 36.232960, 35.803989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094814, 36.099216, 36.522327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472755, 35.975258, 36.479954>,  <36.699520, 35.900883, 36.454529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472755, 35.975258, 36.479954>,  <36.094814, 36.099216, 36.522327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472755, 35.975258, 36.479954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297532, 0.677052, 0.673108,
		-0.136870, -0.667506, 0.731917,
		0.944850, -0.309898, -0.105936,
		36.756210, 35.882290, 36.448174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350491, 36.237164, 37.161880>,  <36.094814, 36.099216, 36.522327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350491, 36.237164, 37.161880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682060, 36.161659, 36.951263>,  <36.881004, 36.116356, 36.824894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682060, 36.161659, 36.951263>,  <36.350491, 36.237164, 37.161880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682060, 36.161659, 36.951263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525300, 0.586150, 0.616837,
		0.192201, -0.787907, 0.585031,
		0.828926, -0.188760, -0.526547,
		36.930737, 36.105030, 36.793301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776920, 36.160713, 37.664711>,  <36.350491, 36.237164, 37.161880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776920, 36.160713, 37.664711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976929, 36.260365, 37.332947>,  <37.096935, 36.320156, 37.133888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976929, 36.260365, 37.332947>,  <36.776920, 36.160713, 37.664711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976929, 36.260365, 37.332947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491036, 0.707336, 0.508487,
		0.713349, -0.661522, 0.231349,
		0.500017, 0.249128, -0.829408,
		37.126934, 36.335102, 37.084126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523155, 36.067375, 37.821632>,  <36.776920, 36.160713, 37.664711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523155, 36.067375, 37.821632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492519, 36.279156, 37.483681>,  <37.474136, 36.406223, 37.280910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492519, 36.279156, 37.483681>,  <37.523155, 36.067375, 37.821632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492519, 36.279156, 37.483681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713515, 0.620983, 0.324465,
		0.696442, -0.577979, -0.425334,
		-0.076591, 0.529453, -0.844875,
		37.469543, 36.437992, 37.230217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171299, 36.001587, 37.478657>,  <37.523155, 36.067375, 37.821632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171299, 36.001587, 37.478657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002907, 36.335236, 37.336102>,  <37.901871, 36.535427, 37.250568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002907, 36.335236, 37.336102>,  <38.171299, 36.001587, 37.478657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002907, 36.335236, 37.336102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733385, 0.544207, 0.407413,
		0.533784, -0.089861, -0.840832,
		-0.420976, 0.834125, -0.356392,
		37.876614, 36.585472, 37.229183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789356, 36.388218, 37.124474>,  <38.171299, 36.001587, 37.478657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789356, 36.388218, 37.124474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495045, 36.637344, 37.230850>,  <38.318459, 36.786819, 37.294678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495045, 36.637344, 37.230850>,  <38.789356, 36.388218, 37.124474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495045, 36.637344, 37.230850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672244, 0.624187, 0.398094,
		0.081940, 0.471690, -0.877949,
		-0.735781, 0.622816, 0.265945,
		38.274311, 36.824188, 37.310635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022217, 36.999092, 36.840691>,  <38.789356, 36.388218, 37.124474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022217, 36.999092, 36.840691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758377, 37.080215, 37.130184>,  <38.600071, 37.128887, 37.303883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758377, 37.080215, 37.130184>,  <39.022217, 36.999092, 36.840691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758377, 37.080215, 37.130184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533389, 0.804718, 0.260624,
		-0.529549, 0.557942, -0.638967,
		-0.659602, 0.202805, 0.723737,
		38.560497, 37.141056, 37.347305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044613, 37.713360, 36.825073>,  <39.022217, 36.999092, 36.840691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044613, 37.713360, 36.825073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900478, 37.574928, 37.171574>,  <38.813999, 37.491871, 37.379475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900478, 37.574928, 37.171574>,  <39.044613, 37.713360, 36.825073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900478, 37.574928, 37.171574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447741, 0.750502, 0.486081,
		-0.818343, 0.563009, -0.115482,
		-0.360338, -0.346075, 0.866250,
		38.792377, 37.471107, 37.431450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954590, 38.312824, 37.179958>,  <39.044613, 37.713360, 36.825073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954590, 38.312824, 37.179958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914837, 38.058613, 37.486217>,  <38.890984, 37.906086, 37.669975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914837, 38.058613, 37.486217>,  <38.954590, 38.312824, 37.179958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914837, 38.058613, 37.486217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673132, 0.523737, 0.522104,
		-0.732814, 0.567273, 0.375746,
		-0.099384, -0.635531, 0.765652,
		38.885021, 37.867954, 37.715912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941822, 38.717110, 37.798782>,  <38.954590, 38.312824, 37.179958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941822, 38.717110, 37.798782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036583, 38.354588, 37.938778>,  <39.093437, 38.137074, 38.022778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036583, 38.354588, 37.938778>,  <38.941822, 38.717110, 37.798782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036583, 38.354588, 37.938778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576789, 0.421089, 0.699999,
		-0.781789, 0.036043, 0.622501,
		0.236898, -0.906303, 0.349991,
		39.107651, 38.082695, 38.043774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742905, 38.728050, 38.536285>,  <38.941822, 38.717110, 37.798782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742905, 38.728050, 38.536285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036701, 38.459755, 38.495052>,  <39.212982, 38.298779, 38.470310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036701, 38.459755, 38.495052>,  <38.742905, 38.728050, 38.536285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036701, 38.459755, 38.495052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518346, 0.456478, 0.723149,
		-0.437987, -0.584585, 0.682955,
		0.734496, -0.670738, -0.103086,
		39.257050, 38.258533, 38.464127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000835, 38.614464, 39.206181>,  <38.742905, 38.728050, 38.536285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000835, 38.614464, 39.206181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287388, 38.470699, 38.966976>,  <39.459320, 38.384441, 38.823452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287388, 38.470699, 38.966976>,  <39.000835, 38.614464, 39.206181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287388, 38.470699, 38.966976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697708, 0.366923, 0.615282,
		-0.001714, -0.858015, 0.513621,
		0.716381, -0.359412, -0.598015,
		39.502300, 38.362877, 38.787571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458607, 38.308857, 39.665337>,  <39.000835, 38.614464, 39.206181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458607, 38.308857, 39.665337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692474, 38.373707, 39.347374>,  <39.832794, 38.412617, 39.156597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692474, 38.373707, 39.347374>,  <39.458607, 38.308857, 39.665337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692474, 38.373707, 39.347374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752886, 0.256552, 0.606089,
		0.302197, -0.952836, 0.027936,
		0.584670, 0.162126, -0.794906,
		39.867874, 38.422344, 39.108902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150478, 37.907307, 39.728188>,  <39.458607, 38.308857, 39.665337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150478, 37.907307, 39.728188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150303, 38.246578, 39.516300>,  <40.150196, 38.450142, 39.389168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150303, 38.246578, 39.516300>,  <40.150478, 37.907307, 39.728188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150303, 38.246578, 39.516300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718666, 0.368609, 0.589616,
		0.695356, -0.380431, -0.609715,
		-0.000438, 0.848174, -0.529717,
		40.150173, 38.501030, 39.357384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655445, 38.131355, 40.071369>,  <40.150478, 37.907307, 39.728188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655445, 38.131355, 40.071369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586117, 38.409348, 39.792240>,  <40.544521, 38.576145, 39.624763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586117, 38.409348, 39.792240>,  <40.655445, 38.131355, 40.071369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586117, 38.409348, 39.792240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638677, 0.618675, 0.457528,
		0.749700, -0.366384, -0.551101,
		-0.173321, 0.694985, -0.697823,
		40.534119, 38.617844, 39.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354080, 38.292049, 39.848671>,  <40.655445, 38.131355, 40.071369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354080, 38.292049, 39.848671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140484, 38.611450, 39.737495>,  <41.012325, 38.803089, 39.670792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140484, 38.611450, 39.737495>,  <41.354080, 38.292049, 39.848671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140484, 38.611450, 39.737495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731788, 0.601144, 0.321110,
		0.423487, -0.031921, -0.905339,
		-0.533990, 0.798503, -0.277937,
		40.980286, 38.851002, 39.654114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752384, 38.804653, 39.681564>,  <41.354080, 38.292049, 39.848671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752384, 38.804653, 39.681564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419014, 39.018284, 39.738361>,  <41.218990, 39.146461, 39.772438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419014, 39.018284, 39.738361>,  <41.752384, 38.804653, 39.681564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419014, 39.018284, 39.738361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552445, 0.798454, 0.239322,
		0.014442, 0.277901, -0.960501,
		-0.833424, 0.534080, 0.141994,
		41.168987, 39.178509, 39.780960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888348, 39.440060, 39.388844>,  <41.752384, 38.804653, 39.681564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888348, 39.440060, 39.388844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587948, 39.483856, 39.649307>,  <41.407707, 39.510136, 39.805584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587948, 39.483856, 39.649307>,  <41.888348, 39.440060, 39.388844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587948, 39.483856, 39.649307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352131, 0.900634, 0.254681,
		-0.558571, 0.420560, -0.714932,
		-0.751001, 0.109492, 0.651160,
		41.362648, 39.516705, 39.844654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720364, 40.150196, 39.293354>,  <41.888348, 39.440060, 39.388844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720364, 40.150196, 39.293354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584015, 40.050701, 39.655998>,  <41.502205, 39.991005, 39.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584015, 40.050701, 39.655998>,  <41.720364, 40.150196, 39.293354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584015, 40.050701, 39.655998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351476, 0.860713, 0.368290,
		-0.871937, 0.444189, -0.205965,
		-0.340867, -0.248734, 0.906609,
		41.481754, 39.976082, 39.927982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239368, 40.713043, 39.552269>,  <41.720364, 40.150196, 39.293354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239368, 40.713043, 39.552269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396130, 40.543961, 39.879128>,  <41.490185, 40.442509, 40.075241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396130, 40.543961, 39.879128>,  <41.239368, 40.713043, 39.552269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396130, 40.543961, 39.879128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044264, 0.895831, 0.442185,
		-0.918943, -0.137121, 0.369786,
		0.391899, -0.422711, 0.817148,
		41.513699, 40.417149, 40.124271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293121, 41.221584, 40.059513>,  <41.239368, 40.713043, 39.552269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293121, 41.221584, 40.059513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476730, 40.956238, 40.295898>,  <41.586895, 40.797031, 40.437729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476730, 40.956238, 40.295898>,  <41.293121, 41.221584, 40.059513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476730, 40.956238, 40.295898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322379, 0.744218, 0.584989,
		-0.827870, -0.078009, 0.555469,
		0.459024, -0.663366, 0.590967,
		41.614437, 40.757229, 40.473190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080269, 41.165043, 40.851383>,  <41.293121, 41.221584, 40.059513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080269, 41.165043, 40.851383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464542, 41.087074, 40.772289>,  <41.695107, 41.040291, 40.724834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464542, 41.087074, 40.772289>,  <41.080269, 41.165043, 40.851383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464542, 41.087074, 40.772289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275978, 0.748559, 0.602906,
		0.030493, -0.633770, 0.772920,
		0.960680, -0.194924, -0.197732,
		41.752747, 41.028599, 40.712971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372238, 41.302269, 41.579617>,  <41.080269, 41.165043, 40.851383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372238, 41.302269, 41.579617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708790, 41.301987, 41.363441>,  <41.910721, 41.301819, 41.233738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708790, 41.301987, 41.363441>,  <41.372238, 41.302269, 41.579617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708790, 41.301987, 41.363441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361263, 0.744478, 0.561464,
		0.401949, -0.667647, 0.626645,
		0.841383, -0.000704, -0.540438,
		41.961205, 41.301777, 41.201309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792522, 41.521027, 42.076675>,  <41.372238, 41.302269, 41.579617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792522, 41.521027, 42.076675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009335, 41.564137, 41.743305>,  <42.139420, 41.590004, 41.543285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009335, 41.564137, 41.743305>,  <41.792522, 41.521027, 42.076675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009335, 41.564137, 41.743305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564271, 0.688241, 0.455985,
		0.622740, -0.717431, 0.312229,
		0.542027, 0.107779, -0.833421,
		42.171944, 41.596470, 41.493279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496754, 41.522255, 42.334007>,  <41.792522, 41.521027, 42.076675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496754, 41.522255, 42.334007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520271, 41.677273, 41.966019>,  <42.534382, 41.770283, 41.745224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520271, 41.677273, 41.966019>,  <42.496754, 41.522255, 42.334007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520271, 41.677273, 41.966019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584890, 0.733449, 0.346348,
		0.808979, -0.558446, -0.183551,
		0.058792, 0.387545, -0.919974,
		42.537910, 41.793537, 41.690025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161495, 41.462044, 41.963428>,  <42.496754, 41.522255, 42.334007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161495, 41.462044, 41.963428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954144, 41.777081, 41.830173>,  <42.829731, 41.966103, 41.750221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954144, 41.777081, 41.830173>,  <43.161495, 41.462044, 41.963428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954144, 41.777081, 41.830173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665845, 0.616184, 0.420676,
		0.536594, -0.003746, -0.843832,
		-0.518380, 0.787594, -0.333134,
		42.798630, 42.013359, 41.730232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605156, 42.005917, 42.155258>,  <43.161495, 41.462044, 41.963428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605156, 42.005917, 42.155258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320290, 42.212669, 41.965248>,  <43.149368, 42.336720, 41.851242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320290, 42.212669, 41.965248>,  <43.605156, 42.005917, 42.155258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320290, 42.212669, 41.965248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415680, 0.855777, 0.307986,
		0.565706, 0.021880, -0.824316,
		-0.712170, 0.516881, -0.475024,
		43.106640, 42.367733, 41.822742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898556, 42.378002, 41.611633>,  <43.605156, 42.005917, 42.155258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898556, 42.378002, 41.611633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553474, 42.551998, 41.714798>,  <43.346424, 42.656395, 41.776695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553474, 42.551998, 41.714798>,  <43.898556, 42.378002, 41.611633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553474, 42.551998, 41.714798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485749, 0.854652, 0.183354,
		-0.140667, 0.283461, -0.948611,
		-0.862705, 0.434995, 0.257912,
		43.294662, 42.682495, 41.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949120, 43.088745, 41.337486>,  <43.898556, 42.378002, 41.611633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949120, 43.088745, 41.337486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661037, 43.096451, 41.614883>,  <43.488186, 43.101074, 41.781322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661037, 43.096451, 41.614883>,  <43.949120, 43.088745, 41.337486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661037, 43.096451, 41.614883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456445, 0.765948, 0.452750,
		-0.522454, 0.642614, -0.560436,
		-0.720208, 0.019267, 0.693490,
		43.444977, 43.102230, 41.822929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718784, 43.776478, 41.393677>,  <43.949120, 43.088745, 41.337486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718784, 43.776478, 41.393677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660240, 43.571007, 41.731842>,  <43.625114, 43.447723, 41.934742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660240, 43.571007, 41.731842>,  <43.718784, 43.776478, 41.393677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660240, 43.571007, 41.731842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578174, 0.649026, 0.494450,
		-0.802679, 0.561162, 0.202000,
		-0.146364, -0.513675, 0.845408,
		43.616329, 43.416904, 41.985466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612431, 44.392269, 41.842941>,  <43.718784, 43.776478, 41.393677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612431, 44.392269, 41.842941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742920, 44.044506, 41.991379>,  <43.821213, 43.835850, 42.080441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742920, 44.044506, 41.991379>,  <43.612431, 44.392269, 41.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742920, 44.044506, 41.991379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627497, 0.492768, 0.602849,
		-0.706986, 0.036201, 0.706301,
		0.326219, -0.869407, 0.371096,
		43.840786, 43.783684, 42.102707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758034, 45.098766, 42.104713>,  <43.612431, 44.392269, 41.842941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758034, 45.098766, 42.104713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936779, 44.741734, 42.128757>,  <44.044025, 44.527515, 42.143185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936779, 44.741734, 42.128757>,  <43.758034, 45.098766, 42.104713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936779, 44.741734, 42.128757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167104, -0.017268, 0.985788,
		-0.878859, -0.450554, -0.156870,
		0.446860, -0.892582, 0.060114,
		44.070839, 44.473961, 42.146793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380230, 44.735474, 42.425510>,  <43.758034, 45.098766, 42.104713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380230, 44.735474, 42.425510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736412, 44.567211, 42.494961>,  <43.950119, 44.466255, 42.536633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736412, 44.567211, 42.494961>,  <43.380230, 44.735474, 42.425510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736412, 44.567211, 42.494961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172036, 0.042055, 0.984193,
		-0.421310, -0.906244, -0.034921,
		0.890451, -0.420657, 0.173624,
		44.003548, 44.441013, 42.547047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236336, 44.201130, 42.866325>,  <43.380230, 44.735474, 42.425510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236336, 44.201130, 42.866325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607880, 44.346119, 42.896866>,  <43.830807, 44.433113, 42.915192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607880, 44.346119, 42.896866>,  <43.236336, 44.201130, 42.866325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607880, 44.346119, 42.896866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145345, 0.167039, 0.975178,
		0.340720, -0.916904, 0.207839,
		0.928862, 0.362471, 0.076353,
		43.886539, 44.454861, 42.919773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586060, 43.793903, 43.388149>,  <43.236336, 44.201130, 42.866325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586060, 43.793903, 43.388149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740162, 44.159878, 43.340042>,  <43.832623, 44.379463, 43.311176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740162, 44.159878, 43.340042>,  <43.586060, 43.793903, 43.388149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740162, 44.159878, 43.340042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218109, 0.216917, 0.951512,
		0.896664, -0.340344, 0.283125,
		0.385256, 0.914939, -0.120270,
		43.855740, 44.434361, 43.303963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070576, 43.332386, 43.093945>,  <43.586060, 43.793903, 43.388149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070576, 43.332386, 43.093945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116486, 43.394489, 42.701469>,  <43.144032, 43.431751, 42.465984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116486, 43.394489, 42.701469>,  <43.070576, 43.332386, 43.093945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116486, 43.394489, 42.701469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629635, -0.752603, -0.192738,
		-0.768366, 0.639909, 0.011379,
		0.114770, 0.155258, -0.981184,
		43.150917, 43.441067, 42.407116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511650, 43.260460, 42.707073>,  <43.070576, 43.332386, 43.093945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511650, 43.260460, 42.707073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785004, 43.225060, 42.417202>,  <42.949017, 43.203819, 42.243279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785004, 43.225060, 42.417202>,  <42.511650, 43.260460, 42.707073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785004, 43.225060, 42.417202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539690, -0.729716, -0.419821,
		-0.491652, 0.677999, -0.546439,
		0.683383, -0.088501, -0.724676,
		42.990017, 43.198509, 42.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121731, 43.201424, 42.105381>,  <42.511650, 43.260460, 42.707073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121731, 43.201424, 42.105381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474640, 43.043831, 42.002331>,  <42.686386, 42.949276, 41.940498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474640, 43.043831, 42.002331>,  <42.121731, 43.201424, 42.105381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474640, 43.043831, 42.002331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466815, -0.661783, -0.586624,
		0.060622, 0.637828, -0.767789,
		0.882275, -0.393978, -0.257629,
		42.739323, 42.925636, 41.925041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148373, 43.158253, 41.336849>,  <42.121731, 43.201424, 42.105381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148373, 43.158253, 41.336849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405685, 42.900223, 41.501801>,  <42.560074, 42.745403, 41.600773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405685, 42.900223, 41.501801>,  <42.148373, 43.158253, 41.336849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405685, 42.900223, 41.501801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367306, -0.732610, -0.573035,
		0.671767, 0.217154, -0.708218,
		0.643284, -0.645079, 0.412381,
		42.598671, 42.706699, 41.625515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773296, 42.918327, 40.991829>,  <42.148373, 43.158253, 41.336849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773296, 42.918327, 40.991829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672501, 42.613823, 41.230824>,  <42.612022, 42.431122, 41.374222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672501, 42.613823, 41.230824>,  <42.773296, 42.918327, 40.991829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672501, 42.613823, 41.230824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266370, -0.538997, -0.799080,
		0.930347, -0.360515, -0.066953,
		-0.251993, -0.761257, 0.597485,
		42.596901, 42.385445, 41.410069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525032, 42.328651, 40.498993>,  <42.773296, 42.918327, 40.991829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525032, 42.328651, 40.498993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529999, 42.163036, 40.863064>,  <42.532978, 42.063667, 41.081505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529999, 42.163036, 40.863064>,  <42.525032, 42.328651, 40.498993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529999, 42.163036, 40.863064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273497, -0.876941, -0.395188,
		0.961793, -0.244025, -0.124123,
		0.012413, -0.414036, 0.910176,
		42.533722, 42.038826, 41.136116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793259, 41.756321, 40.334438>,  <42.525032, 42.328651, 40.498993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793259, 41.756321, 40.334438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600338, 41.709053, 40.681637>,  <42.484585, 41.680691, 40.889957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600338, 41.709053, 40.681637>,  <42.793259, 41.756321, 40.334438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600338, 41.709053, 40.681637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325647, -0.895665, -0.302884,
		0.813227, -0.428743, 0.393500,
		-0.482303, -0.118171, 0.867997,
		42.455647, 41.673603, 40.942036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914665, 41.067799, 40.451862>,  <42.793259, 41.756321, 40.334438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914665, 41.067799, 40.451862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602390, 41.181316, 40.674568>,  <42.415028, 41.249428, 40.808193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602390, 41.181316, 40.674568>,  <42.914665, 41.067799, 40.451862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602390, 41.181316, 40.674568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364266, -0.930582, -0.036422,
		0.507780, -0.231245, 0.829871,
		-0.780685, 0.283799, 0.556766,
		42.368183, 41.266457, 40.841599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851673, 40.428566, 40.688335>,  <42.914665, 41.067799, 40.451862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851673, 40.428566, 40.688335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516228, 40.638340, 40.747257>,  <42.314960, 40.764202, 40.782608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516228, 40.638340, 40.747257>,  <42.851673, 40.428566, 40.688335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516228, 40.638340, 40.747257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544454, -0.798407, -0.257129,
		-0.017241, -0.295830, 0.955085,
		-0.838614, 0.524433, 0.147300,
		42.264645, 40.795670, 40.791447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351562, 40.091255, 41.116707>,  <42.851673, 40.428566, 40.688335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351562, 40.091255, 41.116707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180115, 40.319836, 40.836784>,  <42.077248, 40.456985, 40.668831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180115, 40.319836, 40.836784>,  <42.351562, 40.091255, 41.116707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180115, 40.319836, 40.836784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542703, -0.782099, -0.306260,
		-0.722331, 0.248518, 0.645350,
		-0.428616, 0.571455, -0.699806,
		42.051529, 40.491272, 40.626842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795456, 39.667007, 41.134933>,  <42.351562, 40.091255, 41.116707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795456, 39.667007, 41.134933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732197, 39.903755, 40.818787>,  <41.694241, 40.045803, 40.629097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732197, 39.903755, 40.818787>,  <41.795456, 39.667007, 41.134933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732197, 39.903755, 40.818787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677033, -0.647656, -0.349526,
		-0.718760, 0.479831, 0.503136,
		-0.158145, 0.591865, -0.790371,
		41.684753, 40.081314, 40.581676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031734, 39.722477, 41.156685>,  <41.795456, 39.667007, 41.134933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031734, 39.722477, 41.156685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174557, 39.789608, 40.789131>,  <41.260250, 39.829887, 40.568600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174557, 39.789608, 40.789131>,  <41.031734, 39.722477, 41.156685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174557, 39.789608, 40.789131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742813, -0.545424, -0.388254,
		-0.566341, 0.821186, -0.070081,
		0.357053, 0.167827, -0.918884,
		41.281673, 39.839954, 40.513466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773964, 39.265987, 40.561687>,  <41.031734, 39.722477, 41.156685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773964, 39.265987, 40.561687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521927, 38.965927, 40.481422>,  <40.370705, 38.785892, 40.433262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521927, 38.965927, 40.481422>,  <40.773964, 39.265987, 40.561687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521927, 38.965927, 40.481422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304025, -0.476099, 0.825166,
		-0.714534, 0.458920, 0.528048,
		-0.630088, -0.750148, -0.200666,
		40.332901, 38.740883, 40.421223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473614, 39.909813, 40.743160>,  <40.773964, 39.265987, 40.561687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473614, 39.909813, 40.743160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772148, 39.766800, 40.518608>,  <40.951271, 39.680992, 40.383877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772148, 39.766800, 40.518608>,  <40.473614, 39.909813, 40.743160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772148, 39.766800, 40.518608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651683, -0.563931, -0.507239,
		-0.135224, 0.744413, -0.653883,
		0.746340, -0.357534, -0.561378,
		40.996052, 39.659538, 40.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104904, 39.880657, 40.137081>,  <40.473614, 39.909813, 40.743160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104904, 39.880657, 40.137081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443119, 39.689274, 40.042305>,  <40.646049, 39.574444, 39.985439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443119, 39.689274, 40.042305>,  <40.104904, 39.880657, 40.137081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443119, 39.689274, 40.042305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498485, -0.548483, -0.671327,
		0.191247, 0.685742, -0.702269,
		0.845540, -0.478460, -0.236937,
		40.696781, 39.545734, 39.971226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055481, 39.783730, 39.472157>,  <40.104904, 39.880657, 40.137081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055481, 39.783730, 39.472157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324940, 39.508305, 39.579548>,  <40.486614, 39.343048, 39.643982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324940, 39.508305, 39.579548>,  <40.055481, 39.783730, 39.472157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324940, 39.508305, 39.579548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448431, -0.669576, -0.592097,
		0.587462, 0.278470, -0.759830,
		0.673645, -0.688566, 0.268476,
		40.527035, 39.301735, 39.660091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288151, 39.629745, 38.813202>,  <40.055481, 39.783730, 39.472157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288151, 39.629745, 38.813202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362347, 39.329025, 39.066307>,  <40.406864, 39.148594, 39.218170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362347, 39.329025, 39.066307>,  <40.288151, 39.629745, 38.813202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362347, 39.329025, 39.066307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283570, -0.657497, -0.698058,
		0.940841, -0.049952, -0.335145,
		0.185488, -0.751799, 0.632765,
		40.417992, 39.103485, 39.256138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724247, 39.178196, 38.492714>,  <40.288151, 39.629745, 38.813202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724247, 39.178196, 38.492714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481972, 38.973526, 38.736462>,  <40.336609, 38.850723, 38.882710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481972, 38.973526, 38.736462>,  <40.724247, 39.178196, 38.492714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481972, 38.973526, 38.736462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381197, -0.485637, -0.786668,
		0.698451, -0.708764, 0.099094,
		-0.605685, -0.511675, 0.609372,
		40.300266, 38.820023, 38.919273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649101, 38.637165, 38.120594>,  <40.724247, 39.178196, 38.492714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649101, 38.637165, 38.120594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399864, 38.560047, 38.423801>,  <40.250324, 38.513775, 38.605724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399864, 38.560047, 38.423801>,  <40.649101, 38.637165, 38.120594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399864, 38.560047, 38.423801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597971, -0.507287, -0.620556,
		0.504171, -0.839935, 0.200801,
		-0.623091, -0.192794, 0.758016,
		40.212936, 38.502209, 38.651207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503197, 37.917637, 38.060745>,  <40.649101, 38.637165, 38.120594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503197, 37.917637, 38.060745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197643, 38.040318, 38.287872>,  <40.014313, 38.113926, 38.424149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197643, 38.040318, 38.287872>,  <40.503197, 37.917637, 38.060745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197643, 38.040318, 38.287872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606131, -0.643025, -0.468107,
		0.221551, -0.701750, 0.677098,
		-0.763885, 0.306701, 0.567816,
		39.968479, 38.132328, 38.458218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096878, 37.278591, 38.295624>,  <40.503197, 37.917637, 38.060745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096878, 37.278591, 38.295624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869865, 37.607643, 38.309464>,  <39.733658, 37.805073, 38.317768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869865, 37.607643, 38.309464>,  <40.096878, 37.278591, 38.295624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869865, 37.607643, 38.309464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659495, -0.429019, -0.617260,
		-0.492930, -0.373132, 0.785998,
		-0.567527, 0.822627, 0.034602,
		39.699608, 37.854431, 38.319843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338070, 37.045792, 38.964489>,  <40.096878, 37.278591, 38.295624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338070, 37.045792, 38.964489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261383, 36.704758, 39.158951>,  <40.215370, 36.500137, 39.275627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261383, 36.704758, 39.158951>,  <40.338070, 37.045792, 38.964489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261383, 36.704758, 39.158951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980440, -0.143909, 0.134266,
		-0.044511, 0.502385, 0.863497,
		-0.191719, -0.852584, 0.486153,
		40.203869, 36.448982, 39.304798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637703, 36.957920, 39.628372>,  <40.338070, 37.045792, 38.964489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637703, 36.957920, 39.628372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607887, 36.586823, 39.482090>,  <40.589996, 36.364166, 39.394321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607887, 36.586823, 39.482090>,  <40.637703, 36.957920, 39.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607887, 36.586823, 39.482090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997123, -0.074406, -0.014492,
		-0.013766, -0.365732, 0.930618,
		-0.074544, -0.927741, -0.365704,
		40.585526, 36.308498, 39.372379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007248, 36.594975, 40.015179>,  <40.637703, 36.957920, 39.628372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007248, 36.594975, 40.015179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003452, 36.393291, 39.669765>,  <41.001175, 36.272282, 39.462517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003452, 36.393291, 39.669765>,  <41.007248, 36.594975, 40.015179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003452, 36.393291, 39.669765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999553, 0.019697, -0.022490,
		0.028349, -0.863357, 0.503797,
		-0.009493, -0.504210, -0.863529,
		41.000603, 36.242027, 39.410706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418961, 36.041553, 40.118557>,  <41.007248, 36.594975, 40.015179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418961, 36.041553, 40.118557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427097, 36.141464, 39.731323>,  <41.431980, 36.201412, 39.498981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427097, 36.141464, 39.731323>,  <41.418961, 36.041553, 40.118557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427097, 36.141464, 39.731323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998714, 0.039898, 0.031280,
		0.046438, -0.967480, -0.248648,
		0.020342, 0.249781, -0.968089,
		41.433201, 36.216400, 39.440895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157173, 36.092190, 40.003170>,  <41.418961, 36.041553, 40.118557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157173, 36.092190, 40.003170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001835, 36.167240, 39.642284>,  <41.908630, 36.212269, 39.425755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001835, 36.167240, 39.642284>,  <42.157173, 36.092190, 40.003170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001835, 36.167240, 39.642284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914468, 0.199295, -0.352178,
		0.113729, -0.961810, -0.248971,
		-0.388347, 0.187623, -0.902211,
		41.885330, 36.223526, 39.371620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679768, 35.852303, 39.613491>,  <42.157173, 36.092190, 40.003170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679768, 35.852303, 39.613491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458588, 36.072559, 39.363354>,  <42.325882, 36.204712, 39.213272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458588, 36.072559, 39.363354>,  <42.679768, 35.852303, 39.613491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458588, 36.072559, 39.363354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827429, 0.274573, -0.489868,
		-0.098039, -0.788294, -0.607438,
		-0.552946, 0.550638, -0.625339,
		42.292706, 36.237751, 39.175751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709129, 35.602596, 38.851784>,  <42.679768, 35.852303, 39.613491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709129, 35.602596, 38.851784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645817, 35.994492, 38.900875>,  <42.607830, 36.229630, 38.930328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645817, 35.994492, 38.900875>,  <42.709129, 35.602596, 38.851784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645817, 35.994492, 38.900875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792432, 0.200192, -0.576172,
		-0.589067, 0.006058, -0.808062,
		-0.158277, 0.979738, 0.122727,
		42.598335, 36.288414, 38.937695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364857, 35.924713, 38.358738>,  <42.709129, 35.602596, 38.851784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364857, 35.924713, 38.358738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024082, 35.725010, 38.295563>,  <42.819618, 35.605186, 38.257656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024082, 35.725010, 38.295563>,  <43.364857, 35.924713, 38.358738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024082, 35.725010, 38.295563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189204, 0.574731, -0.796170,
		0.488265, -0.648404, -0.584097,
		-0.851938, -0.499256, -0.157941,
		42.768501, 35.575233, 38.248180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380775, 36.675400, 38.468521>,  <43.364857, 35.924713, 38.358738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380775, 36.675400, 38.468521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455551, 37.017082, 38.274456>,  <43.500416, 37.222092, 38.158016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455551, 37.017082, 38.274456>,  <43.380775, 36.675400, 38.468521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455551, 37.017082, 38.274456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411780, -0.516524, -0.750760,
		-0.891904, -0.059437, -0.448303,
		0.186936, 0.854208, -0.485164,
		43.511631, 37.273346, 38.128906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121605, 36.591370, 37.682884>,  <43.380775, 36.675400, 38.468521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121605, 36.591370, 37.682884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411003, 36.866486, 37.706528>,  <43.584644, 37.031555, 37.720715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411003, 36.866486, 37.706528>,  <43.121605, 36.591370, 37.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411003, 36.866486, 37.706528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447050, -0.401570, -0.799305,
		-0.526018, 0.604720, -0.598012,
		0.723500, 0.687790, 0.059107,
		43.628052, 37.072823, 37.724258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161896, 36.803780, 37.046207>,  <43.121605, 36.591370, 37.682884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161896, 36.803780, 37.046207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514786, 36.901489, 37.207211>,  <43.726521, 36.960114, 37.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514786, 36.901489, 37.207211>,  <43.161896, 36.803780, 37.046207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514786, 36.901489, 37.207211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470830, -0.455134, -0.755760,
		-0.001418, 0.856261, -0.516541,
		0.882223, 0.244274, 0.402508,
		43.779453, 36.974773, 37.327965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484184, 36.782513, 36.406654>,  <43.161896, 36.803780, 37.046207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484184, 36.782513, 36.406654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751747, 36.783787, 36.703991>,  <43.912285, 36.784554, 36.882393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751747, 36.783787, 36.703991>,  <43.484184, 36.782513, 36.406654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751747, 36.783787, 36.703991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711873, -0.290661, -0.639338,
		0.214021, 0.956821, -0.196695,
		0.668904, 0.003190, 0.743342,
		43.952419, 36.784744, 36.926994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205185, 37.176208, 36.290714>,  <43.484184, 36.782513, 36.406654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205185, 37.176208, 36.290714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238804, 36.878288, 36.555504>,  <44.258976, 36.699535, 36.714378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238804, 36.878288, 36.555504>,  <44.205185, 37.176208, 36.290714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238804, 36.878288, 36.555504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838074, -0.306539, -0.451294,
		0.539045, 0.592715, 0.598431,
		0.084046, -0.744797, 0.661977,
		44.264019, 36.654850, 36.754097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957165, 37.137733, 36.682896>,  <44.205185, 37.176208, 36.290714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957165, 37.137733, 36.682896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761314, 36.801544, 36.590057>,  <44.643806, 36.599831, 36.534355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761314, 36.801544, 36.590057>,  <44.957165, 37.137733, 36.682896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761314, 36.801544, 36.590057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819844, -0.353139, -0.450720,
		0.296858, -0.410965, 0.861964,
		-0.489623, -0.840476, -0.232095,
		44.614426, 36.549400, 36.520428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353737, 36.675343, 36.947514>,  <44.957165, 37.137733, 36.682896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353737, 36.675343, 36.947514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120453, 36.469501, 36.696102>,  <44.980484, 36.345997, 36.545254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120453, 36.469501, 36.696102>,  <45.353737, 36.675343, 36.947514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120453, 36.469501, 36.696102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801683, -0.489432, -0.343162,
		-0.131031, -0.704019, 0.697989,
		-0.583210, -0.514602, -0.628531,
		44.945488, 36.315121, 36.507542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434719, 35.944096, 37.155178>,  <45.353737, 36.675343, 36.947514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434719, 35.944096, 37.155178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348042, 36.090897, 36.793327>,  <45.296036, 36.178978, 36.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348042, 36.090897, 36.793327>,  <45.434719, 35.944096, 37.155178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348042, 36.090897, 36.793327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538928, -0.727680, -0.424310,
		-0.814002, -0.579475, -0.040104,
		-0.216695, 0.367002, -0.904629,
		45.283031, 36.200996, 36.521938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176807, 35.334087, 36.728100>,  <45.434719, 35.944096, 37.155178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176807, 35.334087, 36.728100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336910, 35.627747, 36.508713>,  <45.432972, 35.803944, 36.377079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336910, 35.627747, 36.508713>,  <45.176807, 35.334087, 36.728100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336910, 35.627747, 36.508713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564209, -0.669039, -0.483792,
		-0.722124, -0.115810, -0.682001,
		0.400257, 0.734149, -0.548470,
		45.456989, 35.847992, 36.344173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261292, 35.112495, 35.979687>,  <45.176807, 35.334087, 36.728100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261292, 35.112495, 35.979687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527695, 35.400234, 36.058655>,  <45.687538, 35.572876, 36.106033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527695, 35.400234, 36.058655>,  <45.261292, 35.112495, 35.979687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527695, 35.400234, 36.058655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720767, -0.552413, -0.418731,
		-0.192156, 0.421171, -0.886392,
		0.666012, 0.719343, 0.197417,
		45.727497, 35.616035, 36.117878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686459, 35.022511, 35.356518>,  <45.261292, 35.112495, 35.979687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686459, 35.022511, 35.356518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863613, 35.253872, 35.630539>,  <45.969906, 35.392689, 35.794952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863613, 35.253872, 35.630539>,  <45.686459, 35.022511, 35.356518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863613, 35.253872, 35.630539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813384, -0.580635, -0.035619,
		0.377165, 0.572989, -0.727619,
		0.442891, 0.578400, 0.685056,
		45.996479, 35.427391, 35.836056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463783, 35.112251, 35.213253>,  <45.686459, 35.022511, 35.356518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463783, 35.112251, 35.213253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417847, 35.167786, 35.606705>,  <46.390285, 35.201107, 35.842777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417847, 35.167786, 35.606705>,  <46.463783, 35.112251, 35.213253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417847, 35.167786, 35.606705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633213, -0.752715, 0.180173,
		0.765410, 0.643541, -0.001467,
		-0.114845, 0.138835, 0.983634,
		46.383392, 35.209435, 35.901794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139759, 35.026714, 35.091217>,  <46.463783, 35.112251, 35.213253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139759, 35.026714, 35.091217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462566, 34.993786, 34.857311>,  <47.656250, 34.974030, 34.716969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462566, 34.993786, 34.857311>,  <47.139759, 35.026714, 35.091217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462566, 34.993786, 34.857311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436699, -0.749779, -0.497118,
		-0.397518, 0.656548, -0.641034,
		0.807015, -0.082326, -0.584764,
		47.704670, 34.969090, 34.681881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.323586, 27.875351, 34.128819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.068951, 27.797985, 34.427441>,  <34.916168, 27.751566, 34.606613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.068951, 27.797985, 34.427441>,  <35.323586, 27.875351, 34.128819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068951, 27.797985, 34.427441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508488, 0.622548, 0.594873,
		-0.579824, 0.758304, -0.297958,
		-0.636588, -0.193414, 0.746557,
		34.877975, 27.739962, 34.651409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259342, 28.408146, 34.413464>,  <35.323586, 27.875351, 34.128819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259342, 28.408146, 34.413464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133617, 28.188845, 34.723465>,  <35.058182, 28.057264, 34.909466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133617, 28.188845, 34.723465>,  <35.259342, 28.408146, 34.413464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133617, 28.188845, 34.723465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324402, 0.705201, 0.630441,
		-0.892172, 0.449567, -0.043799,
		-0.314312, -0.548253, 0.775001,
		35.039322, 28.024368, 34.955967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922245, 28.845810, 34.942490>,  <35.259342, 28.408146, 34.413464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922245, 28.845810, 34.942490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013577, 28.517712, 35.152275>,  <35.068375, 28.320852, 35.278145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013577, 28.517712, 35.152275>,  <34.922245, 28.845810, 34.942490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013577, 28.517712, 35.152275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206005, 0.567198, 0.797401,
		-0.951540, -0.074028, 0.298483,
		0.228329, -0.820247, 0.524462,
		35.082077, 28.271637, 35.309612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544849, 29.003178, 35.556011>,  <34.922245, 28.845810, 34.942490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544849, 29.003178, 35.556011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796665, 28.706604, 35.648926>,  <34.947754, 28.528660, 35.704674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796665, 28.706604, 35.648926>,  <34.544849, 29.003178, 35.556011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796665, 28.706604, 35.648926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162452, 0.417967, 0.893819,
		-0.759799, -0.524955, 0.383573,
		0.629536, -0.741435, 0.232291,
		34.985527, 28.484173, 35.718613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335617, 28.860264, 36.177429>,  <34.544849, 29.003178, 35.556011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335617, 28.860264, 36.177429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.715969, 28.739832, 36.148647>,  <34.944180, 28.667572, 36.131378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.715969, 28.739832, 36.148647>,  <34.335617, 28.860264, 36.177429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715969, 28.739832, 36.148647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180548, 0.350590, 0.918961,
		-0.251456, -0.886813, 0.387728,
		0.950880, -0.301081, -0.071954,
		35.001232, 28.649508, 36.127060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455994, 28.529119, 36.815334>,  <34.335617, 28.860264, 36.177429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455994, 28.529119, 36.815334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821144, 28.628695, 36.685913>,  <35.040234, 28.688438, 36.608261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821144, 28.628695, 36.685913>,  <34.455994, 28.529119, 36.815334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821144, 28.628695, 36.685913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281084, 0.191479, 0.940387,
		0.296050, -0.949403, 0.104825,
		0.912878, 0.248937, -0.323550,
		35.095009, 28.703375, 36.588848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934666, 28.495079, 37.448105>,  <34.455994, 28.529119, 36.815334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934666, 28.495079, 37.448105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167950, 28.692305, 37.189880>,  <35.307922, 28.810640, 37.034946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167950, 28.692305, 37.189880>,  <34.934666, 28.495079, 37.448105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167950, 28.692305, 37.189880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422408, 0.494737, 0.759478,
		0.693854, -0.715629, 0.080264,
		0.583214, 0.493062, -0.645562,
		35.342915, 28.840223, 36.996212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615265, 28.461277, 37.701523>,  <34.934666, 28.495079, 37.448105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615265, 28.461277, 37.701523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592609, 28.772568, 37.451355>,  <35.579014, 28.959343, 37.301254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592609, 28.772568, 37.451355>,  <35.615265, 28.461277, 37.701523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592609, 28.772568, 37.451355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421388, 0.586533, 0.691672,
		0.905110, -0.224367, -0.361159,
		-0.056643, 0.778228, -0.625422,
		35.575615, 29.006037, 37.263729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265793, 28.790365, 37.872414>,  <35.615265, 28.461277, 37.701523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265793, 28.790365, 37.872414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060734, 29.057468, 37.656528>,  <35.937698, 29.217731, 37.526997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060734, 29.057468, 37.656528>,  <36.265793, 28.790365, 37.872414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060734, 29.057468, 37.656528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455814, 0.744365, 0.488010,
		0.727617, 0.004169, -0.685971,
		-0.512648, 0.667760, -0.539713,
		35.906940, 29.257797, 37.494614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725342, 29.307554, 37.557018>,  <36.265793, 28.790365, 37.872414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725342, 29.307554, 37.557018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367390, 29.484915, 37.577362>,  <36.152618, 29.591331, 37.589569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367390, 29.484915, 37.577362>,  <36.725342, 29.307554, 37.557018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367390, 29.484915, 37.577362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419045, 0.795521, 0.437660,
		0.153600, 0.412965, -0.897701,
		-0.894879, 0.443402, 0.050859,
		36.098927, 29.617935, 37.592621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841736, 29.978685, 37.441509>,  <36.725342, 29.307554, 37.557018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841736, 29.978685, 37.441509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490158, 29.996534, 37.631443>,  <36.279213, 30.007244, 37.745403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490158, 29.996534, 37.631443>,  <36.841736, 29.978685, 37.441509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490158, 29.996534, 37.631443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296800, 0.830509, 0.471344,
		-0.373325, 0.555215, -0.743212,
		-0.878942, 0.044621, 0.474838,
		36.226475, 30.009920, 37.773895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616909, 30.644785, 37.389606>,  <36.841736, 29.978685, 37.441509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616909, 30.644785, 37.389606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.432163, 30.483135, 37.705418>,  <36.321316, 30.386145, 37.894905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.432163, 30.483135, 37.705418>,  <36.616909, 30.644785, 37.389606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432163, 30.483135, 37.705418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238250, 0.800921, 0.549329,
		-0.854350, 0.441824, -0.273637,
		-0.461869, -0.404125, 0.789531,
		36.293602, 30.361898, 37.942276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184982, 31.135248, 37.642563>,  <36.616909, 30.644785, 37.389606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184982, 31.135248, 37.642563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289322, 30.887751, 37.938972>,  <36.351925, 30.739252, 38.116817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289322, 30.887751, 37.938972>,  <36.184982, 31.135248, 37.642563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289322, 30.887751, 37.938972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204366, 0.785591, 0.584022,
		-0.943500, -0.000903, 0.331372,
		0.260851, -0.618745, 0.741020,
		36.367577, 30.702127, 38.161278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959694, 31.442722, 38.188168>,  <36.184982, 31.135248, 37.642563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959694, 31.442722, 38.188168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207214, 31.187346, 38.371243>,  <36.355728, 31.034119, 38.481087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207214, 31.187346, 38.371243>,  <35.959694, 31.442722, 38.188168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207214, 31.187346, 38.371243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250324, 0.712521, 0.655478,
		-0.744594, -0.291042, 0.600728,
		0.618803, -0.638442, 0.457684,
		36.392857, 30.995813, 38.508549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841343, 31.513174, 38.894714>,  <35.959694, 31.442722, 38.188168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841343, 31.513174, 38.894714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.209522, 31.357027, 38.886768>,  <36.430428, 31.263338, 38.882000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.209522, 31.357027, 38.886768>,  <35.841343, 31.513174, 38.894714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209522, 31.357027, 38.886768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297951, 0.667834, 0.682073,
		-0.252996, -0.633728, 0.731014,
		0.920445, -0.390368, -0.019860,
		36.485657, 31.239916, 38.880810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993668, 31.306496, 39.621201>,  <35.841343, 31.513174, 38.894714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993668, 31.306496, 39.621201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326889, 31.369991, 39.409233>,  <36.526821, 31.408089, 39.282051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326889, 31.369991, 39.409233>,  <35.993668, 31.306496, 39.621201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326889, 31.369991, 39.409233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343537, 0.602379, 0.720501,
		0.433585, -0.782267, 0.447284,
		0.833059, 0.158739, -0.529920,
		36.576805, 31.417614, 39.250256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586349, 31.185375, 40.051693>,  <35.993668, 31.306496, 39.621201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586349, 31.185375, 40.051693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760746, 31.406981, 39.768009>,  <36.865383, 31.539944, 39.597797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760746, 31.406981, 39.768009>,  <36.586349, 31.185375, 40.051693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760746, 31.406981, 39.768009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491224, 0.513805, 0.703351,
		0.754063, -0.655037, -0.048130,
		0.435991, 0.554014, -0.709211,
		36.891544, 31.573185, 39.555244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250942, 31.502884, 40.387215>,  <36.586349, 31.185375, 40.051693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250942, 31.502884, 40.387215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187149, 31.713757, 40.053356>,  <37.148872, 31.840281, 39.853039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187149, 31.713757, 40.053356>,  <37.250942, 31.502884, 40.387215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187149, 31.713757, 40.053356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455991, 0.789214, 0.411354,
		0.875577, -0.314988, -0.366260,
		-0.159486, 0.527184, -0.834651,
		37.139305, 31.871912, 39.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820755, 31.819935, 40.380882>,  <37.250942, 31.502884, 40.387215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820755, 31.819935, 40.380882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579651, 32.040134, 40.149837>,  <37.434990, 32.172253, 40.011211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579651, 32.040134, 40.149837>,  <37.820755, 31.819935, 40.380882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579651, 32.040134, 40.149837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346254, 0.832640, 0.432225,
		0.718882, 0.060526, -0.692492,
		-0.602758, 0.550497, -0.577612,
		37.398823, 32.205284, 39.976555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146820, 32.448006, 40.043205>,  <37.820755, 31.819935, 40.380882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146820, 32.448006, 40.043205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758049, 32.541939, 40.048943>,  <37.524784, 32.598297, 40.052383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758049, 32.541939, 40.048943>,  <38.146820, 32.448006, 40.043205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758049, 32.541939, 40.048943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218490, 0.878334, 0.425197,
		0.087252, 0.416395, -0.904988,
		-0.971931, 0.234830, 0.014341,
		37.466469, 32.612389, 40.053246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203682, 33.098743, 40.015255>,  <38.146820, 32.448006, 40.043205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203682, 33.098743, 40.015255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816463, 33.068218, 40.110802>,  <37.584133, 33.049904, 40.168129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816463, 33.068218, 40.110802>,  <38.203682, 33.098743, 40.015255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816463, 33.068218, 40.110802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099933, 0.756267, 0.646586,
		-0.229989, 0.649797, -0.724478,
		-0.968049, -0.076308, 0.238869,
		37.526051, 33.045326, 40.182461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888630, 33.814266, 39.932957>,  <38.203682, 33.098743, 40.015255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888630, 33.814266, 39.932957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670231, 33.599964, 40.190590>,  <37.539192, 33.471382, 40.345169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670231, 33.599964, 40.190590>,  <37.888630, 33.814266, 39.932957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670231, 33.599964, 40.190590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112959, 0.714699, 0.690250,
		-0.830136, 0.449632, -0.329706,
		-0.545999, -0.535758, 0.644087,
		37.506432, 33.439236, 40.383816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964527, 34.192169, 39.360775>,  <37.888630, 33.814266, 39.932957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964527, 34.192169, 39.360775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201317, 34.425320, 39.138126>,  <38.343391, 34.565208, 39.004536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201317, 34.425320, 39.138126>,  <37.964527, 34.192169, 39.360775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201317, 34.425320, 39.138126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034849, -0.671473, -0.740209,
		-0.805206, 0.457580, -0.377180,
		0.591971, 0.582876, -0.556620,
		38.378906, 34.600182, 38.971142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678459, 34.296707, 38.563980>,  <37.964527, 34.192169, 39.360775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678459, 34.296707, 38.563980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074520, 34.352703, 38.562820>,  <38.312157, 34.386299, 38.562126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074520, 34.352703, 38.562820>,  <37.678459, 34.296707, 38.563980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074520, 34.352703, 38.562820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065382, -0.480522, -0.874542,
		-0.123819, 0.865737, -0.484941,
		0.990149, 0.139991, -0.002894,
		38.371563, 34.394699, 38.561951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786285, 34.582176, 37.897400>,  <37.678459, 34.296707, 38.563980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786285, 34.582176, 37.897400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141739, 34.451138, 38.025776>,  <38.355011, 34.372513, 38.102802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141739, 34.451138, 38.025776>,  <37.786285, 34.582176, 37.897400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141739, 34.451138, 38.025776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095633, -0.552063, -0.828300,
		0.448529, 0.766751, -0.459255,
		0.888637, -0.327597, 0.320943,
		38.408329, 34.352859, 38.122059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186039, 34.592964, 37.306442>,  <37.786285, 34.582176, 37.897400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186039, 34.592964, 37.306442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373867, 34.342407, 37.555328>,  <38.486565, 34.192074, 37.704659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373867, 34.342407, 37.555328>,  <38.186039, 34.592964, 37.306442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373867, 34.342407, 37.555328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148297, -0.638768, -0.754972,
		0.870354, 0.446781, -0.207052,
		0.469565, -0.626388, 0.622211,
		38.514736, 34.154491, 37.741993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927311, 34.534889, 37.051277>,  <38.186039, 34.592964, 37.306442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927311, 34.534889, 37.051277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802563, 34.220402, 37.264671>,  <38.727715, 34.031712, 37.392708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802563, 34.220402, 37.264671>,  <38.927311, 34.534889, 37.051277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802563, 34.220402, 37.264671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119601, -0.589505, -0.798862,
		0.942567, -0.185338, 0.277881,
		-0.311871, -0.786215, 0.533481,
		38.709000, 33.984539, 37.424717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339241, 34.000973, 36.815384>,  <38.927311, 34.534889, 37.051277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339241, 34.000973, 36.815384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099201, 33.737000, 36.996212>,  <38.955177, 33.578613, 37.104710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099201, 33.737000, 36.996212>,  <39.339241, 34.000973, 36.815384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099201, 33.737000, 36.996212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083824, -0.510147, -0.855993,
		0.795523, -0.551574, 0.250819,
		-0.600098, -0.659937, 0.452069,
		38.919170, 33.539017, 37.131832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575531, 33.225483, 36.870911>,  <39.339241, 34.000973, 36.815384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575531, 33.225483, 36.870911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177158, 33.233822, 36.905972>,  <38.938133, 33.238827, 36.927010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177158, 33.233822, 36.905972>,  <39.575531, 33.225483, 36.870911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177158, 33.233822, 36.905972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079741, -0.656853, -0.749790,
		0.041945, -0.753730, 0.655844,
		-0.995933, 0.020848, 0.087655,
		38.878380, 33.240078, 36.932266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320671, 32.464340, 36.791779>,  <39.575531, 33.225483, 36.870911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320671, 32.464340, 36.791779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005367, 32.705299, 36.741547>,  <38.816185, 32.849873, 36.711407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005367, 32.705299, 36.741547>,  <39.320671, 32.464340, 36.791779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005367, 32.705299, 36.741547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416949, -0.672957, -0.610969,
		-0.452552, -0.429242, 0.781632,
		-0.788258, 0.602395, -0.125576,
		38.768890, 32.886017, 36.703873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853977, 31.995796, 36.903427>,  <39.320671, 32.464340, 36.791779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853977, 31.995796, 36.903427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668514, 32.295921, 36.714939>,  <38.557236, 32.475998, 36.601845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668514, 32.295921, 36.714939>,  <38.853977, 31.995796, 36.903427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668514, 32.295921, 36.714939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489009, -0.660214, -0.570076,
		-0.738845, -0.033886, 0.673023,
		-0.463657, 0.750312, -0.471226,
		38.529415, 32.521015, 36.573570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056736, 31.871290, 36.943321>,  <38.853977, 31.995796, 36.903427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056736, 31.871290, 36.943321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194683, 32.079929, 36.631168>,  <38.277451, 32.205112, 36.443874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194683, 32.079929, 36.631168>,  <38.056736, 31.871290, 36.943321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194683, 32.079929, 36.631168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449452, -0.638124, -0.625132,
		-0.824051, 0.566333, 0.014367,
		0.344865, 0.521598, -0.780387,
		38.298141, 32.236408, 36.397053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446404, 31.854509, 36.619495>,  <38.056736, 31.871290, 36.943321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446404, 31.854509, 36.619495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723499, 31.960922, 36.351364>,  <37.889755, 32.024769, 36.190483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723499, 31.960922, 36.351364>,  <37.446404, 31.854509, 36.619495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723499, 31.960922, 36.351364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492839, -0.503961, -0.709319,
		-0.526523, 0.821736, -0.218001,
		0.692737, 0.266033, -0.670330,
		37.931320, 32.040733, 36.150265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081665, 32.055706, 35.983604>,  <37.446404, 31.854509, 36.619495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081665, 32.055706, 35.983604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449917, 31.961193, 35.859276>,  <37.670868, 31.904486, 35.784679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449917, 31.961193, 35.859276>,  <37.081665, 32.055706, 35.983604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449917, 31.961193, 35.859276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390164, -0.527241, -0.754843,
		0.014481, 0.816203, -0.577584,
		0.920631, -0.236284, -0.310818,
		37.726105, 31.890308, 35.766029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085152, 32.328854, 35.319206>,  <37.081665, 32.055706, 35.983604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085152, 32.328854, 35.319206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342506, 32.029079, 35.381683>,  <37.496922, 31.849215, 35.419170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342506, 32.029079, 35.381683>,  <37.085152, 32.328854, 35.319206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342506, 32.029079, 35.381683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345199, -0.466128, -0.814593,
		0.683290, 0.470185, -0.558606,
		0.643391, -0.749434, 0.156193,
		37.535522, 31.804249, 35.428543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264912, 32.114349, 34.666393>,  <37.085152, 32.328854, 35.319206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264912, 32.114349, 34.666393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395676, 31.800020, 34.876389>,  <37.474136, 31.611422, 35.002384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395676, 31.800020, 34.876389>,  <37.264912, 32.114349, 34.666393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395676, 31.800020, 34.876389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303260, -0.613358, -0.729263,
		0.895076, 0.079199, -0.438824,
		0.326913, -0.785824, 0.524985,
		37.493748, 31.564274, 35.033882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697628, 31.709213, 34.199860>,  <37.264912, 32.114349, 34.666393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697628, 31.709213, 34.199860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564243, 31.450153, 34.473896>,  <37.484215, 31.294718, 34.638317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564243, 31.450153, 34.473896>,  <37.697628, 31.709213, 34.199860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564243, 31.450153, 34.473896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308469, -0.611735, -0.728441,
		0.890871, -0.454236, 0.004209,
		-0.333459, -0.647649, 0.685095,
		37.464207, 31.255859, 34.679424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801376, 30.986889, 33.973007>,  <37.697628, 31.709213, 34.199860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801376, 30.986889, 33.973007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559879, 30.929167, 34.286610>,  <37.414982, 30.894533, 34.474773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559879, 30.929167, 34.286610>,  <37.801376, 30.986889, 33.973007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559879, 30.929167, 34.286610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375222, -0.816283, -0.439192,
		0.703351, -0.559337, 0.438679,
		-0.603743, -0.144304, 0.784010,
		37.378757, 30.885876, 34.521812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979725, 30.284147, 34.132175>,  <37.801376, 30.986889, 33.973007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979725, 30.284147, 34.132175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627243, 30.410532, 34.272827>,  <37.415752, 30.486362, 34.357220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627243, 30.410532, 34.272827>,  <37.979725, 30.284147, 34.132175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627243, 30.410532, 34.272827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420003, -0.864664, -0.275596,
		0.216966, -0.390543, 0.894651,
		-0.881205, 0.315961, 0.351632,
		37.362881, 30.505320, 34.378319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706032, 29.689096, 34.426968>,  <37.979725, 30.284147, 34.132175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706032, 29.689096, 34.426968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398235, 29.935219, 34.358528>,  <37.213558, 30.082891, 34.317463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398235, 29.935219, 34.358528>,  <37.706032, 29.689096, 34.426968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398235, 29.935219, 34.358528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516066, -0.756891, -0.400989,
		-0.376236, -0.220260, 0.899962,
		-0.769495, 0.615306, -0.171101,
		37.167385, 30.119810, 34.307198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.157104, 29.254814, 34.621483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996437, 29.539843, 34.391384>,  <36.900036, 29.710859, 34.253326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996437, 29.539843, 34.391384>,  <37.157104, 29.254814, 34.621483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996437, 29.539843, 34.391384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764178, -0.606956, -0.218261,
		-0.504674, 0.351920, 0.788325,
		-0.401668, 0.712571, -0.575244,
		36.875938, 29.753614, 34.218811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500111, 29.139515, 34.652554>,  <37.157104, 29.254814, 34.621483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500111, 29.139515, 34.652554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537075, 29.341797, 34.309456>,  <36.559254, 29.463167, 34.103600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537075, 29.341797, 34.309456>,  <36.500111, 29.139515, 34.652554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537075, 29.341797, 34.309456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465311, -0.739650, -0.486214,
		-0.880310, 0.444049, 0.166958,
		0.092412, 0.505706, -0.857742,
		36.564800, 29.493509, 34.052132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857704, 29.003979, 34.308559>,  <36.500111, 29.139515, 34.652554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857704, 29.003979, 34.308559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104477, 29.140345, 34.024822>,  <36.252541, 29.222164, 33.854580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104477, 29.140345, 34.024822>,  <35.857704, 29.003979, 34.308559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104477, 29.140345, 34.024822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305135, -0.727196, -0.614881,
		-0.725455, 0.595786, -0.344606,
		0.616934, 0.340917, -0.709344,
		36.289558, 29.242620, 33.812019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400311, 29.162010, 33.598358>,  <35.857704, 29.003979, 34.308559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400311, 29.162010, 33.598358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778282, 29.112432, 33.477203>,  <36.005066, 29.082685, 33.404510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778282, 29.112432, 33.477203>,  <35.400311, 29.162010, 33.598358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778282, 29.112432, 33.477203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315632, -0.589711, -0.743382,
		-0.086478, 0.798047, -0.596358,
		0.944933, -0.123944, -0.302886,
		36.061764, 29.075249, 33.386337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297050, 29.093433, 32.897247>,  <35.400311, 29.162010, 33.598358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297050, 29.093433, 32.897247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667526, 28.952654, 32.951359>,  <35.889812, 28.868187, 32.983826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667526, 28.952654, 32.951359>,  <35.297050, 29.093433, 32.897247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667526, 28.952654, 32.951359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115080, -0.605524, -0.787462,
		0.359060, 0.713774, -0.601334,
		0.926193, -0.351947, 0.135279,
		35.945385, 28.847069, 32.991943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573769, 29.162039, 32.294956>,  <35.297050, 29.093433, 32.897247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573769, 29.162039, 32.294956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809216, 28.882338, 32.457230>,  <35.950485, 28.714518, 32.554592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809216, 28.882338, 32.457230>,  <35.573769, 29.162039, 32.294956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809216, 28.882338, 32.457230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030973, -0.520961, -0.853018,
		0.807818, 0.489537, -0.328305,
		0.588618, -0.699252, 0.405679,
		35.985802, 28.672562, 32.578934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052357, 29.066223, 31.805639>,  <35.573769, 29.162039, 32.294956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052357, 29.066223, 31.805639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050961, 28.746540, 32.046059>,  <36.050121, 28.554731, 32.190311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050961, 28.746540, 32.046059>,  <36.052357, 29.066223, 31.805639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050961, 28.746540, 32.046059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137072, -0.594994, -0.791956,
		0.990555, -0.085154, -0.107469,
		-0.003495, -0.799206, 0.601047,
		36.049911, 28.506779, 32.226372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147194, 28.644012, 31.400698>,  <36.052357, 29.066223, 31.805639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147194, 28.644012, 31.400698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010738, 28.426924, 31.707703>,  <35.928864, 28.296671, 31.891905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010738, 28.426924, 31.707703>,  <36.147194, 28.644012, 31.400698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010738, 28.426924, 31.707703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468459, -0.609721, -0.639364,
		0.814965, -0.577662, -0.046242,
		-0.341142, -0.542721, 0.767513,
		35.908398, 28.264107, 31.937956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555264, 28.009361, 31.495790>,  <36.147194, 28.644012, 31.400698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555264, 28.009361, 31.495790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203842, 27.950825, 31.677660>,  <35.992989, 27.915703, 31.786781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203842, 27.950825, 31.677660>,  <36.555264, 28.009361, 31.495790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203842, 27.950825, 31.677660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266232, -0.640294, -0.720516,
		0.396566, -0.754061, 0.523572,
		-0.878553, -0.146340, 0.454674,
		35.940277, 27.906923, 31.814062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438080, 27.272106, 31.658318>,  <36.555264, 28.009361, 31.495790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438080, 27.272106, 31.658318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069202, 27.426651, 31.651608>,  <35.847874, 27.519377, 31.647581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069202, 27.426651, 31.651608>,  <36.438080, 27.272106, 31.658318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069202, 27.426651, 31.651608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298755, -0.739290, -0.603486,
		-0.245563, -0.551521, 0.797197,
		-0.922195, 0.386360, -0.016773,
		35.792545, 27.542559, 31.646576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955032, 26.694225, 31.730322>,  <36.438080, 27.272106, 31.658318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955032, 26.694225, 31.730322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726650, 26.986521, 31.580641>,  <35.589619, 27.161898, 31.490831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726650, 26.986521, 31.580641>,  <35.955032, 26.694225, 31.730322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726650, 26.986521, 31.580641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393948, -0.643759, -0.656033,
		-0.720285, -0.227151, 0.655432,
		-0.570959, 0.730737, -0.374205,
		35.555363, 27.205742, 31.468380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291340, 26.324078, 31.706358>,  <35.955032, 26.694225, 31.730322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291340, 26.324078, 31.706358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213470, 26.643436, 31.478439>,  <35.166748, 26.835051, 31.341688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213470, 26.643436, 31.478439>,  <35.291340, 26.324078, 31.706358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213470, 26.643436, 31.478439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525857, -0.575323, -0.626481,
		-0.827996, 0.177674, 0.531840,
		-0.194670, 0.798396, -0.569796,
		35.155071, 26.882956, 31.307501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624363, 26.260775, 31.429291>,  <35.291340, 26.324078, 31.706358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624363, 26.260775, 31.429291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791382, 26.522921, 31.177530>,  <34.891594, 26.680208, 31.026474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791382, 26.522921, 31.177530>,  <34.624363, 26.260775, 31.429291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791382, 26.522921, 31.177530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367479, -0.511709, -0.776604,
		-0.831031, 0.555562, 0.027170,
		0.417549, 0.655366, -0.629404,
		34.916645, 26.719530, 30.988708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096714, 26.466610, 30.976904>,  <34.624363, 26.260775, 31.429291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096714, 26.466610, 30.976904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435154, 26.566925, 30.788771>,  <34.638218, 26.627115, 30.675890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435154, 26.566925, 30.788771>,  <34.096714, 26.466610, 30.976904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435154, 26.566925, 30.788771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347171, -0.410262, -0.843301,
		-0.404451, 0.876806, -0.260058,
		0.846104, 0.250789, -0.470333,
		34.688984, 26.642162, 30.647671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894005, 26.878685, 30.435404>,  <34.096714, 26.466610, 30.976904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894005, 26.878685, 30.435404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245316, 26.706755, 30.351606>,  <34.456100, 26.603598, 30.301329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245316, 26.706755, 30.351606>,  <33.894005, 26.878685, 30.435404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245316, 26.706755, 30.351606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293812, -0.139458, -0.945635,
		0.377242, 0.892078, -0.248770,
		0.878273, -0.429824, -0.209494,
		34.508797, 26.577806, 30.288757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097752, 27.172279, 29.708475>,  <33.894005, 26.878685, 30.435404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097752, 27.172279, 29.708475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336353, 26.859829, 29.782261>,  <34.479515, 26.672359, 29.826532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336353, 26.859829, 29.782261>,  <34.097752, 27.172279, 29.708475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336353, 26.859829, 29.782261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212021, -0.375024, -0.902444,
		0.774099, 0.499201, -0.389318,
		0.596504, -0.781124, 0.184464,
		34.515305, 26.625492, 29.837601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527557, 27.079420, 29.053223>,  <34.097752, 27.172279, 29.708475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527557, 27.079420, 29.053223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526512, 26.722538, 29.233871>,  <34.525887, 26.508410, 29.342260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526512, 26.722538, 29.233871>,  <34.527557, 27.079420, 29.053223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526512, 26.722538, 29.233871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440306, -0.404464, -0.801585,
		0.897844, -0.200943, -0.391788,
		-0.002609, -0.892205, 0.451622,
		34.525730, 26.454876, 29.369358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765877, 26.605793, 28.596470>,  <34.527557, 27.079420, 29.053223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765877, 26.605793, 28.596470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589981, 26.365534, 28.863558>,  <34.484444, 26.221378, 29.023811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589981, 26.365534, 28.863558>,  <34.765877, 26.605793, 28.596470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589981, 26.365534, 28.863558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468057, -0.481251, -0.741161,
		0.766517, -0.638451, -0.069510,
		-0.439743, -0.600647, 0.667719,
		34.458057, 26.185339, 29.063873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779022, 26.110769, 28.200720>,  <34.765877, 26.605793, 28.596470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779022, 26.110769, 28.200720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518486, 26.024235, 28.491634>,  <34.362164, 25.972313, 28.666183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518486, 26.024235, 28.491634>,  <34.779022, 26.110769, 28.200720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518486, 26.024235, 28.491634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569427, -0.494134, -0.656951,
		0.501501, -0.842039, 0.198663,
		-0.651344, -0.216338, 0.727288,
		34.323082, 25.959333, 28.709822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538979, 25.433718, 28.116409>,  <34.779022, 26.110769, 28.200720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538979, 25.433718, 28.116409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254246, 25.556843, 28.368931>,  <34.083405, 25.630718, 28.520445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254246, 25.556843, 28.368931>,  <34.538979, 25.433718, 28.116409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254246, 25.556843, 28.368931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696204, -0.427885, -0.576380,
		0.092709, -0.849803, 0.518883,
		-0.711832, 0.307813, 0.631305,
		34.040695, 25.649187, 28.558323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053974, 24.929115, 28.164133>,  <34.538979, 25.433718, 28.116409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053974, 24.929115, 28.164133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862579, 25.261845, 28.276648>,  <33.747742, 25.461481, 28.344156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862579, 25.261845, 28.276648>,  <34.053974, 24.929115, 28.164133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862579, 25.261845, 28.276648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829819, -0.323605, -0.454621,
		-0.287138, -0.450947, 0.845103,
		-0.478489, 0.831822, 0.281285,
		33.719032, 25.511391, 28.361032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433765, 24.799034, 28.381100>,  <34.053974, 24.929115, 28.164133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433765, 24.799034, 28.381100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365524, 25.181721, 28.286791>,  <33.324581, 25.411333, 28.230206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365524, 25.181721, 28.286791>,  <33.433765, 24.799034, 28.381100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365524, 25.181721, 28.286791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737526, -0.282659, -0.613318,
		-0.653415, 0.069258, 0.753825,
		-0.170598, 0.956717, -0.235773,
		33.314346, 25.468737, 28.216059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784836, 24.926825, 28.474987>,  <33.433765, 24.799034, 28.381100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784836, 24.926825, 28.474987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934494, 25.171804, 28.196442>,  <33.024288, 25.318792, 28.029314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934494, 25.171804, 28.196442>,  <32.784836, 24.926825, 28.474987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934494, 25.171804, 28.196442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662689, -0.348724, -0.662748,
		-0.648738, 0.709435, 0.275391,
		0.374141, 0.612448, -0.696366,
		33.046738, 25.355539, 27.987532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237190, 24.833845, 27.911064>,  <32.784836, 24.926825, 28.474987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237190, 24.833845, 27.911064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074245, 24.594673, 28.187193>,  <31.976480, 24.451170, 28.352869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074245, 24.594673, 28.187193>,  <32.237190, 24.833845, 27.911064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074245, 24.594673, 28.187193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906112, -0.359055, 0.223697,
		0.114108, 0.716632, 0.688054,
		-0.407357, -0.597929, 0.690320,
		31.952038, 24.415295, 28.394289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905989, 25.521988, 27.928717>,  <32.237190, 24.833845, 27.911064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905989, 25.521988, 27.928717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.633303, 25.308311, 28.128677>,  <31.469690, 25.180105, 28.248653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.633303, 25.308311, 28.128677>,  <31.905989, 25.521988, 27.928717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633303, 25.308311, 28.128677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198362, 0.522732, 0.829098,
		-0.704212, 0.664372, -0.250392,
		-0.681717, -0.534192, 0.499900,
		31.428787, 25.148054, 28.278648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548910, 25.950869, 28.295656>,  <31.905989, 25.521988, 27.928717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548910, 25.950869, 28.295656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.475557, 25.601076, 28.475279>,  <31.431545, 25.391201, 28.583052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.475557, 25.601076, 28.475279>,  <31.548910, 25.950869, 28.295656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475557, 25.601076, 28.475279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134150, 0.430266, 0.892678,
		-0.973845, 0.223941, 0.038409,
		-0.183381, -0.874483, 0.449055,
		31.420544, 25.338732, 28.609995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447720, 26.228106, 28.848249>,  <31.548910, 25.950869, 28.295656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447720, 26.228106, 28.848249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421041, 25.841463, 28.947224>,  <31.405035, 25.609478, 29.006607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421041, 25.841463, 28.947224>,  <31.447720, 26.228106, 28.848249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421041, 25.841463, 28.947224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161742, 0.255179, 0.953270,
		-0.984577, 0.023556, -0.173359,
		-0.066693, -0.966607, 0.247433,
		31.401033, 25.551481, 29.021454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010359, 26.244122, 29.350260>,  <31.447720, 26.228106, 28.848249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010359, 26.244122, 29.350260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193352, 25.900146, 29.440783>,  <31.303148, 25.693762, 29.495096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193352, 25.900146, 29.440783>,  <31.010359, 26.244122, 29.350260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193352, 25.900146, 29.440783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124960, 0.314148, 0.941114,
		-0.880394, -0.402265, 0.251175,
		0.457483, -0.859938, 0.226307,
		31.330597, 25.642164, 29.508675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661945, 25.967697, 30.041712>,  <31.010359, 26.244122, 29.350260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661945, 25.967697, 30.041712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991119, 25.742697, 30.009773>,  <31.188623, 25.607697, 29.990610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991119, 25.742697, 30.009773>,  <30.661945, 25.967697, 30.041712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991119, 25.742697, 30.009773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187523, 0.136262, 0.972763,
		-0.536299, -0.815492, 0.217616,
		0.822933, -0.562500, -0.079846,
		31.237999, 25.573946, 29.985819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721533, 25.454313, 30.668913>,  <30.661945, 25.967697, 30.041712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721533, 25.454313, 30.668913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097260, 25.498384, 30.538961>,  <31.322695, 25.524828, 30.460991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097260, 25.498384, 30.538961>,  <30.721533, 25.454313, 30.668913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097260, 25.498384, 30.538961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293003, 0.234868, 0.926815,
		0.178416, -0.965763, 0.188334,
		0.939317, 0.110176, -0.324876,
		31.379055, 25.531439, 30.441498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143147, 25.011192, 31.049694>,  <30.721533, 25.454313, 30.668913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143147, 25.011192, 31.049694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411827, 25.275019, 30.914762>,  <31.573036, 25.433313, 30.833803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411827, 25.275019, 30.914762>,  <31.143147, 25.011192, 31.049694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411827, 25.275019, 30.914762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299070, 0.175168, 0.938016,
		0.677771, -0.730953, -0.079595,
		0.671703, 0.659564, -0.337330,
		31.613338, 25.472887, 30.813564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838842, 24.865335, 31.328905>,  <31.143147, 25.011192, 31.049694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838842, 24.865335, 31.328905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.883392, 25.246817, 31.217157>,  <31.910122, 25.475706, 31.150108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.883392, 25.246817, 31.217157>,  <31.838842, 24.865335, 31.328905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883392, 25.246817, 31.217157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430883, 0.206978, 0.878351,
		0.895509, -0.218201, -0.387882,
		0.111374, 0.953702, -0.279370,
		31.916805, 25.532927, 31.133347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485180, 25.032787, 31.623665>,  <31.838842, 24.865335, 31.328905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485180, 25.032787, 31.623665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328266, 25.390099, 31.535883>,  <32.234116, 25.604486, 31.483213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328266, 25.390099, 31.535883>,  <32.485180, 25.032787, 31.623665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328266, 25.390099, 31.535883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525067, 0.413351, 0.743939,
		0.755258, 0.176609, -0.631185,
		-0.392287, 0.893280, -0.219455,
		32.210579, 25.658083, 31.470047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029404, 25.496286, 31.661661>,  <32.485180, 25.032787, 31.623665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029404, 25.496286, 31.661661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701546, 25.724607, 31.681133>,  <32.504833, 25.861601, 31.692816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701546, 25.724607, 31.681133>,  <33.029404, 25.496286, 31.661661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701546, 25.724607, 31.681133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491586, 0.657162, 0.571385,
		0.294158, 0.492262, -0.819237,
		-0.819642, 0.570803, 0.048680,
		32.455654, 25.895849, 31.695738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250957, 26.163424, 31.337446>,  <33.029404, 25.496286, 31.661661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250957, 26.163424, 31.337446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939293, 26.210272, 31.583759>,  <32.752293, 26.238380, 31.731546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939293, 26.210272, 31.583759>,  <33.250957, 26.163424, 31.337446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939293, 26.210272, 31.583759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533716, 0.639136, 0.553762,
		-0.328710, 0.760123, -0.560502,
		-0.779164, 0.117122, 0.615780,
		32.705544, 26.245409, 31.768494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315296, 26.851124, 31.588188>,  <33.250957, 26.163424, 31.337446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315296, 26.851124, 31.588188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073471, 26.695259, 31.866083>,  <32.928375, 26.601740, 32.032822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073471, 26.695259, 31.866083>,  <33.315296, 26.851124, 31.588188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073471, 26.695259, 31.866083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476210, 0.522348, 0.707373,
		-0.638532, 0.758496, -0.130233,
		-0.604567, -0.389662, 0.694740,
		32.892101, 26.578362, 32.074505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075039, 27.437401, 31.953247>,  <33.315296, 26.851124, 31.588188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075039, 27.437401, 31.953247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.025154, 27.111359, 32.179539>,  <32.995224, 26.915733, 32.315315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.025154, 27.111359, 32.179539>,  <33.075039, 27.437401, 31.953247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025154, 27.111359, 32.179539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436685, 0.466894, 0.768971,
		-0.890928, 0.342944, 0.297717,
		-0.124712, -0.815107, 0.565728,
		32.987740, 26.866827, 32.349258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796051, 27.702257, 32.577011>,  <33.075039, 27.437401, 31.953247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796051, 27.702257, 32.577011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967194, 27.349634, 32.656807>,  <33.069878, 27.138062, 32.704685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967194, 27.349634, 32.656807>,  <32.796051, 27.702257, 32.577011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967194, 27.349634, 32.656807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326094, 0.356405, 0.875579,
		-0.842972, -0.309570, 0.439960,
		0.427857, -0.881556, 0.199491,
		33.095551, 27.085167, 32.716656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794769, 27.669746, 33.303883>,  <32.796051, 27.702257, 32.577011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794769, 27.669746, 33.303883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058025, 27.386072, 33.202766>,  <33.215981, 27.215868, 33.142097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058025, 27.386072, 33.202766>,  <32.794769, 27.669746, 33.303883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058025, 27.386072, 33.202766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532734, 0.201399, 0.821969,
		-0.532015, -0.675645, 0.510357,
		0.658145, -0.709184, -0.252792,
		33.255470, 27.173317, 33.126930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932388, 27.223951, 33.965763>,  <32.794769, 27.669746, 33.303883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932388, 27.223951, 33.965763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236870, 27.195059, 33.707973>,  <33.419559, 27.177723, 33.553299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236870, 27.195059, 33.707973>,  <32.932388, 27.223951, 33.965763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236870, 27.195059, 33.707973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635828, -0.112436, 0.763598,
		-0.127627, -0.991029, -0.039652,
		0.761206, -0.072244, -0.644474,
		33.465233, 27.173389, 33.514633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299107, 26.622782, 34.077290>,  <32.932388, 27.223951, 33.965763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299107, 26.622782, 34.077290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566689, 26.856407, 33.893391>,  <33.727238, 26.996582, 33.783051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566689, 26.856407, 33.893391>,  <33.299107, 26.622782, 34.077290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566689, 26.856407, 33.893391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652223, -0.164577, 0.739946,
		0.356511, -0.794849, -0.491035,
		0.668958, 0.584063, -0.459745,
		33.767376, 27.031626, 33.755466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907650, 26.336111, 34.176765>,  <33.299107, 26.622782, 34.077290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907650, 26.336111, 34.176765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955132, 26.727978, 34.112068>,  <33.983620, 26.963099, 34.073250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955132, 26.727978, 34.112068>,  <33.907650, 26.336111, 34.176765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955132, 26.727978, 34.112068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752856, 0.017404, 0.657955,
		0.647391, -0.199875, -0.735482,
		0.118708, 0.979667, -0.161744,
		33.990746, 27.021877, 34.063545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660709, 26.472929, 34.244907>,  <33.907650, 26.336111, 34.176765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660709, 26.472929, 34.244907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483040, 26.829494, 34.280888>,  <34.376438, 27.043434, 34.302475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483040, 26.829494, 34.280888>,  <34.660709, 26.472929, 34.244907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483040, 26.829494, 34.280888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683559, 0.272272, 0.677211,
		0.579183, 0.362287, -0.730270,
		-0.444177, 0.891412, 0.089950,
		34.349789, 27.096918, 34.307873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231293, 26.926744, 34.116337>,  <34.660709, 26.472929, 34.244907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231293, 26.926744, 34.116337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947582, 27.121870, 34.319889>,  <34.777355, 27.238945, 34.442020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947582, 27.121870, 34.319889>,  <35.231293, 26.926744, 34.116337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947582, 27.121870, 34.319889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704158, 0.456576, 0.543782,
		0.032920, 0.744027, -0.667338,
		-0.709280, 0.487813, 0.508882,
		34.734798, 27.268213, 34.472553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.940071, 31.715864, 35.380051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557846, 31.770954, 35.484299>,  <38.328510, 31.804008, 35.546848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557846, 31.770954, 35.484299>,  <38.940071, 31.715864, 35.380051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557846, 31.770954, 35.484299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258652, 0.815840, 0.517208,
		-0.141394, 0.561637, -0.815212,
		-0.955566, 0.137726, 0.260624,
		38.271175, 31.812271, 35.562485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850864, 32.442043, 35.311993>,  <38.940071, 31.715864, 35.380051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850864, 32.442043, 35.311993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568092, 32.294960, 35.553665>,  <38.398430, 32.206711, 35.698669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568092, 32.294960, 35.553665>,  <38.850864, 32.442043, 35.311993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568092, 32.294960, 35.553665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133763, 0.769305, 0.624722,
		-0.694517, 0.522453, -0.494661,
		-0.706933, -0.367712, 0.604180,
		38.356014, 32.184647, 35.734921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416328, 32.985310, 35.350395>,  <38.850864, 32.442043, 35.311993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416328, 32.985310, 35.350395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399548, 32.764736, 35.683659>,  <38.389481, 32.632393, 35.883617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399548, 32.764736, 35.683659>,  <38.416328, 32.985310, 35.350395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399548, 32.764736, 35.683659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034519, 0.832598, 0.552801,
		-0.998523, 0.051952, -0.015894,
		-0.041952, -0.551436, 0.833161,
		38.386963, 32.599304, 35.933605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164898, 33.487957, 35.794930>,  <38.416328, 32.985310, 35.350395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164898, 33.487957, 35.794930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276993, 33.183979, 36.029518>,  <38.344250, 33.001591, 36.170273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276993, 33.183979, 36.029518>,  <38.164898, 33.487957, 35.794930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276993, 33.183979, 36.029518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097585, 0.630340, 0.770162,
		-0.954958, -0.158596, 0.250803,
		0.280236, -0.759947, 0.586471,
		38.361065, 32.955994, 36.205460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647213, 33.504589, 36.504379>,  <38.164898, 33.487957, 35.794930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647213, 33.504589, 36.504379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002701, 33.329369, 36.558464>,  <38.215996, 33.224236, 36.590916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002701, 33.329369, 36.558464>,  <37.647213, 33.504589, 36.504379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002701, 33.329369, 36.558464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040891, 0.369509, 0.928327,
		-0.456619, -0.819496, 0.346303,
		0.888722, -0.438052, 0.135215,
		38.269318, 33.197952, 36.599030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631512, 33.219612, 37.188000>,  <37.647213, 33.504589, 36.504379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631512, 33.219612, 37.188000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016659, 33.238983, 37.081760>,  <38.247746, 33.250607, 37.018017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016659, 33.238983, 37.081760>,  <37.631512, 33.219612, 37.188000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016659, 33.238983, 37.081760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231968, 0.354933, 0.905656,
		0.138130, -0.933637, 0.330519,
		0.962866, 0.048429, -0.265601,
		38.305519, 33.253513, 37.002079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998566, 32.900459, 37.750153>,  <37.631512, 33.219612, 37.188000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998566, 32.900459, 37.750153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259499, 33.150036, 37.578033>,  <38.416058, 33.299782, 37.474762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259499, 33.150036, 37.578033>,  <37.998566, 32.900459, 37.750153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259499, 33.150036, 37.578033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194174, 0.411206, 0.890621,
		0.732638, -0.664535, 0.147090,
		0.652333, 0.623941, -0.430301,
		38.455200, 33.337219, 37.448944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550816, 32.934174, 38.213985>,  <37.998566, 32.900459, 37.750153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550816, 32.934174, 38.213985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.573124, 33.249012, 37.968262>,  <38.586510, 33.437916, 37.820827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.573124, 33.249012, 37.968262>,  <38.550816, 32.934174, 38.213985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573124, 33.249012, 37.968262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187280, 0.596099, 0.780764,
		0.980722, -0.158590, -0.114162,
		0.055770, 0.787093, -0.614308,
		38.589855, 33.485142, 37.783970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051704, 33.295734, 38.590775>,  <38.550816, 32.934174, 38.213985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051704, 33.295734, 38.590775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905308, 33.559437, 38.328041>,  <38.817471, 33.717659, 38.170403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905308, 33.559437, 38.328041>,  <39.051704, 33.295734, 38.590775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905308, 33.559437, 38.328041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060713, 0.721217, 0.690043,
		0.928634, 0.212674, -0.303988,
		-0.365996, 0.659253, -0.656835,
		38.795509, 33.757214, 38.130989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501720, 33.864929, 38.649872>,  <39.051704, 33.295734, 38.590775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501720, 33.864929, 38.649872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186085, 34.021908, 38.460846>,  <38.996704, 34.116096, 38.347431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186085, 34.021908, 38.460846>,  <39.501720, 33.864929, 38.649872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186085, 34.021908, 38.460846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039957, 0.800470, 0.598039,
		0.612973, 0.453026, -0.647326,
		-0.789093, 0.392447, -0.472565,
		38.949356, 34.139641, 38.319077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654957, 34.583523, 38.468540>,  <39.501720, 33.864929, 38.649872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654957, 34.583523, 38.468540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259476, 34.541996, 38.511772>,  <39.022186, 34.517078, 38.537712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259476, 34.541996, 38.511772>,  <39.654957, 34.583523, 38.468540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259476, 34.541996, 38.511772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015404, 0.787754, 0.615797,
		-0.149072, 0.607178, -0.780457,
		-0.988706, -0.103820, 0.108080,
		38.962864, 34.510849, 38.544197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442314, 35.266060, 38.540962>,  <39.654957, 34.583523, 38.468540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442314, 35.266060, 38.540962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133034, 35.041035, 38.658047>,  <38.947464, 34.906021, 38.728298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133034, 35.041035, 38.658047>,  <39.442314, 35.266060, 38.540962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133034, 35.041035, 38.658047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026020, 0.489325, 0.871713,
		-0.633623, 0.666396, -0.392986,
		-0.773204, -0.562563, 0.292708,
		38.901073, 34.872265, 38.745857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588978, 36.005085, 38.928677>,  <39.442314, 35.266060, 38.540962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588978, 36.005085, 38.928677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.909580, 36.175541, 38.760872>,  <40.101944, 36.277813, 38.660191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.909580, 36.175541, 38.760872>,  <39.588978, 36.005085, 38.928677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909580, 36.175541, 38.760872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151617, -0.533800, -0.831907,
		-0.578442, 0.730386, -0.363236,
		0.801509, 0.426138, -0.419512,
		40.150032, 36.303383, 38.635017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408684, 36.273132, 38.191536>,  <39.588978, 36.005085, 38.928677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408684, 36.273132, 38.191536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801952, 36.210590, 38.229309>,  <40.037914, 36.173065, 38.251972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801952, 36.210590, 38.229309>,  <39.408684, 36.273132, 38.191536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801952, 36.210590, 38.229309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027520, -0.637873, -0.769650,
		0.180578, 0.754102, -0.631444,
		0.983176, -0.156359, 0.094433,
		40.096905, 36.163681, 38.257641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484180, 36.956161, 38.474937>,  <39.408684, 36.273132, 38.191536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484180, 36.956161, 38.474937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342121, 37.314674, 38.368698>,  <39.256886, 37.529781, 38.304955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342121, 37.314674, 38.368698>,  <39.484180, 36.956161, 38.474937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342121, 37.314674, 38.368698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768102, -0.441726, -0.463570,
		-0.532813, 0.039373, 0.845316,
		-0.355146, 0.896286, -0.265599,
		39.235577, 37.583561, 38.289017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826385, 37.049858, 38.770584>,  <39.484180, 36.956161, 38.474937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826385, 37.049858, 38.770584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.848537, 37.274178, 38.440147>,  <38.861828, 37.408772, 38.241886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.848537, 37.274178, 38.440147>,  <38.826385, 37.049858, 38.770584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848537, 37.274178, 38.440147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745073, -0.527565, -0.408094,
		-0.664679, 0.638104, 0.388620,
		0.055384, 0.560802, -0.826096,
		38.865154, 37.442417, 38.192318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116810, 37.183022, 38.560436>,  <38.826385, 37.049858, 38.770584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116810, 37.183022, 38.560436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308483, 37.298897, 38.229027>,  <38.423489, 37.368423, 38.030182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308483, 37.298897, 38.229027>,  <38.116810, 37.183022, 38.560436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308483, 37.298897, 38.229027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782203, -0.287276, -0.552839,
		-0.398170, 0.912990, 0.088939,
		0.479187, 0.289692, -0.828528,
		38.452240, 37.385803, 37.980469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525425, 37.473343, 38.172501>,  <38.116810, 37.183022, 38.560436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525425, 37.473343, 38.172501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839321, 37.407364, 37.933510>,  <38.027657, 37.367779, 37.790115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839321, 37.407364, 37.933510>,  <37.525425, 37.473343, 38.172501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839321, 37.407364, 37.933510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578070, -0.542581, -0.609460,
		-0.223654, 0.823650, -0.521133,
		0.784738, -0.164943, -0.597478,
		38.074741, 37.357880, 37.754265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301495, 37.695290, 37.519047>,  <37.525425, 37.473343, 38.172501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301495, 37.695290, 37.519047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.593391, 37.425838, 37.472229>,  <37.768532, 37.264168, 37.444138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.593391, 37.425838, 37.472229>,  <37.301495, 37.695290, 37.519047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593391, 37.425838, 37.472229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603877, -0.554737, -0.572363,
		0.320632, 0.488357, -0.811605,
		0.729745, -0.673628, -0.117041,
		37.812313, 37.223751, 37.437119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225231, 37.600147, 36.790985>,  <37.301495, 37.695290, 37.519047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225231, 37.600147, 36.790985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428642, 37.293400, 36.947609>,  <37.550690, 37.109352, 37.041584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428642, 37.293400, 36.947609>,  <37.225231, 37.600147, 36.790985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428642, 37.293400, 36.947609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471415, -0.628495, -0.618678,
		0.720536, 0.130027, -0.681117,
		0.508524, -0.766869, 0.391556,
		37.581200, 37.063339, 37.065075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476982, 37.224876, 36.217873>,  <37.225231, 37.600147, 36.790985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476982, 37.224876, 36.217873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463116, 36.978718, 36.532856>,  <37.454796, 36.831024, 36.721844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463116, 36.978718, 36.532856>,  <37.476982, 37.224876, 36.217873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463116, 36.978718, 36.532856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411498, -0.709249, -0.572395,
		0.910751, -0.343880, -0.228647,
		-0.034667, -0.615397, 0.787455,
		37.452717, 36.794098, 36.769093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765129, 36.567589, 35.957859>,  <37.476982, 37.224876, 36.217873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765129, 36.567589, 35.957859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597301, 36.501186, 36.314823>,  <37.496605, 36.461346, 36.529003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597301, 36.501186, 36.314823>,  <37.765129, 36.567589, 35.957859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597301, 36.501186, 36.314823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280361, -0.911367, -0.301345,
		0.863340, -0.376634, 0.335843,
		-0.419573, -0.166006, 0.892413,
		37.471428, 36.451385, 36.582546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059002, 35.872074, 36.195568>,  <37.765129, 36.567589, 35.957859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059002, 35.872074, 36.195568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709587, 35.939152, 36.378349>,  <37.499939, 35.979397, 36.488018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709587, 35.939152, 36.378349>,  <38.059002, 35.872074, 36.195568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709587, 35.939152, 36.378349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281950, -0.939571, -0.194189,
		0.396777, -0.298471, 0.868034,
		-0.873540, 0.167693, 0.456955,
		37.447525, 35.989460, 36.515434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927174, 35.318878, 36.487724>,  <38.059002, 35.872074, 36.195568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927174, 35.318878, 36.487724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573963, 35.505531, 36.507820>,  <37.362038, 35.617523, 36.519878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573963, 35.505531, 36.507820>,  <37.927174, 35.318878, 36.487724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573963, 35.505531, 36.507820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467213, -0.863824, -0.188467,
		-0.044551, -0.189891, 0.980794,
		-0.883022, 0.466636, 0.050236,
		37.309055, 35.645523, 36.522892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464355, 34.869534, 36.588493>,  <37.927174, 35.318878, 36.487724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464355, 34.869534, 36.588493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187122, 35.136482, 36.479496>,  <37.020782, 35.296650, 36.414097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187122, 35.136482, 36.479496>,  <37.464355, 34.869534, 36.588493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187122, 35.136482, 36.479496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613660, -0.744577, -0.262729,
		-0.378229, -0.014877, 0.925593,
		-0.693084, 0.667371, -0.272491,
		36.979198, 35.336693, 36.397747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779087, 34.615025, 36.864910>,  <37.464355, 34.869534, 36.588493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779087, 34.615025, 36.864910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687843, 34.868107, 36.568897>,  <36.633099, 35.019958, 36.391289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687843, 34.868107, 36.568897>,  <36.779087, 34.615025, 36.864910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687843, 34.868107, 36.568897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720861, -0.620660, -0.308449,
		-0.654466, 0.463101, 0.597672,
		-0.228108, 0.632708, -0.740032,
		36.619411, 35.057919, 36.346889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009033, 34.691891, 36.834091>,  <36.779087, 34.615025, 36.864910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009033, 34.691891, 36.834091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158775, 34.783421, 36.474648>,  <36.248623, 34.838337, 36.258980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158775, 34.783421, 36.474648>,  <36.009033, 34.691891, 36.834091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158775, 34.783421, 36.474648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607422, -0.671703, -0.424092,
		-0.700639, 0.704596, -0.112466,
		0.374357, 0.228821, -0.898609,
		36.271084, 34.852066, 36.205067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398685, 34.565407, 36.428818>,  <36.009033, 34.691891, 36.834091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398685, 34.565407, 36.428818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708336, 34.563282, 36.175613>,  <35.894127, 34.562008, 36.023689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708336, 34.563282, 36.175613>,  <35.398685, 34.565407, 36.428818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708336, 34.563282, 36.175613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458106, -0.694831, -0.554391,
		-0.436891, 0.719154, -0.540318,
		0.774122, -0.005314, -0.633014,
		35.940571, 34.561687, 35.985710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831966, 35.092251, 36.488026>,  <35.398685, 34.565407, 36.428818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831966, 35.092251, 36.488026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.450069, 35.208260, 36.514420>,  <34.220932, 35.277863, 36.530258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.450069, 35.208260, 36.514420>,  <34.831966, 35.092251, 36.488026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450069, 35.208260, 36.514420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167302, 0.340214, 0.925345,
		0.245917, 0.894508, -0.373338,
		-0.954744, 0.290018, 0.065988,
		34.163647, 35.295265, 36.534218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863045, 35.730175, 36.724430>,  <34.831966, 35.092251, 36.488026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863045, 35.730175, 36.724430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.483143, 35.640915, 36.812218>,  <34.255203, 35.587360, 36.864891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.483143, 35.640915, 36.812218>,  <34.863045, 35.730175, 36.724430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483143, 35.640915, 36.812218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154249, 0.276436, 0.948573,
		-0.272343, 0.934766, -0.228127,
		-0.949756, -0.223149, 0.219472,
		34.198215, 35.573971, 36.878059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543465, 36.371468, 37.129475>,  <34.863045, 35.730175, 36.724430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543465, 36.371468, 37.129475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.338745, 36.036797, 37.207485>,  <34.215912, 35.835995, 37.254292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.338745, 36.036797, 37.207485>,  <34.543465, 36.371468, 37.129475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338745, 36.036797, 37.207485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104452, 0.164726, 0.980793,
		-0.852732, 0.522339, 0.003086,
		-0.511798, -0.836676, 0.195027,
		34.185207, 35.785793, 37.265995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211819, 36.542747, 37.814548>,  <34.543465, 36.371468, 37.129475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211819, 36.542747, 37.814548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.164955, 36.146870, 37.781631>,  <34.136837, 35.909344, 37.761883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.164955, 36.146870, 37.781631>,  <34.211819, 36.542747, 37.814548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164955, 36.146870, 37.781631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140100, -0.098505, 0.985225,
		-0.983181, 0.103903, 0.150198,
		-0.117163, -0.989697, -0.082291,
		34.129807, 35.849960, 37.756943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864140, 36.371899, 38.355042>,  <34.211819, 36.542747, 37.814548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864140, 36.371899, 38.355042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.024254, 36.014835, 38.272167>,  <34.120323, 35.800598, 38.222443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.024254, 36.014835, 38.272167>,  <33.864140, 36.371899, 38.355042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024254, 36.014835, 38.272167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217593, -0.127034, 0.967737,
		-0.890181, -0.432457, 0.143386,
		0.400290, -0.892661, -0.207183,
		34.144341, 35.747036, 38.210011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557652, 35.946041, 38.909443>,  <33.864140, 36.371899, 38.355042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557652, 35.946041, 38.909443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.863415, 35.739002, 38.755680>,  <34.046875, 35.614780, 38.663422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.863415, 35.739002, 38.755680>,  <33.557652, 35.946041, 38.909443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863415, 35.739002, 38.755680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346110, -0.173586, 0.921995,
		-0.543950, -0.837831, 0.046455,
		0.764412, -0.517597, -0.384404,
		34.092739, 35.583721, 38.640358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565804, 35.220528, 39.176250>,  <33.557652, 35.946041, 38.909443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565804, 35.220528, 39.176250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.936516, 35.314793, 39.059265>,  <34.158943, 35.371353, 38.989075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.936516, 35.314793, 39.059265>,  <33.565804, 35.220528, 39.176250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936516, 35.314793, 39.059265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334887, -0.165896, 0.927539,
		0.170072, -0.957570, -0.232672,
		0.926783, 0.235667, -0.292463,
		34.214550, 35.385494, 38.971527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028362, 34.639034, 39.406952>,  <33.565804, 35.220528, 39.176250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028362, 34.639034, 39.406952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277985, 34.945415, 39.345150>,  <34.427757, 35.129242, 39.308067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277985, 34.945415, 39.345150>,  <34.028362, 34.639034, 39.406952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277985, 34.945415, 39.345150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384532, -0.128913, 0.914066,
		0.680212, -0.629841, -0.374982,
		0.624056, 0.765951, -0.154506,
		34.465202, 35.175201, 39.298798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668606, 34.382214, 39.631332>,  <34.028362, 34.639034, 39.406952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668606, 34.382214, 39.631332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.717571, 34.779102, 39.622295>,  <34.746952, 35.017235, 39.616871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.717571, 34.779102, 39.622295>,  <34.668606, 34.382214, 39.631332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717571, 34.779102, 39.622295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461075, -0.036696, 0.886602,
		0.878877, -0.118951, -0.461980,
		0.122415, 0.992222, -0.022594,
		34.754295, 35.076767, 39.615517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244480, 34.449272, 40.049347>,  <34.668606, 34.382214, 39.631332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244480, 34.449272, 40.049347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093311, 34.818672, 40.075611>,  <35.002609, 35.040314, 40.091370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093311, 34.818672, 40.075611>,  <35.244480, 34.449272, 40.049347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093311, 34.818672, 40.075611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451864, 0.122087, 0.883693,
		0.808079, 0.363640, -0.463438,
		-0.377926, 0.923505, 0.065660,
		34.979935, 35.095722, 40.095310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819794, 34.926590, 40.305325>,  <35.244480, 34.449272, 40.049347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819794, 34.926590, 40.305325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490562, 35.146458, 40.362465>,  <35.293022, 35.278378, 40.396748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490562, 35.146458, 40.362465>,  <35.819794, 34.926590, 40.305325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490562, 35.146458, 40.362465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311732, 0.227005, 0.922655,
		0.474724, 0.803950, -0.358192,
		-0.823080, 0.549666, 0.142852,
		35.243637, 35.311359, 40.405319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019165, 35.546772, 40.475044>,  <35.819794, 34.926590, 40.305325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019165, 35.546772, 40.475044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.653233, 35.502029, 40.630257>,  <35.433674, 35.475185, 40.723385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.653233, 35.502029, 40.630257>,  <36.019165, 35.546772, 40.475044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653233, 35.502029, 40.630257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295987, 0.467953, 0.832714,
		-0.274726, 0.876646, -0.394990,
		-0.914832, -0.111856, 0.388035,
		35.378784, 35.468472, 40.746666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.901787, 34.521229, 32.852417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560017, 34.442451, 33.044735>,  <33.354954, 34.395184, 33.160126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560017, 34.442451, 33.044735>,  <33.901787, 34.521229, 32.852417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560017, 34.442451, 33.044735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226244, 0.692010, 0.685519,
		-0.467728, 0.694504, -0.546713,
		-0.854426, -0.196946, 0.480800,
		33.303688, 34.383369, 33.188976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688049, 35.193615, 33.109013>,  <33.901787, 34.521229, 32.852417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688049, 35.193615, 33.109013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485249, 34.947186, 33.350147>,  <33.363567, 34.799328, 33.494827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485249, 34.947186, 33.350147>,  <33.688049, 35.193615, 33.109013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485249, 34.947186, 33.350147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001939, 0.700200, 0.713944,
		-0.861946, 0.360799, -0.356194,
		-0.506997, -0.616071, 0.602835,
		33.333149, 34.762363, 33.530998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157597, 35.636593, 33.446445>,  <33.688049, 35.193615, 33.109013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157597, 35.636593, 33.446445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205082, 35.318661, 33.684490>,  <33.233574, 35.127903, 33.827316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205082, 35.318661, 33.684490>,  <33.157597, 35.636593, 33.446445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205082, 35.318661, 33.684490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014682, 0.600689, 0.799348,
		-0.992820, -0.086158, 0.082981,
		0.118716, -0.794827, 0.595111,
		33.240696, 35.080212, 33.863022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682198, 35.779549, 34.009098>,  <33.157597, 35.636593, 33.446445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682198, 35.779549, 34.009098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945808, 35.502991, 34.127518>,  <33.103977, 35.337055, 34.198570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945808, 35.502991, 34.127518>,  <32.682198, 35.779549, 34.009098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945808, 35.502991, 34.127518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026803, 0.414966, 0.909442,
		-0.751637, -0.591416, 0.292008,
		0.659032, -0.691397, 0.296052,
		33.143517, 35.295570, 34.216331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610428, 35.640118, 34.750156>,  <32.682198, 35.779549, 34.009098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610428, 35.640118, 34.750156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960770, 35.453606, 34.700417>,  <33.170975, 35.341698, 34.670570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960770, 35.453606, 34.700417>,  <32.610428, 35.640118, 34.750156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960770, 35.453606, 34.700417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295133, 0.313684, 0.902495,
		-0.381811, -0.827153, 0.412357,
		0.875852, -0.466283, -0.124352,
		33.223526, 35.313721, 34.663113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623623, 34.962196, 35.133331>,  <32.610428, 35.640118, 34.750156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623623, 34.962196, 35.133331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997765, 35.100864, 35.105213>,  <33.222248, 35.184063, 35.088341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997765, 35.100864, 35.105213>,  <32.623623, 34.962196, 35.133331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997765, 35.100864, 35.105213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120464, -0.125337, 0.984774,
		0.332576, -0.929577, -0.158994,
		0.935351, 0.346666, -0.070296,
		33.278370, 35.204865, 35.084126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063225, 34.529972, 35.547943>,  <32.623623, 34.962196, 35.133331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063225, 34.529972, 35.547943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292507, 34.849182, 35.473549>,  <33.430077, 35.040707, 35.428913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292507, 34.849182, 35.473549>,  <33.063225, 34.529972, 35.547943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292507, 34.849182, 35.473549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410453, -0.083192, 0.908079,
		0.709197, -0.596855, -0.375238,
		0.573208, 0.798024, -0.185981,
		33.464470, 35.088589, 35.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740826, 34.326900, 35.950531>,  <33.063225, 34.529972, 35.547943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740826, 34.326900, 35.950531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767178, 34.720432, 35.883919>,  <33.782990, 34.956551, 35.843952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767178, 34.720432, 35.883919>,  <33.740826, 34.326900, 35.950531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767178, 34.720432, 35.883919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176629, 0.152762, 0.972350,
		0.982070, -0.093476, -0.163709,
		0.065883, 0.983832, -0.166534,
		33.786942, 35.015583, 35.833958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455879, 34.616291, 36.051300>,  <33.740826, 34.326900, 35.950531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455879, 34.616291, 36.051300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194717, 34.915066, 36.101566>,  <34.038021, 35.094330, 36.131725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194717, 34.915066, 36.101566>,  <34.455879, 34.616291, 36.051300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194717, 34.915066, 36.101566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431772, 0.230720, 0.871976,
		0.622321, 0.623578, -0.473147,
		-0.652909, 0.746940, 0.125661,
		33.998844, 35.139149, 36.139263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070755, 34.490475, 35.671082>,  <34.455879, 34.616291, 36.051300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070755, 34.490475, 35.671082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457840, 34.394470, 35.640263>,  <35.690090, 34.336868, 35.621773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457840, 34.394470, 35.640263>,  <35.070755, 34.490475, 35.671082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457840, 34.394470, 35.640263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235912, -0.754625, -0.612280,
		0.088811, 0.610685, -0.786878,
		0.967708, -0.240011, -0.077049,
		35.748154, 34.322468, 35.617149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330452, 34.577702, 34.952568>,  <35.070755, 34.490475, 35.671082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330452, 34.577702, 34.952568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583984, 34.319427, 35.122910>,  <35.736103, 34.164463, 35.225113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583984, 34.319427, 35.122910>,  <35.330452, 34.577702, 34.952568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583984, 34.319427, 35.122910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162048, -0.649210, -0.743147,
		0.756302, 0.402024, -0.516123,
		0.633835, -0.645680, 0.425852,
		35.774136, 34.125725, 35.250664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642307, 34.325962, 34.450222>,  <35.330452, 34.577702, 34.952568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642307, 34.325962, 34.450222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700012, 34.042938, 34.726933>,  <35.734634, 33.873123, 34.892960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700012, 34.042938, 34.726933>,  <35.642307, 34.325962, 34.450222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700012, 34.042938, 34.726933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089988, -0.705571, -0.702902,
		0.985439, 0.039152, -0.165461,
		0.144264, -0.707556, 0.691774,
		35.743290, 33.830669, 34.934464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122017, 33.926777, 34.165581>,  <35.642307, 34.325962, 34.450222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122017, 33.926777, 34.165581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946716, 33.685036, 34.431721>,  <35.841537, 33.539989, 34.591404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946716, 33.685036, 34.431721>,  <36.122017, 33.926777, 34.165581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946716, 33.685036, 34.431721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006907, -0.737935, -0.674836,
		0.898827, -0.300342, 0.319225,
		-0.438249, -0.604356, 0.665351,
		35.815243, 33.503727, 34.631325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467155, 33.405891, 34.037876>,  <36.122017, 33.926777, 34.165581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467155, 33.405891, 34.037876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132381, 33.297314, 34.227970>,  <35.931515, 33.232166, 34.342026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132381, 33.297314, 34.227970>,  <36.467155, 33.405891, 34.037876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132381, 33.297314, 34.227970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182970, -0.679597, -0.710401,
		0.515806, -0.681516, 0.519115,
		-0.836938, -0.271447, 0.475237,
		35.881298, 33.215881, 34.370541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618698, 32.705574, 34.029198>,  <36.467155, 33.405891, 34.037876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618698, 32.705574, 34.029198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229084, 32.795555, 34.039375>,  <35.995316, 32.849545, 34.045483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229084, 32.795555, 34.039375>,  <36.618698, 32.705574, 34.029198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229084, 32.795555, 34.039375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208915, -0.849872, -0.483810,
		-0.087210, -0.476565, 0.874803,
		-0.974037, 0.224953, 0.025444,
		35.936874, 32.863041, 34.047009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344379, 32.067398, 33.783424>,  <36.618698, 32.705574, 34.029198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344379, 32.067398, 33.783424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021427, 32.301743, 33.811459>,  <35.827656, 32.442348, 33.828278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021427, 32.301743, 33.811459>,  <36.344379, 32.067398, 33.783424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021427, 32.301743, 33.811459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515563, -0.642716, -0.566667,
		-0.286941, -0.493648, 0.820961,
		-0.807378, 0.585857, 0.070085,
		35.779213, 32.477501, 33.832485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634789, 31.666927, 33.928478>,  <36.344379, 32.067398, 33.783424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634789, 31.666927, 33.928478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556351, 32.003357, 33.726830>,  <35.509289, 32.205215, 33.605839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556351, 32.003357, 33.726830>,  <35.634789, 31.666927, 33.928478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556351, 32.003357, 33.726830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533473, -0.522873, -0.664839,
		-0.822772, 0.138567, 0.551222,
		-0.196094, 0.841073, -0.504127,
		35.497520, 32.255680, 33.575592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967594, 31.519543, 33.632362>,  <35.634789, 31.666927, 33.928478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967594, 31.519543, 33.632362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084278, 31.842434, 33.427116>,  <35.154289, 32.036167, 33.303967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084278, 31.842434, 33.427116>,  <34.967594, 31.519543, 33.632362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084278, 31.842434, 33.427116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616170, -0.251725, -0.746303,
		-0.731600, 0.533874, 0.423957,
		0.291711, 0.807226, -0.513119,
		35.171791, 32.084602, 33.273182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348137, 31.794222, 33.367828>,  <34.967594, 31.519543, 33.632362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348137, 31.794222, 33.367828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627384, 31.948044, 33.126251>,  <34.794933, 32.040337, 32.981304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627384, 31.948044, 33.126251>,  <34.348137, 31.794222, 33.367828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627384, 31.948044, 33.126251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449259, -0.421511, -0.787715,
		-0.557486, 0.821247, -0.121502,
		0.698123, 0.384554, -0.603939,
		34.836823, 32.063412, 32.945068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044899, 32.250458, 32.753868>,  <34.348137, 31.794222, 33.367828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044899, 32.250458, 32.753868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405273, 32.125988, 32.632874>,  <34.621498, 32.051308, 32.560276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405273, 32.125988, 32.632874>,  <34.044899, 32.250458, 32.753868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405273, 32.125988, 32.632874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420159, -0.451073, -0.787401,
		0.108574, 0.836485, -0.537126,
		0.900932, -0.311170, -0.302482,
		34.675552, 32.032639, 32.542130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210720, 32.319706, 31.934881>,  <34.044899, 32.250458, 32.753868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210720, 32.319706, 31.934881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489361, 32.052849, 32.040455>,  <34.656548, 31.892735, 32.103798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489361, 32.052849, 32.040455>,  <34.210720, 32.319706, 31.934881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489361, 32.052849, 32.040455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008036, -0.360595, -0.932688,
		0.717409, 0.651837, -0.245831,
		0.696606, -0.667143, 0.263933,
		34.698341, 31.852705, 32.119637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409550, 32.159679, 31.245569>,  <34.210720, 32.319706, 31.934881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409550, 32.159679, 31.245569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592079, 31.885735, 31.472809>,  <34.701595, 31.721369, 31.609154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592079, 31.885735, 31.472809>,  <34.409550, 32.159679, 31.245569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592079, 31.885735, 31.472809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099851, -0.595004, -0.797496,
		0.884194, 0.420641, -0.203130,
		0.456323, -0.684859, 0.568100,
		34.728977, 31.680277, 31.643238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006340, 31.974388, 30.920172>,  <34.409550, 32.159679, 31.245569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006340, 31.974388, 30.920172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913361, 31.666655, 31.158195>,  <34.857574, 31.482016, 31.301010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913361, 31.666655, 31.158195>,  <35.006340, 31.974388, 30.920172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913361, 31.666655, 31.158195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008779, -0.613452, -0.789683,
		0.972569, -0.178337, 0.149351,
		-0.232449, -0.769332, 0.595059,
		34.843624, 31.435854, 31.336714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.170313, 26.911243, 34.989403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188772, 27.302502, 34.908310>,  <31.199848, 27.537256, 34.859653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188772, 27.302502, 34.908310>,  <31.170313, 26.911243, 34.989403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188772, 27.302502, 34.908310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460331, 0.159291, 0.873340,
		0.886547, -0.133625, -0.442920,
		0.046147, 0.978147, -0.202731,
		31.202616, 27.595945, 34.847492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795410, 27.131250, 35.288792>,  <31.170313, 26.911243, 34.989403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795410, 27.131250, 35.288792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.619537, 27.486786, 35.237183>,  <31.514013, 27.700108, 35.206219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.619537, 27.486786, 35.237183>,  <31.795410, 27.131250, 35.288792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619537, 27.486786, 35.237183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537707, 0.375563, 0.754867,
		0.719410, 0.262525, -0.643062,
		-0.439682, 0.888838, -0.129022,
		31.487633, 27.753437, 35.198475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360832, 27.643955, 35.282990>,  <31.795410, 27.131250, 35.288792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360832, 27.643955, 35.282990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.015717, 27.820881, 35.380932>,  <31.808647, 27.927036, 35.439697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.015717, 27.820881, 35.380932>,  <32.360832, 27.643955, 35.282990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015717, 27.820881, 35.380932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438632, 0.414081, 0.797583,
		0.251391, 0.795547, -0.551277,
		-0.862789, 0.442313, 0.244856,
		31.756880, 27.953575, 35.454388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443825, 28.333872, 35.305534>,  <32.360832, 27.643955, 35.282990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443825, 28.333872, 35.305534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.103817, 28.298773, 35.513287>,  <31.899811, 28.277714, 35.637939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.103817, 28.298773, 35.513287>,  <32.443825, 28.333872, 35.305534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103817, 28.298773, 35.513287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421688, 0.477526, 0.770810,
		-0.315656, 0.874225, -0.368906,
		-0.850024, -0.087748, 0.519384,
		31.848810, 28.272448, 35.669102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360134, 29.022842, 35.636337>,  <32.443825, 28.333872, 35.305534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360134, 29.022842, 35.636337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.095192, 28.806505, 35.843712>,  <31.936226, 28.676702, 35.968136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.095192, 28.806505, 35.843712>,  <32.360134, 29.022842, 35.636337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095192, 28.806505, 35.843712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203679, 0.535936, 0.819322,
		-0.720970, 0.648278, -0.244823,
		-0.662357, -0.540841, 0.518434,
		31.896484, 28.644253, 35.999241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018021, 29.478056, 36.018974>,  <32.360134, 29.022842, 35.636337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018021, 29.478056, 36.018974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.963226, 29.130360, 36.208988>,  <31.930349, 28.921741, 36.322998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.963226, 29.130360, 36.208988>,  <32.018021, 29.478056, 36.018974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963226, 29.130360, 36.208988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443307, 0.375057, 0.814132,
		-0.885841, 0.322109, 0.333963,
		-0.136984, -0.869240, 0.475034,
		31.922131, 28.869587, 36.351498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700798, 29.602314, 36.627750>,  <32.018021, 29.478056, 36.018974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700798, 29.602314, 36.627750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.906719, 29.262051, 36.670387>,  <32.030273, 29.057894, 36.695969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.906719, 29.262051, 36.670387>,  <31.700798, 29.602314, 36.627750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906719, 29.262051, 36.670387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311852, 0.301627, 0.900983,
		-0.798578, -0.430586, 0.420557,
		0.514802, -0.850657, 0.106593,
		32.061161, 29.006853, 36.702366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574436, 29.338223, 37.356689>,  <31.700798, 29.602314, 36.627750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574436, 29.338223, 37.356689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.894709, 29.138166, 37.224770>,  <32.086872, 29.018133, 37.145618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.894709, 29.138166, 37.224770>,  <31.574436, 29.338223, 37.356689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894709, 29.138166, 37.224770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470008, 0.183049, 0.863473,
		-0.371488, -0.846376, 0.381634,
		0.800680, -0.500141, -0.329803,
		32.134914, 28.988125, 37.125828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770615, 28.996346, 37.932026>,  <31.574436, 29.338223, 37.356689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770615, 28.996346, 37.932026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.090122, 29.006163, 37.691570>,  <32.281826, 29.012053, 37.547298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.090122, 29.006163, 37.691570>,  <31.770615, 28.996346, 37.932026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090122, 29.006163, 37.691570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599052, 0.060095, 0.798452,
		0.055724, -0.997891, 0.033298,
		0.798769, 0.024545, -0.601137,
		32.329754, 29.013525, 37.511230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204937, 28.548725, 38.185303>,  <31.770615, 28.996346, 37.932026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204937, 28.548725, 38.185303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.458252, 28.776266, 37.975407>,  <32.610241, 28.912790, 37.849468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.458252, 28.776266, 37.975407>,  <32.204937, 28.548725, 38.185303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458252, 28.776266, 37.975407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564301, 0.124610, 0.816111,
		0.529633, -0.812946, -0.242089,
		0.633287, 0.568850, -0.524744,
		32.648239, 28.946922, 37.817982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852108, 28.323284, 38.433445>,  <32.204937, 28.548725, 38.185303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852108, 28.323284, 38.433445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.903580, 28.676586, 38.253086>,  <32.934464, 28.888567, 38.144871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.903580, 28.676586, 38.253086>,  <32.852108, 28.323284, 38.433445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903580, 28.676586, 38.253086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753305, 0.208647, 0.623697,
		0.644960, -0.419917, -0.638511,
		0.128677, 0.883253, -0.450895,
		32.942184, 28.941563, 38.117817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596348, 28.486383, 38.386852>,  <32.852108, 28.323284, 38.433445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596348, 28.486383, 38.386852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.428066, 28.849136, 38.377274>,  <33.327095, 29.066788, 38.371525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.428066, 28.849136, 38.377274>,  <33.596348, 28.486383, 38.386852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428066, 28.849136, 38.377274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689976, 0.337001, 0.640597,
		0.589016, 0.252977, -0.767504,
		-0.420706, 0.906881, -0.023951,
		33.301853, 29.121201, 38.370087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166336, 29.004074, 38.409027>,  <33.596348, 28.486383, 38.386852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166336, 29.004074, 38.409027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853863, 29.226133, 38.523262>,  <33.666378, 29.359369, 38.591805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853863, 29.226133, 38.523262>,  <34.166336, 29.004074, 38.409027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853863, 29.226133, 38.523262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613134, 0.596104, 0.518388,
		0.117540, 0.580062, -0.806047,
		-0.781186, 0.555146, 0.285590,
		33.619507, 29.392677, 38.608940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441216, 29.744953, 38.351894>,  <34.166336, 29.004074, 38.409027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441216, 29.744953, 38.351894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132618, 29.737417, 38.606277>,  <33.947460, 29.732895, 38.758907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132618, 29.737417, 38.606277>,  <34.441216, 29.744953, 38.351894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132618, 29.737417, 38.606277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472161, 0.653024, 0.592135,
		-0.426453, 0.757103, -0.494907,
		-0.771493, -0.018842, 0.635959,
		33.901169, 29.731764, 38.797066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866615, 30.082714, 37.671898>,  <34.441216, 29.744953, 38.351894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866615, 30.082714, 37.671898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248184, 29.963696, 37.656425>,  <35.477127, 29.892284, 37.647144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248184, 29.963696, 37.656425>,  <34.866615, 30.082714, 37.671898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248184, 29.963696, 37.656425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223757, -0.619549, -0.752391,
		0.199908, 0.726377, -0.657580,
		0.953923, -0.297548, -0.038679,
		35.534363, 29.874432, 37.644821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124081, 30.111769, 36.926685>,  <34.866615, 30.082714, 37.671898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124081, 30.111769, 36.926685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371311, 29.843405, 37.090569>,  <35.519650, 29.682386, 37.188896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371311, 29.843405, 37.090569>,  <35.124081, 30.111769, 36.926685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371311, 29.843405, 37.090569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126590, -0.599319, -0.790438,
		0.775855, 0.436690, -0.455358,
		0.618080, -0.670909, 0.409704,
		35.556736, 29.642132, 37.213478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589458, 29.955240, 36.415188>,  <35.124081, 30.111769, 36.926685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589458, 29.955240, 36.415188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603996, 29.656076, 36.680309>,  <35.612717, 29.476578, 36.839382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603996, 29.656076, 36.680309>,  <35.589458, 29.955240, 36.415188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603996, 29.656076, 36.680309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087903, -0.663065, -0.743383,
		0.995466, -0.031247, -0.089840,
		0.036341, -0.747909, 0.662805,
		35.614899, 29.431704, 36.879150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174713, 29.478672, 36.274117>,  <35.589458, 29.955240, 36.415188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174713, 29.478672, 36.274117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916199, 29.257957, 36.484962>,  <35.761089, 29.125528, 36.611469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916199, 29.257957, 36.484962>,  <36.174713, 29.478672, 36.274117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916199, 29.257957, 36.484962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009999, -0.684572, -0.728877,
		0.763030, -0.476333, 0.436912,
		-0.646286, -0.551786, 0.527112,
		35.722313, 29.092422, 36.643097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334465, 28.732986, 36.186565>,  <36.174713, 29.478672, 36.274117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334465, 28.732986, 36.186565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952740, 28.720287, 36.305416>,  <35.723705, 28.712667, 36.376724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952740, 28.720287, 36.305416>,  <36.334465, 28.732986, 36.186565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952740, 28.720287, 36.305416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197910, -0.677827, -0.708084,
		0.223880, -0.734536, 0.640574,
		-0.954311, -0.031750, 0.297123,
		35.666447, 28.710762, 36.394554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167751, 28.061861, 36.126335>,  <36.334465, 28.732986, 36.186565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167751, 28.061861, 36.126335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810650, 28.242069, 36.128105>,  <35.596390, 28.350195, 36.129166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810650, 28.242069, 36.128105>,  <36.167751, 28.061861, 36.126335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810650, 28.242069, 36.128105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336730, -0.660677, -0.670909,
		-0.299337, -0.600446, 0.741526,
		-0.892754, 0.450522, 0.004423,
		35.542824, 28.377226, 36.129433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770790, 27.537556, 36.129501>,  <36.167751, 28.061861, 36.126335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770790, 27.537556, 36.129501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540794, 27.831137, 35.984890>,  <35.402798, 28.007284, 35.898125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540794, 27.831137, 35.984890>,  <35.770790, 27.537556, 36.129501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540794, 27.831137, 35.984890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360014, -0.623770, -0.693759,
		-0.734696, -0.268749, 0.622894,
		-0.574989, 0.733952, -0.361528,
		35.368298, 28.051323, 35.876431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117188, 27.257158, 36.109966>,  <35.770790, 27.537556, 36.129501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117188, 27.257158, 36.109966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113708, 27.564621, 35.854126>,  <35.111622, 27.749100, 35.700623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113708, 27.564621, 35.854126>,  <35.117188, 27.257158, 36.109966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113708, 27.564621, 35.854126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673261, -0.477429, -0.564608,
		-0.739354, 0.425707, 0.521659,
		-0.008698, 0.768658, -0.639601,
		35.111099, 27.795218, 35.662247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424168, 27.341173, 35.877499>,  <35.117188, 27.257158, 36.109966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424168, 27.341173, 35.877499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600018, 27.567335, 35.598343>,  <34.705528, 27.703032, 35.430851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600018, 27.567335, 35.598343>,  <34.424168, 27.341173, 35.877499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600018, 27.567335, 35.598343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696218, -0.276388, -0.662487,
		-0.567463, 0.777127, 0.272139,
		0.439621, 0.565405, -0.697890,
		34.731903, 27.736958, 35.388977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007343, 27.721834, 35.615498>,  <34.424168, 27.341173, 35.877499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007343, 27.721834, 35.615498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274094, 27.711494, 35.317612>,  <34.434143, 27.705290, 35.138878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274094, 27.711494, 35.317612>,  <34.007343, 27.721834, 35.615498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274094, 27.711494, 35.317612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705335, -0.344272, -0.619661,
		-0.240367, 0.938514, -0.247821,
		0.666878, -0.025851, -0.744718,
		34.474155, 27.703739, 35.094196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729900, 28.034489, 35.013851>,  <34.007343, 27.721834, 35.615498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729900, 28.034489, 35.013851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017654, 27.806555, 34.854969>,  <34.190308, 27.669794, 34.759640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017654, 27.806555, 34.854969>,  <33.729900, 28.034489, 35.013851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017654, 27.806555, 34.854969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539194, -0.097614, -0.836505,
		0.437898, 0.815940, -0.377474,
		0.719385, -0.569836, -0.397205,
		34.233471, 27.635605, 34.735806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986340, 28.392725, 34.399426>,  <33.729900, 28.034489, 35.013851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986340, 28.392725, 34.399426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077816, 28.003736, 34.381527>,  <34.132702, 27.770344, 34.370789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077816, 28.003736, 34.381527>,  <33.986340, 28.392725, 34.399426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077816, 28.003736, 34.381527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560853, -0.094043, -0.822557,
		0.795703, 0.213213, -0.566920,
		0.228694, -0.972469, -0.044750,
		34.146423, 27.711996, 34.368103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296211, 28.305559, 33.697277>,  <33.986340, 28.392725, 34.399426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296211, 28.305559, 33.697277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239113, 27.927004, 33.813187>,  <34.204853, 27.699871, 33.882732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239113, 27.927004, 33.813187>,  <34.296211, 28.305559, 33.697277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239113, 27.927004, 33.813187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238116, -0.251337, -0.938153,
		0.960689, -0.202920, -0.189472,
		-0.142748, -0.946390, 0.289775,
		34.196289, 27.643087, 33.900120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675518, 27.867813, 33.300396>,  <34.296211, 28.305559, 33.697277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675518, 27.867813, 33.300396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365410, 27.652914, 33.433254>,  <34.179344, 27.523975, 33.512970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365410, 27.652914, 33.433254>,  <34.675518, 27.867813, 33.300396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365410, 27.652914, 33.433254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353763, -0.066317, -0.932981,
		0.523270, -0.840812, -0.138646,
		-0.775267, -0.537249, 0.332150,
		34.132828, 27.491739, 33.532898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339619, 27.511385, 32.914753>,  <34.675518, 27.867813, 33.300396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339619, 27.511385, 32.914753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527786, 27.718908, 32.629223>,  <35.640686, 27.843422, 32.457905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527786, 27.718908, 32.629223>,  <35.339619, 27.511385, 32.914753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527786, 27.718908, 32.629223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513748, 0.496678, 0.699552,
		0.717474, -0.695808, -0.032890,
		0.470419, 0.518808, -0.713824,
		35.668911, 27.874550, 32.415077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997410, 27.463505, 33.042065>,  <35.339619, 27.511385, 32.914753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997410, 27.463505, 33.042065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997768, 27.779825, 32.797237>,  <35.997982, 27.969618, 32.650341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997768, 27.779825, 32.797237>,  <35.997410, 27.463505, 33.042065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997768, 27.779825, 32.797237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606700, 0.486125, 0.628966,
		0.794931, -0.371906, -0.479344,
		0.000895, 0.790802, -0.612071,
		35.998035, 28.017065, 32.613617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719723, 27.742561, 33.078121>,  <35.997410, 27.463505, 33.042065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719723, 27.742561, 33.078121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465096, 28.023579, 32.950867>,  <36.312317, 28.192188, 32.874512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465096, 28.023579, 32.950867>,  <36.719723, 27.742561, 33.078121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465096, 28.023579, 32.950867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363801, 0.637278, 0.679357,
		0.680020, 0.316719, -0.661258,
		-0.636570, 0.702542, -0.318139,
		36.274124, 28.234341, 32.855427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156330, 28.352945, 33.258453>,  <36.719723, 27.742561, 33.078121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156330, 28.352945, 33.258453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793880, 28.490498, 33.159920>,  <36.576412, 28.573029, 33.100800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793880, 28.490498, 33.159920>,  <37.156330, 28.352945, 33.258453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793880, 28.490498, 33.159920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189300, 0.850424, 0.490861,
		0.378289, 0.398150, -0.835688,
		-0.906125, 0.343883, -0.246336,
		36.522041, 28.593662, 33.086018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198895, 28.937561, 32.831699>,  <37.156330, 28.352945, 33.258453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198895, 28.937561, 32.831699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855423, 28.983171, 33.031567>,  <36.649342, 29.010538, 33.151489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855423, 28.983171, 33.031567>,  <37.198895, 28.937561, 32.831699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855423, 28.983171, 33.031567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331683, 0.866878, 0.372168,
		-0.390715, 0.485304, -0.782190,
		-0.858678, 0.114028, 0.499670,
		36.597820, 29.017380, 33.181469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115425, 29.595825, 32.873165>,  <37.198895, 28.937561, 32.831699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115425, 29.595825, 32.873165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.861210, 29.479538, 33.159264>,  <36.708679, 29.409765, 33.330921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.861210, 29.479538, 33.159264>,  <37.115425, 29.595825, 32.873165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861210, 29.479538, 33.159264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181742, 0.844032, 0.504559,
		-0.750373, 0.450656, -0.483581,
		-0.635540, -0.290720, 0.715242,
		36.670547, 29.392323, 33.373837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698994, 30.256254, 32.947563>,  <37.115425, 29.595825, 32.873165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698994, 30.256254, 32.947563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654938, 30.028801, 33.273636>,  <36.628502, 29.892328, 33.469280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654938, 30.028801, 33.273636>,  <36.698994, 30.256254, 32.947563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654938, 30.028801, 33.273636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312312, 0.758831, 0.571521,
		-0.943573, 0.317541, 0.094011,
		-0.110143, -0.568633, 0.815184,
		36.621895, 29.858212, 33.518192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262512, 30.598629, 33.455387>,  <36.698994, 30.256254, 32.947563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262512, 30.598629, 33.455387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466351, 30.340397, 33.682911>,  <36.588654, 30.185457, 33.819424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466351, 30.340397, 33.682911>,  <36.262512, 30.598629, 33.455387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466351, 30.340397, 33.682911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274979, 0.748611, 0.603298,
		-0.815291, -0.151029, 0.559009,
		0.509596, -0.645579, 0.568805,
		36.619228, 30.146723, 33.853554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177212, 30.951439, 34.032871>,  <36.262512, 30.598629, 33.455387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177212, 30.951439, 34.032871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473583, 30.694777, 34.112175>,  <36.651405, 30.540779, 34.159756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473583, 30.694777, 34.112175>,  <36.177212, 30.951439, 34.032871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473583, 30.694777, 34.112175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333081, 0.607434, 0.721166,
		-0.583170, -0.468295, 0.663787,
		0.740925, -0.641657, 0.198257,
		36.695862, 30.502279, 34.171654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145557, 30.874731, 34.715099>,  <36.177212, 30.951439, 34.032871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145557, 30.874731, 34.715099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515259, 30.756132, 34.618893>,  <36.737080, 30.684973, 34.561169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515259, 30.756132, 34.618893>,  <36.145557, 30.874731, 34.715099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515259, 30.756132, 34.618893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377906, 0.620963, 0.686725,
		-0.054260, -0.725600, 0.685975,
		0.924253, -0.296496, -0.240515,
		36.792534, 30.667183, 34.546738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507351, 30.872355, 35.376350>,  <36.145557, 30.874731, 34.715099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507351, 30.872355, 35.376350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775074, 30.803879, 35.087154>,  <36.935707, 30.762793, 34.913635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775074, 30.803879, 35.087154>,  <36.507351, 30.872355, 35.376350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775074, 30.803879, 35.087154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715921, 0.408838, 0.565959,
		0.198701, -0.896407, 0.396197,
		0.669310, -0.171189, -0.722993,
		36.975868, 30.752522, 34.870258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001244, 30.507029, 35.639030>,  <36.507351, 30.872355, 35.376350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001244, 30.507029, 35.639030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164433, 30.713871, 35.338055>,  <37.262344, 30.837976, 35.157471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164433, 30.713871, 35.338055>,  <37.001244, 30.507029, 35.639030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164433, 30.713871, 35.338055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733917, 0.304474, 0.607175,
		0.543071, -0.799936, -0.255297,
		0.407969, 0.517106, -0.752437,
		37.286823, 30.869003, 35.112324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814495, 30.561897, 35.791252>,  <37.001244, 30.507029, 35.639030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814495, 30.561897, 35.791252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729362, 30.866339, 35.546165>,  <37.678284, 31.049004, 35.399113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729362, 30.866339, 35.546165>,  <37.814495, 30.561897, 35.791252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729362, 30.866339, 35.546165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770112, 0.516609, 0.374222,
		0.601358, -0.392216, -0.696086,
		-0.212828, 0.761106, -0.612717,
		37.665516, 31.094671, 35.362350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462147, 30.857883, 35.491669>,  <37.814495, 30.561897, 35.791252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462147, 30.857883, 35.491669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196854, 31.156748, 35.474350>,  <38.037678, 31.336065, 35.463959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196854, 31.156748, 35.474350>,  <38.462147, 30.857883, 35.491669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196854, 31.156748, 35.474350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690661, 0.633313, 0.349145,
		0.288288, 0.201661, -0.936068,
		-0.663233, 0.747160, -0.043297,
		37.997883, 31.380896, 35.461361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.426899, 31.362114, 30.717133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109074, 31.211342, 30.907536>,  <34.918377, 31.120878, 31.021778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109074, 31.211342, 30.907536>,  <35.426899, 31.362114, 30.717133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109074, 31.211342, 30.907536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066146, -0.725570, -0.684962,
		0.603562, -0.575734, 0.551582,
		-0.794567, -0.376932, 0.476009,
		34.870705, 31.098263, 31.050339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494820, 30.651968, 30.606863>,  <35.426899, 31.362114, 30.717133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494820, 30.651968, 30.606863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.114624, 30.686741, 30.726202>,  <34.886505, 30.707605, 30.797806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.114624, 30.686741, 30.726202>,  <35.494820, 30.651968, 30.606863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114624, 30.686741, 30.726202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248359, -0.789562, -0.561168,
		0.186778, -0.607482, 0.772062,
		-0.950490, 0.086934, 0.298347,
		34.829475, 30.712822, 30.815706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332375, 29.973196, 30.850674>,  <35.494820, 30.651968, 30.606863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332375, 29.973196, 30.850674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990128, 30.151432, 30.745317>,  <34.784779, 30.258373, 30.682104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990128, 30.151432, 30.745317>,  <35.332375, 29.973196, 30.850674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990128, 30.151432, 30.745317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243718, -0.795728, -0.554453,
		-0.456645, -0.410205, 0.789435,
		-0.855615, 0.445588, -0.263391,
		34.733444, 30.285109, 30.666300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856956, 29.433191, 30.966770>,  <35.332375, 29.973196, 30.850674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856956, 29.433191, 30.966770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.731346, 29.717133, 30.714581>,  <34.655979, 29.887497, 30.563267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.731346, 29.717133, 30.714581>,  <34.856956, 29.433191, 30.966770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731346, 29.717133, 30.714581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225154, -0.700802, -0.676892,
		-0.922330, -0.070610, 0.379897,
		-0.314028, 0.709853, -0.630472,
		34.637138, 29.930088, 30.525438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281506, 29.098122, 30.579279>,  <34.856956, 29.433191, 30.966770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281506, 29.098122, 30.579279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361610, 29.433531, 30.376589>,  <34.409672, 29.634777, 30.254974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361610, 29.433531, 30.376589>,  <34.281506, 29.098122, 30.579279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361610, 29.433531, 30.376589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280225, -0.446575, -0.849732,
		-0.938813, 0.312166, 0.145544,
		0.200262, 0.838524, -0.506727,
		34.421688, 29.685089, 30.224571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727180, 29.354927, 30.154097>,  <34.281506, 29.098122, 30.579279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727180, 29.354927, 30.154097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043060, 29.516558, 29.969448>,  <34.232590, 29.613537, 29.858660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043060, 29.516558, 29.969448>,  <33.727180, 29.354927, 30.154097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043060, 29.516558, 29.969448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340782, -0.336755, -0.877760,
		-0.510137, 0.850480, -0.128233,
		0.789701, 0.404078, -0.461620,
		34.279972, 29.637781, 29.830961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343727, 29.712389, 29.593790>,  <33.727180, 29.354927, 30.154097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343727, 29.712389, 29.593790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728645, 29.708801, 29.485043>,  <33.959595, 29.706650, 29.419794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728645, 29.708801, 29.485043>,  <33.343727, 29.712389, 29.593790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728645, 29.708801, 29.485043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271710, -0.079138, -0.959120,
		-0.012914, 0.996823, -0.078590,
		0.962292, -0.008967, -0.271869,
		34.017334, 29.706112, 29.403482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476494, 30.137280, 28.963095>,  <33.343727, 29.712389, 29.593790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476494, 30.137280, 28.963095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788868, 29.887489, 28.968443>,  <33.976292, 29.737616, 28.971651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788868, 29.887489, 28.968443>,  <33.476494, 30.137280, 28.963095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788868, 29.887489, 28.968443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217702, -0.292183, -0.931254,
		0.585451, 0.724335, -0.364124,
		0.780931, -0.624475, 0.013369,
		34.023148, 29.700148, 28.972454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667545, 30.085472, 28.280956>,  <33.476494, 30.137280, 28.963095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667545, 30.085472, 28.280956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825016, 29.758991, 28.450111>,  <33.919498, 29.563103, 28.551605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825016, 29.758991, 28.450111>,  <33.667545, 30.085472, 28.280956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825016, 29.758991, 28.450111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179585, -0.519462, -0.835409,
		0.901536, 0.252937, -0.351077,
		0.393677, -0.816200, 0.422890,
		33.943119, 29.514132, 28.576979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065010, 29.794909, 27.763660>,  <33.667545, 30.085472, 28.280956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065010, 29.794909, 27.763660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989437, 29.496065, 28.018576>,  <33.944092, 29.316759, 28.171524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989437, 29.496065, 28.018576>,  <34.065010, 29.794909, 27.763660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989437, 29.496065, 28.018576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099292, -0.631114, -0.769309,
		0.976957, -0.208627, 0.045058,
		-0.188935, -0.747108, 0.637286,
		33.932758, 29.271933, 28.209761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481728, 29.267479, 27.554729>,  <34.065010, 29.794909, 27.763660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481728, 29.267479, 27.554729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212971, 29.074503, 27.779520>,  <34.051716, 28.958717, 27.914394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212971, 29.074503, 27.779520>,  <34.481728, 29.267479, 27.554729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212971, 29.074503, 27.779520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123303, -0.675308, -0.727155,
		0.730316, -0.557861, 0.394246,
		-0.671889, -0.482441, 0.561974,
		34.011402, 28.929771, 27.948112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677425, 28.507439, 27.725327>,  <34.481728, 29.267479, 27.554729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677425, 28.507439, 27.725327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283928, 28.577662, 27.710201>,  <34.047829, 28.619795, 27.701126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283928, 28.577662, 27.710201>,  <34.677425, 28.507439, 27.725327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283928, 28.577662, 27.710201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119840, -0.798581, -0.589836,
		-0.133747, -0.575715, 0.806637,
		-0.983743, 0.175556, -0.037814,
		33.988804, 28.630329, 27.698856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365162, 27.772640, 27.555479>,  <34.677425, 28.507439, 27.725327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365162, 27.772640, 27.555479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067822, 28.034412, 27.500120>,  <33.889420, 28.191475, 27.466906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067822, 28.034412, 27.500120>,  <34.365162, 27.772640, 27.555479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067822, 28.034412, 27.500120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506429, -0.685782, -0.522717,
		-0.436992, -0.318473, 0.841197,
		-0.743349, 0.654430, -0.138397,
		33.844818, 28.230742, 27.458601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760693, 27.327572, 27.704496>,  <34.365162, 27.772640, 27.555479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760693, 27.327572, 27.704496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703400, 27.638138, 27.459003>,  <33.669022, 27.824476, 27.311708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703400, 27.638138, 27.459003>,  <33.760693, 27.327572, 27.704496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703400, 27.638138, 27.459003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617284, -0.554808, -0.557806,
		-0.773591, 0.298949, 0.558736,
		-0.143236, 0.776413, -0.613732,
		33.660427, 27.871061, 27.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349976, 26.689224, 27.911650>,  <33.760693, 27.327572, 27.704496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349976, 26.689224, 27.911650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319656, 26.300604, 28.001404>,  <33.301464, 26.067432, 28.055256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319656, 26.300604, 28.001404>,  <33.349976, 26.689224, 27.911650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319656, 26.300604, 28.001404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623861, 0.129339, 0.770758,
		-0.777851, 0.198404, 0.596308,
		-0.075796, -0.971549, 0.224383,
		33.296917, 26.009140, 28.068718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222889, 26.698242, 28.680567>,  <33.349976, 26.689224, 27.911650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222889, 26.698242, 28.680567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351803, 26.329321, 28.595257>,  <33.429153, 26.107967, 28.544071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351803, 26.329321, 28.595257>,  <33.222889, 26.698242, 28.680567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351803, 26.329321, 28.595257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680210, 0.068938, 0.729769,
		-0.658366, -0.380266, 0.649578,
		0.322287, -0.922304, -0.213274,
		33.448490, 26.052629, 28.531275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176441, 26.308451, 29.237978>,  <33.222889, 26.698242, 28.680567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176441, 26.308451, 29.237978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453678, 26.120903, 29.018969>,  <33.620022, 26.008375, 28.887564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453678, 26.120903, 29.018969>,  <33.176441, 26.308451, 29.237978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453678, 26.120903, 29.018969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627353, 0.018255, 0.778520,
		-0.355029, -0.883079, 0.306798,
		0.693096, -0.468868, -0.547522,
		33.661606, 25.980242, 28.854712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426262, 25.630611, 29.543579>,  <33.176441, 26.308451, 29.237978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426262, 25.630611, 29.543579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.718048, 25.795717, 29.325405>,  <33.893120, 25.894781, 29.194500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.718048, 25.795717, 29.325405>,  <33.426262, 25.630611, 29.543579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718048, 25.795717, 29.325405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589621, 0.024759, 0.807300,
		0.346729, -0.910502, -0.225314,
		0.729470, 0.412764, -0.545436,
		33.936890, 25.919546, 29.161774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935387, 25.343967, 29.884024>,  <33.426262, 25.630611, 29.543579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935387, 25.343967, 29.884024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084400, 25.616491, 29.631981>,  <34.173809, 25.780006, 29.480755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084400, 25.616491, 29.631981>,  <33.935387, 25.343967, 29.884024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084400, 25.616491, 29.631981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794770, 0.116323, 0.595658,
		0.479124, -0.722694, -0.498151,
		0.372532, 0.681310, -0.630109,
		34.196159, 25.820885, 29.442947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600712, 25.201754, 29.928913>,  <33.935387, 25.343967, 29.884024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600712, 25.201754, 29.928913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553707, 25.579245, 29.805258>,  <34.525505, 25.805740, 29.731064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553707, 25.579245, 29.805258>,  <34.600712, 25.201754, 29.928913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553707, 25.579245, 29.805258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626934, 0.311916, 0.713907,
		0.770160, -0.109919, -0.628308,
		-0.117508, 0.943730, -0.309137,
		34.518456, 25.862364, 29.712517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236122, 25.588478, 30.176672>,  <34.600712, 25.201754, 29.928913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236122, 25.588478, 30.176672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022305, 25.902916, 30.052536>,  <34.894012, 26.091579, 29.978054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022305, 25.902916, 30.052536>,  <35.236122, 25.588478, 30.176672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022305, 25.902916, 30.052536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475557, 0.583331, 0.658460,
		0.698645, 0.204393, -0.685652,
		-0.534547, 0.786097, -0.310341,
		34.861942, 26.138744, 29.959435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738052, 26.113117, 29.987951>,  <35.236122, 25.588478, 30.176672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738052, 26.113117, 29.987951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378124, 26.251801, 30.093870>,  <35.162167, 26.335011, 30.157421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378124, 26.251801, 30.093870>,  <35.738052, 26.113117, 29.987951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378124, 26.251801, 30.093870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436068, 0.732819, 0.522323,
		-0.012957, 0.585467, -0.810593,
		-0.899821, 0.346706, 0.264798,
		35.108177, 26.355812, 30.173309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817318, 26.831127, 30.086832>,  <35.738052, 26.113117, 29.987951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817318, 26.831127, 30.086832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457989, 26.769222, 30.251299>,  <35.242390, 26.732079, 30.349979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457989, 26.769222, 30.251299>,  <35.817318, 26.831127, 30.086832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457989, 26.769222, 30.251299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166460, 0.746216, 0.644556,
		-0.406574, 0.647464, -0.644583,
		-0.898325, -0.154762, 0.411169,
		35.188492, 26.722794, 30.374649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431751, 27.479658, 30.073738>,  <35.817318, 26.831127, 30.086832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431751, 27.479658, 30.073738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287682, 27.245396, 30.364195>,  <35.201241, 27.104839, 30.538469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287682, 27.245396, 30.364195>,  <35.431751, 27.479658, 30.073738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287682, 27.245396, 30.364195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102877, 0.748700, 0.654877,
		-0.927194, 0.310575, -0.209414,
		-0.360176, -0.585655, 0.726142,
		35.179630, 27.069698, 30.582037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177959, 27.963142, 30.576822>,  <35.431751, 27.479658, 30.073738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177959, 27.963142, 30.576822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166542, 27.626678, 30.792837>,  <35.159691, 27.424801, 30.922445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166542, 27.626678, 30.792837>,  <35.177959, 27.963142, 30.576822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166542, 27.626678, 30.792837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257301, 0.515869, 0.817114,
		-0.965910, 0.162274, 0.201707,
		-0.028542, -0.841158, 0.540036,
		35.157978, 27.374331, 30.954847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652840, 27.998053, 31.020798>,  <35.177959, 27.963142, 30.576822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652840, 27.998053, 31.020798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923260, 27.759596, 31.194035>,  <35.085510, 27.616522, 31.297977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923260, 27.759596, 31.194035>,  <34.652840, 27.998053, 31.020798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923260, 27.759596, 31.194035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140754, 0.681414, 0.718236,
		-0.723288, -0.424603, 0.544579,
		0.676049, -0.596143, 0.433094,
		35.126076, 27.580753, 31.323963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595444, 27.992496, 31.780573>,  <34.652840, 27.998053, 31.020798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595444, 27.992496, 31.780573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971474, 27.867786, 31.725346>,  <35.197090, 27.792961, 31.692209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971474, 27.867786, 31.725346>,  <34.595444, 27.992496, 31.780573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971474, 27.867786, 31.725346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271800, 0.440668, 0.855533,
		-0.205891, -0.841789, 0.499000,
		0.940071, -0.311774, -0.138068,
		35.253494, 27.774254, 31.683926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765537, 27.775612, 32.386967>,  <34.595444, 27.992496, 31.780573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765537, 27.775612, 32.386967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124893, 27.791624, 32.212021>,  <35.340508, 27.801231, 32.107056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124893, 27.791624, 32.212021>,  <34.765537, 27.775612, 32.386967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124893, 27.791624, 32.212021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376204, 0.443709, 0.813384,
		0.226623, -0.895276, 0.383566,
		0.898394, 0.040032, -0.437361,
		35.394413, 27.803635, 32.080814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446266, 27.037222, 32.625103>,  <34.765537, 27.775612, 32.386967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446266, 27.037222, 32.625103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161510, 27.090570, 32.900909>,  <33.990658, 27.122580, 33.066395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161510, 27.090570, 32.900909>,  <34.446266, 27.037222, 32.625103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161510, 27.090570, 32.900909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698373, -0.238059, -0.674983,
		0.074125, -0.962050, 0.262611,
		-0.711885, 0.133368, 0.689516,
		33.947945, 27.130581, 33.107765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094456, 26.295835, 32.725243>,  <34.446266, 27.037222, 32.625103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094456, 26.295835, 32.725243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828815, 26.566481, 32.852467>,  <33.669430, 26.728867, 32.928802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828815, 26.566481, 32.852467>,  <34.094456, 26.295835, 32.725243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828815, 26.566481, 32.852467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725408, -0.480164, -0.493180,
		-0.180969, -0.558248, 0.809698,
		-0.664104, 0.676611, 0.318063,
		33.629585, 26.769464, 32.947884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548233, 25.874559, 32.883263>,  <34.094456, 26.295835, 32.725243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548233, 25.874559, 32.883263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406780, 26.246380, 32.841549>,  <33.321907, 26.469473, 32.816521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406780, 26.246380, 32.841549>,  <33.548233, 25.874559, 32.883263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406780, 26.246380, 32.841549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813366, -0.360642, -0.456480,
		-0.461930, -0.076608, 0.883601,
		-0.353633, 0.929553, -0.104281,
		33.300690, 26.525246, 32.810265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745975, 25.838800, 33.020012>,  <33.548233, 25.874559, 32.883263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745975, 25.838800, 33.020012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844032, 26.165424, 32.810963>,  <32.902866, 26.361399, 32.685532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844032, 26.165424, 32.810963>,  <32.745975, 25.838800, 33.020012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844032, 26.165424, 32.810963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666948, -0.249202, -0.702196,
		-0.703624, 0.520698, 0.483514,
		0.245139, 0.816561, -0.522623,
		32.917576, 26.410393, 32.654175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110081, 26.127317, 32.989376>,  <32.745975, 25.838800, 33.020012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110081, 26.127317, 32.989376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348961, 26.260330, 32.697411>,  <32.492290, 26.340137, 32.522232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348961, 26.260330, 32.697411>,  <32.110081, 26.127317, 32.989376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348961, 26.260330, 32.697411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709031, -0.206599, -0.674235,
		-0.375004, 0.920184, 0.112394,
		0.597200, 0.332532, -0.729914,
		32.528122, 26.360090, 32.478436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663389, 26.383265, 32.594223>,  <32.110081, 26.127317, 32.989376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663389, 26.383265, 32.594223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981848, 26.339390, 32.356194>,  <32.172924, 26.313065, 32.213375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981848, 26.339390, 32.356194>,  <31.663389, 26.383265, 32.594223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981848, 26.339390, 32.356194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575669, -0.440279, -0.689029,
		-0.186422, 0.891136, -0.413671,
		0.796149, -0.109687, -0.595077,
		32.220692, 26.306484, 32.177670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421303, 26.613550, 31.943256>,  <31.663389, 26.383265, 32.594223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421303, 26.613550, 31.943256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.738419, 26.385527, 31.856987>,  <31.928688, 26.248713, 31.805225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.738419, 26.385527, 31.856987>,  <31.421303, 26.613550, 31.943256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738419, 26.385527, 31.856987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415368, -0.246364, -0.875656,
		0.446040, 0.783798, -0.432099,
		0.792791, -0.570058, -0.215676,
		31.976255, 26.214510, 31.792284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216454, 27.409143, 31.998901>,  <31.421303, 26.613550, 31.943256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216454, 27.409143, 31.998901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.835903, 27.397503, 32.121563>,  <30.607573, 27.390518, 32.195160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.835903, 27.397503, 32.121563>,  <31.216454, 27.409143, 31.998901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835903, 27.397503, 32.121563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299335, 0.147572, 0.942667,
		-0.072688, 0.988623, -0.131685,
		-0.951375, -0.029103, 0.306656,
		30.550491, 27.388773, 32.213558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170092, 28.036335, 32.365261>,  <31.216454, 27.409143, 31.998901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170092, 28.036335, 32.365261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.868168, 27.801901, 32.483086>,  <30.687014, 27.661240, 32.553780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.868168, 27.801901, 32.483086>,  <31.170092, 28.036335, 32.365261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868168, 27.801901, 32.483086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054191, 0.391815, 0.918447,
		-0.653705, 0.709213, -0.263984,
		-0.754807, -0.586087, 0.294564,
		30.641726, 27.626074, 32.571453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679331, 28.463209, 32.793213>,  <31.170092, 28.036335, 32.365261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679331, 28.463209, 32.793213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619553, 28.081554, 32.896969>,  <30.583685, 27.852562, 32.959225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619553, 28.081554, 32.896969>,  <30.679331, 28.463209, 32.793213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619553, 28.081554, 32.896969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194682, 0.228810, 0.953806,
		-0.969415, 0.193042, 0.151559,
		-0.149446, -0.954139, 0.259393,
		30.574718, 27.795313, 32.974789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321852, 28.492270, 33.411453>,  <30.679331, 28.463209, 32.793213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321852, 28.492270, 33.411453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491140, 28.129932, 33.418751>,  <30.592712, 27.912529, 33.423130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491140, 28.129932, 33.418751>,  <30.321852, 28.492270, 33.411453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491140, 28.129932, 33.418751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141130, 0.085796, 0.986266,
		-0.894968, -0.414833, 0.164152,
		0.423219, -0.905844, 0.018239,
		30.618107, 27.858179, 33.424221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957939, 28.145954, 33.890636>,  <30.321852, 28.492270, 33.411453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957939, 28.145954, 33.890636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306381, 27.954723, 33.845703>,  <30.515446, 27.839985, 33.818741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306381, 27.954723, 33.845703>,  <29.957939, 28.145954, 33.890636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306381, 27.954723, 33.845703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137574, 0.017969, 0.990328,
		-0.471436, -0.878134, 0.081424,
		0.871104, -0.478078, -0.112337,
		30.567713, 27.811300, 33.812000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017202, 27.686554, 34.432026>,  <29.957939, 28.145954, 33.890636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017202, 27.686554, 34.432026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.390051, 27.729216, 34.293594>,  <30.613760, 27.754812, 34.210533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.390051, 27.729216, 34.293594>,  <30.017202, 27.686554, 34.432026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390051, 27.729216, 34.293594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362110, -0.261410, 0.894730,
		0.004958, -0.959317, -0.282287,
		0.932123, 0.106655, -0.346082,
		30.669687, 27.761211, 34.189770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415749, 27.133253, 34.724823>,  <30.017202, 27.686554, 34.432026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415749, 27.133253, 34.724823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678944, 27.408636, 34.602791>,  <30.836861, 27.573866, 34.529572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678944, 27.408636, 34.602791>,  <30.415749, 27.133253, 34.724823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678944, 27.408636, 34.602791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454519, -0.040082, 0.889835,
		0.600386, -0.724168, -0.339290,
		0.657989, 0.688458, -0.305083,
		30.876341, 27.615173, 34.511265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.152929, 30.718777, 27.935980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360069, 30.399330, 28.058647>,  <31.484354, 30.207663, 28.132248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360069, 30.399330, 28.058647>,  <31.152929, 30.718777, 27.935980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360069, 30.399330, 28.058647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049084, 0.330149, 0.942652,
		-0.854062, -0.503205, 0.131768,
		0.517850, -0.798616, 0.306667,
		31.515425, 30.159746, 28.150648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915449, 30.588552, 28.616354>,  <31.152929, 30.718777, 27.935980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915449, 30.588552, 28.616354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270693, 30.405962, 28.594854>,  <31.483839, 30.296408, 28.581955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270693, 30.405962, 28.594854>,  <30.915449, 30.588552, 28.616354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270693, 30.405962, 28.594854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295678, 0.477867, 0.827175,
		-0.351902, -0.750515, 0.559369,
		0.888110, -0.456477, -0.053748,
		31.537127, 30.269018, 28.578730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962843, 30.178509, 29.257904>,  <30.915449, 30.588552, 28.616354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962843, 30.178509, 29.257904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.321245, 30.277674, 29.110548>,  <31.536287, 30.337173, 29.022135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.321245, 30.277674, 29.110548>,  <30.962843, 30.178509, 29.257904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321245, 30.277674, 29.110548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192957, 0.529821, 0.825868,
		0.399922, -0.811067, 0.426887,
		0.896008, 0.247912, -0.368388,
		31.590048, 30.352047, 29.000032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340212, 30.242151, 29.902473>,  <30.962843, 30.178509, 29.257904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340212, 30.242151, 29.902473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589695, 30.396442, 29.630531>,  <31.739384, 30.489017, 29.467365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589695, 30.396442, 29.630531>,  <31.340212, 30.242151, 29.902473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589695, 30.396442, 29.630531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389432, 0.600789, 0.698137,
		0.677742, -0.700189, 0.224500,
		0.623705, 0.385730, -0.679856,
		31.776806, 30.512161, 29.426575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080231, 30.275875, 30.180161>,  <31.340212, 30.242151, 29.902473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080231, 30.275875, 30.180161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043728, 30.550831, 29.891947>,  <32.021828, 30.715805, 29.719019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043728, 30.550831, 29.891947>,  <32.080231, 30.275875, 30.180161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043728, 30.550831, 29.891947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363989, 0.696509, 0.618375,
		0.926922, -0.205838, -0.313761,
		-0.091253, 0.687391, -0.720532,
		32.016354, 30.757048, 29.675787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707230, 30.650269, 30.248106>,  <32.080231, 30.275875, 30.180161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707230, 30.650269, 30.248106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434734, 30.871080, 30.055784>,  <32.271236, 31.003567, 29.940392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434734, 30.871080, 30.055784>,  <32.707230, 30.650269, 30.248106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434734, 30.871080, 30.055784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121329, 0.732842, 0.669494,
		0.721934, 0.397752, -0.566220,
		-0.681242, 0.552029, -0.480805,
		32.230362, 31.036690, 29.911543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992535, 31.414837, 30.335968>,  <32.707230, 30.650269, 30.248106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992535, 31.414837, 30.335968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.603561, 31.424032, 30.243153>,  <32.370178, 31.429550, 30.187464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.603561, 31.424032, 30.243153>,  <32.992535, 31.414837, 30.335968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603561, 31.424032, 30.243153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130055, 0.772485, 0.621572,
		0.193535, 0.634616, -0.748202,
		-0.972435, 0.022988, -0.232038,
		32.311832, 31.430929, 30.173542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789360, 32.121666, 30.086271>,  <32.992535, 31.414837, 30.335968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789360, 32.121666, 30.086271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.451263, 31.954279, 30.219212>,  <32.248405, 31.853848, 30.298975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.451263, 31.954279, 30.219212>,  <32.789360, 32.121666, 30.086271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451263, 31.954279, 30.219212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210403, 0.832297, 0.512847,
		-0.491222, 0.363551, -0.791537,
		-0.845240, -0.418463, 0.332351,
		32.197693, 31.828739, 30.318916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265022, 32.580036, 29.958517>,  <32.789360, 32.121666, 30.086271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265022, 32.580036, 29.958517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.158726, 32.350899, 30.268673>,  <32.094948, 32.213417, 30.454767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.158726, 32.350899, 30.268673>,  <32.265022, 32.580036, 29.958517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158726, 32.350899, 30.268673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134411, 0.818470, 0.558606,
		-0.954629, 0.044221, -0.294495,
		-0.265737, -0.572845, 0.775392,
		32.079006, 32.179047, 30.501291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730822, 32.966316, 30.314106>,  <32.265022, 32.580036, 29.958517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730822, 32.966316, 30.314106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.809280, 32.694145, 30.596539>,  <31.856356, 32.530842, 30.765997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.809280, 32.694145, 30.596539>,  <31.730822, 32.966316, 30.314106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809280, 32.694145, 30.596539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143175, 0.692477, 0.707090,
		-0.970066, -0.239786, 0.038407,
		0.196147, -0.680425, 0.706080,
		31.868124, 32.490017, 30.808363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375999, 33.151791, 30.777575>,  <31.730822, 32.966316, 30.314106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375999, 33.151791, 30.777575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.623993, 32.932217, 31.001820>,  <31.772789, 32.800472, 31.136368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.623993, 32.932217, 31.001820>,  <31.375999, 33.151791, 30.777575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623993, 32.932217, 31.001820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090911, 0.659438, 0.746241,
		-0.779331, -0.513622, 0.358936,
		0.619982, -0.548938, 0.560615,
		31.809988, 32.767536, 31.170004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176939, 33.161602, 31.532772>,  <31.375999, 33.151791, 30.777575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176939, 33.161602, 31.532772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.564203, 33.062363, 31.546082>,  <31.796562, 33.002819, 31.554068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.564203, 33.062363, 31.546082>,  <31.176939, 33.161602, 31.532772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564203, 33.062363, 31.546082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133604, 0.624556, 0.769467,
		-0.211689, -0.740523, 0.637819,
		0.968162, -0.248103, 0.033275,
		31.854652, 32.987930, 31.556065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206976, 32.561012, 32.005993>,  <31.176939, 33.161602, 31.532772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206976, 32.561012, 32.005993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846714, 32.486298, 32.162930>,  <30.630556, 32.441467, 32.257092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846714, 32.486298, 32.162930>,  <31.206976, 32.561012, 32.005993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846714, 32.486298, 32.162930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100198, -0.789291, -0.605788,
		0.422827, -0.584918, 0.692163,
		-0.900654, -0.186790, 0.392341,
		30.576517, 32.430260, 32.280632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161884, 31.825523, 32.128204>,  <31.206976, 32.561012, 32.005993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161884, 31.825523, 32.128204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789755, 31.969341, 32.099297>,  <30.566477, 32.055634, 32.081951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789755, 31.969341, 32.099297>,  <31.161884, 31.825523, 32.128204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789755, 31.969341, 32.099297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239991, -0.745880, -0.621343,
		-0.277308, -0.560706, 0.780198,
		-0.930325, 0.359544, -0.072274,
		30.510658, 32.077206, 32.077614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735765, 31.243073, 31.959589>,  <31.161884, 31.825523, 32.128204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735765, 31.243073, 31.959589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457821, 31.522337, 31.890608>,  <30.291054, 31.689896, 31.849218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457821, 31.522337, 31.890608>,  <30.735765, 31.243073, 31.959589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457821, 31.522337, 31.890608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477309, -0.627105, -0.615561,
		-0.537906, -0.345417, 0.768989,
		-0.694863, 0.698160, -0.172453,
		30.249363, 31.731785, 31.838871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178036, 30.904123, 31.928642>,  <30.735765, 31.243073, 31.959589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178036, 30.904123, 31.928642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082952, 31.226830, 31.712265>,  <30.025902, 31.420454, 31.582438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082952, 31.226830, 31.712265>,  <30.178036, 30.904123, 31.928642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082952, 31.226830, 31.712265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548370, -0.571133, -0.610817,
		-0.801738, 0.151441, 0.578171,
		-0.237709, 0.806767, -0.540945,
		30.011641, 31.468859, 31.549982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404276, 31.077995, 32.000263>,  <30.178036, 30.904123, 31.928642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404276, 31.077995, 32.000263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575460, 31.228287, 31.671463>,  <29.678171, 31.318460, 31.474184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575460, 31.228287, 31.671463>,  <29.404276, 31.077995, 32.000263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575460, 31.228287, 31.671463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645967, -0.508946, -0.568947,
		-0.632120, 0.774470, 0.024898,
		0.427961, 0.375726, -0.821997,
		29.703848, 31.341005, 31.424864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841328, 31.130272, 31.528522>,  <29.404276, 31.077995, 32.000263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841328, 31.130272, 31.528522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172560, 31.156458, 31.305813>,  <29.371300, 31.172169, 31.172188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172560, 31.156458, 31.305813>,  <28.841328, 31.130272, 31.528522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172560, 31.156458, 31.305813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493565, -0.385840, -0.779437,
		-0.265852, 0.920240, -0.287195,
		0.828080, 0.065465, -0.556774,
		29.420984, 31.176098, 31.138781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587755, 31.411972, 30.885099>,  <28.841328, 31.130272, 31.528522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587755, 31.411972, 30.885099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932501, 31.217678, 30.826788>,  <29.139349, 31.101101, 30.791801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932501, 31.217678, 30.826788>,  <28.587755, 31.411972, 30.885099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932501, 31.217678, 30.826788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377819, -0.423244, -0.823479,
		0.338294, 0.764804, -0.548299,
		0.861865, -0.485735, -0.145777,
		29.191061, 31.071957, 30.783054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661432, 31.410053, 30.144131>,  <28.587755, 31.411972, 30.885099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661432, 31.410053, 30.144131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905165, 31.122473, 30.277891>,  <29.051403, 30.949924, 30.358147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905165, 31.122473, 30.277891>,  <28.661432, 31.410053, 30.144131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905165, 31.122473, 30.277891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180154, -0.536233, -0.824620,
		0.772179, 0.442223, -0.456265,
		0.609330, -0.718953, 0.334400,
		29.087963, 30.906786, 30.378212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980183, 31.176701, 29.471292>,  <28.661432, 31.410053, 30.144131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980183, 31.176701, 29.471292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069920, 30.888647, 29.733919>,  <29.123762, 30.715815, 29.891495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069920, 30.888647, 29.733919>,  <28.980183, 31.176701, 29.471292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069920, 30.888647, 29.733919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169627, -0.692312, -0.701378,
		0.959634, 0.045977, -0.277469,
		0.224342, -0.720132, 0.656567,
		29.137222, 30.672607, 29.930889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515039, 30.687944, 29.193419>,  <28.980183, 31.176701, 29.471292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515039, 30.687944, 29.193419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340628, 30.468321, 29.478630>,  <29.235981, 30.336546, 29.649757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340628, 30.468321, 29.478630>,  <29.515039, 30.687944, 29.193419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340628, 30.468321, 29.478630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014461, -0.787937, -0.615586,
		0.899817, -0.278724, 0.335623,
		-0.436028, -0.549061, 0.713030,
		29.209820, 30.303602, 29.692539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766291, 29.959410, 29.133547>,  <29.515039, 30.687944, 29.193419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766291, 29.959410, 29.133547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439028, 29.934441, 29.362186>,  <29.242670, 29.919460, 29.499371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439028, 29.934441, 29.362186>,  <29.766291, 29.959410, 29.133547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439028, 29.934441, 29.362186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290928, -0.812518, -0.505149,
		0.495965, -0.579585, 0.646607,
		-0.818156, -0.062421, 0.571598,
		29.193581, 29.915714, 29.533667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808905, 29.216642, 29.422956>,  <29.766291, 29.959410, 29.133547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808905, 29.216642, 29.422956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445759, 29.382154, 29.395926>,  <29.227871, 29.481462, 29.379707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445759, 29.382154, 29.395926>,  <29.808905, 29.216642, 29.422956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445759, 29.382154, 29.395926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344591, -0.828230, -0.441920,
		-0.238827, -0.377917, 0.894506,
		-0.907865, 0.413781, -0.067577,
		29.173399, 29.506289, 29.375652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330555, 28.718880, 29.627602>,  <29.808905, 29.216642, 29.422956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330555, 28.718880, 29.627602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126537, 28.989775, 29.415487>,  <29.004126, 29.152311, 29.288219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126537, 28.989775, 29.415487>,  <29.330555, 28.718880, 29.627602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126537, 28.989775, 29.415487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365339, -0.728700, -0.579245,
		-0.778706, -0.101706, 0.619090,
		-0.510044, 0.677239, -0.530286,
		28.973524, 29.192945, 29.256403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722931, 28.246866, 29.515793>,  <29.330555, 28.718880, 29.627602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722931, 28.246866, 29.515793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641640, 27.864370, 29.599989>,  <28.592865, 27.634872, 29.650507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641640, 27.864370, 29.599989>,  <28.722931, 28.246866, 29.515793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641640, 27.864370, 29.599989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541659, 0.069286, 0.837738,
		-0.815662, 0.284264, 0.503875,
		-0.203227, -0.956239, 0.210489,
		28.580671, 27.577499, 29.663136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462074, 28.249611, 30.207537>,  <28.722931, 28.246866, 29.515793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462074, 28.249611, 30.207537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575985, 27.875498, 30.123493>,  <28.644331, 27.651030, 30.073067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575985, 27.875498, 30.123493>,  <28.462074, 28.249611, 30.207537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575985, 27.875498, 30.123493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499249, -0.042403, 0.865420,
		-0.818323, -0.351350, 0.454864,
		0.284778, -0.935283, -0.210111,
		28.661419, 27.594913, 30.060459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323034, 27.877344, 30.791599>,  <28.462074, 28.249611, 30.207537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323034, 27.877344, 30.791599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592312, 27.663517, 30.587227>,  <28.753878, 27.535221, 30.464603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592312, 27.663517, 30.587227>,  <28.323034, 27.877344, 30.791599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592312, 27.663517, 30.587227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426568, -0.283661, 0.858823,
		-0.604029, -0.796100, 0.037070,
		0.673193, -0.534566, -0.510930,
		28.794270, 27.503147, 30.433949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342594, 27.256163, 31.138472>,  <28.323034, 27.877344, 30.791599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342594, 27.256163, 31.138472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681862, 27.241737, 30.927073>,  <28.885422, 27.233082, 30.800232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681862, 27.241737, 30.927073>,  <28.342594, 27.256163, 31.138472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681862, 27.241737, 30.927073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515820, -0.170890, 0.839480,
		-0.120587, -0.984630, -0.126343,
		0.848168, -0.036060, -0.528499,
		28.936312, 27.230919, 30.768522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730539, 26.669228, 31.413843>,  <28.342594, 27.256163, 31.138472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730539, 26.669228, 31.413843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009502, 26.892693, 31.234282>,  <29.176880, 27.026772, 31.126545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009502, 26.892693, 31.234282>,  <28.730539, 26.669228, 31.413843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009502, 26.892693, 31.234282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644616, -0.215255, 0.733577,
		0.313193, -0.800975, -0.510243,
		0.697409, 0.558662, -0.448906,
		29.218725, 27.060291, 31.099609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314365, 26.273867, 31.527744>,  <28.730539, 26.669228, 31.413843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314365, 26.273867, 31.527744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449633, 26.638355, 31.433664>,  <29.530794, 26.857048, 31.377216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449633, 26.638355, 31.433664>,  <29.314365, 26.273867, 31.527744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449633, 26.638355, 31.433664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603630, -0.018285, 0.797055,
		0.721992, -0.411514, -0.556224,
		0.338170, 0.911220, -0.235200,
		29.551085, 26.911722, 31.363104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998253, 26.228601, 31.662354>,  <29.314365, 26.273867, 31.527744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998253, 26.228601, 31.662354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937143, 26.623901, 31.660353>,  <29.900476, 26.861080, 31.659151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937143, 26.623901, 31.660353>,  <29.998253, 26.228601, 31.662354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937143, 26.623901, 31.660353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505322, 0.082468, 0.858981,
		0.849299, 0.128702, -0.511983,
		-0.152775, 0.988248, -0.005004,
		29.891312, 26.920376, 31.658852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782883, 26.620884, 31.568426>,  <29.998253, 26.228601, 31.662354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782883, 26.620884, 31.568426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.486456, 26.823990, 31.744150>,  <30.308599, 26.945854, 31.849585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.486456, 26.823990, 31.744150>,  <30.782883, 26.620884, 31.568426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486456, 26.823990, 31.744150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559580, 0.105476, 0.822037,
		0.371065, 0.855014, -0.362301,
		-0.741067, 0.507766, 0.439310,
		30.264135, 26.976320, 31.875944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471411, 26.708469, 31.236446>,  <30.782883, 26.620884, 31.568426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471411, 26.708469, 31.236446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.691011, 26.378860, 31.292427>,  <31.822773, 26.181095, 31.326015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.691011, 26.378860, 31.292427>,  <31.471411, 26.708469, 31.236446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691011, 26.378860, 31.292427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000261, -0.167271, -0.985911,
		0.835820, 0.541305, -0.091618,
		0.549004, -0.824020, 0.139950,
		31.855713, 26.131655, 31.334412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025307, 26.766134, 30.723167>,  <31.471411, 26.708469, 31.236446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025307, 26.766134, 30.723167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.993841, 26.385981, 30.843554>,  <31.974960, 26.157888, 30.915785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.993841, 26.385981, 30.843554>,  <32.025307, 26.766134, 30.723167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993841, 26.385981, 30.843554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223414, -0.277414, -0.934413,
		0.971544, -0.140747, -0.190507,
		-0.078666, -0.950385, 0.300965,
		31.970242, 26.100864, 30.933844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439465, 26.405304, 30.357939>,  <32.025307, 26.766134, 30.723167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439465, 26.405304, 30.357939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.202888, 26.113850, 30.496092>,  <32.060944, 25.938976, 30.578983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.202888, 26.113850, 30.496092>,  <32.439465, 26.405304, 30.357939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202888, 26.113850, 30.496092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233775, -0.254993, -0.938258,
		0.771721, -0.635662, -0.019526,
		-0.591436, -0.728638, 0.345385,
		32.025459, 25.895258, 30.599707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546490, 25.854324, 29.949369>,  <32.439465, 26.405304, 30.357939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546490, 25.854324, 29.949369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197769, 25.730118, 30.100916>,  <31.988537, 25.655594, 30.191843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197769, 25.730118, 30.100916>,  <32.546490, 25.854324, 29.949369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197769, 25.730118, 30.100916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229950, -0.423497, -0.876227,
		0.432531, -0.851017, 0.297803,
		-0.871803, -0.310516, 0.378867,
		31.936228, 25.636963, 30.214577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438171, 25.071417, 29.837326>,  <32.546490, 25.854324, 29.949369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438171, 25.071417, 29.837326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.070408, 25.223564, 29.877356>,  <31.849751, 25.314854, 29.901373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.070408, 25.223564, 29.877356>,  <32.438171, 25.071417, 29.837326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070408, 25.223564, 29.877356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256548, -0.387109, -0.885624,
		-0.298124, -0.839921, 0.453493,
		-0.919405, 0.380368, 0.100073,
		31.794586, 25.337675, 29.907377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975693, 24.515949, 29.805965>,  <32.438171, 25.071417, 29.837326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975693, 24.515949, 29.805965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803345, 24.863060, 29.706921>,  <31.699936, 25.071327, 29.647493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803345, 24.863060, 29.706921>,  <31.975693, 24.515949, 29.805965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803345, 24.863060, 29.706921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298829, -0.396112, -0.868214,
		-0.851500, -0.300093, 0.429990,
		-0.430869, 0.867779, -0.247613,
		31.674084, 25.123394, 29.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547962, 24.305811, 29.279388>,  <31.975693, 24.515949, 29.805965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547962, 24.305811, 29.279388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.468607, 24.691380, 29.208395>,  <31.420994, 24.922720, 29.165798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.468607, 24.691380, 29.208395>,  <31.547962, 24.305811, 29.279388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468607, 24.691380, 29.208395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427115, -0.248009, -0.869520,
		-0.882164, -0.096698, 0.460907,
		-0.198390, 0.963919, -0.177484,
		31.409090, 24.980555, 29.155149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909222, 24.290651, 29.237598>,  <31.547962, 24.305811, 29.279388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909222, 24.290651, 29.237598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057642, 24.615026, 29.056623>,  <31.146694, 24.809652, 28.948038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057642, 24.615026, 29.056623>,  <30.909222, 24.290651, 29.237598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057642, 24.615026, 29.056623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376223, -0.314161, -0.871641,
		-0.848986, 0.493642, 0.188523,
		0.371052, 0.810938, -0.452438,
		31.168957, 24.858309, 28.920893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390141, 24.600019, 28.827768>,  <30.909222, 24.290651, 29.237598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390141, 24.600019, 28.827768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.724243, 24.742229, 28.659985>,  <30.924706, 24.827555, 28.559315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.724243, 24.742229, 28.659985>,  <30.390141, 24.600019, 28.827768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724243, 24.742229, 28.659985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313789, -0.318236, -0.894574,
		-0.451530, 0.878822, -0.154250,
		0.835259, 0.355525, -0.419458,
		30.974821, 24.848886, 28.534147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.634193, 32.905762, 41.158730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.917606, 33.047565, 40.914661>,  <37.087654, 33.132648, 40.768219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.917606, 33.047565, 40.914661>,  <36.634193, 32.905762, 41.158730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917606, 33.047565, 40.914661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280286, -0.652154, -0.704368,
		-0.647630, 0.670088, -0.362708,
		0.708530, 0.354508, -0.610171,
		37.130165, 33.153919, 40.731609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282639, 32.880192, 40.573578>,  <36.634193, 32.905762, 41.158730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282639, 32.880192, 40.573578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658558, 32.925465, 40.444603>,  <36.884109, 32.952629, 40.367218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658558, 32.925465, 40.444603>,  <36.282639, 32.880192, 40.573578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658558, 32.925465, 40.444603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191228, -0.607800, -0.770721,
		-0.283213, 0.785982, -0.549565,
		0.939799, 0.113186, -0.322438,
		36.940498, 32.959419, 40.347870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240059, 32.893887, 39.805038>,  <36.282639, 32.880192, 40.573578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240059, 32.893887, 39.805038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612598, 32.798000, 39.914680>,  <36.836121, 32.740467, 39.980465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612598, 32.798000, 39.914680>,  <36.240059, 32.893887, 39.805038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612598, 32.798000, 39.914680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065797, -0.629568, -0.774154,
		0.358146, 0.739039, -0.570572,
		0.931344, -0.239718, 0.274104,
		36.892002, 32.726086, 39.996910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574581, 32.832981, 39.198021>,  <36.240059, 32.893887, 39.805038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574581, 32.832981, 39.198021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850761, 32.648987, 39.421341>,  <37.016468, 32.538589, 39.555332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850761, 32.648987, 39.421341>,  <36.574581, 32.832981, 39.198021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850761, 32.648987, 39.421341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044228, -0.797187, -0.602111,
		0.722029, 0.391034, -0.570760,
		0.690448, -0.459985, 0.558297,
		37.057896, 32.510990, 39.588829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059795, 32.615841, 38.761395>,  <36.574581, 32.832981, 39.198021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059795, 32.615841, 38.761395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082596, 32.367977, 39.074516>,  <37.096275, 32.219261, 39.262390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082596, 32.367977, 39.074516>,  <37.059795, 32.615841, 38.761395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082596, 32.367977, 39.074516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204195, -0.774736, -0.598404,
		0.977269, -0.125736, -0.170690,
		0.056999, -0.619656, 0.782801,
		37.099697, 32.182079, 39.309357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465477, 32.139664, 38.585232>,  <37.059795, 32.615841, 38.761395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465477, 32.139664, 38.585232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281158, 31.961403, 38.892235>,  <37.170567, 31.854446, 39.076435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281158, 31.961403, 38.892235>,  <37.465477, 32.139664, 38.585232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281158, 31.961403, 38.892235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098986, -0.833586, -0.543448,
		0.881969, -0.326391, 0.339999,
		-0.460795, -0.445649, 0.767505,
		37.142921, 31.827707, 39.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730106, 31.461258, 38.582954>,  <37.465477, 32.139664, 38.585232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730106, 31.461258, 38.582954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393372, 31.447126, 38.798382>,  <37.191330, 31.438648, 38.927639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393372, 31.447126, 38.798382>,  <37.730106, 31.461258, 38.582954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393372, 31.447126, 38.798382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326174, -0.761724, -0.559809,
		0.430020, -0.646937, 0.629726,
		-0.841839, -0.035329, 0.538571,
		37.140820, 31.436527, 38.959953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635006, 30.687546, 38.695042>,  <37.730106, 31.461258, 38.582954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635006, 30.687546, 38.695042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282024, 30.865997, 38.754688>,  <37.070236, 30.973068, 38.790478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282024, 30.865997, 38.754688>,  <37.635006, 30.687546, 38.695042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282024, 30.865997, 38.754688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451445, -0.714165, -0.534945,
		-0.132159, -0.539386, 0.831623,
		-0.882458, 0.446130, 0.149120,
		37.017288, 30.999836, 38.799423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250240, 30.100164, 38.992054>,  <37.635006, 30.687546, 38.695042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250240, 30.100164, 38.992054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009537, 30.373133, 38.826073>,  <36.865112, 30.536915, 38.726486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009537, 30.373133, 38.826073>,  <37.250240, 30.100164, 38.992054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009537, 30.373133, 38.826073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470082, -0.722652, -0.506752,
		-0.645683, -0.109883, 0.755658,
		-0.601762, 0.682422, -0.414950,
		36.829010, 30.577860, 38.701588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495483, 29.878160, 39.170803>,  <37.250240, 30.100164, 38.992054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495483, 29.878160, 39.170803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475788, 30.117853, 38.851177>,  <36.463970, 30.261669, 38.659401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475788, 30.117853, 38.851177>,  <36.495483, 29.878160, 39.170803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475788, 30.117853, 38.851177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518881, -0.698943, -0.492179,
		-0.853427, 0.390386, 0.345340,
		-0.049234, 0.599230, -0.799062,
		36.461018, 30.297623, 38.611458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752277, 29.893709, 38.987991>,  <36.495483, 29.878160, 39.170803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752277, 29.893709, 38.987991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939800, 30.041080, 38.666874>,  <36.052315, 30.129503, 38.474201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939800, 30.041080, 38.666874>,  <35.752277, 29.893709, 38.987991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939800, 30.041080, 38.666874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583681, -0.552946, -0.594615,
		-0.662974, 0.747337, -0.044182,
		0.468809, 0.368426, -0.802795,
		36.080444, 30.151608, 38.426037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214684, 30.071438, 38.489071>,  <35.752277, 29.893709, 38.987991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214684, 30.071438, 38.489071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538990, 30.013359, 38.262238>,  <35.733574, 29.978512, 38.126137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538990, 30.013359, 38.262238>,  <35.214684, 30.071438, 38.489071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538990, 30.013359, 38.262238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562620, -0.460754, -0.686415,
		-0.161621, 0.875571, -0.455252,
		0.810764, -0.145195, -0.567081,
		35.782219, 29.969801, 38.092113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613556, 30.359669, 38.670990>,  <35.214684, 30.071438, 38.489071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613556, 30.359669, 38.670990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328903, 30.187288, 38.892929>,  <34.158112, 30.083860, 39.026093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328903, 30.187288, 38.892929>,  <34.613556, 30.359669, 38.670990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328903, 30.187288, 38.892929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047403, 0.758509, 0.649936,
		-0.700949, 0.488818, -0.519353,
		-0.711634, -0.430953, 0.554848,
		34.115414, 30.058002, 39.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238235, 30.949148, 39.004417>,  <34.613556, 30.359669, 38.670990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238235, 30.949148, 39.004417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139198, 30.620306, 39.209492>,  <34.079777, 30.423000, 39.332535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139198, 30.620306, 39.209492>,  <34.238235, 30.949148, 39.004417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139198, 30.620306, 39.209492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058479, 0.515513, 0.854884,
		-0.967097, 0.241645, -0.079562,
		-0.247594, -0.822103, 0.512682,
		34.064919, 30.373674, 39.363297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576450, 31.182125, 39.261856>,  <34.238235, 30.949148, 39.004417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576450, 31.182125, 39.261856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762882, 30.909718, 39.487770>,  <33.874741, 30.746273, 39.623318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762882, 30.909718, 39.487770>,  <33.576450, 31.182125, 39.261856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762882, 30.909718, 39.487770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017011, 0.645145, 0.763871,
		-0.884580, -0.346416, 0.312273,
		0.466078, -0.681017, 0.564790,
		33.902706, 30.705412, 39.657207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313740, 31.302055, 39.847721>,  <33.576450, 31.182125, 39.261856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313740, 31.302055, 39.847721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621918, 31.069668, 39.952713>,  <33.806824, 30.930235, 40.015709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621918, 31.069668, 39.952713>,  <33.313740, 31.302055, 39.847721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621918, 31.069668, 39.952713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216281, 0.625504, 0.749645,
		-0.599704, -0.520787, 0.607566,
		0.770440, -0.580969, 0.262481,
		33.853050, 30.895376, 40.031456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236736, 31.282591, 40.534569>,  <33.313740, 31.302055, 39.847721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236736, 31.282591, 40.534569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618359, 31.184708, 40.465401>,  <33.847332, 31.125978, 40.423901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618359, 31.184708, 40.465401>,  <33.236736, 31.282591, 40.534569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618359, 31.184708, 40.465401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274143, 0.479887, 0.833399,
		-0.120956, -0.842512, 0.524922,
		0.954052, -0.244709, -0.172923,
		33.904575, 31.111296, 40.413525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481800, 30.894070, 41.104897>,  <33.236736, 31.282591, 40.534569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481800, 30.894070, 41.104897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778736, 31.091175, 40.923298>,  <33.956898, 31.209438, 40.814339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778736, 31.091175, 40.923298>,  <33.481800, 30.894070, 41.104897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778736, 31.091175, 40.923298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127852, 0.560959, 0.817911,
		0.657713, -0.665212, 0.353421,
		0.742339, 0.492765, -0.453999,
		34.001438, 31.239004, 40.787098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974491, 30.988424, 41.649979>,  <33.481800, 30.894070, 41.104897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974491, 30.988424, 41.649979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094025, 31.249142, 41.371162>,  <34.165745, 31.405571, 41.203873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094025, 31.249142, 41.371162>,  <33.974491, 30.988424, 41.649979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094025, 31.249142, 41.371162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282456, 0.637280, 0.717003,
		0.911547, -0.411147, 0.006337,
		0.298832, 0.651792, -0.697042,
		34.183674, 31.444679, 41.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692146, 31.118423, 41.852348>,  <33.974491, 30.988424, 41.649979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692146, 31.118423, 41.852348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584324, 31.411060, 41.601871>,  <34.519630, 31.586643, 41.451588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584324, 31.411060, 41.601871>,  <34.692146, 31.118423, 41.852348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584324, 31.411060, 41.601871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335847, 0.680851, 0.650882,
		0.902522, -0.034855, -0.429231,
		-0.269556, 0.731592, -0.626189,
		34.503456, 31.630537, 41.414013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239887, 31.685102, 41.974586>,  <34.692146, 31.118423, 41.852348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239887, 31.685102, 41.974586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916859, 31.846315, 41.802357>,  <34.723042, 31.943043, 41.699017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916859, 31.846315, 41.802357>,  <35.239887, 31.685102, 41.974586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916859, 31.846315, 41.802357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085628, 0.802460, 0.590530,
		0.583525, 0.440024, -0.682552,
		-0.807569, 0.403034, -0.430577,
		34.674587, 31.967226, 41.673183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362083, 32.456360, 41.891464>,  <35.239887, 31.685102, 41.974586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362083, 32.456360, 41.891464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969357, 32.385139, 41.865116>,  <34.733723, 32.342407, 41.849308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969357, 32.385139, 41.865116>,  <35.362083, 32.456360, 41.891464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969357, 32.385139, 41.865116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188953, 0.882884, 0.429898,
		-0.018386, 0.434527, -0.900471,
		-0.981814, -0.178050, -0.065872,
		34.674812, 32.331726, 41.845356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014477, 33.076439, 41.567989>,  <35.362083, 32.456360, 41.891464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014477, 33.076439, 41.567989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748646, 32.861423, 41.775600>,  <34.589146, 32.732414, 41.900166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748646, 32.861423, 41.775600>,  <35.014477, 33.076439, 41.567989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748646, 32.861423, 41.775600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175398, 0.787424, 0.590930,
		-0.726343, 0.301682, -0.617587,
		-0.664576, -0.537542, 0.519026,
		34.549274, 32.700161, 41.931309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574707, 33.527550, 41.694489>,  <35.014477, 33.076439, 41.567989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574707, 33.527550, 41.694489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445087, 33.257061, 41.959129>,  <34.367313, 33.094769, 42.117912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445087, 33.257061, 41.959129>,  <34.574707, 33.527550, 41.694489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445087, 33.257061, 41.959129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329251, 0.736229, 0.591237,
		-0.886896, -0.026241, -0.461223,
		-0.324051, -0.676224, 0.661598,
		34.347874, 33.054195, 42.157608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910378, 33.778423, 41.899746>,  <34.574707, 33.527550, 41.694489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910378, 33.778423, 41.899746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057205, 33.522823, 42.170135>,  <34.145302, 33.369465, 42.332367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057205, 33.522823, 42.170135>,  <33.910378, 33.778423, 41.899746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057205, 33.522823, 42.170135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448087, 0.515358, 0.730496,
		-0.815155, -0.571037, -0.097155,
		0.367071, -0.639001, 0.675971,
		34.167328, 33.331123, 42.372929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380806, 33.795254, 42.359798>,  <33.910378, 33.778423, 41.899746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380806, 33.795254, 42.359798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699795, 33.666363, 42.563839>,  <33.891190, 33.589027, 42.686264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699795, 33.666363, 42.563839>,  <33.380806, 33.795254, 42.359798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699795, 33.666363, 42.563839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283242, 0.546562, 0.788064,
		-0.532739, -0.772942, 0.344600,
		0.797473, -0.322227, 0.510105,
		33.939037, 33.569695, 42.716869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175262, 33.514263, 43.073231>,  <33.380806, 33.795254, 42.359798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175262, 33.514263, 43.073231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562569, 33.612278, 43.092903>,  <33.794952, 33.671085, 43.104706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562569, 33.612278, 43.092903>,  <33.175262, 33.514263, 43.073231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562569, 33.612278, 43.092903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182106, 0.556937, 0.810345,
		0.171170, -0.793586, 0.583885,
		0.968266, 0.245036, 0.049186,
		33.853050, 33.685787, 43.107658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662350, 33.904800, 42.600166>,  <33.175262, 33.514263, 43.073231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662350, 33.904800, 42.600166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652958, 34.278538, 42.457928>,  <32.647324, 34.502781, 42.372585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652958, 34.278538, 42.457928>,  <32.662350, 33.904800, 42.600166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652958, 34.278538, 42.457928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238294, -0.350673, -0.905673,
		-0.970909, 0.063468, 0.230884,
		-0.023484, 0.934345, -0.355596,
		32.645912, 34.558842, 42.351250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986761, 34.033810, 42.129322>,  <32.662350, 33.904800, 42.600166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986761, 34.033810, 42.129322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302582, 34.251408, 42.015705>,  <32.492073, 34.381966, 41.947533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302582, 34.251408, 42.015705>,  <31.986761, 34.033810, 42.129322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302582, 34.251408, 42.015705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210961, -0.194050, -0.958040,
		-0.576287, 0.816342, -0.038451,
		0.789550, 0.543995, -0.284045,
		32.539448, 34.414604, 41.930492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735321, 34.535358, 41.726074>,  <31.986761, 34.033810, 42.129322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735321, 34.535358, 41.726074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116020, 34.485054, 41.614105>,  <32.344440, 34.454872, 41.546925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116020, 34.485054, 41.614105>,  <31.735321, 34.535358, 41.726074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116020, 34.485054, 41.614105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282796, -0.005250, -0.959166,
		0.119155, 0.992047, -0.040561,
		0.951750, -0.125760, -0.279921,
		32.401546, 34.447327, 41.530128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801279, 34.892029, 41.044212>,  <31.735321, 34.535358, 41.726074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801279, 34.892029, 41.044212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122711, 34.656239, 41.077133>,  <32.315571, 34.514763, 41.096886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122711, 34.656239, 41.077133>,  <31.801279, 34.892029, 41.044212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122711, 34.656239, 41.077133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046141, -0.199551, -0.978801,
		0.593405, 0.782748, -0.187554,
		0.803581, -0.589479, 0.082298,
		32.363785, 34.479397, 41.101822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307095, 35.084339, 40.614334>,  <31.801279, 34.892029, 41.044212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307095, 35.084339, 40.614334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424446, 34.707851, 40.681320>,  <32.494858, 34.481960, 40.721512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424446, 34.707851, 40.681320>,  <32.307095, 35.084339, 40.614334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424446, 34.707851, 40.681320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173096, -0.224579, -0.958959,
		0.940196, 0.252346, -0.228806,
		0.293374, -0.941215, 0.167468,
		32.512459, 34.425488, 40.731560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615971, 34.919380, 40.007984>,  <32.307095, 35.084339, 40.614334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615971, 34.919380, 40.007984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574947, 34.554813, 40.167381>,  <32.550335, 34.336071, 40.263020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574947, 34.554813, 40.167381>,  <32.615971, 34.919380, 40.007984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574947, 34.554813, 40.167381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204092, -0.372802, -0.905188,
		0.973565, -0.174162, -0.147781,
		-0.102556, -0.911420, 0.398492,
		32.544182, 34.281387, 40.286930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074188, 34.475704, 39.674103>,  <32.615971, 34.919380, 40.007984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074188, 34.475704, 39.674103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768681, 34.267883, 39.827320>,  <32.585377, 34.143192, 39.919250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768681, 34.267883, 39.827320>,  <33.074188, 34.475704, 39.674103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768681, 34.267883, 39.827320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221134, -0.346907, -0.911458,
		0.606432, -0.780846, 0.150065,
		-0.763767, -0.519552, 0.383047,
		32.539551, 34.112019, 39.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003983, 33.841545, 39.252903>,  <33.074188, 34.475704, 39.674103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003983, 33.841545, 39.252903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648182, 33.868069, 39.433743>,  <32.434700, 33.883984, 39.542244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648182, 33.868069, 39.433743>,  <33.003983, 33.841545, 39.252903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648182, 33.868069, 39.433743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429670, -0.458021, -0.778203,
		0.155469, -0.886465, 0.435901,
		-0.889501, 0.066307, 0.452096,
		32.381332, 33.887962, 39.569370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739468, 33.189972, 39.195221>,  <33.003983, 33.841545, 39.252903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739468, 33.189972, 39.195221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432037, 33.442108, 39.238991>,  <32.247581, 33.593388, 39.265251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432037, 33.442108, 39.238991>,  <32.739468, 33.189972, 39.195221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432037, 33.442108, 39.238991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454906, -0.418179, -0.786249,
		-0.449847, -0.654062, 0.608145,
		-0.768569, 0.630341, 0.109420,
		32.201466, 33.631210, 39.271820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166672, 32.768250, 38.998341>,  <32.739468, 33.189972, 39.195221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166672, 32.768250, 38.998341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.022526, 33.141365, 38.995491>,  <31.936039, 33.365234, 38.993782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.022526, 33.141365, 38.995491>,  <32.166672, 32.768250, 38.998341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022526, 33.141365, 38.995491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632179, -0.249829, -0.733440,
		-0.685921, -0.259805, 0.679717,
		-0.360364, 0.932784, -0.007120,
		31.914417, 33.421200, 38.993355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438229, 32.650337, 38.959541>,  <32.166672, 32.768250, 38.998341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438229, 32.650337, 38.959541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545893, 33.006119, 38.811802>,  <31.610491, 33.219589, 38.723156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545893, 33.006119, 38.811802>,  <31.438229, 32.650337, 38.959541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545893, 33.006119, 38.811802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538176, -0.179137, -0.823576,
		-0.798699, 0.420450, 0.430467,
		0.269160, 0.889456, -0.369353,
		31.626640, 33.272957, 38.700996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855286, 32.868668, 38.565945>,  <31.438229, 32.650337, 38.959541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855286, 32.868668, 38.565945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.115189, 33.143574, 38.436028>,  <31.271130, 33.308517, 38.358078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.115189, 33.143574, 38.436028>,  <30.855286, 32.868668, 38.565945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115189, 33.143574, 38.436028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419973, -0.031576, -0.906987,
		-0.633594, 0.725723, 0.268114,
		0.649755, 0.687262, -0.324791,
		31.310116, 33.349751, 38.338589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563438, 33.485386, 38.349602>,  <30.855286, 32.868668, 38.565945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563438, 33.485386, 38.349602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911579, 33.459457, 38.154343>,  <31.120464, 33.443901, 38.037189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911579, 33.459457, 38.154343>,  <30.563438, 33.485386, 38.349602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911579, 33.459457, 38.154343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482873, 0.081992, -0.871843,
		0.096538, 0.994522, 0.040061,
		0.870353, -0.064821, -0.488144,
		31.172686, 33.440010, 38.007900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485033, 33.916489, 37.796902>,  <30.563438, 33.485386, 38.349602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485033, 33.916489, 37.796902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793365, 33.689007, 37.682087>,  <30.978365, 33.552517, 37.613197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793365, 33.689007, 37.682087>,  <30.485033, 33.916489, 37.796902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793365, 33.689007, 37.682087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350532, -0.002420, -0.936548,
		0.531926, 0.822537, -0.201215,
		0.770832, -0.568706, -0.287038,
		31.024614, 33.518394, 37.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655127, 34.206081, 37.276672>,  <30.485033, 33.916489, 37.796902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655127, 34.206081, 37.276672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853142, 33.863224, 37.219761>,  <30.971951, 33.657509, 37.185612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853142, 33.863224, 37.219761>,  <30.655127, 34.206081, 37.276672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853142, 33.863224, 37.219761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196093, 0.049314, -0.979345,
		0.846453, 0.512715, -0.143667,
		0.495040, -0.857141, -0.142281,
		31.001654, 33.606083, 37.177078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077072, 34.315678, 36.689178>,  <30.655127, 34.206081, 37.276672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077072, 34.315678, 36.689178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.056767, 33.918686, 36.733727>,  <31.044582, 33.680489, 36.760456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.056767, 33.918686, 36.733727>,  <31.077072, 34.315678, 36.689178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056767, 33.918686, 36.733727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193140, -0.099649, -0.976098,
		0.979857, -0.071059, -0.186630,
		-0.050763, -0.992482, 0.111366,
		31.041538, 33.620941, 36.767136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643629, 33.964722, 36.330841>,  <31.077072, 34.315678, 36.689178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643629, 33.964722, 36.330841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323318, 33.726254, 36.353966>,  <31.131132, 33.583172, 36.367840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323318, 33.726254, 36.353966>,  <31.643629, 33.964722, 36.330841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323318, 33.726254, 36.353966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001087, -0.095076, -0.995469,
		0.598962, -0.797211, 0.075486,
		-0.800777, -0.596166, 0.057813,
		31.083086, 33.547405, 36.371311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737919, 33.495277, 35.818008>,  <31.643629, 33.964722, 36.330841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737919, 33.495277, 35.818008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.345215, 33.468922, 35.889351>,  <31.109592, 33.453110, 35.932156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.345215, 33.468922, 35.889351>,  <31.737919, 33.495277, 35.818008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345215, 33.468922, 35.889351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165167, -0.169161, -0.971650,
		0.094190, -0.983384, 0.155192,
		-0.981758, -0.065887, 0.178356,
		31.050688, 33.449158, 35.942856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565468, 32.885338, 35.523933>,  <31.737919, 33.495277, 35.818008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565468, 32.885338, 35.523933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.228642, 33.099804, 35.547436>,  <31.026546, 33.228485, 35.561535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.228642, 33.099804, 35.547436>,  <31.565468, 32.885338, 35.523933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228642, 33.099804, 35.547436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208937, -0.223825, -0.951970,
		-0.497267, -0.813895, 0.300501,
		-0.842063, 0.536169, 0.058752,
		30.976023, 33.260654, 35.565060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153534, 32.474846, 35.245697>,  <31.565468, 32.885338, 35.523933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153534, 32.474846, 35.245697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932615, 32.807106, 35.217449>,  <30.800064, 33.006462, 35.200500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932615, 32.807106, 35.217449>,  <31.153534, 32.474846, 35.245697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932615, 32.807106, 35.217449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198235, -0.213141, -0.956699,
		-0.809736, -0.514381, 0.282381,
		-0.552295, 0.830652, -0.070620,
		30.766926, 33.056301, 35.196262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608164, 32.329765, 34.844482>,  <31.153534, 32.474846, 35.245697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608164, 32.329765, 34.844482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.612045, 32.729610, 34.834118>,  <30.614374, 32.969517, 34.827900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.612045, 32.729610, 34.834118>,  <30.608164, 32.329765, 34.844482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612045, 32.729610, 34.834118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148410, -0.024185, -0.988630,
		-0.988878, 0.013441, 0.148119,
		0.009706, 0.999617, -0.025911,
		30.614958, 33.029495, 34.826344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933462, 32.507771, 34.566402>,  <30.608164, 32.329765, 34.844482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933462, 32.507771, 34.566402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.196650, 32.802677, 34.505058>,  <30.354563, 32.979622, 34.468250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.196650, 32.802677, 34.505058>,  <29.933462, 32.507771, 34.566402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196650, 32.802677, 34.505058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317764, 0.087186, -0.944153,
		-0.682718, 0.669956, 0.291641,
		0.657968, 0.737264, -0.153365,
		30.394039, 33.023857, 34.459049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595324, 33.081161, 34.191925>,  <29.933462, 32.507771, 34.566402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595324, 33.081161, 34.191925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.988834, 33.127216, 34.136890>,  <30.224941, 33.154850, 34.103870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.988834, 33.127216, 34.136890>,  <29.595324, 33.081161, 34.191925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988834, 33.127216, 34.136890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126186, -0.101081, -0.986843,
		-0.127527, 0.988194, -0.084913,
		0.983775, 0.115134, -0.137586,
		30.283966, 33.161758, 34.095615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669746, 33.607613, 33.655441>,  <29.595324, 33.081161, 34.191925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669746, 33.607613, 33.655441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.010752, 33.399025, 33.669815>,  <30.215355, 33.273872, 33.678440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.010752, 33.399025, 33.669815>,  <29.669746, 33.607613, 33.655441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010752, 33.399025, 33.669815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013930, -0.091392, -0.995718,
		0.522523, 0.848360, -0.085177,
		0.852511, -0.521472, 0.035937,
		30.266504, 33.242584, 33.680595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024212, 33.913082, 33.166313>,  <29.669746, 33.607613, 33.655441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024212, 33.913082, 33.166313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.185814, 33.549294, 33.205593>,  <30.282776, 33.331020, 33.229160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.185814, 33.549294, 33.205593>,  <30.024212, 33.913082, 33.166313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185814, 33.549294, 33.205593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067212, -0.136569, -0.988348,
		0.912284, 0.392698, -0.116302,
		0.404005, -0.909471, 0.098195,
		30.307014, 33.276451, 33.235050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321218, 33.750347, 32.525986>,  <30.024212, 33.913082, 33.166313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321218, 33.750347, 32.525986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.358978, 33.387554, 32.690166>,  <30.381634, 33.169880, 32.788673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.358978, 33.387554, 32.690166>,  <30.321218, 33.750347, 32.525986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358978, 33.387554, 32.690166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049928, -0.407459, -0.911858,
		0.994282, 0.106571, 0.006821,
		0.094398, -0.906984, 0.410450,
		30.387299, 33.115459, 32.813301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971416, 33.313755, 32.287647>,  <30.321218, 33.750347, 32.525986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971416, 33.313755, 32.287647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.699345, 33.053978, 32.423637>,  <30.536102, 32.898113, 32.505234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.699345, 33.053978, 32.423637>,  <30.971416, 33.313755, 32.287647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699345, 33.053978, 32.423637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233596, -0.631637, -0.739234,
		0.694831, -0.423394, 0.581333,
		-0.680178, -0.649440, 0.339978,
		30.495291, 32.859146, 32.525631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509605, 32.859722, 32.571751>,  <30.971416, 33.313755, 32.287647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509605, 32.859722, 32.571751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817518, 32.959148, 32.336582>,  <32.002266, 33.018806, 32.195480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817518, 32.959148, 32.336582>,  <31.509605, 32.859722, 32.571751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817518, 32.959148, 32.336582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420275, 0.495860, 0.759929,
		0.480417, -0.832068, 0.277240,
		0.769785, 0.248566, -0.587916,
		32.048454, 33.033718, 32.160206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082886, 32.757332, 32.974701>,  <31.509605, 32.859722, 32.571751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082886, 32.757332, 32.974701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195694, 32.997684, 32.675526>,  <32.263378, 33.141895, 32.496021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195694, 32.997684, 32.675526>,  <32.082886, 32.757332, 32.974701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195694, 32.997684, 32.675526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637534, 0.465198, 0.614118,
		0.716950, -0.650027, -0.251888,
		0.282016, 0.600879, -0.747938,
		32.280300, 33.177948, 32.451145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772289, 32.758186, 33.059658>,  <32.082886, 32.757332, 32.974701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772289, 32.758186, 33.059658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674236, 33.079338, 32.842293>,  <32.615406, 33.272030, 32.711872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674236, 33.079338, 32.842293>,  <32.772289, 32.758186, 33.059658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674236, 33.079338, 32.842293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523072, 0.581459, 0.623138,
		0.816276, -0.131494, -0.562496,
		-0.245130, 0.802879, -0.543412,
		32.600697, 33.320202, 32.679268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443684, 33.117191, 33.059143>,  <32.772289, 32.758186, 33.059658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443684, 33.117191, 33.059143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161041, 33.379162, 32.951977>,  <32.991455, 33.536346, 32.887676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161041, 33.379162, 32.951977>,  <33.443684, 33.117191, 33.059143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161041, 33.379162, 32.951977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472950, 0.718747, 0.509629,
		0.526338, 0.233392, -0.817617,
		-0.706602, 0.654929, -0.267920,
		32.949062, 33.575642, 32.871601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808224, 33.696266, 32.853149>,  <33.443684, 33.117191, 33.059143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808224, 33.696266, 32.853149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445225, 33.846783, 32.927830>,  <33.227425, 33.937092, 32.972637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445225, 33.846783, 32.927830>,  <33.808224, 33.696266, 32.853149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445225, 33.846783, 32.927830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403014, 0.654612, 0.639581,
		0.118455, 0.655658, -0.745708,
		-0.907495, 0.376292, 0.186698,
		33.172977, 33.959671, 32.983837>
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
