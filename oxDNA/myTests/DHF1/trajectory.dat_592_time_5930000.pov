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
	<2.200911, 2.697696, 4.200727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233387, 2.325982, 4.344859>,  <2.252872, 2.102954, 4.431338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233387, 2.325982, 4.344859>,  <2.200911, 2.697696, 4.200727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.233387, 2.325982, 4.344859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992030, 0.040393, -0.119352,
		0.096357, 0.367148, 0.925158,
		0.081190, -0.929285, 0.360329,
		2.257744, 2.047197, 4.452958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.843540, 2.676368, 4.665080>,  <2.200911, 2.697696, 4.200727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.843540, 2.676368, 4.665080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.765289, 2.322776, 4.495229>,  <2.718339, 2.110621, 4.393318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.765289, 2.322776, 4.495229>,  <2.843540, 2.676368, 4.665080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.765289, 2.322776, 4.495229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853366, 0.059906, -0.517858,
		0.483214, -0.463670, 0.742640,
		-0.195626, -0.883980, -0.424628,
		2.706601, 2.057582, 4.367840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.364844, 2.196205, 4.808983>,  <2.843540, 2.676368, 4.665080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.364844, 2.196205, 4.808983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.191036, 2.106950, 4.459949>,  <3.086751, 2.053398, 4.250529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.191036, 2.106950, 4.459949>,  <3.364844, 2.196205, 4.808983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.191036, 2.106950, 4.459949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888411, 0.053068, -0.455971,
		0.148050, -0.973342, 0.175178,
		-0.434519, -0.223137, -0.872584,
		3.060680, 2.040009, 4.198174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.696523, 1.536397, 4.363715>,  <3.364844, 2.196205, 4.808983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.696523, 1.536397, 4.363715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510174, 1.818037, 4.149349>,  <3.398364, 1.987021, 4.020730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510174, 1.818037, 4.149349>,  <3.696523, 1.536397, 4.363715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510174, 1.818037, 4.149349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818010, 0.111784, -0.564238,
		-0.337374, -0.701246, -0.628039,
		-0.465874, 0.704101, -0.535913,
		3.370412, 2.029267, 3.988575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.782647, 1.284761, 3.684542>,  <3.696523, 1.536397, 4.363715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.782647, 1.284761, 3.684542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735069, 1.681645, 3.699334>,  <3.706522, 1.919776, 3.708209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735069, 1.681645, 3.699334>,  <3.782647, 1.284761, 3.684542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.735069, 1.681645, 3.699334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755430, 0.114604, -0.645129,
		-0.644343, -0.048799, -0.763178,
		-0.118945, 0.992212, 0.036980,
		3.699386, 1.979309, 3.710428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.777320, 1.481348, 2.961297>,  <3.782647, 1.284761, 3.684542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.777320, 1.481348, 2.961297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.837215, 1.832443, 3.143353>,  <3.873153, 2.043101, 3.252587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.837215, 1.832443, 3.143353>,  <3.777320, 1.481348, 2.961297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.837215, 1.832443, 3.143353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802563, 0.160957, -0.574444,
		-0.577469, 0.451296, -0.680339,
		0.149739, 0.877739, 0.455141,
		3.882137, 2.095765, 3.279896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.943867, 1.907189, 2.474343>,  <3.777320, 1.481348, 2.961297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.943867, 1.907189, 2.474343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.094444, 2.099357, 2.791199>,  <4.184791, 2.214659, 2.981312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.094444, 2.099357, 2.791199>,  <3.943867, 1.907189, 2.474343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.094444, 2.099357, 2.791199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785635, 0.287605, -0.547779,
		-0.490988, 0.828540, -0.269170,
		0.376442, 0.480422, 0.792140,
		4.207377, 2.243484, 3.028841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.241922, 2.605025, 2.257622>,  <3.943867, 1.907189, 2.474343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.241922, 2.605025, 2.257622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434780, 2.499691, 2.591854>,  <4.550495, 2.436491, 2.792393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434780, 2.499691, 2.591854>,  <4.241922, 2.605025, 2.257622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.434780, 2.499691, 2.591854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870532, 0.251286, -0.423119,
		-0.098548, 0.931403, 0.350396,
		0.482144, -0.263333, 0.835579,
		4.579423, 2.420691, 2.842528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.518026, 2.315432, 2.105659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.671036, 2.216536, 2.461760>,  <5.762842, 2.157198, 2.675420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.671036, 2.216536, 2.461760>,  <5.518026, 2.315432, 2.105659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.671036, 2.216536, 2.461760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880882, 0.193140, 0.432139,
		-0.278786, -0.949510, -0.143910,
		0.382525, -0.247241, 0.890251,
		5.785793, 2.142363, 2.728835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.080520, 1.817209, 2.479250>,  <5.518026, 2.315432, 2.105659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.080520, 1.817209, 2.479250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.281494, 2.061674, 2.723885>,  <5.402079, 2.208353, 2.870665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.281494, 2.061674, 2.723885>,  <5.080520, 1.817209, 2.479250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.281494, 2.061674, 2.723885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843358, 0.190539, 0.502437,
		0.190539, -0.768229, 0.611163,
		-0.502437, -0.611163, -0.611586,
		5.432225, 2.245023, 2.907361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.941264, 1.805439, 3.223890>,  <5.080520, 1.817209, 2.479250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.941264, 1.805439, 3.223890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.048325, 2.186462, 3.165934>,  <5.112561, 2.415077, 3.131160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.048325, 2.186462, 3.165934>,  <4.941264, 1.805439, 3.223890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.048325, 2.186462, 3.165934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828724, 0.304300, 0.469700,
		0.491508, -0.005640, 0.870855,
		0.267650, 0.952560, -0.144892,
		5.128620, 2.472230, 3.122466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.037791, 2.251055, 3.879150>,  <4.941264, 1.805439, 3.223890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.037791, 2.251055, 3.879150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.893356, 2.422848, 3.548052>,  <4.806695, 2.525923, 3.349393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.893356, 2.422848, 3.548052>,  <5.037791, 2.251055, 3.879150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.893356, 2.422848, 3.548052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889724, 0.107185, 0.443737,
		0.279299, 0.896692, 0.343417,
		-0.361086, 0.429482, -0.827745,
		4.785030, 2.551692, 3.299728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.775664, 2.937787, 4.038771>,  <5.037791, 2.251055, 3.879150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.775664, 2.937787, 4.038771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.589386, 2.762733, 3.731108>,  <4.477619, 2.657701, 3.546510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.589386, 2.762733, 3.731108>,  <4.775664, 2.937787, 4.038771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.589386, 2.762733, 3.731108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858481, 0.012449, 0.512693,
		-0.214796, 0.899067, -0.381497,
		-0.465695, -0.437633, -0.769159,
		4.449677, 2.631444, 3.500360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.130666, 3.205787, 3.933443>,  <4.775664, 2.937787, 4.038771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.130666, 3.205787, 3.933443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.079636, 2.862453, 3.734652>,  <4.049017, 2.656453, 3.615377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.079636, 2.862453, 3.734652>,  <4.130666, 3.205787, 3.933443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.079636, 2.862453, 3.734652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950594, -0.037162, 0.308203,
		-0.283010, 0.511743, -0.811187,
		-0.127575, -0.858334, -0.496978,
		4.041363, 2.604953, 3.585558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.532451, 3.245869, 3.647943>,  <4.130666, 3.205787, 3.933443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.532451, 3.245869, 3.647943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.590927, 2.850662, 3.667742>,  <3.626013, 2.613538, 3.679621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.590927, 2.850662, 3.667742>,  <3.532451, 3.245869, 3.647943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.590927, 2.850662, 3.667742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958637, -0.129135, 0.253653,
		-0.244222, -0.084531, -0.966028,
		0.146189, -0.988018, 0.049497,
		3.634784, 2.554257, 3.682591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.026876, 2.983772, 3.254281>,  <3.532451, 3.245869, 3.647943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.026876, 2.983772, 3.254281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121681, 2.710911, 3.530973>,  <3.178565, 2.547194, 3.696989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121681, 2.710911, 3.530973>,  <3.026876, 2.983772, 3.254281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.121681, 2.710911, 3.530973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964923, -0.082543, 0.249220,
		-0.112909, -0.726535, -0.677790,
		0.237013, -0.682154, 0.691730,
		3.192785, 2.506265, 3.738493>
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
