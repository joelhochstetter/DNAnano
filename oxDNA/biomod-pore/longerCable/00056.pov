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
	<23.937103, 34.917366, 34.837742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196888, 35.055141, 35.108906>,  <24.352758, 35.137806, 35.271603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196888, 35.055141, 35.108906>,  <23.937103, 34.917366, 34.837742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196888, 35.055141, 35.108906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489600, -0.871553, -0.026226,
		0.581799, 0.348936, -0.734679,
		0.649463, 0.344441, 0.677907,
		24.391727, 35.158474, 35.312279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616266, 34.670540, 34.667114>,  <23.937103, 34.917366, 34.837742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616266, 34.670540, 34.667114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659794, 34.765457, 35.053246>,  <24.685911, 34.822407, 35.284924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659794, 34.765457, 35.053246>,  <24.616266, 34.670540, 34.667114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659794, 34.765457, 35.053246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624916, -0.771537, 0.119210,
		0.773071, 0.590274, -0.232247,
		0.108821, 0.237292, 0.965324,
		24.692440, 34.836643, 35.342842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386070, 34.790478, 34.818859>,  <24.616266, 34.670540, 34.667114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386070, 34.790478, 34.818859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155914, 34.668442, 35.122398>,  <25.017820, 34.595219, 35.304520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155914, 34.668442, 35.122398>,  <25.386070, 34.790478, 34.818859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155914, 34.668442, 35.122398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523766, -0.850061, 0.055375,
		0.628170, 0.429320, 0.648912,
		-0.575389, -0.305093, 0.758845,
		24.983297, 34.576916, 35.350052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125830, 34.918537, 34.742748>,  <25.386070, 34.790478, 34.818859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125830, 34.918537, 34.742748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870543, 34.955044, 34.436977>,  <25.717369, 34.976948, 34.253517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870543, 34.955044, 34.436977>,  <26.125830, 34.918537, 34.742748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870543, 34.955044, 34.436977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562966, 0.621954, 0.544281,
		0.525114, 0.777716, -0.345561,
		-0.638219, 0.091271, -0.764425,
		25.679077, 34.982426, 34.207649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745686, 34.525993, 34.654163>,  <26.125830, 34.918537, 34.742748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745686, 34.525993, 34.654163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697407, 34.131535, 34.608650>,  <26.668440, 33.894859, 34.581345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697407, 34.131535, 34.608650>,  <26.745686, 34.525993, 34.654163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697407, 34.131535, 34.608650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695785, -0.002290, -0.718246,
		0.708036, -0.165858, 0.686422,
		-0.120699, -0.986147, -0.113780,
		26.661198, 33.835690, 34.574516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333328, 34.118561, 34.997906>,  <26.745686, 34.525993, 34.654163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333328, 34.118561, 34.997906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146513, 33.981186, 34.671978>,  <27.034424, 33.898762, 34.476421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146513, 33.981186, 34.671978>,  <27.333328, 34.118561, 34.997906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146513, 33.981186, 34.671978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856449, 0.053496, -0.513452,
		0.219928, -0.937651, 0.269151,
		-0.467040, -0.343437, -0.814816,
		27.006401, 33.878155, 34.427532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202692, 33.599575, 35.605637>,  <27.333328, 34.118561, 34.997906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202692, 33.599575, 35.605637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144077, 33.870953, 35.893593>,  <27.108908, 34.033779, 36.066368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144077, 33.870953, 35.893593>,  <27.202692, 33.599575, 35.605637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144077, 33.870953, 35.893593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420760, -0.615884, 0.666069,
		0.895258, 0.400507, -0.195210,
		-0.146538, 0.678440, 0.719893,
		27.100117, 34.074486, 36.109562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812792, 33.766869, 36.023483>,  <27.202692, 33.599575, 35.605637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812792, 33.766869, 36.023483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497475, 33.826565, 36.262253>,  <27.308285, 33.862381, 36.405514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497475, 33.826565, 36.262253>,  <27.812792, 33.766869, 36.023483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497475, 33.826565, 36.262253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444448, -0.532789, 0.720140,
		0.425509, 0.832984, 0.353665,
		-0.788294, 0.149240, 0.596925,
		27.260986, 33.871338, 36.441330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049768, 34.067173, 36.775990>,  <27.812792, 33.766869, 36.023483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049768, 34.067173, 36.775990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699289, 33.876095, 36.801544>,  <27.489002, 33.761448, 36.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699289, 33.876095, 36.801544>,  <28.049768, 34.067173, 36.775990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699289, 33.876095, 36.801544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360694, -0.562044, 0.744316,
		-0.319649, 0.675213, 0.664765,
		-0.876199, -0.477697, 0.063888,
		27.436430, 33.732784, 36.820709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030125, 33.913437, 37.577393>,  <28.049768, 34.067173, 36.775990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030125, 33.913437, 37.577393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726017, 33.700630, 37.428288>,  <27.543552, 33.572948, 37.338825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726017, 33.700630, 37.428288>,  <28.030125, 33.913437, 37.577393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726017, 33.700630, 37.428288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045488, -0.616020, 0.786416,
		-0.648012, 0.580933, 0.492542,
		-0.760270, -0.532012, -0.372763,
		27.497936, 33.541027, 37.316460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432682, 33.931210, 38.102131>,  <28.030125, 33.913437, 37.577393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432682, 33.931210, 38.102131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460409, 33.609997, 37.865372>,  <27.477045, 33.417271, 37.723316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460409, 33.609997, 37.865372>,  <27.432682, 33.931210, 38.102131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460409, 33.609997, 37.865372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168770, -0.575331, 0.800319,
		-0.983215, -0.155372, 0.095645,
		0.069320, -0.803028, -0.591896,
		27.481205, 33.369087, 37.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338001, 33.538250, 38.618118>,  <27.432682, 33.931210, 38.102131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338001, 33.538250, 38.618118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443287, 33.338284, 38.288074>,  <27.506458, 33.218304, 38.090050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443287, 33.338284, 38.288074>,  <27.338001, 33.538250, 38.618118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443287, 33.338284, 38.288074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481758, -0.672883, 0.561372,
		-0.835839, -0.545263, 0.063726,
		0.263215, -0.499917, -0.825107,
		27.522251, 33.188309, 38.040543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003653, 33.326931, 38.456539>,  <27.338001, 33.538250, 38.618118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003653, 33.326931, 38.456539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278450, 33.617527, 38.450218>,  <28.443329, 33.791885, 38.446426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278450, 33.617527, 38.450218>,  <28.003653, 33.326931, 38.456539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278450, 33.617527, 38.450218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478706, 0.436099, -0.762010,
		-0.546702, 0.531061, 0.647372,
		0.686992, 0.726493, -0.015806,
		28.484549, 33.835476, 38.445477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947050, 32.560856, 38.684940>,  <28.003653, 33.326931, 38.456539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947050, 32.560856, 38.684940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657387, 32.349697, 38.507439>,  <27.483589, 32.223003, 38.400936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657387, 32.349697, 38.507439>,  <27.947050, 32.560856, 38.684940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657387, 32.349697, 38.507439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063708, 0.589510, -0.805245,
		0.686687, -0.611394, -0.393266,
		-0.724156, -0.527897, -0.443759,
		27.440140, 32.191330, 38.374310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145817, 32.433411, 38.022366>,  <27.947050, 32.560856, 38.684940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145817, 32.433411, 38.022366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746832, 32.414455, 38.043610>,  <27.507441, 32.403084, 38.056355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746832, 32.414455, 38.043610>,  <28.145817, 32.433411, 38.022366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746832, 32.414455, 38.043610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071101, 0.697900, -0.712657,
		-0.003291, -0.714626, -0.699500,
		-0.997464, -0.047389, 0.053107,
		27.447594, 32.400238, 38.059544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888687, 32.281483, 37.335075>,  <28.145817, 32.433411, 38.022366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888687, 32.281483, 37.335075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619425, 32.478844, 37.555408>,  <27.457869, 32.597260, 37.687611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619425, 32.478844, 37.555408>,  <27.888687, 32.281483, 37.335075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619425, 32.478844, 37.555408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255679, 0.543653, -0.799418,
		-0.693896, -0.678969, -0.239811,
		-0.673154, 0.493398, 0.550837,
		27.417479, 32.626862, 37.720661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264240, 32.279148, 36.941452>,  <27.888687, 32.281483, 37.335075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264240, 32.279148, 36.941452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290180, 32.609467, 37.165546>,  <27.305744, 32.807655, 37.300003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290180, 32.609467, 37.165546>,  <27.264240, 32.279148, 36.941452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290180, 32.609467, 37.165546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326888, 0.548017, -0.769949,
		-0.942836, -0.133204, 0.305479,
		0.064848, 0.825793, 0.560233,
		27.309635, 32.857204, 37.333618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644981, 32.699520, 36.918205>,  <27.264240, 32.279148, 36.941452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644981, 32.699520, 36.918205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922108, 32.965187, 37.030556>,  <27.088383, 33.124588, 37.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922108, 32.965187, 37.030556>,  <26.644981, 32.699520, 36.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922108, 32.965187, 37.030556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365520, 0.659196, -0.657157,
		-0.621615, 0.352621, 0.699467,
		0.692814, 0.664168, 0.280876,
		27.129951, 33.164436, 37.114819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271904, 33.210007, 37.101562>,  <26.644981, 32.699520, 36.918205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271904, 33.210007, 37.101562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626522, 33.356670, 36.988705>,  <26.839293, 33.444668, 36.920990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626522, 33.356670, 36.988705>,  <26.271904, 33.210007, 37.101562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626522, 33.356670, 36.988705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462644, 0.701255, -0.542403,
		-0.001021, 0.611396, 0.791324,
		0.886543, 0.366655, -0.282143,
		26.892485, 33.466667, 36.904060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154650, 33.838268, 37.059353>,  <26.271904, 33.210007, 37.101562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154650, 33.838268, 37.059353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500511, 33.828129, 36.858662>,  <26.708029, 33.822044, 36.738247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500511, 33.828129, 36.858662>,  <26.154650, 33.838268, 37.059353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500511, 33.828129, 36.858662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329620, 0.725051, -0.604691,
		0.379105, 0.688228, 0.618564,
		0.864656, -0.025351, -0.501725,
		26.759909, 33.820522, 36.708145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414454, 34.572815, 36.934345>,  <26.154650, 33.838268, 37.059353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414454, 34.572815, 36.934345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547638, 34.331455, 36.644505>,  <26.627548, 34.186638, 36.470600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547638, 34.331455, 36.644505>,  <26.414454, 34.572815, 36.934345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547638, 34.331455, 36.644505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177107, 0.714754, -0.676579,
		0.926159, 0.353607, 0.131120,
		0.332961, -0.603398, -0.724602,
		26.647526, 34.150436, 36.427124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921026, 34.988064, 36.695274>,  <26.414454, 34.572815, 36.934345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921026, 34.988064, 36.695274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798325, 34.729591, 36.415745>,  <26.724705, 34.574509, 36.248028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798325, 34.729591, 36.415745>,  <26.921026, 34.988064, 36.695274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798325, 34.729591, 36.415745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032643, 0.726644, -0.686238,
		0.951230, -0.233317, -0.201806,
		-0.306752, -0.646182, -0.698822,
		26.706299, 34.535736, 36.206097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606972, 35.719189, 36.695724>,  <26.921026, 34.988064, 36.695274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606972, 35.719189, 36.695724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970600, 35.885830, 36.698208>,  <27.188776, 35.985813, 36.699699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970600, 35.885830, 36.698208>,  <26.606972, 35.719189, 36.695724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970600, 35.885830, 36.698208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409693, 0.896513, -0.168571,
		-0.075793, 0.150699, 0.985670,
		0.909069, 0.416599, 0.006209,
		27.243320, 36.010811, 36.700069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612793, 36.304924, 37.081356>,  <26.606972, 35.719189, 36.695724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612793, 36.304924, 37.081356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945587, 36.373062, 36.870155>,  <27.145264, 36.413944, 36.743435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945587, 36.373062, 36.870155>,  <26.612793, 36.304924, 37.081356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945587, 36.373062, 36.870155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314314, 0.928956, -0.195572,
		0.457176, 0.328671, 0.826418,
		0.831984, 0.170344, -0.528001,
		27.195183, 36.424164, 36.711754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105135, 36.865288, 37.340725>,  <26.612793, 36.304924, 37.081356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105135, 36.865288, 37.340725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107492, 36.810589, 36.944489>,  <27.108906, 36.777771, 36.706749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107492, 36.810589, 36.944489>,  <27.105135, 36.865288, 37.340725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107492, 36.810589, 36.944489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550110, 0.826798, -0.117407,
		0.835072, 0.545624, -0.070353,
		0.005892, -0.136745, -0.990589,
		27.109261, 36.769566, 36.647312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122866, 37.494343, 37.091232>,  <27.105135, 36.865288, 37.340725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122866, 37.494343, 37.091232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993389, 37.308849, 36.761341>,  <26.915703, 37.197552, 36.563408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993389, 37.308849, 36.761341>,  <27.122866, 37.494343, 37.091232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993389, 37.308849, 36.761341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604506, 0.771913, -0.196778,
		0.727870, 0.434857, -0.530192,
		-0.323692, -0.463734, -0.824727,
		26.896282, 37.169731, 36.513924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159000, 37.951225, 36.526886>,  <27.122866, 37.494343, 37.091232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159000, 37.951225, 36.526886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855631, 37.708252, 36.432384>,  <26.673609, 37.562466, 36.375683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855631, 37.708252, 36.432384>,  <27.159000, 37.951225, 36.526886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855631, 37.708252, 36.432384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589042, 0.793974, -0.150450,
		0.278968, 0.025059, -0.959973,
		-0.758424, -0.607435, -0.236254,
		26.628103, 37.526020, 36.361507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891052, 38.108246, 35.810352>,  <27.159000, 37.951225, 36.526886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891052, 38.108246, 35.810352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591658, 37.936783, 36.012745>,  <26.412020, 37.833904, 36.134182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591658, 37.936783, 36.012745>,  <26.891052, 38.108246, 35.810352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591658, 37.936783, 36.012745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592137, 0.775530, -0.218922,
		-0.298563, -0.463472, -0.834298,
		-0.748488, -0.428657, 0.505984,
		26.367111, 37.808186, 36.164539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205471, 37.940849, 35.365070>,  <26.891052, 38.108246, 35.810352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205471, 37.940849, 35.365070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111668, 37.990959, 35.750675>,  <26.055386, 38.021023, 35.982037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111668, 37.990959, 35.750675>,  <26.205471, 37.940849, 35.365070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111668, 37.990959, 35.750675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630556, 0.735144, -0.248922,
		-0.739868, -0.666236, -0.093408,
		-0.234509, 0.125271, 0.964009,
		26.041315, 38.028542, 36.039879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454990, 37.912720, 35.420246>,  <26.205471, 37.940849, 35.365070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454990, 37.912720, 35.420246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576635, 38.124680, 35.736908>,  <25.649622, 38.251854, 35.926907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576635, 38.124680, 35.736908>,  <25.454990, 37.912720, 35.420246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576635, 38.124680, 35.736908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675057, 0.706230, -0.213395,
		-0.672170, -0.469518, 0.572486,
		0.304114, 0.529898, 0.791658,
		25.667870, 38.283649, 35.974407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.841465, 38.218441, 35.815166>,  <25.454990, 37.912720, 35.420246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.841465, 38.218441, 35.815166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163210, 38.443405, 35.891785>,  <25.356256, 38.578384, 35.937756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163210, 38.443405, 35.891785>,  <24.841465, 38.218441, 35.815166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163210, 38.443405, 35.891785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555846, 0.826210, -0.091720,
		-0.209844, -0.032695, 0.977188,
		0.804363, 0.562413, 0.191549,
		25.404518, 38.612129, 35.949249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.652958, 38.695057, 36.325069>,  <24.841465, 38.218441, 35.815166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.652958, 38.695057, 36.325069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952532, 38.847160, 36.107998>,  <25.132277, 38.938423, 35.977753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952532, 38.847160, 36.107998>,  <24.652958, 38.695057, 36.325069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952532, 38.847160, 36.107998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586193, 0.762073, -0.274997,
		0.308994, 0.524071, 0.793645,
		0.748933, 0.380256, -0.542683,
		25.177212, 38.961239, 35.945194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.778114, 39.353127, 36.529701>,  <24.652958, 38.695057, 36.325069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.778114, 39.353127, 36.529701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941975, 39.328201, 36.165657>,  <25.040291, 39.313248, 35.947231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941975, 39.328201, 36.165657>,  <24.778114, 39.353127, 36.529701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941975, 39.328201, 36.165657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541809, 0.786018, -0.297690,
		0.733914, 0.615056, 0.288231,
		0.409650, -0.062313, -0.910112,
		25.064869, 39.309509, 35.892624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009563, 40.016407, 36.479660>,  <24.778114, 39.353127, 36.529701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009563, 40.016407, 36.479660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999763, 39.839508, 36.121037>,  <24.993883, 39.733368, 35.905861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999763, 39.839508, 36.121037>,  <25.009563, 40.016407, 36.479660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999763, 39.839508, 36.121037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523987, 0.769446, -0.365226,
		0.851374, 0.460838, -0.250582,
		-0.024499, -0.442246, -0.896559,
		24.992414, 39.706833, 35.852070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137743, 40.615925, 35.915276>,  <25.009563, 40.016407, 36.479660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137743, 40.615925, 35.915276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977507, 40.286446, 35.754757>,  <24.881365, 40.088757, 35.658443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977507, 40.286446, 35.754757>,  <25.137743, 40.615925, 35.915276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977507, 40.286446, 35.754757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490556, 0.562725, -0.665353,
		0.773875, -0.069675, -0.629495,
		-0.400591, -0.823702, -0.401299,
		24.857328, 40.039333, 35.634369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294731, 40.640739, 35.125443>,  <25.137743, 40.615925, 35.915276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294731, 40.640739, 35.125443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959679, 40.447777, 35.227932>,  <24.758646, 40.331997, 35.289425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959679, 40.447777, 35.227932>,  <25.294731, 40.640739, 35.125443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959679, 40.447777, 35.227932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503381, 0.499604, -0.704985,
		0.212080, -0.719498, -0.661321,
		-0.837634, -0.482409, 0.256226,
		24.708389, 40.303055, 35.304798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959446, 40.250458, 34.497154>,  <25.294731, 40.640739, 35.125443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959446, 40.250458, 34.497154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701191, 40.375172, 34.775993>,  <24.546238, 40.450001, 34.943295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701191, 40.375172, 34.775993>,  <24.959446, 40.250458, 34.497154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701191, 40.375172, 34.775993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518138, 0.491719, -0.699818,
		-0.560966, -0.813022, -0.155927,
		-0.645640, 0.311782, 0.697095,
		24.507500, 40.468708, 34.985123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257568, 40.146278, 34.350864>,  <24.959446, 40.250458, 34.497154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257568, 40.146278, 34.350864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263447, 40.465649, 34.591629>,  <24.266973, 40.657272, 34.736088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263447, 40.465649, 34.591629>,  <24.257568, 40.146278, 34.350864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263447, 40.465649, 34.591629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371658, 0.563211, -0.738014,
		-0.928254, -0.212861, 0.305018,
		0.014695, 0.798426, 0.601914,
		24.267855, 40.705177, 34.772202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417965, 39.508881, 34.759632>,  <24.257568, 40.146278, 34.350864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417965, 39.508881, 34.759632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705528, 39.695614, 34.965637>,  <24.878067, 39.807652, 35.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705528, 39.695614, 34.965637>,  <24.417965, 39.508881, 34.759632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705528, 39.695614, 34.965637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596912, -0.794271, -0.113268,
		0.356186, 0.388848, -0.849664,
		0.718907, 0.466830, 0.515016,
		24.921200, 39.835663, 35.120144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106382, 39.344677, 34.556744>,  <24.417965, 39.508881, 34.759632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106382, 39.344677, 34.556744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106083, 39.459885, 34.939793>,  <25.105904, 39.529007, 35.169624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106083, 39.459885, 34.939793>,  <25.106382, 39.344677, 34.556744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106083, 39.459885, 34.939793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688710, -0.694165, 0.209317,
		0.725037, 0.659682, -0.197841,
		-0.000748, 0.288017, 0.957625,
		25.105858, 39.546291, 35.227081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724854, 39.310280, 34.762581>,  <25.106382, 39.344677, 34.556744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724854, 39.310280, 34.762581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523232, 39.311279, 35.108047>,  <25.402258, 39.311878, 35.315327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523232, 39.311279, 35.108047>,  <25.724854, 39.310280, 34.762581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523232, 39.311279, 35.108047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623521, -0.690896, 0.365902,
		0.597620, 0.722950, 0.346689,
		-0.504055, 0.002502, 0.863668,
		25.372015, 39.312031, 35.367149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233297, 39.408787, 35.224712>,  <25.724854, 39.310280, 34.762581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233297, 39.408787, 35.224712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918407, 39.270020, 35.428642>,  <25.729473, 39.186760, 35.551003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918407, 39.270020, 35.428642>,  <26.233297, 39.408787, 35.224712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918407, 39.270020, 35.428642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557921, -0.752853, 0.349195,
		0.262683, 0.559338, 0.786218,
		-0.787224, -0.346920, 0.509828,
		25.682240, 39.165943, 35.581593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479786, 39.241512, 35.932655>,  <26.233297, 39.408787, 35.224712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479786, 39.241512, 35.932655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172890, 39.022621, 35.798859>,  <25.988752, 38.891289, 35.718582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172890, 39.022621, 35.798859>,  <26.479786, 39.241512, 35.932655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172890, 39.022621, 35.798859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486361, -0.836402, 0.252754,
		-0.418084, 0.031239, 0.907871,
		-0.767241, -0.547225, -0.334493,
		25.942717, 38.858452, 35.698509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228764, 38.762409, 36.477333>,  <26.479786, 39.241512, 35.932655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228764, 38.762409, 36.477333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123419, 38.593815, 36.130234>,  <26.060213, 38.492661, 35.921974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123419, 38.593815, 36.130234>,  <26.228764, 38.762409, 36.477333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123419, 38.593815, 36.130234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382824, -0.871310, 0.307026,
		-0.885487, -0.251338, 0.390823,
		-0.263361, -0.421484, -0.867751,
		26.044411, 38.467369, 35.869907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791777, 38.718971, 37.064735>,  <26.228764, 38.762409, 36.477333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791777, 38.718971, 37.064735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705446, 38.514008, 36.732265>,  <25.653648, 38.391029, 36.532784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705446, 38.514008, 36.732265>,  <25.791777, 38.718971, 37.064735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705446, 38.514008, 36.732265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818157, -0.559522, 0.132495,
		-0.532953, -0.651436, 0.539992,
		-0.215826, -0.512412, -0.831176,
		25.640699, 38.360283, 36.482914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677675, 38.042934, 37.272667>,  <25.791777, 38.718971, 37.064735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677675, 38.042934, 37.272667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786154, 38.035378, 36.887730>,  <25.851240, 38.030842, 36.656769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786154, 38.035378, 36.887730>,  <25.677675, 38.042934, 37.272667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786154, 38.035378, 36.887730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597359, -0.780659, 0.183668,
		-0.754729, -0.624671, -0.200425,
		0.271195, -0.018894, -0.962339,
		25.867512, 38.029709, 36.599030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594465, 37.402119, 37.087383>,  <25.677675, 38.042934, 37.272667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594465, 37.402119, 37.087383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835558, 37.531517, 36.795612>,  <25.980213, 37.609158, 36.620552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835558, 37.531517, 36.795612>,  <25.594465, 37.402119, 37.087383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835558, 37.531517, 36.795612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565041, -0.818495, 0.103899,
		-0.563420, -0.474778, -0.676124,
		0.602733, 0.323499, -0.729425,
		26.016378, 37.628567, 36.576786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737238, 36.728535, 36.568707>,  <25.594465, 37.402119, 37.087383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737238, 36.728535, 36.568707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010412, 37.019508, 36.595360>,  <26.174316, 37.194092, 36.611351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010412, 37.019508, 36.595360>,  <25.737238, 36.728535, 36.568707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010412, 37.019508, 36.595360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717222, -0.685047, 0.127682,
		0.138525, -0.039410, -0.989575,
		0.682937, 0.727432, 0.066630,
		26.215294, 37.237740, 36.615349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928005, 36.679523, 35.830688>,  <25.737238, 36.728535, 36.568707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928005, 36.679523, 35.830688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185524, 36.968204, 35.932415>,  <26.340034, 37.141411, 35.993450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185524, 36.968204, 35.932415>,  <25.928005, 36.679523, 35.830688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185524, 36.968204, 35.932415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686134, -0.691589, 0.225664,
		0.338746, 0.029215, -0.940424,
		0.643795, 0.721700, 0.254318,
		26.378662, 37.184715, 36.008709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604677, 36.575451, 35.464985>,  <25.928005, 36.679523, 35.830688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604677, 36.575451, 35.464985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699656, 36.768692, 35.802086>,  <26.756643, 36.884636, 36.004345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699656, 36.768692, 35.802086>,  <26.604677, 36.575451, 35.464985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699656, 36.768692, 35.802086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781584, -0.610194, 0.129578,
		0.576842, 0.627913, -0.522474,
		0.237446, 0.483103, 0.842752,
		26.770889, 36.913624, 36.054913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262703, 36.675079, 35.405674>,  <26.604677, 36.575451, 35.464985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262703, 36.675079, 35.405674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187193, 36.710022, 35.796925>,  <27.141886, 36.730988, 36.031673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187193, 36.710022, 35.796925>,  <27.262703, 36.675079, 35.405674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187193, 36.710022, 35.796925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777545, -0.595087, 0.203213,
		0.599823, 0.798899, 0.044412,
		-0.188776, 0.087359, 0.978127,
		27.130560, 36.736229, 36.090363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823189, 37.023014, 35.689781>,  <27.262703, 36.675079, 35.405674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823189, 37.023014, 35.689781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633263, 36.768112, 35.932583>,  <27.519306, 36.615170, 36.078262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633263, 36.768112, 35.932583>,  <27.823189, 37.023014, 35.689781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633263, 36.768112, 35.932583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875164, -0.269047, 0.402122,
		-0.092941, 0.722163, 0.685451,
		-0.474816, -0.637255, 0.607005,
		27.490818, 36.576935, 36.114685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018848, 37.107452, 36.292393>,  <27.823189, 37.023014, 35.689781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018848, 37.107452, 36.292393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890228, 36.730530, 36.329609>,  <27.813055, 36.504375, 36.351940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890228, 36.730530, 36.329609>,  <28.018848, 37.107452, 36.292393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890228, 36.730530, 36.329609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773397, -0.204673, 0.599972,
		-0.546316, 0.264879, 0.794593,
		-0.321552, -0.942310, 0.093041,
		27.793762, 36.447838, 36.357521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076233, 36.947998, 37.025764>,  <28.018848, 37.107452, 36.292393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076233, 36.947998, 37.025764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098549, 36.597221, 36.834827>,  <28.111938, 36.386757, 36.720264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098549, 36.597221, 36.834827>,  <28.076233, 36.947998, 37.025764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098549, 36.597221, 36.834827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690559, -0.311408, 0.652805,
		-0.721122, -0.366055, 0.588207,
		0.055790, -0.876943, -0.477346,
		28.115286, 36.334137, 36.691624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200180, 36.289127, 37.552895>,  <28.076233, 36.947998, 37.025764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200180, 36.289127, 37.552895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388189, 36.157227, 37.225395>,  <28.500994, 36.078087, 37.028896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388189, 36.157227, 37.225395>,  <28.200180, 36.289127, 37.552895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388189, 36.157227, 37.225395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867747, 0.002870, 0.496998,
		-0.161538, -0.944062, 0.287493,
		0.470022, -0.329755, -0.818744,
		28.529196, 36.058300, 36.979771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551340, 35.671387, 37.647755>,  <28.200180, 36.289127, 37.552895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551340, 35.671387, 37.647755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727810, 35.876530, 37.353180>,  <28.833693, 35.999615, 37.176434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727810, 35.876530, 37.353180>,  <28.551340, 35.671387, 37.647755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727810, 35.876530, 37.353180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879902, -0.085853, 0.467334,
		0.176450, -0.854169, -0.489142,
		0.441177, 0.512858, -0.736437,
		28.860163, 36.030388, 37.132248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013969, 35.267242, 37.546707>,  <28.551340, 35.671387, 37.647755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013969, 35.267242, 37.546707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140871, 35.617680, 37.401482>,  <29.217012, 35.827942, 37.314346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140871, 35.617680, 37.401482>,  <29.013969, 35.267242, 37.546707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140871, 35.617680, 37.401482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927692, -0.207248, 0.310541,
		0.196817, -0.435335, -0.878491,
		0.317255, 0.876089, -0.363067,
		29.236048, 35.880505, 37.292561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564625, 35.204460, 37.022064>,  <29.013969, 35.267242, 37.546707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564625, 35.204460, 37.022064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649754, 35.556175, 37.192501>,  <29.700830, 35.767204, 37.294765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649754, 35.556175, 37.192501>,  <29.564625, 35.204460, 37.022064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649754, 35.556175, 37.192501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947723, -0.291876, 0.128952,
		0.237753, 0.376375, -0.895441,
		0.212823, 0.879290, 0.426094,
		29.713600, 35.819962, 37.320328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181049, 35.383953, 36.659695>,  <29.564625, 35.204460, 37.022064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181049, 35.383953, 36.659695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127077, 35.517952, 37.032700>,  <30.094694, 35.598351, 37.256500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127077, 35.517952, 37.032700>,  <30.181049, 35.383953, 36.659695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127077, 35.517952, 37.032700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825669, -0.482270, 0.292722,
		0.547782, 0.809440, -0.211523,
		-0.134930, 0.334996, 0.932508,
		30.086597, 35.618450, 37.312450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746017, 35.712612, 37.050259>,  <30.181049, 35.383953, 36.659695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746017, 35.712612, 37.050259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494696, 35.543308, 37.311359>,  <30.343903, 35.441727, 37.468018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494696, 35.543308, 37.311359>,  <30.746017, 35.712612, 37.050259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494696, 35.543308, 37.311359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733345, -0.602306, 0.315329,
		0.259686, 0.676812, 0.688831,
		-0.628306, -0.423264, 0.652748,
		30.306204, 35.416328, 37.507183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970659, 35.706554, 37.887775>,  <30.746017, 35.712612, 37.050259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970659, 35.706554, 37.887775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760187, 35.402443, 37.735397>,  <30.633904, 35.219978, 37.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760187, 35.402443, 37.735397>,  <30.970659, 35.706554, 37.887775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760187, 35.402443, 37.735397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641627, -0.648942, 0.408889,
		-0.558076, -0.029273, 0.829273,
		-0.526181, -0.760275, -0.380941,
		30.602333, 35.174362, 37.621117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758188, 35.252197, 38.362389>,  <30.970659, 35.706554, 37.887775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758188, 35.252197, 38.362389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822435, 35.057320, 38.019032>,  <30.860983, 34.940392, 37.813019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822435, 35.057320, 38.019032>,  <30.758188, 35.252197, 38.362389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822435, 35.057320, 38.019032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680999, -0.574822, 0.453674,
		-0.714453, -0.657432, 0.239456,
		0.160616, -0.487198, -0.858394,
		30.870621, 34.911160, 37.761513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502668, 34.445324, 38.307156>,  <30.758188, 35.252197, 38.362389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502668, 34.445324, 38.307156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808334, 34.549221, 38.070992>,  <30.991734, 34.611561, 37.929295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808334, 34.549221, 38.070992>,  <30.502668, 34.445324, 38.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808334, 34.549221, 38.070992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605888, -0.603020, 0.518909,
		-0.221247, -0.754256, -0.618181,
		0.764165, 0.259742, -0.590411,
		31.037584, 34.627144, 37.893867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821428, 33.779190, 38.077301>,  <30.502668, 34.445324, 38.307156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821428, 33.779190, 38.077301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039528, 34.114197, 38.091530>,  <31.170387, 34.315201, 38.100067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039528, 34.114197, 38.091530>,  <30.821428, 33.779190, 38.077301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039528, 34.114197, 38.091530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769475, -0.516884, 0.375152,
		0.332584, -0.177180, -0.926280,
		0.545249, 0.837519, 0.035572,
		31.203102, 34.365452, 38.102200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501348, 33.580349, 38.014324>,  <30.821428, 33.779190, 38.077301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501348, 33.580349, 38.014324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547218, 33.945358, 38.171371>,  <31.574739, 34.164364, 38.265602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547218, 33.945358, 38.171371>,  <31.501348, 33.580349, 38.014324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547218, 33.945358, 38.171371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838980, -0.300598, 0.453600,
		0.531942, 0.277385, -0.800060,
		0.114675, 0.912523, 0.392621,
		31.581621, 34.219116, 38.289158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215683, 33.812843, 37.912849>,  <31.501348, 33.580349, 38.014324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215683, 33.812843, 37.912849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083076, 34.037571, 38.216022>,  <32.003513, 34.172405, 38.397926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083076, 34.037571, 38.216022>,  <32.215683, 33.812843, 37.912849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083076, 34.037571, 38.216022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755314, -0.323338, 0.570047,
		0.565330, 0.761455, -0.317156,
		-0.331517, 0.561817, 0.757930,
		31.983622, 34.206116, 38.443401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742828, 34.303246, 38.136658>,  <32.215683, 33.812843, 37.912849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742828, 34.303246, 38.136658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495495, 34.151421, 38.411930>,  <32.347095, 34.060326, 38.577095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495495, 34.151421, 38.411930>,  <32.742828, 34.303246, 38.136658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495495, 34.151421, 38.411930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785758, -0.281068, 0.550985,
		-0.015709, 0.881437, 0.472041,
		-0.618334, -0.379566, 0.688181,
		32.309994, 34.037552, 38.618385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741215, 34.684464, 38.852158>,  <32.742828, 34.303246, 38.136658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741215, 34.684464, 38.852158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676880, 34.292294, 38.806736>,  <32.638279, 34.056992, 38.779484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676880, 34.292294, 38.806736>,  <32.741215, 34.684464, 38.852158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676880, 34.292294, 38.806736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920301, -0.190547, 0.341670,
		-0.356619, -0.049551, 0.932935,
		-0.160838, -0.980427, -0.113555,
		32.628628, 33.998165, 38.772671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126930, 35.247131, 38.587059>,  <32.741215, 34.684464, 38.852158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126930, 35.247131, 38.587059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505104, 35.271297, 38.715126>,  <33.732006, 35.285797, 38.791965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505104, 35.271297, 38.715126>,  <33.126930, 35.247131, 38.587059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505104, 35.271297, 38.715126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309677, -0.472081, -0.825373,
		0.101284, 0.879483, -0.465028,
		0.945432, 0.060411, 0.320170,
		33.788734, 35.289421, 38.811176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595531, 35.578407, 38.051376>,  <33.126930, 35.247131, 38.587059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595531, 35.578407, 38.051376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805470, 35.342728, 38.297100>,  <33.931431, 35.201321, 38.444534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805470, 35.342728, 38.297100>,  <33.595531, 35.578407, 38.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805470, 35.342728, 38.297100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328855, -0.525308, -0.784797,
		0.785107, 0.613916, -0.081942,
		0.524844, -0.589202, 0.614312,
		33.962921, 35.165966, 38.481392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864876, 35.108330, 37.644444>,  <33.595531, 35.578407, 38.051376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864876, 35.108330, 37.644444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077187, 34.998077, 37.965019>,  <34.204575, 34.931927, 38.157364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077187, 34.998077, 37.965019>,  <33.864876, 35.108330, 37.644444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077187, 34.998077, 37.965019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661015, -0.457185, -0.595014,
		0.530409, 0.845582, -0.060467,
		0.530778, -0.275631, 0.801438,
		34.236420, 34.915390, 38.205452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676559, 35.294640, 37.619602>,  <33.864876, 35.108330, 37.644444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676559, 35.294640, 37.619602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629398, 34.970016, 37.848503>,  <34.601101, 34.775242, 37.985844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629398, 34.970016, 37.848503>,  <34.676559, 35.294640, 37.619602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629398, 34.970016, 37.848503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579258, -0.524275, -0.624176,
		0.806572, 0.257885, 0.531918,
		-0.117906, -0.811561, 0.572248,
		34.594025, 34.726547, 38.020176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375237, 35.067619, 37.785915>,  <34.676559, 35.294640, 37.619602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375237, 35.067619, 37.785915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111385, 34.766998, 37.788738>,  <34.953075, 34.586624, 37.790432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111385, 34.766998, 37.788738>,  <35.375237, 35.067619, 37.785915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111385, 34.766998, 37.788738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566171, -0.503053, -0.652984,
		0.494306, -0.426731, 0.757339,
		-0.659630, -0.751557, 0.007059,
		34.913498, 34.541531, 37.790855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789974, 34.438049, 37.770020>,  <35.375237, 35.067619, 37.785915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789974, 34.438049, 37.770020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418335, 34.337540, 37.661480>,  <35.195351, 34.277233, 37.596355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418335, 34.337540, 37.661480>,  <35.789974, 34.438049, 37.770020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418335, 34.337540, 37.661480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358150, -0.428472, -0.829542,
		0.092179, -0.867913, 0.488089,
		-0.929103, -0.251275, -0.271347,
		35.139603, 34.262157, 37.580074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921059, 33.876053, 37.399921>,  <35.789974, 34.438049, 37.770020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921059, 33.876053, 37.399921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547741, 33.977436, 37.298153>,  <35.323750, 34.038265, 37.237091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547741, 33.977436, 37.298153>,  <35.921059, 33.876053, 37.399921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547741, 33.977436, 37.298153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181517, -0.278361, -0.943168,
		-0.309879, -0.926429, 0.213783,
		-0.933288, 0.253463, -0.254421,
		35.267754, 34.053474, 37.221828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696121, 33.372810, 36.930721>,  <35.921059, 33.876053, 37.399921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696121, 33.372810, 36.930721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434715, 33.665619, 36.853722>,  <35.277870, 33.841305, 36.807522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434715, 33.665619, 36.853722>,  <35.696121, 33.372810, 36.930721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434715, 33.665619, 36.853722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113745, -0.156457, -0.981113,
		-0.748317, -0.663070, 0.018983,
		-0.653517, 0.732024, -0.192500,
		35.238659, 33.885227, 36.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171680, 33.053593, 36.643318>,  <35.696121, 33.372810, 36.930721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171680, 33.053593, 36.643318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143600, 33.424599, 36.496468>,  <35.126751, 33.647202, 36.408356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143600, 33.424599, 36.496468>,  <35.171680, 33.053593, 36.643318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143600, 33.424599, 36.496468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079697, -0.361647, -0.928902,
		-0.994344, -0.094467, -0.048533,
		-0.070199, 0.927517, -0.367131,
		35.122540, 33.702854, 36.386330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763412, 32.907410, 36.056416>,  <35.171680, 33.053593, 36.643318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763412, 32.907410, 36.056416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865074, 33.291229, 36.007969>,  <34.926071, 33.521523, 35.978901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865074, 33.291229, 36.007969>,  <34.763412, 32.907410, 36.056416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865074, 33.291229, 36.007969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002673, -0.125923, -0.992036,
		-0.967160, 0.251806, -0.034568,
		0.254154, 0.959550, -0.121114,
		34.941319, 33.579094, 35.971634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358589, 33.179642, 35.443756>,  <34.763412, 32.907410, 36.056416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358589, 33.179642, 35.443756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652008, 33.445892, 35.498669>,  <34.828060, 33.605644, 35.531616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652008, 33.445892, 35.498669>,  <34.358589, 33.179642, 35.443756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652008, 33.445892, 35.498669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139039, 0.050743, -0.988986,
		-0.665260, 0.744559, -0.055325,
		0.733551, 0.665625, 0.137280,
		34.872074, 33.645580, 35.539852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242283, 33.853275, 34.954285>,  <34.358589, 33.179642, 35.443756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242283, 33.853275, 34.954285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628811, 33.821880, 35.052315>,  <34.860729, 33.803043, 35.111134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628811, 33.821880, 35.052315>,  <34.242283, 33.853275, 34.954285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628811, 33.821880, 35.052315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252501, 0.105418, -0.961837,
		0.049660, 0.991326, 0.121687,
		0.966322, -0.078491, 0.245075,
		34.918709, 33.798332, 35.125839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477871, 34.426159, 34.689133>,  <34.242283, 33.853275, 34.954285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477871, 34.426159, 34.689133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787811, 34.176380, 34.728470>,  <34.973774, 34.026512, 34.752071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787811, 34.176380, 34.728470>,  <34.477871, 34.426159, 34.689133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787811, 34.176380, 34.728470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215278, 0.114398, -0.969829,
		0.594359, 0.772643, 0.223072,
		0.774850, -0.624449, 0.098340,
		35.020267, 33.989044, 34.757973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083950, 34.817795, 34.486950>,  <34.477871, 34.426159, 34.689133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083950, 34.817795, 34.486950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162136, 34.427864, 34.444054>,  <35.209049, 34.193905, 34.418316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162136, 34.427864, 34.444054>,  <35.083950, 34.817795, 34.486950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162136, 34.427864, 34.444054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342891, 0.170383, -0.923794,
		0.918814, 0.143798, 0.367564,
		0.195466, -0.974829, -0.107243,
		35.220776, 34.135414, 34.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539719, 34.828838, 33.931488>,  <35.083950, 34.817795, 34.486950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539719, 34.828838, 33.931488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442856, 34.441368, 33.953495>,  <35.384739, 34.208885, 33.966698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442856, 34.441368, 33.953495>,  <35.539719, 34.828838, 33.931488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442856, 34.441368, 33.953495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172226, -0.098718, -0.980098,
		0.954829, -0.227863, 0.190736,
		-0.242158, -0.968676, 0.055015,
		35.370209, 34.150764, 33.970001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083611, 34.494286, 33.629467>,  <35.539719, 34.828838, 33.931488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083611, 34.494286, 33.629467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771473, 34.244984, 33.609001>,  <35.584190, 34.095402, 33.596722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771473, 34.244984, 33.609001>,  <36.083611, 34.494286, 33.629467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771473, 34.244984, 33.609001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155087, -0.113613, -0.981346,
		0.605815, -0.773722, 0.185316,
		-0.780343, -0.623255, -0.051165,
		35.537369, 34.058006, 33.593651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268417, 34.018559, 33.064381>,  <36.083611, 34.494286, 33.629467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268417, 34.018559, 33.064381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873043, 33.957932, 33.066521>,  <35.635818, 33.921555, 33.067802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873043, 33.957932, 33.066521>,  <36.268417, 34.018559, 33.064381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873043, 33.957932, 33.066521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004668, -0.065635, -0.997833,
		0.151593, -0.986265, 0.065583,
		-0.988432, -0.151571, 0.005346,
		35.576515, 33.912460, 33.068123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159187, 33.476849, 32.582401>,  <36.268417, 34.018559, 33.064381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159187, 33.476849, 32.582401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817211, 33.674644, 32.645088>,  <35.612026, 33.793320, 32.682701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817211, 33.674644, 32.645088>,  <36.159187, 33.476849, 32.582401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817211, 33.674644, 32.645088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211608, -0.056623, -0.975713,
		-0.473603, -0.867339, 0.153047,
		-0.854940, 0.494487, 0.156719,
		35.560730, 33.822990, 32.692104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673649, 33.101284, 32.218315>,  <36.159187, 33.476849, 32.582401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673649, 33.101284, 32.218315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503620, 33.462063, 32.248814>,  <35.401604, 33.678528, 32.267113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503620, 33.462063, 32.248814>,  <35.673649, 33.101284, 32.218315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503620, 33.462063, 32.248814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393585, -0.108323, -0.912884,
		-0.815111, -0.418049, 0.401036,
		-0.425071, 0.901943, 0.076243,
		35.376099, 33.732647, 32.271687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957596, 32.994900, 31.823755>,  <35.673649, 33.101284, 32.218315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957596, 32.994900, 31.823755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029224, 33.387325, 31.853279>,  <35.072201, 33.622780, 31.870993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029224, 33.387325, 31.853279>,  <34.957596, 32.994900, 31.823755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029224, 33.387325, 31.853279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326500, 0.130032, -0.936210,
		-0.928079, 0.143552, 0.343602,
		0.179074, 0.981063, 0.073810,
		35.082947, 33.681644, 31.875422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340073, 33.339954, 31.737865>,  <34.957596, 32.994900, 31.823755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340073, 33.339954, 31.737865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641598, 33.583302, 31.638542>,  <34.822514, 33.729309, 31.578949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641598, 33.583302, 31.638542>,  <34.340073, 33.339954, 31.737865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641598, 33.583302, 31.638542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356018, 0.060520, -0.932517,
		-0.552286, 0.791344, 0.262210,
		0.753811, 0.608368, -0.248309,
		34.867741, 33.765812, 31.564049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106457, 33.724125, 31.260900>,  <34.340073, 33.339954, 31.737865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106457, 33.724125, 31.260900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492188, 33.819080, 31.214043>,  <34.723625, 33.876053, 31.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492188, 33.819080, 31.214043>,  <34.106457, 33.724125, 31.260900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492188, 33.819080, 31.214043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162136, 0.179850, -0.970240,
		-0.209260, 0.954619, 0.211924,
		0.964325, 0.237393, -0.117143,
		34.781487, 33.890297, 31.178900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138790, 34.483597, 31.078089>,  <34.106457, 33.724125, 31.260900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138790, 34.483597, 31.078089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455936, 34.271431, 30.958075>,  <34.646225, 34.144131, 30.886066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455936, 34.271431, 30.958075>,  <34.138790, 34.483597, 31.078089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455936, 34.271431, 30.958075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178916, 0.268042, -0.946648,
		0.582536, 0.804249, 0.117623,
		0.792869, -0.530412, -0.300037,
		34.693798, 34.112309, 30.868063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356785, 34.828339, 30.499374>,  <34.138790, 34.483597, 31.078089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356785, 34.828339, 30.499374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574772, 34.494392, 30.468384>,  <34.705563, 34.294025, 30.449789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574772, 34.494392, 30.468384>,  <34.356785, 34.828339, 30.499374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574772, 34.494392, 30.468384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018980, 0.080099, -0.996606,
		0.838243, 0.544588, 0.027805,
		0.544967, -0.834870, -0.077478,
		34.738262, 34.243931, 30.445141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887573, 35.068951, 30.054485>,  <34.356785, 34.828339, 30.499374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887573, 35.068951, 30.054485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859814, 34.670120, 30.041697>,  <34.843159, 34.430820, 30.034023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859814, 34.670120, 30.041697>,  <34.887573, 35.068951, 30.054485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859814, 34.670120, 30.041697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098567, 0.038747, -0.994376,
		0.992708, -0.065856, -0.100968,
		-0.069398, -0.997077, -0.031973,
		34.838993, 34.370998, 30.032104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378712, 34.816650, 29.654781>,  <34.887573, 35.068951, 30.054485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378712, 34.816650, 29.654781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128681, 34.504559, 29.645639>,  <34.978664, 34.317303, 29.640154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128681, 34.504559, 29.645639>,  <35.378712, 34.816650, 29.654781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128681, 34.504559, 29.645639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078470, -0.033678, -0.996347,
		0.776610, -0.624586, 0.082276,
		-0.625076, -0.780229, -0.022856,
		34.941158, 34.270489, 29.638783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715511, 34.379333, 29.210627>,  <35.378712, 34.816650, 29.654781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715511, 34.379333, 29.210627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351131, 34.218132, 29.245863>,  <35.132504, 34.121410, 29.267004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351131, 34.218132, 29.245863>,  <35.715511, 34.379333, 29.210627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351131, 34.218132, 29.245863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105418, 0.020970, -0.994207,
		0.398827, -0.914956, -0.061587,
		-0.910947, -0.403009, 0.088089,
		35.077847, 34.097229, 29.272289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723843, 33.803577, 28.678755>,  <35.715511, 34.379333, 29.210627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723843, 33.803577, 28.678755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351513, 33.922195, 28.764204>,  <35.128117, 33.993366, 28.815474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351513, 33.922195, 28.764204>,  <35.723843, 33.803577, 28.678755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351513, 33.922195, 28.764204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216310, 0.024132, -0.976027,
		-0.294589, -0.954715, 0.041682,
		-0.930821, 0.296543, 0.213623,
		35.072266, 34.011158, 28.828291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245693, 33.261276, 28.529793>,  <35.723843, 33.803577, 28.678755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245693, 33.261276, 28.529793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043781, 33.605595, 28.503759>,  <34.922634, 33.812183, 28.488140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043781, 33.605595, 28.503759>,  <35.245693, 33.261276, 28.529793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043781, 33.605595, 28.503759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035391, -0.095966, -0.994755,
		-0.862525, -0.499825, 0.078905,
		-0.504776, 0.860793, -0.065084,
		34.892349, 33.863834, 28.484234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817951, 33.166817, 27.906252>,  <35.245693, 33.261276, 28.529793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817951, 33.166817, 27.906252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822723, 33.563290, 27.959040>,  <34.825584, 33.801174, 27.990713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822723, 33.563290, 27.959040>,  <34.817951, 33.166817, 27.906252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822723, 33.563290, 27.959040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145513, 0.128853, -0.980929,
		-0.989285, 0.030902, -0.142693,
		0.011927, 0.991182, 0.131969,
		34.826302, 33.860645, 27.998631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437767, 33.362061, 27.429045>,  <34.817951, 33.166817, 27.906252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437767, 33.362061, 27.429045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639687, 33.692654, 27.528732>,  <34.760838, 33.891010, 27.588545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639687, 33.692654, 27.528732>,  <34.437767, 33.362061, 27.429045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639687, 33.692654, 27.528732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035894, 0.268358, -0.962650,
		-0.862489, 0.494892, 0.105802,
		0.504801, 0.826478, 0.249220,
		34.791126, 33.940598, 27.603498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078182, 33.983898, 27.025877>,  <34.437767, 33.362061, 27.429045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078182, 33.983898, 27.025877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456013, 34.077339, 27.118137>,  <34.682713, 34.133404, 27.173494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456013, 34.077339, 27.118137>,  <34.078182, 33.983898, 27.025877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456013, 34.077339, 27.118137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145615, 0.331561, -0.932129,
		-0.294219, 0.914057, 0.279171,
		0.944580, 0.233598, 0.230652,
		34.739388, 34.147419, 27.187332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145191, 34.735023, 26.818195>,  <34.078182, 33.983898, 27.025877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145191, 34.735023, 26.818195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511379, 34.578629, 26.856239>,  <34.731091, 34.484791, 26.879065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511379, 34.578629, 26.856239>,  <34.145191, 34.735023, 26.818195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511379, 34.578629, 26.856239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263461, 0.403763, -0.876107,
		0.304144, 0.827107, 0.472642,
		0.915470, -0.390986, 0.095108,
		34.786018, 34.461334, 26.884771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592976, 35.284969, 26.651173>,  <34.145191, 34.735023, 26.818195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592976, 35.284969, 26.651173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823925, 34.959476, 26.624376>,  <34.962494, 34.764183, 26.608299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823925, 34.959476, 26.624376>,  <34.592976, 35.284969, 26.651173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823925, 34.959476, 26.624376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382466, 0.342037, -0.858330,
		0.721361, 0.469954, 0.508706,
		0.577372, -0.813729, -0.066991,
		34.997135, 34.715359, 26.604279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315659, 35.466881, 26.600296>,  <34.592976, 35.284969, 26.651173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315659, 35.466881, 26.600296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297024, 35.107407, 26.425848>,  <35.285843, 34.891724, 26.321178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297024, 35.107407, 26.425848>,  <35.315659, 35.466881, 26.600296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297024, 35.107407, 26.425848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340085, 0.396244, -0.852838,
		0.939240, -0.188050, 0.287168,
		-0.046588, -0.898681, -0.436122,
		35.283047, 34.837803, 26.295012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871147, 35.350380, 26.169950>,  <35.315659, 35.466881, 26.600296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871147, 35.350380, 26.169950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599297, 35.093269, 26.028559>,  <35.436188, 34.939003, 25.943724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599297, 35.093269, 26.028559>,  <35.871147, 35.350380, 26.169950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599297, 35.093269, 26.028559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231856, 0.268938, -0.934834,
		0.695953, -0.717293, -0.033746,
		-0.679626, -0.642777, -0.353477,
		35.395409, 34.900436, 25.922516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240040, 34.976295, 25.704851>,  <35.871147, 35.350380, 26.169950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240040, 34.976295, 25.704851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859165, 34.900249, 25.609184>,  <35.630642, 34.854622, 25.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859165, 34.900249, 25.609184>,  <36.240040, 34.976295, 25.704851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859165, 34.900249, 25.609184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138803, 0.428177, -0.892972,
		0.272170, -0.883471, -0.381315,
		-0.952186, -0.190113, -0.239165,
		35.573509, 34.843216, 25.537434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283356, 34.625816, 25.160479>,  <36.240040, 34.976295, 25.704851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283356, 34.625816, 25.160479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913254, 34.776634, 25.143747>,  <35.691193, 34.867126, 25.133709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913254, 34.776634, 25.143747>,  <36.283356, 34.625816, 25.160479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913254, 34.776634, 25.143747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184384, 0.350605, -0.918193,
		-0.331534, -0.857271, -0.393918,
		-0.925250, 0.377045, -0.041830,
		35.635677, 34.889748, 25.131199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045200, 34.378910, 24.644800>,  <36.283356, 34.625816, 25.160479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045200, 34.378910, 24.644800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761642, 34.660175, 24.666798>,  <35.591507, 34.828934, 24.679996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761642, 34.660175, 24.666798>,  <36.045200, 34.378910, 24.644800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761642, 34.660175, 24.666798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169608, 0.245634, -0.954409,
		-0.684617, -0.667248, -0.293392,
		-0.708895, 0.703167, 0.054995,
		35.548973, 34.871124, 24.683296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662281, 34.236359, 24.079784>,  <36.045200, 34.378910, 24.644800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662281, 34.236359, 24.079784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604134, 34.618313, 24.183374>,  <35.569244, 34.847485, 24.245529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604134, 34.618313, 24.183374>,  <35.662281, 34.236359, 24.079784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604134, 34.618313, 24.183374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177202, 0.282653, -0.942713,
		-0.973379, -0.091153, -0.210296,
		-0.145371, 0.954881, 0.258976,
		35.560524, 34.904778, 24.261066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261520, 34.420464, 23.542191>,  <35.662281, 34.236359, 24.079784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261520, 34.420464, 23.542191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426247, 34.742805, 23.712370>,  <35.525082, 34.936211, 23.814478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426247, 34.742805, 23.712370>,  <35.261520, 34.420464, 23.542191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426247, 34.742805, 23.712370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169418, 0.391031, -0.904650,
		-0.895382, 0.444625, 0.024505,
		0.411812, 0.805856, 0.425449,
		35.549789, 34.984562, 23.840004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959732, 34.941723, 23.099009>,  <35.261520, 34.420464, 23.542191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959732, 34.941723, 23.099009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284306, 35.082062, 23.285975>,  <35.479050, 35.166264, 23.398153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284306, 35.082062, 23.285975>,  <34.959732, 34.941723, 23.099009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284306, 35.082062, 23.285975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389054, 0.272543, -0.879976,
		-0.436124, 0.895896, 0.084654,
		0.811438, 0.350844, 0.467415,
		35.527737, 35.187313, 23.426199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201550, 35.693954, 22.905352>,  <34.959732, 34.941723, 23.099009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201550, 35.693954, 22.905352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534065, 35.498371, 23.011086>,  <35.733574, 35.381020, 23.074526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534065, 35.498371, 23.011086>,  <35.201550, 35.693954, 22.905352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534065, 35.498371, 23.011086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374562, 0.141412, -0.916355,
		0.410678, 0.860769, 0.300699,
		0.831292, -0.488957, 0.264337,
		35.783451, 35.351685, 23.090387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794502, 35.995056, 22.583742>,  <35.201550, 35.693954, 22.905352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794502, 35.995056, 22.583742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877148, 35.606754, 22.632643>,  <35.926735, 35.373772, 22.661983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877148, 35.606754, 22.632643>,  <35.794502, 35.995056, 22.583742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877148, 35.606754, 22.632643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366236, -0.039131, -0.929699,
		0.907293, 0.236865, 0.347440,
		0.206617, -0.970754, 0.122252,
		35.939133, 35.315529, 22.669319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264198, 36.458542, 22.729601>,  <35.794502, 35.995056, 22.583742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264198, 36.458542, 22.729601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404766, 36.827957, 22.791018>,  <36.489105, 37.049606, 22.827868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404766, 36.827957, 22.791018>,  <36.264198, 36.458542, 22.729601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404766, 36.827957, 22.791018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012032, 0.168446, -0.985637,
		-0.936141, 0.344523, 0.070307,
		0.351418, 0.923542, 0.153544,
		36.510193, 37.105019, 22.837080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814617, 36.843433, 22.318377>,  <36.264198, 36.458542, 22.729601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814617, 36.843433, 22.318377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123554, 37.090683, 22.376909>,  <36.308914, 37.239033, 22.412029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123554, 37.090683, 22.376909>,  <35.814617, 36.843433, 22.318377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123554, 37.090683, 22.376909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016176, 0.249433, -0.968257,
		-0.635005, 0.745455, 0.202645,
		0.772338, 0.618126, 0.146332,
		36.355255, 37.276119, 22.420809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686260, 37.502800, 22.089399>,  <35.814617, 36.843433, 22.318377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686260, 37.502800, 22.089399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077374, 37.419582, 22.079136>,  <36.312042, 37.369652, 22.072977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077374, 37.419582, 22.079136>,  <35.686260, 37.502800, 22.089399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077374, 37.419582, 22.079136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030102, 0.260489, -0.965007,
		0.207449, 0.942795, 0.260964,
		0.977783, -0.208045, -0.025658,
		36.370708, 37.357170, 22.071438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108681, 38.100266, 21.879087>,  <35.686260, 37.502800, 22.089399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108681, 38.100266, 21.879087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304615, 37.769257, 21.769346>,  <36.422176, 37.570652, 21.703501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304615, 37.769257, 21.769346>,  <36.108681, 38.100266, 21.879087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304615, 37.769257, 21.769346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203566, 0.197429, -0.958949,
		0.847713, 0.525581, -0.071746,
		0.489840, -0.827519, -0.274353,
		36.451569, 37.521000, 21.687040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845875, 38.066254, 21.485062>,  <36.108681, 38.100266, 21.879087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845875, 38.066254, 21.485062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625519, 37.751740, 21.373146>,  <36.493305, 37.563030, 21.305996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625519, 37.751740, 21.373146>,  <36.845875, 38.066254, 21.485062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625519, 37.751740, 21.373146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053079, 0.367575, -0.928478,
		0.832890, -0.496636, -0.244228,
		-0.550888, -0.786283, -0.279788,
		36.460251, 37.515854, 21.289209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502048, 37.859924, 21.871887>,  <36.845875, 38.066254, 21.485062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502048, 37.859924, 21.871887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113888, 37.824837, 21.961891>,  <36.880993, 37.803783, 22.015894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113888, 37.824837, 21.961891>,  <37.502048, 37.859924, 21.871887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113888, 37.824837, 21.961891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241383, -0.322701, 0.915204,
		-0.007670, 0.942427, 0.334323,
		-0.970400, -0.087720, 0.225011,
		36.822769, 37.798519, 22.029394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432343, 38.001831, 22.518551>,  <37.502048, 37.859924, 21.871887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432343, 38.001831, 22.518551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094231, 37.790119, 22.489267>,  <36.891365, 37.663090, 22.471697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094231, 37.790119, 22.489267>,  <37.432343, 38.001831, 22.518551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094231, 37.790119, 22.489267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076120, -0.016334, 0.996965,
		-0.528874, 0.848287, -0.026482,
		-0.845280, -0.529284, -0.073210,
		36.840645, 37.631332, 22.467304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874329, 38.350632, 22.991274>,  <37.432343, 38.001831, 22.518551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874329, 38.350632, 22.991274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774189, 37.964561, 22.960901>,  <36.714104, 37.732922, 22.942678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774189, 37.964561, 22.960901>,  <36.874329, 38.350632, 22.991274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774189, 37.964561, 22.960901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156935, -0.036935, 0.986918,
		-0.955351, 0.258993, -0.142222,
		-0.250352, -0.965173, -0.075931,
		36.699085, 37.675011, 22.938122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397041, 38.293800, 23.437323>,  <36.874329, 38.350632, 22.991274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397041, 38.293800, 23.437323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480743, 37.904881, 23.395660>,  <36.530964, 37.671528, 23.370663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480743, 37.904881, 23.395660>,  <36.397041, 38.293800, 23.437323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480743, 37.904881, 23.395660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059680, -0.119013, 0.991097,
		-0.976038, -0.201178, -0.082931,
		0.209257, -0.972298, -0.104155,
		36.543522, 37.613190, 23.364414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915985, 37.976521, 23.877905>,  <36.397041, 38.293800, 23.437323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915985, 37.976521, 23.877905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215511, 37.714382, 23.838305>,  <36.395226, 37.557098, 23.814545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215511, 37.714382, 23.838305>,  <35.915985, 37.976521, 23.877905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215511, 37.714382, 23.838305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001472, -0.151016, 0.988530,
		-0.662781, -0.740077, -0.114048,
		0.748812, -0.655347, -0.099001,
		36.440155, 37.517776, 23.808605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888721, 37.541691, 24.386932>,  <35.915985, 37.976521, 23.877905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888721, 37.541691, 24.386932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251644, 37.416073, 24.275093>,  <36.469398, 37.340702, 24.207991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251644, 37.416073, 24.275093>,  <35.888721, 37.541691, 24.386932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251644, 37.416073, 24.275093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205484, -0.248978, 0.946460,
		-0.366847, -0.916179, -0.161367,
		0.907304, -0.314047, -0.279597,
		36.523834, 37.321857, 24.191214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000603, 36.903614, 24.773458>,  <35.888721, 37.541691, 24.386932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000603, 36.903614, 24.773458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374985, 37.011219, 24.682577>,  <36.599613, 37.075783, 24.628048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374985, 37.011219, 24.682577>,  <36.000603, 36.903614, 24.773458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374985, 37.011219, 24.682577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319358, -0.376731, 0.869531,
		0.148316, -0.886402, -0.438513,
		0.935956, 0.269008, -0.227204,
		36.655773, 37.091923, 24.614416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518547, 36.323517, 24.905010>,  <36.000603, 36.903614, 24.773458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518547, 36.323517, 24.905010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731918, 36.661728, 24.895723>,  <36.859943, 36.864655, 24.890152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731918, 36.661728, 24.895723>,  <36.518547, 36.323517, 24.905010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731918, 36.661728, 24.895723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370067, -0.208615, 0.905279,
		0.760593, -0.491495, -0.424183,
		0.533431, 0.845525, -0.023215,
		36.891949, 36.915386, 24.888760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174870, 36.093544, 25.239885>,  <36.518547, 36.323517, 24.905010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174870, 36.093544, 25.239885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142830, 36.492073, 25.252075>,  <37.123604, 36.731190, 25.259388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142830, 36.492073, 25.252075>,  <37.174870, 36.093544, 25.239885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142830, 36.492073, 25.252075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400294, 0.004154, 0.916377,
		0.912879, 0.085601, -0.399154,
		-0.080101, 0.996321, 0.030473,
		37.118801, 36.790970, 25.261217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740295, 36.195816, 25.661709>,  <37.174870, 36.093544, 25.239885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740295, 36.195816, 25.661709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506893, 36.520580, 25.654552>,  <37.366852, 36.715439, 25.650259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506893, 36.520580, 25.654552>,  <37.740295, 36.195816, 25.661709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506893, 36.520580, 25.654552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109159, 0.100245, 0.988957,
		0.804739, 0.575109, -0.147121,
		-0.583506, 0.811912, -0.017893,
		37.331841, 36.764153, 25.649185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095142, 36.774315, 25.945190>,  <37.740295, 36.195816, 25.661709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095142, 36.774315, 25.945190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709991, 36.878658, 25.972952>,  <37.478901, 36.941265, 25.989609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709991, 36.878658, 25.972952>,  <38.095142, 36.774315, 25.945190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709991, 36.878658, 25.972952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113880, 0.159445, 0.980617,
		0.244733, 0.952120, -0.183232,
		-0.962880, 0.260856, 0.069406,
		37.421127, 36.956917, 25.993774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112957, 37.392365, 26.355858>,  <38.095142, 36.774315, 25.945190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112957, 37.392365, 26.355858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740772, 37.250778, 26.393696>,  <37.517460, 37.165829, 26.416399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740772, 37.250778, 26.393696>,  <38.112957, 37.392365, 26.355858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740772, 37.250778, 26.393696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001049, 0.255608, 0.966780,
		-0.366382, 0.899653, -0.237463,
		-0.930464, -0.353961, 0.094594,
		37.461632, 37.144588, 26.422073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660625, 37.944462, 26.709881>,  <38.112957, 37.392365, 26.355858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660625, 37.944462, 26.709881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478230, 37.590046, 26.743387>,  <37.368793, 37.377396, 26.763491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478230, 37.590046, 26.743387>,  <37.660625, 37.944462, 26.709881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478230, 37.590046, 26.743387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082903, 0.051423, 0.995230,
		-0.886117, 0.460756, 0.050007,
		-0.455986, -0.886036, 0.083765,
		37.341434, 37.324234, 26.768517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251316, 38.061337, 27.230629>,  <37.660625, 37.944462, 26.709881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251316, 38.061337, 27.230629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221249, 37.662552, 27.222498>,  <37.203209, 37.423279, 27.217619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221249, 37.662552, 27.222498>,  <37.251316, 38.061337, 27.230629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221249, 37.662552, 27.222498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025333, -0.022290, 0.999431,
		-0.996849, 0.074615, 0.026932,
		-0.075173, -0.996963, -0.020329,
		37.198696, 37.363464, 27.216400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656731, 37.872334, 27.677902>,  <37.251316, 38.061337, 27.230629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656731, 37.872334, 27.677902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912621, 37.566761, 27.644035>,  <37.066154, 37.383419, 27.623714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912621, 37.566761, 27.644035>,  <36.656731, 37.872334, 27.677902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912621, 37.566761, 27.644035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082142, -0.177477, 0.980691,
		-0.764206, -0.620414, -0.176286,
		0.639721, -0.763930, -0.084667,
		37.104538, 37.337582, 27.618635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335991, 37.379890, 28.059601>,  <36.656731, 37.872334, 27.677902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335991, 37.379890, 28.059601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711712, 37.246410, 28.027721>,  <36.937145, 37.166321, 28.008595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711712, 37.246410, 28.027721>,  <36.335991, 37.379890, 28.059601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711712, 37.246410, 28.027721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005485, -0.246871, 0.969033,
		-0.343041, -0.909779, -0.233718,
		0.939304, -0.333700, -0.079697,
		36.993504, 37.146301, 28.003813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284359, 36.775780, 28.305649>,  <36.335991, 37.379890, 28.059601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284359, 36.775780, 28.305649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677494, 36.829243, 28.356510>,  <36.913376, 36.861320, 28.387026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677494, 36.829243, 28.356510>,  <36.284359, 36.775780, 28.305649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677494, 36.829243, 28.356510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074242, -0.344404, 0.935882,
		0.168880, -0.929259, -0.328570,
		0.982837, 0.133658, 0.127153,
		36.972343, 36.869339, 28.394655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455082, 36.149097, 28.579315>,  <36.284359, 36.775780, 28.305649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455082, 36.149097, 28.579315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738277, 36.413975, 28.677500>,  <36.908195, 36.572899, 28.736410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738277, 36.413975, 28.677500>,  <36.455082, 36.149097, 28.579315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738277, 36.413975, 28.677500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062355, -0.404828, 0.912264,
		0.703461, -0.630571, -0.327907,
		0.707994, 0.662189, 0.245461,
		36.950676, 36.612633, 28.751139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920109, 35.747772, 28.866772>,  <36.455082, 36.149097, 28.579315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920109, 35.747772, 28.866772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002457, 36.119858, 28.988312>,  <37.051865, 36.343109, 29.061235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002457, 36.119858, 28.988312>,  <36.920109, 35.747772, 28.866772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002457, 36.119858, 28.988312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022302, -0.314879, 0.948870,
		0.978325, -0.188566, -0.085570,
		0.205869, 0.930212, 0.303849,
		37.064217, 36.398922, 29.079466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069836, 35.593288, 29.475822>,  <36.920109, 35.747772, 28.866772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069836, 35.593288, 29.475822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045757, 35.992508, 29.482487>,  <37.031311, 36.232040, 29.486485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045757, 35.992508, 29.482487>,  <37.069836, 35.593288, 29.475822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045757, 35.992508, 29.482487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124204, -0.024050, 0.991965,
		0.990429, 0.057640, 0.125409,
		-0.060193, 0.998047, 0.016661,
		37.027699, 36.291924, 29.487486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496284, 35.696037, 30.013042>,  <37.069836, 35.593288, 29.475822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496284, 35.696037, 30.013042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282066, 36.029797, 29.960926>,  <37.153538, 36.230053, 29.929657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282066, 36.029797, 29.960926>,  <37.496284, 35.696037, 30.013042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282066, 36.029797, 29.960926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149050, 0.058470, 0.987100,
		0.831252, 0.548052, 0.093054,
		-0.535541, 0.834398, -0.130291,
		37.121403, 36.280117, 29.921839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797112, 36.139397, 30.479395>,  <37.496284, 35.696037, 30.013042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797112, 36.139397, 30.479395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431751, 36.289886, 30.417223>,  <37.212536, 36.380180, 30.379919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431751, 36.289886, 30.417223>,  <37.797112, 36.139397, 30.479395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431751, 36.289886, 30.417223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129424, 0.093613, 0.987160,
		0.385941, 0.921788, -0.036814,
		-0.913400, 0.376221, -0.155430,
		37.157730, 36.402752, 30.370594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668682, 36.734211, 30.984461>,  <37.797112, 36.139397, 30.479395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668682, 36.734211, 30.984461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296391, 36.663429, 30.856441>,  <37.073017, 36.620960, 30.779631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296391, 36.663429, 30.856441>,  <37.668682, 36.734211, 30.984461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296391, 36.663429, 30.856441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316578, -0.048284, 0.947337,
		-0.183087, 0.983034, -0.011080,
		-0.930730, -0.176952, -0.320047,
		37.017170, 36.610344, 30.760427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231461, 37.186417, 31.427067>,  <37.668682, 36.734211, 30.984461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231461, 37.186417, 31.427067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995998, 36.891323, 31.294865>,  <36.854721, 36.714268, 31.215544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995998, 36.891323, 31.294865>,  <37.231461, 37.186417, 31.427067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995998, 36.891323, 31.294865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342502, -0.142730, 0.928612,
		-0.732243, 0.659829, -0.168658,
		-0.588652, -0.737736, -0.330506,
		36.819401, 36.670002, 31.195713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534515, 37.294659, 31.642359>,  <37.231461, 37.186417, 31.427067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534515, 37.294659, 31.642359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513775, 36.902683, 31.565392>,  <36.501331, 36.667496, 31.519211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513775, 36.902683, 31.565392>,  <36.534515, 37.294659, 31.642359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513775, 36.902683, 31.565392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590242, -0.125350, 0.797435,
		-0.805559, 0.154923, -0.571903,
		-0.051852, -0.979942, -0.192419,
		36.498219, 36.608700, 31.507666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920876, 37.088779, 31.966869>,  <36.534515, 37.294659, 31.642359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920876, 37.088779, 31.966869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115803, 36.743343, 31.915129>,  <36.232758, 36.536079, 31.884085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115803, 36.743343, 31.915129>,  <35.920876, 37.088779, 31.966869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115803, 36.743343, 31.915129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487296, -0.391863, 0.780376,
		-0.724615, -0.317258, -0.611785,
		0.487316, -0.863592, -0.129351,
		36.261997, 36.484264, 31.876324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378212, 36.528992, 31.997377>,  <35.920876, 37.088779, 31.966869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378212, 36.528992, 31.997377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741524, 36.401630, 32.105934>,  <35.959511, 36.325214, 32.171070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741524, 36.401630, 32.105934>,  <35.378212, 36.528992, 31.997377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741524, 36.401630, 32.105934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383551, -0.374628, 0.844122,
		-0.167101, -0.870789, -0.462390,
		0.908276, -0.318404, 0.271392,
		36.014008, 36.306110, 32.187351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239624, 36.070271, 32.473682>,  <35.378212, 36.528992, 31.997377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239624, 36.070271, 32.473682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633389, 36.103455, 32.535728>,  <35.869648, 36.123363, 32.572956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633389, 36.103455, 32.535728>,  <35.239624, 36.070271, 32.473682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633389, 36.103455, 32.535728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136064, -0.199804, 0.970343,
		0.111493, -0.976318, -0.185400,
		0.984406, 0.082960, 0.155118,
		35.928711, 36.128342, 32.582264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437477, 35.510422, 32.981503>,  <35.239624, 36.070271, 32.473682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437477, 35.510422, 32.981503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735840, 35.776558, 32.993778>,  <35.914856, 35.936241, 33.001144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735840, 35.776558, 32.993778>,  <35.437477, 35.510422, 32.981503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735840, 35.776558, 32.993778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063153, 0.024776, 0.997696,
		0.663049, -0.746127, 0.060499,
		0.745907, 0.665342, 0.030692,
		35.959614, 35.976162, 33.002987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852890, 35.353390, 33.531506>,  <35.437477, 35.510422, 32.981503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852890, 35.353390, 33.531506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966434, 35.734772, 33.490807>,  <36.034561, 35.963600, 33.466385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966434, 35.734772, 33.490807>,  <35.852890, 35.353390, 33.531506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966434, 35.734772, 33.490807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000343, 0.106016, 0.994365,
		0.958867, -0.282292, 0.029767,
		0.283857, 0.953453, -0.101752,
		36.051590, 36.020809, 33.460281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379467, 35.364838, 34.020531>,  <35.852890, 35.353390, 33.531506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379467, 35.364838, 34.020531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266369, 35.739464, 33.937687>,  <36.198509, 35.964241, 33.887981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266369, 35.739464, 33.937687>,  <36.379467, 35.364838, 34.020531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266369, 35.739464, 33.937687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209248, 0.270946, 0.939576,
		0.936094, 0.222322, -0.272583,
		-0.282744, 0.936569, -0.207110,
		36.181545, 36.020435, 33.875553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765835, 35.729935, 34.458073>,  <36.379467, 35.364838, 34.020531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765835, 35.729935, 34.458073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464622, 35.975849, 34.364277>,  <36.283894, 36.123398, 34.307999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464622, 35.975849, 34.364277>,  <36.765835, 35.729935, 34.458073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464622, 35.975849, 34.364277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067792, 0.426970, 0.901721,
		0.654484, 0.663127, -0.363199,
		-0.753031, 0.614784, -0.234490,
		36.238712, 36.160286, 34.293930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922386, 36.514420, 34.564663>,  <36.765835, 35.729935, 34.458073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922386, 36.514420, 34.564663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529213, 36.445290, 34.589878>,  <36.293308, 36.403812, 34.605007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529213, 36.445290, 34.589878>,  <36.922386, 36.514420, 34.564663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529213, 36.445290, 34.589878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030173, 0.489470, 0.871498,
		-0.181472, 0.854722, -0.486331,
		-0.982933, -0.172827, 0.063036,
		36.234333, 36.393440, 34.608788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668888, 37.248161, 34.850834>,  <36.922386, 36.514420, 34.564663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668888, 37.248161, 34.850834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438950, 36.923256, 34.890415>,  <36.300987, 36.728313, 34.914165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438950, 36.923256, 34.890415>,  <36.668888, 37.248161, 34.850834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438950, 36.923256, 34.890415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148349, 0.222380, 0.963608,
		-0.804704, 0.539243, -0.248331,
		-0.574842, -0.812259, 0.098954,
		36.266499, 36.679577, 34.920101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030041, 37.515659, 35.131702>,  <36.668888, 37.248161, 34.850834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030041, 37.515659, 35.131702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000072, 37.126831, 35.220673>,  <35.982090, 36.893536, 35.274055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000072, 37.126831, 35.220673>,  <36.030041, 37.515659, 35.131702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000072, 37.126831, 35.220673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174647, 0.232396, 0.956813,
		-0.981776, 0.032842, -0.187181,
		-0.074924, -0.972067, 0.222425,
		35.977596, 36.835213, 35.287399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441105, 37.491356, 35.520184>,  <36.030041, 37.515659, 35.131702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441105, 37.491356, 35.520184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636955, 37.151421, 35.598198>,  <35.754467, 36.947460, 35.645008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636955, 37.151421, 35.598198>,  <35.441105, 37.491356, 35.520184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636955, 37.151421, 35.598198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015899, 0.214948, 0.976496,
		-0.871789, -0.481217, 0.091732,
		0.489624, -0.849840, 0.195040,
		35.783844, 36.896469, 35.656712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983124, 37.161831, 36.040558>,  <35.441105, 37.491356, 35.520184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983124, 37.161831, 36.040558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336884, 36.976036, 36.058861>,  <35.549141, 36.864559, 36.069843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336884, 36.976036, 36.058861>,  <34.983124, 37.161831, 36.040558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336884, 36.976036, 36.058861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062270, -0.020271, 0.997854,
		-0.462559, -0.885350, -0.046851,
		0.884399, -0.464484, 0.045754,
		35.602203, 36.836693, 36.072586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909439, 36.691658, 36.619808>,  <34.983124, 37.161831, 36.040558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909439, 36.691658, 36.619808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304810, 36.691948, 36.559128>,  <35.542030, 36.692120, 36.522720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304810, 36.691948, 36.559128>,  <34.909439, 36.691658, 36.619808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304810, 36.691948, 36.559128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151467, -0.059905, 0.986645,
		-0.008370, -0.998204, -0.059321,
		0.988427, 0.000727, -0.151696,
		35.601337, 36.692165, 36.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170567, 36.146545, 37.054108>,  <34.909439, 36.691658, 36.619808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170567, 36.146545, 37.054108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467125, 36.408512, 36.995579>,  <35.645061, 36.565693, 36.960461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467125, 36.408512, 36.995579>,  <35.170567, 36.146545, 37.054108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467125, 36.408512, 36.995579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299512, -0.127826, 0.945491,
		0.600518, -0.744808, -0.290926,
		0.741397, 0.654921, -0.146318,
		35.689545, 36.604988, 36.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749241, 35.867325, 37.312042>,  <35.170567, 36.146545, 37.054108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749241, 35.867325, 37.312042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833988, 36.258144, 37.303284>,  <35.884838, 36.492638, 37.298027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833988, 36.258144, 37.303284>,  <35.749241, 35.867325, 37.312042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833988, 36.258144, 37.303284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432212, -0.073579, 0.898765,
		0.876529, -0.199888, -0.437883,
		0.211871, 0.977052, -0.021900,
		35.897549, 36.551262, 37.296715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404358, 35.924488, 37.643917>,  <35.749241, 35.867325, 37.312042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404358, 35.924488, 37.643917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260773, 36.297779, 37.650085>,  <36.174622, 36.521751, 37.653786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260773, 36.297779, 37.650085>,  <36.404358, 35.924488, 37.643917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260773, 36.297779, 37.650085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434215, 0.152349, 0.887833,
		0.826197, 0.325397, -0.459908,
		-0.358965, 0.933224, 0.015422,
		36.153084, 36.577747, 37.654713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946568, 36.403584, 37.898071>,  <36.404358, 35.924488, 37.643917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946568, 36.403584, 37.898071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593391, 36.564342, 37.995148>,  <36.381485, 36.660797, 38.053394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593391, 36.564342, 37.995148>,  <36.946568, 36.403584, 37.898071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593391, 36.564342, 37.995148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277692, 0.030239, 0.960194,
		0.378560, 0.915185, -0.138303,
		-0.882938, 0.401897, 0.242692,
		36.328510, 36.684910, 38.067955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124874, 36.865101, 38.443451>,  <36.946568, 36.403584, 37.898071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124874, 36.865101, 38.443451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740665, 36.754658, 38.429836>,  <36.510139, 36.688393, 38.421669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740665, 36.754658, 38.429836>,  <37.124874, 36.865101, 38.443451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740665, 36.754658, 38.429836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004553, -0.137937, 0.990430,
		-0.278162, 0.951176, 0.133749,
		-0.960523, -0.276109, -0.034038,
		36.452507, 36.671825, 38.419624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717785, 37.109707, 38.018539>,  <37.124874, 36.865101, 38.443451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717785, 37.109707, 38.018539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070267, 36.941841, 38.105587>,  <38.281757, 36.841122, 38.157814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070267, 36.941841, 38.105587>,  <37.717785, 37.109707, 38.018539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070267, 36.941841, 38.105587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272112, 0.073861, -0.959427,
		0.386560, 0.904671, 0.179281,
		0.881207, -0.419661, 0.217620,
		38.334629, 36.815945, 38.170872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354908, 37.495049, 37.728527>,  <37.717785, 37.109707, 38.018539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354908, 37.495049, 37.728527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408718, 37.098763, 37.736404>,  <38.441006, 36.860992, 37.741131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408718, 37.098763, 37.736404>,  <38.354908, 37.495049, 37.728527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408718, 37.098763, 37.736404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501005, 0.050856, -0.863949,
		0.854925, 0.126088, 0.503194,
		0.134524, -0.990715, 0.019693,
		38.449074, 36.801548, 37.742313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054237, 37.386482, 37.497314>,  <38.354908, 37.495049, 37.728527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054237, 37.386482, 37.497314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867001, 37.036449, 37.448139>,  <38.754658, 36.826427, 37.418633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867001, 37.036449, 37.448139>,  <39.054237, 37.386482, 37.497314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867001, 37.036449, 37.448139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558413, -0.185094, -0.808650,
		0.684883, -0.447174, 0.575300,
		-0.468092, -0.875086, -0.122940,
		38.726574, 36.773922, 37.411259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512676, 36.899612, 37.375500>,  <39.054237, 37.386482, 37.497314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512676, 36.899612, 37.375500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178757, 36.739258, 37.224556>,  <38.978405, 36.643044, 37.133987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178757, 36.739258, 37.224556>,  <39.512676, 36.899612, 37.375500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178757, 36.739258, 37.224556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475318, -0.178906, -0.861432,
		0.277826, -0.898488, 0.339899,
		-0.834797, -0.400888, -0.377363,
		38.928318, 36.618992, 37.111347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711433, 36.178661, 37.058464>,  <39.512676, 36.899612, 37.375500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711433, 36.178661, 37.058464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372978, 36.310833, 36.891197>,  <39.169903, 36.390137, 36.790836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372978, 36.310833, 36.891197>,  <39.711433, 36.178661, 37.058464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372978, 36.310833, 36.891197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455824, 0.042107, -0.889073,
		-0.276164, -0.942892, -0.186244,
		-0.846143, 0.330425, -0.418165,
		39.119137, 36.409962, 36.765747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764389, 35.763676, 36.523739>,  <39.711433, 36.178661, 37.058464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764389, 35.763676, 36.523739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494247, 36.036747, 36.412136>,  <39.332161, 36.200588, 36.345173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494247, 36.036747, 36.412136>,  <39.764389, 35.763676, 36.523739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494247, 36.036747, 36.412136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220309, -0.174292, -0.959733,
		-0.703816, -0.709630, -0.032691,
		-0.675357, 0.682677, -0.279007,
		39.291641, 36.241550, 36.328434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369793, 35.338604, 35.982281>,  <39.764389, 35.763676, 36.523739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369793, 35.338604, 35.982281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306446, 35.729275, 35.924290>,  <39.268440, 35.963676, 35.889496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306446, 35.729275, 35.924290>,  <39.369793, 35.338604, 35.982281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306446, 35.729275, 35.924290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107007, -0.128994, -0.985855,
		-0.981565, -0.171637, -0.084084,
		-0.158362, 0.976679, -0.144982,
		39.258938, 36.022278, 35.880795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958565, 35.477631, 35.323498>,  <39.369793, 35.338604, 35.982281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958565, 35.477631, 35.323498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120125, 35.839890, 35.375156>,  <39.217060, 36.057243, 35.406151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120125, 35.839890, 35.375156>,  <38.958565, 35.477631, 35.323498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120125, 35.839890, 35.375156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066414, 0.111776, -0.991512,
		-0.912391, 0.409045, -0.015001,
		0.403896, 0.905643, 0.129150,
		39.241295, 36.111584, 35.413902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510979, 35.955769, 34.999687>,  <38.958565, 35.477631, 35.323498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510979, 35.955769, 34.999687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870590, 36.123535, 35.050041>,  <39.086357, 36.224194, 35.080254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870590, 36.123535, 35.050041>,  <38.510979, 35.955769, 34.999687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870590, 36.123535, 35.050041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057468, 0.171980, -0.983423,
		-0.434111, 0.891355, 0.130511,
		0.899024, 0.419415, 0.125883,
		39.140297, 36.249359, 35.087807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454029, 36.481579, 34.583363>,  <38.510979, 35.955769, 34.999687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454029, 36.481579, 34.583363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849388, 36.437382, 34.625042>,  <39.086605, 36.410866, 34.650051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849388, 36.437382, 34.625042>,  <38.454029, 36.481579, 34.583363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849388, 36.437382, 34.625042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112302, 0.069833, -0.991217,
		0.102242, 0.991421, 0.081431,
		0.988400, -0.110489, 0.104199,
		39.145908, 36.404236, 34.656303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799122, 37.077866, 34.250038>,  <38.454029, 36.481579, 34.583363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799122, 37.077866, 34.250038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080120, 36.794949, 34.281647>,  <39.248718, 36.625198, 34.300610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080120, 36.794949, 34.281647>,  <38.799122, 37.077866, 34.250038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080120, 36.794949, 34.281647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337703, 0.233545, -0.911819,
		0.626464, 0.667233, 0.402918,
		0.702495, -0.707288, 0.079019,
		39.290867, 36.582764, 34.305351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380363, 37.449028, 33.937336>,  <38.799122, 37.077866, 34.250038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380363, 37.449028, 33.937336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445694, 37.054417, 33.941135>,  <39.484894, 36.817650, 33.943417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445694, 37.054417, 33.941135>,  <39.380363, 37.449028, 33.937336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445694, 37.054417, 33.941135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458698, 0.067409, -0.886032,
		0.873454, 0.149069, 0.463527,
		0.163326, -0.986526, 0.009499,
		39.494690, 36.758457, 33.943985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069447, 37.348347, 33.854675>,  <39.380363, 37.449028, 33.937336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069447, 37.348347, 33.854675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902210, 37.002392, 33.743553>,  <39.801868, 36.794819, 33.676880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902210, 37.002392, 33.743553>,  <40.069447, 37.348347, 33.854675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902210, 37.002392, 33.743553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328537, 0.141157, -0.933883,
		0.846916, -0.481716, 0.225130,
		-0.418088, -0.864884, -0.277810,
		39.776783, 36.742928, 33.660210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527233, 37.006290, 33.467312>,  <40.069447, 37.348347, 33.854675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527233, 37.006290, 33.467312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172955, 36.854473, 33.360363>,  <39.960388, 36.763382, 33.296196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172955, 36.854473, 33.360363>,  <40.527233, 37.006290, 33.467312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172955, 36.854473, 33.360363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199200, 0.209517, -0.957299,
		0.419352, -0.901139, -0.109964,
		-0.885699, -0.379541, -0.267369,
		39.907246, 36.740612, 33.280151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629284, 36.575359, 32.948223>,  <40.527233, 37.006290, 33.467312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629284, 36.575359, 32.948223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239216, 36.613289, 32.868176>,  <40.005173, 36.636047, 32.820148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239216, 36.613289, 32.868176>,  <40.629284, 36.575359, 32.948223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239216, 36.613289, 32.868176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216392, 0.216114, -0.952087,
		-0.047034, -0.971753, -0.231267,
		-0.975173, 0.094824, -0.200115,
		39.946663, 36.641735, 32.808140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529041, 36.315208, 32.173733>,  <40.629284, 36.575359, 32.948223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529041, 36.315208, 32.173733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178162, 36.491840, 32.249134>,  <39.967636, 36.597820, 32.294376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178162, 36.491840, 32.249134>,  <40.529041, 36.315208, 32.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178162, 36.491840, 32.249134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120917, 0.176782, -0.976794,
		-0.464660, -0.879632, -0.101678,
		-0.877194, 0.441583, 0.188506,
		39.915005, 36.624313, 32.305687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961102, 35.873394, 31.763668>,  <40.529041, 36.315208, 32.173733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961102, 35.873394, 31.763668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838688, 36.249767, 31.821625>,  <39.765240, 36.475590, 31.856398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838688, 36.249767, 31.821625>,  <39.961102, 35.873394, 31.763668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838688, 36.249767, 31.821625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029996, 0.142586, -0.989328,
		-0.951548, -0.307114, -0.015412,
		-0.306034, 0.940930, 0.144890,
		39.746876, 36.532047, 31.865091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373596, 36.024746, 31.313772>,  <39.961102, 35.873394, 31.763668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373596, 36.024746, 31.313772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454338, 36.412380, 31.370527>,  <39.502781, 36.644958, 31.404581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454338, 36.412380, 31.370527>,  <39.373596, 36.024746, 31.313772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454338, 36.412380, 31.370527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008845, 0.146669, -0.989146,
		-0.979376, 0.198406, 0.038177,
		0.201852, 0.969084, 0.141889,
		39.514893, 36.703106, 31.413094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813148, 36.372444, 30.999722>,  <39.373596, 36.024746, 31.313772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813148, 36.372444, 30.999722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122517, 36.625793, 31.010006>,  <39.308136, 36.777802, 31.016176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122517, 36.625793, 31.010006>,  <38.813148, 36.372444, 30.999722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122517, 36.625793, 31.010006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121114, 0.187462, -0.974777,
		-0.622215, 0.750799, 0.221697,
		0.773421, 0.633371, 0.025709,
		39.354542, 36.815804, 31.017719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567265, 37.077393, 30.606289>,  <38.813148, 36.372444, 30.999722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567265, 37.077393, 30.606289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966270, 37.049320, 30.603737>,  <39.205673, 37.032478, 30.602205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966270, 37.049320, 30.603737>,  <38.567265, 37.077393, 30.606289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966270, 37.049320, 30.603737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009015, -0.037267, -0.999265,
		0.069892, 0.996838, -0.037807,
		0.997514, -0.070181, -0.006382,
		39.265526, 37.028267, 30.601822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852936, 37.551979, 30.054525>,  <38.567265, 37.077393, 30.606289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852936, 37.551979, 30.054525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152824, 37.294098, 30.114223>,  <39.332756, 37.139370, 30.150043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152824, 37.294098, 30.114223>,  <38.852936, 37.551979, 30.054525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152824, 37.294098, 30.114223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141833, -0.063744, -0.987836,
		0.646379, 0.761767, 0.043651,
		0.749719, -0.644707, 0.149247,
		39.377739, 37.100685, 30.158998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413734, 37.809158, 29.614426>,  <38.852936, 37.551979, 30.054525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413734, 37.809158, 29.614426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518566, 37.429108, 29.682047>,  <39.581467, 37.201077, 29.722620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518566, 37.429108, 29.682047>,  <39.413734, 37.809158, 29.614426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518566, 37.429108, 29.682047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254056, -0.101072, -0.961894,
		0.931005, 0.295041, 0.214896,
		0.262079, -0.950124, 0.169055,
		39.597191, 37.144070, 29.732763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066441, 37.682331, 29.189939>,  <39.413734, 37.809158, 29.614426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066441, 37.682331, 29.189939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942524, 37.313606, 29.283136>,  <39.868176, 37.092369, 29.339054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942524, 37.313606, 29.283136>,  <40.066441, 37.682331, 29.189939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942524, 37.313606, 29.283136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043458, -0.258519, -0.965028,
		0.949811, -0.288831, 0.120147,
		-0.309790, -0.921816, 0.232993,
		39.849586, 37.037060, 29.353035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544880, 37.239700, 28.839569>,  <40.066441, 37.682331, 29.189939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544880, 37.239700, 28.839569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227657, 37.004921, 28.904739>,  <40.037323, 36.864052, 28.943842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227657, 37.004921, 28.904739>,  <40.544880, 37.239700, 28.839569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227657, 37.004921, 28.904739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046886, -0.325489, -0.944383,
		0.607339, -0.741311, 0.285651,
		-0.793058, -0.586953, 0.162925,
		39.989738, 36.828835, 28.953617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704281, 36.716122, 28.559855>,  <40.544880, 37.239700, 28.839569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704281, 36.716122, 28.559855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305313, 36.687511, 28.562416>,  <40.065933, 36.670345, 28.563953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305313, 36.687511, 28.562416>,  <40.704281, 36.716122, 28.559855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305313, 36.687511, 28.562416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025060, -0.430244, -0.902365,
		0.067293, -0.899875, 0.430925,
		-0.997418, -0.071522, 0.006402,
		40.006088, 36.666054, 28.564337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529980, 36.065495, 28.285471>,  <40.704281, 36.716122, 28.559855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529980, 36.065495, 28.285471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202614, 36.287960, 28.227665>,  <40.006195, 36.421440, 28.192982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202614, 36.287960, 28.227665>,  <40.529980, 36.065495, 28.285471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202614, 36.287960, 28.227665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186710, -0.495220, -0.848467,
		-0.543456, -0.667412, 0.509134,
		-0.818410, 0.556165, -0.144518,
		39.957088, 36.454807, 28.184311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037037, 35.656921, 28.022964>,  <40.529980, 36.065495, 28.285471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037037, 35.656921, 28.022964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882492, 36.011143, 27.919798>,  <39.789764, 36.223675, 27.857899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882492, 36.011143, 27.919798>,  <40.037037, 35.656921, 28.022964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882492, 36.011143, 27.919798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278870, -0.378699, -0.882507,
		-0.879180, -0.269040, 0.393268,
		-0.386360, 0.885553, -0.257917,
		39.766582, 36.276810, 27.842422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361065, 35.486362, 27.791849>,  <40.037037, 35.656921, 28.022964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361065, 35.486362, 27.791849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477367, 35.832363, 27.628275>,  <39.547150, 36.039963, 27.530130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477367, 35.832363, 27.628275>,  <39.361065, 35.486362, 27.791849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477367, 35.832363, 27.628275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361263, -0.296515, -0.884064,
		-0.885974, 0.404782, 0.226280,
		0.290758, 0.865003, -0.408937,
		39.564594, 36.091866, 27.505594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823467, 35.595871, 27.408989>,  <39.361065, 35.486362, 27.791849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823467, 35.595871, 27.408989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103115, 35.837345, 27.255733>,  <39.270905, 35.982227, 27.163780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103115, 35.837345, 27.255733>,  <38.823467, 35.595871, 27.408989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103115, 35.837345, 27.255733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237956, -0.308867, -0.920857,
		-0.674243, 0.734963, -0.072287,
		0.699123, 0.603681, -0.383140,
		39.312851, 36.018448, 27.140791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549545, 35.813812, 26.748116>,  <38.823467, 35.595871, 27.408989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549545, 35.813812, 26.748116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926132, 35.934978, 26.688942>,  <39.152084, 36.007679, 26.653439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926132, 35.934978, 26.688942>,  <38.549545, 35.813812, 26.748116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926132, 35.934978, 26.688942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057504, -0.288092, -0.955874,
		-0.332165, 0.908431, -0.253811,
		0.941467, 0.302913, -0.147932,
		39.208572, 36.025852, 26.644562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661129, 36.154980, 26.017962>,  <38.549545, 35.813812, 26.748116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661129, 36.154980, 26.017962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018135, 36.029995, 26.148062>,  <39.232338, 35.955006, 26.226122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018135, 36.029995, 26.148062>,  <38.661129, 36.154980, 26.017962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018135, 36.029995, 26.148062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170840, -0.433193, -0.884962,
		0.417411, 0.845407, -0.333250,
		0.892514, -0.312461, 0.325248,
		39.285889, 35.936256, 26.245636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164337, 36.478550, 25.549492>,  <38.661129, 36.154980, 26.017962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164337, 36.478550, 25.549492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360382, 36.167797, 25.707605>,  <39.478008, 35.981346, 25.802473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360382, 36.167797, 25.707605>,  <39.164337, 36.478550, 25.549492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360382, 36.167797, 25.707605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185892, -0.349894, -0.918160,
		0.851609, 0.523478, -0.027070,
		0.490108, -0.776881, 0.395283,
		39.507416, 35.934734, 25.826191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770054, 36.385921, 25.089245>,  <39.164337, 36.478550, 25.549492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770054, 36.385921, 25.089245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702976, 36.047527, 25.291702>,  <39.662731, 35.844490, 25.413177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702976, 36.047527, 25.291702>,  <39.770054, 36.385921, 25.089245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702976, 36.047527, 25.291702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207019, -0.532187, -0.820927,
		0.963859, -0.032880, 0.264378,
		-0.167690, -0.845988, 0.506146,
		39.652668, 35.793732, 25.443546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313339, 36.039207, 24.916420>,  <39.770054, 36.385921, 25.089245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313339, 36.039207, 24.916420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052109, 35.767452, 25.050238>,  <39.895370, 35.604401, 25.130527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052109, 35.767452, 25.050238>,  <40.313339, 36.039207, 24.916420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052109, 35.767452, 25.050238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101389, -0.516229, -0.850428,
		0.750472, -0.521478, 0.406020,
		-0.653079, -0.679389, 0.334543,
		39.856186, 35.563637, 25.150600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646690, 35.385098, 24.881203>,  <40.313339, 36.039207, 24.916420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646690, 35.385098, 24.881203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248260, 35.350792, 24.872490>,  <40.009201, 35.330208, 24.867262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248260, 35.350792, 24.872490>,  <40.646690, 35.385098, 24.881203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248260, 35.350792, 24.872490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060720, -0.483448, -0.873265,
		0.064361, -0.871162, 0.486759,
		-0.996077, -0.085760, -0.021782,
		39.949436, 35.325066, 24.865955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452950, 34.761517, 24.533886>,  <40.646690, 35.385098, 24.881203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452950, 34.761517, 24.533886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089745, 34.928955, 24.527077>,  <39.871822, 35.029419, 24.522991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089745, 34.928955, 24.527077>,  <40.452950, 34.761517, 24.533886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089745, 34.928955, 24.527077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141047, -0.343713, -0.928422,
		-0.394485, -0.840618, 0.371137,
		-0.908013, 0.418596, -0.017023,
		39.817341, 35.054535, 24.521971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884342, 34.216240, 24.485365>,  <40.452950, 34.761517, 24.533886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884342, 34.216240, 24.485365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721474, 34.553131, 24.344017>,  <39.623753, 34.755264, 24.259209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721474, 34.553131, 24.344017>,  <39.884342, 34.216240, 24.485365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721474, 34.553131, 24.344017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087722, -0.421167, -0.902731,
		-0.909129, -0.336569, 0.245369,
		-0.407172, 0.842223, -0.353370,
		39.599323, 34.805798, 24.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542908, 33.937561, 23.905457>,  <39.884342, 34.216240, 24.485365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542908, 33.937561, 23.905457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744152, 33.606922, 24.006353>,  <39.864899, 33.408539, 24.066891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744152, 33.606922, 24.006353>,  <39.542908, 33.937561, 23.905457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744152, 33.606922, 24.006353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046099, 0.265786, 0.962929,
		-0.862993, -0.496085, 0.095614,
		0.503108, -0.826594, 0.252241,
		39.895084, 33.358944, 24.082026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324471, 33.606674, 24.570572>,  <39.542908, 33.937561, 23.905457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324471, 33.606674, 24.570572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673260, 33.417614, 24.519548>,  <39.882534, 33.304176, 24.488934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673260, 33.417614, 24.519548>,  <39.324471, 33.606674, 24.570572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673260, 33.417614, 24.519548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157909, 0.024910, 0.987139,
		-0.463396, -0.880897, 0.096357,
		0.871968, -0.472652, -0.127559,
		39.934849, 33.275818, 24.481281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379719, 32.958389, 25.133934>,  <39.324471, 33.606674, 24.570572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379719, 32.958389, 25.133934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747875, 33.066307, 25.020731>,  <39.968769, 33.131058, 24.952808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747875, 33.066307, 25.020731>,  <39.379719, 32.958389, 25.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747875, 33.066307, 25.020731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286953, 0.025578, 0.957603,
		0.265595, -0.962578, -0.053876,
		0.920390, 0.269795, -0.283008,
		40.023991, 33.147243, 24.935829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739155, 32.596245, 25.505390>,  <39.379719, 32.958389, 25.133934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739155, 32.596245, 25.505390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010502, 32.856575, 25.369017>,  <40.173309, 33.012775, 25.287191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010502, 32.856575, 25.369017>,  <39.739155, 32.596245, 25.505390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010502, 32.856575, 25.369017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432813, 0.020986, 0.901240,
		0.593707, -0.758935, -0.267451,
		0.678370, 0.650828, -0.340936,
		40.214012, 33.051823, 25.266735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307877, 32.485569, 25.929483>,  <39.739155, 32.596245, 25.505390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307877, 32.485569, 25.929483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383816, 32.846333, 25.774296>,  <40.429379, 33.062790, 25.681183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383816, 32.846333, 25.774296>,  <40.307877, 32.485569, 25.929483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383816, 32.846333, 25.774296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447621, 0.272189, 0.851792,
		0.873838, -0.335375, -0.352037,
		0.189849, 0.901907, -0.387970,
		40.440769, 33.116905, 25.657906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074406, 32.601124, 25.960100>,  <40.307877, 32.485569, 25.929483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074406, 32.601124, 25.960100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875195, 32.945621, 25.919655>,  <40.755669, 33.152321, 25.895388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875195, 32.945621, 25.919655>,  <41.074406, 32.601124, 25.960100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875195, 32.945621, 25.919655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360325, 0.311594, 0.879246,
		0.788753, 0.401457, -0.465512,
		-0.498030, 0.861244, -0.101116,
		40.725784, 33.203995, 25.889320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492092, 33.183567, 26.145878>,  <41.074406, 32.601124, 25.960100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492092, 33.183567, 26.145878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119362, 33.323502, 26.184465>,  <40.895721, 33.407463, 26.207617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119362, 33.323502, 26.184465>,  <41.492092, 33.183567, 26.145878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119362, 33.323502, 26.184465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232063, 0.370071, 0.899552,
		0.278999, 0.860616, -0.426028,
		-0.931829, 0.349840, 0.096468,
		40.839813, 33.428455, 26.213406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658081, 33.915245, 26.474815>,  <41.492092, 33.183567, 26.145878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658081, 33.915245, 26.474815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271244, 33.823948, 26.519779>,  <41.039143, 33.769169, 26.546757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271244, 33.823948, 26.519779>,  <41.658081, 33.915245, 26.474815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271244, 33.823948, 26.519779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014655, 0.491054, 0.871006,
		-0.254004, 0.840696, -0.478240,
		-0.967092, -0.228247, 0.112410,
		40.981117, 33.755474, 26.553501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347511, 34.426090, 26.823994>,  <41.658081, 33.915245, 26.474815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347511, 34.426090, 26.823994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103863, 34.118744, 26.902567>,  <40.957676, 33.934334, 26.949711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103863, 34.118744, 26.902567>,  <41.347511, 34.426090, 26.823994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103863, 34.118744, 26.902567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212450, 0.396717, 0.893018,
		-0.764094, 0.502222, -0.404887,
		-0.609119, -0.768368, 0.196432,
		40.921127, 33.888233, 26.961496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874275, 34.746632, 27.280529>,  <41.347511, 34.426090, 26.823994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874275, 34.746632, 27.280529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843933, 34.349888, 27.321445>,  <40.825726, 34.111843, 27.345995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843933, 34.349888, 27.321445>,  <40.874275, 34.746632, 27.280529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843933, 34.349888, 27.321445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120420, 0.110950, 0.986503,
		-0.989820, 0.062518, -0.127856,
		-0.075859, -0.991857, 0.102292,
		40.821175, 34.052330, 27.352133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331760, 34.591873, 27.870037>,  <40.874275, 34.746632, 27.280529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331760, 34.591873, 27.870037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552067, 34.262974, 27.812681>,  <40.684250, 34.065632, 27.778269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552067, 34.262974, 27.812681>,  <40.331760, 34.591873, 27.870037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552067, 34.262974, 27.812681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103562, -0.103144, 0.989261,
		-0.828210, -0.559701, 0.028346,
		0.550766, -0.822251, -0.143388,
		40.717297, 34.016300, 27.769665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044178, 34.067787, 28.305079>,  <40.331760, 34.591873, 27.870037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044178, 34.067787, 28.305079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415840, 33.942268, 28.226904>,  <40.638840, 33.866955, 28.179998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415840, 33.942268, 28.226904>,  <40.044178, 34.067787, 28.305079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415840, 33.942268, 28.226904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119909, -0.244262, 0.962267,
		-0.349697, -0.917532, -0.189331,
		0.929158, -0.313800, -0.195438,
		40.694588, 33.848129, 28.168272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074303, 33.471329, 28.684275>,  <40.044178, 34.067787, 28.305079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074303, 33.471329, 28.684275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455704, 33.573139, 28.619715>,  <40.684544, 33.634224, 28.580978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455704, 33.573139, 28.619715>,  <40.074303, 33.471329, 28.684275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455704, 33.573139, 28.619715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214323, -0.196125, 0.956870,
		0.211895, -0.946969, -0.241557,
		0.953502, 0.254527, -0.161400,
		40.741753, 33.649498, 28.571295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459740, 32.952553, 29.030153>,  <40.074303, 33.471329, 28.684275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459740, 32.952553, 29.030153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722778, 33.253082, 29.007963>,  <40.880600, 33.433399, 28.994650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722778, 33.253082, 29.007963>,  <40.459740, 32.952553, 29.030153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722778, 33.253082, 29.007963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319357, -0.211307, 0.923775,
		0.682334, -0.625186, -0.378896,
		0.657595, 0.751326, -0.055476,
		40.920055, 33.478481, 28.991320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802166, 32.845528, 29.531839>,  <40.459740, 32.952553, 29.030153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802166, 32.845528, 29.531839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918987, 33.222862, 29.468830>,  <40.989079, 33.449265, 29.431025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918987, 33.222862, 29.468830>,  <40.802166, 32.845528, 29.531839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918987, 33.222862, 29.468830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166698, 0.111977, 0.979629,
		0.941764, -0.312360, -0.124550,
		0.292050, 0.943341, -0.157525,
		41.006603, 33.505863, 29.421572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478470, 32.932468, 29.846989>,  <40.802166, 32.845528, 29.531839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478470, 32.932468, 29.846989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306946, 33.293350, 29.828409>,  <41.204033, 33.509880, 29.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306946, 33.293350, 29.828409>,  <41.478470, 32.932468, 29.846989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306946, 33.293350, 29.828409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118060, 0.106940, 0.987231,
		0.895648, 0.417848, -0.152371,
		-0.428807, 0.902201, -0.046450,
		41.178303, 33.564011, 29.814474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868042, 33.450382, 30.239864>,  <41.478470, 32.932468, 29.846989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868042, 33.450382, 30.239864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503342, 33.613056, 30.216795>,  <41.284523, 33.710659, 30.202953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503342, 33.613056, 30.216795>,  <41.868042, 33.450382, 30.239864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503342, 33.613056, 30.216795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099783, 0.355492, 0.929338,
		0.398450, 0.841566, -0.364699,
		-0.911746, 0.406685, -0.057672,
		41.229816, 33.735062, 30.199493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870991, 34.084709, 30.652082>,  <41.868042, 33.450382, 30.239864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870991, 34.084709, 30.652082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485779, 33.983662, 30.614651>,  <41.254650, 33.923035, 30.592192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485779, 33.983662, 30.614651>,  <41.870991, 34.084709, 30.652082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485779, 33.983662, 30.614651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147827, 0.205146, 0.967503,
		-0.225211, 0.945568, -0.234906,
		-0.963030, -0.252618, -0.093579,
		41.196869, 33.907875, 30.586576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533535, 34.617531, 30.944410>,  <41.870991, 34.084709, 30.652082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533535, 34.617531, 30.944410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287220, 34.302811, 30.961153>,  <41.139431, 34.113979, 30.971199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287220, 34.302811, 30.961153>,  <41.533535, 34.617531, 30.944410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287220, 34.302811, 30.961153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066893, 0.105137, 0.992205,
		-0.785065, 0.608191, -0.117373,
		-0.615791, -0.786797, 0.041855,
		41.102482, 34.066772, 30.973709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014385, 34.884232, 31.397795>,  <41.533535, 34.617531, 30.944410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014385, 34.884232, 31.397795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939327, 34.491451, 31.388308>,  <40.894291, 34.255783, 31.382616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939327, 34.491451, 31.388308>,  <41.014385, 34.884232, 31.397795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939327, 34.491451, 31.388308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262269, 0.026821, 0.964622,
		-0.946574, 0.187230, -0.262568,
		-0.187649, -0.981950, -0.023717,
		40.883034, 34.196865, 31.381193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349216, 34.787525, 31.682674>,  <41.014385, 34.884232, 31.397795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349216, 34.787525, 31.682674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539909, 34.437618, 31.717323>,  <40.654324, 34.227673, 31.738113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539909, 34.437618, 31.717323>,  <40.349216, 34.787525, 31.682674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539909, 34.437618, 31.717323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250510, -0.040740, 0.967256,
		-0.842600, -0.482819, -0.238561,
		0.476729, -0.874772, 0.086623,
		40.682930, 34.175186, 31.743311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851601, 34.332298, 32.097378>,  <40.349216, 34.787525, 31.682674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851601, 34.332298, 32.097378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219669, 34.181812, 32.140720>,  <40.440510, 34.091518, 32.166725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219669, 34.181812, 32.140720>,  <39.851601, 34.332298, 32.097378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219669, 34.181812, 32.140720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104136, 0.031609, 0.994061,
		-0.377408, -0.925992, -0.010092,
		0.920173, -0.376218, 0.108359,
		40.495720, 34.068947, 32.173229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812767, 33.894501, 32.718140>,  <39.851601, 34.332298, 32.097378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812767, 33.894501, 32.718140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206772, 33.952099, 32.680153>,  <40.443176, 33.986660, 32.657360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206772, 33.952099, 32.680153>,  <39.812767, 33.894501, 32.718140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206772, 33.952099, 32.680153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093814, 0.014771, 0.995480,
		0.144753, -0.989467, 0.001040,
		0.985010, 0.144001, -0.094964,
		40.502274, 33.995300, 32.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051853, 33.549259, 33.262188>,  <39.812767, 33.894501, 32.718140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051853, 33.549259, 33.262188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380672, 33.768963, 33.202110>,  <40.577965, 33.900784, 33.166065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380672, 33.768963, 33.202110>,  <40.051853, 33.549259, 33.262188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380672, 33.768963, 33.202110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091618, 0.132750, 0.986906,
		0.562001, -0.825043, 0.058805,
		0.822047, 0.549255, -0.150194,
		40.627285, 33.933739, 33.157051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631012, 33.219845, 33.646530>,  <40.051853, 33.549259, 33.262188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631012, 33.219845, 33.646530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729961, 33.600994, 33.576279>,  <40.789330, 33.829681, 33.534130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729961, 33.600994, 33.576279>,  <40.631012, 33.219845, 33.646530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729961, 33.600994, 33.576279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263530, 0.108258, 0.958557,
		0.932394, -0.283402, -0.224330,
		0.247372, 0.952871, -0.175624,
		40.804173, 33.886856, 33.523590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239830, 33.299782, 33.914642>,  <40.631012, 33.219845, 33.646530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239830, 33.299782, 33.914642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144112, 33.685886, 33.872684>,  <41.086681, 33.917549, 33.847511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144112, 33.685886, 33.872684>,  <41.239830, 33.299782, 33.914642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144112, 33.685886, 33.872684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432775, 0.202744, 0.878408,
		0.869161, 0.164809, -0.466259,
		-0.239301, 0.965263, -0.104892,
		41.072323, 33.975464, 33.841217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848454, 33.592365, 34.051270>,  <41.239830, 33.299782, 33.914642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848454, 33.592365, 34.051270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553661, 33.857933, 34.101959>,  <41.376785, 34.017273, 34.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553661, 33.857933, 34.101959>,  <41.848454, 33.592365, 34.051270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553661, 33.857933, 34.101959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443337, 0.333302, 0.832083,
		0.510202, 0.669414, -0.539980,
		-0.736985, 0.663923, 0.126724,
		41.332565, 34.057110, 34.139977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151276, 34.211792, 34.212872>,  <41.848454, 33.592365, 34.051270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151276, 34.211792, 34.212872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780571, 34.248741, 34.358517>,  <41.558147, 34.270912, 34.445904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780571, 34.248741, 34.358517>,  <42.151276, 34.211792, 34.212872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780571, 34.248741, 34.358517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372988, 0.341486, 0.862709,
		-0.044649, 0.935337, -0.350930,
		-0.926761, 0.092373, 0.364116,
		41.502544, 34.276455, 34.467751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182762, 34.795647, 34.686756>,  <42.151276, 34.211792, 34.212872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182762, 34.795647, 34.686756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870548, 34.574829, 34.804066>,  <41.683220, 34.442341, 34.874451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870548, 34.574829, 34.804066>,  <42.182762, 34.795647, 34.686756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870548, 34.574829, 34.804066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215747, 0.202432, 0.955235,
		-0.586698, 0.808871, -0.038904,
		-0.780538, -0.552041, 0.293278,
		41.636387, 34.409218, 34.892048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810490, 35.238445, 35.079346>,  <42.182762, 34.795647, 34.686756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810490, 35.238445, 35.079346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728161, 34.861877, 35.186199>,  <41.678764, 34.635937, 35.250313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728161, 34.861877, 35.186199>,  <41.810490, 35.238445, 35.079346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728161, 34.861877, 35.186199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289774, 0.202105, 0.935513,
		-0.934703, 0.269953, 0.231203,
		-0.205818, -0.941424, 0.267133,
		41.666416, 34.579449, 35.266338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506771, 35.269936, 35.795929>,  <41.810490, 35.238445, 35.079346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506771, 35.269936, 35.795929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604088, 34.884571, 35.750927>,  <41.662476, 34.653355, 35.723927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604088, 34.884571, 35.750927>,  <41.506771, 35.269936, 35.795929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604088, 34.884571, 35.750927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257795, -0.047597, 0.965027,
		-0.935068, -0.263784, 0.236782,
		0.243288, -0.963407, -0.112508,
		41.677074, 34.595551, 35.717175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366554, 35.036617, 36.466877>,  <41.506771, 35.269936, 35.795929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366554, 35.036617, 36.466877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568310, 34.742012, 36.286591>,  <41.689365, 34.565250, 36.178421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568310, 34.742012, 36.286591>,  <41.366554, 35.036617, 36.466877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568310, 34.742012, 36.286591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326849, -0.320285, 0.889150,
		-0.799224, -0.595794, 0.079179,
		0.504391, -0.736510, -0.450714,
		41.719627, 34.521061, 36.151375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158600, 34.502369, 36.808102>,  <41.366554, 35.036617, 36.466877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158600, 34.502369, 36.808102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500839, 34.414948, 36.620403>,  <41.706181, 34.362495, 36.507786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500839, 34.414948, 36.620403>,  <41.158600, 34.502369, 36.808102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500839, 34.414948, 36.620403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366605, -0.384145, 0.847369,
		-0.365446, -0.897034, -0.248554,
		0.855599, -0.218546, -0.469241,
		41.757519, 34.349380, 36.479630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175316, 33.818378, 36.899315>,  <41.158600, 34.502369, 36.808102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175316, 33.818378, 36.899315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542397, 33.966248, 36.841122>,  <41.762646, 34.054970, 36.806206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542397, 33.966248, 36.841122>,  <41.175316, 33.818378, 36.899315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542397, 33.966248, 36.841122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259773, -0.281326, 0.923783,
		0.300573, -0.885548, -0.354205,
		0.917701, 0.369676, -0.145482,
		41.817707, 34.077148, 36.797478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676544, 33.332260, 37.182755>,  <41.175316, 33.818378, 36.899315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676544, 33.332260, 37.182755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855202, 33.689308, 37.158268>,  <41.962395, 33.903538, 37.143578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855202, 33.689308, 37.158268>,  <41.676544, 33.332260, 37.182755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855202, 33.689308, 37.158268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514003, -0.199988, 0.834150,
		0.732335, -0.404028, -0.548131,
		0.446640, 0.892618, -0.061214,
		41.989193, 33.957092, 37.139904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334480, 33.185791, 37.395966>,  <41.676544, 33.332260, 37.182755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334480, 33.185791, 37.395966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342197, 33.585617, 37.404812>,  <42.346828, 33.825512, 37.410122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342197, 33.585617, 37.404812>,  <42.334480, 33.185791, 37.395966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342197, 33.585617, 37.404812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491140, -0.028745, 0.870606,
		0.870867, -0.005935, -0.491483,
		0.019295, 0.999569, 0.022118,
		42.347984, 33.885487, 37.411446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031136, 33.473713, 37.501431>,  <42.334480, 33.185791, 37.395966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031136, 33.473713, 37.501431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780064, 33.758579, 37.627182>,  <42.629421, 33.929501, 37.702633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780064, 33.758579, 37.627182>,  <43.031136, 33.473713, 37.501431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780064, 33.758579, 37.627182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398577, -0.052891, 0.915608,
		0.668694, 0.700015, -0.250655,
		-0.627682, 0.712167, 0.314378,
		42.591759, 33.972229, 37.721497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355247, 33.871326, 37.892071>,  <43.031136, 33.473713, 37.501431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355247, 33.871326, 37.892071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001976, 34.014385, 38.013451>,  <42.790012, 34.100220, 38.086281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001976, 34.014385, 38.013451>,  <43.355247, 33.871326, 37.892071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001976, 34.014385, 38.013451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310697, -0.038575, 0.949726,
		0.351368, 0.933061, -0.077050,
		-0.883180, 0.357643, 0.303453,
		42.737022, 34.121677, 38.104488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462269, 34.572628, 38.250656>,  <43.355247, 33.871326, 37.892071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462269, 34.572628, 38.250656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150631, 34.351871, 38.369602>,  <42.963646, 34.219418, 38.440971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150631, 34.351871, 38.369602>,  <43.462269, 34.572628, 38.250656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150631, 34.351871, 38.369602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425696, -0.117526, 0.897202,
		-0.460206, 0.825595, 0.326501,
		-0.779098, -0.551888, 0.297366,
		42.916901, 34.186306, 38.458813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258480, 34.838844, 38.907238>,  <43.462269, 34.572628, 38.250656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258480, 34.838844, 38.907238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114155, 34.465900, 38.898125>,  <43.027557, 34.242134, 38.892658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114155, 34.465900, 38.898125>,  <43.258480, 34.838844, 38.907238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114155, 34.465900, 38.898125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335841, -0.152681, 0.929462,
		-0.870071, 0.327713, 0.368214,
		-0.360816, -0.932359, -0.022784,
		43.005909, 34.186192, 38.891289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938770, 34.790730, 39.579300>,  <43.258480, 34.838844, 38.907238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938770, 34.790730, 39.579300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044388, 34.426598, 39.451813>,  <43.107758, 34.208118, 39.375320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044388, 34.426598, 39.451813>,  <42.938770, 34.790730, 39.579300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044388, 34.426598, 39.451813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071387, -0.311096, 0.947694,
		-0.961865, -0.272985, -0.017157,
		0.264044, -0.910329, -0.318720,
		43.123600, 34.153500, 39.356197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534557, 34.327267, 39.921429>,  <42.938770, 34.790730, 39.579300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534557, 34.327267, 39.921429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886692, 34.158695, 39.834339>,  <43.097973, 34.057552, 39.782085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886692, 34.158695, 39.834339>,  <42.534557, 34.327267, 39.921429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886692, 34.158695, 39.834339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043966, -0.384531, 0.922064,
		-0.472305, -0.821301, -0.319989,
		0.880338, -0.421427, -0.217726,
		43.150795, 34.032269, 39.769020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413860, 33.674267, 40.069294>,  <42.534557, 34.327267, 39.921429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413860, 33.674267, 40.069294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811874, 33.700657, 40.099079>,  <43.050682, 33.716492, 40.116951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811874, 33.700657, 40.099079>,  <42.413860, 33.674267, 40.069294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811874, 33.700657, 40.099079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029088, -0.522807, 0.851955,
		0.095136, -0.849894, -0.518294,
		0.995039, 0.065976, 0.074460,
		43.110386, 33.720451, 40.121418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595833, 33.066433, 40.429504>,  <42.413860, 33.674267, 40.069294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595833, 33.066433, 40.429504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918972, 33.295090, 40.486916>,  <43.112858, 33.432285, 40.521362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918972, 33.295090, 40.486916>,  <42.595833, 33.066433, 40.429504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918972, 33.295090, 40.486916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006246, -0.251814, 0.967755,
		0.589354, -0.780905, -0.206999,
		0.807850, 0.571644, 0.143530,
		43.161327, 33.466583, 40.529976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040359, 32.691929, 40.790310>,  <42.595833, 33.066433, 40.429504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040359, 32.691929, 40.790310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194328, 33.057728, 40.840157>,  <43.286709, 33.277206, 40.870064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194328, 33.057728, 40.840157>,  <43.040359, 32.691929, 40.790310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194328, 33.057728, 40.840157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142034, -0.192104, 0.971042,
		0.911954, -0.356079, -0.203835,
		0.384925, 0.914497, 0.124615,
		43.309807, 33.332077, 40.877541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609543, 32.577766, 41.271667>,  <43.040359, 32.691929, 40.790310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609543, 32.577766, 41.271667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611313, 32.971409, 41.342674>,  <43.612373, 33.207596, 41.385277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611313, 32.971409, 41.342674>,  <43.609543, 32.577766, 41.271667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611313, 32.971409, 41.342674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083932, -0.177255, 0.980579,
		0.996462, 0.010565, -0.083381,
		0.004420, 0.984108, 0.177515,
		43.612640, 33.266640, 41.395927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074352, 32.684425, 41.869167>,  <43.609543, 32.577766, 41.271667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074352, 32.684425, 41.869167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842159, 33.009396, 41.891083>,  <43.702843, 33.204376, 41.904232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842159, 33.009396, 41.891083>,  <44.074352, 32.684425, 41.869167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842159, 33.009396, 41.891083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110448, -0.145219, 0.983215,
		0.806744, 0.564692, 0.174028,
		-0.580487, 0.812425, 0.054785,
		43.668015, 33.253124, 41.907516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281704, 33.055584, 42.407703>,  <44.074352, 32.684425, 41.869167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281704, 33.055584, 42.407703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914459, 33.211140, 42.377159>,  <43.694111, 33.304474, 42.358833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914459, 33.211140, 42.377159>,  <44.281704, 33.055584, 42.407703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914459, 33.211140, 42.377159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144431, -0.148911, 0.978246,
		0.369056, 0.909172, 0.192884,
		-0.918116, 0.388886, -0.076356,
		43.639023, 33.327805, 42.354252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191959, 33.595268, 42.998268>,  <44.281704, 33.055584, 42.407703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191959, 33.595268, 42.998268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827412, 33.467300, 42.894691>,  <43.608681, 33.390522, 42.832546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827412, 33.467300, 42.894691>,  <44.191959, 33.595268, 42.998268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827412, 33.467300, 42.894691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271109, -0.006749, 0.962525,
		-0.309674, 0.947422, -0.080581,
		-0.911374, -0.319915, -0.258945,
		43.554001, 33.371326, 42.817009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744061, 33.999695, 43.556965>,  <44.191959, 33.595268, 42.998268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744061, 33.999695, 43.556965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540440, 33.701721, 43.384480>,  <43.418266, 33.522938, 43.280991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540440, 33.701721, 43.384480>,  <43.744061, 33.999695, 43.556965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540440, 33.701721, 43.384480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377786, -0.256776, 0.889575,
		-0.773396, 0.615747, -0.150712,
		-0.509054, -0.744931, -0.431210,
		43.387722, 33.478241, 43.255116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220207, 34.040688, 43.924339>,  <43.744061, 33.999695, 43.556965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220207, 34.040688, 43.924339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202393, 33.675049, 43.763123>,  <43.191704, 33.455666, 43.666393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202393, 33.675049, 43.763123>,  <43.220207, 34.040688, 43.924339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202393, 33.675049, 43.763123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308026, -0.371218, 0.875966,
		-0.950335, 0.163156, -0.265035,
		-0.044534, -0.914099, -0.403038,
		43.189034, 33.400818, 43.642212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562904, 33.778954, 44.072521>,  <43.220207, 34.040688, 43.924339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562904, 33.778954, 44.072521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786743, 33.453003, 44.012085>,  <42.921047, 33.257435, 43.975822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786743, 33.453003, 44.012085>,  <42.562904, 33.778954, 44.072521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786743, 33.453003, 44.012085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515682, -0.485081, 0.706235,
		-0.648784, -0.317295, -0.691667,
		0.559599, -0.814875, -0.151089,
		42.954624, 33.208542, 43.966759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112801, 33.236633, 44.148449>,  <42.562904, 33.778954, 44.072521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112801, 33.236633, 44.148449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481781, 33.093212, 44.205742>,  <42.703171, 33.007160, 44.240116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481781, 33.093212, 44.205742>,  <42.112801, 33.236633, 44.148449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481781, 33.093212, 44.205742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297280, -0.422841, 0.856055,
		-0.246377, -0.832252, -0.496643,
		0.922455, -0.358555, 0.143234,
		42.758518, 32.985645, 44.248711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087894, 32.500641, 44.324112>,  <42.112801, 33.236633, 44.148449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087894, 32.500641, 44.324112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405293, 32.696701, 44.468399>,  <42.595730, 32.814339, 44.554970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405293, 32.696701, 44.468399>,  <42.087894, 32.500641, 44.324112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405293, 32.696701, 44.468399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189771, -0.363883, 0.911908,
		0.578233, -0.792048, -0.195722,
		0.793494, 0.490153, 0.360717,
		42.643341, 32.843746, 44.576614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375423, 32.049446, 44.754799>,  <42.087894, 32.500641, 44.324112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375423, 32.049446, 44.754799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494068, 32.405594, 44.892937>,  <42.565254, 32.619282, 44.975819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494068, 32.405594, 44.892937>,  <42.375423, 32.049446, 44.754799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494068, 32.405594, 44.892937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141532, -0.316641, 0.937927,
		0.944453, -0.327076, 0.032097,
		0.296610, 0.890371, 0.345344,
		42.583050, 32.672707, 44.996540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978996, 31.929209, 45.224041>,  <42.375423, 32.049446, 44.754799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978996, 31.929209, 45.224041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766361, 32.256210, 45.312672>,  <42.638779, 32.452412, 45.365849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766361, 32.256210, 45.312672>,  <42.978996, 31.929209, 45.224041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766361, 32.256210, 45.312672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102825, -0.321955, 0.941155,
		0.840736, 0.477527, 0.255208,
		-0.531592, 0.817504, 0.221578,
		42.606884, 32.501461, 45.379147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125412, 31.981228, 45.819828>,  <42.978996, 31.929209, 45.224041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125412, 31.981228, 45.819828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809193, 32.222565, 45.777843>,  <42.619461, 32.367367, 45.752651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809193, 32.222565, 45.777843>,  <43.125412, 31.981228, 45.819828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809193, 32.222565, 45.777843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249266, -0.160457, 0.955050,
		0.559377, 0.781175, 0.277240,
		-0.790546, 0.603340, -0.104964,
		42.572029, 32.403568, 45.746353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138126, 32.386326, 46.343815>,  <43.125412, 31.981228, 45.819828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138126, 32.386326, 46.343815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757854, 32.429943, 46.227669>,  <42.529690, 32.456112, 46.157982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757854, 32.429943, 46.227669>,  <43.138126, 32.386326, 46.343815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757854, 32.429943, 46.227669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307246, -0.203046, 0.929716,
		0.042418, 0.973079, 0.226535,
		-0.950684, 0.109039, -0.290362,
		42.472649, 32.462654, 46.140560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734913, 32.807552, 46.874760>,  <43.138126, 32.386326, 46.343815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734913, 32.807552, 46.874760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436455, 32.625359, 46.680523>,  <42.257378, 32.516041, 46.563980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436455, 32.625359, 46.680523>,  <42.734913, 32.807552, 46.874760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436455, 32.625359, 46.680523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340543, -0.365621, 0.866229,
		-0.572094, 0.811700, 0.117696,
		-0.746150, -0.455483, -0.485588,
		42.212608, 32.488712, 46.534847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120296, 32.953300, 47.230644>,  <42.734913, 32.807552, 46.874760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120296, 32.953300, 47.230644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066387, 32.610332, 47.031979>,  <42.034042, 32.404552, 46.912781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066387, 32.610332, 47.031979>,  <42.120296, 32.953300, 47.230644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066387, 32.610332, 47.031979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271369, -0.450133, 0.850729,
		-0.952993, 0.249433, -0.172011,
		-0.134772, -0.857417, -0.496662,
		42.025955, 32.353107, 46.882980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853405, 32.222351, 47.430740>,  <42.120296, 32.953300, 47.230644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853405, 32.222351, 47.430740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705391, 32.535767, 47.231083>,  <41.616585, 32.723816, 47.111290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705391, 32.535767, 47.231083>,  <41.853405, 32.222351, 47.430740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705391, 32.535767, 47.231083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915112, 0.400032, -0.050445,
		0.160148, -0.475439, -0.865049,
		-0.370031, 0.783538, -0.499144,
		41.594383, 32.770828, 47.081341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119026, 32.066818, 48.202057>,  <41.853405, 32.222351, 47.430740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119026, 32.066818, 48.202057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952713, 32.325016, 48.458328>,  <41.852924, 32.479935, 48.612091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952713, 32.325016, 48.458328>,  <42.119026, 32.066818, 48.202057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952713, 32.325016, 48.458328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697390, 0.225877, -0.680166,
		-0.583756, -0.729602, 0.356245,
		-0.415783, 0.645493, 0.640674,
		41.827976, 32.518665, 48.650532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504803, 31.640760, 48.104427>,  <42.119026, 32.066818, 48.202057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504803, 31.640760, 48.104427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292740, 31.525234, 47.785549>,  <41.165504, 31.455919, 47.594223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292740, 31.525234, 47.785549>,  <41.504803, 31.640760, 48.104427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292740, 31.525234, 47.785549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421618, 0.725929, -0.543382,
		0.735642, -0.624191, -0.263091,
		-0.530160, -0.288811, -0.797194,
		41.133694, 31.438589, 47.546391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894245, 31.305498, 47.521763>,  <41.504803, 31.640760, 48.104427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894245, 31.305498, 47.521763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569736, 31.487221, 47.374554>,  <41.375031, 31.596254, 47.286228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569736, 31.487221, 47.374554>,  <41.894245, 31.305498, 47.521763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569736, 31.487221, 47.374554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584603, 0.621212, -0.521858,
		-0.008464, -0.638516, -0.769562,
		-0.811275, 0.454306, -0.368020,
		41.326355, 31.623512, 47.264149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112587, 31.266750, 46.795864>,  <41.894245, 31.305498, 47.521763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112587, 31.266750, 46.795864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822811, 31.531504, 46.872906>,  <41.648945, 31.690355, 46.919128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822811, 31.531504, 46.872906>,  <42.112587, 31.266750, 46.795864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822811, 31.531504, 46.872906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461836, 0.673446, -0.577216,
		-0.511757, -0.329209, -0.793553,
		-0.724440, 0.661885, 0.192600,
		41.605480, 31.730070, 46.930687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632141, 31.394535, 46.238781>,  <42.112587, 31.266750, 46.795864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632141, 31.394535, 46.238781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662430, 31.735620, 46.445526>,  <41.680603, 31.940271, 46.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662430, 31.735620, 46.445526>,  <41.632141, 31.394535, 46.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662430, 31.735620, 46.445526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275492, 0.480280, -0.832728,
		-0.958316, 0.205449, -0.198547,
		0.075725, 0.852715, 0.516859,
		41.685146, 31.991434, 46.600582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388721, 31.994511, 45.720699>,  <41.632141, 31.394535, 46.238781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388721, 31.994511, 45.720699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598438, 32.188141, 46.000923>,  <41.724270, 32.304321, 46.169056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598438, 32.188141, 46.000923>,  <41.388721, 31.994511, 45.720699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598438, 32.188141, 46.000923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447268, 0.543526, -0.710303,
		-0.724614, 0.685747, 0.068456,
		0.524296, 0.484078, 0.700559,
		41.755726, 32.333363, 46.211090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284981, 32.725636, 45.637749>,  <41.388721, 31.994511, 45.720699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284981, 32.725636, 45.637749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637394, 32.648346, 45.810471>,  <41.848843, 32.601974, 45.914104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637394, 32.648346, 45.810471>,  <41.284981, 32.725636, 45.637749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637394, 32.648346, 45.810471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457592, 0.579601, -0.674294,
		-0.119984, 0.791662, 0.599062,
		0.881030, -0.193222, 0.431800,
		41.901703, 32.590378, 45.940010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598694, 33.321075, 45.767841>,  <41.284981, 32.725636, 45.637749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598694, 33.321075, 45.767841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903896, 33.064053, 45.739708>,  <42.087017, 32.909840, 45.722828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903896, 33.064053, 45.739708>,  <41.598694, 33.321075, 45.767841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903896, 33.064053, 45.739708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424879, 0.580552, -0.694577,
		0.487134, 0.500084, 0.715972,
		0.763006, -0.642554, -0.070332,
		42.132797, 32.871288, 45.718609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282135, 33.764919, 45.818974>,  <41.598694, 33.321075, 45.767841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282135, 33.764919, 45.818974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361275, 33.403946, 45.665886>,  <42.408760, 33.187363, 45.574032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361275, 33.403946, 45.665886>,  <42.282135, 33.764919, 45.818974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361275, 33.403946, 45.665886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588123, 0.421642, -0.690166,
		0.784198, -0.088538, 0.614162,
		0.197851, -0.902429, -0.382722,
		42.420631, 33.133217, 45.551071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010513, 33.778114, 45.521370>,  <42.282135, 33.764919, 45.818974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010513, 33.778114, 45.521370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882069, 33.439598, 45.351345>,  <42.805000, 33.236488, 45.249329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882069, 33.439598, 45.351345>,  <43.010513, 33.778114, 45.521370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882069, 33.439598, 45.351345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413423, 0.278541, -0.866889,
		0.852037, -0.454100, 0.260433,
		-0.321113, -0.846291, -0.425062,
		42.785736, 33.185711, 45.223827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611183, 33.658684, 45.186707>,  <43.010513, 33.778114, 45.521370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611183, 33.658684, 45.186707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325085, 33.436504, 45.017048>,  <43.153427, 33.303196, 44.915253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325085, 33.436504, 45.017048>,  <43.611183, 33.658684, 45.186707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325085, 33.436504, 45.017048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344202, 0.248214, -0.905491,
		0.608233, -0.793642, 0.013652,
		-0.715247, -0.555448, -0.424145,
		43.110512, 33.269871, 44.889805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812790, 32.946091, 44.716736>,  <43.611183, 33.658684, 45.186707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812790, 32.946091, 44.716736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441917, 32.801777, 44.676418>,  <43.219395, 32.715187, 44.652225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441917, 32.801777, 44.676418>,  <43.812790, 32.946091, 44.716736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441917, 32.801777, 44.676418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079527, 0.073364, -0.994129,
		0.366063, -0.929759, -0.039330,
		-0.927186, -0.360786, -0.100797,
		43.163761, 32.693542, 44.646179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898434, 32.315769, 44.324062>,  <43.812790, 32.946091, 44.716736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898434, 32.315769, 44.324062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559002, 32.526157, 44.301231>,  <43.355343, 32.652390, 44.287533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559002, 32.526157, 44.301231>,  <43.898434, 32.315769, 44.324062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559002, 32.526157, 44.301231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188969, 0.200561, -0.961284,
		-0.494163, -0.826515, -0.269585,
		-0.848584, 0.525973, -0.057076,
		43.304428, 32.683949, 44.284107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749462, 32.227146, 43.660503>,  <43.898434, 32.315769, 44.324062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749462, 32.227146, 43.660503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502666, 32.528427, 43.751732>,  <43.354591, 32.709194, 43.806469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502666, 32.528427, 43.751732>,  <43.749462, 32.227146, 43.660503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502666, 32.528427, 43.751732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103145, 0.209908, -0.972265,
		-0.780186, -0.623397, -0.051821,
		-0.616985, 0.753203, 0.228068,
		43.317570, 32.754387, 43.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219517, 32.243088, 43.113155>,  <43.749462, 32.227146, 43.660503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219517, 32.243088, 43.113155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219669, 32.610046, 43.272343>,  <43.219761, 32.830223, 43.367855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219669, 32.610046, 43.272343>,  <43.219517, 32.243088, 43.113155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219669, 32.610046, 43.272343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186818, 0.391026, -0.901220,
		-0.982395, -0.073999, 0.171537,
		0.000386, 0.917400, 0.397966,
		43.219784, 32.885265, 43.391731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498127, 32.645767, 43.010689>,  <43.219517, 32.243088, 43.113155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498127, 32.645767, 43.010689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798367, 32.906448, 43.054306>,  <42.978512, 33.062855, 43.080475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798367, 32.906448, 43.054306>,  <42.498127, 32.645767, 43.010689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798367, 32.906448, 43.054306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220557, 0.402673, -0.888375,
		-0.622863, 0.642762, 0.445982,
		0.750598, 0.651700, 0.109045,
		43.023544, 33.101959, 43.087021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310925, 33.316437, 42.730125>,  <42.498127, 32.645767, 43.010689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310925, 33.316437, 42.730125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709641, 33.344154, 42.746132>,  <42.948872, 33.360786, 42.755737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709641, 33.344154, 42.746132>,  <42.310925, 33.316437, 42.730125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709641, 33.344154, 42.746132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010634, 0.380940, -0.924539,
		-0.079310, 0.921999, 0.378982,
		0.996793, 0.069295, 0.040017,
		43.008678, 33.364944, 42.758137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410938, 33.741238, 42.196548>,  <42.310925, 33.316437, 42.730125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410938, 33.741238, 42.196548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785610, 33.612274, 42.251225>,  <43.010414, 33.534897, 42.284031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785610, 33.612274, 42.251225>,  <42.410938, 33.741238, 42.196548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785610, 33.612274, 42.251225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221432, 0.242914, -0.944437,
		0.271288, 0.914903, 0.298924,
		0.936681, -0.322406, 0.136689,
		43.066616, 33.515553, 42.292233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814201, 34.220814, 41.826431>,  <42.410938, 33.741238, 42.196548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814201, 34.220814, 41.826431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103718, 33.946537, 41.857300>,  <43.277428, 33.781971, 41.875820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103718, 33.946537, 41.857300>,  <42.814201, 34.220814, 41.826431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103718, 33.946537, 41.857300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334996, 0.251410, -0.908059,
		0.603244, 0.683098, 0.411671,
		0.723792, -0.685689, 0.077173,
		43.320854, 33.740829, 41.880451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486828, 34.419636, 41.665257>,  <42.814201, 34.220814, 41.826431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486828, 34.419636, 41.665257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463978, 34.035233, 41.557030>,  <43.450268, 33.804592, 41.492092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463978, 34.035233, 41.557030>,  <43.486828, 34.419636, 41.665257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463978, 34.035233, 41.557030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196691, 0.254864, -0.946761,
		0.978799, -0.107306, 0.174461,
		-0.057129, -0.961004, -0.270567,
		43.446838, 33.746933, 41.475861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939423, 34.410660, 41.090382>,  <43.486828, 34.419636, 41.665257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939423, 34.410660, 41.090382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709805, 34.087353, 41.037971>,  <43.572033, 33.893368, 41.006527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709805, 34.087353, 41.037971>,  <43.939423, 34.410660, 41.090382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709805, 34.087353, 41.037971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085345, 0.218204, -0.972164,
		0.814363, -0.546886, -0.194241,
		-0.574047, -0.808272, -0.131023,
		43.537590, 33.844872, 40.998665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280598, 34.112579, 40.612259>,  <43.939423, 34.410660, 41.090382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280598, 34.112579, 40.612259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919258, 33.943951, 40.580673>,  <43.702454, 33.842773, 40.561722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919258, 33.943951, 40.580673>,  <44.280598, 34.112579, 40.612259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919258, 33.943951, 40.580673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031571, 0.118247, -0.992482,
		0.427743, -0.899051, -0.093509,
		-0.903349, -0.421575, -0.078963,
		43.648254, 33.817478, 40.556984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390308, 33.659458, 40.106728>,  <44.280598, 34.112579, 40.612259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390308, 33.659458, 40.106728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990948, 33.680031, 40.097282>,  <43.751331, 33.692375, 40.091614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990948, 33.680031, 40.097282>,  <44.390308, 33.659458, 40.106728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990948, 33.680031, 40.097282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021392, -0.043360, -0.998830,
		-0.052426, -0.997733, 0.042190,
		-0.998396, 0.051462, -0.023617,
		43.691429, 33.695461, 40.090199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194569, 33.375496, 39.440590>,  <44.390308, 33.659458, 40.106728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194569, 33.375496, 39.440590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860596, 33.570770, 39.542225>,  <43.660213, 33.687935, 39.603207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860596, 33.570770, 39.542225>,  <44.194569, 33.375496, 39.440590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860596, 33.570770, 39.542225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184699, 0.186353, -0.964966,
		-0.518433, -0.852612, -0.065425,
		-0.834933, 0.488186, 0.254088,
		43.610115, 33.717228, 39.618450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633823, 33.031475, 39.113155>,  <44.194569, 33.375496, 39.440590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633823, 33.031475, 39.113155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497986, 33.403893, 39.166569>,  <43.416485, 33.627342, 39.198616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497986, 33.403893, 39.166569>,  <43.633823, 33.031475, 39.113155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497986, 33.403893, 39.166569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093030, 0.108023, -0.989786,
		-0.935962, -0.348543, 0.049931,
		-0.339589, 0.931047, 0.133531,
		43.396111, 33.683208, 39.206627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951202, 32.314541, 38.871616>,  <43.633823, 33.031475, 39.113155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951202, 32.314541, 38.871616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570152, 32.413616, 38.801018>,  <43.341522, 32.473061, 38.758659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570152, 32.413616, 38.801018>,  <43.951202, 32.314541, 38.871616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570152, 32.413616, 38.801018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024798, -0.515117, -0.856761,
		-0.303122, -0.820552, 0.484574,
		-0.952629, 0.247687, -0.176492,
		43.284363, 32.487923, 38.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952187, 32.310081, 38.147118>,  <43.951202, 32.314541, 38.871616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952187, 32.310081, 38.147118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858597, 32.046955, 37.860748>,  <43.802444, 31.889080, 37.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858597, 32.046955, 37.860748>,  <43.952187, 32.310081, 38.147118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858597, 32.046955, 37.860748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331165, 0.746247, -0.577447,
		0.914104, 0.101980, -0.392445,
		-0.233973, -0.657811, -0.715920,
		43.788406, 31.849611, 37.645973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736107, 32.736298, 37.617741>,  <43.952187, 32.310081, 38.147118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736107, 32.736298, 37.617741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664661, 32.380684, 37.449116>,  <43.621796, 32.167316, 37.347942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664661, 32.380684, 37.449116>,  <43.736107, 32.736298, 37.617741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664661, 32.380684, 37.449116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567241, 0.443126, -0.694174,
		0.803950, 0.115139, -0.583444,
		-0.178612, -0.889034, -0.421563,
		43.611076, 32.113972, 37.322647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973026, 32.755505, 36.964806>,  <43.736107, 32.736298, 37.617741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973026, 32.755505, 36.964806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651291, 32.520191, 36.998207>,  <43.458252, 32.379005, 37.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651291, 32.520191, 36.998207>,  <43.973026, 32.755505, 36.964806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651291, 32.520191, 36.998207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500682, 0.595369, -0.628373,
		0.319943, -0.547231, -0.773418,
		-0.804334, -0.588280, 0.083504,
		43.409992, 32.343708, 37.023258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880585, 32.597061, 36.319794>,  <43.973026, 32.755505, 36.964806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880585, 32.597061, 36.319794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553368, 32.610928, 36.549442>,  <43.357037, 32.619247, 36.687229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553368, 32.610928, 36.549442>,  <43.880585, 32.597061, 36.319794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553368, 32.610928, 36.549442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432803, 0.620311, -0.654138,
		-0.378808, -0.783590, -0.492435,
		-0.818038, 0.034666, 0.574119,
		43.307957, 32.621326, 36.721680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371609, 32.129158, 36.342979>,  <43.880585, 32.597061, 36.319794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371609, 32.129158, 36.342979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441944, 32.054424, 35.956367>,  <43.484146, 32.009586, 35.724400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441944, 32.054424, 35.956367>,  <43.371609, 32.129158, 36.342979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441944, 32.054424, 35.956367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896548, -0.375087, 0.235610,
		-0.406551, -0.907967, 0.101549,
		0.175836, -0.186831, -0.966528,
		43.494694, 31.998375, 35.666409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672405, 31.414713, 36.316181>,  <43.371609, 32.129158, 36.342979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672405, 31.414713, 36.316181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775425, 31.684547, 36.039455>,  <43.837234, 31.846447, 35.873421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775425, 31.684547, 36.039455>,  <43.672405, 31.414713, 36.316181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775425, 31.684547, 36.039455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966199, -0.171326, 0.192633,
		0.011422, -0.718041, -0.695907,
		0.257545, 0.674585, -0.691814,
		43.852688, 31.886923, 35.831913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164497, 31.178370, 36.064411>,  <43.672405, 31.414713, 36.316181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164497, 31.178370, 36.064411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206215, 31.576187, 36.063282>,  <44.231243, 31.814877, 36.062603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206215, 31.576187, 36.063282>,  <44.164497, 31.178370, 36.064411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206215, 31.576187, 36.063282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994547, -0.104293, -0.000272,
		-0.000565, -0.002778, -0.999996,
		0.104292, 0.994543, -0.002822,
		44.237503, 31.874550, 36.062435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597782, 31.359987, 35.537045>,  <44.164497, 31.178370, 36.064411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597782, 31.359987, 35.537045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604389, 31.620752, 35.840290>,  <44.608353, 31.777210, 36.022240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604389, 31.620752, 35.840290>,  <44.597782, 31.359987, 35.537045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604389, 31.620752, 35.840290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995924, 0.056510, -0.070294,
		-0.088666, 0.756187, -0.648321,
		0.016518, 0.651911, 0.758116,
		44.609344, 31.816326, 36.067726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897480, 31.984940, 35.419262>,  <44.597782, 31.359987, 35.537045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897480, 31.984940, 35.419262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953121, 31.912947, 35.808777>,  <44.986507, 31.869751, 36.042484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953121, 31.912947, 35.808777>,  <44.897480, 31.984940, 35.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953121, 31.912947, 35.808777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983991, 0.135754, -0.115469,
		-0.111414, 0.974258, 0.195982,
		0.139102, -0.179980, 0.973785,
		44.994850, 31.858953, 36.100914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207676, 32.569206, 35.712048>,  <44.897480, 31.984940, 35.419262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207676, 32.569206, 35.712048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304104, 32.245384, 35.926151>,  <45.361961, 32.051090, 36.054611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304104, 32.245384, 35.926151>,  <45.207676, 32.569206, 35.712048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304104, 32.245384, 35.926151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963955, 0.263714, -0.035292,
		-0.112584, 0.524472, 0.843952,
		0.241072, -0.809558, 0.535257,
		45.376427, 32.002518, 36.086727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529816, 32.776222, 36.472748>,  <45.207676, 32.569206, 35.712048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529816, 32.776222, 36.472748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653011, 32.436726, 36.300800>,  <45.726929, 32.233028, 36.197632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653011, 32.436726, 36.300800>,  <45.529816, 32.776222, 36.472748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653011, 32.436726, 36.300800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911227, 0.393054, -0.123183,
		0.273511, -0.353767, 0.894450,
		0.307989, -0.848739, -0.429867,
		45.745407, 32.182102, 36.171841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127052, 32.598938, 36.806679>,  <45.529816, 32.776222, 36.472748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127052, 32.598938, 36.806679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104942, 32.480572, 36.425232>,  <46.091679, 32.409550, 36.196365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104942, 32.480572, 36.425232>,  <46.127052, 32.598938, 36.806679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104942, 32.480572, 36.425232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910508, 0.377032, -0.169772,
		0.409781, -0.877655, 0.248597,
		-0.055272, -0.295919, -0.953613,
		46.088360, 32.391796, 36.139149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642838, 32.146439, 36.711517>,  <46.127052, 32.598938, 36.806679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642838, 32.146439, 36.711517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553738, 32.313057, 36.358955>,  <46.500278, 32.413029, 36.147419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553738, 32.313057, 36.358955>,  <46.642838, 32.146439, 36.711517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553738, 32.313057, 36.358955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967251, 0.207284, -0.146486,
		0.121684, -0.885170, -0.449073,
		-0.222751, 0.416542, -0.881405,
		46.486912, 32.438019, 36.094536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113213, 31.876431, 36.103886>,  <46.642838, 32.146439, 36.711517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113213, 31.876431, 36.103886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973537, 32.243862, 36.029831>,  <46.889732, 32.464321, 35.985397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973537, 32.243862, 36.029831>,  <47.113213, 31.876431, 36.103886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973537, 32.243862, 36.029831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890051, 0.263345, -0.372102,
		-0.293050, -0.294716, -0.909541,
		-0.349188, 0.918581, -0.185139,
		46.868782, 32.519436, 35.974289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146828, 32.025394, 35.405415>,  <47.113213, 31.876431, 36.103886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.146828, 32.025394, 35.405415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166317, 32.360065, 35.623627>,  <47.178009, 32.560867, 35.754555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166317, 32.360065, 35.623627>,  <47.146828, 32.025394, 35.405415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166317, 32.360065, 35.623627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689586, 0.366939, -0.624362,
		-0.722563, 0.406610, -0.559080,
		0.048723, 0.836675, 0.545529,
		47.180935, 32.611069, 35.787285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010098, 32.620876, 34.979145>,  <47.146828, 32.025394, 35.405415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010098, 32.620876, 34.979145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251957, 32.716888, 35.282932>,  <47.397072, 32.774494, 35.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251957, 32.716888, 35.282932>,  <47.010098, 32.620876, 34.979145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.251957, 32.716888, 35.282932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727680, 0.221233, -0.649260,
		-0.323862, 0.945220, -0.040898,
		0.604645, 0.240031, 0.759466,
		47.433350, 32.788898, 35.510773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.964085, 33.162071, 35.488571>,  <47.010098, 32.620876, 34.979145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.964085, 33.162071, 35.488571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041405, 33.449902, 35.755360>,  <47.087795, 33.622601, 35.915432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041405, 33.449902, 35.755360>,  <46.964085, 33.162071, 35.488571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041405, 33.449902, 35.755360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816018, 0.259527, -0.516489,
		-0.544748, 0.644099, -0.537017,
		0.193300, 0.719571, 0.666973,
		47.099396, 33.665771, 35.955452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875961, 33.907066, 35.186977>,  <46.964085, 33.162071, 35.488571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875961, 33.907066, 35.186977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151608, 33.827347, 35.465660>,  <47.316994, 33.779514, 35.632870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151608, 33.827347, 35.465660>,  <46.875961, 33.907066, 35.186977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.151608, 33.827347, 35.465660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722674, 0.259976, -0.640433,
		-0.053488, 0.944824, 0.323182,
		0.689116, -0.199300, 0.696706,
		47.358341, 33.767555, 35.674671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174274, 34.638859, 35.227222>,  <46.875961, 33.907066, 35.186977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174274, 34.638859, 35.227222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417191, 34.323254, 35.264431>,  <47.562939, 34.133888, 35.286755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417191, 34.323254, 35.264431>,  <47.174274, 34.638859, 35.227222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417191, 34.323254, 35.264431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438277, 0.235052, -0.867562,
		0.662655, 0.567631, 0.488552,
		0.607290, -0.789015, 0.093021,
		47.599377, 34.086548, 35.292336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.545029, 35.312649, 35.472294>,  <47.174274, 34.638859, 35.227222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.545029, 35.312649, 35.472294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710117, 35.226334, 35.118324>,  <47.809170, 35.174545, 34.905941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710117, 35.226334, 35.118324>,  <47.545029, 35.312649, 35.472294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710117, 35.226334, 35.118324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461001, -0.887399, 0.001378,
		-0.785580, 0.407383, -0.465729,
		0.412726, -0.215784, -0.884926,
		47.833935, 35.161598, 34.852848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.689892, 31.069418, 30.513075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343018, 31.266600, 30.541342>,  <37.134895, 31.384909, 30.558302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343018, 31.266600, 30.541342>,  <37.689892, 31.069418, 30.513075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343018, 31.266600, 30.541342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004030, -0.134951, 0.990844,
		0.497975, 0.859527, 0.115040,
		-0.867182, 0.492952, 0.070666,
		37.082863, 31.414486, 30.562542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747337, 31.430941, 31.052940>,  <37.689892, 31.069418, 30.513075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747337, 31.430941, 31.052940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349918, 31.426588, 31.007776>,  <37.111469, 31.423977, 30.980679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349918, 31.426588, 31.007776>,  <37.747337, 31.430941, 31.052940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349918, 31.426588, 31.007776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112660, -0.021266, 0.993406,
		-0.013209, 0.999715, 0.019903,
		-0.993546, -0.010880, -0.112909,
		37.051853, 31.423325, 30.973904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427208, 32.022594, 31.450399>,  <37.747337, 31.430941, 31.052940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427208, 32.022594, 31.450399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110016, 31.781424, 31.415388>,  <36.919701, 31.636721, 31.394382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110016, 31.781424, 31.415388>,  <37.427208, 32.022594, 31.450399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110016, 31.781424, 31.415388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255204, 0.198266, 0.946341,
		-0.553226, 0.772764, -0.311091,
		-0.792977, -0.602932, -0.087526,
		36.872124, 31.600544, 31.389130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748924, 32.449688, 31.727674>,  <37.427208, 32.022594, 31.450399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748924, 32.449688, 31.727674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701931, 32.052658, 31.740261>,  <36.673737, 31.814440, 31.747812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701931, 32.052658, 31.740261>,  <36.748924, 32.449688, 31.727674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701931, 32.052658, 31.740261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438293, 0.080255, 0.895242,
		-0.891122, 0.091383, -0.444468,
		-0.117481, -0.992577, 0.031465,
		36.666687, 31.754885, 31.749701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153412, 32.499348, 32.078125>,  <36.748924, 32.449688, 31.727674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153412, 32.499348, 32.078125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288021, 32.125214, 32.121769>,  <36.368786, 31.900734, 32.147957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288021, 32.125214, 32.121769>,  <36.153412, 32.499348, 32.078125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288021, 32.125214, 32.121769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243626, 0.025444, 0.969536,
		-0.909614, -0.352854, -0.219309,
		0.336524, -0.935332, 0.109108,
		36.388977, 31.844614, 32.154503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595669, 32.128811, 32.400784>,  <36.153412, 32.499348, 32.078125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595669, 32.128811, 32.400784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924347, 31.904800, 32.443104>,  <36.121552, 31.770393, 32.468494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924347, 31.904800, 32.443104>,  <35.595669, 32.128811, 32.400784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924347, 31.904800, 32.443104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224502, -0.147426, 0.963257,
		-0.523853, -0.815251, -0.246866,
		0.821691, -0.560027, 0.105796,
		36.170853, 31.736792, 32.474842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455711, 31.675667, 32.992798>,  <35.595669, 32.128811, 32.400784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455711, 31.675667, 32.992798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854156, 31.679232, 32.957733>,  <36.093224, 31.681370, 32.936695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854156, 31.679232, 32.957733>,  <35.455711, 31.675667, 32.992798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854156, 31.679232, 32.957733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088114, -0.110124, 0.990004,
		-0.000829, -0.993878, -0.110481,
		0.996110, 0.008914, -0.087666,
		36.152988, 31.681906, 32.931435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634426, 31.153345, 33.408890>,  <35.455711, 31.675667, 32.992798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634426, 31.153345, 33.408890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956367, 31.389296, 33.382812>,  <36.149532, 31.530867, 33.367165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956367, 31.389296, 33.382812>,  <35.634426, 31.153345, 33.408890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956367, 31.389296, 33.382812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219638, -0.194015, 0.956095,
		0.551330, -0.783839, -0.285714,
		0.804857, 0.589877, -0.065194,
		36.197826, 31.566259, 33.363255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147781, 30.805910, 33.761612>,  <35.634426, 31.153345, 33.408890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147781, 30.805910, 33.761612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261875, 31.188429, 33.735886>,  <36.330334, 31.417940, 33.720451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261875, 31.188429, 33.735886>,  <36.147781, 30.805910, 33.761612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261875, 31.188429, 33.735886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327005, -0.034020, 0.944410,
		0.900948, -0.290413, -0.322417,
		0.285237, 0.956296, -0.064316,
		36.347446, 31.475317, 33.716591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858215, 30.774471, 34.085217>,  <36.147781, 30.805910, 33.761612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858215, 30.774471, 34.085217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746342, 31.158461, 34.091312>,  <36.679218, 31.388853, 34.094971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746342, 31.158461, 34.091312>,  <36.858215, 30.774471, 34.085217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746342, 31.158461, 34.091312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270795, 0.063649, 0.960531,
		0.921113, 0.272769, -0.277757,
		-0.279682, 0.959972, 0.015237,
		36.662437, 31.446453, 34.095882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413567, 31.102102, 34.284653>,  <36.858215, 30.774471, 34.085217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413567, 31.102102, 34.284653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136063, 31.379976, 34.360657>,  <36.969559, 31.546701, 34.406258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136063, 31.379976, 34.360657>,  <37.413567, 31.102102, 34.284653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136063, 31.379976, 34.360657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358075, 0.103800, 0.927905,
		0.624881, 0.711783, -0.320763,
		-0.693763, 0.694687, 0.190009,
		36.927933, 31.588383, 34.417660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760048, 31.667606, 34.508404>,  <37.413567, 31.102102, 34.284653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760048, 31.667606, 34.508404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383854, 31.747843, 34.618134>,  <37.158138, 31.795984, 34.683971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383854, 31.747843, 34.618134>,  <37.760048, 31.667606, 34.508404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383854, 31.747843, 34.618134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324877, 0.293794, 0.898966,
		0.099730, 0.934584, -0.341476,
		-0.940483, 0.200592, 0.274325,
		37.101707, 31.808020, 34.700432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712967, 32.429775, 34.705914>,  <37.760048, 31.667606, 34.508404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712967, 32.429775, 34.705914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443607, 32.205570, 34.898731>,  <37.281990, 32.071049, 35.014420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443607, 32.205570, 34.898731>,  <37.712967, 32.429775, 34.705914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443607, 32.205570, 34.898731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393718, 0.279968, 0.875559,
		-0.625716, 0.779388, 0.032153,
		-0.673398, -0.560511, 0.482040,
		37.241589, 32.037418, 35.043343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486008, 32.818062, 35.236835>,  <37.712967, 32.429775, 34.705914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486008, 32.818062, 35.236835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382439, 32.460243, 35.382572>,  <37.320297, 32.245552, 35.470013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382439, 32.460243, 35.382572>,  <37.486008, 32.818062, 35.236835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382439, 32.460243, 35.382572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361130, 0.260193, 0.895480,
		-0.895849, 0.363431, 0.255679,
		-0.258919, -0.894549, 0.364339,
		37.304764, 32.191879, 35.491875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204441, 32.949539, 35.903229>,  <37.486008, 32.818062, 35.236835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204441, 32.949539, 35.903229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301086, 32.561520, 35.893230>,  <37.359074, 32.328709, 35.887234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301086, 32.561520, 35.893230>,  <37.204441, 32.949539, 35.903229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301086, 32.561520, 35.893230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375912, 0.069824, 0.924021,
		-0.894602, -0.232654, 0.381524,
		0.241616, -0.970050, -0.024993,
		37.373569, 32.270504, 35.885731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924034, 32.756927, 36.549126>,  <37.204441, 32.949539, 35.903229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924034, 32.756927, 36.549126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196686, 32.480190, 36.453854>,  <37.360279, 32.314148, 36.396690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196686, 32.480190, 36.453854>,  <36.924034, 32.756927, 36.549126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196686, 32.480190, 36.453854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427691, 0.112608, 0.896883,
		-0.593682, -0.713212, 0.372652,
		0.681632, -0.691844, -0.238181,
		37.401176, 32.272636, 36.382401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998421, 32.290562, 37.158630>,  <36.924034, 32.756927, 36.549126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998421, 32.290562, 37.158630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339947, 32.213432, 36.965214>,  <37.544865, 32.167156, 36.849163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339947, 32.213432, 36.965214>,  <36.998421, 32.290562, 37.158630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339947, 32.213432, 36.965214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520133, 0.277882, 0.807616,
		-0.021361, -0.941063, 0.337555,
		0.853818, -0.192825, -0.483542,
		37.596092, 32.155586, 36.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499508, 31.890667, 37.663811>,  <36.998421, 32.290562, 37.158630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499508, 31.890667, 37.663811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743324, 32.043854, 37.386166>,  <37.889614, 32.135765, 37.219578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743324, 32.043854, 37.386166>,  <37.499508, 31.890667, 37.663811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743324, 32.043854, 37.386166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635300, 0.287750, 0.716655,
		0.474187, -0.877802, -0.067904,
		0.609542, 0.382968, -0.694114,
		37.926186, 32.158745, 37.177933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056385, 31.719936, 37.899151>,  <37.499508, 31.890667, 37.663811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056385, 31.719936, 37.899151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.148582, 32.018776, 37.649765>,  <38.203903, 32.198082, 37.500134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.148582, 32.018776, 37.649765>,  <38.056385, 31.719936, 37.899151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148582, 32.018776, 37.649765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674900, 0.338822, 0.655522,
		0.700986, -0.571873, -0.426122,
		0.230496, 0.747101, -0.623467,
		38.217731, 32.242905, 37.462727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753376, 31.718870, 37.997322>,  <38.056385, 31.719936, 37.899151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753376, 31.718870, 37.997322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672516, 32.078533, 37.842068>,  <38.624001, 32.294331, 37.748913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672516, 32.078533, 37.842068>,  <38.753376, 31.718870, 37.997322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672516, 32.078533, 37.842068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681249, 0.413827, 0.603860,
		0.703587, -0.142349, -0.696205,
		-0.202150, 0.899157, -0.388138,
		38.611870, 32.348282, 37.725628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422321, 32.044262, 37.659283>,  <38.753376, 31.718870, 37.997322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422321, 32.044262, 37.659283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.198128, 32.369083, 37.724308>,  <39.063610, 32.563976, 37.763321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.198128, 32.369083, 37.724308>,  <39.422321, 32.044262, 37.659283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198128, 32.369083, 37.724308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809249, 0.495319, 0.315873,
		0.175986, 0.308594, -0.934772,
		-0.560487, 0.812052, 0.162560,
		39.029984, 32.612698, 37.773075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811832, 32.634296, 37.387020>,  <39.422321, 32.044262, 37.659283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811832, 32.634296, 37.387020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539604, 32.759583, 37.651966>,  <39.376266, 32.834755, 37.810932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539604, 32.759583, 37.651966>,  <39.811832, 32.634296, 37.387020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539604, 32.759583, 37.651966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636933, 0.699736, 0.323551,
		-0.362141, 0.642080, -0.675712,
		-0.680566, 0.313213, 0.662365,
		39.335434, 32.853546, 37.850677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222733, 32.475525, 37.962082>,  <39.811832, 32.634296, 37.387020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222733, 32.475525, 37.962082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564583, 32.299751, 38.072723>,  <40.769695, 32.194286, 38.139111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564583, 32.299751, 38.072723>,  <40.222733, 32.475525, 37.962082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564583, 32.299751, 38.072723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134089, -0.327869, -0.935159,
		0.501628, 0.836303, -0.221284,
		0.854628, -0.439431, 0.276607,
		40.820972, 32.167923, 38.155704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858967, 32.734138, 37.543743>,  <40.222733, 32.475525, 37.962082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858967, 32.734138, 37.543743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935829, 32.362427, 37.669926>,  <40.981949, 32.139400, 37.745636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935829, 32.362427, 37.669926>,  <40.858967, 32.734138, 37.543743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935829, 32.362427, 37.669926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228112, -0.270343, -0.935350,
		0.954484, 0.251696, 0.160031,
		0.192160, -0.929282, 0.315453,
		40.993477, 32.083641, 37.764561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312447, 32.531021, 37.075012>,  <40.858967, 32.734138, 37.543743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312447, 32.531021, 37.075012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.208813, 32.176922, 37.229527>,  <41.146633, 31.964462, 37.322235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.208813, 32.176922, 37.229527>,  <41.312447, 32.531021, 37.075012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208813, 32.176922, 37.229527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022940, -0.405465, -0.913823,
		0.965581, -0.227899, 0.125358,
		-0.259088, -0.885246, 0.386282,
		41.131084, 31.911348, 37.345409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837364, 32.155693, 36.894356>,  <41.312447, 32.531021, 37.075012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837364, 32.155693, 36.894356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.507236, 31.936907, 36.950474>,  <41.309162, 31.805635, 36.984146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.507236, 31.936907, 36.950474>,  <41.837364, 32.155693, 36.894356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507236, 31.936907, 36.950474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009890, -0.262426, -0.964902,
		0.564585, -0.794961, 0.221994,
		-0.825315, -0.546965, 0.140300,
		41.259644, 31.772818, 36.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022278, 31.488022, 36.660419>,  <41.837364, 32.155693, 36.894356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022278, 31.488022, 36.660419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.625923, 31.533514, 36.631577>,  <41.388111, 31.560808, 36.614269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.625923, 31.533514, 36.631577>,  <42.022278, 31.488022, 36.660419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625923, 31.533514, 36.631577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025338, -0.368474, -0.929293,
		-0.132258, -0.922656, 0.362236,
		-0.990892, 0.113728, -0.072112,
		41.328655, 31.567633, 36.609943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825050, 30.911428, 36.140121>,  <42.022278, 31.488022, 36.660419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825050, 30.911428, 36.140121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.513889, 31.156796, 36.194653>,  <41.327194, 31.304016, 36.227371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.513889, 31.156796, 36.194653>,  <41.825050, 30.911428, 36.140121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513889, 31.156796, 36.194653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180415, -0.010212, -0.983537,
		-0.601929, -0.789691, 0.118614,
		-0.777902, 0.613419, 0.136325,
		41.280518, 31.340822, 36.235550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163971, 30.600239, 35.861259>,  <41.825050, 30.911428, 36.140121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163971, 30.600239, 35.861259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.144203, 30.999594, 35.872425>,  <41.132343, 31.239206, 35.879124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.144203, 30.999594, 35.872425>,  <41.163971, 30.600239, 35.861259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144203, 30.999594, 35.872425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234296, 0.015578, -0.972041,
		-0.970909, -0.054576, 0.233148,
		-0.049418, 0.998388, 0.027912,
		41.129379, 31.299110, 35.880798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520325, 30.764694, 35.398312>,  <41.163971, 30.600239, 35.861259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520325, 30.764694, 35.398312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.693054, 31.120428, 35.458454>,  <40.796692, 31.333870, 35.494541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.693054, 31.120428, 35.458454>,  <40.520325, 30.764694, 35.398312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693054, 31.120428, 35.458454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276779, 0.289316, -0.916346,
		-0.858441, 0.354084, 0.371084,
		0.431824, 0.889337, 0.150358,
		40.822601, 31.387230, 35.503563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977386, 31.281397, 35.226841>,  <40.520325, 30.764694, 35.398312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977386, 31.281397, 35.226841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.333073, 31.459877, 35.186443>,  <40.546486, 31.566965, 35.162205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.333073, 31.459877, 35.186443>,  <39.977386, 31.281397, 35.226841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333073, 31.459877, 35.186443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246646, 0.281652, -0.927275,
		-0.385307, 0.849456, 0.360503,
		0.889216, 0.446202, -0.100993,
		40.599838, 31.593737, 35.156147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847950, 31.862415, 34.900681>,  <39.977386, 31.281397, 35.226841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847950, 31.862415, 34.900681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.237190, 31.793564, 34.839439>,  <40.470734, 31.752253, 34.802692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.237190, 31.793564, 34.839439>,  <39.847950, 31.862415, 34.900681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237190, 31.793564, 34.839439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128167, 0.147741, -0.980686,
		0.191423, 0.973933, 0.121707,
		0.973103, -0.172128, -0.153107,
		40.529121, 31.741926, 34.793507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873501, 32.263512, 34.398716>,  <39.847950, 31.862415, 34.900681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873501, 32.263512, 34.398716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179611, 32.006504, 34.383076>,  <40.363277, 31.852301, 34.373692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179611, 32.006504, 34.383076>,  <39.873501, 32.263512, 34.398716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179611, 32.006504, 34.383076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053466, -0.002918, -0.998566,
		0.641479, 0.766267, -0.036586,
		0.765275, -0.642515, -0.039098,
		40.409195, 31.813749, 34.371346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402702, 32.506428, 34.047554>,  <39.873501, 32.263512, 34.398716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402702, 32.506428, 34.047554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.423954, 32.108707, 34.010567>,  <40.436707, 31.870075, 33.988377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.423954, 32.108707, 34.010567>,  <40.402702, 32.506428, 34.047554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423954, 32.108707, 34.010567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011218, 0.093185, -0.995586,
		0.998524, 0.051861, 0.016105,
		0.053133, -0.994297, -0.092465,
		40.439896, 31.810419, 33.982826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789757, 32.465584, 33.443188>,  <40.402702, 32.506428, 34.047554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789757, 32.465584, 33.443188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639565, 32.096714, 33.480278>,  <40.549450, 31.875391, 33.502533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639565, 32.096714, 33.480278>,  <40.789757, 32.465584, 33.443188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639565, 32.096714, 33.480278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164889, -0.031986, -0.985793,
		0.912044, -0.385438, -0.140047,
		-0.375482, -0.922179, 0.092727,
		40.526920, 31.820061, 33.508095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070133, 32.101585, 32.914040>,  <40.789757, 32.465584, 33.443188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070133, 32.101585, 32.914040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782143, 31.846275, 33.023022>,  <40.609348, 31.693089, 33.088409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782143, 31.846275, 33.023022>,  <41.070133, 32.101585, 32.914040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782143, 31.846275, 33.023022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154358, -0.235476, -0.959544,
		0.676614, -0.732906, 0.071014,
		-0.719977, -0.638279, 0.272456,
		40.566151, 31.654791, 33.104759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278370, 31.347200, 32.746647>,  <41.070133, 32.101585, 32.914040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278370, 31.347200, 32.746647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.879627, 31.369650, 32.769001>,  <40.640381, 31.383120, 32.782413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.879627, 31.369650, 32.769001>,  <41.278370, 31.347200, 32.746647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879627, 31.369650, 32.769001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074853, -0.436958, -0.896362,
		-0.025889, -0.897729, 0.439786,
		-0.996859, 0.056125, 0.055885,
		40.580570, 31.386488, 32.785767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012337, 30.749269, 32.443817>,  <41.278370, 31.347200, 32.746647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012337, 30.749269, 32.443817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.714314, 31.015934, 32.435303>,  <40.535500, 31.175932, 32.430195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.714314, 31.015934, 32.435303>,  <41.012337, 30.749269, 32.443817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714314, 31.015934, 32.435303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259997, -0.319657, -0.911165,
		-0.614241, -0.673336, 0.411492,
		-0.745056, 0.666662, -0.021282,
		40.490795, 31.215933, 32.428917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550507, 30.422569, 32.026737>,  <41.012337, 30.749269, 32.443817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550507, 30.422569, 32.026737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360691, 30.774603, 32.033249>,  <40.246803, 30.985823, 32.037155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360691, 30.774603, 32.033249>,  <40.550507, 30.422569, 32.026737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360691, 30.774603, 32.033249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311156, -0.150413, -0.938380,
		-0.823407, -0.450360, 0.345220,
		-0.474534, 0.880086, 0.016282,
		40.218330, 31.038630, 32.038132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874214, 30.357481, 31.725708>,  <40.550507, 30.422569, 32.026737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874214, 30.357481, 31.725708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946590, 30.749969, 31.698980>,  <39.990017, 30.985462, 31.682943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946590, 30.749969, 31.698980>,  <39.874214, 30.357481, 31.725708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946590, 30.749969, 31.698980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324575, -0.004560, -0.945849,
		-0.928392, 0.192831, 0.317655,
		0.180940, 0.981222, -0.066821,
		40.000874, 31.044336, 31.678934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.150433, 30.794851, 31.660318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407787, 31.047377, 31.487118>,  <39.562202, 31.198893, 31.383198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407787, 31.047377, 31.487118>,  <39.150433, 30.794851, 31.660318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407787, 31.047377, 31.487118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442421, -0.154960, -0.883318,
		-0.624749, 0.759888, 0.179607,
		0.643391, 0.631314, -0.433002,
		39.600803, 31.236771, 31.357218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751698, 31.330961, 31.240234>,  <39.150433, 30.794851, 31.660318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751698, 31.330961, 31.240234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.127804, 31.306189, 31.106333>,  <39.353470, 31.291325, 31.025991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.127804, 31.306189, 31.106333>,  <38.751698, 31.330961, 31.240234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127804, 31.306189, 31.106333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338780, -0.073366, -0.938001,
		0.033534, 0.995380, -0.089965,
		0.940268, -0.061933, -0.334755,
		39.409885, 31.287609, 31.005907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816189, 31.878941, 30.747646>,  <38.751698, 31.330961, 31.240234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816189, 31.878941, 30.747646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.112755, 31.622606, 30.668007>,  <39.290695, 31.468805, 30.620224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.112755, 31.622606, 30.668007>,  <38.816189, 31.878941, 30.747646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112755, 31.622606, 30.668007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285754, -0.033047, -0.957733,
		0.607170, 0.766967, -0.207623,
		0.741411, -0.640835, -0.199098,
		39.335178, 31.430355, 30.608278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049179, 32.116280, 30.093353>,  <38.816189, 31.878941, 30.747646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049179, 32.116280, 30.093353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198853, 31.747118, 30.129641>,  <39.288658, 31.525621, 30.151413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198853, 31.747118, 30.129641>,  <39.049179, 32.116280, 30.093353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198853, 31.747118, 30.129641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153505, -0.158118, -0.975415,
		0.914561, 0.351060, -0.200836,
		0.374185, -0.922906, 0.090719,
		39.311108, 31.470245, 30.156857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490276, 32.114491, 29.503859>,  <39.049179, 32.116280, 30.093353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490276, 32.114491, 29.503859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.427288, 31.733410, 29.607822>,  <39.389496, 31.504761, 29.670200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.427288, 31.733410, 29.607822>,  <39.490276, 32.114491, 29.503859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427288, 31.733410, 29.607822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139334, -0.239127, -0.960939,
		0.977644, -0.187538, -0.095087,
		-0.157475, -0.952705, 0.259912,
		39.380047, 31.447598, 29.685797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856388, 31.784683, 29.110376>,  <39.490276, 32.114491, 29.503859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856388, 31.784683, 29.110376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580624, 31.521084, 29.230667>,  <39.415165, 31.362925, 29.302841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580624, 31.521084, 29.230667>,  <39.856388, 31.784683, 29.110376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580624, 31.521084, 29.230667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170897, -0.255465, -0.951594,
		0.703925, -0.707430, 0.063499,
		-0.689408, -0.659000, 0.300726,
		39.373802, 31.323383, 29.320885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114147, 31.230547, 28.872248>,  <39.856388, 31.784683, 29.110376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114147, 31.230547, 28.872248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729717, 31.138983, 28.934132>,  <39.499058, 31.084045, 28.971262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729717, 31.138983, 28.934132>,  <40.114147, 31.230547, 28.872248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729717, 31.138983, 28.934132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107050, -0.207696, -0.972318,
		0.254706, -0.951032, 0.175107,
		-0.961075, -0.228910, 0.154710,
		39.441395, 31.070311, 28.980545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960686, 30.700350, 28.511911>,  <40.114147, 31.230547, 28.872248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960686, 30.700350, 28.511911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582527, 30.820189, 28.563242>,  <39.355633, 30.892092, 28.594040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582527, 30.820189, 28.563242>,  <39.960686, 30.700350, 28.511911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582527, 30.820189, 28.563242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238181, -0.366322, -0.899487,
		-0.222470, -0.880938, 0.417677,
		-0.945397, 0.299592, 0.128327,
		39.298908, 30.910067, 28.601740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594959, 30.082237, 28.248610>,  <39.960686, 30.700350, 28.511911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594959, 30.082237, 28.248610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357059, 30.403801, 28.249840>,  <39.214321, 30.596739, 28.250578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357059, 30.403801, 28.249840>,  <39.594959, 30.082237, 28.248610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357059, 30.403801, 28.249840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448867, -0.328903, -0.830868,
		-0.666931, -0.495534, 0.556462,
		-0.594745, 0.803909, 0.003073,
		39.178635, 30.644974, 28.250761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876938, 29.855072, 28.060659>,  <39.594959, 30.082237, 28.248610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876938, 29.855072, 28.060659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901604, 30.242268, 27.963339>,  <38.916405, 30.474585, 27.904947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901604, 30.242268, 27.963339>,  <38.876938, 29.855072, 28.060659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901604, 30.242268, 27.963339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377168, -0.203089, -0.903603,
		-0.924089, 0.147488, 0.352571,
		0.061668, 0.967989, -0.243301,
		38.920105, 30.532663, 27.890348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256336, 30.055340, 27.762539>,  <38.876938, 29.855072, 28.060659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256336, 30.055340, 27.762539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475471, 30.370508, 27.650076>,  <38.606953, 30.559608, 27.582598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475471, 30.370508, 27.650076>,  <38.256336, 30.055340, 27.762539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475471, 30.370508, 27.650076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486399, 0.026555, -0.873333,
		-0.680652, 0.615203, 0.397792,
		0.547841, 0.787921, -0.281159,
		38.639824, 30.606884, 27.565729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788685, 30.570845, 27.359865>,  <38.256336, 30.055340, 27.762539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788685, 30.570845, 27.359865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150742, 30.690563, 27.239103>,  <38.367973, 30.762394, 27.166647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150742, 30.690563, 27.239103>,  <37.788685, 30.570845, 27.359865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150742, 30.690563, 27.239103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295501, -0.067587, -0.952949,
		-0.305620, 0.951763, 0.027267,
		0.905138, 0.299297, -0.301903,
		38.422283, 30.780352, 27.148533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657848, 30.998085, 26.729258>,  <37.788685, 30.570845, 27.359865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657848, 30.998085, 26.729258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048889, 30.914507, 26.719107>,  <38.283512, 30.864361, 26.713017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048889, 30.914507, 26.719107>,  <37.657848, 30.998085, 26.729258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048889, 30.914507, 26.719107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056187, -0.142859, -0.988147,
		0.202841, 0.967437, -0.151398,
		0.977598, -0.208943, -0.025380,
		38.342167, 30.851824, 26.711493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960754, 31.441788, 26.273907>,  <37.657848, 30.998085, 26.729258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960754, 31.441788, 26.273907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215675, 31.133564, 26.277527>,  <38.368629, 30.948629, 26.279699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215675, 31.133564, 26.277527>,  <37.960754, 31.441788, 26.273907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215675, 31.133564, 26.277527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020703, -0.028860, -0.999369,
		0.770334, 0.636715, -0.034346,
		0.637305, -0.770559, 0.009050,
		38.406868, 30.902397, 26.280241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525372, 31.684980, 25.913366>,  <37.960754, 31.441788, 26.273907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525372, 31.684980, 25.913366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539665, 31.286404, 25.882843>,  <38.548241, 31.047256, 25.864529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539665, 31.286404, 25.882843>,  <38.525372, 31.684980, 25.913366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539665, 31.286404, 25.882843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081093, 0.078997, -0.993571,
		0.996066, 0.029316, 0.083627,
		0.035734, -0.996444, -0.076309,
		38.550385, 30.987471, 25.859951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032284, 31.708147, 25.462219>,  <38.525372, 31.684980, 25.913366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032284, 31.708147, 25.462219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.862114, 31.346746, 25.483006>,  <38.760014, 31.129906, 25.495478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.862114, 31.346746, 25.483006>,  <39.032284, 31.708147, 25.462219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862114, 31.346746, 25.483006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033249, -0.072989, -0.996778,
		0.904383, -0.422327, 0.061092,
		-0.425425, -0.903500, 0.051968,
		38.734486, 31.075697, 25.498596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475037, 31.371695, 24.977234>,  <39.032284, 31.708147, 25.462219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475037, 31.371695, 24.977234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131195, 31.167665, 24.989252>,  <38.924889, 31.045248, 24.996462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131195, 31.167665, 24.989252>,  <39.475037, 31.371695, 24.977234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131195, 31.167665, 24.989252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073078, 0.064535, -0.995236,
		0.505704, -0.857707, -0.092750,
		-0.859606, -0.510072, 0.030044,
		38.873314, 31.014645, 24.998264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488861, 30.855431, 24.390409>,  <39.475037, 31.371695, 24.977234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488861, 30.855431, 24.390409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103546, 30.906679, 24.484787>,  <38.872356, 30.937428, 24.541412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103546, 30.906679, 24.484787>,  <39.488861, 30.855431, 24.390409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103546, 30.906679, 24.484787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235510, 0.018728, -0.971691,
		-0.128915, -0.991581, 0.012134,
		-0.963284, 0.128123, 0.235942,
		38.814560, 30.945114, 24.555569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130573, 30.521320, 23.878937>,  <39.488861, 30.855431, 24.390409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130573, 30.521320, 23.878937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836449, 30.730757, 24.051064>,  <38.659973, 30.856419, 24.154339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836449, 30.730757, 24.051064>,  <39.130573, 30.521320, 23.878937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836449, 30.730757, 24.051064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544872, -0.079132, -0.834777,
		-0.403029, -0.848287, 0.343476,
		-0.735311, 0.523590, 0.430315,
		38.615856, 30.887835, 24.180159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502674, 30.170723, 23.751480>,  <39.130573, 30.521320, 23.878937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502674, 30.170723, 23.751480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430393, 30.557106, 23.825525>,  <38.387024, 30.788937, 23.869953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430393, 30.557106, 23.825525>,  <38.502674, 30.170723, 23.751480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430393, 30.557106, 23.825525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268485, 0.132617, -0.954111,
		-0.946182, -0.222113, 0.235382,
		-0.180705, 0.965960, 0.185114,
		38.376183, 30.846893, 23.881060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941921, 30.250738, 23.379911>,  <38.502674, 30.170723, 23.751480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941921, 30.250738, 23.379911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066460, 30.623018, 23.456705>,  <38.141182, 30.846386, 23.502781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066460, 30.623018, 23.456705>,  <37.941921, 30.250738, 23.379911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066460, 30.623018, 23.456705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335462, 0.296663, -0.894123,
		-0.889116, 0.213982, 0.404580,
		0.311350, 0.930700, 0.191985,
		38.159866, 30.902227, 23.514301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266571, 30.678349, 23.262344>,  <37.941921, 30.250738, 23.379911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266571, 30.678349, 23.262344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588661, 30.913715, 23.233015>,  <37.781914, 31.054935, 23.215418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588661, 30.913715, 23.233015>,  <37.266571, 30.678349, 23.262344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588661, 30.913715, 23.233015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318557, 0.324976, -0.890456,
		-0.500132, 0.740376, 0.449123,
		0.805227, 0.588416, -0.073321,
		37.830231, 31.090240, 23.211020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051601, 31.197987, 22.856983>,  <37.266571, 30.678349, 23.262344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051601, 31.197987, 22.856983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446419, 31.202463, 22.792948>,  <37.683308, 31.205149, 22.754526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446419, 31.202463, 22.792948>,  <37.051601, 31.197987, 22.856983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446419, 31.202463, 22.792948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158795, 0.212254, -0.964226,
		0.023189, 0.977150, 0.211280,
		0.987039, 0.011191, -0.160089,
		37.742531, 31.205820, 22.744921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304482, 31.857273, 22.608200>,  <37.051601, 31.197987, 22.856983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304482, 31.857273, 22.608200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574371, 31.584127, 22.496164>,  <37.736305, 31.420240, 22.428942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574371, 31.584127, 22.496164>,  <37.304482, 31.857273, 22.608200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574371, 31.584127, 22.496164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029297, 0.403969, -0.914304,
		0.737491, 0.608694, 0.292572,
		0.674721, -0.682862, -0.280091,
		37.776787, 31.379269, 22.412138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472237, 32.516968, 22.857107>,  <37.304482, 31.857273, 22.608200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472237, 32.516968, 22.857107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074577, 32.528881, 22.815586>,  <36.835979, 32.536030, 22.790672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074577, 32.528881, 22.815586>,  <37.472237, 32.516968, 22.857107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074577, 32.528881, 22.815586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094854, 0.218691, 0.971173,
		0.051621, 0.975340, -0.214588,
		-0.994152, 0.029779, -0.103804,
		36.776333, 32.537815, 22.784445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125999, 33.140373, 23.146185>,  <37.472237, 32.516968, 22.857107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125999, 33.140373, 23.146185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816853, 32.886585, 23.150587>,  <36.631363, 32.734314, 23.153229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816853, 32.886585, 23.150587>,  <37.125999, 33.140373, 23.146185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816853, 32.886585, 23.150587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204979, 0.266031, 0.941919,
		-0.600544, 0.725726, -0.335660,
		-0.772872, -0.634467, 0.011005,
		36.584991, 32.696243, 23.153889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663521, 33.417233, 23.671654>,  <37.125999, 33.140373, 23.146185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663521, 33.417233, 23.671654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529133, 33.044823, 23.614641>,  <36.448502, 32.821377, 23.580435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529133, 33.044823, 23.614641>,  <36.663521, 33.417233, 23.671654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529133, 33.044823, 23.614641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388128, -0.001030, 0.921605,
		-0.858186, 0.364947, -0.361012,
		-0.335965, -0.931028, -0.142530,
		36.428345, 32.765514, 23.571882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901966, 33.366100, 23.917212>,  <36.663521, 33.417233, 23.671654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901966, 33.366100, 23.917212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029823, 32.987171, 23.909138>,  <36.106537, 32.759815, 23.904293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029823, 32.987171, 23.909138>,  <35.901966, 33.366100, 23.917212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029823, 32.987171, 23.909138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294130, -0.119449, 0.948272,
		-0.900730, -0.297172, -0.316817,
		0.319644, -0.947323, -0.020184,
		36.125717, 32.702976, 23.903082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425709, 33.029461, 24.338749>,  <35.901966, 33.366100, 23.917212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425709, 33.029461, 24.338749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744995, 32.792358, 24.295881>,  <35.936565, 32.650097, 24.270161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744995, 32.792358, 24.295881>,  <35.425709, 33.029461, 24.338749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744995, 32.792358, 24.295881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050923, -0.243678, 0.968518,
		-0.600215, -0.767630, -0.224693,
		0.798216, -0.592761, -0.107169,
		35.984459, 32.614529, 24.263731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289791, 32.458138, 24.766962>,  <35.425709, 33.029461, 24.338749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289791, 32.458138, 24.766962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685467, 32.432312, 24.714298>,  <35.922871, 32.416817, 24.682701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685467, 32.432312, 24.714298>,  <35.289791, 32.458138, 24.766962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685467, 32.432312, 24.714298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098804, -0.369971, 0.923775,
		-0.108353, -0.926797, -0.359592,
		0.989190, -0.064565, -0.131658,
		35.982224, 32.412941, 24.674801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444099, 31.793882, 24.830553>,  <35.289791, 32.458138, 24.766962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444099, 31.793882, 24.830553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779476, 31.998665, 24.905291>,  <35.980701, 32.121532, 24.950134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779476, 31.998665, 24.905291>,  <35.444099, 31.793882, 24.830553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779476, 31.998665, 24.905291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005184, -0.350323, 0.936615,
		0.544960, -0.784332, -0.296381,
		0.838446, 0.511954, 0.186846,
		36.031010, 32.152252, 24.961344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714958, 31.419170, 25.362068>,  <35.444099, 31.793882, 24.830553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714958, 31.419170, 25.362068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915539, 31.765104, 25.371927>,  <36.035889, 31.972664, 25.377842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915539, 31.765104, 25.371927>,  <35.714958, 31.419170, 25.362068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915539, 31.765104, 25.371927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193890, -0.140094, 0.970969,
		0.843179, -0.482117, -0.237934,
		0.501454, 0.864833, 0.024647,
		36.065975, 32.024555, 25.379322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304955, 31.300491, 25.727848>,  <35.714958, 31.419170, 25.362068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304955, 31.300491, 25.727848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228901, 31.692926, 25.742331>,  <36.183270, 31.928389, 25.751020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228901, 31.692926, 25.742331>,  <36.304955, 31.300491, 25.727848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228901, 31.692926, 25.742331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244427, 0.011590, 0.969599,
		0.950844, 0.193206, -0.242008,
		-0.190137, 0.981090, 0.036205,
		36.171860, 31.987253, 25.753193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830860, 31.554123, 26.129620>,  <36.304955, 31.300491, 25.727848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830860, 31.554123, 26.129620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576385, 31.861750, 26.154299>,  <36.423702, 32.046326, 26.169107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576385, 31.861750, 26.154299>,  <36.830860, 31.554123, 26.129620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576385, 31.861750, 26.154299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357782, 0.223219, 0.906733,
		0.683565, 0.598925, -0.417167,
		-0.636185, 0.769066, 0.061700,
		36.385529, 32.092468, 26.172810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189259, 32.193489, 26.396833>,  <36.830860, 31.554123, 26.129620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189259, 32.193489, 26.396833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807335, 32.274162, 26.484158>,  <36.578178, 32.322567, 26.536552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807335, 32.274162, 26.484158>,  <37.189259, 32.193489, 26.396833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807335, 32.274162, 26.484158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260148, 0.211898, 0.942031,
		0.143728, 0.956256, -0.254789,
		-0.954811, 0.201679, 0.218313,
		36.520893, 32.334667, 26.549652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175213, 32.780479, 26.834015>,  <37.189259, 32.193489, 26.396833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175213, 32.780479, 26.834015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822369, 32.606812, 26.907091>,  <36.610661, 32.502613, 26.950937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822369, 32.606812, 26.907091>,  <37.175213, 32.780479, 26.834015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822369, 32.606812, 26.907091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174878, 0.058272, 0.982864,
		-0.437372, 0.898946, 0.024524,
		-0.882113, -0.434166, 0.182692,
		36.557735, 32.476562, 26.961899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968510, 33.003017, 27.459354>,  <37.175213, 32.780479, 26.834015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968510, 33.003017, 27.459354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.740372, 32.675812, 27.429506>,  <36.603489, 32.479488, 27.411598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.740372, 32.675812, 27.429506>,  <36.968510, 33.003017, 27.459354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740372, 32.675812, 27.429506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175949, -0.210400, 0.961652,
		-0.802343, 0.535339, 0.263929,
		-0.570340, -0.818012, -0.074621,
		36.569271, 32.430408, 27.407120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567539, 33.105366, 28.014156>,  <36.968510, 33.003017, 27.459354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567539, 33.105366, 28.014156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570999, 32.720364, 27.905706>,  <36.573074, 32.489361, 27.840635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570999, 32.720364, 27.905706>,  <36.567539, 33.105366, 28.014156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570999, 32.720364, 27.905706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155050, -0.266567, 0.951263,
		-0.987869, -0.050266, 0.146931,
		0.008650, -0.962505, -0.271127,
		36.573593, 32.431614, 27.824368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041298, 32.805676, 28.471188>,  <36.567539, 33.105366, 28.014156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041298, 32.805676, 28.471188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267063, 32.503201, 28.338753>,  <36.402523, 32.321716, 28.259291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267063, 32.503201, 28.338753>,  <36.041298, 32.805676, 28.471188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267063, 32.503201, 28.338753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061445, -0.438454, 0.896651,
		-0.823200, -0.485741, -0.293934,
		0.564417, -0.756184, -0.331089,
		36.436390, 32.276344, 28.239426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761063, 32.185513, 28.764639>,  <36.041298, 32.805676, 28.471188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761063, 32.185513, 28.764639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135696, 32.071548, 28.683020>,  <36.360477, 32.003170, 28.634048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135696, 32.071548, 28.683020>,  <35.761063, 32.185513, 28.764639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135696, 32.071548, 28.683020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078767, -0.396207, 0.914776,
		-0.341476, -0.872837, -0.348640,
		0.936584, -0.284913, -0.204046,
		36.416672, 31.986074, 28.621805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782349, 31.764862, 29.261490>,  <35.761063, 32.185513, 28.764639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782349, 31.764862, 29.261490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159679, 31.809839, 29.136591>,  <36.386078, 31.836826, 29.061651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159679, 31.809839, 29.136591>,  <35.782349, 31.764862, 29.261490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159679, 31.809839, 29.136591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331676, -0.352232, 0.875171,
		-0.011576, -0.929133, -0.369563,
		0.943322, 0.112444, -0.312249,
		36.442677, 31.843573, 29.042917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021191, 31.126982, 29.351803>,  <35.782349, 31.764862, 29.261490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021191, 31.126982, 29.351803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323025, 31.389441, 29.355219>,  <36.504124, 31.546915, 29.357267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323025, 31.389441, 29.355219>,  <36.021191, 31.126982, 29.351803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323025, 31.389441, 29.355219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219928, -0.265140, 0.938793,
		0.618249, -0.706523, -0.344375,
		0.754586, 0.656145, 0.008539,
		36.549400, 31.586285, 29.357780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630348, 30.741663, 29.566103>,  <36.021191, 31.126982, 29.351803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630348, 30.741663, 29.566103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710209, 31.123613, 29.654060>,  <36.758125, 31.352783, 29.706835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710209, 31.123613, 29.654060>,  <36.630348, 30.741663, 29.566103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710209, 31.123613, 29.654060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195685, -0.258747, 0.945916,
		0.960129, -0.145822, -0.238514,
		0.199650, 0.954875, 0.219895,
		36.770103, 31.410076, 29.720028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139729, 30.728104, 30.123917>,  <36.630348, 30.741663, 29.566103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139729, 30.728104, 30.123917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002857, 31.103117, 30.149031>,  <36.920734, 31.328125, 30.164099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002857, 31.103117, 30.149031>,  <37.139729, 30.728104, 30.123917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002857, 31.103117, 30.149031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106629, -0.027642, 0.993915,
		0.933566, 0.346790, -0.090510,
		-0.342177, 0.937536, 0.062783,
		36.900204, 31.384378, 30.167866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.895805, 30.607639, 33.942402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746197, 30.978556, 33.936279>,  <40.656429, 31.201105, 33.932606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746197, 30.978556, 33.936279>,  <40.895805, 30.607639, 33.942402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746197, 30.978556, 33.936279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208525, 0.100172, 0.972874,
		0.903672, 0.360686, -0.230830,
		-0.374025, 0.927292, -0.015311,
		40.633987, 31.256742, 33.931686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347092, 30.864199, 34.370567>,  <40.895805, 30.607639, 33.942402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347092, 30.864199, 34.370567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066479, 31.149012, 34.382366>,  <40.898113, 31.319899, 34.389446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066479, 31.149012, 34.382366>,  <41.347092, 30.864199, 34.370567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066479, 31.149012, 34.382366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283679, 0.241050, 0.928128,
		0.653746, 0.659474, -0.371092,
		-0.701528, 0.712031, 0.029494,
		40.856022, 31.362621, 34.391212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773026, 31.484766, 34.721844>,  <41.347092, 30.864199, 34.370567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773026, 31.484766, 34.721844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.383568, 31.574430, 34.738644>,  <41.149891, 31.628229, 34.748726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.383568, 31.574430, 34.738644>,  <41.773026, 31.484766, 34.721844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383568, 31.574430, 34.738644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088609, 0.202123, 0.975343,
		0.210144, 0.953362, -0.216659,
		-0.973647, 0.224160, 0.042002,
		41.091473, 31.641678, 34.751244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734844, 32.186779, 35.011822>,  <41.773026, 31.484766, 34.721844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734844, 32.186779, 35.011822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387157, 31.994415, 35.057755>,  <41.178543, 31.878998, 35.085316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387157, 31.994415, 35.057755>,  <41.734844, 32.186779, 35.011822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387157, 31.994415, 35.057755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071734, 0.107131, 0.991654,
		-0.489194, 0.870202, -0.058623,
		-0.869220, -0.480906, 0.114831,
		41.126392, 31.850143, 35.092205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408340, 32.558685, 35.644955>,  <41.734844, 32.186779, 35.011822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408340, 32.558685, 35.644955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237808, 32.201721, 35.585831>,  <41.135490, 31.987543, 35.550358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237808, 32.201721, 35.585831>,  <41.408340, 32.558685, 35.644955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237808, 32.201721, 35.585831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123270, -0.219195, 0.967863,
		-0.896129, 0.394408, 0.203456,
		-0.426329, -0.892410, -0.147808,
		41.109909, 31.933998, 35.541489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871693, 32.535999, 36.174198>,  <41.408340, 32.558685, 35.644955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871693, 32.535999, 36.174198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.901115, 32.151390, 36.068321>,  <40.918770, 31.920624, 36.004795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.901115, 32.151390, 36.068321>,  <40.871693, 32.535999, 36.174198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901115, 32.151390, 36.068321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087265, -0.270597, 0.958729,
		-0.993466, -0.047424, -0.103811,
		0.073557, -0.961524, -0.264690,
		40.923183, 31.862932, 35.988914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284061, 32.190937, 36.467289>,  <40.871693, 32.535999, 36.174198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284061, 32.190937, 36.467289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582775, 31.936489, 36.389671>,  <40.762005, 31.783819, 36.343102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582775, 31.936489, 36.389671>,  <40.284061, 32.190937, 36.467289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582775, 31.936489, 36.389671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084685, -0.380354, 0.920956,
		-0.659649, -0.671326, -0.337914,
		0.746788, -0.636124, -0.194049,
		40.806812, 31.745653, 36.331455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050613, 31.439558, 36.634708>,  <40.284061, 32.190937, 36.467289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050613, 31.439558, 36.634708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445297, 31.504028, 36.642918>,  <40.682110, 31.542711, 36.647842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445297, 31.504028, 36.642918>,  <40.050613, 31.439558, 36.634708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445297, 31.504028, 36.642918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016086, -0.222623, 0.974772,
		0.161681, -0.961489, -0.222257,
		0.986712, 0.161178, 0.020528,
		40.741310, 31.552382, 36.649075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255093, 30.952820, 37.089638>,  <40.050613, 31.439558, 36.634708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255093, 30.952820, 37.089638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540230, 31.233049, 37.076630>,  <40.711311, 31.401186, 37.068825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540230, 31.233049, 37.076630>,  <40.255093, 30.952820, 37.089638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540230, 31.233049, 37.076630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001534, 0.047930, 0.998850,
		0.701326, -0.711969, 0.035241,
		0.712839, 0.700573, -0.032523,
		40.754082, 31.443222, 37.066872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788372, 30.721556, 37.616390>,  <40.255093, 30.952820, 37.089638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788372, 30.721556, 37.616390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.890018, 31.102163, 37.547062>,  <40.951004, 31.330528, 37.505463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.890018, 31.102163, 37.547062>,  <40.788372, 30.721556, 37.616390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890018, 31.102163, 37.547062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035322, 0.188218, 0.981492,
		0.966530, -0.243286, 0.081438,
		0.254112, 0.951518, -0.173325,
		40.966251, 31.387619, 37.495064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319229, 30.944387, 38.172817>,  <40.788372, 30.721556, 37.616390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319229, 30.944387, 38.172817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178249, 31.296148, 38.044800>,  <41.093662, 31.507206, 37.967991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178249, 31.296148, 38.044800>,  <41.319229, 30.944387, 38.172817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178249, 31.296148, 38.044800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019404, 0.335044, 0.942003,
		0.935629, 0.338222, -0.101024,
		-0.352453, 0.879404, -0.320039,
		41.072514, 31.559969, 37.948788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803410, 31.411844, 38.455959>,  <41.319229, 30.944387, 38.172817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803410, 31.411844, 38.455959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475494, 31.625216, 38.372623>,  <41.278744, 31.753239, 38.322624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475494, 31.625216, 38.372623>,  <41.803410, 31.411844, 38.455959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475494, 31.625216, 38.372623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065254, 0.448444, 0.891426,
		0.568938, 0.717184, -0.402437,
		-0.819787, 0.533427, -0.208338,
		41.229557, 31.785244, 38.310123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960888, 32.084999, 38.481232>,  <41.803410, 31.411844, 38.455959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960888, 32.084999, 38.481232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572002, 32.042248, 38.564533>,  <41.338669, 32.016598, 38.614513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572002, 32.042248, 38.564533>,  <41.960888, 32.084999, 38.481232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572002, 32.042248, 38.564533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142037, 0.437831, 0.887767,
		-0.186060, 0.892682, -0.410487,
		-0.972218, -0.106874, 0.208257,
		41.280338, 32.010185, 38.627010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103600, 32.460663, 39.089508>,  <41.960888, 32.084999, 38.481232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103600, 32.460663, 39.089508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719364, 32.351387, 39.068970>,  <41.488823, 32.285824, 39.056648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719364, 32.351387, 39.068970>,  <42.103600, 32.460663, 39.089508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719364, 32.351387, 39.068970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154707, 0.371969, 0.915262,
		-0.230941, 0.887134, -0.399574,
		-0.960590, -0.273188, -0.051343,
		41.431187, 32.269432, 39.053566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086983, 33.210941, 38.985367>,  <42.103600, 32.460663, 39.089508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086983, 33.210941, 38.985367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.340759, 33.519852, 38.998493>,  <42.493027, 33.705196, 39.006371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.340759, 33.519852, 38.998493>,  <42.086983, 33.210941, 38.985367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340759, 33.519852, 38.998493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492053, 0.436245, -0.753375,
		-0.596127, 0.461826, 0.656772,
		0.634441, 0.772274, 0.032815,
		42.531094, 33.751534, 39.008339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693001, 33.749485, 38.896252>,  <42.086983, 33.210941, 38.985367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693001, 33.749485, 38.896252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.053879, 33.870811, 38.773590>,  <42.270405, 33.943607, 38.699993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.053879, 33.870811, 38.773590>,  <41.693001, 33.749485, 38.896252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053879, 33.870811, 38.773590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409496, 0.379067, -0.829832,
		-0.135464, 0.874245, 0.466203,
		0.902199, 0.303320, -0.306650,
		42.324539, 33.961807, 38.681595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569839, 34.421528, 38.582336>,  <41.693001, 33.749485, 38.896252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569839, 34.421528, 38.582336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924305, 34.315025, 38.430645>,  <42.136986, 34.251125, 38.339630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924305, 34.315025, 38.430645>,  <41.569839, 34.421528, 38.582336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924305, 34.315025, 38.430645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267185, 0.375039, -0.887670,
		0.378574, 0.887949, 0.261207,
		0.886168, -0.266258, -0.379227,
		42.190155, 34.235149, 38.316875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794872, 34.944221, 38.069809>,  <41.569839, 34.421528, 38.582336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794872, 34.944221, 38.069809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030560, 34.640236, 37.960056>,  <42.171970, 34.457844, 37.894207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030560, 34.640236, 37.960056>,  <41.794872, 34.944221, 38.069809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030560, 34.640236, 37.960056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053741, 0.301973, -0.951801,
		0.806186, 0.575562, 0.137086,
		0.589217, -0.759961, -0.274378,
		42.207325, 34.412247, 37.877743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157925, 35.198486, 37.455219>,  <41.794872, 34.944221, 38.069809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157925, 35.198486, 37.455219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.215767, 34.802696, 37.457539>,  <42.250473, 34.565224, 37.458931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.215767, 34.802696, 37.457539>,  <42.157925, 35.198486, 37.455219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215767, 34.802696, 37.457539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087056, -0.018557, -0.996031,
		0.985652, 0.143529, -0.088823,
		0.144607, -0.989472, 0.005795,
		42.259148, 34.505856, 37.459278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730267, 35.035305, 37.016617>,  <42.157925, 35.198486, 37.455219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730267, 35.035305, 37.016617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.494095, 34.712856, 37.032391>,  <42.352390, 34.519386, 37.041855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.494095, 34.712856, 37.032391>,  <42.730267, 35.035305, 37.016617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494095, 34.712856, 37.032391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059858, -0.004984, -0.998195,
		0.804866, -0.591724, -0.045310,
		-0.590430, -0.806125, 0.039431,
		42.316967, 34.471020, 37.044220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004498, 34.591427, 36.545856>,  <42.730267, 35.035305, 37.016617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004498, 34.591427, 36.545856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641384, 34.438938, 36.615818>,  <42.423515, 34.347443, 36.657795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641384, 34.438938, 36.615818>,  <43.004498, 34.591427, 36.545856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641384, 34.438938, 36.615818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153282, -0.086631, -0.984378,
		0.390423, -0.920414, 0.020207,
		-0.907785, -0.381227, 0.174906,
		42.369049, 34.324570, 36.668289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914040, 33.969685, 36.051739>,  <43.004498, 34.591427, 36.545856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914040, 33.969685, 36.051739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547085, 34.074200, 36.171829>,  <42.326912, 34.136909, 36.243881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547085, 34.074200, 36.171829>,  <42.914040, 33.969685, 36.051739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547085, 34.074200, 36.171829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298767, 0.046268, -0.953204,
		-0.262950, -0.964152, 0.035619,
		-0.917385, 0.261287, 0.300223,
		42.271870, 34.152584, 36.261894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492950, 33.625885, 35.595795>,  <42.914040, 33.969685, 36.051739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492950, 33.625885, 35.595795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.249348, 33.887138, 35.775803>,  <42.103188, 34.043892, 35.883808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.249348, 33.887138, 35.775803>,  <42.492950, 33.625885, 35.595795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249348, 33.887138, 35.775803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530970, 0.085775, -0.843038,
		-0.589221, -0.752365, 0.294559,
		-0.609007, 0.653138, 0.450024,
		42.066647, 34.083080, 35.910809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767757, 33.321167, 35.504883>,  <42.492950, 33.625885, 35.595795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767757, 33.321167, 35.504883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754719, 33.712509, 35.586624>,  <41.746895, 33.947315, 35.635670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754719, 33.712509, 35.586624>,  <41.767757, 33.321167, 35.504883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754719, 33.712509, 35.586624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667032, 0.130972, -0.733427,
		-0.744316, -0.160217, 0.648324,
		-0.032595, 0.978354, 0.204354,
		41.744942, 34.006016, 35.647930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050777, 33.467636, 35.490158>,  <41.767757, 33.321167, 35.504883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050777, 33.467636, 35.490158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262413, 33.801571, 35.429352>,  <41.389393, 34.001934, 35.392868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262413, 33.801571, 35.429352>,  <41.050777, 33.467636, 35.490158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262413, 33.801571, 35.429352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543395, 0.195734, -0.816339,
		-0.651759, 0.514518, 0.557209,
		0.529086, 0.834841, -0.152014,
		41.421139, 34.052025, 35.383747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548668, 33.852654, 35.227146>,  <41.050777, 33.467636, 35.490158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548668, 33.852654, 35.227146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881004, 34.055237, 35.134884>,  <41.080406, 34.176788, 35.079525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881004, 34.055237, 35.134884>,  <40.548668, 33.852654, 35.227146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881004, 34.055237, 35.134884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364052, 0.181142, -0.913594,
		-0.420919, 0.843021, 0.334879,
		0.830839, 0.506462, -0.230657,
		41.130257, 34.207176, 35.065685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306599, 34.413288, 34.917988>,  <40.548668, 33.852654, 35.227146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306599, 34.413288, 34.917988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.680580, 34.362938, 34.785309>,  <40.904968, 34.332729, 34.705700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.680580, 34.362938, 34.785309>,  <40.306599, 34.413288, 34.917988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680580, 34.362938, 34.785309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339674, -0.047698, -0.939333,
		0.102414, 0.990899, -0.087351,
		0.934951, -0.125871, -0.331698,
		40.961067, 34.325176, 34.685799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296974, 34.886158, 34.379105>,  <40.306599, 34.413288, 34.917988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296974, 34.886158, 34.379105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616386, 34.662609, 34.289658>,  <40.808037, 34.528481, 34.235989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616386, 34.662609, 34.289658>,  <40.296974, 34.886158, 34.379105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616386, 34.662609, 34.289658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304128, -0.053997, -0.951099,
		0.519468, 0.827494, -0.213087,
		0.798535, -0.558872, -0.223615,
		40.855946, 34.494949, 34.222572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243355, 35.679649, 34.346207>,  <40.296974, 34.886158, 34.379105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243355, 35.679649, 34.346207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952415, 35.953979, 34.336311>,  <39.777851, 36.118576, 34.330376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952415, 35.953979, 34.336311>,  <40.243355, 35.679649, 34.346207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952415, 35.953979, 34.336311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113914, -0.085105, 0.989839,
		0.676747, 0.722777, 0.140026,
		-0.727350, 0.685821, -0.024740,
		39.734211, 36.159725, 34.328888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416458, 36.160370, 34.912575>,  <40.243355, 35.679649, 34.346207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416458, 36.160370, 34.912575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038776, 36.245796, 34.812275>,  <39.812168, 36.297054, 34.752094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038776, 36.245796, 34.812275>,  <40.416458, 36.160370, 34.912575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038776, 36.245796, 34.812275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195354, 0.249813, 0.948383,
		0.265186, 0.944447, -0.194151,
		-0.944200, 0.213570, -0.250748,
		39.755516, 36.309868, 34.737049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314495, 36.821213, 35.286137>,  <40.416458, 36.160370, 34.912575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314495, 36.821213, 35.286137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955330, 36.668369, 35.198738>,  <39.739830, 36.576664, 35.146297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955330, 36.668369, 35.198738>,  <40.314495, 36.821213, 35.286137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955330, 36.668369, 35.198738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315691, 0.213113, 0.924620,
		-0.306744, 0.899207, -0.311986,
		-0.897913, -0.382113, -0.218501,
		39.685955, 36.553734, 35.133186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832260, 37.273849, 35.529762>,  <40.314495, 36.821213, 35.286137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832260, 37.273849, 35.529762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633923, 36.929169, 35.486671>,  <39.514919, 36.722359, 35.460819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633923, 36.929169, 35.486671>,  <39.832260, 37.273849, 35.529762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633923, 36.929169, 35.486671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320974, 0.066593, 0.944744,
		-0.806914, 0.503026, -0.309604,
		-0.495848, -0.861702, -0.107724,
		39.485168, 36.670658, 35.454353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170593, 37.382099, 35.855747>,  <39.832260, 37.273849, 35.529762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170593, 37.382099, 35.855747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179348, 36.982231, 35.850334>,  <39.184601, 36.742310, 35.847088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179348, 36.982231, 35.850334>,  <39.170593, 37.382099, 35.855747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179348, 36.982231, 35.850334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397880, -0.021126, 0.917194,
		-0.917176, -0.014688, -0.398211,
		0.021884, -0.999669, -0.013532,
		39.185913, 36.682331, 35.846275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431934, 37.110737, 36.026581>,  <39.170593, 37.382099, 35.855747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431934, 37.110737, 36.026581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693996, 36.822960, 36.118820>,  <38.851234, 36.650295, 36.174164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693996, 36.822960, 36.118820>,  <38.431934, 37.110737, 36.026581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693996, 36.822960, 36.118820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443175, -0.118782, 0.888531,
		-0.611852, -0.684324, -0.396658,
		0.655159, -0.719438, 0.230598,
		38.890545, 36.607128, 36.188000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016655, 36.600231, 36.168720>,  <38.431934, 37.110737, 36.026581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016655, 36.600231, 36.168720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362667, 36.553188, 36.363815>,  <38.570274, 36.524963, 36.480873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362667, 36.553188, 36.363815>,  <38.016655, 36.600231, 36.168720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362667, 36.553188, 36.363815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489726, 0.013307, 0.871775,
		-0.109021, -0.992970, -0.046086,
		0.865034, -0.117611, 0.487734,
		38.622177, 36.517906, 36.510136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827579, 36.095417, 36.705620>,  <38.016655, 36.600231, 36.168720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827579, 36.095417, 36.705620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181152, 36.239090, 36.825386>,  <38.393295, 36.325294, 36.897247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181152, 36.239090, 36.825386>,  <37.827579, 36.095417, 36.705620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181152, 36.239090, 36.825386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240266, -0.200455, 0.949784,
		0.401168, -0.911484, -0.090889,
		0.883932, 0.359185, 0.299415,
		38.446331, 36.346844, 36.915211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002083, 35.692348, 37.301083>,  <37.827579, 36.095417, 36.705620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002083, 35.692348, 37.301083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246822, 36.005737, 37.344566>,  <38.393665, 36.193771, 37.370655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246822, 36.005737, 37.344566>,  <38.002083, 35.692348, 37.301083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246822, 36.005737, 37.344566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212136, 0.030138, 0.976775,
		0.762000, -0.620696, 0.184642,
		0.611846, 0.783472, 0.108707,
		38.430374, 36.240780, 37.377178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470886, 35.527779, 37.857059>,  <38.002083, 35.692348, 37.301083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470886, 35.527779, 37.857059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439426, 35.925117, 37.823429>,  <38.420551, 36.163521, 37.803249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439426, 35.925117, 37.823429>,  <38.470886, 35.527779, 37.857059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439426, 35.925117, 37.823429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325687, 0.054108, 0.943928,
		0.942201, 0.101625, 0.319265,
		-0.078652, 0.993350, -0.084078,
		38.415833, 36.223122, 37.798206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752609, 35.818520, 38.461037>,  <38.470886, 35.527779, 37.857059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752609, 35.818520, 38.461037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515934, 36.104343, 38.311741>,  <38.373928, 36.275837, 38.222164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515934, 36.104343, 38.311741>,  <38.752609, 35.818520, 38.461037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515934, 36.104343, 38.311741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495925, 0.042388, 0.867330,
		0.635577, 0.698293, 0.329286,
		-0.591693, 0.714556, -0.373242,
		38.338425, 36.318710, 38.199768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449036, 36.070629, 38.155594>,  <38.752609, 35.818520, 38.461037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449036, 36.070629, 38.155594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508850, 36.426052, 38.329079>,  <39.544739, 36.639305, 38.433170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508850, 36.426052, 38.329079>,  <39.449036, 36.070629, 38.155594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508850, 36.426052, 38.329079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228945, 0.457838, -0.859051,
		-0.961885, 0.029163, 0.271893,
		0.149535, 0.888557, 0.433711,
		39.553711, 36.692619, 38.459190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.579727, 36.905731, 30.752918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184608, 36.946415, 30.705742>,  <39.947536, 36.970825, 30.677437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184608, 36.946415, 30.705742>,  <40.579727, 36.905731, 30.752918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184608, 36.946415, 30.705742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114699, 0.037179, 0.992704,
		0.105353, 0.994119, -0.025059,
		-0.987798, 0.101710, -0.117941,
		39.888268, 36.976929, 30.670359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373680, 37.577492, 31.012924>,  <40.579727, 36.905731, 30.752918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373680, 37.577492, 31.012924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053631, 37.337635, 31.018936>,  <39.861603, 37.193722, 31.022543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053631, 37.337635, 31.018936>,  <40.373680, 37.577492, 31.012924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053631, 37.337635, 31.018936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000969, 0.026351, 0.999652,
		-0.599834, 0.799831, -0.021666,
		-0.800124, -0.599646, 0.015031,
		39.813595, 37.157742, 31.023445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013569, 37.890373, 31.603596>,  <40.373680, 37.577492, 31.012924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013569, 37.890373, 31.603596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896862, 37.511520, 31.550205>,  <39.826839, 37.284210, 31.518171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896862, 37.511520, 31.550205>,  <40.013569, 37.890373, 31.603596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896862, 37.511520, 31.550205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021795, -0.146093, 0.989031,
		-0.956242, 0.285654, 0.063267,
		-0.291763, -0.947132, -0.133474,
		39.809334, 37.227383, 31.510162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480286, 37.814411, 32.061852>,  <40.013569, 37.890373, 31.603596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480286, 37.814411, 32.061852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557049, 37.429535, 31.984535>,  <39.603107, 37.198608, 31.938145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557049, 37.429535, 31.984535>,  <39.480286, 37.814411, 32.061852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557049, 37.429535, 31.984535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118243, -0.218186, 0.968717,
		-0.974265, -0.163045, -0.155643,
		0.191904, -0.962191, -0.193292,
		39.614620, 37.140877, 31.926548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956802, 37.431690, 32.366043>,  <39.480286, 37.814411, 32.061852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956802, 37.431690, 32.366043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254730, 37.167038, 32.331448>,  <39.433487, 37.008247, 32.310688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254730, 37.167038, 32.331448>,  <38.956802, 37.431690, 32.366043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254730, 37.167038, 32.331448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164525, -0.307720, 0.937145,
		-0.646661, -0.683777, -0.338052,
		0.744823, -0.661632, -0.086492,
		39.478176, 36.968548, 32.305500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699841, 36.880047, 32.675392>,  <38.956802, 37.431690, 32.366043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699841, 36.880047, 32.675392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093594, 36.811886, 32.693104>,  <39.329845, 36.770988, 32.703732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093594, 36.811886, 32.693104>,  <38.699841, 36.880047, 32.675392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093594, 36.811886, 32.693104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101427, -0.343267, 0.933745,
		-0.143914, -0.923651, -0.355188,
		0.984379, -0.170405, 0.044282,
		39.388908, 36.760765, 32.706387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750729, 36.243454, 32.892693>,  <38.699841, 36.880047, 32.675392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750729, 36.243454, 32.892693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103500, 36.393959, 33.006275>,  <39.315163, 36.484261, 33.074425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103500, 36.393959, 33.006275>,  <38.750729, 36.243454, 32.892693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103500, 36.393959, 33.006275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140065, -0.366012, 0.920009,
		0.450095, -0.851154, -0.270096,
		0.881927, 0.376260, 0.283957,
		39.368080, 36.506836, 33.091461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145401, 35.701607, 33.213043>,  <38.750729, 36.243454, 32.892693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145401, 35.701607, 33.213043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363506, 36.005573, 33.354584>,  <39.494370, 36.187954, 33.439507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363506, 36.005573, 33.354584>,  <39.145401, 35.701607, 33.213043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363506, 36.005573, 33.354584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205142, -0.288319, 0.935301,
		0.812775, -0.582577, -0.001319,
		0.545265, 0.759919, 0.353850,
		39.527084, 36.233547, 33.460739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831104, 35.484150, 33.694424>,  <39.145401, 35.701607, 33.213043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831104, 35.484150, 33.694424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708927, 35.850723, 33.797855>,  <39.635620, 36.070667, 33.859913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708927, 35.850723, 33.797855>,  <39.831104, 35.484150, 33.694424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708927, 35.850723, 33.797855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023474, -0.264225, 0.964175,
		0.951922, 0.300567, 0.059193,
		-0.305440, 0.916430, 0.258577,
		39.617294, 36.125652, 33.875427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534294, 35.121597, 33.749962>,  <39.831104, 35.484150, 33.694424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534294, 35.121597, 33.749962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714432, 34.766743, 33.790321>,  <40.822514, 34.553829, 33.814537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714432, 34.766743, 33.790321>,  <40.534294, 35.121597, 33.749962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714432, 34.766743, 33.790321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041425, -0.133648, -0.990163,
		0.891892, 0.441737, -0.096937,
		0.450347, -0.887134, 0.100900,
		40.849537, 34.500603, 33.820591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238285, 35.108616, 33.319405>,  <40.534294, 35.121597, 33.749962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238285, 35.108616, 33.319405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091816, 34.741627, 33.381569>,  <41.003933, 34.521431, 33.418869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091816, 34.741627, 33.381569>,  <41.238285, 35.108616, 33.319405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091816, 34.741627, 33.381569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021047, -0.175137, -0.984319,
		0.930307, -0.357164, 0.083441,
		-0.366177, -0.917475, 0.155414,
		40.981964, 34.466385, 33.428192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618160, 34.673313, 32.892689>,  <41.238285, 35.108616, 33.319405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618160, 34.673313, 32.892689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296310, 34.451443, 32.977451>,  <41.103199, 34.318321, 33.028309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296310, 34.451443, 32.977451>,  <41.618160, 34.673313, 32.892689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296310, 34.451443, 32.977451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084191, -0.246702, -0.965428,
		0.587783, -0.794649, 0.151804,
		-0.804626, -0.554681, 0.211909,
		41.054924, 34.285038, 33.041023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784885, 34.059338, 32.682770>,  <41.618160, 34.673313, 32.892689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784885, 34.059338, 32.682770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385536, 34.042248, 32.667629>,  <41.145927, 34.031994, 32.658546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385536, 34.042248, 32.667629>,  <41.784885, 34.059338, 32.682770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385536, 34.042248, 32.667629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046934, -0.237092, -0.970353,
		0.032482, -0.970547, 0.238711,
		-0.998370, -0.042723, -0.037850,
		41.086025, 34.029430, 32.656273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691998, 33.514854, 32.206272>,  <41.784885, 34.059338, 32.682770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691998, 33.514854, 32.206272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334225, 33.693729, 32.207447>,  <41.119560, 33.801056, 32.208153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334225, 33.693729, 32.207447>,  <41.691998, 33.514854, 32.206272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334225, 33.693729, 32.207447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133276, -0.260289, -0.956288,
		-0.426876, -0.855729, 0.292411,
		-0.894435, 0.447188, 0.002937,
		41.065895, 33.827885, 32.208328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274166, 33.023224, 31.923613>,  <41.691998, 33.514854, 32.206272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274166, 33.023224, 31.923613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094498, 33.374840, 31.859695>,  <40.986698, 33.585808, 31.821346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094498, 33.374840, 31.859695>,  <41.274166, 33.023224, 31.923613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094498, 33.374840, 31.859695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023269, -0.190297, -0.981451,
		-0.893143, -0.437121, 0.105930,
		-0.449171, 0.879041, -0.159791,
		40.959747, 33.638554, 31.811758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724022, 32.887230, 31.522331>,  <41.274166, 33.023224, 31.923613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724022, 32.887230, 31.522331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777775, 33.279907, 31.468334>,  <40.810028, 33.515514, 31.435936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777775, 33.279907, 31.468334>,  <40.724022, 32.887230, 31.522331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777775, 33.279907, 31.468334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041792, -0.130490, -0.990568,
		-0.990048, 0.138758, 0.023491,
		0.134384, 0.981692, -0.134990,
		40.818089, 33.574413, 31.427837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203003, 33.128700, 30.962004>,  <40.724022, 32.887230, 31.522331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203003, 33.128700, 30.962004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500916, 33.395611, 30.964350>,  <40.679665, 33.555759, 30.965757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500916, 33.395611, 30.964350>,  <40.203003, 33.128700, 30.962004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500916, 33.395611, 30.964350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094839, 0.114548, -0.988880,
		-0.660533, 0.735945, 0.148598,
		0.744783, 0.667281, 0.005867,
		40.724350, 33.595795, 30.966110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971405, 33.631943, 30.539698>,  <40.203003, 33.128700, 30.962004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971405, 33.631943, 30.539698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365040, 33.702621, 30.547213>,  <40.601219, 33.745029, 30.551722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365040, 33.702621, 30.547213>,  <39.971405, 33.631943, 30.539698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365040, 33.702621, 30.547213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024869, 0.241647, -0.970045,
		-0.175940, 0.954142, 0.242196,
		0.984087, 0.176693, 0.018787,
		40.660267, 33.755630, 30.552849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052746, 34.221802, 29.990513>,  <39.971405, 33.631943, 30.539698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052746, 34.221802, 29.990513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412971, 34.061333, 30.057505>,  <40.629105, 33.965050, 30.097700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412971, 34.061333, 30.057505>,  <40.052746, 34.221802, 29.990513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412971, 34.061333, 30.057505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272834, 0.221626, -0.936186,
		0.338455, 0.888787, 0.309041,
		0.900561, -0.401174, 0.167481,
		40.683140, 33.940979, 30.107748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446789, 34.639366, 29.608852>,  <40.052746, 34.221802, 29.990513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446789, 34.639366, 29.608852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687241, 34.326538, 29.674585>,  <40.831512, 34.138840, 29.714025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687241, 34.326538, 29.674585>,  <40.446789, 34.639366, 29.608852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687241, 34.326538, 29.674585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317248, 0.044805, -0.947284,
		0.733479, 0.621578, 0.275044,
		0.601134, -0.782070, 0.164331,
		40.867580, 34.091919, 29.723885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071079, 34.778641, 29.404535>,  <40.446789, 34.639366, 29.608852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071079, 34.778641, 29.404535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077866, 34.379200, 29.384474>,  <41.081936, 34.139538, 29.372437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077866, 34.379200, 29.384474>,  <41.071079, 34.778641, 29.404535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077866, 34.379200, 29.384474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128631, 0.051924, -0.990332,
		0.991547, 0.010346, 0.129331,
		0.016961, -0.998597, -0.050155,
		41.082954, 34.079620, 29.369427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644344, 34.619778, 28.930502>,  <41.071079, 34.778641, 29.404535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644344, 34.619778, 28.930502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421570, 34.288242, 28.951855>,  <41.287903, 34.089321, 28.964666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421570, 34.288242, 28.951855>,  <41.644344, 34.619778, 28.930502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421570, 34.288242, 28.951855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081117, -0.118248, -0.989665,
		0.826584, -0.546852, 0.133089,
		-0.556938, -0.828837, 0.053383,
		41.254490, 34.039593, 28.967869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969868, 34.022411, 28.485352>,  <41.644344, 34.619778, 28.930502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969868, 34.022411, 28.485352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582294, 33.925964, 28.507353>,  <41.349751, 33.868095, 28.520554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582294, 33.925964, 28.507353>,  <41.969868, 34.022411, 28.485352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582294, 33.925964, 28.507353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040623, -0.064217, -0.997109,
		0.243952, -0.968369, 0.052427,
		-0.968936, -0.241117, 0.055004,
		41.291615, 33.853630, 28.523853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.802334, 33.802700, 29.405149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187817, 33.898251, 29.357481>,  <34.419106, 33.955582, 29.328880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187817, 33.898251, 29.357481>,  <33.802334, 33.802700, 29.405149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187817, 33.898251, 29.357481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158536, -0.152969, 0.975432,
		0.214779, -0.958925, -0.185288,
		0.963709, 0.238877, -0.119170,
		34.476929, 33.969913, 29.321730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121662, 33.274818, 29.742405>,  <33.802334, 33.802700, 29.405149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121662, 33.274818, 29.742405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.376724, 33.581146, 29.709152>,  <34.529762, 33.764942, 29.689199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.376724, 33.581146, 29.709152>,  <34.121662, 33.274818, 29.742405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376724, 33.581146, 29.709152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234088, -0.089823, 0.968057,
		0.733893, -0.636747, -0.236546,
		0.637655, 0.765823, -0.083134,
		34.568020, 33.810894, 29.684212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683064, 33.085842, 30.093719>,  <34.121662, 33.274818, 29.742405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683064, 33.085842, 30.093719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.729820, 33.483082, 30.089888>,  <34.757874, 33.721424, 30.087589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.729820, 33.483082, 30.089888>,  <34.683064, 33.085842, 30.093719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729820, 33.483082, 30.089888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337451, -0.030646, 0.940844,
		0.934057, -0.113211, -0.338705,
		0.116894, 0.993098, -0.009578,
		34.764889, 33.781010, 30.087013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445145, 33.190083, 30.202299>,  <34.683064, 33.085842, 30.093719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445145, 33.190083, 30.202299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.227757, 33.511822, 30.298349>,  <35.097324, 33.704865, 30.355980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.227757, 33.511822, 30.298349>,  <35.445145, 33.190083, 30.202299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227757, 33.511822, 30.298349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495534, 0.076522, 0.865211,
		0.677559, 0.589206, -0.440171,
		-0.543470, 0.804351, 0.240124,
		35.064716, 33.753128, 30.370386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911247, 33.587765, 30.560574>,  <35.445145, 33.190083, 30.202299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911247, 33.587765, 30.560574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.544899, 33.724274, 30.645153>,  <35.325089, 33.806179, 30.695902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.544899, 33.724274, 30.645153>,  <35.911247, 33.587765, 30.560574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544899, 33.724274, 30.645153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293145, 0.208607, 0.933032,
		0.274310, 0.916523, -0.291100,
		-0.915871, 0.341275, 0.211451,
		35.270138, 33.826656, 30.708588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045624, 34.187531, 30.955818>,  <35.911247, 33.587765, 30.560574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045624, 34.187531, 30.955818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658535, 34.106415, 31.015680>,  <35.426281, 34.057747, 31.051598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658535, 34.106415, 31.015680>,  <36.045624, 34.187531, 30.955818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658535, 34.106415, 31.015680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113073, 0.181350, 0.976897,
		-0.225241, 0.962284, -0.152566,
		-0.967719, -0.202786, 0.149656,
		35.368217, 34.045578, 31.060577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762646, 34.716557, 31.361214>,  <36.045624, 34.187531, 30.955818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762646, 34.716557, 31.361214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508926, 34.412552, 31.417839>,  <35.356693, 34.230148, 31.451815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508926, 34.412552, 31.417839>,  <35.762646, 34.716557, 31.361214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508926, 34.412552, 31.417839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069500, 0.238430, 0.968670,
		-0.769956, 0.604589, -0.204057,
		-0.634300, -0.760015, 0.141562,
		35.318638, 34.184547, 31.460308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381142, 34.941429, 31.844744>,  <35.762646, 34.716557, 31.361214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381142, 34.941429, 31.844744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290646, 34.551804, 31.846457>,  <35.236347, 34.318027, 31.847485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290646, 34.551804, 31.846457>,  <35.381142, 34.941429, 31.844744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290646, 34.551804, 31.846457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206175, 0.052185, 0.977123,
		-0.952001, 0.220183, -0.212633,
		-0.226242, -0.974062, 0.004284,
		35.222775, 34.259586, 31.847742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907497, 34.916065, 32.418427>,  <35.381142, 34.941429, 31.844744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907497, 34.916065, 32.418427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029770, 34.540195, 32.357018>,  <35.103134, 34.314674, 32.320171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029770, 34.540195, 32.357018>,  <34.907497, 34.916065, 32.418427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029770, 34.540195, 32.357018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124860, -0.199414, 0.971928,
		-0.943910, -0.277935, -0.178285,
		0.305686, -0.939673, -0.153526,
		35.121475, 34.258293, 32.310959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483887, 34.583115, 32.888851>,  <34.907497, 34.916065, 32.418427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483887, 34.583115, 32.888851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785412, 34.331356, 32.813343>,  <34.966328, 34.180302, 32.768040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785412, 34.331356, 32.813343>,  <34.483887, 34.583115, 32.888851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785412, 34.331356, 32.813343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018241, -0.307210, 0.951467,
		-0.656837, -0.713784, -0.243060,
		0.753812, -0.629392, -0.188766,
		35.011555, 34.142540, 32.756714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266850, 33.919460, 33.167206>,  <34.483887, 34.583115, 32.888851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266850, 33.919460, 33.167206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.664394, 33.900532, 33.127201>,  <34.902920, 33.889175, 33.103199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.664394, 33.900532, 33.127201>,  <34.266850, 33.919460, 33.167206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664394, 33.900532, 33.127201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087940, -0.210651, 0.973598,
		-0.067142, -0.976415, -0.205196,
		0.993860, -0.047324, -0.100009,
		34.962551, 33.886333, 33.097198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577301, 33.229836, 33.420383>,  <34.266850, 33.919460, 33.167206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577301, 33.229836, 33.420383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.849586, 33.517403, 33.476646>,  <35.012959, 33.689941, 33.510403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.849586, 33.517403, 33.476646>,  <34.577301, 33.229836, 33.420383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849586, 33.517403, 33.476646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018622, -0.174963, 0.984399,
		0.732310, -0.672716, -0.105713,
		0.680716, 0.718917, 0.140655,
		35.053802, 33.733078, 33.518845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078972, 32.910034, 33.894493>,  <34.577301, 33.229836, 33.420383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078972, 32.910034, 33.894493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148033, 33.301533, 33.938778>,  <35.189468, 33.536430, 33.965347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148033, 33.301533, 33.938778>,  <35.078972, 32.910034, 33.894493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148033, 33.301533, 33.938778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049871, -0.120938, 0.991407,
		0.983720, -0.165645, -0.069691,
		0.172650, 0.978742, 0.110709,
		35.199829, 33.595154, 33.971989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559704, 32.883442, 34.403332>,  <35.078972, 32.910034, 33.894493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559704, 32.883442, 34.403332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461750, 33.271008, 34.417389>,  <35.402977, 33.503548, 34.425823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461750, 33.271008, 34.417389>,  <35.559704, 32.883442, 34.403332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461750, 33.271008, 34.417389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063952, -0.052312, 0.996581,
		0.967441, 0.241798, 0.074775,
		-0.244883, 0.968916, 0.035145,
		35.388287, 33.561684, 34.427933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239513, 32.710255, 34.144341>,  <35.559704, 32.883442, 34.403332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239513, 32.710255, 34.144341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378937, 32.336544, 34.114304>,  <36.462589, 32.112320, 34.096283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378937, 32.336544, 34.114304>,  <36.239513, 32.710255, 34.144341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378937, 32.336544, 34.114304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169264, 0.141541, -0.975354,
		0.921876, 0.327259, 0.207475,
		0.348560, -0.934274, -0.075090,
		36.483505, 32.056263, 34.091778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858658, 32.652195, 33.793823>,  <36.239513, 32.710255, 34.144341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858658, 32.652195, 33.793823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703339, 32.285229, 33.759003>,  <36.610146, 32.065048, 33.738110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703339, 32.285229, 33.759003>,  <36.858658, 32.652195, 33.793823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703339, 32.285229, 33.759003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228310, -0.004257, -0.973579,
		0.892804, -0.397912, 0.211108,
		-0.388297, -0.917414, -0.087047,
		36.586849, 32.010006, 33.732887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228115, 32.346775, 33.246162>,  <36.858658, 32.652195, 33.793823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228115, 32.346775, 33.246162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914036, 32.101379, 33.279835>,  <36.725586, 31.954142, 33.300037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914036, 32.101379, 33.279835>,  <37.228115, 32.346775, 33.246162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914036, 32.101379, 33.279835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068859, -0.221605, -0.972702,
		0.615398, -0.757972, 0.216249,
		-0.785202, -0.613490, 0.084182,
		36.678474, 31.917332, 33.305088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457935, 31.652359, 32.882858>,  <37.228115, 32.346775, 33.246162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457935, 31.652359, 32.882858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059090, 31.681067, 32.892826>,  <36.819782, 31.698292, 32.898808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059090, 31.681067, 32.892826>,  <37.457935, 31.652359, 32.882858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059090, 31.681067, 32.892826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049025, -0.357273, -0.932712,
		-0.058036, -0.931238, 0.359759,
		-0.997110, 0.071768, 0.024919,
		36.759956, 31.702597, 32.900303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313496, 31.014446, 32.614834>,  <37.457935, 31.652359, 32.882858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313496, 31.014446, 32.614834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.987144, 31.243690, 32.584145>,  <36.791332, 31.381237, 32.565731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.987144, 31.243690, 32.584145>,  <37.313496, 31.014446, 32.614834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987144, 31.243690, 32.584145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195153, -0.397828, -0.896464,
		-0.544295, -0.716434, 0.436424,
		-0.815879, 0.573110, -0.076721,
		36.742382, 31.415623, 32.561127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811260, 30.569551, 32.284046>,  <37.313496, 31.014446, 32.614834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811260, 30.569551, 32.284046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671349, 30.942842, 32.251202>,  <36.587402, 31.166817, 32.231495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671349, 30.942842, 32.251202>,  <36.811260, 30.569551, 32.284046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671349, 30.942842, 32.251202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173132, -0.150528, -0.973327,
		-0.920696, -0.326231, 0.214223,
		-0.349776, 0.933228, -0.082110,
		36.566418, 31.222811, 32.226570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256790, 30.537809, 31.794392>,  <36.811260, 30.569551, 32.284046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256790, 30.537809, 31.794392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388500, 30.915417, 31.786373>,  <36.467525, 31.141981, 31.781561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388500, 30.915417, 31.786373>,  <36.256790, 30.537809, 31.794392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388500, 30.915417, 31.786373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121401, 0.021271, -0.992375,
		-0.936395, 0.329203, 0.121609,
		0.329280, 0.944019, -0.020048,
		36.487286, 31.198622, 31.780359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908535, 30.827148, 31.204517>,  <36.256790, 30.537809, 31.794392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908535, 30.827148, 31.204517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220329, 31.063959, 31.286396>,  <36.407406, 31.206045, 31.335524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220329, 31.063959, 31.286396>,  <35.908535, 30.827148, 31.204517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220329, 31.063959, 31.286396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032261, 0.288396, -0.956968,
		-0.625585, 0.752549, 0.205702,
		0.779489, 0.592028, 0.204694,
		36.454174, 31.241568, 31.347805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766029, 31.403786, 30.831839>,  <35.908535, 30.827148, 31.204517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766029, 31.403786, 30.831839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162037, 31.429865, 30.881830>,  <36.399639, 31.445513, 30.911825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162037, 31.429865, 30.881830>,  <35.766029, 31.403786, 30.831839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162037, 31.429865, 30.881830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104887, 0.251628, -0.962124,
		-0.094178, 0.965625, 0.242277,
		0.990015, 0.065199, 0.124979,
		36.459042, 31.449425, 30.919325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947815, 32.071533, 30.652164>,  <35.766029, 31.403786, 30.831839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947815, 32.071533, 30.652164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284626, 31.858437, 30.618277>,  <36.486713, 31.730577, 30.597944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284626, 31.858437, 30.618277>,  <35.947815, 32.071533, 30.652164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284626, 31.858437, 30.618277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099899, 0.308332, -0.946019,
		0.530109, 0.788107, 0.312844,
		0.842024, -0.532746, -0.084719,
		36.537231, 31.698612, 30.592861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389194, 32.528835, 30.401611>,  <35.947815, 32.071533, 30.652164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389194, 32.528835, 30.401611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.511906, 32.156868, 30.320484>,  <36.585533, 31.933687, 30.271809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.511906, 32.156868, 30.320484>,  <36.389194, 32.528835, 30.401611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511906, 32.156868, 30.320484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021726, 0.219877, -0.975286,
		0.951533, 0.294789, 0.087657,
		0.306777, -0.929921, -0.202816,
		36.603939, 31.877892, 30.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054432, 32.570793, 30.136497>,  <36.389194, 32.528835, 30.401611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054432, 32.570793, 30.136497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934544, 32.221325, 29.983210>,  <36.862610, 32.011642, 29.891237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934544, 32.221325, 29.983210>,  <37.054432, 32.570793, 30.136497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934544, 32.221325, 29.983210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399373, 0.249895, -0.882073,
		0.866410, -0.417428, 0.274022,
		-0.299725, -0.873674, -0.383221,
		36.844627, 31.959223, 29.868244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492516, 32.510891, 29.516937>,  <37.054432, 32.570793, 30.136497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492516, 32.510891, 29.516937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.222656, 32.219231, 29.471016>,  <37.060741, 32.044235, 29.443462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.222656, 32.219231, 29.471016>,  <37.492516, 32.510891, 29.516937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222656, 32.219231, 29.471016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034644, 0.124080, -0.991667,
		0.737324, -0.673006, -0.058449,
		-0.674650, -0.729156, -0.114803,
		37.020260, 32.000484, 29.436575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704357, 31.978485, 28.971954>,  <37.492516, 32.510891, 29.516937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704357, 31.978485, 28.971954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306820, 31.934753, 28.979239>,  <37.068298, 31.908514, 28.983608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306820, 31.934753, 28.979239>,  <37.704357, 31.978485, 28.971954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306820, 31.934753, 28.979239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022255, 0.035893, -0.999108,
		0.108581, -0.993357, -0.038105,
		-0.993839, -0.109333, 0.018210,
		37.008667, 31.901955, 28.984701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114311, 31.334341, 28.794245>,  <37.704357, 31.978485, 28.971954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114311, 31.334341, 28.794245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480110, 31.189703, 28.721642>,  <38.699589, 31.102921, 28.678080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480110, 31.189703, 28.721642>,  <38.114311, 31.334341, 28.794245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480110, 31.189703, 28.721642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182336, -0.032146, 0.982711,
		-0.361179, -0.931781, 0.036535,
		0.914496, -0.361596, -0.181508,
		38.754459, 31.081224, 28.667189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209213, 30.724705, 29.102150>,  <38.114311, 31.334341, 28.794245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209213, 30.724705, 29.102150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.584106, 30.863609, 29.089455>,  <38.809040, 30.946953, 29.081837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.584106, 30.863609, 29.089455>,  <38.209213, 30.724705, 29.102150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584106, 30.863609, 29.089455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027497, 0.017140, 0.999475,
		0.347624, -0.937611, 0.006515,
		0.937231, 0.347262, -0.031740,
		38.865276, 30.967789, 29.079933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512794, 30.415276, 29.672970>,  <38.209213, 30.724705, 29.102150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512794, 30.415276, 29.672970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805695, 30.666065, 29.566607>,  <38.981434, 30.816540, 29.502789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805695, 30.666065, 29.566607>,  <38.512794, 30.415276, 29.672970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805695, 30.666065, 29.566607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285157, 0.072309, 0.955749,
		0.618458, -0.775676, -0.125838,
		0.732253, 0.626975, -0.265910,
		39.025372, 30.854158, 29.486834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118797, 30.144350, 29.942738>,  <38.512794, 30.415276, 29.672970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118797, 30.144350, 29.942738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182621, 30.535120, 29.885942>,  <39.220917, 30.769581, 29.851866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182621, 30.535120, 29.885942>,  <39.118797, 30.144350, 29.942738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182621, 30.535120, 29.885942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271419, 0.094874, 0.957774,
		0.949142, -0.191364, -0.250017,
		0.159564, 0.976923, -0.141989,
		39.230492, 30.828197, 29.843346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817894, 30.260801, 30.217140>,  <39.118797, 30.144350, 29.942738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817894, 30.260801, 30.217140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667511, 30.631386, 30.209852>,  <39.577282, 30.853737, 30.205479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667511, 30.631386, 30.209852>,  <39.817894, 30.260801, 30.217140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667511, 30.631386, 30.209852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533111, 0.232333, 0.813520,
		0.757926, 0.296132, -0.581252,
		-0.375954, 0.926459, -0.018220,
		39.554726, 30.909323, 30.204386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428413, 30.739891, 30.337694>,  <39.817894, 30.260801, 30.217140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428413, 30.739891, 30.337694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.096462, 30.951374, 30.408997>,  <39.897293, 31.078264, 30.451778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.096462, 30.951374, 30.408997>,  <40.428413, 30.739891, 30.337694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096462, 30.951374, 30.408997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388904, 0.319042, 0.864272,
		0.400074, 0.786564, -0.470381,
		-0.829876, 0.528706, 0.178258,
		39.847500, 31.109985, 30.462475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672272, 31.327139, 30.604752>,  <40.428413, 30.739891, 30.337694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672272, 31.327139, 30.604752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290462, 31.296093, 30.719893>,  <40.061378, 31.277466, 30.788977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290462, 31.296093, 30.719893>,  <40.672272, 31.327139, 30.604752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290462, 31.296093, 30.719893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265790, 0.215842, 0.939557,
		-0.135054, 0.973339, -0.185397,
		-0.954524, -0.077614, 0.287854,
		40.004105, 31.272808, 30.806250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547546, 31.965227, 30.988205>,  <40.672272, 31.327139, 30.604752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547546, 31.965227, 30.988205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261917, 31.708099, 31.099112>,  <40.090538, 31.553822, 31.165655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261917, 31.708099, 31.099112>,  <40.547546, 31.965227, 30.988205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261917, 31.708099, 31.099112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141444, 0.255416, 0.956429,
		-0.685631, 0.722181, -0.091464,
		-0.714076, -0.642820, 0.277269,
		40.047695, 31.515253, 31.182293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204868, 32.307632, 31.532997>,  <40.547546, 31.965227, 30.988205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204868, 32.307632, 31.532997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.130032, 31.918173, 31.585150>,  <40.085129, 31.684496, 31.616442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.130032, 31.918173, 31.585150>,  <40.204868, 32.307632, 31.532997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130032, 31.918173, 31.585150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031400, 0.126729, 0.991440,
		-0.981840, 0.189584, 0.006863,
		-0.187092, -0.973652, 0.130381,
		40.073906, 31.626078, 31.624264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778767, 32.264324, 32.029781>,  <40.204868, 32.307632, 31.532997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778767, 32.264324, 32.029781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935722, 31.896421, 32.033478>,  <40.029896, 31.675680, 32.035694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935722, 31.896421, 32.033478>,  <39.778767, 32.264324, 32.029781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935722, 31.896421, 32.033478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058034, -0.014731, 0.998206,
		-0.917966, -0.392223, -0.059157,
		0.392390, -0.919752, 0.009239,
		40.053440, 31.620495, 32.036251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321018, 31.845881, 32.549843>,  <39.778767, 32.264324, 32.029781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321018, 31.845881, 32.549843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670300, 31.655184, 32.509365>,  <39.879868, 31.540766, 32.485077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670300, 31.655184, 32.509365>,  <39.321018, 31.845881, 32.549843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670300, 31.655184, 32.509365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097599, -0.032372, 0.994699,
		-0.477490, -0.878447, 0.018263,
		0.873200, -0.476742, -0.101193,
		39.932259, 31.512161, 32.479008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261147, 31.258177, 32.917801>,  <39.321018, 31.845881, 32.549843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261147, 31.258177, 32.917801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658150, 31.290781, 32.881405>,  <39.896351, 31.310345, 32.859566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658150, 31.290781, 32.881405>,  <39.261147, 31.258177, 32.917801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658150, 31.290781, 32.881405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094697, -0.042810, 0.994585,
		0.077176, -0.995752, -0.050208,
		0.992510, 0.081513, -0.090991,
		39.955902, 31.315235, 32.854107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508553, 30.981514, 33.491192>,  <39.261147, 31.258177, 32.917801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508553, 30.981514, 33.491192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851677, 31.142700, 33.363583>,  <40.057552, 31.239412, 33.287018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851677, 31.142700, 33.363583>,  <39.508553, 30.981514, 33.491192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851677, 31.142700, 33.363583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334965, 0.032449, 0.941672,
		0.389815, -0.914639, -0.107145,
		0.857813, 0.402967, -0.319021,
		40.109020, 31.263590, 33.267876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182083, 30.532455, 33.672768>,  <39.508553, 30.981514, 33.491192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182083, 30.532455, 33.672768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266396, 30.921726, 33.635899>,  <40.316982, 31.155289, 33.613777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266396, 30.921726, 33.635899>,  <40.182083, 30.532455, 33.672768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266396, 30.921726, 33.635899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299047, 0.025572, 0.953896,
		0.930667, -0.228629, -0.285635,
		0.210784, 0.973178, -0.092170,
		40.329632, 31.213680, 33.608246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.935997, 33.490032, 27.834402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561619, 33.569687, 27.950577>,  <41.336990, 33.617477, 28.020281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561619, 33.569687, 27.950577>,  <41.935997, 33.490032, 27.834402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561619, 33.569687, 27.950577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313074, -0.092939, -0.945170,
		-0.161222, -0.975555, 0.149329,
		-0.935945, 0.199133, 0.290437,
		41.280834, 33.629425, 28.037708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391834, 32.932171, 27.719208>,  <41.935997, 33.490032, 27.834402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391834, 32.932171, 27.719208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.188255, 33.276360, 27.728687>,  <41.066109, 33.482872, 27.734375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.188255, 33.276360, 27.728687>,  <41.391834, 32.932171, 27.719208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188255, 33.276360, 27.728687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281148, -0.140143, -0.949377,
		-0.813591, -0.489845, 0.313245,
		-0.508946, 0.860472, 0.023700,
		41.035572, 33.534500, 27.735798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834633, 32.755062, 27.352484>,  <41.391834, 32.932171, 27.719208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834633, 32.755062, 27.352484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843716, 33.154911, 27.346313>,  <40.849163, 33.394821, 27.342611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843716, 33.154911, 27.346313>,  <40.834633, 32.755062, 27.352484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843716, 33.154911, 27.346313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423242, -0.004369, -0.906006,
		-0.905732, 0.027099, 0.422984,
		0.022704, 0.999623, -0.015426,
		40.850529, 33.454800, 27.341686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084690, 32.947205, 27.199236>,  <40.834633, 32.755062, 27.352484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084690, 32.947205, 27.199236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.350353, 33.234859, 27.117523>,  <40.509750, 33.407452, 27.068495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.350353, 33.234859, 27.117523>,  <40.084690, 32.947205, 27.199236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350353, 33.234859, 27.117523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294861, 0.000885, -0.955540,
		-0.686985, 0.694866, 0.212633,
		0.664160, 0.719139, -0.204281,
		40.549603, 33.450600, 27.056238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664478, 33.409473, 26.737616>,  <40.084690, 32.947205, 27.199236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664478, 33.409473, 26.737616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049973, 33.500408, 26.681702>,  <40.281269, 33.554970, 26.648153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049973, 33.500408, 26.681702>,  <39.664478, 33.409473, 26.737616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049973, 33.500408, 26.681702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134516, -0.038583, -0.990160,
		-0.230490, 0.973052, -0.006604,
		0.963732, 0.227334, -0.139784,
		40.339092, 33.568607, 26.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700859, 34.043320, 26.322897>,  <39.664478, 33.409473, 26.737616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700859, 34.043320, 26.322897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060486, 33.874935, 26.274778>,  <40.276260, 33.773903, 26.245907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060486, 33.874935, 26.274778>,  <39.700859, 34.043320, 26.322897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060486, 33.874935, 26.274778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140741, -0.017715, -0.989888,
		0.414573, 0.906906, -0.075174,
		0.899067, -0.420960, -0.120295,
		40.330208, 33.748646, 26.238689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184788, 34.452152, 25.814552>,  <39.700859, 34.043320, 26.322897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184788, 34.452152, 25.814552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.333286, 34.080765, 25.818895>,  <40.422386, 33.857933, 25.821501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.333286, 34.080765, 25.818895>,  <40.184788, 34.452152, 25.814552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333286, 34.080765, 25.818895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158620, -0.074938, -0.984492,
		0.914886, 0.363766, -0.175094,
		0.371246, -0.928471, 0.010859,
		40.444660, 33.802223, 25.822153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528801, 34.364586, 25.198889>,  <40.184788, 34.452152, 25.814552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528801, 34.364586, 25.198889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514591, 33.979137, 25.304852>,  <40.506065, 33.747868, 25.368429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514591, 33.979137, 25.304852>,  <40.528801, 34.364586, 25.198889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514591, 33.979137, 25.304852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235630, -0.249525, -0.939263,
		0.971194, -0.095783, -0.218194,
		-0.035521, -0.963620, 0.264907,
		40.503937, 33.690052, 25.384323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868187, 33.936760, 24.636267>,  <40.528801, 34.364586, 25.198889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868187, 33.936760, 24.636267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.687824, 33.651993, 24.851620>,  <40.579605, 33.481133, 24.980831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.687824, 33.651993, 24.851620>,  <40.868187, 33.936760, 24.636267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687824, 33.651993, 24.851620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144910, -0.536791, -0.831178,
		0.880728, -0.452803, 0.138880,
		-0.450909, -0.711917, 0.538383,
		40.552551, 33.438419, 25.013134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220276, 33.344307, 24.457916>,  <40.868187, 33.936760, 24.636267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220276, 33.344307, 24.457916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847935, 33.294228, 24.595224>,  <40.624531, 33.264179, 24.677608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847935, 33.294228, 24.595224>,  <41.220276, 33.344307, 24.457916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847935, 33.294228, 24.595224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224510, -0.545223, -0.807667,
		0.288278, -0.828889, 0.479415,
		-0.930855, -0.125199, 0.343270,
		40.568680, 33.256668, 24.698206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068897, 32.677734, 24.271427>,  <41.220276, 33.344307, 24.457916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068897, 32.677734, 24.271427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719570, 32.851307, 24.359985>,  <40.509972, 32.955452, 24.413120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719570, 32.851307, 24.359985>,  <41.068897, 32.677734, 24.271427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719570, 32.851307, 24.359985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375560, -0.310269, -0.873320,
		-0.310269, -0.845835, 0.433931,
		0.873320, -0.433931, -0.221394,
		40.457573, 32.981487, 24.426403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654613, 32.215977, 24.209375>,  <41.068897, 32.677734, 24.271427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654613, 32.215977, 24.209375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.450104, 32.556087, 24.159365>,  <40.327400, 32.760155, 24.129358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.450104, 32.556087, 24.159365>,  <40.654613, 32.215977, 24.209375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450104, 32.556087, 24.159365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120243, -0.214817, -0.969224,
		-0.850967, -0.480502, 0.212069,
		-0.511270, 0.850277, -0.125025,
		40.296722, 32.811172, 24.121857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877678, 32.110947, 23.968216>,  <40.654613, 32.215977, 24.209375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877678, 32.110947, 23.968216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036793, 32.455532, 23.841946>,  <40.132263, 32.662281, 23.766184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036793, 32.455532, 23.841946>,  <39.877678, 32.110947, 23.968216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036793, 32.455532, 23.841946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133698, -0.285967, -0.948866,
		-0.907683, 0.419654, 0.001420,
		0.397789, 0.861460, -0.315674,
		40.156128, 32.713970, 23.747244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400417, 32.425243, 23.463306>,  <39.877678, 32.110947, 23.968216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400417, 32.425243, 23.463306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782730, 32.519474, 23.392889>,  <40.012115, 32.576012, 23.350639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782730, 32.519474, 23.392889>,  <39.400417, 32.425243, 23.463306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782730, 32.519474, 23.392889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117266, -0.243665, -0.962744,
		-0.269699, 0.940813, -0.205264,
		0.955778, 0.235581, -0.176041,
		40.069462, 32.590149, 23.340076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845604, 31.925877, 23.149242>,  <39.400417, 32.425243, 23.463306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845604, 31.925877, 23.149242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507122, 31.714865, 23.179302>,  <38.304031, 31.588257, 23.197338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507122, 31.714865, 23.179302>,  <38.845604, 31.925877, 23.149242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507122, 31.714865, 23.179302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200588, -0.184708, 0.962106,
		-0.493660, 0.829213, 0.262118,
		-0.846206, -0.527531, 0.075148,
		38.253262, 31.556606, 23.201847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499157, 32.106560, 23.721029>,  <38.845604, 31.925877, 23.149242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499157, 32.106560, 23.721029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374443, 31.731520, 23.659462>,  <38.299614, 31.506495, 23.622520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374443, 31.731520, 23.659462>,  <38.499157, 32.106560, 23.721029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374443, 31.731520, 23.659462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071071, -0.184555, 0.980249,
		-0.947491, 0.294688, 0.124178,
		-0.311785, -0.937603, -0.153920,
		38.280907, 31.450239, 23.613285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944645, 32.014809, 24.218966>,  <38.499157, 32.106560, 23.721029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944645, 32.014809, 24.218966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100243, 31.666395, 24.098980>,  <38.193604, 31.457346, 24.026989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100243, 31.666395, 24.098980>,  <37.944645, 32.014809, 24.218966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100243, 31.666395, 24.098980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218571, -0.229048, 0.948559,
		-0.894935, -0.434550, 0.101284,
		0.388997, -0.871036, -0.299963,
		38.216942, 31.405085, 24.008991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646675, 31.648443, 24.651911>,  <37.944645, 32.014809, 24.218966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646675, 31.648443, 24.651911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927082, 31.399046, 24.513439>,  <38.095325, 31.249409, 24.430357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927082, 31.399046, 24.513439>,  <37.646675, 31.648443, 24.651911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927082, 31.399046, 24.513439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109966, -0.385110, 0.916296,
		-0.704619, -0.680403, -0.201404,
		0.701013, -0.623492, -0.346177,
		38.137386, 31.211998, 24.409586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534698, 30.987068, 24.819609>,  <37.646675, 31.648443, 24.651911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534698, 30.987068, 24.819609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927650, 30.964371, 24.748371>,  <38.163422, 30.950752, 24.705629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927650, 30.964371, 24.748371>,  <37.534698, 30.987068, 24.819609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927650, 30.964371, 24.748371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155378, -0.281720, 0.946832,
		-0.103899, -0.957817, -0.267938,
		0.982376, -0.056743, -0.178094,
		38.222363, 30.947348, 24.694942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751263, 30.409538, 25.238085>,  <37.534698, 30.987068, 24.819609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751263, 30.409538, 25.238085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092800, 30.603340, 25.161964>,  <38.297722, 30.719622, 25.116293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092800, 30.603340, 25.161964>,  <37.751263, 30.409538, 25.238085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092800, 30.603340, 25.161964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323151, -0.206771, 0.923482,
		0.408081, -0.850002, -0.333117,
		0.853840, 0.484503, -0.190299,
		38.348953, 30.748692, 25.104876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188305, 29.928074, 25.413952>,  <37.751263, 30.409538, 25.238085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188305, 29.928074, 25.413952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394787, 30.268375, 25.453463>,  <38.518677, 30.472555, 25.477169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394787, 30.268375, 25.453463>,  <38.188305, 29.928074, 25.413952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394787, 30.268375, 25.453463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079838, -0.162628, 0.983452,
		0.852738, -0.499772, -0.151871,
		0.516200, 0.850752, 0.098778,
		38.549648, 30.523602, 25.483095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707085, 29.675579, 25.876245>,  <38.188305, 29.928074, 25.413952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707085, 29.675579, 25.876245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683258, 30.074480, 25.858654>,  <38.668961, 30.313822, 25.848099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683258, 30.074480, 25.858654>,  <38.707085, 29.675579, 25.876245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683258, 30.074480, 25.858654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301903, 0.059994, 0.951449,
		0.951476, 0.043401, -0.304648,
		-0.059571, 0.997255, -0.043980,
		38.665386, 30.373657, 25.845461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222240, 29.917910, 26.228857>,  <38.707085, 29.675579, 25.876245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222240, 29.917910, 26.228857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978466, 30.231928, 26.273199>,  <38.832203, 30.420340, 26.299805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978466, 30.231928, 26.273199>,  <39.222240, 29.917910, 26.228857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978466, 30.231928, 26.273199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316951, 0.113076, 0.941677,
		0.726725, 0.609029, -0.317734,
		-0.609437, 0.785046, 0.110857,
		38.795635, 30.467442, 26.306456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542049, 30.371315, 26.646156>,  <39.222240, 29.917910, 26.228857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542049, 30.371315, 26.646156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172073, 30.522486, 26.662437>,  <38.950089, 30.613188, 26.672205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172073, 30.522486, 26.662437>,  <39.542049, 30.371315, 26.646156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172073, 30.522486, 26.662437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152939, 0.271986, 0.950070,
		0.347987, 0.884983, -0.309371,
		-0.924940, 0.377927, 0.040701,
		38.894592, 30.635864, 26.674648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655273, 31.068655, 26.843019>,  <39.542049, 30.371315, 26.646156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655273, 31.068655, 26.843019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279720, 30.959639, 26.927130>,  <39.054386, 30.894228, 26.977596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279720, 30.959639, 26.927130>,  <39.655273, 31.068655, 26.843019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279720, 30.959639, 26.927130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094841, 0.382413, 0.919111,
		-0.330908, 0.882883, -0.333194,
		-0.938885, -0.272541, 0.210277,
		38.998055, 30.877876, 26.990213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284512, 31.653069, 27.160633>,  <39.655273, 31.068655, 26.843019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284512, 31.653069, 27.160633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096817, 31.322466, 27.285023>,  <38.984200, 31.124104, 27.359655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096817, 31.322466, 27.285023>,  <39.284512, 31.653069, 27.160633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096817, 31.322466, 27.285023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165312, 0.263709, 0.950331,
		-0.867464, 0.497333, 0.012891,
		-0.469232, -0.826509, 0.310973,
		38.956047, 31.074512, 27.378315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854031, 31.851950, 27.721436>,  <39.284512, 31.653069, 27.160633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854031, 31.851950, 27.721436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877007, 31.456894, 27.779772>,  <38.890793, 31.219860, 27.814774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877007, 31.456894, 27.779772>,  <38.854031, 31.851950, 27.721436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877007, 31.456894, 27.779772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012090, 0.146757, 0.989099,
		-0.998276, -0.055052, 0.020370,
		0.057441, -0.987640, 0.145838,
		38.894238, 31.160603, 27.823523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350685, 31.722996, 28.168137>,  <38.854031, 31.851950, 27.721436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350685, 31.722996, 28.168137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577713, 31.395159, 28.199471>,  <38.713928, 31.198458, 28.218271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577713, 31.395159, 28.199471>,  <38.350685, 31.722996, 28.168137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577713, 31.395159, 28.199471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091427, 0.157298, 0.983310,
		-0.818235, -0.550933, 0.164209,
		0.567567, -0.819592, 0.078337,
		38.747982, 31.149281, 28.222971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607597, 31.587572, 28.299477>,  <38.350685, 31.722996, 28.168137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607597, 31.587572, 28.299477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.237949, 31.706106, 28.395971>,  <37.016163, 31.777227, 28.453869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.237949, 31.706106, 28.395971>,  <37.607597, 31.587572, 28.299477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237949, 31.706106, 28.395971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227449, 0.080709, -0.970440,
		-0.307048, -0.951667, -0.007183,
		-0.924115, 0.296337, 0.241237,
		36.960716, 31.795008, 28.468342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150692, 31.236563, 27.866949>,  <37.607597, 31.587572, 28.299477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150692, 31.236563, 27.866949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933659, 31.557278, 27.967136>,  <36.803436, 31.749706, 28.027248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933659, 31.557278, 27.967136>,  <37.150692, 31.236563, 27.866949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933659, 31.557278, 27.967136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289172, 0.101662, -0.951864,
		-0.788656, -0.588898, 0.176694,
		-0.542588, 0.801788, 0.250469,
		36.770882, 31.797813, 28.042276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522602, 31.156490, 27.451044>,  <37.150692, 31.236563, 27.866949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522602, 31.156490, 27.451044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.534195, 31.539064, 27.567244>,  <36.541153, 31.768608, 27.636963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.534195, 31.539064, 27.567244>,  <36.522602, 31.156490, 27.451044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534195, 31.539064, 27.567244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428268, 0.274480, -0.860957,
		-0.903187, -0.099456, 0.417567,
		0.028987, 0.956436, 0.290501,
		36.542892, 31.825994, 27.654394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846954, 31.411007, 27.245060>,  <36.522602, 31.156490, 27.451044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846954, 31.411007, 27.245060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.056896, 31.746197, 27.304832>,  <36.182861, 31.947309, 27.340696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.056896, 31.746197, 27.304832>,  <35.846954, 31.411007, 27.245060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056896, 31.746197, 27.304832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535351, 0.461462, -0.707427,
		-0.661761, 0.291298, 0.690809,
		0.524854, 0.837973, 0.149431,
		36.214352, 31.997589, 27.349661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384846, 31.927561, 27.157192>,  <35.846954, 31.411007, 27.245060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384846, 31.927561, 27.157192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748962, 32.082615, 27.099070>,  <35.967430, 32.175648, 27.064196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748962, 32.082615, 27.099070>,  <35.384846, 31.927561, 27.157192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748962, 32.082615, 27.099070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289863, 0.346222, -0.892250,
		-0.295558, 0.854324, 0.427523,
		0.910288, 0.387635, -0.145309,
		36.022049, 32.198906, 27.055477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310028, 32.504063, 26.845566>,  <35.384846, 31.927561, 27.157192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310028, 32.504063, 26.845566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692551, 32.424038, 26.760292>,  <35.922066, 32.376022, 26.709127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692551, 32.424038, 26.760292>,  <35.310028, 32.504063, 26.845566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692551, 32.424038, 26.760292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168466, 0.218860, -0.961103,
		0.238937, 0.955027, 0.175594,
		0.956310, -0.200062, -0.213184,
		35.979443, 32.364021, 26.696337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402203, 32.948318, 26.336201>,  <35.310028, 32.504063, 26.845566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402203, 32.948318, 26.336201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699310, 32.687077, 26.277205>,  <35.877575, 32.530331, 26.241808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699310, 32.687077, 26.277205>,  <35.402203, 32.948318, 26.336201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699310, 32.687077, 26.277205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070159, 0.294985, -0.952923,
		0.665866, 0.697450, 0.264926,
		0.742765, -0.653106, -0.147488,
		35.922138, 32.491146, 26.232958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627075, 33.623440, 26.384247>,  <35.402203, 32.948318, 26.336201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627075, 33.623440, 26.384247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429871, 33.964943, 26.451225>,  <35.311550, 34.169846, 26.491413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429871, 33.964943, 26.451225>,  <35.627075, 33.623440, 26.384247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429871, 33.964943, 26.451225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024307, -0.178871, 0.983572,
		0.869685, 0.488979, 0.067433,
		-0.493008, 0.853759, 0.167446,
		35.281967, 34.221069, 26.501459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992085, 33.946583, 27.016928>,  <35.627075, 33.623440, 26.384247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992085, 33.946583, 27.016928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630230, 34.107269, 26.959995>,  <35.413116, 34.203682, 26.925837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630230, 34.107269, 26.959995>,  <35.992085, 33.946583, 27.016928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630230, 34.107269, 26.959995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157893, -0.005709, 0.987440,
		0.395856, 0.915747, 0.068593,
		-0.904637, 0.401714, -0.142331,
		35.358837, 34.227783, 26.917295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930683, 34.552845, 27.464216>,  <35.992085, 33.946583, 27.016928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930683, 34.552845, 27.464216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558540, 34.429268, 27.385239>,  <35.335255, 34.355122, 27.337852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558540, 34.429268, 27.385239>,  <35.930683, 34.552845, 27.464216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558540, 34.429268, 27.385239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171504, -0.109271, 0.979105,
		-0.324061, 0.944783, 0.048677,
		-0.930360, -0.308942, -0.197445,
		35.279430, 34.336586, 27.326006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512699, 34.922840, 27.916283>,  <35.930683, 34.552845, 27.464216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512699, 34.922840, 27.916283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270092, 34.628082, 27.796865>,  <35.124527, 34.451229, 27.725216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270092, 34.628082, 27.796865>,  <35.512699, 34.922840, 27.916283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270092, 34.628082, 27.796865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231532, -0.195520, 0.952977,
		-0.760613, 0.647118, -0.052029,
		-0.606516, -0.736893, -0.298543,
		35.088139, 34.407013, 27.707302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820759, 35.122200, 28.173403>,  <35.512699, 34.922840, 27.916283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820759, 35.122200, 28.173403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823647, 34.723793, 28.137871>,  <34.825378, 34.484749, 28.116552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823647, 34.723793, 28.137871>,  <34.820759, 35.122200, 28.173403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823647, 34.723793, 28.137871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271944, -0.087438, 0.958332,
		-0.962286, 0.017240, -0.271493,
		0.007217, -0.996021, -0.088829,
		34.825813, 34.424988, 28.111221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154457, 34.881561, 28.449879>,  <34.820759, 35.122200, 28.173403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154457, 34.881561, 28.449879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419510, 34.582069, 28.457073>,  <34.578541, 34.402374, 28.461390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419510, 34.582069, 28.457073>,  <34.154457, 34.881561, 28.449879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419510, 34.582069, 28.457073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286187, -0.230935, 0.929928,
		-0.692113, -0.621344, -0.367301,
		0.662628, -0.748732, 0.017987,
		34.618298, 34.357449, 28.462469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797455, 34.314980, 28.819679>,  <34.154457, 34.881561, 28.449879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797455, 34.314980, 28.819679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192974, 34.260895, 28.844990>,  <34.430286, 34.228443, 28.860176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192974, 34.260895, 28.844990>,  <33.797455, 34.314980, 28.819679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192974, 34.260895, 28.844990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087935, -0.184987, 0.978799,
		-0.120637, -0.973395, -0.194804,
		0.988794, -0.135210, 0.063279,
		34.489613, 34.220329, 28.863974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.951221, 35.887665, 23.907713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137829, 35.547127, 24.003685>,  <39.249794, 35.342804, 24.061268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137829, 35.547127, 24.003685>,  <38.951221, 35.887665, 23.907713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137829, 35.547127, 24.003685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014393, 0.278528, 0.960320,
		-0.884393, -0.444556, 0.142192,
		0.466521, -0.851347, 0.239930,
		39.277786, 35.291721, 24.075665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679302, 35.655899, 24.520348>,  <38.951221, 35.887665, 23.907713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679302, 35.655899, 24.520348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038128, 35.479927, 24.503653>,  <39.253422, 35.374344, 24.493635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038128, 35.479927, 24.503653>,  <38.679302, 35.655899, 24.520348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038128, 35.479927, 24.503653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182019, 0.281783, 0.942055,
		-0.402674, -0.852680, 0.332852,
		0.897063, -0.439927, -0.041737,
		39.307247, 35.347950, 24.491131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664200, 35.152687, 25.003487>,  <38.679302, 35.655899, 24.520348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664200, 35.152687, 25.003487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059540, 35.195633, 24.960344>,  <39.296745, 35.221401, 24.934458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059540, 35.195633, 24.960344>,  <38.664200, 35.152687, 25.003487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059540, 35.195633, 24.960344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102617, 0.053203, 0.993297,
		0.112391, -0.992795, 0.041565,
		0.988351, 0.107372, -0.107857,
		39.356045, 35.227844, 24.927988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999619, 34.676395, 25.516869>,  <38.664200, 35.152687, 25.003487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999619, 34.676395, 25.516869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.235222, 34.977230, 25.398586>,  <39.376583, 35.157730, 25.327616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.235222, 34.977230, 25.398586>,  <38.999619, 34.676395, 25.516869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235222, 34.977230, 25.398586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132281, 0.271254, 0.953374,
		0.797228, -0.600661, 0.060284,
		0.589007, 0.752082, -0.295708,
		39.411922, 35.202854, 25.309874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419601, 34.645184, 26.059628>,  <38.999619, 34.676395, 25.516869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419601, 34.645184, 26.059628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502529, 34.989021, 25.872816>,  <39.552284, 35.195324, 25.760729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502529, 34.989021, 25.872816>,  <39.419601, 34.645184, 26.059628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502529, 34.989021, 25.872816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005948, 0.478497, 0.878069,
		0.978256, -0.179259, 0.104312,
		0.207315, 0.859596, -0.467027,
		39.564724, 35.246899, 25.732708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037930, 34.912888, 26.446510>,  <39.419601, 34.645184, 26.059628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037930, 34.912888, 26.446510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867897, 35.217442, 26.250717>,  <39.765877, 35.400173, 26.133242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867897, 35.217442, 26.250717>,  <40.037930, 34.912888, 26.446510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867897, 35.217442, 26.250717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109015, 0.493774, 0.862730,
		0.898566, 0.420092, -0.126892,
		-0.425082, 0.761387, -0.489485,
		39.740372, 35.445858, 26.103872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446548, 35.473213, 26.485405>,  <40.037930, 34.912888, 26.446510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446548, 35.473213, 26.485405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068871, 35.596203, 26.438154>,  <39.842262, 35.669994, 26.409803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068871, 35.596203, 26.438154>,  <40.446548, 35.473213, 26.485405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068871, 35.596203, 26.438154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121883, 0.659323, 0.741915,
		0.306003, 0.686116, -0.660006,
		-0.944196, 0.307472, -0.118128,
		39.785610, 35.688446, 26.402716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518459, 36.108784, 26.712141>,  <40.446548, 35.473213, 26.485405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518459, 36.108784, 26.712141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119053, 36.101986, 26.691427>,  <39.879410, 36.097908, 26.678999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119053, 36.101986, 26.691427>,  <40.518459, 36.108784, 26.712141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119053, 36.101986, 26.691427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048713, 0.704458, 0.708072,
		0.024442, 0.709543, -0.704239,
		-0.998514, -0.016999, -0.051782,
		39.819500, 36.096886, 26.675892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242851, 36.745171, 26.607647>,  <40.518459, 36.108784, 26.712141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242851, 36.745171, 26.607647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953156, 36.528122, 26.777843>,  <39.779339, 36.397892, 26.879961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953156, 36.528122, 26.777843>,  <40.242851, 36.745171, 26.607647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953156, 36.528122, 26.777843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036609, 0.646444, 0.762082,
		-0.688580, 0.536350, -0.488043,
		-0.724235, -0.542622, 0.425494,
		39.735886, 36.365334, 26.905491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848442, 37.244629, 27.010420>,  <40.242851, 36.745171, 26.607647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848442, 37.244629, 27.010420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742908, 36.892277, 27.167614>,  <39.679588, 36.680866, 27.261930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742908, 36.892277, 27.167614>,  <39.848442, 37.244629, 27.010420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742908, 36.892277, 27.167614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001417, 0.407069, 0.913396,
		-0.964566, 0.241545, -0.106152,
		-0.263838, -0.880881, 0.392988,
		39.663757, 36.628014, 27.285511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218906, 37.376873, 27.473532>,  <39.848442, 37.244629, 27.010420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218906, 37.376873, 27.473532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409954, 37.041084, 27.577200>,  <39.524582, 36.839611, 27.639400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409954, 37.041084, 27.577200>,  <39.218906, 37.376873, 27.473532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409954, 37.041084, 27.577200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047055, 0.270129, 0.961674,
		-0.877305, -0.471511, 0.089518,
		0.477621, -0.839468, 0.259172,
		39.553242, 36.789246, 27.654951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908417, 37.182335, 28.043629>,  <39.218906, 37.376873, 27.473532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908417, 37.182335, 28.043629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.229763, 36.946735, 28.078682>,  <39.422573, 36.805378, 28.099714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.229763, 36.946735, 28.078682>,  <38.908417, 37.182335, 28.043629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229763, 36.946735, 28.078682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081457, 0.254480, 0.963641,
		-0.589882, -0.767022, 0.252419,
		0.803370, -0.588996, 0.087633,
		39.470776, 36.770035, 28.104973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242336, 36.810566, 27.810322>,  <38.908417, 37.182335, 28.043629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242336, 36.810566, 27.810322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853233, 36.864101, 27.886040>,  <37.619770, 36.896225, 27.931471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853233, 36.864101, 27.886040>,  <38.242336, 36.810566, 27.810322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853233, 36.864101, 27.886040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191983, -0.007358, -0.981371,
		-0.129958, -0.990975, 0.032853,
		-0.972755, 0.133845, 0.189294,
		37.561405, 36.904255, 27.942827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865318, 36.287888, 27.490065>,  <38.242336, 36.810566, 27.810322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865318, 36.287888, 27.490065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614944, 36.598194, 27.522034>,  <37.464722, 36.784378, 27.541214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614944, 36.598194, 27.522034>,  <37.865318, 36.287888, 27.490065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614944, 36.598194, 27.522034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177741, -0.042122, -0.983175,
		-0.759352, -0.629608, 0.164252,
		-0.625934, 0.775770, 0.079922,
		37.427166, 36.830925, 27.546011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307724, 36.074577, 27.196321>,  <37.865318, 36.287888, 27.490065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307724, 36.074577, 27.196321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.271080, 36.472893, 27.197300>,  <37.249096, 36.711884, 27.197887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.271080, 36.472893, 27.197300>,  <37.307724, 36.074577, 27.196321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271080, 36.472893, 27.197300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297273, -0.025002, -0.954465,
		-0.950388, -0.088162, 0.298313,
		-0.091606, 0.995792, 0.002446,
		37.243599, 36.771629, 27.198034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660213, 36.240238, 26.911926>,  <37.307724, 36.074577, 27.196321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660213, 36.240238, 26.911926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.892838, 36.562527, 26.867037>,  <37.032413, 36.755901, 26.840103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.892838, 36.562527, 26.867037>,  <36.660213, 36.240238, 26.911926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892838, 36.562527, 26.867037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311006, 0.092735, -0.945873,
		-0.751706, 0.584985, 0.304516,
		0.581561, 0.805725, -0.112225,
		37.067307, 36.804245, 26.833370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215824, 36.679375, 26.517639>,  <36.660213, 36.240238, 26.911926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215824, 36.679375, 26.517639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594448, 36.804245, 26.485231>,  <36.821625, 36.879169, 26.465786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594448, 36.804245, 26.485231>,  <36.215824, 36.679375, 26.517639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594448, 36.804245, 26.485231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154297, 0.217730, -0.963736,
		-0.283216, 0.924737, 0.254264,
		0.946563, 0.312178, -0.081020,
		36.878418, 36.897900, 26.460926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149334, 37.229427, 26.063751>,  <36.215824, 36.679375, 26.517639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149334, 37.229427, 26.063751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537014, 37.130993, 26.067717>,  <36.769623, 37.071934, 26.070097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537014, 37.130993, 26.067717>,  <36.149334, 37.229427, 26.063751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537014, 37.130993, 26.067717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088612, 0.310865, -0.946315,
		0.229793, 0.918044, 0.323095,
		0.969197, -0.246087, 0.009915,
		36.827774, 37.057167, 26.070690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542091, 37.840797, 25.762831>,  <36.149334, 37.229427, 26.063751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542091, 37.840797, 25.762831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774010, 37.518005, 25.717890>,  <36.913158, 37.324329, 25.690926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774010, 37.518005, 25.717890>,  <36.542091, 37.840797, 25.762831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774010, 37.518005, 25.717890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084683, 0.196835, -0.976773,
		0.810351, 0.556812, 0.182461,
		0.579793, -0.806980, -0.112353,
		36.947948, 37.275913, 25.684183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142029, 38.077614, 25.386106>,  <36.542091, 37.840797, 25.762831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142029, 38.077614, 25.386106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153465, 37.682575, 25.324364>,  <37.160328, 37.445553, 25.287317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153465, 37.682575, 25.324364>,  <37.142029, 38.077614, 25.386106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153465, 37.682575, 25.324364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132232, 0.149328, -0.979906,
		0.990806, 0.048427, -0.126323,
		0.028591, -0.987601, -0.154359,
		37.162041, 37.386295, 25.278055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654610, 37.971176, 24.879049>,  <37.142029, 38.077614, 25.386106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654610, 37.971176, 24.879049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410583, 37.654331, 24.886837>,  <37.264168, 37.464222, 24.891510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410583, 37.654331, 24.886837>,  <37.654610, 37.971176, 24.879049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410583, 37.654331, 24.886837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022371, -0.007343, -0.999723,
		0.792038, -0.610328, -0.013240,
		-0.610061, -0.792115, 0.019470,
		37.227566, 37.416698, 24.892677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913799, 37.537498, 24.428080>,  <37.654610, 37.971176, 24.879049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913799, 37.537498, 24.428080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.530907, 37.433422, 24.478699>,  <37.301170, 37.370975, 24.509069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.530907, 37.433422, 24.478699>,  <37.913799, 37.537498, 24.428080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530907, 37.433422, 24.478699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147769, 0.063606, -0.986974,
		0.248752, -0.963460, -0.099334,
		-0.957229, -0.260190, 0.126547,
		37.243736, 37.355366, 24.516663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797531, 37.103798, 23.899563>,  <37.913799, 37.537498, 24.428080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797531, 37.103798, 23.899563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.418713, 37.184978, 23.999098>,  <37.191422, 37.233688, 24.058819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.418713, 37.184978, 23.999098>,  <37.797531, 37.103798, 23.899563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418713, 37.184978, 23.999098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266730, -0.065729, -0.961527,
		-0.178794, -0.976979, 0.116384,
		-0.947042, 0.202958, 0.248837,
		37.134602, 37.245865, 24.073750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344105, 36.612774, 23.521141>,  <37.797531, 37.103798, 23.899563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344105, 36.612774, 23.521141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090347, 36.913395, 23.593494>,  <36.938095, 37.093769, 23.636908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090347, 36.913395, 23.593494>,  <37.344105, 36.612774, 23.521141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090347, 36.913395, 23.593494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299150, -0.022921, -0.953931,
		-0.712783, -0.659276, 0.239367,
		-0.634390, 0.751552, 0.180885,
		36.900032, 37.138859, 23.647760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674969, 36.306664, 23.310978>,  <37.344105, 36.612774, 23.521141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674969, 36.306664, 23.310978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.686028, 36.706509, 23.309990>,  <36.692665, 36.946415, 23.309397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.686028, 36.706509, 23.309990>,  <36.674969, 36.306664, 23.310978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686028, 36.706509, 23.309990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231636, 0.004001, -0.972794,
		-0.972410, 0.027469, 0.231658,
		0.027649, 0.999615, -0.002472,
		36.694321, 37.006393, 23.309248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571457, 35.778049, 23.913198>,  <36.674969, 36.306664, 23.310978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571457, 35.778049, 23.913198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.235413, 35.615208, 23.769819>,  <36.033787, 35.517502, 23.683792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.235413, 35.615208, 23.769819>,  <36.571457, 35.778049, 23.913198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235413, 35.615208, 23.769819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334952, -0.130425, 0.933165,
		-0.426643, 0.904023, -0.026788,
		-0.840109, -0.407101, -0.358449,
		35.983379, 35.493076, 23.662285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088367, 36.103989, 24.300549>,  <36.571457, 35.778049, 23.913198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088367, 36.103989, 24.300549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.922310, 35.766640, 24.164087>,  <35.822674, 35.564232, 24.082211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.922310, 35.766640, 24.164087>,  <36.088367, 36.103989, 24.300549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922310, 35.766640, 24.164087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533928, -0.077754, 0.841947,
		-0.736598, 0.531679, -0.418019,
		-0.415143, -0.843369, -0.341152,
		35.797768, 35.513630, 24.061743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444687, 36.136250, 24.676607>,  <36.088367, 36.103989, 24.300549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444687, 36.136250, 24.676607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.466255, 35.758007, 24.548277>,  <35.479195, 35.531063, 24.471279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.466255, 35.758007, 24.548277>,  <35.444687, 36.136250, 24.676607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466255, 35.758007, 24.548277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522933, -0.300451, 0.797665,
		-0.850667, 0.124763, -0.510686,
		0.053917, -0.945602, -0.320826,
		35.482430, 35.474327, 24.452028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702263, 35.824791, 24.651794>,  <35.444687, 36.136250, 24.676607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702263, 35.824791, 24.651794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.982605, 35.541424, 24.685125>,  <35.150810, 35.371403, 24.705124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.982605, 35.541424, 24.685125>,  <34.702263, 35.824791, 24.651794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982605, 35.541424, 24.685125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531924, -0.441227, 0.722755,
		-0.475249, -0.550869, -0.686062,
		0.700853, -0.708422, 0.083328,
		35.192860, 35.328899, 24.710123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410461, 35.399242, 25.222801>,  <34.702263, 35.824791, 24.651794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410461, 35.399242, 25.222801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774357, 35.240833, 25.172926>,  <34.992695, 35.145786, 25.143002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774357, 35.240833, 25.172926>,  <34.410461, 35.399242, 25.222801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774357, 35.240833, 25.172926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233303, -0.736025, 0.635481,
		-0.343438, -0.549030, -0.761981,
		0.909736, -0.396021, -0.124689,
		35.047279, 35.122028, 25.135519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298164, 34.694870, 25.210720>,  <34.410461, 35.399242, 25.222801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298164, 34.694870, 25.210720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.683155, 34.746758, 25.306063>,  <34.914150, 34.777889, 25.363268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.683155, 34.746758, 25.306063>,  <34.298164, 34.694870, 25.210720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683155, 34.746758, 25.306063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136312, -0.528381, 0.837993,
		0.234648, -0.839039, -0.490871,
		0.962476, 0.129722, 0.238355,
		34.971897, 34.785675, 25.377569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499306, 33.973106, 25.583637>,  <34.298164, 34.694870, 25.210720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499306, 33.973106, 25.583637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.776669, 34.242382, 25.686403>,  <34.943085, 34.403950, 25.748062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.776669, 34.242382, 25.686403>,  <34.499306, 33.973106, 25.583637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776669, 34.242382, 25.686403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092446, -0.436723, 0.894833,
		0.714594, -0.596730, -0.365059,
		0.693404, 0.673191, 0.256915,
		34.984688, 34.444340, 25.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173210, 33.572689, 25.829966>,  <34.499306, 33.973106, 25.583637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173210, 33.572689, 25.829966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.191368, 33.950516, 25.960037>,  <35.202263, 34.177212, 26.038080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.191368, 33.950516, 25.960037>,  <35.173210, 33.572689, 25.829966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191368, 33.950516, 25.960037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187416, -0.327788, 0.925976,
		0.981231, 0.018905, -0.191907,
		0.045400, 0.944562, 0.325179,
		35.204987, 34.233883, 26.057590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834808, 33.236671, 25.750031>,  <35.173210, 33.572689, 25.829966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834808, 33.236671, 25.750031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.953957, 32.856148, 25.781754>,  <36.025448, 32.627834, 25.800787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.953957, 32.856148, 25.781754>,  <35.834808, 33.236671, 25.750031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953957, 32.856148, 25.781754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413775, 0.053800, -0.908788,
		0.860268, 0.303519, 0.409652,
		0.297874, -0.951305, 0.079306,
		36.043320, 32.570755, 25.805546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427032, 33.292728, 25.448933>,  <35.834808, 33.236671, 25.750031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427032, 33.292728, 25.448933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343094, 32.902271, 25.426632>,  <36.292732, 32.667995, 25.413252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343094, 32.902271, 25.426632>,  <36.427032, 33.292728, 25.448933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343094, 32.902271, 25.426632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276400, -0.004527, -0.961032,
		0.937853, -0.217077, 0.270756,
		-0.209844, -0.976144, -0.055754,
		36.280140, 32.609428, 25.409906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082642, 32.958092, 25.157988>,  <36.427032, 33.292728, 25.448933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082642, 32.958092, 25.157988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766590, 32.716652, 25.115335>,  <36.576958, 32.571789, 25.089745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766590, 32.716652, 25.115335>,  <37.082642, 32.958092, 25.157988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766590, 32.716652, 25.115335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154521, -0.027807, -0.987598,
		0.593146, -0.796805, 0.115239,
		-0.790127, -0.603597, -0.106630,
		36.529552, 32.535572, 25.083347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261570, 32.535103, 24.619047>,  <37.082642, 32.958092, 25.157988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261570, 32.535103, 24.619047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864563, 32.486370, 24.622057>,  <36.626358, 32.457130, 24.623863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864563, 32.486370, 24.622057>,  <37.261570, 32.535103, 24.619047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864563, 32.486370, 24.622057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005941, -0.109792, -0.993937,
		0.121923, -0.986459, 0.109695,
		-0.992522, -0.121835, 0.007526,
		36.566807, 32.449821, 24.624315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108704, 31.990337, 24.225019>,  <37.261570, 32.535103, 24.619047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108704, 31.990337, 24.225019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.742035, 32.150188, 24.223383>,  <36.522034, 32.246098, 24.222401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.742035, 32.150188, 24.223383>,  <37.108704, 31.990337, 24.225019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742035, 32.150188, 24.223383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101720, -0.243203, -0.964627,
		-0.386486, -0.883827, 0.263587,
		-0.916669, 0.399627, -0.004092,
		36.467033, 32.270077, 24.222155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672268, 31.555904, 23.829290>,  <37.108704, 31.990337, 24.225019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672268, 31.555904, 23.829290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511074, 31.921745, 23.842581>,  <36.414356, 32.141251, 23.850555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511074, 31.921745, 23.842581>,  <36.672268, 31.555904, 23.829290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511074, 31.921745, 23.842581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251798, -0.075895, -0.964799,
		-0.879886, -0.397168, 0.260880,
		-0.402987, 0.914602, 0.033227,
		36.390179, 32.196125, 23.852549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118488, 31.481724, 23.385115>,  <36.672268, 31.555904, 23.829290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118488, 31.481724, 23.385115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.208462, 31.868187, 23.435625>,  <36.262447, 32.100063, 23.465931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.208462, 31.868187, 23.435625>,  <36.118488, 31.481724, 23.385115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208462, 31.868187, 23.435625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003625, 0.128769, -0.991668,
		-0.974366, 0.223521, 0.025462,
		0.224938, 0.966156, 0.126278,
		36.275944, 32.158035, 23.473509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646629, 31.817083, 23.065298>,  <36.118488, 31.481724, 23.385115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646629, 31.817083, 23.065298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929050, 32.098690, 23.095881>,  <36.098503, 32.267654, 23.114229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929050, 32.098690, 23.095881>,  <35.646629, 31.817083, 23.065298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929050, 32.098690, 23.095881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104924, 0.210774, -0.971887,
		-0.700340, 0.678185, 0.222687,
		0.706056, 0.704017, 0.076455,
		36.140869, 32.309895, 23.118816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431637, 32.470989, 22.739725>,  <35.646629, 31.817083, 23.065298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431637, 32.470989, 22.739725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.828121, 32.519390, 22.718357>,  <36.066013, 32.548431, 22.705536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.828121, 32.519390, 22.718357>,  <35.431637, 32.470989, 22.739725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828121, 32.519390, 22.718357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071963, 0.154469, -0.985374,
		-0.110980, 0.980560, 0.161819,
		0.991214, 0.121001, -0.053421,
		36.125484, 32.555691, 22.702332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.398724, 33.206364, 38.691727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694756, 33.126118, 38.434967>,  <38.872375, 33.077969, 38.280910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694756, 33.126118, 38.434967>,  <38.398724, 33.206364, 38.691727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694756, 33.126118, 38.434967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669477, -0.129162, -0.731517,
		0.063847, 0.971117, -0.229899,
		0.740084, -0.200617, -0.641895,
		38.916782, 33.065933, 38.242397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200851, 33.524326, 37.996490>,  <38.398724, 33.206364, 38.691727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200851, 33.524326, 37.996490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474216, 33.241962, 37.922050>,  <38.638237, 33.072544, 37.877384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474216, 33.241962, 37.922050>,  <38.200851, 33.524326, 37.996490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474216, 33.241962, 37.922050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620773, -0.427785, -0.656994,
		0.384165, 0.564530, -0.730564,
		0.683417, -0.705908, -0.186105,
		38.679241, 33.030190, 37.866219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376629, 33.513050, 37.289158>,  <38.200851, 33.524326, 37.996490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376629, 33.513050, 37.289158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431591, 33.142212, 37.428650>,  <38.464569, 32.919708, 37.512344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431591, 33.142212, 37.428650>,  <38.376629, 33.513050, 37.289158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431591, 33.142212, 37.428650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570320, -0.361901, -0.737403,
		0.809849, -0.097567, -0.578468,
		0.137402, -0.927097, 0.348730,
		38.472813, 32.864082, 37.533268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506725, 33.229507, 36.669613>,  <38.376629, 33.513050, 37.289158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506725, 33.229507, 36.669613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446842, 32.915554, 36.910126>,  <38.410912, 32.727180, 37.054436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446842, 32.915554, 36.910126>,  <38.506725, 33.229507, 36.669613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446842, 32.915554, 36.910126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482599, -0.472770, -0.737284,
		0.862951, -0.400559, -0.308005,
		-0.149710, -0.784883, 0.601287,
		38.401928, 32.680088, 37.090511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685207, 32.677547, 36.263344>,  <38.506725, 33.229507, 36.669613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685207, 32.677547, 36.263344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453514, 32.525417, 36.551746>,  <38.314499, 32.434139, 36.724789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453514, 32.525417, 36.551746>,  <38.685207, 32.677547, 36.263344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453514, 32.525417, 36.551746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481787, -0.553746, -0.679151,
		0.657553, -0.740754, 0.137508,
		-0.579228, -0.380328, 0.721003,
		38.279747, 32.411320, 36.768047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723904, 31.971718, 36.076019>,  <38.685207, 32.677547, 36.263344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723904, 31.971718, 36.076019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.394085, 32.035000, 36.293308>,  <38.196194, 32.072968, 36.423683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.394085, 32.035000, 36.293308>,  <38.723904, 31.971718, 36.076019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394085, 32.035000, 36.293308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530897, -0.548291, -0.646162,
		0.195617, -0.821187, 0.536083,
		-0.824550, 0.158204, 0.543221,
		38.146721, 32.082462, 36.456276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242004, 31.304182, 36.076260>,  <38.723904, 31.971718, 36.076019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242004, 31.304182, 36.076260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008343, 31.617954, 36.159615>,  <37.868145, 31.806217, 36.209629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008343, 31.617954, 36.159615>,  <38.242004, 31.304182, 36.076260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008343, 31.617954, 36.159615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651687, -0.300270, -0.696521,
		-0.483801, -0.542682, 0.686610,
		-0.584158, 0.784433, 0.208388,
		37.833096, 31.853285, 36.222130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594440, 31.013062, 35.991062>,  <38.242004, 31.304182, 36.076260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594440, 31.013062, 35.991062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.555664, 31.407682, 35.938419>,  <37.532398, 31.644455, 35.906834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.555664, 31.407682, 35.938419>,  <37.594440, 31.013062, 35.991062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555664, 31.407682, 35.938419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655191, -0.162793, -0.737715,
		-0.749219, 0.014717, 0.662159,
		-0.096938, 0.986551, -0.131610,
		37.526581, 31.703648, 35.898937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913342, 31.038324, 35.955318>,  <37.594440, 31.013062, 35.991062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913342, 31.038324, 35.955318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056293, 31.361233, 35.767448>,  <37.142067, 31.554977, 35.654728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056293, 31.361233, 35.767448>,  <36.913342, 31.038324, 35.955318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056293, 31.361233, 35.767448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702460, -0.099066, -0.704794,
		-0.615489, 0.581807, 0.531671,
		0.357384, 0.807271, -0.469671,
		37.163509, 31.603415, 35.626549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289928, 31.346870, 35.634262>,  <36.913342, 31.038324, 35.955318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289928, 31.346870, 35.634262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596424, 31.541080, 35.465908>,  <36.780323, 31.657606, 35.364895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596424, 31.541080, 35.465908>,  <36.289928, 31.346870, 35.634262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596424, 31.541080, 35.465908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476876, -0.009312, -0.878921,
		-0.430657, 0.874173, 0.224400,
		0.766240, 0.485525, -0.420882,
		36.826298, 31.686737, 35.339642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927113, 31.857700, 35.195278>,  <36.289928, 31.346870, 35.634262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927113, 31.857700, 35.195278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300659, 31.836729, 35.053776>,  <36.524788, 31.824146, 34.968876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300659, 31.836729, 35.053776>,  <35.927113, 31.857700, 35.195278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300659, 31.836729, 35.053776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346638, 0.110512, -0.931466,
		0.087929, 0.992491, 0.085030,
		0.933869, -0.052428, -0.353753,
		36.580818, 31.821001, 34.947651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011284, 32.414284, 34.829857>,  <35.927113, 31.857700, 35.195278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011284, 32.414284, 34.829857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281349, 32.163921, 34.673706>,  <36.443386, 32.013702, 34.580013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281349, 32.163921, 34.673706>,  <36.011284, 32.414284, 34.829857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281349, 32.163921, 34.673706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336248, 0.209906, -0.918083,
		0.656580, 0.751118, -0.068741,
		0.675160, -0.625909, -0.390381,
		36.483898, 31.976149, 34.556591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917973, 33.130806, 35.070839>,  <36.011284, 32.414284, 34.829857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917973, 33.130806, 35.070839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661961, 33.413704, 34.950729>,  <35.508354, 33.583443, 34.878662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661961, 33.413704, 34.950729>,  <35.917973, 33.130806, 35.070839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661961, 33.413704, 34.950729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141912, 0.275269, 0.950836,
		0.755129, 0.651178, -0.075815,
		-0.640033, 0.707244, -0.300274,
		35.469952, 33.625877, 34.860649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150196, 33.746918, 35.460533>,  <35.917973, 33.130806, 35.070839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150196, 33.746918, 35.460533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762112, 33.774490, 35.367638>,  <35.529259, 33.791035, 35.311901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762112, 33.774490, 35.367638>,  <36.150196, 33.746918, 35.460533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762112, 33.774490, 35.367638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196137, 0.339125, 0.920068,
		0.142179, 0.938212, -0.315504,
		-0.970214, 0.068933, -0.232235,
		35.471046, 33.795170, 35.297966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955471, 34.423920, 35.708378>,  <36.150196, 33.746918, 35.460533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955471, 34.423920, 35.708378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634346, 34.192650, 35.650127>,  <35.441673, 34.053886, 35.615177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634346, 34.192650, 35.650127>,  <35.955471, 34.423920, 35.708378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634346, 34.192650, 35.650127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318472, 0.209340, 0.924528,
		-0.504054, 0.788600, -0.352193,
		-0.802811, -0.578176, -0.145629,
		35.393501, 34.019196, 35.606438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318207, 34.886559, 35.828606>,  <35.955471, 34.423920, 35.708378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318207, 34.886559, 35.828606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205353, 34.504097, 35.860035>,  <35.137642, 34.274620, 35.878891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205353, 34.504097, 35.860035>,  <35.318207, 34.886559, 35.828606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205353, 34.504097, 35.860035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258903, 0.154741, 0.953428,
		-0.923780, 0.248654, -0.291208,
		-0.282135, -0.956152, 0.078570,
		35.120712, 34.217251, 35.883606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681221, 34.878101, 35.990921>,  <35.318207, 34.886559, 35.828606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681221, 34.878101, 35.990921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841496, 34.536350, 36.123280>,  <34.937660, 34.331299, 36.202694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841496, 34.536350, 36.123280>,  <34.681221, 34.878101, 35.990921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841496, 34.536350, 36.123280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325530, 0.204838, 0.923077,
		-0.856434, -0.477584, -0.196049,
		0.400689, -0.854374, 0.330898,
		34.961700, 34.280037, 36.222549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385841, 34.853558, 36.677742>,  <34.681221, 34.878101, 35.990921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385841, 34.853558, 36.677742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626194, 34.534248, 36.694229>,  <34.770405, 34.342663, 36.704121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626194, 34.534248, 36.694229>,  <34.385841, 34.853558, 36.677742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626194, 34.534248, 36.694229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150492, -0.062332, 0.986644,
		-0.785042, -0.599062, -0.157588,
		0.600883, -0.798273, 0.041221,
		34.806458, 34.294765, 36.706596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032394, 34.219940, 36.749058>,  <34.385841, 34.853558, 36.677742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032394, 34.219940, 36.749058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.386890, 34.162201, 36.925125>,  <34.599586, 34.127560, 37.030766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.386890, 34.162201, 36.925125>,  <34.032394, 34.219940, 36.749058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386890, 34.162201, 36.925125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426357, 0.117328, 0.896913,
		-0.181108, -0.982547, 0.042438,
		0.886239, -0.144345, 0.440165,
		34.652763, 34.118896, 37.057175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929192, 33.833553, 37.321865>,  <34.032394, 34.219940, 36.749058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929192, 33.833553, 37.321865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300972, 33.949841, 37.412724>,  <34.524040, 34.019615, 37.467239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300972, 33.949841, 37.412724>,  <33.929192, 33.833553, 37.321865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300972, 33.949841, 37.412724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293842, 0.211024, 0.932269,
		0.223132, -0.933236, 0.281572,
		0.929445, 0.290757, 0.227137,
		34.579807, 34.037056, 37.480869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009529, 33.603718, 38.017658>,  <33.929192, 33.833553, 37.321865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009529, 33.603718, 38.017658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285748, 33.885231, 37.950928>,  <34.451477, 34.054138, 37.910889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285748, 33.885231, 37.950928>,  <34.009529, 33.603718, 38.017658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285748, 33.885231, 37.950928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203535, 0.410413, 0.888895,
		0.694060, -0.579868, 0.426654,
		0.690546, 0.703786, -0.166827,
		34.492912, 34.096367, 37.900879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226830, 33.753513, 38.695236>,  <34.009529, 33.603718, 38.017658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226830, 33.753513, 38.695236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377064, 34.054504, 38.478828>,  <34.467205, 34.235100, 38.348984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377064, 34.054504, 38.478828>,  <34.226830, 33.753513, 38.695236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377064, 34.054504, 38.478828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259347, 0.645773, 0.718134,
		0.889759, -0.129411, 0.437700,
		0.375589, 0.752483, -0.541020,
		34.489742, 34.280251, 38.316521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599922, 34.138538, 39.138927>,  <34.226830, 33.753513, 38.695236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599922, 34.138538, 39.138927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525246, 34.377346, 38.826847>,  <34.480438, 34.520630, 38.639599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525246, 34.377346, 38.826847>,  <34.599922, 34.138538, 39.138927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525246, 34.377346, 38.826847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412713, 0.673022, 0.613766,
		0.891523, 0.436586, 0.120748,
		-0.186696, 0.597021, -0.780199,
		34.469238, 34.556454, 38.592789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917004, 34.801666, 39.294521>,  <34.599922, 34.138538, 39.138927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917004, 34.801666, 39.294521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627594, 34.884373, 39.031078>,  <34.453949, 34.933998, 38.873013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627594, 34.884373, 39.031078>,  <34.917004, 34.801666, 39.294521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627594, 34.884373, 39.031078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185514, 0.860742, 0.474033,
		0.664904, 0.465155, -0.584409,
		-0.723524, 0.206770, -0.658603,
		34.410538, 34.946404, 38.833496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028011, 35.482597, 39.113213>,  <34.917004, 34.801666, 39.294521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028011, 35.482597, 39.113213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645187, 35.405830, 39.026302>,  <34.415493, 35.359768, 38.974155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645187, 35.405830, 39.026302>,  <35.028011, 35.482597, 39.113213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645187, 35.405830, 39.026302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255843, 0.911622, 0.321699,
		0.136330, 0.363472, -0.921576,
		-0.957057, -0.191921, -0.217273,
		34.358070, 35.348255, 38.961121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699104, 35.816456, 38.518929>,  <35.028011, 35.482597, 39.113213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699104, 35.816456, 38.518929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422604, 35.779720, 38.805630>,  <34.256702, 35.757679, 38.977650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422604, 35.779720, 38.805630>,  <34.699104, 35.816456, 38.518929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422604, 35.779720, 38.805630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014109, 0.989987, 0.140451,
		-0.722473, 0.107200, -0.683038,
		-0.691255, -0.091835, 0.716751,
		34.215225, 35.752171, 39.020657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416004, 36.256317, 38.645226>,  <34.699104, 35.816456, 38.518929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416004, 36.256317, 38.645226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635250, 36.547691, 38.809639>,  <35.766796, 36.722515, 38.908287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635250, 36.547691, 38.809639>,  <35.416004, 36.256317, 38.645226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635250, 36.547691, 38.809639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185746, 0.373150, -0.908987,
		-0.815518, 0.574576, 0.069224,
		0.548113, 0.728438, 0.411036,
		35.799683, 36.766224, 38.932949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193439, 36.894112, 38.349140>,  <35.416004, 36.256317, 38.645226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193439, 36.894112, 38.349140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572472, 36.937534, 38.469341>,  <35.799892, 36.963589, 38.541462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572472, 36.937534, 38.469341>,  <35.193439, 36.894112, 38.349140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572472, 36.937534, 38.469341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216342, 0.474096, -0.853481,
		-0.235117, 0.873755, 0.425760,
		0.947584, 0.108558, 0.300498,
		35.856747, 36.970100, 38.559490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407410, 37.520573, 38.282551>,  <35.193439, 36.894112, 38.349140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407410, 37.520573, 38.282551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702126, 37.259407, 38.212303>,  <35.878956, 37.102707, 38.170155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702126, 37.259407, 38.212303>,  <35.407410, 37.520573, 38.282551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702126, 37.259407, 38.212303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073058, 0.181339, -0.980703,
		0.672165, 0.735400, 0.085907,
		0.736788, -0.652919, -0.175616,
		35.923161, 37.063530, 38.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865280, 37.834839, 37.801708>,  <35.407410, 37.520573, 38.282551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865280, 37.834839, 37.801708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951118, 37.449127, 37.739597>,  <36.002621, 37.217701, 37.702332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951118, 37.449127, 37.739597>,  <35.865280, 37.834839, 37.801708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951118, 37.449127, 37.739597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222056, 0.106650, -0.969184,
		0.951126, 0.242463, -0.191238,
		0.214596, -0.964281, -0.155278,
		36.015499, 37.159843, 37.693012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151398, 37.821503, 37.147778>,  <35.865280, 37.834839, 37.801708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151398, 37.821503, 37.147778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097912, 37.428379, 37.198711>,  <36.065823, 37.192505, 37.229271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097912, 37.428379, 37.198711>,  <36.151398, 37.821503, 37.147778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097912, 37.428379, 37.198711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167454, -0.104237, -0.980354,
		0.976770, -0.152408, -0.150637,
		-0.133712, -0.982805, 0.127337,
		36.057796, 37.133537, 37.236912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719986, 37.464386, 36.709885>,  <36.151398, 37.821503, 37.147778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719986, 37.464386, 36.709885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419159, 37.215309, 36.796280>,  <36.238663, 37.065865, 36.848118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419159, 37.215309, 36.796280>,  <36.719986, 37.464386, 36.709885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419159, 37.215309, 36.796280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004095, -0.323290, -0.946291,
		0.659071, -0.712561, 0.240586,
		-0.752069, -0.622688, 0.215989,
		36.193539, 37.028503, 36.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873474, 36.984177, 36.357719>,  <36.719986, 37.464386, 36.709885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873474, 36.984177, 36.357719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485722, 36.905003, 36.415863>,  <36.253071, 36.857498, 36.450748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485722, 36.905003, 36.415863>,  <36.873474, 36.984177, 36.357719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485722, 36.905003, 36.415863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065470, -0.362184, -0.929804,
		0.236684, -0.910849, 0.338135,
		-0.969378, -0.197932, 0.145357,
		36.194908, 36.845623, 36.459469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751137, 36.310699, 36.134674>,  <36.873474, 36.984177, 36.357719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751137, 36.310699, 36.134674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393600, 36.485706, 36.095409>,  <36.179081, 36.590710, 36.071850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393600, 36.485706, 36.095409>,  <36.751137, 36.310699, 36.134674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393600, 36.485706, 36.095409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096185, -0.400913, -0.911053,
		-0.437956, -0.804890, 0.400433,
		-0.893836, 0.437517, -0.098164,
		36.125450, 36.616962, 36.065960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486847, 35.854614, 35.798401>,  <36.751137, 36.310699, 36.134674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486847, 35.854614, 35.798401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269928, 36.187881, 35.755051>,  <36.139774, 36.387840, 35.729042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269928, 36.187881, 35.755051>,  <36.486847, 35.854614, 35.798401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269928, 36.187881, 35.755051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122978, -0.206312, -0.970727,
		-0.831135, -0.513099, 0.214345,
		-0.542302, 0.833165, -0.108373,
		36.107239, 36.437832, 35.722538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786053, 35.613419, 35.539032>,  <36.486847, 35.854614, 35.798401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786053, 35.613419, 35.539032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875198, 35.996731, 35.467445>,  <35.928684, 36.226719, 35.424492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875198, 35.996731, 35.467445>,  <35.786053, 35.613419, 35.539032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875198, 35.996731, 35.467445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272856, -0.114929, -0.955165,
		-0.935885, 0.261704, 0.235860,
		0.222864, 0.958281, -0.178968,
		35.942059, 36.284214, 35.413754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247253, 35.786694, 35.142113>,  <35.786053, 35.613419, 35.539032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247253, 35.786694, 35.142113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546852, 36.044811, 35.081993>,  <35.726612, 36.199684, 35.045921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546852, 36.044811, 35.081993>,  <35.247253, 35.786694, 35.142113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546852, 36.044811, 35.081993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181886, -0.017869, -0.983157,
		-0.637115, 0.763722, 0.103986,
		0.749001, 0.645298, -0.150295,
		35.771553, 36.238400, 35.036903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021229, 36.129906, 34.468201>,  <35.247253, 35.786694, 35.142113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021229, 36.129906, 34.468201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400307, 36.232376, 34.544361>,  <35.627754, 36.293858, 34.590057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400307, 36.232376, 34.544361>,  <35.021229, 36.129906, 34.468201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400307, 36.232376, 34.544361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198519, -0.005973, -0.980079,
		-0.249938, 0.966611, -0.056517,
		0.947693, 0.256179, 0.190398,
		35.684616, 36.309231, 34.601479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121040, 36.784721, 34.061199>,  <35.021229, 36.129906, 34.468201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121040, 36.784721, 34.061199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459011, 36.586010, 34.140499>,  <35.661793, 36.466782, 34.188080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459011, 36.586010, 34.140499>,  <35.121040, 36.784721, 34.061199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459011, 36.586010, 34.140499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253933, 0.046351, -0.966111,
		0.470754, 0.866639, 0.165312,
		0.844931, -0.496779, 0.198248,
		35.712490, 36.436977, 34.199974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621887, 37.168346, 33.615662>,  <35.121040, 36.784721, 34.061199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621887, 37.168346, 33.615662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779121, 36.808907, 33.693642>,  <35.873463, 36.593243, 33.740429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779121, 36.808907, 33.693642>,  <35.621887, 37.168346, 33.615662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779121, 36.808907, 33.693642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294739, -0.077690, -0.952414,
		0.870984, 0.431836, 0.234314,
		0.393083, -0.898600, 0.194945,
		35.897045, 36.539326, 33.752125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300449, 37.261372, 33.361687>,  <35.621887, 37.168346, 33.615662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300449, 37.261372, 33.361687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209988, 36.872471, 33.385651>,  <36.155712, 36.639130, 33.400028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209988, 36.872471, 33.385651>,  <36.300449, 37.261372, 33.361687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209988, 36.872471, 33.385651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414476, -0.151707, -0.897326,
		0.881512, -0.178101, 0.437282,
		-0.226154, -0.972247, 0.059913,
		36.142143, 36.580795, 33.403625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766186, 36.990723, 32.954132>,  <36.300449, 37.261372, 33.361687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766186, 36.990723, 32.954132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522705, 36.674179, 32.976841>,  <36.376617, 36.484253, 32.990467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522705, 36.674179, 32.976841>,  <36.766186, 36.990723, 32.954132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522705, 36.674179, 32.976841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192660, -0.216842, -0.957007,
		0.769650, -0.571597, 0.284456,
		-0.608705, -0.791364, 0.056768,
		36.340096, 36.436771, 32.993870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173084, 36.443844, 32.736961>,  <36.766186, 36.990723, 32.954132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173084, 36.443844, 32.736961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785007, 36.359440, 32.689281>,  <36.552162, 36.308800, 32.660671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785007, 36.359440, 32.689281>,  <37.173084, 36.443844, 32.736961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785007, 36.359440, 32.689281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131674, -0.046015, -0.990225,
		0.203460, -0.976401, 0.072428,
		-0.970189, -0.211008, -0.119204,
		36.493950, 36.296139, 32.653519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190266, 35.819412, 32.374676>,  <37.173084, 36.443844, 32.736961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190266, 35.819412, 32.374676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813484, 35.941051, 32.317768>,  <36.587414, 36.014034, 32.283623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813484, 35.941051, 32.317768>,  <37.190266, 35.819412, 32.374676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813484, 35.941051, 32.317768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143008, -0.019964, -0.989520,
		-0.303753, -0.952431, -0.024683,
		-0.941957, 0.304099, -0.142269,
		36.530895, 36.032280, 32.275089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908676, 35.362190, 31.889166>,  <37.190266, 35.819412, 32.374676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908676, 35.362190, 31.889166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722458, 35.716007, 31.877502>,  <36.610729, 35.928299, 31.870504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722458, 35.716007, 31.877502>,  <36.908676, 35.362190, 31.889166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722458, 35.716007, 31.877502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312490, 0.133464, -0.940499,
		-0.828022, -0.446953, -0.338545,
		-0.465542, 0.884546, -0.029158,
		36.582794, 35.981369, 31.868755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538292, 35.370865, 31.249060>,  <36.908676, 35.362190, 31.889166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538292, 35.370865, 31.249060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558292, 35.760555, 31.337051>,  <36.570293, 35.994370, 31.389847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558292, 35.760555, 31.337051>,  <36.538292, 35.370865, 31.249060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558292, 35.760555, 31.337051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055732, 0.217189, -0.974537,
		-0.997193, 0.060986, -0.043436,
		0.049999, 0.974223, 0.219979,
		36.573292, 36.052822, 31.403046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117733, 35.654991, 30.812384>,  <36.538292, 35.370865, 31.249060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117733, 35.654991, 30.812384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353367, 35.963882, 30.907576>,  <36.494747, 36.149220, 30.964691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353367, 35.963882, 30.907576>,  <36.117733, 35.654991, 30.812384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353367, 35.963882, 30.907576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032544, 0.271592, -0.961862,
		-0.807413, 0.574366, 0.134860,
		0.589088, 0.772231, 0.237979,
		36.530094, 36.195553, 30.978970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840199, 36.244442, 30.364973>,  <36.117733, 35.654991, 30.812384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840199, 36.244442, 30.364973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201897, 36.347034, 30.501539>,  <36.418915, 36.408588, 30.583479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201897, 36.347034, 30.501539>,  <35.840199, 36.244442, 30.364973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201897, 36.347034, 30.501539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240637, 0.354432, -0.903588,
		-0.352761, 0.899220, 0.258773,
		0.904242, 0.256481, 0.341416,
		36.473167, 36.423977, 30.603964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966961, 36.874279, 30.181705>,  <35.840199, 36.244442, 30.364973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966961, 36.874279, 30.181705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325859, 36.704666, 30.230942>,  <36.541199, 36.602898, 30.260485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325859, 36.704666, 30.230942>,  <35.966961, 36.874279, 30.181705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325859, 36.704666, 30.230942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256733, 0.274213, -0.926766,
		0.359221, 0.863138, 0.354898,
		0.897245, -0.424027, 0.123093,
		36.595032, 36.577457, 30.267870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241009, 37.213776, 29.770430>,  <35.966961, 36.874279, 30.181705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241009, 37.213776, 29.770430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523235, 36.935101, 29.822285>,  <36.692570, 36.767895, 29.853397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523235, 36.935101, 29.822285>,  <36.241009, 37.213776, 29.770430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523235, 36.935101, 29.822285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296108, 0.123641, -0.947118,
		0.643816, 0.706640, 0.293531,
		0.705564, -0.696687, 0.129640,
		36.734905, 36.726093, 29.861177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808285, 37.517975, 29.628807>,  <36.241009, 37.213776, 29.770430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808285, 37.517975, 29.628807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885227, 37.129879, 29.569983>,  <36.931393, 36.897022, 29.534687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885227, 37.129879, 29.569983>,  <36.808285, 37.517975, 29.628807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885227, 37.129879, 29.569983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431808, 0.218258, -0.875160,
		0.881215, 0.104843, 0.460942,
		0.192359, -0.970243, -0.147061,
		36.942936, 36.838806, 29.525864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411526, 37.568996, 29.433367>,  <36.808285, 37.517975, 29.628807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411526, 37.568996, 29.433367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300831, 37.198059, 29.332615>,  <37.234413, 36.975494, 29.272163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300831, 37.198059, 29.332615>,  <37.411526, 37.568996, 29.433367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300831, 37.198059, 29.332615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454925, 0.104450, -0.884383,
		0.846439, -0.359328, 0.392968,
		-0.276738, -0.927348, -0.251878,
		37.217808, 36.919853, 29.257051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987732, 37.247604, 29.167091>,  <37.411526, 37.568996, 29.433367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987732, 37.247604, 29.167091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657402, 37.083069, 29.012783>,  <37.459206, 36.984348, 28.920198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657402, 37.083069, 29.012783>,  <37.987732, 37.247604, 29.167091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657402, 37.083069, 29.012783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347795, 0.166987, -0.922580,
		0.443911, -0.896056, 0.005159,
		-0.825822, -0.411338, -0.385771,
		37.409657, 36.959667, 28.897051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195827, 37.088039, 28.563744>,  <37.987732, 37.247604, 29.167091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195827, 37.088039, 28.563744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.804356, 37.042679, 28.495237>,  <37.569473, 37.015465, 28.454134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.804356, 37.042679, 28.495237>,  <38.195827, 37.088039, 28.563744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804356, 37.042679, 28.495237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160584, 0.097501, -0.982195,
		0.128087, -0.988753, -0.077211,
		-0.978676, -0.113407, -0.171267,
		37.510754, 37.008659, 28.443857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737267, 36.685165, 28.747471>,  <38.195827, 37.088039, 28.563744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737267, 36.685165, 28.747471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130024, 36.684975, 28.671707>,  <39.365681, 36.684860, 28.626249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130024, 36.684975, 28.671707>,  <38.737267, 36.685165, 28.747471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130024, 36.684975, 28.671707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188919, 0.074375, 0.979172,
		0.013619, -0.997230, 0.073119,
		0.981898, -0.000478, -0.189408,
		39.424595, 36.684830, 28.614885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921337, 36.151932, 29.082859>,  <38.737267, 36.685165, 28.747471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921337, 36.151932, 29.082859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240654, 36.391117, 29.054087>,  <39.432243, 36.534630, 29.036823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240654, 36.391117, 29.054087>,  <38.921337, 36.151932, 29.082859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240654, 36.391117, 29.054087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064414, 0.033983, 0.997344,
		0.598821, -0.800802, -0.011389,
		0.798288, 0.597965, -0.071933,
		39.480141, 36.570507, 29.032507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262066, 35.898319, 29.627144>,  <38.921337, 36.151932, 29.082859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262066, 35.898319, 29.627144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430901, 36.250877, 29.542295>,  <39.532200, 36.462410, 29.491386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430901, 36.250877, 29.542295>,  <39.262066, 35.898319, 29.627144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430901, 36.250877, 29.542295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221759, 0.126494, 0.966862,
		0.879016, -0.455136, -0.142065,
		0.422083, 0.881391, -0.212121,
		39.557526, 36.515293, 29.478659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836025, 35.929691, 29.954565>,  <39.262066, 35.898319, 29.627144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836025, 35.929691, 29.954565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791420, 36.321911, 29.889965>,  <39.764656, 36.557243, 29.851204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791420, 36.321911, 29.889965>,  <39.836025, 35.929691, 29.954565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791420, 36.321911, 29.889965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189475, 0.180512, 0.965150,
		0.975533, 0.077023, -0.205919,
		-0.111509, 0.980552, -0.161502,
		39.757969, 36.616077, 29.841515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397243, 36.267010, 30.372356>,  <39.836025, 35.929691, 29.954565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397243, 36.267010, 30.372356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.096535, 36.520424, 30.299177>,  <39.916111, 36.672474, 30.255270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.096535, 36.520424, 30.299177>,  <40.397243, 36.267010, 30.372356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096535, 36.520424, 30.299177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018891, 0.256631, 0.966325,
		0.659155, 0.729910, -0.180959,
		-0.751770, 0.633539, -0.182948,
		39.871002, 36.710487, 30.244293>
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
