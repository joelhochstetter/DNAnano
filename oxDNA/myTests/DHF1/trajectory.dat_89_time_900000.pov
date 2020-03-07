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
	<0.700185, -0.058889, 2.999695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.048187, -0.183510, 3.152548>,  <1.256989, -0.258282, 3.244259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.048187, -0.183510, 3.152548>,  <0.700185, -0.058889, 2.999695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.048187, -0.183510, 3.152548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079343, 0.853419, 0.515151,
		-0.486614, -0.417865, 0.767199,
		0.870006, -0.311552, 0.382131,
		1.309189, -0.276975, 3.267187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.652128, -0.171890, 3.768414>,  <0.700185, -0.058889, 2.999695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.652128, -0.171890, 3.768414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005554, -0.041740, 3.633686>,  <1.217610, 0.036349, 3.552850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005554, -0.041740, 3.633686>,  <0.652128, -0.171890, 3.768414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.005554, -0.041740, 3.633686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001186, 0.720774, 0.693169,
		0.468308, -0.612060, 0.637236,
		0.883565, 0.325373, -0.336819,
		1.270623, 0.055871, 3.532640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.898891, 0.062869, 4.341150>,  <0.652128, -0.171890, 3.768414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.898891, 0.062869, 4.341150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.164436, 0.190102, 4.070415>,  <1.323764, 0.266441, 3.907975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.164436, 0.190102, 4.070415>,  <0.898891, 0.062869, 4.341150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.164436, 0.190102, 4.070415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284924, 0.729206, 0.622155,
		0.691448, -0.605874, 0.393466,
		0.663865, 0.318080, -0.676836,
		1.363596, 0.285526, 3.867364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.563406, 0.277909, 4.567428>,  <0.898891, 0.062869, 4.341150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.563406, 0.277909, 4.567428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.531731, 0.479324, 4.223293>,  <1.512726, 0.600173, 4.016812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.531731, 0.479324, 4.223293>,  <1.563406, 0.277909, 4.567428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.531731, 0.479324, 4.223293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665411, 0.669328, 0.330498,
		0.742265, -0.546306, -0.388062,
		-0.079188, 0.503537, -0.860337,
		1.507974, 0.630386, 3.965192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.213112, 0.375654, 4.238433>,  <1.563406, 0.277909, 4.567428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.213112, 0.375654, 4.238433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.964148, 0.668091, 4.126642>,  <1.814769, 0.843553, 4.059567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.964148, 0.668091, 4.126642>,  <2.213112, 0.375654, 4.238433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.964148, 0.668091, 4.126642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682339, 0.681764, 0.263839,
		0.383429, -0.026482, -0.923191,
		-0.622411, 0.731093, -0.279478,
		1.777424, 0.887419, 4.042799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.644995, 0.900588, 3.895130>,  <2.213112, 0.375654, 4.238433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.644995, 0.900588, 3.895130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353256, 1.173519, 3.915058>,  <2.178213, 1.337278, 3.927015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353256, 1.173519, 3.915058>,  <2.644995, 0.900588, 3.895130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.353256, 1.173519, 3.915058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683239, 0.730193, 0.001764,
		-0.035174, 0.035325, -0.998757,
		-0.729347, 0.682327, 0.049819,
		2.134452, 1.378217, 3.930004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.737520, 1.465621, 3.330143>,  <2.644995, 0.900588, 3.895130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.737520, 1.465621, 3.330143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513108, 1.616688, 3.624792>,  <2.378461, 1.707328, 3.801582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513108, 1.616688, 3.624792>,  <2.737520, 1.465621, 3.330143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.513108, 1.616688, 3.624792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539117, 0.841967, -0.021074,
		-0.628171, 0.385304, -0.675975,
		-0.561029, 0.377668, 0.736623,
		2.344800, 1.729988, 3.845779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.467746, 2.129296, 3.168903>,  <2.737520, 1.465621, 3.330143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.467746, 2.129296, 3.168903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517844, 2.101482, 3.564777>,  <2.547903, 2.084795, 3.802302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517844, 2.101482, 3.564777>,  <2.467746, 2.129296, 3.168903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.517844, 2.101482, 3.564777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500130, 0.865947, -0.002452,
		-0.856845, 0.495279, 0.143230,
		0.125244, -0.069533, 0.989686,
		2.555418, 2.080622, 3.861683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.310217, 3.393866, 3.402911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.323715, 3.519524, 3.782421>,  <3.331814, 3.594918, 4.010127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.323715, 3.519524, 3.782421>,  <3.310217, 3.393866, 3.402911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.323715, 3.519524, 3.782421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402410, -0.864694, 0.300617,
		0.914837, -0.391942, 0.097235,
		0.033746, 0.314144, 0.948776,
		3.333839, 3.613767, 4.067054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.691423, 2.777282, 3.939331>,  <3.310217, 3.393866, 3.402911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.691423, 2.777282, 3.939331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411640, 3.026138, 4.080013>,  <3.243770, 3.175452, 4.164423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411640, 3.026138, 4.080013>,  <3.691423, 2.777282, 3.939331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.411640, 3.026138, 4.080013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514395, -0.779902, 0.356580,
		0.496140, 0.068496, 0.865536,
		-0.699458, 0.622142, 0.351707,
		3.201803, 3.212781, 4.185525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.482867, 2.571944, 4.653644>,  <3.691423, 2.777282, 3.939331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.482867, 2.571944, 4.653644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.170296, 2.766159, 4.496864>,  <2.982753, 2.882689, 4.402797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.170296, 2.766159, 4.496864>,  <3.482867, 2.571944, 4.653644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.170296, 2.766159, 4.496864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610117, -0.726256, 0.316716,
		-0.130877, 0.486625, 0.863752,
		-0.781427, 0.485539, -0.391948,
		2.935868, 2.911821, 4.379280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.995751, 2.371182, 5.006822>,  <3.482867, 2.571944, 4.653644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.995751, 2.371182, 5.006822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804691, 2.427635, 4.659966>,  <2.690056, 2.461507, 4.451852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804691, 2.427635, 4.659966>,  <2.995751, 2.371182, 5.006822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804691, 2.427635, 4.659966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573673, -0.797645, 0.186177,
		-0.665395, 0.586383, 0.461958,
		-0.477649, 0.141132, -0.867141,
		2.661397, 2.469975, 4.399823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.309125, 2.217088, 5.124033>,  <2.995751, 2.371182, 5.006822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.309125, 2.217088, 5.124033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.341362, 2.201012, 4.725658>,  <2.360704, 2.191366, 4.486634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.341362, 2.201012, 4.725658>,  <2.309125, 2.217088, 5.124033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.341362, 2.201012, 4.725658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753485, -0.656560, -0.034477,
		-0.652507, 0.753202, -0.083197,
		0.080592, -0.040191, -0.995936,
		2.365540, 2.188954, 4.426877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.652960, 2.226011, 4.876604>,  <2.309125, 2.217088, 5.124033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.652960, 2.226011, 4.876604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.848858, 2.074516, 4.562481>,  <1.966397, 1.983620, 4.374007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.848858, 2.074516, 4.562481>,  <1.652960, 2.226011, 4.876604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.848858, 2.074516, 4.562481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696647, -0.711584, -0.091272,
		-0.524244, 0.591782, -0.612341,
		0.489746, -0.378737, -0.785307,
		1.995782, 1.960895, 4.326889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.209924, 2.021982, 4.349256>,  <1.652960, 2.226011, 4.876604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.209924, 2.021982, 4.349256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.534435, 1.801796, 4.270447>,  <1.729142, 1.669684, 4.223161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.534435, 1.801796, 4.270447>,  <1.209924, 2.021982, 4.349256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.534435, 1.801796, 4.270447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582523, -0.789833, -0.191915,
		-0.049973, 0.270467, -0.961432,
		0.811277, -0.550465, -0.197023,
		1.777818, 1.636656, 4.211340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.110122, 1.974544, 3.666351>,  <1.209924, 2.021982, 4.349256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.110122, 1.974544, 3.666351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.276325, 1.651299, 3.833351>,  <1.376047, 1.457351, 3.933551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.276325, 1.651299, 3.833351>,  <1.110122, 1.974544, 3.666351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.276325, 1.651299, 3.833351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716168, -0.573627, -0.397562,
		0.560764, -0.133811, -0.817091,
		0.415508, -0.808113, 0.417501,
		1.400977, 1.408865, 3.958601>
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
