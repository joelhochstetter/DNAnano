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
	<3.058506, 5.245432, 0.567726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.224361, 5.000854, 0.298145>,  <3.323875, 4.854108, 0.136397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.224361, 5.000854, 0.298145>,  <3.058506, 5.245432, 0.567726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.224361, 5.000854, 0.298145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172905, -0.674188, 0.718035,
		-0.893408, -0.414256, -0.173824,
		0.414640, -0.611443, -0.673952,
		3.348753, 4.817421, 0.095960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703920, 4.504824, 0.534778>,  <3.058506, 5.245432, 0.567726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703920, 4.504824, 0.534778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.100063, 4.508423, 0.479485>,  <3.337749, 4.510582, 0.446309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.100063, 4.508423, 0.479485>,  <2.703920, 4.504824, 0.534778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.100063, 4.508423, 0.479485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116126, -0.597971, 0.793061,
		-0.075524, -0.801467, -0.593251,
		0.990359, 0.008996, -0.138233,
		3.397171, 4.511122, 0.438015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.933489, 3.850056, 0.468120>,  <2.703920, 4.504824, 0.534778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.933489, 3.850056, 0.468120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.219208, 4.091370, 0.610008>,  <3.390639, 4.236158, 0.695141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.219208, 4.091370, 0.610008>,  <2.933489, 3.850056, 0.468120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.219208, 4.091370, 0.610008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021725, -0.525728, 0.850375,
		0.699505, -0.599715, -0.388633,
		0.714298, 0.603284, 0.354720,
		3.433497, 4.272355, 0.716424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.479585, 3.381960, 0.665854>,  <2.933489, 3.850056, 0.468120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.479585, 3.381960, 0.665854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.511623, 3.723656, 0.871323>,  <3.530847, 3.928673, 0.994604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.511623, 3.723656, 0.871323>,  <3.479585, 3.381960, 0.665854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.511623, 3.723656, 0.871323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016956, -0.514085, 0.857572,
		0.996643, -0.077398, -0.026692,
		0.080096, 0.854240, 0.513671,
		3.535652, 3.979928, 1.025424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.910000, 3.269437, 1.228812>,  <3.479585, 3.381960, 0.665854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.910000, 3.269437, 1.228812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.746374, 3.604340, 1.373955>,  <3.648198, 3.805281, 1.461040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.746374, 3.604340, 1.373955>,  <3.910000, 3.269437, 1.228812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.746374, 3.604340, 1.373955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111928, -0.348608, 0.930561,
		0.905614, 0.421275, 0.048891,
		-0.409066, 0.837258, 0.362857,
		3.623654, 3.855517, 1.482812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.378183, 3.520043, 1.712682>,  <3.910000, 3.269437, 1.228812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.378183, 3.520043, 1.712682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009277, 3.643578, 1.805676>,  <3.787934, 3.717699, 1.861472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009277, 3.643578, 1.805676>,  <4.378183, 3.520043, 1.712682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.009277, 3.643578, 1.805676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130616, -0.317077, 0.939362,
		0.363826, 0.896706, 0.252090,
		-0.922263, 0.308837, 0.232485,
		3.732598, 3.736229, 1.875421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.336019, 3.785886, 2.401216>,  <4.378183, 3.520043, 1.712682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.336019, 3.785886, 2.401216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.954876, 3.692810, 2.323326>,  <3.726190, 3.636964, 2.276592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.954876, 3.692810, 2.323326>,  <4.336019, 3.785886, 2.401216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.954876, 3.692810, 2.323326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139170, -0.235109, 0.961954,
		-0.269619, 0.943705, 0.191642,
		-0.952858, -0.232690, -0.194725,
		3.669019, 3.623003, 2.264909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.982188, 4.166486, 2.906027>,  <4.336019, 3.785886, 2.401216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.982188, 4.166486, 2.906027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.717535, 3.885498, 2.801125>,  <3.558743, 3.716905, 2.738183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.717535, 3.885498, 2.801125>,  <3.982188, 4.166486, 2.906027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.717535, 3.885498, 2.801125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184889, -0.186117, 0.964975,
		-0.726676, 0.686947, -0.006738,
		-0.661632, -0.702470, -0.262256,
		3.519045, 3.674757, 2.722448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.028770, 2.826916, 3.647892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.632033, 2.776215, 3.653282>,  <3.393991, 2.745794, 3.656517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.632033, 2.776215, 3.653282>,  <4.028770, 2.826916, 3.647892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.632033, 2.776215, 3.653282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072790, 0.476421, -0.876199,
		0.104640, -0.870033, -0.481761,
		-0.991843, -0.126753, 0.013477,
		3.334481, 2.738189, 3.657325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.734786, 2.789491, 2.962286>,  <4.028770, 2.826916, 3.647892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.734786, 2.789491, 2.962286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.407639, 2.905113, 3.161301>,  <3.211351, 2.974486, 3.280710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.407639, 2.905113, 3.161301>,  <3.734786, 2.789491, 2.962286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.407639, 2.905113, 3.161301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263133, 0.581078, -0.770136,
		-0.511720, -0.760786, -0.399184,
		-0.817865, 0.289055, 0.497537,
		3.162280, 2.991830, 3.310562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.234484, 2.563378, 2.505224>,  <3.734786, 2.789491, 2.962286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.234484, 2.563378, 2.505224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.189590, 2.881042, 2.744125>,  <3.162653, 3.071641, 2.887466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.189590, 2.881042, 2.744125>,  <3.234484, 2.563378, 2.505224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.189590, 2.881042, 2.744125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103940, 0.588372, -0.801882,
		-0.988230, -0.152079, 0.016508,
		-0.112236, 0.794160, 0.597254,
		3.155919, 3.119291, 2.923302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.666784, 2.881246, 2.175085>,  <3.234484, 2.563378, 2.505224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.666784, 2.881246, 2.175085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.929795, 3.120689, 2.358093>,  <3.087601, 3.264356, 2.467898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.929795, 3.120689, 2.358093>,  <2.666784, 2.881246, 2.175085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.929795, 3.120689, 2.358093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017050, 0.595271, -0.803344,
		-0.753238, 0.536021, 0.381200,
		0.657527, 0.598609, 0.457520,
		3.127053, 3.300272, 2.495349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.404193, 3.517430, 2.056640>,  <2.666784, 2.881246, 2.175085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.404193, 3.517430, 2.056640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.800375, 3.545792, 2.103928>,  <3.038083, 3.562809, 2.132300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.800375, 3.545792, 2.103928>,  <2.404193, 3.517430, 2.056640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.800375, 3.545792, 2.103928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030815, 0.721995, -0.691212,
		-0.134363, 0.688256, 0.712917,
		0.990453, 0.070905, 0.118218,
		3.097510, 3.567063, 2.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.515964, 4.284318, 2.143264>,  <2.404193, 3.517430, 2.056640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.515964, 4.284318, 2.143264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.873066, 4.126015, 2.057137>,  <3.087328, 4.031033, 2.005460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.873066, 4.126015, 2.057137>,  <2.515964, 4.284318, 2.143264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.873066, 4.126015, 2.057137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166862, 0.734363, -0.657927,
		0.418502, 0.551440, 0.721644,
		0.892756, -0.395759, -0.215319,
		3.140893, 4.007287, 1.992541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.947689, 4.890348, 1.963511>,  <2.515964, 4.284318, 2.143264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.947689, 4.890348, 1.963511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158165, 4.582512, 1.818817>,  <3.284451, 4.397810, 1.732001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158165, 4.582512, 1.818817>,  <2.947689, 4.890348, 1.963511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158165, 4.582512, 1.818817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329776, 0.576774, -0.747382,
		0.783818, 0.273975, 0.557286,
		0.526192, -0.769591, -0.361735,
		3.316023, 4.351635, 1.710297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.716849, 5.090680, 1.780776>,  <2.947689, 4.890348, 1.963511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.716849, 5.090680, 1.780776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.590744, 4.780762, 1.561577>,  <3.515082, 4.594811, 1.430057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.590744, 4.780762, 1.561577>,  <3.716849, 5.090680, 1.780776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.590744, 4.780762, 1.561577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151390, 0.528991, -0.835015,
		0.936852, -0.346208, -0.049473,
		-0.315260, -0.774796, -0.547999,
		3.496166, 4.548323, 1.397177>
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
