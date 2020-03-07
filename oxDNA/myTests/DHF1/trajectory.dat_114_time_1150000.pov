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
	<3.684147, 4.199058, 4.069463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377926, 4.453793, 4.032871>,  <3.194193, 4.606633, 4.010916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377926, 4.453793, 4.032871>,  <3.684147, 4.199058, 4.069463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.377926, 4.453793, 4.032871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510862, -0.688132, -0.515261,
		-0.391086, -0.347727, 0.852137,
		-0.765553, 0.636836, -0.091478,
		3.148260, 4.644844, 4.005427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.085214, 3.881550, 4.309440>,  <3.684147, 4.199058, 4.069463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.085214, 3.881550, 4.309440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.994032, 4.152683, 4.029846>,  <2.939323, 4.315363, 3.862090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.994032, 4.152683, 4.029846>,  <3.085214, 3.881550, 4.309440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.994032, 4.152683, 4.029846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423216, -0.715502, -0.555829,
		-0.876884, 0.169117, 0.449971,
		-0.227955, 0.677833, -0.698985,
		2.925646, 4.356033, 3.820151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.318998, 3.967939, 4.165777>,  <3.085214, 3.881550, 4.309440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.318998, 3.967939, 4.165777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.543135, 4.000984, 3.836124>,  <2.677617, 4.020812, 3.638333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.543135, 4.000984, 3.836124>,  <2.318998, 3.967939, 4.165777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.543135, 4.000984, 3.836124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370459, -0.864939, -0.338586,
		-0.740796, 0.495030, -0.454056,
		0.560341, 0.082614, -0.824132,
		2.711237, 4.025768, 3.588885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.941678, 3.916734, 3.626111>,  <2.318998, 3.967939, 4.165777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.941678, 3.916734, 3.626111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.299349, 3.773056, 3.519207>,  <2.513951, 3.686850, 3.455065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.299349, 3.773056, 3.519207>,  <1.941678, 3.916734, 3.626111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.299349, 3.773056, 3.519207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433588, -0.843516, -0.316990,
		-0.111578, 0.399325, -0.909994,
		0.894177, -0.359193, -0.267260,
		2.567602, 3.665298, 3.439029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.961972, 3.634773, 2.837491>,  <1.941678, 3.916734, 3.626111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.961972, 3.634773, 2.837491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.239025, 3.467369, 3.072475>,  <2.405257, 3.366927, 3.213466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.239025, 3.467369, 3.072475>,  <1.961972, 3.634773, 2.837491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.239025, 3.467369, 3.072475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332888, -0.908006, -0.254382,
		0.639880, -0.019366, -0.768231,
		0.692632, -0.418509, 0.587461,
		2.446815, 3.341816, 3.248714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.274961, 3.123668, 2.480796>,  <1.961972, 3.634773, 2.837491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.274961, 3.123668, 2.480796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353746, 3.020538, 2.859158>,  <2.401018, 2.958661, 3.086174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353746, 3.020538, 2.859158>,  <2.274961, 3.123668, 2.480796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.353746, 3.020538, 2.859158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132669, -0.962938, -0.234841,
		0.971393, -0.079236, -0.223869,
		0.196964, -0.257823, 0.945903,
		2.412836, 2.943191, 3.142928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.709106, 2.555163, 2.364776>,  <2.274961, 3.123668, 2.480796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.709106, 2.555163, 2.364776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.600351, 2.551189, 2.749687>,  <2.535099, 2.548805, 2.980634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.600351, 2.551189, 2.749687>,  <2.709106, 2.555163, 2.364776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.600351, 2.551189, 2.749687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120936, -0.992372, 0.023925,
		0.954700, 0.122879, 0.271014,
		-0.271887, -0.009934, 0.962278,
		2.518785, 2.548209, 3.038371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.155074, 2.095424, 2.683589>,  <2.709106, 2.555163, 2.364776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.155074, 2.095424, 2.683589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826378, 2.096149, 2.911533>,  <2.629160, 2.096585, 3.048300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826378, 2.096149, 2.911533>,  <3.155074, 2.095424, 2.683589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826378, 2.096149, 2.911533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078095, -0.990919, -0.109461,
		0.564486, -0.134451, 0.814419,
		-0.821740, 0.001813, 0.569860,
		2.579856, 2.096693, 3.082491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.556060, 0.545899, 2.830634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.161723, 0.571251, 2.892727>,  <1.925121, 0.586462, 2.929983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.161723, 0.571251, 2.892727>,  <2.556060, 0.545899, 2.830634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.161723, 0.571251, 2.892727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102853, 0.959750, 0.261344,
		-0.132422, 0.273611, -0.952681,
		-0.985843, 0.063379, 0.155233,
		1.865970, 0.590265, 2.939297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.345438, 1.089802, 2.416058>,  <2.556060, 0.545899, 2.830634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.345438, 1.089802, 2.416058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.135563, 1.037216, 2.752491>,  <2.009638, 1.005664, 2.954351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.135563, 1.037216, 2.752491>,  <2.345438, 1.089802, 2.416058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.135563, 1.037216, 2.752491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282409, 0.905173, 0.317657,
		-0.803086, 0.404200, -0.437807,
		-0.524688, -0.131465, 0.841082,
		1.978156, 0.997777, 3.004816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.744630, 1.604141, 2.550408>,  <2.345438, 1.089802, 2.416058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.744630, 1.604141, 2.550408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.860690, 1.458397, 2.904369>,  <1.930326, 1.370950, 3.116746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.860690, 1.458397, 2.904369>,  <1.744630, 1.604141, 2.550408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.860690, 1.458397, 2.904369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196145, 0.927694, 0.317666,
		-0.936664, 0.081398, 0.340638,
		0.290151, -0.364361, 0.884903,
		1.947735, 1.349089, 3.169840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.308585, 1.819928, 3.119107>,  <1.744630, 1.604141, 2.550408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.308585, 1.819928, 3.119107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.690231, 1.747467, 3.214478>,  <1.919219, 1.703990, 3.271700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.690231, 1.747467, 3.214478>,  <1.308585, 1.819928, 3.119107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690231, 1.747467, 3.214478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095914, 0.939181, 0.329757,
		-0.283662, -0.291758, 0.913462,
		0.954115, -0.181153, 0.238426,
		1.976466, 1.693121, 3.286005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516951, 2.101108, 3.843350>,  <1.308585, 1.819928, 3.119107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516951, 2.101108, 3.843350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.835840, 2.115135, 3.602283>,  <2.027174, 2.123551, 3.457644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.835840, 2.115135, 3.602283>,  <1.516951, 2.101108, 3.843350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.835840, 2.115135, 3.602283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245415, 0.893269, 0.376618,
		0.551549, -0.448152, 0.703529,
		0.797223, 0.035067, -0.602665,
		2.075007, 2.125655, 3.421484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.839397, 2.676613, 4.097759>,  <1.516951, 2.101108, 3.843350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.839397, 2.676613, 4.097759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.079952, 2.603516, 3.786648>,  <2.224285, 2.559657, 3.599981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.079952, 2.603516, 3.786648>,  <1.839397, 2.676613, 4.097759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.079952, 2.603516, 3.786648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596797, 0.749981, 0.285240,
		0.531193, -0.635716, 0.560089,
		0.601388, -0.182742, -0.777778,
		2.260369, 2.548693, 3.553314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.644887, 2.736854, 4.347164>,  <1.839397, 2.676613, 4.097759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.644887, 2.736854, 4.347164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598210, 2.772125, 3.951466>,  <2.570204, 2.793288, 3.714046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598210, 2.772125, 3.951466>,  <2.644887, 2.736854, 4.347164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.598210, 2.772125, 3.951466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443432, 0.895884, 0.027549,
		0.888679, -0.435449, -0.143645,
		-0.116693, 0.088179, -0.989246,
		2.563203, 2.798579, 3.654692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.265361, 2.822513, 4.119984>,  <2.644887, 2.736854, 4.347164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.265361, 2.822513, 4.119984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.007222, 2.999840, 3.871147>,  <2.852339, 3.106236, 3.721845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.007222, 2.999840, 3.871147>,  <3.265361, 2.822513, 4.119984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.007222, 2.999840, 3.871147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474724, 0.870769, 0.128059,
		0.598468, -0.212679, -0.772401,
		-0.645347, 0.443317, -0.622091,
		2.813618, 3.132835, 3.684520>
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
