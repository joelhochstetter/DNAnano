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
	<3.078357, 3.995947, 2.544631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.813011, 3.936142, 2.837914>,  <2.653804, 3.900259, 3.013883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.813011, 3.936142, 2.837914>,  <3.078357, 3.995947, 2.544631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.813011, 3.936142, 2.837914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309709, 0.946830, -0.087133,
		-0.681195, -0.284882, -0.674400,
		-0.663365, -0.149513, 0.733207,
		2.614002, 3.891288, 3.057876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.502486, 4.213029, 2.294546>,  <3.078357, 3.995947, 2.544631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.502486, 4.213029, 2.294546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473946, 4.248573, 2.691940>,  <2.456821, 4.269899, 2.930377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473946, 4.248573, 2.691940>,  <2.502486, 4.213029, 2.294546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.473946, 4.248573, 2.691940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334823, 0.936097, -0.107773,
		-0.939576, -0.340332, -0.037039,
		-0.071351, 0.088860, 0.993485,
		2.452540, 4.275231, 2.989986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.924708, 4.555386, 2.519716>,  <2.502486, 4.213029, 2.294546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.924708, 4.555386, 2.519716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.167564, 4.628098, 2.829124>,  <2.313278, 4.671725, 3.014770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.167564, 4.628098, 2.829124>,  <1.924708, 4.555386, 2.519716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.167564, 4.628098, 2.829124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040485, 0.979293, -0.198360,
		-0.793562, 0.089116, 0.601928,
		0.607140, 0.181780, 0.773522,
		2.349707, 4.682631, 3.061181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.502892, 4.312733, 1.963666>,  <1.924708, 4.555386, 2.519716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.502892, 4.312733, 1.963666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.657631, 4.666481, 1.859177>,  <1.750474, 4.878730, 1.796483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.657631, 4.666481, 1.859177>,  <1.502892, 4.312733, 1.963666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.657631, 4.666481, 1.859177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164826, -0.345030, -0.924006,
		-0.907293, 0.314393, -0.279242,
		0.386847, 0.884371, -0.261223,
		1.773685, 4.931792, 1.780810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.336740, 4.633837, 1.307343>,  <1.502892, 4.312733, 1.963666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.336740, 4.633837, 1.307343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.680046, 4.828880, 1.371368>,  <1.886030, 4.945906, 1.409784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.680046, 4.828880, 1.371368>,  <1.336740, 4.633837, 1.307343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.680046, 4.828880, 1.371368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246364, -0.117854, -0.961985,
		-0.450207, 0.865072, -0.221279,
		0.858265, 0.487607, 0.160064,
		1.937526, 4.975163, 1.419387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.401209, 5.067672, 0.786550>,  <1.336740, 4.633837, 1.307343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.401209, 5.067672, 0.786550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.776718, 5.048897, 0.923080>,  <2.002024, 5.037632, 1.004998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.776718, 5.048897, 0.923080>,  <1.401209, 5.067672, 0.786550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.776718, 5.048897, 0.923080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332072, -0.140798, -0.932686,
		0.091837, 0.988925, -0.116591,
		0.938773, -0.046939, 0.341325,
		2.058350, 5.034815, 1.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.799134, 5.700230, 0.472212>,  <1.401209, 5.067672, 0.786550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.799134, 5.700230, 0.472212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.045174, 5.401695, 0.573906>,  <2.192797, 5.222575, 0.634922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.045174, 5.401695, 0.573906>,  <1.799134, 5.700230, 0.472212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.045174, 5.401695, 0.573906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369731, -0.011764, -0.929064,
		0.696385, 0.665465, 0.268707,
		0.615099, -0.746336, 0.254235,
		2.229703, 5.177794, 0.650177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.433665, 5.893649, 0.245367>,  <1.799134, 5.700230, 0.472212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.433665, 5.893649, 0.245367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462837, 5.495384, 0.268478>,  <2.480341, 5.256425, 0.282345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462837, 5.495384, 0.268478>,  <2.433665, 5.893649, 0.245367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.462837, 5.495384, 0.268478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306257, -0.032775, -0.951384,
		0.949151, 0.087080, 0.302538,
		0.072931, -0.995662, 0.057777,
		2.484716, 5.196686, 0.285812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.375184, 5.517091, -1.360553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.505787, 5.139664, -1.382721>,  <2.584148, 4.913207, -1.396022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.505787, 5.139664, -1.382721>,  <2.375184, 5.517091, -1.360553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.505787, 5.139664, -1.382721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011314, -0.062530, 0.997979,
		-0.945127, -0.325219, -0.031092,
		0.326506, -0.943569, -0.055419,
		2.603739, 4.856593, -1.399347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.008838, 4.886492, -1.081008>,  <2.375184, 5.517091, -1.360553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.008838, 4.886492, -1.081008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387272, 4.805511, -0.979866>,  <2.614332, 4.756923, -0.919181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387272, 4.805511, -0.979866>,  <2.008838, 4.886492, -1.081008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387272, 4.805511, -0.979866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261077, -0.014532, 0.965209,
		-0.191737, -0.979184, -0.066604,
		0.946084, -0.202455, 0.252856,
		2.671098, 4.744776, -0.904009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.050965, 4.304267, -0.703305>,  <2.008838, 4.886492, -1.081008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.050965, 4.304267, -0.703305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.374336, 4.513596, -0.595543>,  <2.568359, 4.639193, -0.530886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.374336, 4.513596, -0.595543>,  <2.050965, 4.304267, -0.703305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.374336, 4.513596, -0.595543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318182, 0.003487, 0.948023,
		0.495182, -0.852128, 0.169330,
		0.808428, 0.523322, 0.269405,
		2.616865, 4.670592, -0.514721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.351601, 3.994988, -0.132241>,  <2.050965, 4.304267, -0.703305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.351601, 3.994988, -0.132241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512867, 4.360992, -0.126381>,  <2.609627, 4.580595, -0.122865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512867, 4.360992, -0.126381>,  <2.351601, 3.994988, -0.132241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.512867, 4.360992, -0.126381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172347, 0.060197, 0.983195,
		0.898751, -0.398915, 0.181969,
		0.403165, 0.915010, 0.014650,
		2.633816, 4.635495, -0.121986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.843626, 4.007779, 0.376425>,  <2.351601, 3.994988, -0.132241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.843626, 4.007779, 0.376425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.744698, 4.394653, 0.353157>,  <2.685341, 4.626778, 0.339196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.744698, 4.394653, 0.353157>,  <2.843626, 4.007779, 0.376425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.744698, 4.394653, 0.353157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059526, 0.044755, 0.997223,
		0.967104, 0.250096, 0.046504,
		-0.247320, 0.967186, -0.058170,
		2.670501, 4.684809, 0.335706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.184492, 4.333152, 1.035611>,  <2.843626, 4.007779, 0.376425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.184492, 4.333152, 1.035611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.891880, 4.569305, 0.899193>,  <2.716313, 4.710998, 0.817342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.891880, 4.569305, 0.899193>,  <3.184492, 4.333152, 1.035611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.891880, 4.569305, 0.899193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277196, 0.199471, 0.939880,
		0.622918, 0.782086, 0.017733,
		-0.731530, 0.590384, -0.341045,
		2.672421, 4.746420, 0.796879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.274554, 5.009202, 1.368301>,  <3.184492, 4.333152, 1.035611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.274554, 5.009202, 1.368301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888542, 4.993713, 1.264595>,  <2.656935, 4.984420, 1.202371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888542, 4.993713, 1.264595>,  <3.274554, 5.009202, 1.368301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.888542, 4.993713, 1.264595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258401, 0.306980, 0.915965,
		0.044121, 0.950928, -0.306250,
		-0.965030, -0.038722, -0.259265,
		2.599033, 4.982097, 1.186816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.939938, 5.669938, 1.560639>,  <3.274554, 5.009202, 1.368301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.939938, 5.669938, 1.560639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.648083, 5.398987, 1.523140>,  <2.472970, 5.236416, 1.500641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.648083, 5.398987, 1.523140>,  <2.939938, 5.669938, 1.560639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.648083, 5.398987, 1.523140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297473, 0.190962, 0.935438,
		-0.615743, 0.710417, -0.340835,
		-0.729637, -0.677378, -0.093747,
		2.429192, 5.195774, 1.495016>
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
