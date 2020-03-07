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
	<3.770913, 2.955396, 1.653216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.375015, 2.919140, 1.609051>,  <3.137477, 2.897386, 1.582552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.375015, 2.919140, 1.609051>,  <3.770913, 2.955396, 1.653216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.375015, 2.919140, 1.609051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027874, 0.635523, -0.771578,
		0.140106, -0.766743, -0.626479,
		-0.989744, -0.090641, -0.110413,
		3.078092, 2.891948, 1.575927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.560780, 3.004921, 0.893293>,  <3.770913, 2.955396, 1.653216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.560780, 3.004921, 0.893293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.234699, 3.131893, 1.087070>,  <3.039051, 3.208076, 1.203337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.234699, 3.131893, 1.087070>,  <3.560780, 3.004921, 0.893293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.234699, 3.131893, 1.087070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158602, 0.682112, -0.713841,
		-0.557040, -0.658757, -0.505713,
		-0.815201, 0.317430, 0.484444,
		2.990139, 3.227122, 1.232404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.015517, 3.125038, 0.350900>,  <3.560780, 3.004921, 0.893293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.015517, 3.125038, 0.350900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938171, 3.342010, 0.677917>,  <2.891764, 3.472194, 0.874128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938171, 3.342010, 0.677917>,  <3.015517, 3.125038, 0.350900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.938171, 3.342010, 0.677917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156781, 0.805479, -0.571509,
		-0.968519, -0.238685, -0.070708,
		-0.193364, 0.542432, 0.817544,
		2.880162, 3.504740, 0.923181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.329452, 3.443890, 0.294974>,  <3.015517, 3.125038, 0.350900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.329452, 3.443890, 0.294974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.557228, 3.664337, 0.538944>,  <2.693894, 3.796605, 0.685326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.557228, 3.664337, 0.538944>,  <2.329452, 3.443890, 0.294974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.557228, 3.664337, 0.538944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013415, 0.735643, -0.677237,
		-0.821924, 0.393828, 0.411511,
		0.569440, 0.551117, 0.609925,
		2.728060, 3.829672, 0.721922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.911320, 4.084124, 0.428344>,  <2.329452, 3.443890, 0.294974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.911320, 4.084124, 0.428344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.298355, 4.173397, 0.475613>,  <2.530576, 4.226961, 0.503974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.298355, 4.173397, 0.475613>,  <1.911320, 4.084124, 0.428344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.298355, 4.173397, 0.475613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087518, 0.735280, -0.672090,
		-0.236888, 0.639963, 0.730979,
		0.967587, 0.223184, 0.118171,
		2.588631, 4.240352, 0.511064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.862460, 4.729441, 0.531545>,  <1.911320, 4.084124, 0.428344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.862460, 4.729441, 0.531545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236862, 4.643696, 0.419872>,  <2.461504, 4.592248, 0.352869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236862, 4.643696, 0.419872>,  <1.862460, 4.729441, 0.531545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.236862, 4.643696, 0.419872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017283, 0.764215, -0.644729,
		0.351561, 0.608295, 0.711605,
		0.936005, -0.214364, -0.279182,
		2.517664, 4.579387, 0.336118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.161876, 5.350465, 0.484557>,  <1.862460, 4.729441, 0.531545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.161876, 5.350465, 0.484557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.413544, 5.118561, 0.277473>,  <2.564544, 4.979418, 0.153223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.413544, 5.118561, 0.277473>,  <2.161876, 5.350465, 0.484557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.413544, 5.118561, 0.277473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139256, 0.739365, -0.658747,
		0.764692, 0.342369, 0.545921,
		0.629169, -0.579761, -0.517709,
		2.602294, 4.944633, 0.122161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.748635, 5.811677, 0.375206>,  <2.161876, 5.350465, 0.484557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.748635, 5.811677, 0.375206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.726402, 5.514332, 0.108576>,  <2.713063, 5.335925, -0.051403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.726402, 5.514332, 0.108576>,  <2.748635, 5.811677, 0.375206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.726402, 5.514332, 0.108576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077779, 0.662356, -0.745141,
		0.995420, -0.093262, 0.021003,
		-0.055581, -0.743362, -0.666576,
		2.709728, 5.291323, -0.091397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.368943, 5.960580, 3.718416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.488312, 5.587658, 3.636684>,  <2.559933, 5.363904, 3.587646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.488312, 5.587658, 3.636684>,  <2.368943, 5.960580, 3.718416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488312, 5.587658, 3.636684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192719, -0.150814, 0.969595,
		-0.934775, -0.328727, 0.134667,
		0.298422, -0.932306, -0.204329,
		2.577839, 5.307966, 3.575386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.926405, 5.502332, 4.152093>,  <2.368943, 5.960580, 3.718416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.926405, 5.502332, 4.152093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283310, 5.356632, 4.045368>,  <2.497453, 5.269212, 3.981333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283310, 5.356632, 4.045368>,  <1.926405, 5.502332, 4.152093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.283310, 5.356632, 4.045368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244660, -0.106614, 0.963730,
		-0.379485, -0.925178, -0.006010,
		0.892263, -0.364251, -0.266812,
		2.550989, 5.247357, 3.965325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.043601, 4.834766, 4.174367>,  <1.926405, 5.502332, 4.152093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.043601, 4.834766, 4.174367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.405144, 4.997688, 4.226742>,  <2.622070, 5.095441, 4.258166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.405144, 4.997688, 4.226742>,  <2.043601, 4.834766, 4.174367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.405144, 4.997688, 4.226742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130771, -0.554413, 0.821904,
		0.407358, -0.725761, -0.554374,
		0.903858, 0.407305, 0.130936,
		2.676301, 5.119880, 4.266023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.704230, 4.262955, 4.188051>,  <2.043601, 4.834766, 4.174367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.704230, 4.262955, 4.188051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.740150, 4.593761, 4.410034>,  <2.761703, 4.792245, 4.543224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.740150, 4.593761, 4.410034>,  <2.704230, 4.262955, 4.188051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.740150, 4.593761, 4.410034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223836, -0.559714, 0.797883,
		0.970481, 0.052568, -0.235380,
		0.089802, 0.827017, 0.554958,
		2.767091, 4.841866, 4.576522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.375753, 4.167566, 4.472141>,  <2.704230, 4.262955, 4.188051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.375753, 4.167566, 4.472141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159142, 4.432861, 4.678776>,  <3.029175, 4.592039, 4.802756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159142, 4.432861, 4.678776>,  <3.375753, 4.167566, 4.472141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.159142, 4.432861, 4.678776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182167, -0.507309, 0.842290,
		0.820708, 0.550229, 0.153903,
		-0.541529, 0.663238, 0.516586,
		2.996683, 4.631833, 4.833752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.727615, 4.311734, 5.034090>,  <3.375753, 4.167566, 4.472141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.727615, 4.311734, 5.034090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.363701, 4.436203, 5.143970>,  <3.145352, 4.510884, 5.209899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.363701, 4.436203, 5.143970>,  <3.727615, 4.311734, 5.034090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.363701, 4.436203, 5.143970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136525, -0.400653, 0.906001,
		0.391983, 0.861771, 0.322025,
		-0.909786, 0.311173, 0.274702,
		3.090765, 4.529555, 5.226381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.825308, 4.530510, 5.803384>,  <3.727615, 4.311734, 5.034090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.825308, 4.530510, 5.803384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.445602, 4.453865, 5.703640>,  <3.217779, 4.407878, 5.643794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.445602, 4.453865, 5.703640>,  <3.825308, 4.530510, 5.803384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.445602, 4.453865, 5.703640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146639, -0.431748, 0.889995,
		-0.278196, 0.881407, 0.381745,
		-0.949265, -0.191614, -0.249359,
		3.160823, 4.396381, 5.628832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.430379, 4.661341, 6.347455>,  <3.825308, 4.530510, 5.803384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.430379, 4.661341, 6.347455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.203331, 4.398445, 6.149124>,  <3.067102, 4.240707, 6.030126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.203331, 4.398445, 6.149124>,  <3.430379, 4.661341, 6.347455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.203331, 4.398445, 6.149124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046321, -0.575801, 0.816277,
		-0.821987, 0.486302, 0.296392,
		-0.567620, -0.657240, -0.495826,
		3.033045, 4.201273, 6.000376>
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
