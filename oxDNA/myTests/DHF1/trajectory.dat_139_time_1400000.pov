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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.620323, 5.553242, 1.581910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.589512, 5.199905, 1.766853>,  <2.571025, 4.987904, 1.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.589512, 5.199905, 1.766853>,  <2.620323, 5.553242, 1.581910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.589512, 5.199905, 1.766853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349337, -0.410428, -0.842326,
		0.933826, -0.226402, -0.276969,
		-0.077028, -0.883341, 0.462359,
		2.566403, 4.934903, 1.905561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.202987, 4.986622, 1.204945>,  <2.620323, 5.553242, 1.581910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.202987, 4.986622, 1.204945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858974, 4.858055, 1.363457>,  <2.652567, 4.780915, 1.458564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858974, 4.858055, 1.363457>,  <3.202987, 4.986622, 1.204945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.858974, 4.858055, 1.363457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192743, -0.514458, -0.835574,
		0.472438, -0.794999, 0.380498,
		-0.860031, -0.321419, 0.396280,
		2.600965, 4.761630, 1.482341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.145620, 4.225768, 1.182402>,  <3.202987, 4.986622, 1.204945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.145620, 4.225768, 1.182402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.782379, 4.392979, 1.172569>,  <2.564435, 4.493305, 1.166670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.782379, 4.392979, 1.172569>,  <3.145620, 4.225768, 1.182402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.782379, 4.392979, 1.172569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157384, -0.395113, -0.905051,
		-0.388012, -0.818026, 0.424594,
		-0.908118, 0.417995, -0.024564,
		2.509948, 4.518387, 1.165195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.616461, 3.694325, 1.126776>,  <3.145620, 4.225768, 1.182402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.616461, 3.694325, 1.126776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488323, 4.041683, 0.975372>,  <2.411440, 4.250098, 0.884530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488323, 4.041683, 0.975372>,  <2.616461, 3.694325, 1.126776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488323, 4.041683, 0.975372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281176, -0.468725, -0.837399,
		-0.904610, -0.161828, 0.394325,
		-0.320345, 0.868395, -0.378511,
		2.392220, 4.302202, 0.861819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.983667, 3.531215, 0.817306>,  <2.616461, 3.694325, 1.126776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.983667, 3.531215, 0.817306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.146709, 3.849129, 0.637451>,  <2.244535, 4.039877, 0.529538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.146709, 3.849129, 0.637451>,  <1.983667, 3.531215, 0.817306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.146709, 3.849129, 0.637451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313663, -0.340579, -0.886353,
		-0.857597, 0.502318, 0.110472,
		0.407607, 0.794784, -0.449638,
		2.268991, 4.087564, 0.502560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.544320, 3.728953, 0.317695>,  <1.983667, 3.531215, 0.817306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.544320, 3.728953, 0.317695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.856136, 3.945950, 0.192463>,  <2.043226, 4.076148, 0.117323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.856136, 3.945950, 0.192463>,  <1.544320, 3.728953, 0.317695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.856136, 3.945950, 0.192463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269256, -0.161065, -0.949505,
		-0.565524, 0.824476, 0.020512,
		0.779541, 0.542491, -0.313081,
		2.089998, 4.108697, 0.098539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.295225, 4.259581, 0.004019>,  <1.544320, 3.728953, 0.317695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.295225, 4.259581, 0.004019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.652740, 4.207031, -0.167507>,  <1.867250, 4.175502, -0.270423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.652740, 4.207031, -0.167507>,  <1.295225, 4.259581, 0.004019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.652740, 4.207031, -0.167507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428060, 0.035388, -0.903057,
		0.133813, 0.990701, -0.024606,
		0.893789, -0.131373, -0.428815,
		1.920877, 4.167619, -0.296152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.183029, 4.505259, -0.613577>,  <1.295225, 4.259581, 0.004019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.183029, 4.505259, -0.613577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.528721, 4.305862, -0.640747>,  <1.736136, 4.186225, -0.657049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.528721, 4.305862, -0.640747>,  <1.183029, 4.505259, -0.613577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.528721, 4.305862, -0.640747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165840, -0.154808, -0.973926,
		0.474977, 0.852961, -0.216459,
		0.864230, -0.498490, -0.067925,
		1.787990, 4.156315, -0.661125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.514927, 4.046857, 2.570874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.817717, 3.790985, 2.624237>,  <1.999391, 3.637462, 2.656255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.817717, 3.790985, 2.624237>,  <1.514927, 4.046857, 2.570874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.817717, 3.790985, 2.624237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127399, 0.344718, 0.930021,
		-0.640904, -0.687007, 0.342438,
		0.756975, -0.639681, 0.133407,
		2.044810, 3.599081, 2.664259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.432362, 3.436798, 3.028190>,  <1.514927, 4.046857, 2.570874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.432362, 3.436798, 3.028190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.811583, 3.562256, 3.049438>,  <2.039116, 3.637531, 3.062188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.811583, 3.562256, 3.049438>,  <1.432362, 3.436798, 3.028190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.811583, 3.562256, 3.049438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140528, 0.263113, 0.954476,
		0.285402, -0.912355, 0.293522,
		0.948049, 0.313658, 0.053119,
		2.095999, 3.656350, 3.065375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.548686, 3.384074, 3.714789>,  <1.432362, 3.436798, 3.028190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.548686, 3.384074, 3.714789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846416, 3.605919, 3.565987>,  <2.025053, 3.739026, 3.476705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846416, 3.605919, 3.565987>,  <1.548686, 3.384074, 3.714789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.846416, 3.605919, 3.565987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100261, 0.457929, 0.883317,
		0.660251, -0.694770, 0.285241,
		0.744323, 0.554612, -0.372007,
		2.069713, 3.772302, 3.454385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.029838, 3.346759, 4.119802>,  <1.548686, 3.384074, 3.714789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.029838, 3.346759, 4.119802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074999, 3.701645, 3.940872>,  <2.102096, 3.914577, 3.833514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074999, 3.701645, 3.940872>,  <2.029838, 3.346759, 4.119802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.074999, 3.701645, 3.940872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139492, 0.431593, 0.891218,
		0.983766, -0.163020, -0.075031,
		0.112903, 0.887216, -0.447326,
		2.108870, 3.967810, 3.806674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.741949, 3.514213, 4.159040>,  <2.029838, 3.346759, 4.119802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.741949, 3.514213, 4.159040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.481671, 3.817894, 4.153297>,  <2.325504, 4.000103, 4.149851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.481671, 3.817894, 4.153297>,  <2.741949, 3.514213, 4.159040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.481671, 3.817894, 4.153297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326835, 0.297090, 0.897171,
		0.685401, 0.579092, -0.441449,
		-0.650695, 0.759203, -0.014358,
		2.286462, 4.045655, 4.148990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.176872, 4.050520, 4.260223>,  <2.741949, 3.514213, 4.159040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.176872, 4.050520, 4.260223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804502, 4.115944, 4.390839>,  <2.581080, 4.155198, 4.469208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804502, 4.115944, 4.390839>,  <3.176872, 4.050520, 4.260223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804502, 4.115944, 4.390839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363002, 0.316192, 0.876500,
		0.040110, 0.934490, -0.353723,
		-0.930924, 0.163559, 0.326540,
		2.525225, 4.165011, 4.488801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.117817, 4.715870, 4.538591>,  <3.176872, 4.050520, 4.260223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.117817, 4.715870, 4.538591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.826864, 4.500366, 4.708603>,  <2.652292, 4.371064, 4.810610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.826864, 4.500366, 4.708603>,  <3.117817, 4.715870, 4.538591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826864, 4.500366, 4.708603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254925, 0.362902, 0.896279,
		-0.637124, 0.760289, -0.126625,
		-0.727383, -0.538760, 0.425030,
		2.608649, 4.338738, 4.836112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.776356, 5.168582, 5.025605>,  <3.117817, 4.715870, 4.538591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.776356, 5.168582, 5.025605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670092, 4.800186, 5.139587>,  <2.606333, 4.579148, 5.207977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670092, 4.800186, 5.139587>,  <2.776356, 5.168582, 5.025605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.670092, 4.800186, 5.139587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228615, 0.226964, 0.946690,
		-0.936568, 0.316644, 0.150257,
		-0.265661, -0.920991, 0.284957,
		2.590393, 4.523889, 5.225074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
