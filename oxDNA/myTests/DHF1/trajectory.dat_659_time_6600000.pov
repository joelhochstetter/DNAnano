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
	<0.179260, 2.180529, -0.205765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.010761, 2.128195, -0.553835>,  <-0.124774, 2.096794, -0.762677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.010761, 2.128195, -0.553835>,  <0.179260, 2.180529, -0.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.010761, 2.128195, -0.553835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754647, 0.448034, -0.479347,
		0.452594, -0.884388, -0.114087,
		-0.475044, -0.130854, -0.870178,
		-0.153277, 2.088944, -0.814888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.807606, 1.726896, -0.093095>,  <0.179260, 2.180529, -0.205765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.807606, 1.726896, -0.093095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156345, 1.920343, -0.062130>,  <1.365589, 2.036412, -0.043551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156345, 1.920343, -0.062130>,  <0.807606, 1.726896, -0.093095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.156345, 1.920343, -0.062130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330953, -0.698235, 0.634774,
		0.361041, -0.527807, -0.768810,
		0.871848, 0.483620, 0.077412,
		1.417900, 2.065429, -0.038907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.239065, 1.159428, -0.210279>,  <0.807606, 1.726896, -0.093095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.239065, 1.159428, -0.210279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.454151, 1.453236, -0.044704>,  <1.583203, 1.629520, 0.054640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.454151, 1.453236, -0.044704>,  <1.239065, 1.159428, -0.210279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.454151, 1.453236, -0.044704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429546, -0.661120, 0.615150,
		0.725501, -0.152971, -0.671005,
		0.537715, 0.734520, 0.413936,
		1.615466, 1.673592, 0.079476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.936490, 0.914912, -0.143989>,  <1.239065, 1.159428, -0.210279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.936490, 0.914912, -0.143989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.912266, 1.191111, 0.144329>,  <1.897731, 1.356830, 0.317320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.912266, 1.191111, 0.144329>,  <1.936490, 0.914912, -0.143989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.912266, 1.191111, 0.144329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289106, -0.679034, 0.674782,
		0.955379, 0.249252, -0.158504,
		-0.060561, 0.690497, 0.720795,
		1.894097, 1.398260, 0.360568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.579297, 0.766972, 0.269145>,  <1.936490, 0.914912, -0.143989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.579297, 0.766972, 0.269145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363281, 0.996019, 0.515873>,  <2.233672, 1.133448, 0.663910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363281, 0.996019, 0.515873>,  <2.579297, 0.766972, 0.269145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.363281, 0.996019, 0.515873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357873, -0.507094, 0.784081,
		0.761764, 0.644178, 0.068927,
		-0.540040, 0.572618, 0.616819,
		2.201269, 1.167805, 0.700919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.020122, 1.159562, 0.687442>,  <2.579297, 0.766972, 0.269145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.020122, 1.159562, 0.687442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.664963, 1.082798, 0.854683>,  <2.451868, 1.036740, 0.955028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.664963, 1.082798, 0.854683>,  <3.020122, 1.159562, 0.687442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.664963, 1.082798, 0.854683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454731, -0.503823, 0.734427,
		0.069706, 0.842220, 0.534609,
		-0.887897, -0.191909, 0.418103,
		2.398594, 1.025225, 0.980114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.250544, 1.103796, 1.379579>,  <3.020122, 1.159562, 0.687442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.250544, 1.103796, 1.379579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.879276, 0.956173, 1.398752>,  <2.656515, 0.867599, 1.410256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.879276, 0.956173, 1.398752>,  <3.250544, 1.103796, 1.379579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.879276, 0.956173, 1.398752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252141, -0.528881, 0.810376,
		-0.273724, 0.764253, 0.583946,
		-0.928170, -0.369057, 0.047932,
		2.600825, 0.845456, 1.413132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.085549, 1.177392, 2.042643>,  <3.250544, 1.103796, 1.379579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.085549, 1.177392, 2.042643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900211, 0.872057, 1.862585>,  <2.789009, 0.688856, 1.754550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900211, 0.872057, 1.862585>,  <3.085549, 1.177392, 2.042643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.900211, 0.872057, 1.862585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229256, -0.593920, 0.771168,
		-0.856011, 0.254117, 0.450189,
		-0.463344, -0.763337, -0.450144,
		2.761208, 0.643056, 1.727542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.430254, -0.841706, 1.979958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.037819, -0.917117, 1.962408>,  <2.802358, -0.962364, 1.951878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.037819, -0.917117, 1.962408>,  <3.430254, -0.841706, 1.979958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.037819, -0.917117, 1.962408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143833, 0.861734, -0.486545,
		0.129535, -0.471032, -0.872553,
		-0.981088, -0.188527, -0.043875,
		2.743493, -0.973675, 1.949246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.354382, -0.495515, 1.391382>,  <3.430254, -0.841706, 1.979958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.354382, -0.495515, 1.391382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.030197, -0.526967, 1.623579>,  <2.835686, -0.545838, 1.762897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.030197, -0.526967, 1.623579>,  <3.354382, -0.495515, 1.391382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.030197, -0.526967, 1.623579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334338, 0.875786, -0.348162,
		-0.481011, -0.476252, -0.736079,
		-0.810461, -0.078629, 0.580492,
		2.787059, -0.550555, 1.797727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.724653, -0.206916, 1.012088>,  <3.354382, -0.495515, 1.391382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.724653, -0.206916, 1.012088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.586372, -0.197612, 1.387310>,  <2.503404, -0.192030, 1.612444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.586372, -0.197612, 1.387310>,  <2.724653, -0.206916, 1.012088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.586372, -0.197612, 1.387310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615158, 0.749277, -0.245282,
		-0.708570, -0.661848, -0.244718,
		-0.345701, 0.023259, 0.938056,
		2.482662, -0.190635, 1.668727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.902791, -0.324368, 1.120356>,  <2.724653, -0.206916, 1.012088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.902791, -0.324368, 1.120356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.114449, -0.030594, 1.290350>,  <2.241443, 0.145670, 1.392346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.114449, -0.030594, 1.290350>,  <1.902791, -0.324368, 1.120356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.114449, -0.030594, 1.290350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470146, 0.670701, -0.573693,
		-0.706377, 0.103762, 0.700190,
		0.529145, 0.734434, 0.424984,
		2.273192, 0.189736, 1.417845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.441360, 0.286963, 1.293878>,  <1.902791, -0.324368, 1.120356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.441360, 0.286963, 1.293878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.804314, 0.451817, 1.326864>,  <2.022086, 0.550729, 1.346656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.804314, 0.451817, 1.326864>,  <1.441360, 0.286963, 1.293878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.804314, 0.451817, 1.326864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333220, 0.824978, -0.456483,
		-0.256166, 0.386725, 0.885902,
		0.907383, 0.412135, 0.082467,
		2.076529, 0.575457, 1.351604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.271818, 0.943426, 1.548668>,  <1.441360, 0.286963, 1.293878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.271818, 0.943426, 1.548668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.628326, 0.977591, 1.370525>,  <1.842231, 0.998090, 1.263640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.628326, 0.977591, 1.370525>,  <1.271818, 0.943426, 1.548668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.628326, 0.977591, 1.370525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307138, 0.836238, -0.454283,
		0.333622, 0.541675, 0.771547,
		0.891270, 0.085413, -0.445356,
		1.895707, 1.003215, 1.236919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.390311, 1.700716, 1.517279>,  <1.271818, 0.943426, 1.548668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.390311, 1.700716, 1.517279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.635735, 1.534314, 1.248806>,  <1.782989, 1.434473, 1.087722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.635735, 1.534314, 1.248806>,  <1.390311, 1.700716, 1.517279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.635735, 1.534314, 1.248806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174859, 0.757297, -0.629226,
		0.770045, 0.503430, 0.391905,
		0.613560, -0.416004, -0.671182,
		1.819802, 1.409513, 1.047451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.766258, 2.302736, 1.237725>,  <1.390311, 1.700716, 1.517279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.766258, 2.302736, 1.237725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.797585, 2.014433, 0.962225>,  <1.816381, 1.841452, 0.796925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.797585, 2.014433, 0.962225>,  <1.766258, 2.302736, 1.237725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.797585, 2.014433, 0.962225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060737, 0.686140, -0.724930,
		0.995077, 0.098607, 0.009960,
		0.078318, -0.720756, -0.688751,
		1.821080, 1.798207, 0.755600>
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
