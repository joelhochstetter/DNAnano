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
	<24.153353, 35.524384, 35.114449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211508, 35.131969, 35.063175>,  <24.246401, 34.896523, 35.032410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211508, 35.131969, 35.063175>,  <24.153353, 35.524384, 35.114449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211508, 35.131969, 35.063175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746824, 0.193801, -0.636156,
		0.648934, -0.003240, 0.760838,
		0.145390, -0.981035, -0.128184,
		24.255125, 34.837658, 35.024719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864035, 35.335991, 35.401436>,  <24.153353, 35.524384, 35.114449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864035, 35.335991, 35.401436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729616, 35.110867, 35.099358>,  <24.648964, 34.975792, 34.918110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729616, 35.110867, 35.099358>,  <24.864035, 35.335991, 35.401436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729616, 35.110867, 35.099358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770894, 0.296301, -0.563852,
		0.541105, -0.771656, 0.334294,
		-0.336048, -0.562808, -0.755195,
		24.628801, 34.942024, 34.872799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875408, 35.349129, 36.134724>,  <24.864035, 35.335991, 35.401436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875408, 35.349129, 36.134724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046597, 35.663303, 36.313580>,  <25.149309, 35.851807, 36.420895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046597, 35.663303, 36.313580>,  <24.875408, 35.349129, 36.134724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046597, 35.663303, 36.313580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395901, -0.607664, 0.688482,
		0.812469, -0.117625, -0.571016,
		0.427968, 0.785436, 0.447140,
		25.174988, 35.898933, 36.447720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498600, 35.088375, 36.418201>,  <24.875408, 35.349129, 36.134724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498600, 35.088375, 36.418201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476589, 35.445621, 36.596779>,  <25.463383, 35.659969, 36.703926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476589, 35.445621, 36.596779>,  <25.498600, 35.088375, 36.418201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476589, 35.445621, 36.596779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525304, -0.354349, 0.773623,
		0.849133, 0.277092, -0.449658,
		-0.055028, 0.893116, 0.446447,
		25.460081, 35.713558, 36.730713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213766, 35.382736, 36.619862>,  <25.498600, 35.088375, 36.418201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213766, 35.382736, 36.619862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943724, 35.537174, 36.871307>,  <25.781698, 35.629837, 37.022175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943724, 35.537174, 36.871307>,  <26.213766, 35.382736, 36.619862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943724, 35.537174, 36.871307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337322, -0.596253, 0.728489,
		0.656082, 0.703855, 0.272295,
		-0.675107, 0.386097, 0.628617,
		25.741192, 35.653004, 37.059891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776855, 35.187325, 36.966438>,  <26.213766, 35.382736, 36.619862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776855, 35.187325, 36.966438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676624, 35.571308, 36.916336>,  <26.616486, 35.801697, 36.886276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676624, 35.571308, 36.916336>,  <26.776855, 35.187325, 36.966438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676624, 35.571308, 36.916336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944904, -0.270671, -0.184099,
		-0.210630, 0.072221, 0.974894,
		-0.250580, 0.959959, -0.125254,
		26.601450, 35.859295, 36.878761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877924, 34.738129, 36.416924>,  <26.776855, 35.187325, 36.966438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877924, 34.738129, 36.416924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237482, 34.575470, 36.351650>,  <27.453217, 34.477875, 36.312485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237482, 34.575470, 36.351650>,  <26.877924, 34.738129, 36.416924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237482, 34.575470, 36.351650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414602, -0.909853, -0.016509,
		-0.141759, 0.082495, -0.986458,
		0.898893, -0.406647, -0.163183,
		27.507151, 34.453476, 36.302696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989494, 34.289246, 35.800632>,  <26.877924, 34.738129, 36.416924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989494, 34.289246, 35.800632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230362, 34.155212, 36.090492>,  <27.374882, 34.074791, 36.264408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230362, 34.155212, 36.090492>,  <26.989494, 34.289246, 35.800632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230362, 34.155212, 36.090492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469507, -0.882745, -0.018044,
		0.645723, -0.329360, -0.688886,
		0.602167, -0.335088, 0.724645,
		27.411013, 34.054688, 36.307884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178316, 33.688442, 35.514454>,  <26.989494, 34.289246, 35.800632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178316, 33.688442, 35.514454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249340, 33.650364, 35.906250>,  <27.291954, 33.627518, 36.141327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249340, 33.650364, 35.906250>,  <27.178316, 33.688442, 35.514454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249340, 33.650364, 35.906250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301491, -0.952714, -0.037937,
		0.936790, -0.288573, -0.197866,
		0.177562, -0.095194, 0.979495,
		27.302608, 33.621807, 36.200100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413322, 33.002220, 35.674511>,  <27.178316, 33.688442, 35.514454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413322, 33.002220, 35.674511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299763, 33.113358, 36.041599>,  <27.231627, 33.180042, 36.261852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299763, 33.113358, 36.041599>,  <27.413322, 33.002220, 35.674511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299763, 33.113358, 36.041599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566783, -0.820616, 0.073114,
		0.773407, -0.499390, 0.390450,
		-0.283897, 0.277847, 0.917717,
		27.214594, 33.196712, 36.316914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458242, 32.279423, 36.098492>,  <27.413322, 33.002220, 35.674511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458242, 32.279423, 36.098492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233040, 32.559204, 36.274578>,  <27.097919, 32.727074, 36.380230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233040, 32.559204, 36.274578>,  <27.458242, 32.279423, 36.098492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233040, 32.559204, 36.274578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689566, -0.691171, 0.216293,
		0.455550, -0.181782, 0.871453,
		-0.563004, 0.699456, 0.440213,
		27.064138, 32.769039, 36.406643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240902, 32.037334, 36.862038>,  <27.458242, 32.279423, 36.098492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240902, 32.037334, 36.862038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958641, 32.276928, 36.710632>,  <26.789284, 32.420685, 36.619789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958641, 32.276928, 36.710632>,  <27.240902, 32.037334, 36.862038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958641, 32.276928, 36.710632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699703, -0.673266, 0.239016,
		-0.111670, 0.433506, 0.894205,
		-0.705653, 0.598987, -0.378509,
		26.746944, 32.456623, 36.597080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726702, 32.085930, 37.402187>,  <27.240902, 32.037334, 36.862038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726702, 32.085930, 37.402187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561096, 32.190933, 37.053551>,  <26.461733, 32.253937, 36.844368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561096, 32.190933, 37.053551>,  <26.726702, 32.085930, 37.402187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561096, 32.190933, 37.053551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865048, -0.411514, 0.286965,
		-0.283343, 0.872780, 0.397456,
		-0.414016, 0.262509, -0.871596,
		26.436892, 32.269688, 36.792072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045689, 32.475506, 37.329075>,  <26.726702, 32.085930, 37.402187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045689, 32.475506, 37.329075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052546, 32.247726, 37.000336>,  <26.056660, 32.111061, 36.803093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052546, 32.247726, 37.000336>,  <26.045689, 32.475506, 37.329075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052546, 32.247726, 37.000336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934473, -0.301480, 0.189398,
		-0.355623, 0.764750, -0.537298,
		0.017143, -0.569444, -0.821851,
		26.057688, 32.076893, 36.753780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508965, 32.598484, 36.741554>,  <26.045689, 32.475506, 37.329075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508965, 32.598484, 36.741554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609276, 32.212780, 36.775753>,  <25.669462, 31.981358, 36.796272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609276, 32.212780, 36.775753>,  <25.508965, 32.598484, 36.741554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609276, 32.212780, 36.775753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962750, -0.257658, -0.082010,
		0.101107, -0.061743, -0.992958,
		0.250780, -0.964262, 0.085494,
		25.684509, 31.923502, 36.801403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992455, 33.217510, 36.431610>,  <25.508965, 32.598484, 36.741554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992455, 33.217510, 36.431610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265657, 32.984264, 36.607555>,  <26.429579, 32.844318, 36.713123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265657, 32.984264, 36.607555>,  <25.992455, 33.217510, 36.431610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265657, 32.984264, 36.607555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554689, 0.805888, 0.207038,
		-0.475209, 0.102580, 0.873873,
		0.683006, -0.583114, 0.439865,
		26.470560, 32.809330, 36.739513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169157, 33.612213, 36.916031>,  <25.992455, 33.217510, 36.431610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169157, 33.612213, 36.916031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443533, 33.351379, 36.786865>,  <26.608158, 33.194881, 36.709366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443533, 33.351379, 36.786865>,  <26.169157, 33.612213, 36.916031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443533, 33.351379, 36.786865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714456, 0.687693, 0.128962,
		0.137975, -0.319171, 0.937600,
		0.685941, -0.652080, -0.322918,
		26.649315, 33.155754, 36.689991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724430, 33.745247, 37.353340>,  <26.169157, 33.612213, 36.916031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724430, 33.745247, 37.353340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899828, 33.538841, 37.059006>,  <27.005066, 33.414997, 36.882404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899828, 33.538841, 37.059006>,  <26.724430, 33.745247, 37.353340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899828, 33.538841, 37.059006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762188, 0.647355, 0.000231,
		0.476227, -0.560945, 0.677163,
		0.438495, -0.516015, -0.735834,
		27.031376, 33.384037, 36.838257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490170, 33.550205, 37.542156>,  <26.724430, 33.745247, 37.353340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490170, 33.550205, 37.542156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417662, 33.592987, 37.151115>,  <27.374157, 33.618656, 36.916492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417662, 33.592987, 37.151115>,  <27.490170, 33.550205, 37.542156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417662, 33.592987, 37.151115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572488, 0.819748, -0.016470,
		0.799624, -0.562649, -0.209826,
		-0.181271, 0.106953, -0.977600,
		27.363281, 33.625072, 36.857834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130182, 33.736443, 37.306244>,  <27.490170, 33.550205, 37.542156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130182, 33.736443, 37.306244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887270, 33.849232, 37.009136>,  <27.741524, 33.916904, 36.830872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887270, 33.849232, 37.009136>,  <28.130182, 33.736443, 37.306244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887270, 33.849232, 37.009136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420120, 0.907468, 0.001010,
		0.674323, -0.311438, -0.669548,
		-0.607279, 0.281972, -0.742768,
		27.705086, 33.933823, 36.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585918, 33.884712, 36.614956>,  <28.130182, 33.736443, 37.306244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585918, 33.884712, 36.614956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234295, 34.075287, 36.608498>,  <28.023321, 34.189632, 36.604622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234295, 34.075287, 36.608498>,  <28.585918, 33.884712, 36.614956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234295, 34.075287, 36.608498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468968, 0.858204, -0.208701,
		-0.085580, -0.191030, -0.977846,
		-0.879059, 0.476439, -0.016142,
		27.970577, 34.218220, 36.603657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866247, 34.250641, 37.207661>,  <28.585918, 33.884712, 36.614956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866247, 34.250641, 37.207661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867496, 34.515968, 37.506992>,  <28.868246, 34.675163, 37.686592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867496, 34.515968, 37.506992>,  <28.866247, 34.250641, 37.207661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867496, 34.515968, 37.506992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927604, -0.277622, 0.249955,
		0.373553, -0.694938, 0.614426,
		0.003125, 0.663315, 0.748334,
		28.868433, 34.714962, 37.731491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557291, 34.501850, 37.313698>,  <28.866247, 34.250641, 37.207661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557291, 34.501850, 37.313698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859081, 34.535343, 37.574085>,  <30.040155, 34.555439, 37.730316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859081, 34.535343, 37.574085>,  <29.557291, 34.501850, 37.313698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859081, 34.535343, 37.574085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014022, 0.989546, -0.143531,
		-0.656179, 0.117419, 0.745414,
		0.754475, 0.083730, 0.650966,
		30.085424, 34.560463, 37.769375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473312, 35.070560, 37.849659>,  <29.557291, 34.501850, 37.313698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473312, 35.070560, 37.849659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856426, 35.032211, 37.741249>,  <30.086294, 35.009201, 37.676201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856426, 35.032211, 37.741249>,  <29.473312, 35.070560, 37.849659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856426, 35.032211, 37.741249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043219, 0.980057, -0.193959,
		0.284217, 0.174058, 0.942828,
		0.957785, -0.095874, -0.271027,
		30.143763, 35.003448, 37.659943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936823, 35.636196, 38.186756>,  <29.473312, 35.070560, 37.849659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936823, 35.636196, 38.186756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087231, 35.509697, 37.838367>,  <30.177475, 35.433796, 37.629333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087231, 35.509697, 37.838367>,  <29.936823, 35.636196, 38.186756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087231, 35.509697, 37.838367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008751, 0.941125, -0.337944,
		0.926571, 0.119451, 0.356647,
		0.376017, -0.316251, -0.870974,
		30.200035, 35.414822, 37.577076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730698, 35.821320, 38.132607>,  <29.936823, 35.636196, 38.186756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730698, 35.821320, 38.132607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537731, 35.782246, 37.784416>,  <30.421951, 35.758801, 37.575500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537731, 35.782246, 37.784416>,  <30.730698, 35.821320, 38.132607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537731, 35.782246, 37.784416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145093, 0.988946, -0.030573,
		0.863842, 0.111551, -0.491257,
		-0.482416, -0.097688, -0.870478,
		30.393005, 35.752937, 37.523273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042799, 36.375038, 37.736263>,  <30.730698, 35.821320, 38.132607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042799, 36.375038, 37.736263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696411, 36.269222, 37.566505>,  <30.488579, 36.205734, 37.464649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696411, 36.269222, 37.566505>,  <31.042799, 36.375038, 37.736263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696411, 36.269222, 37.566505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058384, 0.896310, -0.439567,
		0.496675, -0.355874, -0.791623,
		-0.865970, -0.264540, -0.424398,
		30.436621, 36.189861, 37.439186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143215, 36.366604, 36.961094>,  <31.042799, 36.375038, 37.736263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143215, 36.366604, 36.961094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766031, 36.430103, 37.078144>,  <30.539721, 36.468204, 37.148373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766031, 36.430103, 37.078144>,  <31.143215, 36.366604, 36.961094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766031, 36.430103, 37.078144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004211, 0.884599, -0.466332,
		-0.332884, -0.438500, -0.834809,
		-0.942958, 0.158750, 0.292622,
		30.483143, 36.477730, 37.165932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682621, 36.687042, 36.386574>,  <31.143215, 36.366604, 36.961094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682621, 36.687042, 36.386574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514029, 36.775314, 36.738403>,  <30.412872, 36.828278, 36.949501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514029, 36.775314, 36.738403>,  <30.682621, 36.687042, 36.386574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514029, 36.775314, 36.738403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037792, 0.964820, -0.260180,
		-0.906049, -0.142902, -0.398315,
		-0.421483, 0.220683, 0.879575,
		30.387585, 36.841518, 37.002277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174749, 37.130783, 36.249443>,  <30.682621, 36.687042, 36.386574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174749, 37.130783, 36.249443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275377, 37.216503, 36.626968>,  <30.335754, 37.267933, 36.853485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275377, 37.216503, 36.626968>,  <30.174749, 37.130783, 36.249443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275377, 37.216503, 36.626968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114731, 0.974906, -0.190776,
		-0.961015, -0.060291, 0.269843,
		0.251570, 0.214298, 0.943816,
		30.350849, 37.280792, 36.910114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707680, 37.646675, 36.427948>,  <30.174749, 37.130783, 36.249443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707680, 37.646675, 36.427948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040047, 37.718861, 36.638477>,  <30.239466, 37.762173, 36.764793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040047, 37.718861, 36.638477>,  <29.707680, 37.646675, 36.427948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040047, 37.718861, 36.638477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092546, 0.977590, -0.189087,
		-0.548647, 0.108406, 0.828996,
		0.830916, 0.180462, 0.526319,
		30.289322, 37.772999, 36.796371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412205, 38.034691, 36.970779>,  <29.707680, 37.646675, 36.427948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412205, 38.034691, 36.970779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792536, 38.120884, 36.881794>,  <30.020735, 38.172600, 36.828403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792536, 38.120884, 36.881794>,  <29.412205, 38.034691, 36.970779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792536, 38.120884, 36.881794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253037, 0.954664, -0.156808,
		0.178593, 0.205390, 0.962247,
		0.950830, 0.215479, -0.222468,
		30.077785, 38.185528, 36.815052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765463, 38.500561, 37.423195>,  <29.412205, 38.034691, 36.970779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765463, 38.500561, 37.423195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953655, 38.574356, 37.078030>,  <30.066570, 38.618633, 36.870930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953655, 38.574356, 37.078030>,  <29.765463, 38.500561, 37.423195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953655, 38.574356, 37.078030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236902, 0.968408, 0.077874,
		0.850014, 0.167787, 0.499323,
		0.470482, 0.184484, -0.862909,
		30.094799, 38.629700, 36.819157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922850, 39.241035, 37.503139>,  <29.765463, 38.500561, 37.423195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922850, 39.241035, 37.503139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026529, 39.177498, 37.122070>,  <30.088737, 39.139378, 36.893429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026529, 39.177498, 37.122070>,  <29.922850, 39.241035, 37.503139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026529, 39.177498, 37.122070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015043, 0.986928, -0.160458,
		0.965707, 0.027259, 0.258200,
		0.259198, -0.158839, -0.952673,
		30.104288, 39.129845, 36.836269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482319, 39.700672, 37.396088>,  <29.922850, 39.241035, 37.503139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482319, 39.700672, 37.396088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304127, 39.615295, 37.048298>,  <30.197212, 39.564072, 36.839622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304127, 39.615295, 37.048298>,  <30.482319, 39.700672, 37.396088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304127, 39.615295, 37.048298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067421, 0.976407, -0.205144,
		0.892750, -0.032766, -0.449359,
		-0.445479, -0.213438, -0.869478,
		30.170483, 39.551266, 36.787453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810856, 39.872314, 37.204041>,  <30.482319, 39.700672, 37.396088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810856, 39.872314, 37.204041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715866, 40.184643, 36.972893>,  <29.658873, 40.372040, 36.834206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715866, 40.184643, 36.972893>,  <29.810856, 39.872314, 37.204041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715866, 40.184643, 36.972893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209597, -0.539684, -0.815359,
		-0.948512, -0.314746, -0.035497,
		-0.237474, 0.780818, -0.577866,
		29.644625, 40.418888, 36.799534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382887, 39.614895, 36.707867>,  <29.810856, 39.872314, 37.204041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382887, 39.614895, 36.707867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582119, 39.934704, 36.573597>,  <29.701658, 40.126591, 36.493034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582119, 39.934704, 36.573597>,  <29.382887, 39.614895, 36.707867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582119, 39.934704, 36.573597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504731, -0.582086, -0.637513,
		-0.705098, 0.148108, -0.693470,
		0.498080, 0.799525, -0.335673,
		29.731543, 40.174561, 36.472897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230289, 39.666584, 36.048378>,  <29.382887, 39.614895, 36.707867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230289, 39.666584, 36.048378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593931, 39.746883, 36.194382>,  <29.812117, 39.795063, 36.281982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593931, 39.746883, 36.194382>,  <29.230289, 39.666584, 36.048378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593931, 39.746883, 36.194382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341130, -0.861660, -0.375729,
		0.239085, 0.466091, -0.851820,
		0.909103, 0.200750, 0.365008,
		29.866663, 39.807110, 36.303883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754602, 39.424782, 35.504143>,  <29.230289, 39.666584, 36.048378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754602, 39.424782, 35.504143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873535, 39.440857, 35.885715>,  <29.944895, 39.450504, 36.114658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873535, 39.440857, 35.885715>,  <29.754602, 39.424782, 35.504143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873535, 39.440857, 35.885715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414429, -0.905518, -0.091023,
		0.860140, 0.422400, -0.285898,
		0.297334, 0.040192, 0.953927,
		29.962736, 39.452915, 36.171894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352581, 39.054276, 35.490292>,  <29.754602, 39.424782, 35.504143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352581, 39.054276, 35.490292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263771, 39.059040, 35.880280>,  <30.210485, 39.061897, 36.114273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263771, 39.059040, 35.880280>,  <30.352581, 39.054276, 35.490292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263771, 39.059040, 35.880280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539755, -0.831239, 0.133068,
		0.812016, 0.555788, 0.178128,
		-0.222025, 0.011908, 0.974968,
		30.197163, 39.062611, 36.172771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856972, 38.770279, 35.823986>,  <30.352581, 39.054276, 35.490292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856972, 38.770279, 35.823986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601427, 38.724190, 36.128242>,  <30.448101, 38.696537, 36.310799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601427, 38.724190, 36.128242>,  <30.856972, 38.770279, 35.823986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601427, 38.724190, 36.128242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417006, -0.882736, 0.216527,
		0.646499, 0.455524, 0.611995,
		-0.638862, -0.115221, 0.760644,
		30.409769, 38.689625, 36.356434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273581, 38.410606, 36.352123>,  <30.856972, 38.770279, 35.823986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273581, 38.410606, 36.352123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897091, 38.335918, 36.464714>,  <30.671196, 38.291103, 36.532269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897091, 38.335918, 36.464714>,  <31.273581, 38.410606, 36.352123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897091, 38.335918, 36.464714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235561, -0.960089, 0.150799,
		0.242084, 0.208240, 0.947645,
		-0.941226, -0.186722, 0.281476,
		30.614723, 38.279903, 36.549156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215776, 38.094395, 37.065903>,  <31.273581, 38.410606, 36.352123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215776, 38.094395, 37.065903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910763, 37.975189, 36.836216>,  <30.727755, 37.903667, 36.698402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910763, 37.975189, 36.836216>,  <31.215776, 38.094395, 37.065903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910763, 37.975189, 36.836216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152131, -0.945294, 0.288574,
		-0.628805, 0.132691, 0.766158,
		-0.762536, -0.298013, -0.574219,
		30.682003, 37.885784, 36.663952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708025, 37.527630, 37.349419>,  <31.215776, 38.094395, 37.065903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708025, 37.527630, 37.349419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322357, 37.616379, 37.291245>,  <30.090956, 37.669628, 37.256340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322357, 37.616379, 37.291245>,  <30.708025, 37.527630, 37.349419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322357, 37.616379, 37.291245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243874, -0.957059, 0.156728,
		-0.104417, 0.186580, 0.976875,
		-0.964169, 0.221869, -0.145435,
		30.033106, 37.682938, 37.247616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328989, 37.493305, 37.995674>,  <30.708025, 37.527630, 37.349419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328989, 37.493305, 37.995674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112020, 37.421776, 37.667332>,  <29.981838, 37.378857, 37.470325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112020, 37.421776, 37.667332>,  <30.328989, 37.493305, 37.995674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112020, 37.421776, 37.667332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030304, -0.980611, 0.193607,
		-0.839559, 0.080142, 0.537325,
		-0.542422, -0.178828, -0.820852,
		29.949293, 37.368126, 37.421078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723202, 37.066849, 38.101208>,  <30.328989, 37.493305, 37.995674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723202, 37.066849, 38.101208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905041, 37.023087, 37.747627>,  <30.014145, 36.996830, 37.535480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905041, 37.023087, 37.747627>,  <29.723202, 37.066849, 38.101208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905041, 37.023087, 37.747627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123434, -0.990590, 0.059123,
		-0.882101, 0.082232, -0.463826,
		0.454600, -0.109405, -0.883951,
		30.041420, 36.990265, 37.482441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233004, 36.642944, 37.697430>,  <29.723202, 37.066849, 38.101208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233004, 36.642944, 37.697430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604069, 36.608044, 37.552197>,  <29.826708, 36.587105, 37.465057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604069, 36.608044, 37.552197>,  <29.233004, 36.642944, 37.697430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604069, 36.608044, 37.552197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051166, -0.992849, 0.107852,
		-0.369896, -0.081473, -0.925494,
		0.927663, -0.087248, -0.363082,
		29.882368, 36.581871, 37.443272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272646, 36.127342, 37.091446>,  <29.233004, 36.642944, 37.697430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272646, 36.127342, 37.091446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623465, 36.144409, 37.282848>,  <29.833956, 36.154648, 37.397690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623465, 36.144409, 37.282848>,  <29.272646, 36.127342, 37.091446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623465, 36.144409, 37.282848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113002, -0.949781, 0.291800,
		0.466926, -0.309994, -0.828181,
		0.877047, 0.042663, 0.478507,
		29.886580, 36.157207, 37.426399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754333, 36.026436, 36.699833>,  <29.272646, 36.127342, 37.091446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754333, 36.026436, 36.699833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141043, 36.059830, 36.796482>,  <30.373068, 36.079865, 36.854473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141043, 36.059830, 36.796482>,  <29.754333, 36.026436, 36.699833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141043, 36.059830, 36.796482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040815, -0.882638, 0.468277,
		0.252361, -0.462580, -0.849903,
		0.966772, 0.083486, 0.241624,
		30.431074, 36.084877, 36.868969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284851, 35.613579, 36.300442>,  <29.754333, 36.026436, 36.699833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284851, 35.613579, 36.300442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370659, 35.665230, 36.687702>,  <30.422144, 35.696220, 36.920059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370659, 35.665230, 36.687702>,  <30.284851, 35.613579, 36.300442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370659, 35.665230, 36.687702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053312, -0.991293, 0.120402,
		0.975264, 0.025786, -0.219536,
		0.214520, 0.129128, 0.968146,
		30.435015, 35.703968, 36.978146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792192, 35.121666, 36.480751>,  <30.284851, 35.613579, 36.300442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792192, 35.121666, 36.480751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587957, 35.207439, 36.813812>,  <30.465416, 35.258904, 37.013649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587957, 35.207439, 36.813812>,  <30.792192, 35.121666, 36.480751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587957, 35.207439, 36.813812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076525, -0.975892, 0.204398,
		0.856412, 0.040644, 0.514690,
		-0.510590, 0.214436, 0.832656,
		30.434780, 35.271770, 37.063610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218884, 34.603607, 36.719845>,  <30.792192, 35.121666, 36.480751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218884, 34.603607, 36.719845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472820, 34.538349, 37.021935>,  <31.625183, 34.499195, 37.203186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472820, 34.538349, 37.021935>,  <31.218884, 34.603607, 36.719845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472820, 34.538349, 37.021935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489690, -0.671111, -0.556610,
		0.597643, 0.723184, -0.346161,
		0.634844, -0.163142, 0.755221,
		31.663273, 34.489407, 37.248501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934685, 34.933483, 36.695915>,  <31.218884, 34.603607, 36.719845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934685, 34.933483, 36.695915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849133, 34.577011, 36.855942>,  <31.797800, 34.363129, 36.951958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849133, 34.577011, 36.855942>,  <31.934685, 34.933483, 36.695915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849133, 34.577011, 36.855942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578760, -0.445531, -0.683036,
		0.786951, 0.085455, 0.611069,
		-0.213881, -0.891178, 0.400070,
		31.784967, 34.309658, 36.975964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485664, 34.417320, 36.566082>,  <31.934685, 34.933483, 36.695915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485664, 34.417320, 36.566082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166809, 34.176296, 36.581543>,  <31.975496, 34.031681, 36.590820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166809, 34.176296, 36.581543>,  <32.485664, 34.417320, 36.566082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166809, 34.176296, 36.581543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469937, -0.659330, -0.586892,
		0.379126, -0.449667, 0.808742,
		-0.797134, -0.602564, 0.038654,
		31.927670, 33.995525, 36.593140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043205, 34.201363, 36.217148>,  <32.485664, 34.417320, 36.566082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043205, 34.201363, 36.217148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209332, 33.967823, 36.496185>,  <33.309006, 33.827698, 36.663609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209332, 33.967823, 36.496185>,  <33.043205, 34.201363, 36.217148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209332, 33.967823, 36.496185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048020, -0.779857, -0.624114,
		0.908410, 0.225704, -0.351921,
		0.415313, -0.583851, 0.697591,
		33.333927, 33.792667, 36.705463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008549, 33.621288, 35.930847>,  <33.043205, 34.201363, 36.217148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008549, 33.621288, 35.930847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153217, 33.476498, 36.274513>,  <33.240017, 33.389626, 36.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153217, 33.476498, 36.274513>,  <33.008549, 33.621288, 35.930847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153217, 33.476498, 36.274513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165098, -0.882120, -0.441142,
		0.917572, 0.301394, -0.259273,
		0.361668, -0.361974, 0.859169,
		33.261719, 33.367905, 36.532265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644585, 33.125557, 36.306076>,  <33.008549, 33.621288, 35.930847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644585, 33.125557, 36.306076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916725, 32.872253, 36.453648>,  <33.080009, 32.720272, 36.542191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916725, 32.872253, 36.453648>,  <32.644585, 33.125557, 36.306076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916725, 32.872253, 36.453648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427516, 0.751789, 0.502039,
		-0.595277, -0.183839, 0.782208,
		0.680349, -0.633259, 0.368929,
		33.120831, 32.682278, 36.564327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714962, 33.013439, 37.053455>,  <32.644585, 33.125557, 36.306076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714962, 33.013439, 37.053455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079418, 32.988995, 36.890442>,  <33.298092, 32.974327, 36.792633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079418, 32.988995, 36.890442>,  <32.714962, 33.013439, 37.053455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079418, 32.988995, 36.890442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321409, 0.724313, 0.609973,
		0.257904, -0.686758, 0.679595,
		0.911143, -0.061113, -0.407533,
		33.352760, 32.970661, 36.768181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232609, 32.862362, 37.623257>,  <32.714962, 33.013439, 37.053455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232609, 32.862362, 37.623257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416050, 33.033974, 37.311970>,  <33.526115, 33.136940, 37.125198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416050, 33.033974, 37.311970>,  <33.232609, 32.862362, 37.623257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416050, 33.033974, 37.311970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341588, 0.723346, 0.600073,
		0.820369, -0.541022, 0.185175,
		0.458599, 0.429028, -0.778217,
		33.553631, 33.162682, 37.078506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019085, 32.955223, 37.712975>,  <33.232609, 32.862362, 37.623257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019085, 32.955223, 37.712975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809906, 33.240936, 37.526932>,  <33.684399, 33.412365, 37.415306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809906, 33.240936, 37.526932>,  <34.019085, 32.955223, 37.712975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809906, 33.240936, 37.526932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217851, 0.639548, 0.737237,
		0.824053, 0.284216, -0.490060,
		-0.522951, 0.714283, -0.465105,
		33.653019, 33.455219, 37.387402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436398, 33.500519, 37.506527>,  <34.019085, 32.955223, 37.712975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436398, 33.500519, 37.506527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065998, 33.608494, 37.612103>,  <33.843758, 33.673279, 37.675446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065998, 33.608494, 37.612103>,  <34.436398, 33.500519, 37.506527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065998, 33.608494, 37.612103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353933, 0.377425, 0.855735,
		0.131383, 0.885823, -0.445035,
		-0.925997, 0.269941, 0.263935,
		33.788200, 33.689476, 37.691284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209660, 34.205135, 37.484997>,  <34.436398, 33.500519, 37.506527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209660, 34.205135, 37.484997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012737, 34.009869, 37.773254>,  <33.894585, 33.892708, 37.946209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012737, 34.009869, 37.773254>,  <34.209660, 34.205135, 37.484997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012737, 34.009869, 37.773254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434175, 0.579846, 0.689398,
		-0.754406, 0.652279, -0.073510,
		-0.492304, -0.488170, 0.720643,
		33.865047, 33.863419, 37.989449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511539, 34.670609, 37.054905>,  <34.209660, 34.205135, 37.484997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511539, 34.670609, 37.054905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867554, 34.812565, 37.169365>,  <35.081161, 34.897739, 37.238041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867554, 34.812565, 37.169365>,  <34.511539, 34.670609, 37.054905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867554, 34.812565, 37.169365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170017, 0.323999, -0.930655,
		-0.422996, 0.876969, 0.228034,
		0.890038, 0.354894, 0.286150,
		35.134563, 34.919033, 37.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505379, 35.399506, 37.075268>,  <34.511539, 34.670609, 37.054905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505379, 35.399506, 37.075268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814873, 35.172821, 36.962006>,  <35.000568, 35.036812, 36.894047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814873, 35.172821, 36.962006>,  <34.505379, 35.399506, 37.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814873, 35.172821, 36.962006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110237, 0.319701, -0.941084,
		0.623844, 0.759364, 0.184892,
		0.773735, -0.566708, -0.283154,
		35.046993, 35.002808, 36.877060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048988, 35.866249, 36.808552>,  <34.505379, 35.399506, 37.075268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048988, 35.866249, 36.808552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035347, 35.500023, 36.648262>,  <35.027164, 35.280289, 36.552086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035347, 35.500023, 36.648262>,  <35.048988, 35.866249, 36.808552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035347, 35.500023, 36.648262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104678, 0.402029, -0.909624,
		0.993921, 0.010929, -0.109549,
		-0.034100, -0.915562, -0.400729,
		35.025116, 35.225353, 36.528042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535622, 35.839153, 36.126053>,  <35.048988, 35.866249, 36.808552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535622, 35.839153, 36.126053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200573, 35.623402, 36.160599>,  <34.999542, 35.493950, 36.181328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200573, 35.623402, 36.160599>,  <35.535622, 35.839153, 36.126053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200573, 35.623402, 36.160599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323507, 0.362432, -0.874063,
		0.440145, -0.760077, -0.478074,
		-0.837625, -0.539375, 0.086368,
		34.949284, 35.461590, 36.186508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436012, 35.319214, 35.380539>,  <35.535622, 35.839153, 36.126053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436012, 35.319214, 35.380539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094997, 35.422993, 35.562027>,  <34.890388, 35.485260, 35.670921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094997, 35.422993, 35.562027>,  <35.436012, 35.319214, 35.380539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094997, 35.422993, 35.562027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435954, 0.125863, -0.891124,
		-0.288305, -0.957521, 0.005803,
		-0.852540, 0.259445, 0.453722,
		34.839237, 35.500828, 35.698143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914921, 34.981033, 35.067932>,  <35.436012, 35.319214, 35.380539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914921, 34.981033, 35.067932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762222, 35.312336, 35.232010>,  <34.670605, 35.511120, 35.330456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762222, 35.312336, 35.232010>,  <34.914921, 34.981033, 35.067932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762222, 35.312336, 35.232010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464205, 0.211961, -0.859992,
		-0.799241, -0.518711, 0.303568,
		-0.381742, 0.828259, 0.410196,
		34.647701, 35.560814, 35.355068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218262, 34.970787, 34.999146>,  <34.914921, 34.981033, 35.067932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218262, 34.970787, 34.999146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331104, 35.353691, 35.024662>,  <34.398811, 35.583435, 35.039974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331104, 35.353691, 35.024662>,  <34.218262, 34.970787, 34.999146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331104, 35.353691, 35.024662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558297, 0.217879, -0.800521,
		-0.780206, 0.190215, 0.595900,
		0.282105, 0.957260, 0.063794,
		34.415737, 35.640869, 35.043800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581112, 35.220428, 35.038536>,  <34.218262, 34.970787, 34.999146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581112, 35.220428, 35.038536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834557, 35.512180, 34.935345>,  <33.986622, 35.687229, 34.873432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834557, 35.512180, 34.935345>,  <33.581112, 35.220428, 35.038536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834557, 35.512180, 34.935345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590577, 0.240588, -0.770284,
		-0.499760, 0.640413, 0.583191,
		0.633608, 0.729376, -0.257977,
		34.024639, 35.730991, 34.857952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137615, 35.788246, 34.929783>,  <33.581112, 35.220428, 35.038536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137615, 35.788246, 34.929783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482243, 35.846981, 34.735409>,  <33.689018, 35.882221, 34.618782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482243, 35.846981, 34.735409>,  <33.137615, 35.788246, 34.929783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482243, 35.846981, 34.735409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507625, 0.256570, -0.822489,
		0.003903, 0.955306, 0.295592,
		0.861569, 0.146840, -0.485939,
		33.740715, 35.891033, 34.589626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028259, 36.408501, 34.559868>,  <33.137615, 35.788246, 34.929783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028259, 36.408501, 34.559868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323051, 36.252163, 34.339287>,  <33.499928, 36.158360, 34.206936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323051, 36.252163, 34.339287>,  <33.028259, 36.408501, 34.559868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323051, 36.252163, 34.339287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423425, 0.368975, -0.827387,
		0.526853, 0.843266, 0.106433,
		0.736979, -0.390844, -0.551455,
		33.544144, 36.134911, 34.173851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111149, 36.992680, 34.106945>,  <33.028259, 36.408501, 34.559868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111149, 36.992680, 34.106945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302483, 36.685188, 33.937119>,  <33.417282, 36.500694, 33.835224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302483, 36.685188, 33.937119>,  <33.111149, 36.992680, 34.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302483, 36.685188, 33.937119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240866, 0.350074, -0.905225,
		0.844499, 0.535265, -0.017706,
		0.478337, -0.768726, -0.424564,
		33.445984, 36.454571, 33.809750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444481, 37.325649, 33.524918>,  <33.111149, 36.992680, 34.106945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444481, 37.325649, 33.524918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422626, 36.932285, 33.455738>,  <33.409515, 36.696266, 33.414230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422626, 36.932285, 33.455738>,  <33.444481, 37.325649, 33.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422626, 36.932285, 33.455738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328924, 0.181266, -0.926796,
		0.942775, 0.006254, -0.333372,
		-0.054633, -0.983414, -0.172951,
		33.406235, 36.637260, 33.403854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689903, 37.244377, 32.850468>,  <33.444481, 37.325649, 33.524918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689903, 37.244377, 32.850468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514565, 36.889347, 32.907127>,  <33.409359, 36.676331, 32.941124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514565, 36.889347, 32.907127>,  <33.689903, 37.244377, 32.850468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514565, 36.889347, 32.907127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411568, 0.058106, -0.909525,
		0.799039, -0.456988, -0.390767,
		-0.438348, -0.887573, 0.141652,
		33.383060, 36.623074, 32.949623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804695, 36.850853, 32.208145>,  <33.689903, 37.244377, 32.850468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804695, 36.850853, 32.208145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497375, 36.664360, 32.383575>,  <33.312984, 36.552464, 32.488834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497375, 36.664360, 32.383575>,  <33.804695, 36.850853, 32.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497375, 36.664360, 32.383575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523275, 0.062866, -0.849842,
		0.368650, -0.882427, -0.292266,
		-0.768297, -0.466229, 0.438576,
		33.266888, 36.524490, 32.515148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626350, 36.189152, 31.803408>,  <33.804695, 36.850853, 32.208145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626350, 36.189152, 31.803408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298489, 36.297989, 32.005054>,  <33.101772, 36.363293, 32.126041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298489, 36.297989, 32.005054>,  <33.626350, 36.189152, 31.803408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298489, 36.297989, 32.005054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456298, 0.221950, -0.861702,
		-0.346354, -0.936324, -0.057765,
		-0.819653, 0.272096, 0.504116,
		33.052593, 36.379616, 32.156288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072128, 35.958237, 31.417850>,  <33.626350, 36.189152, 31.803408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072128, 35.958237, 31.417850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820194, 36.144951, 31.666182>,  <32.669033, 36.256977, 31.815180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820194, 36.144951, 31.666182>,  <33.072128, 35.958237, 31.417850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820194, 36.144951, 31.666182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586327, 0.238517, -0.774165,
		-0.509443, -0.851601, 0.123461,
		-0.629832, 0.466781, 0.620827,
		32.631245, 36.284985, 31.852430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406548, 35.677170, 31.335592>,  <33.072128, 35.958237, 31.417850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406548, 35.677170, 31.335592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369518, 36.041248, 31.497072>,  <32.347301, 36.259697, 31.593960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369518, 36.041248, 31.497072>,  <32.406548, 35.677170, 31.335592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369518, 36.041248, 31.497072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621719, 0.263851, -0.737460,
		-0.777750, -0.319261, 0.541459,
		-0.092578, 0.910196, 0.403700,
		32.341743, 36.314308, 31.618183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635098, 35.851429, 31.364676>,  <32.406548, 35.677170, 31.335592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635098, 35.851429, 31.364676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853220, 36.186077, 31.385517>,  <31.984093, 36.386864, 31.398022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853220, 36.186077, 31.385517>,  <31.635098, 35.851429, 31.364676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853220, 36.186077, 31.385517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483672, 0.364806, -0.795599,
		-0.684619, 0.408644, 0.603578,
		0.545306, 0.836616, 0.052103,
		32.016811, 36.437061, 31.401148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137220, 36.352829, 31.263748>,  <31.635098, 35.851429, 31.364676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137220, 36.352829, 31.263748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474409, 36.549763, 31.177027>,  <31.676722, 36.667923, 31.124994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474409, 36.549763, 31.177027>,  <31.137220, 36.352829, 31.263748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474409, 36.549763, 31.177027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447009, 0.416831, -0.791477,
		-0.299302, 0.764105, 0.571455,
		0.842972, 0.492336, -0.216803,
		31.727301, 36.697464, 31.111986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964115, 37.051689, 31.273252>,  <31.137220, 36.352829, 31.263748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964115, 37.051689, 31.273252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302879, 37.056347, 31.060610>,  <31.506138, 37.059139, 30.933025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302879, 37.056347, 31.060610>,  <30.964115, 37.051689, 31.273252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302879, 37.056347, 31.060610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449644, 0.549334, -0.704310,
		0.283829, 0.835522, 0.470473,
		0.846913, 0.011642, -0.531604,
		31.556953, 37.059841, 30.901129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095133, 37.740944, 31.148712>,  <30.964115, 37.051689, 31.273252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095133, 37.740944, 31.148712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285269, 37.532379, 30.865253>,  <31.399351, 37.407242, 30.695177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285269, 37.532379, 30.865253>,  <31.095133, 37.740944, 31.148712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285269, 37.532379, 30.865253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390220, 0.596956, -0.700979,
		0.788530, 0.609732, 0.080293,
		0.475341, -0.521411, -0.708648,
		31.427872, 37.375957, 30.652658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393423, 38.231773, 30.708061>,  <31.095133, 37.740944, 31.148712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393423, 38.231773, 30.708061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378834, 37.903408, 30.480108>,  <31.370081, 37.706387, 30.343336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378834, 37.903408, 30.480108>,  <31.393423, 38.231773, 30.708061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378834, 37.903408, 30.480108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484895, 0.513171, -0.708189,
		0.873811, 0.250504, -0.416775,
		-0.036473, -0.820916, -0.569883,
		31.367891, 37.657135, 30.309143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410017, 38.530628, 30.084320>,  <31.393423, 38.231773, 30.708061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410017, 38.530628, 30.084320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311308, 38.153374, 29.995234>,  <31.252083, 37.927021, 29.941782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311308, 38.153374, 29.995234>,  <31.410017, 38.530628, 30.084320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311308, 38.153374, 29.995234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470445, 0.317516, -0.823326,
		0.847222, -0.098398, -0.522047,
		-0.246772, -0.943134, -0.222716,
		31.237276, 37.870434, 29.928419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511360, 38.406788, 29.343399>,  <31.410017, 38.530628, 30.084320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511360, 38.406788, 29.343399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246193, 38.134228, 29.467482>,  <31.087091, 37.970692, 29.541931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246193, 38.134228, 29.467482>,  <31.511360, 38.406788, 29.343399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246193, 38.134228, 29.467482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561011, 0.177723, -0.808505,
		0.495787, -0.710003, -0.500091,
		-0.662919, -0.681403, 0.310207,
		31.047318, 37.929806, 29.560543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379925, 38.011173, 28.746750>,  <31.511360, 38.406788, 29.343399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379925, 38.011173, 28.746750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060837, 37.971195, 28.984625>,  <30.869385, 37.947208, 29.127350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060837, 37.971195, 28.984625>,  <31.379925, 38.011173, 28.746750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060837, 37.971195, 28.984625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603007, 0.140754, -0.785220,
		-0.005225, -0.984987, -0.172551,
		-0.797719, -0.099947, 0.594690,
		30.821522, 37.941212, 29.163033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006392, 37.585693, 28.339407>,  <31.379925, 38.011173, 28.746750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006392, 37.585693, 28.339407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767570, 37.750065, 28.614990>,  <30.624279, 37.848690, 28.780340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767570, 37.750065, 28.614990>,  <31.006392, 37.585693, 28.339407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767570, 37.750065, 28.614990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626042, 0.298330, -0.720465,
		-0.501599, -0.861473, 0.079141,
		-0.597051, 0.410931, 0.688960,
		30.588455, 37.873344, 28.821678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241678, 37.347340, 28.117884>,  <31.006392, 37.585693, 28.339407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241678, 37.347340, 28.117884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226141, 37.670620, 28.352936>,  <30.216818, 37.864586, 28.493967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226141, 37.670620, 28.352936>,  <30.241678, 37.347340, 28.117884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226141, 37.670620, 28.352936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635935, 0.433614, -0.638408,
		-0.770764, -0.398493, 0.497117,
		-0.038844, 0.808197, 0.587630,
		30.214487, 37.913078, 28.529224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558296, 37.506363, 28.120506>,  <30.241678, 37.347340, 28.117884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558296, 37.506363, 28.120506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758720, 37.837406, 28.221703>,  <29.878975, 38.036034, 28.282419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758720, 37.837406, 28.221703>,  <29.558296, 37.506363, 28.120506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758720, 37.837406, 28.221703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592467, 0.541129, -0.596793,
		-0.630811, 0.149141, 0.761469,
		0.501059, 0.827609, 0.252989,
		29.909039, 38.085690, 28.297600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051800, 37.992550, 28.003620>,  <29.558296, 37.506363, 28.120506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051800, 37.992550, 28.003620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380974, 38.214367, 28.053032>,  <29.578478, 38.347458, 28.082678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380974, 38.214367, 28.053032>,  <29.051800, 37.992550, 28.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380974, 38.214367, 28.053032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388214, 0.707618, -0.590395,
		-0.414811, 0.437901, 0.797605,
		0.822935, 0.554544, 0.123528,
		29.627853, 38.380730, 28.090090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768654, 38.719845, 28.154119>,  <29.051800, 37.992550, 28.003620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768654, 38.719845, 28.154119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140032, 38.749043, 28.008427>,  <29.362858, 38.766560, 27.921011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140032, 38.749043, 28.008427>,  <28.768654, 38.719845, 28.154119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140032, 38.749043, 28.008427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277429, 0.788302, -0.549194,
		0.247037, 0.610944, 0.752144,
		0.928442, 0.072996, -0.364233,
		29.418564, 38.770943, 27.899157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987347, 39.487957, 28.203644>,  <28.768654, 38.719845, 28.154119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987347, 39.487957, 28.203644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222771, 39.329220, 27.921904>,  <29.364025, 39.233978, 27.752859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222771, 39.329220, 27.921904>,  <28.987347, 39.487957, 28.203644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222771, 39.329220, 27.921904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166432, 0.793093, -0.585921,
		0.791135, 0.462077, 0.400737,
		0.588563, -0.396847, -0.704348,
		29.399340, 39.210167, 27.710600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384836, 40.038567, 27.879190>,  <28.987347, 39.487957, 28.203644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384836, 40.038567, 27.879190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403315, 39.755215, 27.597462>,  <29.414402, 39.585205, 27.428425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403315, 39.755215, 27.597462>,  <29.384836, 40.038567, 27.879190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403315, 39.755215, 27.597462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259786, 0.672292, -0.693206,
		0.964560, 0.214996, -0.152970,
		0.046196, -0.708378, -0.704320,
		29.417173, 39.542702, 27.386166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670382, 40.340694, 27.288778>,  <29.384836, 40.038567, 27.879190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670382, 40.340694, 27.288778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517029, 40.013924, 27.116432>,  <29.425018, 39.817860, 27.013025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517029, 40.013924, 27.116432>,  <29.670382, 40.340694, 27.288778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517029, 40.013924, 27.116432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348542, 0.559986, -0.751621,
		0.855300, -0.137983, -0.499422,
		-0.383381, -0.816931, -0.430863,
		29.402014, 39.768845, 26.987173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834848, 40.394516, 26.659609>,  <29.670382, 40.340694, 27.288778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834848, 40.394516, 26.659609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521683, 40.146824, 26.635609>,  <29.333784, 39.998207, 26.621208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521683, 40.146824, 26.635609>,  <29.834848, 40.394516, 26.659609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521683, 40.146824, 26.635609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447242, 0.627241, -0.637608,
		0.432462, -0.472357, -0.768021,
		-0.782912, -0.619232, -0.060000,
		29.286810, 39.961056, 26.617609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596584, 40.419109, 26.028912>,  <29.834848, 40.394516, 26.659609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596584, 40.419109, 26.028912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289001, 40.243156, 26.214474>,  <29.104452, 40.137585, 26.325811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289001, 40.243156, 26.214474>,  <29.596584, 40.419109, 26.028912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289001, 40.243156, 26.214474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635100, 0.608647, -0.475602,
		-0.073149, -0.660345, -0.747391,
		-0.768958, -0.439878, 0.463907,
		29.058313, 40.111195, 26.353645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110609, 40.244606, 25.525780>,  <29.596584, 40.419109, 26.028912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110609, 40.244606, 25.525780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890995, 40.283386, 25.857841>,  <28.759226, 40.306652, 26.057079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890995, 40.283386, 25.857841>,  <29.110609, 40.244606, 25.525780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890995, 40.283386, 25.857841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590120, 0.658412, -0.467175,
		-0.591876, -0.746388, -0.304282,
		-0.549037, 0.096946, 0.830157,
		28.726284, 40.312469, 26.106888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384752, 40.282028, 25.241072>,  <29.110609, 40.244606, 25.525780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384752, 40.282028, 25.241072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404409, 40.453270, 25.602028>,  <28.416204, 40.556015, 25.818602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404409, 40.453270, 25.602028>,  <28.384752, 40.282028, 25.241072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404409, 40.453270, 25.602028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584433, 0.744988, -0.321607,
		-0.809953, -0.511582, 0.286811,
		0.049142, 0.428108, 0.902390,
		28.419151, 40.581703, 25.872746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638876, 40.484322, 25.295027>,  <28.384752, 40.282028, 25.241072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638876, 40.484322, 25.295027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848757, 40.715370, 25.545160>,  <27.974686, 40.854000, 25.695240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848757, 40.715370, 25.545160>,  <27.638876, 40.484322, 25.295027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848757, 40.715370, 25.545160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363856, 0.816266, -0.448685,
		-0.769608, 0.007895, 0.638468,
		0.524702, 0.577622, 0.625333,
		28.006166, 40.888657, 25.732759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129536, 40.902397, 25.625019>,  <27.638876, 40.484322, 25.295027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129536, 40.902397, 25.625019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468094, 41.099274, 25.706371>,  <27.671228, 41.217400, 25.755182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468094, 41.099274, 25.706371>,  <27.129536, 40.902397, 25.625019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468094, 41.099274, 25.706371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424780, 0.854282, -0.299605,
		-0.321206, 0.167193, 0.932134,
		0.846398, 0.492187, 0.203380,
		27.722013, 41.246929, 25.767385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891993, 41.460522, 26.030867>,  <27.129536, 40.902397, 25.625019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891993, 41.460522, 26.030867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246832, 41.612255, 25.925667>,  <27.459736, 41.703293, 25.862547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246832, 41.612255, 25.925667>,  <26.891993, 41.460522, 26.030867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246832, 41.612255, 25.925667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447917, 0.845055, -0.291980,
		0.111492, 0.376816, 0.919554,
		0.887096, 0.379330, -0.262999,
		27.512960, 41.726055, 25.846767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905760, 42.183262, 26.210642>,  <26.891993, 41.460522, 26.030867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905760, 42.183262, 26.210642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185812, 42.131252, 25.929811>,  <27.353844, 42.100048, 25.761312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185812, 42.131252, 25.929811>,  <26.905760, 42.183262, 26.210642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185812, 42.131252, 25.929811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175845, 0.921597, -0.346032,
		0.692022, 0.365724, 0.622376,
		0.700132, -0.130020, -0.702076,
		27.395851, 42.092247, 25.719189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427410, 42.728626, 26.349222>,  <26.905760, 42.183262, 26.210642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427410, 42.728626, 26.349222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477978, 42.614365, 25.969238>,  <27.508318, 42.545807, 25.741249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477978, 42.614365, 25.969238>,  <27.427410, 42.728626, 26.349222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477978, 42.614365, 25.969238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046053, 0.958299, -0.282032,
		0.990907, -0.008094, 0.134303,
		0.126420, -0.285653, -0.949958,
		27.515903, 42.528667, 25.684250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892025, 43.225498, 26.032646>,  <27.427410, 42.728626, 26.349222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892025, 43.225498, 26.032646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770531, 43.038425, 25.700619>,  <27.697634, 42.926182, 25.501402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770531, 43.038425, 25.700619>,  <27.892025, 43.225498, 26.032646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770531, 43.038425, 25.700619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222007, 0.812507, -0.539023,
		0.926530, -0.348002, -0.142959,
		-0.303736, -0.467683, -0.830071,
		27.679409, 42.898121, 25.451597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507450, 43.276257, 25.561842>,  <27.892025, 43.225498, 26.032646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507450, 43.276257, 25.561842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168610, 43.211609, 25.359337>,  <27.965305, 43.172821, 25.237833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168610, 43.211609, 25.359337>,  <28.507450, 43.276257, 25.561842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168610, 43.211609, 25.359337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216337, 0.765263, -0.606277,
		0.485409, -0.623100, -0.613290,
		-0.847099, -0.161615, -0.506265,
		27.914480, 43.163124, 25.207457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729008, 43.404644, 25.031380>,  <28.507450, 43.276257, 25.561842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729008, 43.404644, 25.031380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331200, 43.442497, 25.013618>,  <28.092514, 43.465210, 25.002962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331200, 43.442497, 25.013618>,  <28.729008, 43.404644, 25.031380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331200, 43.442497, 25.013618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102096, 0.788103, -0.607017,
		-0.022452, -0.608225, -0.793447,
		-0.994521, 0.094636, -0.044402,
		28.032843, 43.470890, 25.000298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524506, 43.558563, 24.343185>,  <28.729008, 43.404644, 25.031380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524506, 43.558563, 24.343185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228308, 43.708286, 24.566454>,  <28.050589, 43.798122, 24.700415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228308, 43.708286, 24.566454>,  <28.524506, 43.558563, 24.343185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228308, 43.708286, 24.566454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003336, 0.832576, -0.553901,
		-0.672051, -0.408300, -0.617768,
		-0.740497, 0.374311, 0.558172,
		28.006159, 43.820580, 24.733906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096739, 43.931393, 23.880442>,  <28.524506, 43.558563, 24.343185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096739, 43.931393, 23.880442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998343, 44.079975, 24.238550>,  <27.939304, 44.169125, 24.453415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998343, 44.079975, 24.238550>,  <28.096739, 43.931393, 23.880442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998343, 44.079975, 24.238550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013585, 0.924884, -0.380007,
		-0.969176, -0.081317, -0.232560,
		-0.245992, 0.371454, 0.895271,
		27.924545, 44.191410, 24.507132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447517, 44.234348, 23.975908>,  <28.096739, 43.931393, 23.880442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447517, 44.234348, 23.975908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641239, 44.435410, 24.262346>,  <27.757473, 44.556046, 24.434210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641239, 44.435410, 24.262346>,  <27.447517, 44.234348, 23.975908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641239, 44.435410, 24.262346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162374, 0.855908, -0.490974,
		-0.859700, 0.121505, 0.496138,
		0.484304, 0.502651, 0.716095,
		27.786530, 44.586205, 24.477175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097454, 44.813427, 24.470026>,  <27.447517, 44.234348, 23.975908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097454, 44.813427, 24.470026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484566, 44.877846, 24.392599>,  <27.716833, 44.916496, 24.346144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484566, 44.877846, 24.392599>,  <27.097454, 44.813427, 24.470026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484566, 44.877846, 24.392599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239290, 0.827544, -0.507850,
		0.078396, 0.537805, 0.839417,
		0.967778, 0.161051, -0.193567,
		27.774899, 44.926163, 24.334530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209019, 45.481335, 24.631004>,  <27.097454, 44.813427, 24.470026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209019, 45.481335, 24.631004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464975, 45.360237, 24.348476>,  <27.618549, 45.287579, 24.178961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464975, 45.360237, 24.348476>,  <27.209019, 45.481335, 24.631004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464975, 45.360237, 24.348476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327038, 0.724460, -0.606798,
		0.695401, 0.619279, 0.364570,
		0.639893, -0.302740, -0.706318,
		27.656942, 45.269417, 24.136581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005062, 45.165020, 25.152475>,  <27.209019, 45.481335, 24.631004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005062, 45.165020, 25.152475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877415, 45.408016, 25.443438>,  <26.800827, 45.553814, 25.618015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877415, 45.408016, 25.443438>,  <27.005062, 45.165020, 25.152475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877415, 45.408016, 25.443438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752158, 0.304598, -0.584362,
		-0.576562, -0.733603, 0.359728,
		-0.319117, 0.607493, 0.727405,
		26.781679, 45.590263, 25.661659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350847, 44.962040, 25.222717>,  <27.005062, 45.165020, 25.152475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350847, 44.962040, 25.222717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359098, 45.334171, 25.369177>,  <26.364050, 45.557449, 25.457052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359098, 45.334171, 25.369177>,  <26.350847, 44.962040, 25.222717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359098, 45.334171, 25.369177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775851, 0.245880, -0.581032,
		-0.630579, -0.272093, 0.726867,
		0.020627, 0.930327, 0.366150,
		26.365286, 45.613270, 25.479021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691626, 45.251671, 25.507366>,  <26.350847, 44.962040, 25.222717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691626, 45.251671, 25.507366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916382, 45.541569, 25.347853>,  <26.051235, 45.715508, 25.252144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916382, 45.541569, 25.347853>,  <25.691626, 45.251671, 25.507366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916382, 45.541569, 25.347853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781599, 0.307268, -0.542854,
		-0.270896, 0.616712, 0.739108,
		0.561889, 0.724743, -0.398784,
		26.084948, 45.758991, 25.228218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328276, 45.929234, 25.496147>,  <25.691626, 45.251671, 25.507366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328276, 45.929234, 25.496147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600990, 45.902752, 25.204727>,  <25.764620, 45.886864, 25.029875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600990, 45.902752, 25.204727>,  <25.328276, 45.929234, 25.496147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600990, 45.902752, 25.204727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572320, 0.572025, -0.587569,
		0.455648, 0.817560, 0.352109,
		0.681788, -0.066205, -0.728548,
		25.805527, 45.882889, 24.986162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554272, 46.599125, 25.325666>,  <25.328276, 45.929234, 25.496147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554272, 46.599125, 25.325666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616693, 46.395962, 24.986803>,  <25.654146, 46.274063, 24.783485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616693, 46.395962, 24.986803>,  <25.554272, 46.599125, 25.325666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616693, 46.395962, 24.986803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557756, 0.662534, -0.499957,
		0.815203, 0.550529, -0.179896,
		0.156053, -0.507904, -0.847161,
		25.663509, 46.243591, 24.732655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226074, 46.959705, 25.562040>,  <25.554272, 46.599125, 25.325666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226074, 46.959705, 25.562040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196632, 46.563461, 25.515953>,  <26.178967, 46.325714, 25.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196632, 46.563461, 25.515953>,  <26.226074, 46.959705, 25.562040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196632, 46.563461, 25.515953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611507, -0.136093, 0.779448,
		-0.787808, -0.013084, 0.615781,
		-0.073605, -0.990610, -0.115216,
		26.174551, 46.266277, 25.481388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480595, 46.718338, 26.156929>,  <26.226074, 46.959705, 25.562040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480595, 46.718338, 26.156929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455305, 46.386627, 25.934828>,  <26.440132, 46.187603, 25.801567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455305, 46.386627, 25.934828>,  <26.480595, 46.718338, 26.156929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455305, 46.386627, 25.934828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589232, -0.480060, 0.649883,
		-0.805486, -0.286086, 0.518986,
		-0.063222, -0.829275, -0.555252,
		26.436338, 46.137844, 25.768251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224834, 46.251549, 26.600271>,  <26.480595, 46.718338, 26.156929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224834, 46.251549, 26.600271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412094, 46.058022, 26.304499>,  <26.524450, 45.941906, 26.127035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412094, 46.058022, 26.304499>,  <26.224834, 46.251549, 26.600271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412094, 46.058022, 26.304499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520292, -0.525439, 0.673209,
		-0.714236, -0.699881, 0.005744,
		0.468148, -0.483819, -0.739430,
		26.552538, 45.912876, 26.082670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276651, 45.583286, 26.898092>,  <26.224834, 46.251549, 26.600271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276651, 45.583286, 26.898092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536882, 45.553555, 26.595776>,  <26.693022, 45.535717, 26.414385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536882, 45.553555, 26.595776>,  <26.276651, 45.583286, 26.898092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536882, 45.553555, 26.595776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648754, -0.462966, 0.603972,
		-0.394800, -0.883254, -0.252973,
		0.650578, -0.074331, -0.755793,
		26.732056, 45.531258, 26.369038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484755, 44.821625, 26.701418>,  <26.276651, 45.583286, 26.898092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484755, 44.821625, 26.701418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787918, 45.060024, 26.595314>,  <26.969816, 45.203064, 26.531652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787918, 45.060024, 26.595314>,  <26.484755, 44.821625, 26.701418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787918, 45.060024, 26.595314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643386, -0.615682, 0.454961,
		0.107839, -0.515484, -0.850086,
		0.757909, 0.595996, -0.265260,
		27.015291, 45.238823, 26.515736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028910, 44.361435, 26.586985>,  <26.484755, 44.821625, 26.701418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028910, 44.361435, 26.586985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212175, 44.711842, 26.647228>,  <27.322134, 44.922085, 26.683374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212175, 44.711842, 26.647228>,  <27.028910, 44.361435, 26.586985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212175, 44.711842, 26.647228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714374, -0.463721, 0.524054,
		0.528919, -0.132512, -0.838263,
		0.458164, 0.876016, 0.150607,
		27.349625, 44.974648, 26.692410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842567, 44.293694, 26.398304>,  <27.028910, 44.361435, 26.586985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842567, 44.293694, 26.398304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824850, 44.611633, 26.640379>,  <27.814219, 44.802399, 26.785624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824850, 44.611633, 26.640379>,  <27.842567, 44.293694, 26.398304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824850, 44.611633, 26.640379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803672, -0.331486, 0.494194,
		0.593421, 0.508263, -0.624115,
		-0.044296, 0.794849, 0.605188,
		27.811562, 44.850090, 26.821936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464754, 44.371155, 26.625586>,  <27.842567, 44.293694, 26.398304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464754, 44.371155, 26.625586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283678, 44.600075, 26.899096>,  <28.175032, 44.737427, 27.063202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283678, 44.600075, 26.899096>,  <28.464754, 44.371155, 26.625586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283678, 44.600075, 26.899096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714450, -0.226022, 0.662175,
		0.533509, 0.788282, -0.306560,
		-0.452691, 0.572298, 0.683773,
		28.147871, 44.771763, 27.104227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038181, 44.739872, 26.895737>,  <28.464754, 44.371155, 26.625586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038181, 44.739872, 26.895737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741814, 44.759468, 27.163658>,  <28.563993, 44.771225, 27.324411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741814, 44.759468, 27.163658>,  <29.038181, 44.739872, 26.895737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741814, 44.759468, 27.163658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649816, -0.199620, 0.733410,
		0.169633, 0.978648, 0.116071,
		-0.740921, 0.048986, 0.669803,
		28.519537, 44.774162, 27.364599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272974, 45.171642, 27.339380>,  <29.038181, 44.739872, 26.895737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272974, 45.171642, 27.339380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998093, 44.945812, 27.522249>,  <28.833164, 44.810314, 27.631971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998093, 44.945812, 27.522249>,  <29.272974, 45.171642, 27.339380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998093, 44.945812, 27.522249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684403, -0.292108, 0.668031,
		-0.243612, 0.771962, 0.587136,
		-0.687201, -0.564578, 0.457172,
		28.791933, 44.776440, 27.659401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459501, 45.314663, 27.953087>,  <29.272974, 45.171642, 27.339380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459501, 45.314663, 27.953087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245821, 44.976868, 27.968431>,  <29.117613, 44.774189, 27.977638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245821, 44.976868, 27.968431>,  <29.459501, 45.314663, 27.953087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245821, 44.976868, 27.968431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670350, -0.395527, 0.627845,
		-0.515034, 0.361110, 0.777392,
		-0.534201, -0.844487, 0.038360,
		29.085560, 44.723522, 27.979940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700760, 45.044598, 28.499622>,  <29.459501, 45.314663, 27.953087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700760, 45.044598, 28.499622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472551, 44.737671, 28.382505>,  <29.335627, 44.553516, 28.312235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472551, 44.737671, 28.382505>,  <29.700760, 45.044598, 28.499622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472551, 44.737671, 28.382505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433850, -0.584284, 0.685847,
		-0.697336, 0.264264, 0.666248,
		-0.570523, -0.767318, -0.292792,
		29.301395, 44.507477, 28.294668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515127, 44.703773, 29.142067>,  <29.700760, 45.044598, 28.499622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515127, 44.703773, 29.142067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490227, 44.438934, 28.843336>,  <29.475286, 44.280029, 28.664099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490227, 44.438934, 28.843336>,  <29.515127, 44.703773, 29.142067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490227, 44.438934, 28.843336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521085, -0.659756, 0.541473,
		-0.851231, -0.355452, 0.386081,
		-0.062252, -0.662100, -0.746826,
		29.471552, 44.240303, 28.619287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118315, 44.070694, 29.278784>,  <29.515127, 44.703773, 29.142067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118315, 44.070694, 29.278784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365368, 43.951069, 28.987829>,  <29.513599, 43.879292, 28.813257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365368, 43.951069, 28.987829>,  <29.118315, 44.070694, 29.278784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365368, 43.951069, 28.987829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491980, -0.574651, 0.654012,
		-0.613586, -0.761798, -0.207788,
		0.617631, -0.299066, -0.727387,
		29.550657, 43.861351, 28.769613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243725, 43.362644, 29.392067>,  <29.118315, 44.070694, 29.278784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243725, 43.362644, 29.392067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547220, 43.505516, 29.174171>,  <29.729317, 43.591240, 29.043434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547220, 43.505516, 29.174171>,  <29.243725, 43.362644, 29.392067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547220, 43.505516, 29.174171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649548, -0.477819, 0.591419,
		-0.049042, -0.802564, -0.594547,
		0.758737, 0.357183, -0.544737,
		29.774841, 43.612671, 29.010750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713903, 42.720928, 29.251965>,  <29.243725, 43.362644, 29.392067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713903, 42.720928, 29.251965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913260, 43.060585, 29.182032>,  <30.032873, 43.264378, 29.140072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913260, 43.060585, 29.182032>,  <29.713903, 42.720928, 29.251965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913260, 43.060585, 29.182032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800256, -0.373032, 0.469508,
		0.333460, -0.373909, -0.865446,
		0.498392, 0.849140, -0.174832,
		30.062777, 43.315327, 29.129581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203382, 42.461716, 29.031231>,  <29.713903, 42.720928, 29.251965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203382, 42.461716, 29.031231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323833, 42.829227, 29.133348>,  <30.396103, 43.049732, 29.194618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323833, 42.829227, 29.133348>,  <30.203382, 42.461716, 29.031231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323833, 42.829227, 29.133348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796567, -0.389535, 0.462324,
		0.524218, 0.064141, -0.849165,
		0.301125, 0.918776, 0.255294,
		30.414171, 43.104858, 29.209936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833368, 42.415627, 28.937767>,  <30.203382, 42.461716, 29.031231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833368, 42.415627, 28.937767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832117, 42.743584, 29.166767>,  <30.831367, 42.940357, 29.304167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832117, 42.743584, 29.166767>,  <30.833368, 42.415627, 28.937767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832117, 42.743584, 29.166767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867989, -0.282067, 0.408696,
		0.496573, 0.498203, -0.710781,
		-0.003126, 0.819897, 0.572502,
		30.831179, 42.989552, 29.338518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486364, 42.679237, 28.964367>,  <30.833368, 42.415627, 28.937767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486364, 42.679237, 28.964367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313417, 42.837669, 29.288385>,  <31.209650, 42.932728, 29.482798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313417, 42.837669, 29.288385>,  <31.486364, 42.679237, 28.964367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313417, 42.837669, 29.288385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825600, -0.187313, 0.532258,
		0.362550, 0.898906, -0.246018,
		-0.432367, 0.396083, 0.810048,
		31.183708, 42.956493, 29.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100021, 42.992985, 29.332590>,  <31.486364, 42.679237, 28.964367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100021, 42.992985, 29.332590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781614, 42.953545, 29.571466>,  <31.590570, 42.929882, 29.714792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781614, 42.953545, 29.571466>,  <32.100021, 42.992985, 29.332590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781614, 42.953545, 29.571466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590385, -0.343966, 0.730160,
		0.133421, 0.933791, 0.332012,
		-0.796018, -0.098596, 0.597189,
		31.542809, 42.923965, 29.750624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412937, 42.971581, 30.019619>,  <32.100021, 42.992985, 29.332590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412937, 42.971581, 30.019619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060013, 42.798317, 30.093275>,  <31.848259, 42.694359, 30.137468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060013, 42.798317, 30.093275>,  <32.412937, 42.971581, 30.019619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060013, 42.798317, 30.093275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422028, -0.554845, 0.716965,
		-0.208392, 0.710295, 0.672349,
		-0.882307, -0.433160, 0.184139,
		31.795321, 42.668369, 30.148518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262230, 42.945782, 30.777534>,  <32.412937, 42.971581, 30.019619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262230, 42.945782, 30.777534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048496, 42.657150, 30.601437>,  <31.920256, 42.483971, 30.495779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048496, 42.657150, 30.601437>,  <32.262230, 42.945782, 30.777534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048496, 42.657150, 30.601437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256693, -0.634752, 0.728833,
		-0.805356, 0.276432, 0.524393,
		-0.534332, -0.721578, -0.440243,
		31.888197, 42.440678, 30.469364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979908, 42.460381, 31.374180>,  <32.262230, 42.945782, 30.777534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979908, 42.460381, 31.374180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896534, 42.215881, 31.068781>,  <31.846510, 42.069183, 30.885542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896534, 42.215881, 31.068781>,  <31.979908, 42.460381, 31.374180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896534, 42.215881, 31.068781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216474, -0.790116, 0.573460,
		-0.953779, -0.045748, 0.297008,
		-0.208436, -0.611248, -0.763499,
		31.834003, 42.032505, 30.839731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462111, 41.947762, 31.634447>,  <31.979908, 42.460381, 31.374180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462111, 41.947762, 31.634447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663496, 41.795235, 31.324320>,  <31.784328, 41.703720, 31.138243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663496, 41.795235, 31.324320>,  <31.462111, 41.947762, 31.634447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663496, 41.795235, 31.324320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327153, -0.746398, 0.579535,
		-0.799684, -0.545424, -0.251035,
		0.503465, -0.381318, -0.775319,
		31.814535, 41.680840, 31.091724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172375, 41.216438, 31.505981>,  <31.462111, 41.947762, 31.634447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172375, 41.216438, 31.505981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527369, 41.255123, 31.325752>,  <31.740366, 41.278336, 31.217615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527369, 41.255123, 31.325752>,  <31.172375, 41.216438, 31.505981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527369, 41.255123, 31.325752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302574, -0.859749, 0.411438,
		-0.347587, -0.501477, -0.792278,
		0.887486, 0.096712, -0.450572,
		31.793615, 41.284138, 31.190580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201689, 40.560413, 31.270870>,  <31.172375, 41.216438, 31.505981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201689, 40.560413, 31.270870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577019, 40.698246, 31.259460>,  <31.802216, 40.780945, 31.252615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577019, 40.698246, 31.259460>,  <31.201689, 40.560413, 31.270870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577019, 40.698246, 31.259460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314924, -0.817679, 0.481896,
		0.142730, -0.461157, -0.875764,
		0.938324, 0.344580, -0.028522,
		31.858517, 40.801620, 31.250904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618029, 39.939899, 31.143198>,  <31.201689, 40.560413, 31.270870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618029, 39.939899, 31.143198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820923, 40.248997, 31.295818>,  <31.942659, 40.434456, 31.387390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820923, 40.248997, 31.295818>,  <31.618029, 39.939899, 31.143198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820923, 40.248997, 31.295818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422661, -0.608889, 0.671277,
		0.751045, -0.179230, -0.635459,
		0.507236, 0.772743, 0.381550,
		31.973093, 40.480820, 31.410284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334633, 39.752140, 31.066126>,  <31.618029, 39.939899, 31.143198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334633, 39.752140, 31.066126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273846, 39.996189, 31.377165>,  <32.237373, 40.142620, 31.563787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273846, 39.996189, 31.377165>,  <32.334633, 39.752140, 31.066126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273846, 39.996189, 31.377165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630843, -0.545773, 0.551515,
		0.760883, 0.574354, -0.301951,
		-0.151968, 0.610122, 0.777597,
		32.228256, 40.179226, 31.610443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890835, 39.569710, 31.504742>,  <32.334633, 39.752140, 31.066126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890835, 39.569710, 31.504742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660042, 39.789455, 31.746500>,  <32.521564, 39.921303, 31.891554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660042, 39.789455, 31.746500>,  <32.890835, 39.569710, 31.504742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660042, 39.789455, 31.746500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368930, -0.484900, 0.792946,
		0.728686, 0.680494, 0.077102,
		-0.576981, 0.549363, 0.604394,
		32.486946, 39.954266, 31.927818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347519, 39.683804, 32.042381>,  <32.890835, 39.569710, 31.504742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347519, 39.683804, 32.042381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987415, 39.748493, 32.204060>,  <32.771351, 39.787308, 32.301067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987415, 39.748493, 32.204060>,  <33.347519, 39.683804, 32.042381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987415, 39.748493, 32.204060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261718, -0.540885, 0.799342,
		0.347896, 0.825402, 0.444612,
		-0.900262, 0.161725, 0.404194,
		32.717339, 39.797012, 32.325317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440845, 39.892368, 32.695057>,  <33.347519, 39.683804, 32.042381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440845, 39.892368, 32.695057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058285, 39.780598, 32.729027>,  <32.828747, 39.713535, 32.749409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058285, 39.780598, 32.729027>,  <33.440845, 39.892368, 32.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058285, 39.780598, 32.729027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223719, -0.514090, 0.828047,
		-0.187718, 0.810947, 0.554190,
		-0.956406, -0.279422, 0.084920,
		32.771362, 39.696770, 32.754501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162216, 40.214462, 33.284309>,  <33.440845, 39.892368, 32.695057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162216, 40.214462, 33.284309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938396, 39.895596, 33.193600>,  <32.804104, 39.704273, 33.139172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938396, 39.895596, 33.193600>,  <33.162216, 40.214462, 33.284309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938396, 39.895596, 33.193600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182654, -0.385504, 0.904447,
		-0.808420, 0.464660, 0.361314,
		-0.559548, -0.797169, -0.226777,
		32.770531, 39.656445, 33.125568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793526, 40.194263, 33.901222>,  <33.162216, 40.214462, 33.284309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793526, 40.194263, 33.901222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753750, 39.836834, 33.726116>,  <32.729885, 39.622375, 33.621052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753750, 39.836834, 33.726116>,  <32.793526, 40.194263, 33.901222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753750, 39.836834, 33.726116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173338, -0.448774, 0.876674,
		-0.979829, 0.011299, 0.199518,
		-0.099444, -0.893574, -0.437763,
		32.723915, 39.568760, 33.594788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635040, 39.748863, 34.437340>,  <32.793526, 40.194263, 33.901222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635040, 39.748863, 34.437340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662498, 39.457245, 34.164936>,  <32.678974, 39.282272, 34.001495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662498, 39.457245, 34.164936>,  <32.635040, 39.748863, 34.437340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662498, 39.457245, 34.164936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441383, -0.589984, 0.676092,
		-0.894689, -0.346997, 0.281290,
		0.068645, -0.729049, -0.681011,
		32.683094, 39.238529, 33.960632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197956, 39.226246, 34.646221>,  <32.635040, 39.748863, 34.437340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197956, 39.226246, 34.646221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498314, 39.081669, 34.425125>,  <32.678528, 38.994923, 34.292469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498314, 39.081669, 34.425125>,  <32.197956, 39.226246, 34.646221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498314, 39.081669, 34.425125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305213, -0.552281, 0.775777,
		-0.585671, -0.751226, -0.304383,
		0.750889, -0.361449, -0.552739,
		32.723583, 38.973236, 34.259304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084881, 38.528042, 34.728283>,  <32.197956, 39.226246, 34.646221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084881, 38.528042, 34.728283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456470, 38.615799, 34.609043>,  <32.679424, 38.668453, 34.537498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456470, 38.615799, 34.609043>,  <32.084881, 38.528042, 34.728283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456470, 38.615799, 34.609043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370110, -0.541573, 0.754796,
		0.004154, -0.811520, -0.584309,
		0.928979, 0.219394, -0.298102,
		32.735165, 38.681618, 34.519611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443165, 37.892281, 34.738380>,  <32.084881, 38.528042, 34.728283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443165, 37.892281, 34.738380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739819, 38.160473, 34.729961>,  <32.917809, 38.321388, 34.724911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739819, 38.160473, 34.729961>,  <32.443165, 37.892281, 34.738380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739819, 38.160473, 34.729961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419047, -0.438566, 0.795022,
		0.523814, -0.598432, -0.606216,
		0.741632, 0.670477, -0.021044,
		32.962307, 38.361614, 34.723648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025085, 37.513126, 34.841080>,  <32.443165, 37.892281, 34.738380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025085, 37.513126, 34.841080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118626, 37.891708, 34.930107>,  <33.174751, 38.118858, 34.983524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118626, 37.891708, 34.930107>,  <33.025085, 37.513126, 34.841080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118626, 37.891708, 34.930107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488392, -0.312287, 0.814831,
		0.840705, -0.081851, -0.535271,
		0.233853, 0.946455, 0.222566,
		33.188782, 38.175644, 34.996876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708805, 37.430241, 34.963356>,  <33.025085, 37.513126, 34.841080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708805, 37.430241, 34.963356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634918, 37.779800, 35.143215>,  <33.590584, 37.989536, 35.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634918, 37.779800, 35.143215>,  <33.708805, 37.430241, 34.963356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634918, 37.779800, 35.143215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521698, -0.300548, 0.798437,
		0.832892, 0.382068, -0.400393,
		-0.184720, 0.873896, 0.449649,
		33.579502, 38.041969, 35.278111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317776, 37.783459, 35.187344>,  <33.708805, 37.430241, 34.963356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317776, 37.783459, 35.187344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025383, 37.897758, 35.435219>,  <33.849949, 37.966339, 35.583942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025383, 37.897758, 35.435219>,  <34.317776, 37.783459, 35.187344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025383, 37.897758, 35.435219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555745, -0.277690, 0.783605,
		0.395998, 0.917188, 0.044181,
		-0.730981, 0.285753, 0.619687,
		33.806087, 37.983486, 35.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703419, 37.925594, 35.790436>,  <34.317776, 37.783459, 35.187344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703419, 37.925594, 35.790436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321655, 37.924248, 35.909824>,  <34.092598, 37.923439, 35.981457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321655, 37.924248, 35.909824>,  <34.703419, 37.925594, 35.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321655, 37.924248, 35.909824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298003, -0.067825, 0.952152,
		0.017036, 0.997692, 0.065737,
		-0.954413, -0.003369, 0.298470,
		34.035332, 37.923237, 35.999367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555740, 38.416191, 36.303646>,  <34.703419, 37.925594, 35.790436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555740, 38.416191, 36.303646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280285, 38.131104, 36.357021>,  <34.115013, 37.960049, 36.389046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280285, 38.131104, 36.357021>,  <34.555740, 38.416191, 36.303646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280285, 38.131104, 36.357021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292722, -0.104881, 0.950428,
		-0.663396, 0.693561, 0.280854,
		-0.688636, -0.712723, 0.133443,
		34.073692, 37.917286, 36.397053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966579, 39.056816, 36.005054>,  <34.555740, 38.416191, 36.303646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966579, 39.056816, 36.005054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239223, 39.346680, 35.964485>,  <35.402809, 39.520596, 35.940144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239223, 39.346680, 35.964485>,  <34.966579, 39.056816, 36.005054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239223, 39.346680, 35.964485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614546, 0.491698, -0.616901,
		-0.397173, 0.482811, 0.780479,
		0.681607, 0.724656, -0.101421,
		35.443707, 39.564075, 35.934059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642334, 39.812870, 36.055897>,  <34.966579, 39.056816, 36.005054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642334, 39.812870, 36.055897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988338, 39.843884, 35.857609>,  <35.195942, 39.862492, 35.738636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988338, 39.843884, 35.857609>,  <34.642334, 39.812870, 36.055897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988338, 39.843884, 35.857609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460795, 0.513709, -0.723720,
		0.198539, 0.854454, 0.480095,
		0.865014, 0.077538, -0.495720,
		35.247841, 39.867146, 35.708893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749031, 40.481316, 36.030617>,  <34.642334, 39.812870, 36.055897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749031, 40.481316, 36.030617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930309, 40.299427, 35.723934>,  <35.039078, 40.190292, 35.539925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930309, 40.299427, 35.723934>,  <34.749031, 40.481316, 36.030617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930309, 40.299427, 35.723934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442542, 0.631858, -0.636327,
		0.773802, 0.627682, 0.085122,
		0.453196, -0.454721, -0.766708,
		35.066269, 40.163010, 35.493923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703632, 41.009380, 35.517651>,  <34.749031, 40.481316, 36.030617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703632, 41.009380, 35.517651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818470, 40.709393, 35.279282>,  <34.887375, 40.529400, 35.136261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818470, 40.709393, 35.279282>,  <34.703632, 41.009380, 35.517651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818470, 40.709393, 35.279282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148161, 0.579864, -0.801128,
		0.946374, 0.318294, 0.055361,
		0.287096, -0.749965, -0.595927,
		34.904598, 40.484402, 35.100502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229893, 41.217163, 35.146721>,  <34.703632, 41.009380, 35.517651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229893, 41.217163, 35.146721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064819, 40.922520, 34.932392>,  <34.965775, 40.745735, 34.803795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064819, 40.922520, 34.932392>,  <35.229893, 41.217163, 35.146721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064819, 40.922520, 34.932392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128143, 0.535452, -0.834788,
		0.901815, -0.413166, -0.126582,
		-0.412684, -0.736604, -0.535823,
		34.941013, 40.701538, 34.771645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532265, 41.266045, 34.529865>,  <35.229893, 41.217163, 35.146721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532265, 41.266045, 34.529865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223431, 41.043579, 34.406864>,  <35.038128, 40.910099, 34.333061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223431, 41.043579, 34.406864>,  <35.532265, 41.266045, 34.529865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223431, 41.043579, 34.406864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058989, 0.544499, -0.836685,
		0.632773, -0.627855, -0.453208,
		-0.772088, -0.556166, -0.307507,
		34.991806, 40.876728, 34.314613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668179, 41.097790, 33.833462>,  <35.532265, 41.266045, 34.529865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668179, 41.097790, 33.833462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279987, 41.010754, 33.875095>,  <35.047073, 40.958530, 33.900074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279987, 41.010754, 33.875095>,  <35.668179, 41.097790, 33.833462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279987, 41.010754, 33.875095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167492, 0.297416, -0.939942,
		0.173569, -0.929622, -0.325080,
		-0.970474, -0.217593, 0.104083,
		34.988846, 40.945477, 33.906319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381657, 40.812965, 33.165504>,  <35.668179, 41.097790, 33.833462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381657, 40.812965, 33.165504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045341, 40.935593, 33.343987>,  <34.843552, 41.009167, 33.451077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045341, 40.935593, 33.343987>,  <35.381657, 40.812965, 33.165504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045341, 40.935593, 33.343987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238861, 0.529584, -0.813933,
		-0.485826, -0.790923, -0.372040,
		-0.840784, 0.306564, 0.446206,
		34.793106, 41.027561, 33.477848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931099, 40.776718, 32.708286>,  <35.381657, 40.812965, 33.165504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931099, 40.776718, 32.708286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767841, 41.045612, 32.955357>,  <34.669888, 41.206947, 33.103600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767841, 41.045612, 32.955357>,  <34.931099, 40.776718, 32.708286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767841, 41.045612, 32.955357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382740, 0.488259, -0.784291,
		-0.828813, -0.556511, 0.058012,
		-0.408141, 0.672234, 0.617675,
		34.645397, 41.247284, 33.140659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203182, 40.893845, 32.430569>,  <34.931099, 40.776718, 32.708286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203182, 40.893845, 32.430569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312187, 41.200241, 32.663464>,  <34.377590, 41.384079, 32.803200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312187, 41.200241, 32.663464>,  <34.203182, 40.893845, 32.430569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312187, 41.200241, 32.663464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366017, 0.642170, -0.673535,
		-0.889815, -0.029563, 0.455363,
		0.272508, 0.765992, 0.582234,
		34.393940, 41.430038, 32.838135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606106, 41.257332, 32.419930>,  <34.203182, 40.893845, 32.430569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606106, 41.257332, 32.419930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886631, 41.520145, 32.530544>,  <34.054947, 41.677834, 32.596912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886631, 41.520145, 32.530544>,  <33.606106, 41.257332, 32.419930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886631, 41.520145, 32.530544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469916, 0.717811, -0.513737,
		-0.536042, 0.230341, 0.812159,
		0.701312, 0.657031, 0.276536,
		34.097023, 41.717255, 32.613506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313007, 41.982605, 32.404476>,  <33.606106, 41.257332, 32.419930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313007, 41.982605, 32.404476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693394, 42.093517, 32.459293>,  <33.921627, 42.160065, 32.492184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693394, 42.093517, 32.459293>,  <33.313007, 41.982605, 32.404476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693394, 42.093517, 32.459293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219104, 0.916647, -0.334293,
		-0.218311, 0.287875, 0.932453,
		0.950965, 0.277284, 0.137039,
		33.978683, 42.176704, 32.500404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197643, 42.512363, 32.732800>,  <33.313007, 41.982605, 32.404476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197643, 42.512363, 32.732800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576565, 42.545361, 32.608986>,  <33.803917, 42.565159, 32.534698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576565, 42.545361, 32.608986>,  <33.197643, 42.512363, 32.732800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576565, 42.545361, 32.608986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136689, 0.977983, -0.157689,
		0.289708, 0.191689, 0.937723,
		0.947304, 0.082492, -0.309531,
		33.860756, 42.570107, 32.516125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509392, 43.052620, 33.068111>,  <33.197643, 42.512363, 32.732800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509392, 43.052620, 33.068111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690567, 43.009399, 32.714123>,  <33.799274, 42.983467, 32.501732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690567, 43.009399, 32.714123>,  <33.509392, 43.052620, 33.068111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690567, 43.009399, 32.714123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265700, 0.931163, -0.249677,
		0.851027, 0.348226, 0.393054,
		0.452941, -0.108048, -0.884969,
		33.826450, 42.976986, 32.448631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742329, 43.722973, 32.825974>,  <33.509392, 43.052620, 33.068111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742329, 43.722973, 32.825974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765480, 43.534859, 32.473728>,  <33.779369, 43.421989, 32.262383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765480, 43.534859, 32.473728>,  <33.742329, 43.722973, 32.825974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765480, 43.534859, 32.473728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322855, 0.825875, -0.462272,
		0.944677, 0.311066, -0.104034,
		0.057878, -0.470286, -0.880614,
		33.782845, 43.393772, 32.209545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908928, 44.298920, 32.411766>,  <33.742329, 43.722973, 32.825974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908928, 44.298920, 32.411766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813774, 44.019730, 32.141582>,  <33.756683, 43.852215, 31.979473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813774, 44.019730, 32.141582>,  <33.908928, 44.298920, 32.411766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813774, 44.019730, 32.141582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419288, 0.701077, -0.576791,
		0.876134, 0.146002, -0.459427,
		-0.237881, -0.697979, -0.675454,
		33.742409, 43.810337, 31.938946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150986, 44.553982, 31.743990>,  <33.908928, 44.298920, 32.411766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150986, 44.553982, 31.743990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867538, 44.283428, 31.663631>,  <33.697472, 44.121094, 31.615416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867538, 44.283428, 31.663631>,  <34.150986, 44.553982, 31.743990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867538, 44.283428, 31.663631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449974, 0.652509, -0.609718,
		0.543492, -0.341659, -0.766737,
		-0.708618, -0.676388, -0.200896,
		33.654953, 44.080513, 31.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153183, 44.430527, 31.042984>,  <34.150986, 44.553982, 31.743990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153183, 44.430527, 31.042984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788757, 44.320213, 31.165560>,  <33.570103, 44.254025, 31.239105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788757, 44.320213, 31.165560>,  <34.153183, 44.430527, 31.042984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788757, 44.320213, 31.165560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411007, 0.665541, -0.622999,
		-0.032136, -0.693541, -0.719700,
		-0.911065, -0.275781, 0.306439,
		33.515438, 44.237480, 31.257492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694962, 44.360638, 30.403868>,  <34.153183, 44.430527, 31.042984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694962, 44.360638, 30.403868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402260, 44.314137, 30.672501>,  <33.226639, 44.286236, 30.833681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402260, 44.314137, 30.672501>,  <33.694962, 44.360638, 30.403868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402260, 44.314137, 30.672501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641645, 0.449786, -0.621276,
		-0.229844, -0.885538, -0.403725,
		-0.731754, -0.116251, 0.671582,
		33.182735, 44.279263, 30.873976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003700, 43.993706, 30.047911>,  <33.694962, 44.360638, 30.403868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003700, 43.993706, 30.047911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932056, 44.221367, 30.368906>,  <32.889072, 44.357964, 30.561502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932056, 44.221367, 30.368906>,  <33.003700, 43.993706, 30.047911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932056, 44.221367, 30.368906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554074, 0.615670, -0.560315,
		-0.812972, -0.544994, 0.205082,
		-0.179106, 0.569151, 0.802489,
		32.878326, 44.392113, 30.609653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221184, 44.062546, 30.202213>,  <33.003700, 43.993706, 30.047911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221184, 44.062546, 30.202213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379559, 44.379627, 30.387623>,  <32.474583, 44.569878, 30.498869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379559, 44.379627, 30.387623>,  <32.221184, 44.062546, 30.202213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379559, 44.379627, 30.387623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651682, 0.598187, -0.466350,
		-0.646952, -0.117425, 0.753435,
		0.395934, 0.792707, 0.463522,
		32.498337, 44.617439, 30.526680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645403, 44.439327, 30.429070>,  <32.221184, 44.062546, 30.202213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645403, 44.439327, 30.429070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958544, 44.686214, 30.397631>,  <32.146427, 44.834347, 30.378767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958544, 44.686214, 30.397631>,  <31.645403, 44.439327, 30.429070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958544, 44.686214, 30.397631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591557, 0.699172, -0.401520,
		-0.192875, 0.360825, 0.912472,
		0.782853, 0.617222, -0.078596,
		32.193401, 44.871380, 30.374052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336639, 45.103748, 30.567804>,  <31.645403, 44.439327, 30.429070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336639, 45.103748, 30.567804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676979, 45.188221, 30.375364>,  <31.881184, 45.238903, 30.259899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676979, 45.188221, 30.375364>,  <31.336639, 45.103748, 30.567804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676979, 45.188221, 30.375364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486729, 0.661643, -0.570371,
		0.197867, 0.719466, 0.665746,
		0.850849, 0.211180, -0.481102,
		31.932234, 45.251575, 30.231033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164215, 45.719284, 30.301325>,  <31.336639, 45.103748, 30.567804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164215, 45.719284, 30.301325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489901, 45.599102, 30.102615>,  <31.685312, 45.526993, 29.983389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489901, 45.599102, 30.102615>,  <31.164215, 45.719284, 30.301325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489901, 45.599102, 30.102615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422190, 0.280926, -0.861879,
		0.398514, 0.911486, 0.101884,
		0.814213, -0.300456, -0.496773,
		31.734165, 45.508965, 29.953583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398317, 46.324371, 29.919167>,  <31.164215, 45.719284, 30.301325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398317, 46.324371, 29.919167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531155, 46.002190, 29.722818>,  <31.610857, 45.808880, 29.605009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531155, 46.002190, 29.722818>,  <31.398317, 46.324371, 29.919167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531155, 46.002190, 29.722818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394138, 0.354301, -0.848013,
		0.856953, 0.475091, -0.199799,
		0.332094, -0.805456, -0.490871,
		31.630783, 45.760551, 29.575558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596422, 46.657528, 29.276989>,  <31.398317, 46.324371, 29.919167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596422, 46.657528, 29.276989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571821, 46.264267, 29.208130>,  <31.557060, 46.028313, 29.166815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571821, 46.264267, 29.208130>,  <31.596422, 46.657528, 29.276989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571821, 46.264267, 29.208130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268748, 0.182418, -0.945779,
		0.961245, -0.011903, -0.275438,
		-0.061502, -0.983149, -0.172150,
		31.553371, 45.969322, 29.156485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988600, 46.447544, 28.670692>,  <31.596422, 46.657528, 29.276989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988600, 46.447544, 28.670692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696077, 46.176929, 28.705326>,  <31.520565, 46.014561, 28.726107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696077, 46.176929, 28.705326>,  <31.988600, 46.447544, 28.670692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696077, 46.176929, 28.705326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220429, 0.114301, -0.968683,
		0.645450, -0.727487, -0.232717,
		-0.731304, -0.676534, 0.086583,
		31.476686, 45.973969, 28.731300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092777, 46.040215, 28.081015>,  <31.988600, 46.447544, 28.670692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092777, 46.040215, 28.081015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713684, 45.957474, 28.178181>,  <31.486227, 45.907829, 28.236481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713684, 45.957474, 28.178181>,  <32.092777, 46.040215, 28.081015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713684, 45.957474, 28.178181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250553, 0.011160, -0.968039,
		0.197529, -0.978309, -0.062404,
		-0.947737, -0.206851, 0.242914,
		31.429363, 45.895420, 28.251055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863169, 45.433647, 27.675076>,  <32.092777, 46.040215, 28.081015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863169, 45.433647, 27.675076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529575, 45.622856, 27.788721>,  <31.329418, 45.736382, 27.856909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529575, 45.622856, 27.788721>,  <31.863169, 45.433647, 27.675076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529575, 45.622856, 27.788721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236239, 0.159233, -0.958559,
		-0.498658, -0.866543, -0.021053,
		-0.833985, 0.473020, 0.284114,
		31.279379, 45.764763, 27.873955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315985, 45.082153, 27.328201>,  <31.863169, 45.433647, 27.675076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315985, 45.082153, 27.328201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164103, 45.437588, 27.431145>,  <31.072973, 45.650848, 27.492910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164103, 45.437588, 27.431145>,  <31.315985, 45.082153, 27.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164103, 45.437588, 27.431145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454128, 0.063329, -0.888683,
		-0.805973, -0.454310, 0.379487,
		-0.379705, 0.888590, 0.257356,
		31.050192, 45.704166, 27.508352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597647, 45.048962, 27.113775>,  <31.315985, 45.082153, 27.328201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597647, 45.048962, 27.113775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705212, 45.430378, 27.168093>,  <30.769751, 45.659229, 27.200684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705212, 45.430378, 27.168093>,  <30.597647, 45.048962, 27.113775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705212, 45.430378, 27.168093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512671, 0.261061, -0.817934,
		-0.815387, 0.150333, 0.559056,
		0.268910, 0.953544, 0.135794,
		30.785885, 45.716442, 27.208832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027590, 45.363419, 26.933237>,  <30.597647, 45.048962, 27.113775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027590, 45.363419, 26.933237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257057, 45.689178, 26.968231>,  <30.394737, 45.884636, 26.989227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257057, 45.689178, 26.968231>,  <30.027590, 45.363419, 26.933237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257057, 45.689178, 26.968231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317364, 0.319468, -0.892872,
		-0.755107, 0.484446, 0.441730,
		0.573667, 0.814403, 0.087487,
		30.429157, 45.933498, 26.994476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648708, 45.950939, 26.967737>,  <30.027590, 45.363419, 26.933237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648708, 45.950939, 26.967737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998142, 46.013336, 26.783339>,  <30.207802, 46.050774, 26.672699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998142, 46.013336, 26.783339>,  <29.648708, 45.950939, 26.967737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998142, 46.013336, 26.783339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486376, 0.312916, -0.815795,
		0.016996, 0.936883, 0.349229,
		0.873584, 0.155991, -0.460996,
		30.260218, 46.060135, 26.645041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575323, 46.630424, 26.667242>,  <29.648708, 45.950939, 26.967737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575323, 46.630424, 26.667242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865824, 46.454624, 26.455809>,  <30.040123, 46.349144, 26.328949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865824, 46.454624, 26.455809>,  <29.575323, 46.630424, 26.667242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865824, 46.454624, 26.455809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477215, 0.231130, -0.847847,
		0.494799, 0.867998, -0.041877,
		0.726251, -0.439498, -0.528584,
		30.083698, 46.322773, 26.297234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629614, 47.079929, 26.067324>,  <29.575323, 46.630424, 26.667242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629614, 47.079929, 26.067324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819458, 46.742981, 25.965214>,  <29.933365, 46.540813, 25.903948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819458, 46.742981, 25.965214>,  <29.629614, 47.079929, 26.067324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819458, 46.742981, 25.965214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501599, -0.020524, -0.864857,
		0.723288, 0.538513, -0.432271,
		0.474608, -0.842367, -0.255273,
		29.961840, 46.490273, 25.888632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715105, 47.177628, 25.355106>,  <29.629614, 47.079929, 26.067324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715105, 47.177628, 25.355106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798012, 46.791679, 25.419695>,  <29.847755, 46.560112, 25.458448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798012, 46.791679, 25.419695>,  <29.715105, 47.177628, 25.355106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798012, 46.791679, 25.419695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428784, -0.237955, -0.871505,
		0.879309, 0.111400, -0.463040,
		0.207269, -0.964867, 0.161469,
		29.860193, 46.502220, 25.468136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266106, 46.970638, 24.826118>,  <29.715105, 47.177628, 25.355106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266106, 46.970638, 24.826118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033354, 46.673225, 24.957920>,  <29.893703, 46.494778, 25.037001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033354, 46.673225, 24.957920>,  <30.266106, 46.970638, 24.826118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033354, 46.673225, 24.957920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271335, -0.204457, -0.940518,
		0.766677, -0.636674, -0.082777,
		-0.581879, -0.743534, 0.329504,
		29.858789, 46.450165, 25.056772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404827, 46.384628, 24.398169>,  <30.266106, 46.970638, 24.826118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404827, 46.384628, 24.398169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061607, 46.281227, 24.575672>,  <29.855675, 46.219185, 24.682175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061607, 46.281227, 24.575672>,  <30.404827, 46.384628, 24.398169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061607, 46.281227, 24.575672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386766, -0.243214, -0.889527,
		0.337876, -0.934891, 0.108709,
		-0.858051, -0.258505, 0.443761,
		29.804192, 46.203674, 24.708801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944950, 45.928963, 24.310007>,  <30.404827, 46.384628, 24.398169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944950, 45.928963, 24.310007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214581, 45.917217, 24.014776>,  <31.376358, 45.910172, 23.837637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214581, 45.917217, 24.014776>,  <30.944950, 45.928963, 24.310007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214581, 45.917217, 24.014776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402316, -0.823403, 0.400187,
		-0.619488, -0.566697, -0.543221,
		0.674075, -0.029365, -0.738079,
		31.416803, 45.908409, 23.793352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177612, 45.191120, 24.166712>,  <30.944950, 45.928963, 24.310007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177612, 45.191120, 24.166712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482414, 45.404427, 24.019756>,  <31.665295, 45.532410, 23.931583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482414, 45.404427, 24.019756>,  <31.177612, 45.191120, 24.166712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482414, 45.404427, 24.019756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640469, -0.536826, 0.549197,
		0.095645, -0.653792, -0.750605,
		0.762005, 0.533268, -0.367389,
		31.711016, 45.564407, 23.909540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791634, 44.715961, 23.953598>,  <31.177612, 45.191120, 24.166712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791634, 44.715961, 23.953598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945982, 45.077835, 24.025883>,  <32.038589, 45.294960, 24.069254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945982, 45.077835, 24.025883>,  <31.791634, 44.715961, 23.953598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945982, 45.077835, 24.025883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712861, -0.416725, 0.564065,
		0.585606, -0.088835, -0.805714,
		0.385870, 0.904681, 0.180710,
		32.061745, 45.349239, 24.080095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422119, 44.524136, 24.124247>,  <31.791634, 44.715961, 23.953598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422119, 44.524136, 24.124247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439911, 44.916157, 24.201727>,  <32.450588, 45.151371, 24.248215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439911, 44.916157, 24.201727>,  <32.422119, 44.524136, 24.124247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439911, 44.916157, 24.201727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768766, -0.157403, 0.619858,
		0.637982, 0.121339, -0.760432,
		0.044482, 0.980052, 0.193701,
		32.453255, 45.210171, 24.259838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147213, 44.792763, 24.234739>,  <32.422119, 44.524136, 24.124247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147213, 44.792763, 24.234739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941429, 45.076672, 24.427217>,  <32.817959, 45.247017, 24.542704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941429, 45.076672, 24.427217>,  <33.147213, 44.792763, 24.234739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941429, 45.076672, 24.427217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701624, 0.025797, 0.712080,
		0.493002, 0.703957, -0.511267,
		-0.514463, 0.709774, 0.481195,
		32.787090, 45.289604, 24.571575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623360, 45.287807, 24.584642>,  <33.147213, 44.792763, 24.234739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623360, 45.287807, 24.584642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289211, 45.288189, 24.804518>,  <33.088722, 45.288418, 24.936443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289211, 45.288189, 24.804518>,  <33.623360, 45.287807, 24.584642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289211, 45.288189, 24.804518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549172, -0.041984, 0.834654,
		0.023876, 0.999118, 0.034547,
		-0.835368, 0.000956, 0.549690,
		33.038601, 45.288475, 24.969425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709278, 45.724499, 25.018007>,  <33.623360, 45.287807, 24.584642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709278, 45.724499, 25.018007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433216, 45.475475, 25.165583>,  <33.267578, 45.326061, 25.254128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433216, 45.475475, 25.165583>,  <33.709278, 45.724499, 25.018007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433216, 45.475475, 25.165583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572773, -0.158338, 0.804276,
		-0.442289, 0.766391, 0.465860,
		-0.690153, -0.622555, 0.368937,
		33.226170, 45.288708, 25.276264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545364, 45.919792, 25.750929>,  <33.709278, 45.724499, 25.018007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545364, 45.919792, 25.750929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410389, 45.544441, 25.721064>,  <33.329403, 45.319229, 25.703144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410389, 45.544441, 25.721064>,  <33.545364, 45.919792, 25.750929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410389, 45.544441, 25.721064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435295, -0.225872, 0.871493,
		-0.834656, 0.261580, 0.484691,
		-0.337443, -0.938381, -0.074661,
		33.309155, 45.262928, 25.698666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331722, 45.775517, 26.434166>,  <33.545364, 45.919792, 25.750929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331722, 45.775517, 26.434166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367844, 45.408344, 26.279640>,  <33.389519, 45.188042, 26.186924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367844, 45.408344, 26.279640>,  <33.331722, 45.775517, 26.434166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367844, 45.408344, 26.279640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446673, -0.309366, 0.839509,
		-0.890128, -0.248371, 0.382079,
		0.090308, -0.917935, -0.386316,
		33.394936, 45.132965, 26.163746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106037, 45.276142, 26.913189>,  <33.331722, 45.775517, 26.434166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106037, 45.276142, 26.913189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313950, 45.026237, 26.680122>,  <33.438698, 44.876293, 26.540283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313950, 45.026237, 26.680122>,  <33.106037, 45.276142, 26.913189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313950, 45.026237, 26.680122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486208, -0.344463, 0.803086,
		-0.702447, -0.700723, 0.124722,
		0.519779, -0.624766, -0.582664,
		33.469883, 44.838806, 26.505323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068409, 44.682465, 27.284122>,  <33.106037, 45.276142, 26.913189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068409, 44.682465, 27.284122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397133, 44.655430, 27.057827>,  <33.594368, 44.639210, 26.922050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397133, 44.655430, 27.057827>,  <33.068409, 44.682465, 27.284122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397133, 44.655430, 27.057827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476376, -0.463198, 0.747337,
		-0.312556, -0.883674, -0.348466,
		0.821812, -0.067584, -0.565737,
		33.643677, 44.635155, 26.888105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443645, 43.934837, 27.370872>,  <33.068409, 44.682465, 27.284122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443645, 43.934837, 27.370872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716309, 44.157143, 27.180517>,  <33.879906, 44.290527, 27.066305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716309, 44.157143, 27.180517>,  <33.443645, 43.934837, 27.370872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716309, 44.157143, 27.180517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711941, -0.353783, 0.606611,
		0.168774, -0.752303, -0.636832,
		0.681656, 0.555767, -0.475886,
		33.920807, 44.323872, 27.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898510, 43.466808, 27.215609>,  <33.443645, 43.934837, 27.370872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898510, 43.466808, 27.215609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079063, 43.821198, 27.258125>,  <34.187397, 44.033833, 27.283636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079063, 43.821198, 27.258125>,  <33.898510, 43.466808, 27.215609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079063, 43.821198, 27.258125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534502, -0.363840, 0.762842,
		0.714532, -0.287524, -0.637788,
		0.451388, 0.885974, 0.106293,
		34.214481, 44.086990, 27.290012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643581, 43.330944, 27.235374>,  <33.898510, 43.466808, 27.215609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643581, 43.330944, 27.235374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589600, 43.686024, 27.411451>,  <34.557209, 43.899071, 27.517097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589600, 43.686024, 27.411451>,  <34.643581, 43.330944, 27.235374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589600, 43.686024, 27.411451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582475, -0.288317, 0.759998,
		0.801568, 0.358966, -0.478155,
		-0.134954, 0.887703, 0.440194,
		34.549114, 43.952335, 27.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316708, 43.496887, 27.322269>,  <34.643581, 43.330944, 27.235374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316708, 43.496887, 27.322269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099323, 43.719769, 27.573402>,  <34.968891, 43.853497, 27.724083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099323, 43.719769, 27.573402>,  <35.316708, 43.496887, 27.322269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099323, 43.719769, 27.573402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603828, -0.260071, 0.753495,
		0.583130, 0.788600, -0.195115,
		-0.543462, 0.557201, 0.627834,
		34.936283, 43.886929, 27.761753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794353, 43.848225, 27.790308>,  <35.316708, 43.496887, 27.322269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794353, 43.848225, 27.790308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451889, 43.888264, 27.993074>,  <35.246410, 43.912289, 28.114735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451889, 43.888264, 27.993074>,  <35.794353, 43.848225, 27.790308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451889, 43.888264, 27.993074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508959, -0.005887, 0.860771,
		0.089149, 0.994960, -0.045908,
		-0.856162, 0.100102, 0.506918,
		35.195042, 43.918293, 28.145149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993870, 44.336033, 28.236725>,  <35.794353, 43.848225, 27.790308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993870, 44.336033, 28.236725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662262, 44.161304, 28.376390>,  <35.463299, 44.056465, 28.460190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662262, 44.161304, 28.376390>,  <35.993870, 44.336033, 28.236725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662262, 44.161304, 28.376390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400959, -0.029068, 0.915635,
		-0.389822, 0.899077, 0.199247,
		-0.829018, -0.436824, 0.349162,
		35.413555, 44.030258, 28.481138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823956, 44.670593, 28.828018>,  <35.993870, 44.336033, 28.236725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823956, 44.670593, 28.828018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652889, 44.309559, 28.847799>,  <35.550247, 44.092937, 28.859669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652889, 44.309559, 28.847799>,  <35.823956, 44.670593, 28.828018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652889, 44.309559, 28.847799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479061, -0.179918, 0.859145,
		-0.766551, 0.391121, 0.509337,
		-0.427669, -0.902582, 0.049455,
		35.524590, 44.038784, 28.862637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750923, 44.617481, 29.587404>,  <35.823956, 44.670593, 28.828018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750923, 44.617481, 29.587404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689865, 44.246620, 29.450537>,  <35.653229, 44.024101, 29.368416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689865, 44.246620, 29.450537>,  <35.750923, 44.617481, 29.587404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689865, 44.246620, 29.450537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392347, -0.374625, 0.840071,
		-0.907063, -0.006017, 0.420951,
		-0.152644, -0.927157, -0.342170,
		35.644073, 43.968472, 29.347885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200008, 44.204754, 30.046480>,  <35.750923, 44.617481, 29.587404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200008, 44.204754, 30.046480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449776, 43.940746, 29.879400>,  <35.599636, 43.782341, 29.779152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449776, 43.940746, 29.879400>,  <35.200008, 44.204754, 30.046480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449776, 43.940746, 29.879400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287659, -0.302862, 0.908585,
		-0.726192, -0.687491, 0.000749,
		0.624417, -0.660023, -0.417700,
		35.637100, 43.742741, 29.754091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139812, 43.612869, 30.535881>,  <35.200008, 44.204754, 30.046480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139812, 43.612869, 30.535881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459263, 43.528202, 30.310530>,  <35.650932, 43.477402, 30.175318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459263, 43.528202, 30.310530>,  <35.139812, 43.612869, 30.535881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459263, 43.528202, 30.310530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410564, -0.492843, 0.767165,
		-0.440040, -0.843981, -0.306694,
		0.798625, -0.211666, -0.563379,
		35.698849, 43.464703, 30.141516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221172, 42.921906, 30.511938>,  <35.139812, 43.612869, 30.535881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221172, 42.921906, 30.511938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580521, 43.058086, 30.400932>,  <35.796131, 43.139797, 30.334330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580521, 43.058086, 30.400932>,  <35.221172, 42.921906, 30.511938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580521, 43.058086, 30.400932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435020, -0.602397, 0.669235,
		0.060670, -0.721947, -0.689283,
		0.898375, 0.340454, -0.277514,
		35.850033, 43.160221, 30.317678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684124, 42.280067, 30.548588>,  <35.221172, 42.921906, 30.511938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684124, 42.280067, 30.548588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889202, 42.623089, 30.565285>,  <36.012249, 42.828903, 30.575302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889202, 42.623089, 30.565285>,  <35.684124, 42.280067, 30.548588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889202, 42.623089, 30.565285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504437, -0.340208, 0.793601,
		0.694759, -0.385817, -0.607005,
		0.512693, 0.857557, 0.041742,
		36.043011, 42.880356, 30.577806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439392, 42.001125, 30.599802>,  <35.684124, 42.280067, 30.548588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439392, 42.001125, 30.599802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462749, 42.383183, 30.715929>,  <36.476765, 42.612419, 30.785606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462749, 42.383183, 30.715929>,  <36.439392, 42.001125, 30.599802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462749, 42.383183, 30.715929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336679, -0.292619, 0.894998,
		0.939807, 0.045485, -0.338664,
		0.058391, 0.955147, 0.290319,
		36.480267, 42.669727, 30.803024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035702, 41.994709, 30.855059>,  <36.439392, 42.001125, 30.599802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035702, 41.994709, 30.855059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823116, 42.295078, 31.011854>,  <36.695564, 42.475300, 31.105932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823116, 42.295078, 31.011854>,  <37.035702, 41.994709, 30.855059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823116, 42.295078, 31.011854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371615, -0.209158, 0.904519,
		0.761214, 0.626390, -0.167894,
		-0.531465, 0.750925, 0.391990,
		36.663677, 42.520355, 31.129452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470909, 42.345562, 31.283628>,  <37.035702, 41.994709, 30.855059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470909, 42.345562, 31.283628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102016, 42.440369, 31.405815>,  <36.880680, 42.497253, 31.479126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102016, 42.440369, 31.405815>,  <37.470909, 42.345562, 31.283628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102016, 42.440369, 31.405815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258078, -0.210919, 0.942820,
		0.287893, 0.948333, 0.133348,
		-0.922233, 0.237017, 0.305466,
		36.825348, 42.511475, 31.497456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669441, 42.778259, 31.946957>,  <37.470909, 42.345562, 31.283628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669441, 42.778259, 31.946957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298656, 42.629009, 31.931395>,  <37.076183, 42.539459, 31.922058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298656, 42.629009, 31.931395>,  <37.669441, 42.778259, 31.946957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298656, 42.629009, 31.931395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103949, -0.355111, 0.929027,
		-0.360461, 0.857130, 0.367961,
		-0.926964, -0.373128, -0.038906,
		37.020569, 42.517071, 31.919724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509277, 42.909176, 32.627853>,  <37.669441, 42.778259, 31.946957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509277, 42.909176, 32.627853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242237, 42.652306, 32.477165>,  <37.082012, 42.498184, 32.386753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242237, 42.652306, 32.477165>,  <37.509277, 42.909176, 32.627853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242237, 42.652306, 32.477165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179378, -0.352356, 0.918515,
		-0.722591, 0.680774, 0.120039,
		-0.667597, -0.642178, -0.376725,
		37.041958, 42.459652, 32.364147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928810, 42.976181, 33.099701>,  <37.509277, 42.909176, 32.627853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928810, 42.976181, 33.099701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918354, 42.618584, 32.920773>,  <36.912083, 42.404026, 32.813416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918354, 42.618584, 32.920773>,  <36.928810, 42.976181, 33.099701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918354, 42.618584, 32.920773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040328, -0.448051, 0.893098,
		-0.998845, 0.005302, 0.047763,
		-0.026136, -0.893992, -0.447320,
		36.910515, 42.350388, 32.786575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825058, 42.525509, 33.644554>,  <36.928810, 42.976181, 33.099701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825058, 42.525509, 33.644554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930260, 42.258125, 33.366276>,  <36.993382, 42.097694, 33.199310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930260, 42.258125, 33.366276>,  <36.825058, 42.525509, 33.644554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930260, 42.258125, 33.366276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312849, -0.623031, 0.716908,
		-0.912665, -0.406194, 0.045270,
		0.263000, -0.668459, -0.695696,
		37.009159, 42.057587, 33.157566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509529, 41.825615, 33.832027>,  <36.825058, 42.525509, 33.644554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509529, 41.825615, 33.832027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832150, 41.778831, 33.600235>,  <37.025723, 41.750763, 33.461159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832150, 41.778831, 33.600235>,  <36.509529, 41.825615, 33.832027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832150, 41.778831, 33.600235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337002, -0.714402, 0.613237,
		-0.485706, -0.689892, -0.536786,
		0.806548, -0.116955, -0.579484,
		37.074112, 41.743744, 33.426388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620102, 41.109497, 33.718742>,  <36.509529, 41.825615, 33.832027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620102, 41.109497, 33.718742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980202, 41.248234, 33.613480>,  <37.196262, 41.331474, 33.550323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980202, 41.248234, 33.613480>,  <36.620102, 41.109497, 33.718742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980202, 41.248234, 33.613480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435029, -0.692660, 0.575302,
		0.017259, -0.632396, -0.774453,
		0.900251, 0.346839, -0.263156,
		37.250278, 41.352283, 33.534534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940395, 40.537449, 33.580154>,  <36.620102, 41.109497, 33.718742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940395, 40.537449, 33.580154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231224, 40.796257, 33.672005>,  <37.405724, 40.951542, 33.727116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231224, 40.796257, 33.672005>,  <36.940395, 40.537449, 33.580154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231224, 40.796257, 33.672005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478845, -0.717584, 0.505748,
		0.492007, -0.257760, -0.831558,
		0.727075, 0.647019, 0.229629,
		37.449345, 40.990364, 33.740894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533661, 40.174412, 33.604950>,  <36.940395, 40.537449, 33.580154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533661, 40.174412, 33.604950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679134, 40.499859, 33.786392>,  <37.766418, 40.695129, 33.895256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679134, 40.499859, 33.786392>,  <37.533661, 40.174412, 33.604950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679134, 40.499859, 33.786392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398797, -0.576058, 0.713525,
		0.841841, -0.078599, -0.533971,
		0.363681, 0.813621, 0.453605,
		37.788239, 40.743946, 33.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112061, 39.968445, 33.786049>,  <37.533661, 40.174412, 33.604950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112061, 39.968445, 33.786049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122116, 40.306820, 33.999123>,  <38.128151, 40.509846, 34.126968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122116, 40.306820, 33.999123>,  <38.112061, 39.968445, 33.786049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122116, 40.306820, 33.999123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493328, -0.473952, 0.729382,
		0.869480, 0.244455, -0.429239,
		0.025137, 0.845938, 0.532688,
		38.129658, 40.560600, 34.158928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897659, 40.181866, 34.033775>,  <38.112061, 39.968445, 33.786049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897659, 40.181866, 34.033775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638435, 40.341263, 34.293381>,  <38.482903, 40.436901, 34.449146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638435, 40.341263, 34.293381>,  <38.897659, 40.181866, 34.033775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638435, 40.341263, 34.293381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529516, -0.376744, 0.760051,
		0.547385, 0.836224, 0.033147,
		-0.648061, 0.398488, 0.649018,
		38.444016, 40.460808, 34.488087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298973, 40.374908, 34.602814>,  <38.897659, 40.181866, 34.033775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298973, 40.374908, 34.602814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918617, 40.354767, 34.724972>,  <38.690403, 40.342682, 34.798267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918617, 40.354767, 34.724972>,  <39.298973, 40.374908, 34.602814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918617, 40.354767, 34.724972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263170, -0.650887, 0.712101,
		0.162922, 0.757503, 0.632175,
		-0.950893, -0.050352, 0.305396,
		38.633350, 40.339661, 34.816589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385738, 40.314365, 35.293140>,  <39.298973, 40.374908, 34.602814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385738, 40.314365, 35.293140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024719, 40.167591, 35.203011>,  <38.808109, 40.079525, 35.148933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024719, 40.167591, 35.203011>,  <39.385738, 40.314365, 35.293140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024719, 40.167591, 35.203011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168856, -0.782972, 0.598701,
		-0.396111, 0.502306, 0.768626,
		-0.902543, -0.366939, -0.225326,
		38.753956, 40.057510, 35.135414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064281, 40.268036, 35.944572>,  <39.385738, 40.314365, 35.293140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064281, 40.268036, 35.944572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963139, 39.998043, 35.667309>,  <38.902454, 39.836048, 35.500950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963139, 39.998043, 35.667309>,  <39.064281, 40.268036, 35.944572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963139, 39.998043, 35.667309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330208, -0.733628, 0.593930,
		-0.909410, -0.078707, 0.408386,
		-0.252857, -0.674978, -0.693158,
		38.887283, 39.795551, 35.459362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153954, 39.684357, 36.282089>,  <39.064281, 40.268036, 35.944572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153954, 39.684357, 36.282089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040775, 39.507961, 35.941391>,  <38.972866, 39.402122, 35.736973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040775, 39.507961, 35.941391>,  <39.153954, 39.684357, 36.282089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040775, 39.507961, 35.941391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266733, -0.889182, 0.371764,
		-0.921300, -0.121999, 0.369218,
		-0.282948, -0.440988, -0.851745,
		38.955891, 39.375664, 35.685867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679291, 39.057621, 36.514088>,  <39.153954, 39.684357, 36.282089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679291, 39.057621, 36.514088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829712, 39.004829, 36.147228>,  <38.919964, 38.973156, 35.927113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829712, 39.004829, 36.147228>,  <38.679291, 39.057621, 36.514088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829712, 39.004829, 36.147228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154905, -0.966920, 0.202657,
		-0.913556, -0.218282, -0.343173,
		0.376058, -0.131980, -0.917149,
		38.942528, 38.965237, 35.872082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324024, 38.440865, 36.210041>,  <38.679291, 39.057621, 36.514088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324024, 38.440865, 36.210041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657112, 38.491558, 35.994446>,  <38.856964, 38.521976, 35.865089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657112, 38.491558, 35.994446>,  <38.324024, 38.440865, 36.210041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657112, 38.491558, 35.994446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211139, -0.972580, 0.097515,
		-0.511852, -0.195005, -0.836648,
		0.832723, 0.126736, -0.538990,
		38.906929, 38.529579, 35.832748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302776, 37.884262, 35.747940>,  <38.324024, 38.440865, 36.210041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302776, 37.884262, 35.747940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685978, 37.998844, 35.753277>,  <38.915897, 38.067593, 35.756477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685978, 37.998844, 35.753277>,  <38.302776, 37.884262, 35.747940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685978, 37.998844, 35.753277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284957, -0.956136, 0.067843,
		0.032191, -0.061192, -0.997607,
		0.958000, 0.286459, 0.013342,
		38.973377, 38.084782, 35.757278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755455, 37.468742, 35.283802>,  <38.302776, 37.884262, 35.747940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755455, 37.468742, 35.283802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015720, 37.621857, 35.546135>,  <39.171879, 37.713726, 35.703537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015720, 37.621857, 35.546135>,  <38.755455, 37.468742, 35.283802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015720, 37.621857, 35.546135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463787, -0.884179, 0.055931,
		0.601285, 0.267775, -0.752830,
		0.650660, 0.382783, 0.655834,
		39.210918, 37.736691, 35.742886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400417, 37.212368, 35.033817>,  <38.755455, 37.468742, 35.283802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400417, 37.212368, 35.033817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463650, 37.307106, 35.417255>,  <39.501587, 37.363949, 35.647320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463650, 37.307106, 35.417255>,  <39.400417, 37.212368, 35.033817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463650, 37.307106, 35.417255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586583, -0.803467, 0.101790,
		0.794312, 0.546207, -0.265942,
		0.158077, 0.236850, 0.958600,
		39.511074, 37.378162, 35.704834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153141, 37.254925, 35.212528>,  <39.400417, 37.212368, 35.033817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153141, 37.254925, 35.212528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982136, 37.159924, 35.561428>,  <39.879532, 37.102921, 35.770767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982136, 37.159924, 35.561428>,  <40.153141, 37.254925, 35.212528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982136, 37.159924, 35.561428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618577, -0.780476, 0.090665,
		0.659237, 0.578315, 0.480582,
		-0.427515, -0.237507, 0.872250,
		39.853882, 37.088673, 35.823105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617031, 36.812599, 35.334930>,  <40.153141, 37.254925, 35.212528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617031, 36.812599, 35.334930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360771, 36.789673, 35.641209>,  <40.207016, 36.775917, 35.824974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360771, 36.789673, 35.641209>,  <40.617031, 36.812599, 35.334930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360771, 36.789673, 35.641209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380865, -0.889607, 0.252075,
		0.666718, 0.453117, 0.591754,
		-0.640647, -0.057316, 0.765693,
		40.168575, 36.772476, 35.870918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005108, 36.627914, 35.951996>,  <40.617031, 36.812599, 35.334930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005108, 36.627914, 35.951996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624588, 36.541939, 36.040390>,  <40.396278, 36.490353, 36.093426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624588, 36.541939, 36.040390>,  <41.005108, 36.627914, 35.951996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624588, 36.541939, 36.040390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265000, -0.936431, 0.229940,
		0.157516, 0.277303, 0.947783,
		-0.951296, -0.214943, 0.220988,
		40.339199, 36.477455, 36.106686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843281, 36.405899, 36.642345>,  <41.005108, 36.627914, 35.951996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843281, 36.405899, 36.642345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599525, 36.238750, 36.372822>,  <40.453270, 36.138462, 36.211105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599525, 36.238750, 36.372822>,  <40.843281, 36.405899, 36.642345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599525, 36.238750, 36.372822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405037, -0.894655, 0.188515,
		-0.681605, -0.158040, 0.714449,
		-0.609393, -0.417871, -0.673813,
		40.416706, 36.113388, 36.170677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485203, 35.837479, 37.000244>,  <40.843281, 36.405899, 36.642345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485203, 35.837479, 37.000244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476631, 35.751068, 36.609783>,  <40.471489, 35.699223, 36.375507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476631, 35.751068, 36.609783>,  <40.485203, 35.837479, 37.000244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476631, 35.751068, 36.609783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346597, -0.917432, 0.195418,
		-0.937769, -0.334144, 0.094534,
		-0.021431, -0.216023, -0.976153,
		40.470203, 35.686260, 36.316936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230545, 35.111736, 36.936245>,  <40.485203, 35.837479, 37.000244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230545, 35.111736, 36.936245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407528, 35.195713, 36.587498>,  <40.513718, 35.246101, 36.378250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407528, 35.195713, 36.587498>,  <40.230545, 35.111736, 36.936245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407528, 35.195713, 36.587498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343266, -0.937819, -0.051625,
		-0.828494, -0.276441, -0.487009,
		0.442455, 0.209945, -0.871870,
		40.540264, 35.258698, 36.325935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111412, 34.653633, 36.319523>,  <40.230545, 35.111736, 36.936245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111412, 34.653633, 36.319523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468170, 34.822468, 36.254562>,  <40.682224, 34.923767, 36.215588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468170, 34.822468, 36.254562>,  <40.111412, 34.653633, 36.319523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468170, 34.822468, 36.254562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323113, -0.845969, -0.424187,
		-0.316427, 0.325856, -0.890894,
		0.891892, 0.422083, -0.162399,
		40.735737, 34.949093, 36.205841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525486, 34.142433, 36.060856>,  <40.111412, 34.653633, 36.319523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525486, 34.142433, 36.060856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818771, 34.412750, 36.030655>,  <40.994743, 34.574940, 36.012535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818771, 34.412750, 36.030655>,  <40.525486, 34.142433, 36.060856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818771, 34.412750, 36.030655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671025, -0.737043, -0.080581,
		-0.110108, 0.008417, -0.993884,
		0.733214, 0.675793, -0.075507,
		41.038734, 34.615490, 36.008003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908867, 34.020821, 35.431633>,  <40.525486, 34.142433, 36.060856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908867, 34.020821, 35.431633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122883, 34.170937, 35.734390>,  <41.251293, 34.261005, 35.916046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122883, 34.170937, 35.734390>,  <40.908867, 34.020821, 35.431633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122883, 34.170937, 35.734390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598141, -0.800979, -0.025673,
		0.596621, 0.466465, -0.653034,
		0.535043, 0.375290, 0.756893,
		41.283394, 34.283524, 35.961456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601795, 34.084202, 35.207481>,  <40.908867, 34.020821, 35.431633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601795, 34.084202, 35.207481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625507, 34.077667, 35.606724>,  <41.639736, 34.073746, 35.846272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625507, 34.077667, 35.606724>,  <41.601795, 34.084202, 35.207481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625507, 34.077667, 35.606724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660983, -0.748631, -0.051508,
		0.748056, 0.662786, -0.033582,
		0.059280, -0.016333, 0.998108,
		41.643291, 34.072765, 35.906155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314175, 33.927498, 35.273220>,  <41.601795, 34.084202, 35.207481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314175, 33.927498, 35.273220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169395, 33.893784, 35.644573>,  <42.082527, 33.873554, 35.867386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169395, 33.893784, 35.644573>,  <42.314175, 33.927498, 35.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169395, 33.893784, 35.644573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683816, -0.700857, 0.202967,
		0.633555, 0.708305, 0.311306,
		-0.361944, -0.084285, 0.928382,
		42.060814, 33.868500, 35.923088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885326, 34.047318, 35.729153>,  <42.314175, 33.927498, 35.273220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885326, 34.047318, 35.729153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606480, 33.811863, 35.892876>,  <42.439171, 33.670589, 35.991112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606480, 33.811863, 35.892876>,  <42.885326, 34.047318, 35.729153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606480, 33.811863, 35.892876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676490, -0.729130, 0.103589,
		0.237465, 0.349109, 0.906495,
		-0.697116, -0.588637, 0.409311,
		42.397346, 33.635273, 36.015671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188530, 33.815594, 36.276833>,  <42.885326, 34.047318, 35.729153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188530, 33.815594, 36.276833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889347, 33.562077, 36.197971>,  <42.709839, 33.409966, 36.150654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889347, 33.562077, 36.197971>,  <43.188530, 33.815594, 36.276833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889347, 33.562077, 36.197971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604098, -0.773083, 0.193411,
		-0.274998, 0.025563, 0.961105,
		-0.747958, -0.633789, -0.197154,
		42.664959, 33.371941, 36.138824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285900, 33.256351, 36.736485>,  <43.188530, 33.815594, 36.276833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285900, 33.256351, 36.736485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031170, 33.081352, 36.482540>,  <42.878334, 32.976353, 36.330173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031170, 33.081352, 36.482540>,  <43.285900, 33.256351, 36.736485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031170, 33.081352, 36.482540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513125, -0.855072, 0.074536,
		-0.575464, -0.278299, 0.769019,
		-0.636824, -0.437496, -0.634865,
		42.840122, 32.950104, 36.292080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104324, 32.646957, 36.960373>,  <43.285900, 33.256351, 36.736485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104324, 32.646957, 36.960373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033836, 32.615192, 36.567917>,  <42.991543, 32.596134, 36.332443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033836, 32.615192, 36.567917>,  <43.104324, 32.646957, 36.960373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033836, 32.615192, 36.567917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530787, -0.847082, -0.026775,
		-0.828982, -0.525496, 0.191422,
		-0.176220, -0.079409, -0.981142,
		42.980972, 32.591370, 36.273575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082546, 31.968868, 36.859970>,  <43.104324, 32.646957, 36.960373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082546, 31.968868, 36.859970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160358, 32.106083, 36.492386>,  <43.207047, 32.188412, 36.271835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160358, 32.106083, 36.492386>,  <43.082546, 31.968868, 36.859970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160358, 32.106083, 36.492386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584040, -0.793194, -0.172455,
		-0.788070, -0.503159, -0.354650,
		0.194534, 0.343037, -0.918957,
		43.218719, 32.208996, 36.216698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895416, 31.338722, 36.552006>,  <43.082546, 31.968868, 36.859970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895416, 31.338722, 36.552006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029297, 31.285225, 36.925117>,  <43.109627, 31.253126, 37.148987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029297, 31.285225, 36.925117>,  <42.895416, 31.338722, 36.552006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029297, 31.285225, 36.925117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312896, 0.949488, 0.023867,
		-0.888859, 0.283876, 0.359645,
		0.334704, -0.133745, 0.932784,
		43.129707, 31.245102, 37.204952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555340, 31.459541, 36.337318>,  <42.895416, 31.338722, 36.552006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555340, 31.459541, 36.337318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500706, 31.414570, 35.943626>,  <43.467926, 31.387587, 35.707413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500706, 31.414570, 35.943626>,  <43.555340, 31.459541, 36.337318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500706, 31.414570, 35.943626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664812, 0.746978, 0.006932,
		0.734417, 0.655274, -0.176770,
		-0.136586, -0.112428, -0.984228,
		43.459728, 31.380842, 35.648357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840477, 32.060680, 35.939350>,  <43.555340, 31.459541, 36.337318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840477, 32.060680, 35.939350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507256, 31.868505, 35.829651>,  <43.307323, 31.753202, 35.763832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507256, 31.868505, 35.829651>,  <43.840477, 32.060680, 35.939350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507256, 31.868505, 35.829651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513563, 0.855910, 0.060587,
		0.205624, 0.191316, -0.959748,
		-0.833050, -0.480433, -0.274249,
		43.257339, 31.724375, 35.747375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385330, 32.448311, 35.496834>,  <43.840477, 32.060680, 35.939350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385330, 32.448311, 35.496834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139172, 32.218132, 35.712296>,  <42.991478, 32.080025, 35.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139172, 32.218132, 35.712296>,  <43.385330, 32.448311, 35.496834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139172, 32.218132, 35.712296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632153, 0.768520, 0.098792,
		-0.470818, -0.279717, -0.836713,
		-0.615396, -0.575444, 0.538657,
		42.954552, 32.045498, 35.873894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571655, 32.358765, 35.213051>,  <43.385330, 32.448311, 35.496834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571655, 32.358765, 35.213051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623123, 32.396843, 35.607895>,  <42.654003, 32.419689, 35.844799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623123, 32.396843, 35.607895>,  <42.571655, 32.358765, 35.213051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623123, 32.396843, 35.607895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660064, 0.751086, 0.013603,
		-0.740108, -0.653305, 0.159477,
		0.128668, 0.095198, 0.987108,
		42.661724, 32.425404, 35.904026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924591, 32.428860, 35.478394>,  <42.571655, 32.358765, 35.213051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924591, 32.428860, 35.478394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194813, 32.597397, 35.720413>,  <42.356945, 32.698521, 35.865627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194813, 32.597397, 35.720413>,  <41.924591, 32.428860, 35.478394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194813, 32.597397, 35.720413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590379, 0.800709, 0.101578,
		-0.441673, -0.425833, 0.789678,
		0.675557, 0.421345, 0.605054,
		42.397480, 32.723801, 35.901928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543427, 32.668350, 36.129570>,  <41.924591, 32.428860, 35.478394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543427, 32.668350, 36.129570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893414, 32.861107, 36.148342>,  <42.103409, 32.976761, 36.159607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893414, 32.861107, 36.148342>,  <41.543427, 32.668350, 36.129570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893414, 32.861107, 36.148342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477665, 0.843307, 0.246311,
		0.079120, -0.237932, 0.968054,
		0.874972, 0.481893, 0.046929,
		42.155907, 33.005676, 36.162422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497066, 32.962875, 36.748714>,  <41.543427, 32.668350, 36.129570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497066, 32.962875, 36.748714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766411, 33.179092, 36.546963>,  <41.928017, 33.308823, 36.425911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766411, 33.179092, 36.546963>,  <41.497066, 32.962875, 36.748714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766411, 33.179092, 36.546963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496158, 0.836178, 0.233737,
		0.548094, 0.092862, 0.831246,
		0.673364, 0.540539, -0.504379,
		41.968422, 33.341255, 36.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647652, 33.525951, 37.126595>,  <41.497066, 32.962875, 36.748714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647652, 33.525951, 37.126595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734840, 33.596897, 36.742714>,  <41.787155, 33.639465, 36.512386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734840, 33.596897, 36.742714>,  <41.647652, 33.525951, 37.126595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734840, 33.596897, 36.742714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380226, 0.921083, 0.083867,
		0.898840, 0.346623, 0.268213,
		0.217977, 0.177364, -0.959702,
		41.800232, 33.650108, 36.454803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697693, 34.195889, 37.233284>,  <41.647652, 33.525951, 37.126595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697693, 34.195889, 37.233284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698692, 34.150398, 36.835880>,  <41.699291, 34.123104, 36.597439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698692, 34.150398, 36.835880>,  <41.697693, 34.195889, 37.233284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698692, 34.150398, 36.835880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417045, 0.902871, -0.104394,
		0.908882, 0.414599, -0.045173,
		0.002496, -0.113721, -0.993510,
		41.699440, 34.116283, 36.537827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024059, 34.796135, 36.906178>,  <41.697693, 34.195889, 37.233284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024059, 34.796135, 36.906178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779957, 34.631477, 36.635433>,  <41.633495, 34.532681, 36.472988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779957, 34.631477, 36.635433>,  <42.024059, 34.796135, 36.906178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779957, 34.631477, 36.635433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365584, 0.904315, -0.220369,
		0.702806, 0.112966, -0.702355,
		-0.610256, -0.411647, -0.676856,
		41.596878, 34.507984, 36.432377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049454, 35.250267, 36.283577>,  <42.024059, 34.796135, 36.906178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049454, 35.250267, 36.283577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710114, 35.038586, 36.277325>,  <41.506508, 34.911579, 36.273575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710114, 35.038586, 36.277325>,  <42.049454, 35.250267, 36.283577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710114, 35.038586, 36.277325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493914, 0.801723, -0.336586,
		0.190649, -0.277825, -0.941523,
		-0.848353, -0.529201, -0.015626,
		41.455608, 34.879826, 36.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708138, 35.386875, 35.647781>,  <42.049454, 35.250267, 36.283577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708138, 35.386875, 35.647781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418709, 35.258076, 35.891998>,  <41.245052, 35.180798, 36.038528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418709, 35.258076, 35.891998>,  <41.708138, 35.386875, 35.647781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418709, 35.258076, 35.891998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612255, 0.707834, -0.352301,
		-0.318720, -0.628721, -0.709315,
		-0.723576, -0.321996, 0.610538,
		41.201637, 35.161476, 36.075161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084137, 35.317722, 35.222496>,  <41.708138, 35.386875, 35.647781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084137, 35.317722, 35.222496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915218, 35.347511, 35.583855>,  <40.813869, 35.365387, 35.800671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915218, 35.347511, 35.583855>,  <41.084137, 35.317722, 35.222496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915218, 35.347511, 35.583855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604516, 0.719492, -0.341895,
		-0.675448, -0.690496, -0.258814,
		-0.422292, 0.074475, 0.903395,
		40.788532, 35.369854, 35.854874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394581, 35.478870, 35.027950>,  <41.084137, 35.317722, 35.222496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394581, 35.478870, 35.027950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419571, 35.543064, 35.421974>,  <40.434563, 35.581581, 35.658390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419571, 35.543064, 35.421974>,  <40.394581, 35.478870, 35.027950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419571, 35.543064, 35.421974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640571, 0.763320, -0.083734,
		-0.765354, -0.625770, 0.150486,
		0.062471, 0.160483, 0.985060,
		40.438313, 35.591209, 35.717491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660248, 35.629288, 35.262951>,  <40.394581, 35.478870, 35.027950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660248, 35.629288, 35.262951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893967, 35.764183, 35.558212>,  <40.034199, 35.845119, 35.735367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893967, 35.764183, 35.558212>,  <39.660248, 35.629288, 35.262951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893967, 35.764183, 35.558212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576012, 0.813064, 0.084487,
		-0.571671, -0.474549, 0.669324,
		0.584297, 0.337240, 0.738151,
		40.069256, 35.865356, 35.779659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311192, 35.617519, 35.992069>,  <39.660248, 35.629288, 35.262951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311192, 35.617519, 35.992069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577953, 35.907551, 35.923382>,  <39.738010, 36.081570, 35.882168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577953, 35.907551, 35.923382>,  <39.311192, 35.617519, 35.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577953, 35.907551, 35.923382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745031, 0.652794, -0.137076,
		0.012708, 0.219356, 0.975562,
		0.666909, 0.725082, -0.171723,
		39.778027, 36.125076, 35.871864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107285, 36.174015, 36.501858>,  <39.311192, 35.617519, 35.992069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107285, 36.174015, 36.501858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476059, 36.281986, 36.390736>,  <39.697323, 36.346771, 36.324062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476059, 36.281986, 36.390736>,  <39.107285, 36.174015, 36.501858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476059, 36.281986, 36.390736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293202, 0.954986, -0.045107,
		0.253123, 0.123039, 0.959578,
		0.921934, 0.269932, -0.277804,
		39.752640, 36.362965, 36.307396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277309, 36.686119, 36.892738>,  <39.107285, 36.174015, 36.501858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277309, 36.686119, 36.892738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540417, 36.710022, 36.592400>,  <39.698280, 36.724365, 36.412197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540417, 36.710022, 36.592400>,  <39.277309, 36.686119, 36.892738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540417, 36.710022, 36.592400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093349, 0.995630, -0.002533,
		0.747410, 0.071757, 0.660477,
		0.657772, 0.059761, -0.750842,
		39.737747, 36.727951, 36.367146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419765, 37.295021, 37.035610>,  <39.277309, 36.686119, 36.892738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419765, 37.295021, 37.035610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608074, 37.247486, 36.685925>,  <39.721058, 37.218967, 36.476112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608074, 37.247486, 36.685925>,  <39.419765, 37.295021, 37.035610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608074, 37.247486, 36.685925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110192, 0.975208, -0.191902,
		0.875348, 0.186673, 0.446003,
		0.470769, -0.118835, -0.874217,
		39.749306, 37.211834, 36.423660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816471, 37.947311, 36.837826>,  <39.419765, 37.295021, 37.035610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816471, 37.947311, 36.837826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756535, 37.777130, 36.480831>,  <39.720573, 37.675022, 36.266636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756535, 37.777130, 36.480831>,  <39.816471, 37.947311, 36.837826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756535, 37.777130, 36.480831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294753, 0.880855, -0.370426,
		0.943752, 0.207558, -0.257393,
		-0.149841, -0.425457, -0.892487,
		39.711582, 37.649494, 36.213085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135105, 38.328247, 36.408859>,  <39.816471, 37.947311, 36.837826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135105, 38.328247, 36.408859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866096, 38.130280, 36.188759>,  <39.704693, 38.011501, 36.056698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866096, 38.130280, 36.188759>,  <40.135105, 38.328247, 36.408859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866096, 38.130280, 36.188759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297686, 0.861605, -0.411121,
		0.677570, -0.112684, -0.726775,
		-0.672519, -0.494914, -0.550253,
		39.664341, 37.981804, 36.023682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142944, 38.642185, 35.770424>,  <40.135105, 38.328247, 36.408859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142944, 38.642185, 35.770424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796673, 38.442791, 35.752048>,  <39.588909, 38.323154, 35.741024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796673, 38.442791, 35.752048>,  <40.142944, 38.642185, 35.770424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796673, 38.442791, 35.752048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433632, 0.792556, -0.428739,
		0.250126, -0.351232, -0.902259,
		-0.865679, -0.498487, -0.045934,
		39.536968, 38.293243, 35.738270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998974, 38.777740, 35.156185>,  <40.142944, 38.642185, 35.770424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998974, 38.777740, 35.156185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667496, 38.683029, 35.359043>,  <39.468609, 38.626202, 35.480759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667496, 38.683029, 35.359043>,  <39.998974, 38.777740, 35.156185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667496, 38.683029, 35.359043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399976, 0.884358, -0.240687,
		-0.391506, -0.402302, -0.827573,
		-0.828699, -0.236779, 0.507142,
		39.418884, 38.611996, 35.511185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346638, 38.723557, 34.691837>,  <39.998974, 38.777740, 35.156185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346638, 38.723557, 34.691837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242699, 38.809731, 35.068359>,  <39.180336, 38.861435, 35.294273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242699, 38.809731, 35.068359>,  <39.346638, 38.723557, 34.691837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242699, 38.809731, 35.068359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467783, 0.824699, -0.317883,
		-0.844782, -0.522931, -0.113519,
		-0.259850, 0.215439, 0.941310,
		39.164745, 38.874363, 35.350754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052952, 39.052269, 34.338619>,  <39.346638, 38.723557, 34.691837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052952, 39.052269, 34.338619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177151, 38.682789, 34.248840>,  <40.251671, 38.461102, 34.194973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177151, 38.682789, 34.248840>,  <40.052952, 39.052269, 34.338619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177151, 38.682789, 34.248840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065927, -0.214624, 0.974469,
		-0.948286, -0.317366, -0.005743,
		0.310496, -0.923696, -0.224448,
		40.270298, 38.405682, 34.181507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700127, 39.241459, 33.852280>,  <40.052952, 39.052269, 34.338619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700127, 39.241459, 33.852280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663097, 39.260403, 33.454449>,  <40.640881, 39.271770, 33.215752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663097, 39.260403, 33.454449>,  <40.700127, 39.241459, 33.852280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663097, 39.260403, 33.454449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902629, 0.417690, 0.103904,
		0.420347, 0.907354, 0.004085,
		-0.092571, 0.047364, -0.994579,
		40.635326, 39.274612, 33.156075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479687, 39.331577, 33.612648>,  <40.700127, 39.241459, 33.852280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479687, 39.331577, 33.612648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718609, 39.145950, 33.874294>,  <41.861961, 39.034573, 34.031281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718609, 39.145950, 33.874294>,  <41.479687, 39.331577, 33.612648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718609, 39.145950, 33.874294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608643, -0.268831, -0.746514,
		0.522280, 0.844020, 0.121878,
		0.597308, -0.464070, 0.654112,
		41.897800, 39.006729, 34.070526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085567, 39.214394, 33.242813>,  <41.479687, 39.331577, 33.612648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085567, 39.214394, 33.242813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186775, 39.019707, 33.577259>,  <42.247501, 38.902893, 33.777927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186775, 39.019707, 33.577259>,  <42.085567, 39.214394, 33.242813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186775, 39.019707, 33.577259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608932, -0.591452, -0.528570,
		0.751786, 0.642875, 0.146730,
		0.253020, -0.486720, 0.836113,
		42.262680, 38.873692, 33.828094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843502, 39.172531, 33.452065>,  <42.085567, 39.214394, 33.242813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843502, 39.172531, 33.452065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622372, 38.850452, 33.537891>,  <42.489693, 38.657204, 33.589386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622372, 38.850452, 33.537891>,  <42.843502, 39.172531, 33.452065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622372, 38.850452, 33.537891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524604, -0.536355, -0.661146,
		0.647438, -0.252935, 0.718921,
		-0.552824, -0.805200, 0.214566,
		42.456524, 38.608891, 33.602261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065311, 38.489841, 33.451046>,  <42.843502, 39.172531, 33.452065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065311, 38.489841, 33.451046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884617, 38.430733, 33.099113>,  <42.776199, 38.395267, 32.887955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884617, 38.430733, 33.099113>,  <43.065311, 38.489841, 33.451046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884617, 38.430733, 33.099113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606136, 0.774460, 0.181138,
		0.654627, 0.615123, -0.439417,
		-0.451734, -0.147768, -0.879830,
		42.749096, 38.386402, 32.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675468, 38.075436, 33.175377>,  <43.065311, 38.489841, 33.451046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675468, 38.075436, 33.175377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954826, 37.861889, 32.984703>,  <44.122440, 37.733761, 32.870300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954826, 37.861889, 32.984703>,  <43.675468, 38.075436, 33.175377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954826, 37.861889, 32.984703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052275, 0.702299, -0.709961,
		0.713797, 0.470918, 0.518393,
		0.698399, -0.533866, -0.476681,
		44.164345, 37.701729, 32.841698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424599, 38.462341, 33.198563>,  <43.675468, 38.075436, 33.175377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424599, 38.462341, 33.198563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325386, 38.232906, 32.886288>,  <44.265858, 38.095245, 32.698921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325386, 38.232906, 32.886288>,  <44.424599, 38.462341, 33.198563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325386, 38.232906, 32.886288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008156, 0.807078, -0.590388,
		0.968718, -0.140068, -0.204859,
		-0.248032, -0.573590, -0.780689,
		44.250977, 38.060829, 32.652081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875935, 38.420414, 32.570007>,  <44.424599, 38.462341, 33.198563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875935, 38.420414, 32.570007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487644, 38.378494, 32.483559>,  <44.254669, 38.353344, 32.431690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487644, 38.378494, 32.483559>,  <44.875935, 38.420414, 32.570007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487644, 38.378494, 32.483559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048301, 0.796244, -0.603044,
		0.235285, -0.595829, -0.767873,
		-0.970726, -0.104798, -0.216124,
		44.196426, 38.347054, 32.418720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623268, 38.172955, 32.712528>,  <44.875935, 38.420414, 32.570007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623268, 38.172955, 32.712528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584545, 38.247395, 33.103630>,  <45.561314, 38.292057, 33.338291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584545, 38.247395, 33.103630>,  <45.623268, 38.172955, 32.712528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584545, 38.247395, 33.103630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290938, -0.934167, 0.206609,
		0.951832, 0.304465, 0.036288,
		-0.096804, 0.186100, 0.977750,
		45.555504, 38.303226, 33.396954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.183586, 38.068111, 33.113384>,  <45.623268, 38.172955, 32.712528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.183586, 38.068111, 33.113384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837479, 37.976521, 33.291771>,  <45.629814, 37.921566, 33.398804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837479, 37.976521, 33.291771>,  <46.183586, 38.068111, 33.113384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837479, 37.976521, 33.291771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347358, -0.915272, 0.204007,
		0.361464, 0.331429, 0.871492,
		-0.865266, -0.228979, 0.445963,
		45.577900, 37.907825, 33.425560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255848, 38.001663, 33.891415>,  <46.183586, 38.068111, 33.113384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255848, 38.001663, 33.891415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977112, 37.762321, 33.733231>,  <45.809872, 37.618717, 33.638321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977112, 37.762321, 33.733231>,  <46.255848, 38.001663, 33.891415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977112, 37.762321, 33.733231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529855, -0.801082, 0.278428,
		-0.483395, -0.015518, 0.875265,
		-0.696838, -0.598354, -0.395461,
		45.768059, 37.582817, 33.614594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019382, 37.592957, 34.491421>,  <46.255848, 38.001663, 33.891415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019382, 37.592957, 34.491421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992622, 37.411995, 34.135700>,  <45.976566, 37.303417, 33.922268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992622, 37.411995, 34.135700>,  <46.019382, 37.592957, 34.491421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992622, 37.411995, 34.135700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433496, -0.815959, 0.382481,
		-0.898669, -0.359919, 0.250706,
		-0.066903, -0.452404, -0.889300,
		45.972553, 37.276276, 33.868912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592861, 36.984280, 34.416710>,  <46.019382, 37.592957, 34.491421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592861, 36.984280, 34.416710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904144, 36.984039, 34.165504>,  <46.090912, 36.983894, 34.014782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904144, 36.984039, 34.165504>,  <45.592861, 36.984280, 34.416710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904144, 36.984039, 34.165504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377179, -0.799110, 0.468145,
		-0.502130, -0.601185, -0.621645,
		0.778204, -0.000598, -0.628012,
		46.137604, 36.983860, 33.977100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722256, 36.302650, 34.073040>,  <45.592861, 36.984280, 34.416710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722256, 36.302650, 34.073040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063095, 36.510761, 34.095810>,  <46.267597, 36.635628, 34.109470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063095, 36.510761, 34.095810>,  <45.722256, 36.302650, 34.073040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063095, 36.510761, 34.095810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491733, -0.833075, 0.253345,
		0.179232, -0.187883, -0.965700,
		0.852100, 0.520274, 0.056925,
		46.318726, 36.666843, 34.112888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202168, 35.832798, 33.836678>,  <45.722256, 36.302650, 34.073040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202168, 35.832798, 33.836678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392750, 36.116692, 34.044243>,  <46.507099, 36.287025, 34.168781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392750, 36.116692, 34.044243>,  <46.202168, 35.832798, 33.836678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392750, 36.116692, 34.044243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725257, -0.650904, 0.224338,
		0.496981, 0.269457, -0.824865,
		0.476459, 0.709730, 0.518912,
		46.535686, 36.329609, 34.199917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933388, 35.841801, 33.496994>,  <46.202168, 35.832798, 33.836678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933388, 35.841801, 33.496994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911888, 35.925915, 33.887459>,  <46.898987, 35.976383, 34.121738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911888, 35.925915, 33.887459>,  <46.933388, 35.841801, 33.496994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911888, 35.925915, 33.887459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562699, -0.801203, 0.203577,
		0.824913, 0.560227, -0.075263,
		-0.053749, 0.210284, 0.976162,
		46.895763, 35.988998, 34.180305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517979, 35.784603, 33.755432>,  <46.933388, 35.841801, 33.496994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517979, 35.784603, 33.755432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262760, 35.727184, 34.058033>,  <47.109631, 35.692734, 34.239594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262760, 35.727184, 34.058033>,  <47.517979, 35.784603, 33.755432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262760, 35.727184, 34.058033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604489, -0.701954, 0.376635,
		0.476963, 0.697606, 0.534651,
		-0.638044, -0.143550, 0.756501,
		47.071346, 35.684120, 34.284985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.937275, 35.895615, 34.424908>,  <47.517979, 35.784603, 33.755432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.937275, 35.895615, 34.424908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616737, 35.656334, 34.425060>,  <47.424416, 35.512764, 34.425152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616737, 35.656334, 34.425060>,  <47.937275, 35.895615, 34.424908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616737, 35.656334, 34.425060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560416, -0.750498, 0.350267,
		-0.209249, 0.280895, 0.936650,
		-0.801342, -0.598206, 0.000377,
		47.376335, 35.476871, 34.425175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.993324, 35.493015, 35.051094>,  <47.937275, 35.895615, 34.424908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.993324, 35.493015, 35.051094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718575, 35.299797, 34.833885>,  <47.553726, 35.183865, 34.703560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718575, 35.299797, 34.833885>,  <47.993324, 35.493015, 35.051094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718575, 35.299797, 34.833885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352931, -0.874844, 0.331795,
		-0.635332, 0.036252, 0.771388,
		-0.686872, -0.483046, -0.543022,
		47.512512, 35.154884, 34.670979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.753815, 35.132454, 35.524513>,  <47.993324, 35.493015, 35.051094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.753815, 35.132454, 35.524513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666012, 34.955288, 35.176804>,  <47.613331, 34.848988, 34.968178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666012, 34.955288, 35.176804>,  <47.753815, 35.132454, 35.524513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666012, 34.955288, 35.176804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186326, -0.893641, 0.408275,
		-0.957653, -0.072350, 0.278688,
		-0.219508, -0.442912, -0.869278,
		47.600159, 34.822414, 34.916019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.138161, 39.753689, 26.445898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793858, 39.565464, 26.523529>,  <32.587276, 39.452530, 26.570108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793858, 39.565464, 26.523529>,  <33.138161, 39.753689, 26.445898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793858, 39.565464, 26.523529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447182, -0.516934, 0.729936,
		-0.243157, 0.715086, 0.655383,
		-0.860757, -0.470565, 0.194077,
		32.535629, 39.424294, 26.581753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259045, 39.572971, 27.180702>,  <33.138161, 39.753689, 26.445898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259045, 39.572971, 27.180702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924244, 39.361496, 27.124249>,  <32.723362, 39.234612, 27.090376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924244, 39.361496, 27.124249>,  <33.259045, 39.572971, 27.180702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924244, 39.361496, 27.124249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240472, -0.587063, 0.773001,
		-0.491530, 0.613064, 0.618507,
		-0.837001, -0.528687, -0.141134,
		32.673145, 39.202888, 27.081909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916363, 39.474953, 27.830332>,  <33.259045, 39.572971, 27.180702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916363, 39.474953, 27.830332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800652, 39.167686, 27.601864>,  <32.731224, 38.983326, 27.464783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800652, 39.167686, 27.601864>,  <32.916363, 39.474953, 27.830332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800652, 39.167686, 27.601864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208561, -0.632923, 0.745594,
		-0.934250, 0.096558, 0.343299,
		-0.289275, -0.768170, -0.571170,
		32.713871, 38.937237, 27.430513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404568, 39.098602, 28.244072>,  <32.916363, 39.474953, 27.830332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404568, 39.098602, 28.244072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546291, 38.874413, 27.944649>,  <32.631325, 38.739899, 27.764996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546291, 38.874413, 27.944649>,  <32.404568, 39.098602, 28.244072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546291, 38.874413, 27.944649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430903, -0.612582, 0.662620,
		-0.829931, -0.557329, 0.024464,
		0.354311, -0.560470, -0.748556,
		32.652584, 38.706272, 27.720081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977650, 38.457924, 28.390238>,  <32.404568, 39.098602, 28.244072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977650, 38.457924, 28.390238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.301117, 38.383392, 28.167048>,  <32.495197, 38.338673, 28.033134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.301117, 38.383392, 28.167048>,  <31.977650, 38.457924, 28.390238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301117, 38.383392, 28.167048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348142, -0.612983, 0.709259,
		-0.474184, -0.767811, -0.430832,
		0.808670, -0.186328, -0.557974,
		32.543716, 38.327492, 27.999655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973049, 37.724968, 28.340918>,  <31.977650, 38.457924, 28.390238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973049, 37.724968, 28.340918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.344616, 37.841702, 28.249750>,  <32.567554, 37.911743, 28.195049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.344616, 37.841702, 28.249750>,  <31.973049, 37.724968, 28.340918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344616, 37.841702, 28.249750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369671, -0.695296, 0.616366,
		0.021405, -0.656808, -0.753754,
		0.928916, 0.291834, -0.227920,
		32.623291, 37.929253, 28.181374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353073, 37.134037, 28.462246>,  <31.973049, 37.724968, 28.340918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353073, 37.134037, 28.462246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.645195, 37.405487, 28.430960>,  <32.820469, 37.568359, 28.412188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.645195, 37.405487, 28.430960>,  <32.353073, 37.134037, 28.462246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645195, 37.405487, 28.430960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593029, -0.572985, 0.565689,
		0.339075, -0.459510, -0.820901,
		0.730304, 0.678630, -0.078218,
		32.864285, 37.609077, 28.407494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897411, 36.665459, 28.385958>,  <32.353073, 37.134037, 28.462246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897411, 36.665459, 28.385958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030903, 37.016102, 28.524624>,  <33.110996, 37.226490, 28.607822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030903, 37.016102, 28.524624>,  <32.897411, 36.665459, 28.385958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030903, 37.016102, 28.524624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598211, -0.481153, 0.640809,
		0.728539, -0.006478, -0.684974,
		0.333728, 0.876613, 0.346664,
		33.131020, 37.279087, 28.628622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584316, 36.520805, 28.553972>,  <32.897411, 36.665459, 28.385958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584316, 36.520805, 28.553972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558365, 36.864853, 28.756351>,  <33.542793, 37.071281, 28.877779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558365, 36.864853, 28.756351>,  <33.584316, 36.520805, 28.553972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558365, 36.864853, 28.756351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744999, -0.295574, 0.598008,
		0.663904, 0.415728, -0.621612,
		-0.064876, 0.860120, 0.505949,
		33.538902, 37.122890, 28.908136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284336, 36.857327, 28.667461>,  <33.584316, 36.520805, 28.553972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284336, 36.857327, 28.667461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042889, 37.025940, 28.938150>,  <33.898018, 37.127106, 29.100563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042889, 37.025940, 28.938150>,  <34.284336, 36.857327, 28.667461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042889, 37.025940, 28.938150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682365, -0.165831, 0.711953,
		0.412330, 0.891523, -0.187538,
		-0.603623, 0.421529, 0.676721,
		33.861801, 37.152397, 29.141167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757671, 37.209473, 29.027065>,  <34.284336, 36.857327, 28.667461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757671, 37.209473, 29.027065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437950, 37.173641, 29.264751>,  <34.246117, 37.152142, 29.407364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437950, 37.173641, 29.264751>,  <34.757671, 37.209473, 29.027065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437950, 37.173641, 29.264751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600908, -0.110487, 0.791645,
		-0.005264, 0.989832, 0.142143,
		-0.799301, -0.089582, 0.594216,
		34.198158, 37.146767, 29.443016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964573, 37.586864, 29.625750>,  <34.757671, 37.209473, 29.027065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964573, 37.586864, 29.625750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.672325, 37.342327, 29.747370>,  <34.496975, 37.195602, 29.820341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.672325, 37.342327, 29.747370>,  <34.964573, 37.586864, 29.625750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672325, 37.342327, 29.747370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445286, -0.089052, 0.890949,
		-0.517602, 0.786336, 0.337288,
		-0.730622, -0.611347, 0.304051,
		34.453140, 37.158924, 29.838585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561462, 37.916939, 30.197552>,  <34.964573, 37.586864, 29.625750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561462, 37.916939, 30.197552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525208, 37.518826, 30.211403>,  <34.503456, 37.279957, 30.219713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525208, 37.518826, 30.211403>,  <34.561462, 37.916939, 30.197552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525208, 37.518826, 30.211403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442226, -0.009070, 0.896858,
		-0.892312, 0.096600, 0.440962,
		-0.090636, -0.995282, 0.034626,
		34.498016, 37.220242, 30.221790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586250, 37.833527, 30.827837>,  <34.561462, 37.916939, 30.197552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586250, 37.833527, 30.827837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666866, 37.473724, 30.672783>,  <34.715237, 37.257843, 30.579750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666866, 37.473724, 30.672783>,  <34.586250, 37.833527, 30.827837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666866, 37.473724, 30.672783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534716, -0.230540, 0.812976,
		-0.820646, -0.371123, 0.434520,
		0.201540, -0.899510, -0.387637,
		34.727329, 37.203873, 30.556492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572636, 37.443516, 31.446980>,  <34.586250, 37.833527, 30.827837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572636, 37.443516, 31.446980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.741825, 37.219494, 31.162043>,  <34.843338, 37.085079, 30.991081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.741825, 37.219494, 31.162043>,  <34.572636, 37.443516, 31.446980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741825, 37.219494, 31.162043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580571, -0.436080, 0.687584,
		-0.695725, -0.704393, 0.140703,
		0.422972, -0.560057, -0.712342,
		34.868717, 37.051476, 30.948339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512100, 36.714008, 31.682934>,  <34.572636, 37.443516, 31.446980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512100, 36.714008, 31.682934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.806149, 36.718403, 31.411795>,  <34.982578, 36.721039, 31.249111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.806149, 36.718403, 31.411795>,  <34.512100, 36.714008, 31.682934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806149, 36.718403, 31.411795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659188, -0.245091, 0.710916,
		-0.158325, -0.969438, -0.187412,
		0.735122, 0.010984, -0.677846,
		35.026684, 36.721699, 31.208441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846340, 36.189480, 31.927395>,  <34.512100, 36.714008, 31.682934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846340, 36.189480, 31.927395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103321, 36.377861, 31.685581>,  <35.257511, 36.490891, 31.540493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103321, 36.377861, 31.685581>,  <34.846340, 36.189480, 31.927395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103321, 36.377861, 31.685581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751759, -0.234240, 0.616434,
		0.148704, -0.850493, -0.504529,
		0.642453, 0.470950, -0.604533,
		35.296059, 36.519146, 31.504221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441708, 35.704815, 31.784157>,  <34.846340, 36.189480, 31.927395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441708, 35.704815, 31.784157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529881, 36.094181, 31.759270>,  <35.582783, 36.327801, 31.744337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529881, 36.094181, 31.759270>,  <35.441708, 35.704815, 31.784157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529881, 36.094181, 31.759270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644050, -0.097346, 0.758764,
		0.732536, -0.207328, -0.648387,
		0.220431, 0.973416, -0.062220,
		35.596008, 36.386208, 31.740604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242970, 35.703949, 31.825258>,  <35.441708, 35.704815, 31.784157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242970, 35.703949, 31.825258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103882, 36.071239, 31.901102>,  <36.020428, 36.291615, 31.946609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103882, 36.071239, 31.901102>,  <36.242970, 35.703949, 31.825258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103882, 36.071239, 31.901102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631055, 0.079631, 0.771640,
		0.693441, 0.387969, -0.607140,
		-0.347720, 0.918226, 0.189611,
		35.999565, 36.346706, 31.957985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840530, 36.148987, 31.967537>,  <36.242970, 35.703949, 31.825258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840530, 36.148987, 31.967537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554222, 36.369953, 32.138420>,  <36.382439, 36.502533, 32.240952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554222, 36.369953, 32.138420>,  <36.840530, 36.148987, 31.967537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554222, 36.369953, 32.138420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581827, 0.133429, 0.802293,
		0.386199, 0.822819, -0.416916,
		-0.715771, 0.552417, 0.427208,
		36.339489, 36.535679, 32.266582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180084, 36.678661, 32.225319>,  <36.840530, 36.148987, 31.967537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180084, 36.678661, 32.225319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832401, 36.703327, 32.421558>,  <36.623791, 36.718128, 32.539303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832401, 36.703327, 32.421558>,  <37.180084, 36.678661, 32.225319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832401, 36.703327, 32.421558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491594, 0.214382, 0.844024,
		-0.053128, 0.974801, -0.216656,
		-0.869203, 0.061666, 0.490596,
		36.571640, 36.721828, 32.568737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083961, 37.449570, 32.483299>,  <37.180084, 36.678661, 32.225319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083961, 37.449570, 32.483299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881683, 37.187393, 32.707680>,  <36.760315, 37.030087, 32.842308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881683, 37.187393, 32.707680>,  <37.083961, 37.449570, 32.483299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881683, 37.187393, 32.707680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525046, 0.282111, 0.802957,
		-0.684542, 0.700579, 0.201474,
		-0.505697, -0.655441, 0.560953,
		36.729973, 36.990761, 32.875965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364975, 38.065422, 32.850349>,  <37.083961, 37.449570, 32.483299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364975, 38.065422, 32.850349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742493, 38.188705, 32.898117>,  <37.969002, 38.262676, 32.926777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742493, 38.188705, 32.898117>,  <37.364975, 38.065422, 32.850349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742493, 38.188705, 32.898117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127058, 0.671821, -0.729734,
		-0.305139, 0.673546, 0.673221,
		0.943794, 0.308208, 0.119419,
		38.025631, 38.281166, 32.933945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321129, 38.767673, 32.803036>,  <37.364975, 38.065422, 32.850349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321129, 38.767673, 32.803036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700218, 38.660126, 32.734306>,  <37.927673, 38.595596, 32.693069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700218, 38.660126, 32.734306>,  <37.321129, 38.767673, 32.803036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700218, 38.660126, 32.734306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025150, 0.599758, -0.799786,
		0.318090, 0.753658, 0.575169,
		0.947727, -0.268870, -0.171822,
		37.984535, 38.579464, 32.682758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499607, 39.317062, 32.524204>,  <37.321129, 38.767673, 32.803036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499607, 39.317062, 32.524204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771996, 39.039959, 32.429241>,  <37.935429, 38.873695, 32.372265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771996, 39.039959, 32.429241>,  <37.499607, 39.317062, 32.524204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771996, 39.039959, 32.429241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125165, 0.429521, -0.894341,
		0.721531, 0.579309, 0.379202,
		0.680975, -0.692757, -0.237403,
		37.976288, 38.832130, 32.358021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194515, 39.591969, 32.510838>,  <37.499607, 39.317062, 32.524204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194515, 39.591969, 32.510838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154076, 39.275646, 32.269375>,  <38.129810, 39.085854, 32.124496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154076, 39.275646, 32.269375>,  <38.194515, 39.591969, 32.510838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154076, 39.275646, 32.269375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100848, 0.595498, -0.797002,
		0.989752, -0.141455, 0.019547,
		-0.101100, -0.790805, -0.603661,
		38.123745, 39.038406, 32.088276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695316, 39.672886, 32.066334>,  <38.194515, 39.591969, 32.510838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695316, 39.672886, 32.066334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.458672, 39.403370, 31.889240>,  <38.316685, 39.241661, 31.782986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.458672, 39.403370, 31.889240>,  <38.695316, 39.672886, 32.066334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458672, 39.403370, 31.889240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001234, 0.548383, -0.836227,
		0.806226, -0.495263, -0.323595,
		-0.591606, -0.673788, -0.442731,
		38.281189, 39.201233, 31.756420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963974, 39.601242, 31.370708>,  <38.695316, 39.672886, 32.066334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963974, 39.601242, 31.370708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593746, 39.455231, 31.330553>,  <38.371609, 39.367622, 31.306459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593746, 39.455231, 31.330553>,  <38.963974, 39.601242, 31.370708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593746, 39.455231, 31.330553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094036, 0.478530, -0.873021,
		0.366717, -0.798600, -0.477238,
		-0.925568, -0.365030, -0.100388,
		38.316074, 39.345722, 31.300436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954067, 39.273708, 30.670380>,  <38.963974, 39.601242, 31.370708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954067, 39.273708, 30.670380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570461, 39.297626, 30.781162>,  <38.340298, 39.311977, 30.847631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570461, 39.297626, 30.781162>,  <38.954067, 39.273708, 30.670380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570461, 39.297626, 30.781162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244658, 0.318265, -0.915887,
		-0.142913, -0.946114, -0.290593,
		-0.959019, 0.059796, 0.276959,
		38.282757, 39.315563, 30.864250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505489, 38.912376, 30.202702>,  <38.954067, 39.273708, 30.670380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505489, 38.912376, 30.202702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244720, 39.164948, 30.370653>,  <38.088257, 39.316490, 30.471424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244720, 39.164948, 30.370653>,  <38.505489, 38.912376, 30.202702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244720, 39.164948, 30.370653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308354, 0.285119, -0.907538,
		-0.692757, -0.721117, 0.008826,
		-0.651925, 0.631425, 0.419877,
		38.049145, 39.354374, 30.496616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947727, 38.846710, 29.800127>,  <38.505489, 38.912376, 30.202702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947727, 38.846710, 29.800127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870903, 39.192959, 29.985086>,  <37.824810, 39.400707, 30.096062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870903, 39.192959, 29.985086>,  <37.947727, 38.846710, 29.800127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870903, 39.192959, 29.985086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365407, 0.374218, -0.852314,
		-0.910819, -0.332657, 0.244433,
		-0.192056, 0.865621, 0.462400,
		37.813286, 39.452644, 30.123806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153267, 38.974014, 29.613186>,  <37.947727, 38.846710, 29.800127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153267, 38.974014, 29.613186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334759, 39.303806, 29.748455>,  <37.443653, 39.501682, 29.829617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334759, 39.303806, 29.748455>,  <37.153267, 38.974014, 29.613186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334759, 39.303806, 29.748455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301630, 0.499173, -0.812309,
		-0.838539, 0.266567, 0.475178,
		0.453731, 0.824480, 0.338171,
		37.470879, 39.551151, 29.849907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658302, 39.397202, 29.573996>,  <37.153267, 38.974014, 29.613186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658302, 39.397202, 29.573996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980625, 39.633926, 29.582396>,  <37.174019, 39.775963, 29.587437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980625, 39.633926, 29.582396>,  <36.658302, 39.397202, 29.573996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980625, 39.633926, 29.582396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373026, 0.534812, -0.758174,
		-0.459928, 0.603105, 0.651713,
		0.805803, 0.591812, 0.021001,
		37.222366, 39.811470, 29.588696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347645, 40.047443, 29.587767>,  <36.658302, 39.397202, 29.573996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347645, 40.047443, 29.587767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719494, 40.106117, 29.452541>,  <36.942604, 40.141323, 29.371407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719494, 40.106117, 29.452541>,  <36.347645, 40.047443, 29.587767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719494, 40.106117, 29.452541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361968, 0.535632, -0.762940,
		0.069164, 0.831613, 0.551032,
		0.929621, 0.146688, -0.338064,
		36.998379, 40.150124, 29.351122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465126, 40.838974, 29.443445>,  <36.347645, 40.047443, 29.587767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465126, 40.838974, 29.443445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716984, 40.607605, 29.235994>,  <36.868099, 40.468784, 29.111523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716984, 40.607605, 29.235994>,  <36.465126, 40.838974, 29.443445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716984, 40.607605, 29.235994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329154, 0.406074, -0.852503,
		0.703712, 0.707479, 0.065290,
		0.629641, -0.578426, -0.518629,
		36.905876, 40.434078, 29.080406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834576, 41.383865, 28.927046>,  <36.465126, 40.838974, 29.443445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834576, 41.383865, 28.927046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850357, 41.014397, 28.774582>,  <36.859825, 40.792717, 28.683104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850357, 41.014397, 28.774582>,  <36.834576, 41.383865, 28.927046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850357, 41.014397, 28.774582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317352, 0.350124, -0.881306,
		0.947487, 0.155730, -0.279315,
		0.039451, -0.923667, -0.381159,
		36.862194, 40.737297, 28.660234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406605, 41.361923, 28.416838>,  <36.834576, 41.383865, 28.927046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406605, 41.361923, 28.416838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135201, 41.075867, 28.349669>,  <36.972359, 40.904232, 28.309366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135201, 41.075867, 28.349669>,  <37.406605, 41.361923, 28.416838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135201, 41.075867, 28.349669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269282, 0.454823, -0.848896,
		0.683454, -0.530766, -0.501177,
		-0.678511, -0.715139, -0.167924,
		36.931648, 40.861324, 28.299292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383644, 41.379292, 27.706825>,  <37.406605, 41.361923, 28.416838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383644, 41.379292, 27.706825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067825, 41.142891, 27.772961>,  <36.878334, 41.001049, 27.812641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067825, 41.142891, 27.772961>,  <37.383644, 41.379292, 27.706825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067825, 41.142891, 27.772961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425133, 0.332433, -0.841873,
		0.442587, -0.734985, -0.513725,
		-0.789544, -0.591004, 0.165336,
		36.830963, 40.965591, 27.822561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341560, 41.083511, 27.034767>,  <37.383644, 41.379292, 27.706825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341560, 41.083511, 27.034767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988503, 41.035900, 27.216658>,  <36.776669, 41.007336, 27.325792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988503, 41.035900, 27.216658>,  <37.341560, 41.083511, 27.034767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988503, 41.035900, 27.216658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469645, 0.263187, -0.842714,
		-0.019374, -0.957374, -0.288200,
		-0.882643, -0.119025, 0.454724,
		36.723709, 41.000191, 27.353075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886597, 40.710018, 26.676937>,  <37.341560, 41.083511, 27.034767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886597, 40.710018, 26.676937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664410, 40.944584, 26.912760>,  <36.531097, 41.085323, 27.054253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664410, 40.944584, 26.912760>,  <36.886597, 40.710018, 26.676937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664410, 40.944584, 26.912760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476934, 0.356110, -0.803567,
		-0.681171, -0.727533, 0.081874,
		-0.555465, 0.586415, 0.589557,
		36.497768, 41.120510, 27.089626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.729458, 40.180786, 26.750450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744091, 40.561855, 26.871164>,  <35.752872, 40.790497, 26.943592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744091, 40.561855, 26.871164>,  <35.729458, 40.180786, 26.750450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744091, 40.561855, 26.871164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878330, 0.174694, -0.444993,
		-0.476653, -0.248785, 0.843154,
		0.036586, 0.952674, 0.301784,
		35.755066, 40.847656, 26.961699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107719, 40.285061, 26.845078>,  <35.729458, 40.180786, 26.750450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107719, 40.285061, 26.845078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243973, 40.660744, 26.862278>,  <35.325726, 40.886154, 26.872599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243973, 40.660744, 26.862278>,  <35.107719, 40.285061, 26.845078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243973, 40.660744, 26.862278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783096, 0.308733, -0.539856,
		-0.520314, 0.150223, 0.840658,
		0.340638, 0.939211, 0.042999,
		35.346165, 40.942509, 26.875177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706173, 40.787632, 27.204178>,  <35.107719, 40.285061, 26.845078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706173, 40.787632, 27.204178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.924984, 40.991360, 26.938438>,  <35.056271, 41.113598, 26.778996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.924984, 40.991360, 26.938438>,  <34.706173, 40.787632, 27.204178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924984, 40.991360, 26.938438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836157, 0.294477, -0.462736,
		-0.040046, 0.808627, 0.586956,
		0.547026, 0.509318, -0.664347,
		35.089092, 41.144154, 26.739134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398258, 41.441822, 27.153831>,  <34.706173, 40.787632, 27.204178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398258, 41.441822, 27.153831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604954, 41.443146, 26.811378>,  <34.728973, 41.443939, 26.605906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604954, 41.443146, 26.811378>,  <34.398258, 41.441822, 27.153831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604954, 41.443146, 26.811378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659861, 0.638684, -0.395810,
		0.545490, 0.769462, 0.332218,
		0.516743, 0.003307, -0.856134,
		34.759975, 41.444138, 26.554539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373032, 42.121853, 26.928383>,  <34.398258, 41.441822, 27.153831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373032, 42.121853, 26.928383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428905, 41.916973, 26.589411>,  <34.462429, 41.794044, 26.386028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428905, 41.916973, 26.589411>,  <34.373032, 42.121853, 26.928383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428905, 41.916973, 26.589411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686348, 0.566791, -0.455713,
		0.713732, 0.645291, -0.272372,
		0.139689, -0.512199, -0.847431,
		34.470814, 41.763313, 26.335182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156197, 42.576252, 26.438896>,  <34.373032, 42.121853, 26.928383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156197, 42.576252, 26.438896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197987, 42.249111, 26.212551>,  <34.223061, 42.052826, 26.076744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197987, 42.249111, 26.212551>,  <34.156197, 42.576252, 26.438896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197987, 42.249111, 26.212551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767065, 0.295881, -0.569268,
		0.633005, 0.493531, -0.596432,
		0.104478, -0.817852, -0.565864,
		34.229332, 42.003757, 26.042791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379501, 42.742275, 25.652872>,  <34.156197, 42.576252, 26.438896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379501, 42.742275, 25.652872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205784, 42.382637, 25.674875>,  <34.101555, 42.166855, 25.688078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205784, 42.382637, 25.674875>,  <34.379501, 42.742275, 25.652872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205784, 42.382637, 25.674875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738918, 0.320667, -0.592599,
		0.515161, -0.298007, -0.803618,
		-0.434292, -0.899091, 0.055007,
		34.075497, 42.112911, 25.691378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244892, 42.630371, 25.040472>,  <34.379501, 42.742275, 25.652872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244892, 42.630371, 25.040472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004532, 42.354679, 25.202396>,  <33.860313, 42.189262, 25.299551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004532, 42.354679, 25.202396>,  <34.244892, 42.630371, 25.040472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004532, 42.354679, 25.202396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606394, 0.063126, -0.792655,
		0.520770, -0.721784, -0.455880,
		-0.600903, -0.689234, 0.404812,
		33.824261, 42.147907, 25.323839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338757, 42.003876, 24.636362>,  <34.244892, 42.630371, 25.040472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338757, 42.003876, 24.636362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981487, 42.035233, 24.813496>,  <33.767128, 42.054047, 24.919775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981487, 42.035233, 24.813496>,  <34.338757, 42.003876, 24.636362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981487, 42.035233, 24.813496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449658, -0.171917, -0.876500,
		0.007420, -0.981987, 0.188801,
		-0.893170, 0.078392, 0.442834,
		33.713535, 42.058750, 24.946346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824192, 41.504208, 24.353333>,  <34.338757, 42.003876, 24.636362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824192, 41.504208, 24.353333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602779, 41.785767, 24.531378>,  <33.469933, 41.954704, 24.638205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602779, 41.785767, 24.531378>,  <33.824192, 41.504208, 24.353333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602779, 41.785767, 24.531378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696258, -0.097857, -0.711090,
		-0.456980, -0.703523, 0.544264,
		-0.553529, 0.703902, 0.445115,
		33.436722, 41.996937, 24.664913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204586, 41.284794, 24.094870>,  <33.824192, 41.504208, 24.353333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204586, 41.284794, 24.094870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.138287, 41.654945, 24.231220>,  <33.098507, 41.877037, 24.313030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.138287, 41.654945, 24.231220>,  <33.204586, 41.284794, 24.094870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138287, 41.654945, 24.231220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783523, 0.086327, -0.615336,
		-0.598847, -0.369077, 0.710749,
		-0.165750, 0.925381, 0.340877,
		33.088562, 41.932560, 24.333483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428524, 41.384335, 24.248705>,  <33.204586, 41.284794, 24.094870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428524, 41.384335, 24.248705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.587830, 41.747597, 24.197105>,  <32.683414, 41.965553, 24.166145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.587830, 41.747597, 24.197105>,  <32.428524, 41.384335, 24.248705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587830, 41.747597, 24.197105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684439, 0.200594, -0.700932,
		-0.610677, 0.367451, 0.701465,
		0.398268, 0.908153, -0.128999,
		32.707310, 42.020042, 24.158405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872936, 41.750687, 24.158060>,  <32.428524, 41.384335, 24.248705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872936, 41.750687, 24.158060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183784, 41.969650, 24.033848>,  <32.370293, 42.101028, 23.959320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183784, 41.969650, 24.033848>,  <31.872936, 41.750687, 24.158060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183784, 41.969650, 24.033848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561321, 0.379733, -0.735338,
		-0.284609, 0.745754, 0.602369,
		0.777120, 0.547406, -0.310532,
		32.416920, 42.133873, 23.940687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621828, 42.404877, 23.999081>,  <31.872936, 41.750687, 24.158060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621828, 42.404877, 23.999081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966698, 42.402138, 23.796455>,  <32.173618, 42.400494, 23.674879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966698, 42.402138, 23.796455>,  <31.621828, 42.404877, 23.999081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966698, 42.402138, 23.796455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411383, 0.574099, -0.707937,
		0.295667, 0.818758, 0.492156,
		0.862175, -0.006849, -0.506565,
		32.225349, 42.400082, 23.644485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753357, 43.143707, 23.788687>,  <31.621828, 42.404877, 23.999081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753357, 43.143707, 23.788687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934721, 42.877045, 23.552048>,  <32.043541, 42.717045, 23.410065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934721, 42.877045, 23.552048>,  <31.753357, 43.143707, 23.788687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934721, 42.877045, 23.552048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359504, 0.470569, -0.805805,
		0.815583, 0.578041, -0.026306,
		0.453410, -0.666658, -0.591596,
		32.070744, 42.677048, 23.374569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921499, 43.546547, 23.289965>,  <31.753357, 43.143707, 23.788687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921499, 43.546547, 23.289965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953745, 43.178177, 23.137444>,  <31.973091, 42.957153, 23.045931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953745, 43.178177, 23.137444>,  <31.921499, 43.546547, 23.289965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953745, 43.178177, 23.137444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251508, 0.351376, -0.901819,
		0.964492, 0.168599, -0.203296,
		0.080613, -0.920928, -0.381304,
		31.977928, 42.901897, 23.023052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179180, 43.704655, 22.625057>,  <31.921499, 43.546547, 23.289965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179180, 43.704655, 22.625057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.118820, 43.309570, 22.608789>,  <32.082603, 43.072521, 22.599030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.118820, 43.309570, 22.608789>,  <32.179180, 43.704655, 22.625057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118820, 43.309570, 22.608789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011157, 0.042840, -0.999020,
		0.988486, -0.150303, -0.017484,
		-0.150904, -0.987712, -0.040669,
		32.073547, 43.013256, 22.596588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624481, 43.390816, 22.194805>,  <32.179180, 43.704655, 22.625057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624481, 43.390816, 22.194805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300575, 43.156116, 22.195366>,  <32.106232, 43.015297, 22.195702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300575, 43.156116, 22.195366>,  <32.624481, 43.390816, 22.194805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300575, 43.156116, 22.195366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147093, 0.200691, -0.968549,
		0.568015, -0.784505, -0.248820,
		-0.809767, -0.586750, 0.001400,
		32.057644, 42.980091, 22.195786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536991, 43.330280, 21.481810>,  <32.624481, 43.390816, 22.194805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536991, 43.330280, 21.481810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.189606, 43.211208, 21.640377>,  <31.981173, 43.139763, 21.735518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.189606, 43.211208, 21.640377>,  <32.536991, 43.330280, 21.481810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189606, 43.211208, 21.640377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489693, 0.390557, -0.779529,
		0.077229, -0.871120, -0.484960,
		-0.868468, -0.297683, 0.396419,
		31.929066, 43.121902, 21.759302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221943, 42.762463, 21.091925>,  <32.536991, 43.330280, 21.481810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221943, 42.762463, 21.091925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952471, 42.982903, 21.288876>,  <31.790787, 43.115166, 21.407045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952471, 42.982903, 21.288876>,  <32.221943, 42.762463, 21.091925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952471, 42.982903, 21.288876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239266, 0.467720, -0.850876,
		-0.699214, -0.691031, -0.183236,
		-0.673685, 0.551103, 0.492377,
		31.750366, 43.148232, 21.436588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769354, 42.982437, 20.614210>,  <32.221943, 42.762463, 21.091925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769354, 42.982437, 20.614210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611309, 43.201122, 20.909504>,  <31.516481, 43.332333, 21.086679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611309, 43.201122, 20.909504>,  <31.769354, 42.982437, 20.614210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611309, 43.201122, 20.909504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437847, 0.594391, -0.674529,
		-0.807574, -0.589749, 0.004525,
		-0.395113, 0.546713, 0.738235,
		31.492775, 43.365135, 21.130974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029430, 43.047409, 20.572718>,  <31.769354, 42.982437, 20.614210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029430, 43.047409, 20.572718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113028, 43.371582, 20.791632>,  <31.163185, 43.566086, 20.922979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113028, 43.371582, 20.791632>,  <31.029430, 43.047409, 20.572718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113028, 43.371582, 20.791632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402923, 0.581293, -0.706931,
		-0.891053, -0.072770, 0.448029,
		0.208993, 0.810434, 0.547284,
		31.175726, 43.614712, 20.955816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381914, 42.889236, 20.337229>,  <31.029430, 43.047409, 20.572718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381914, 42.889236, 20.337229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366989, 42.871822, 20.736570>,  <30.358034, 42.861374, 20.976175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366989, 42.871822, 20.736570>,  <30.381914, 42.889236, 20.337229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366989, 42.871822, 20.736570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579922, -0.814555, -0.013843,
		0.813817, 0.578451, 0.055639,
		-0.037314, -0.043532, 0.998355,
		30.355795, 42.858765, 21.036077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713070, 42.810081, 20.640242>,  <30.381914, 42.889236, 20.337229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713070, 42.810081, 20.640242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316778, 42.863159, 20.628592>,  <29.079002, 42.895004, 20.621601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316778, 42.863159, 20.628592>,  <29.713070, 42.810081, 20.640242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316778, 42.863159, 20.628592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030057, -0.005026, 0.999536,
		0.132488, 0.991144, 0.008968,
		-0.990729, 0.132696, -0.029125,
		29.019560, 42.902969, 20.619854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602015, 43.242733, 21.117405>,  <29.713070, 42.810081, 20.640242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602015, 43.242733, 21.117405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.257998, 43.046364, 21.061802>,  <29.051588, 42.928543, 21.028440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.257998, 43.046364, 21.061802>,  <29.602015, 43.242733, 21.117405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257998, 43.046364, 21.061802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062852, -0.168431, 0.983708,
		-0.506339, 0.854765, 0.114002,
		-0.860041, -0.490925, -0.139007,
		28.999985, 42.899086, 21.020100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203913, 43.445446, 21.665150>,  <29.602015, 43.242733, 21.117405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203913, 43.445446, 21.665150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.977163, 43.146011, 21.527584>,  <28.841114, 42.966351, 21.445044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.977163, 43.146011, 21.527584>,  <29.203913, 43.445446, 21.665150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977163, 43.146011, 21.527584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191335, -0.286417, 0.938806,
		-0.801279, 0.597985, 0.019131,
		-0.566871, -0.748585, -0.343916,
		28.807102, 42.921436, 21.424410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491890, 43.517647, 22.010881>,  <29.203913, 43.445446, 21.665150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491890, 43.517647, 22.010881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.588280, 43.144146, 21.905020>,  <28.646114, 42.920048, 21.841503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.588280, 43.144146, 21.905020>,  <28.491890, 43.517647, 22.010881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588280, 43.144146, 21.905020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013528, -0.269434, 0.962924,
		-0.970437, -0.235622, -0.052296,
		0.240976, -0.933749, -0.264656,
		28.660572, 42.864021, 21.825623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068335, 43.177280, 22.437551>,  <28.491890, 43.517647, 22.010881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068335, 43.177280, 22.437551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.336893, 42.905945, 22.318161>,  <28.498028, 42.743145, 22.246527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.336893, 42.905945, 22.318161>,  <28.068335, 43.177280, 22.437551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336893, 42.905945, 22.318161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071515, -0.341565, 0.937134,
		-0.737638, -0.650535, -0.180815,
		0.671398, -0.678335, -0.298474,
		28.538313, 42.702446, 22.228619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809662, 42.521179, 22.745384>,  <28.068335, 43.177280, 22.437551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809662, 42.521179, 22.745384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.202362, 42.506966, 22.670650>,  <28.437983, 42.498436, 22.625811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.202362, 42.506966, 22.670650>,  <27.809662, 42.521179, 22.745384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202362, 42.506966, 22.670650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148192, -0.472773, 0.868634,
		-0.119199, -0.880467, -0.458878,
		0.981749, -0.035538, -0.186832,
		28.496887, 42.496304, 22.614601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913710, 41.892063, 23.065731>,  <27.809662, 42.521179, 22.745384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913710, 41.892063, 23.065731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.287453, 42.027370, 23.020926>,  <28.511700, 42.108555, 22.994041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.287453, 42.027370, 23.020926>,  <27.913710, 41.892063, 23.065731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287453, 42.027370, 23.020926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299450, -0.575012, 0.761375,
		0.193141, -0.744939, -0.638562,
		0.934359, 0.338270, -0.112013,
		28.567760, 42.128853, 22.987322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509823, 41.267235, 22.907892>,  <27.913710, 41.892063, 23.065731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509823, 41.267235, 22.907892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668228, 41.592121, 23.079229>,  <28.763271, 41.787052, 23.182032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668228, 41.592121, 23.079229>,  <28.509823, 41.267235, 22.907892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668228, 41.592121, 23.079229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516352, -0.582713, 0.627556,
		0.759312, -0.027345, -0.650152,
		0.396012, 0.812218, 0.428341,
		28.787031, 41.835785, 23.207731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173798, 41.107544, 23.165163>,  <28.509823, 41.267235, 22.907892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173798, 41.107544, 23.165163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159922, 41.456089, 23.360929>,  <29.151596, 41.665215, 23.478390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159922, 41.456089, 23.360929>,  <29.173798, 41.107544, 23.165163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159922, 41.456089, 23.360929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510931, -0.405414, 0.758016,
		0.858921, 0.276354, -0.431141,
		-0.034690, 0.871360, 0.489417,
		29.149515, 41.717499, 23.507755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834936, 41.311176, 23.371305>,  <29.173798, 41.107544, 23.165163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834936, 41.311176, 23.371305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641184, 41.542843, 23.633585>,  <29.524933, 41.681843, 23.790953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641184, 41.542843, 23.633585>,  <29.834936, 41.311176, 23.371305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641184, 41.542843, 23.633585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686470, -0.213012, 0.695259,
		0.542342, 0.786888, -0.294401,
		-0.484380, 0.579166, 0.655700,
		29.495871, 41.716591, 23.830296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237570, 41.984745, 23.574247>,  <29.834936, 41.311176, 23.371305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237570, 41.984745, 23.574247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998405, 41.828995, 23.854502>,  <29.854906, 41.735546, 24.022654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998405, 41.828995, 23.854502>,  <30.237570, 41.984745, 23.574247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998405, 41.828995, 23.854502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799820, -0.232224, 0.553498,
		-0.052811, 0.891326, 0.450276,
		-0.597912, -0.389371, 0.700636,
		29.819033, 41.712185, 24.064693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548143, 42.359230, 24.223036>,  <30.237570, 41.984745, 23.574247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548143, 42.359230, 24.223036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.325371, 42.050003, 24.344492>,  <30.191708, 41.864468, 24.417366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.325371, 42.050003, 24.344492>,  <30.548143, 42.359230, 24.223036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325371, 42.050003, 24.344492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641464, -0.168130, 0.748502,
		-0.527590, 0.611639, 0.589531,
		-0.556931, -0.773065, 0.303641,
		30.158291, 41.818085, 24.435585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359102, 42.471455, 24.927917>,  <30.548143, 42.359230, 24.223036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359102, 42.471455, 24.927917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.359653, 42.073769, 24.884943>,  <30.359983, 41.835159, 24.859158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.359653, 42.073769, 24.884943>,  <30.359102, 42.471455, 24.927917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359653, 42.073769, 24.884943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668126, -0.079025, 0.739840,
		-0.744047, -0.072800, 0.664149,
		0.001377, -0.994211, -0.107438,
		30.360067, 41.775505, 24.852711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532244, 42.259071, 25.578472>,  <30.359102, 42.471455, 24.927917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532244, 42.259071, 25.578472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593479, 41.925510, 25.366371>,  <30.630220, 41.725372, 25.239111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593479, 41.925510, 25.366371>,  <30.532244, 42.259071, 25.578472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593479, 41.925510, 25.366371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697722, -0.288777, 0.655585,
		-0.699819, -0.470333, 0.537624,
		0.153089, -0.833903, -0.530253,
		30.639406, 41.675339, 25.207294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510523, 41.759407, 26.026119>,  <30.532244, 42.259071, 25.578472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510523, 41.759407, 26.026119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668026, 41.572376, 25.709557>,  <30.762527, 41.460155, 25.519619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668026, 41.572376, 25.709557>,  <30.510523, 41.759407, 26.026119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668026, 41.572376, 25.709557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581465, -0.540117, 0.608418,
		-0.711936, -0.699744, 0.059206,
		0.393759, -0.467580, -0.791405,
		30.786154, 41.432102, 25.472136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308361, 40.969044, 26.085726>,  <30.510523, 41.759407, 26.026119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308361, 40.969044, 26.085726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632666, 41.019306, 25.857035>,  <30.827250, 41.049465, 25.719820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632666, 41.019306, 25.857035>,  <30.308361, 40.969044, 26.085726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632666, 41.019306, 25.857035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459727, -0.741294, 0.489013,
		-0.362372, -0.659314, -0.658781,
		0.810763, 0.125655, -0.571728,
		30.875895, 41.057003, 25.685516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485495, 40.302494, 25.833443>,  <30.308361, 40.969044, 26.085726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485495, 40.302494, 25.833443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822140, 40.506935, 25.763622>,  <31.024126, 40.629601, 25.721729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822140, 40.506935, 25.763622>,  <30.485495, 40.302494, 25.833443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822140, 40.506935, 25.763622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539915, -0.804265, 0.248293,
		-0.013483, -0.303209, -0.952829,
		0.841612, 0.511098, -0.174551,
		31.074623, 40.660263, 25.711256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860060, 39.909889, 25.360531>,  <30.485495, 40.302494, 25.833443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860060, 39.909889, 25.360531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131676, 40.146446, 25.534500>,  <31.294645, 40.288380, 25.638882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131676, 40.146446, 25.534500>,  <30.860060, 39.909889, 25.360531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131676, 40.146446, 25.534500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550363, -0.802185, 0.231514,
		0.485804, 0.082157, -0.870198,
		0.679040, 0.591396, 0.434921,
		31.335388, 40.323864, 25.664976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428062, 39.525391, 25.225403>,  <30.860060, 39.909889, 25.360531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428062, 39.525391, 25.225403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550810, 39.768452, 25.518414>,  <31.624458, 39.914288, 25.694220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550810, 39.768452, 25.518414>,  <31.428062, 39.525391, 25.225403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550810, 39.768452, 25.518414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559499, -0.737800, 0.377641,
		0.769931, 0.293963, -0.566385,
		0.306867, 0.607649, 0.732527,
		31.642870, 39.950745, 25.738171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133556, 39.308964, 25.310715>,  <31.428062, 39.525391, 25.225403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133556, 39.308964, 25.310715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047012, 39.518929, 25.639994>,  <31.995085, 39.644909, 25.837561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047012, 39.518929, 25.639994>,  <32.133556, 39.308964, 25.310715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047012, 39.518929, 25.639994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613989, -0.582405, 0.532749,
		0.759081, 0.620701, -0.196281,
		-0.216363, 0.524914, 0.823197,
		31.982103, 39.676403, 25.886953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755268, 39.387356, 25.722084>,  <32.133556, 39.308964, 25.310715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755268, 39.387356, 25.722084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466045, 39.469334, 25.985962>,  <32.292511, 39.518520, 26.144289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466045, 39.469334, 25.985962>,  <32.755268, 39.387356, 25.722084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466045, 39.469334, 25.985962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462646, -0.565505, 0.682761,
		0.512984, 0.798877, 0.314075,
		-0.723053, 0.204940, 0.659692,
		32.249130, 39.530815, 26.183870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.179173, 40.081272, 28.778435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.822109, 40.157906, 28.941628>,  <37.607872, 40.203884, 29.039543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.822109, 40.157906, 28.941628>,  <38.179173, 40.081272, 28.778435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822109, 40.157906, 28.941628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322355, -0.361279, 0.874966,
		0.315025, 0.912564, 0.260742,
		-0.892663, 0.191584, 0.407981,
		37.554310, 40.215382, 29.064022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300892, 40.521267, 29.452621>,  <38.179173, 40.081272, 28.778435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300892, 40.521267, 29.452621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968147, 40.304565, 29.500820>,  <37.768501, 40.174545, 29.529739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968147, 40.304565, 29.500820>,  <38.300892, 40.521267, 29.452621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968147, 40.304565, 29.500820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320449, -0.291586, 0.901271,
		-0.453130, 0.788342, 0.416162,
		-0.831857, -0.541751, 0.120497,
		37.718590, 40.142040, 29.536968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097729, 40.659714, 30.144035>,  <38.300892, 40.521267, 29.452621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097729, 40.659714, 30.144035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879375, 40.334976, 30.061163>,  <37.748363, 40.140133, 30.011440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879375, 40.334976, 30.061163>,  <38.097729, 40.659714, 30.144035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879375, 40.334976, 30.061163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199338, -0.366013, 0.909010,
		-0.813802, 0.454917, 0.361632,
		-0.545886, -0.811841, -0.207180,
		37.715611, 40.091423, 29.999008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695602, 40.607018, 30.711828>,  <38.097729, 40.659714, 30.144035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695602, 40.607018, 30.711828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.700542, 40.253151, 30.525400>,  <37.703506, 40.040833, 30.413544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.700542, 40.253151, 30.525400>,  <37.695602, 40.607018, 30.711828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700542, 40.253151, 30.525400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055603, -0.464777, 0.883680,
		-0.998377, -0.036829, 0.043450,
		0.012350, -0.884662, -0.466070,
		37.704247, 39.987751, 30.385580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246246, 40.198444, 31.047655>,  <37.695602, 40.607018, 30.711828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246246, 40.198444, 31.047655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.490211, 39.942467, 30.860689>,  <37.636589, 39.788879, 30.748510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.490211, 39.942467, 30.860689>,  <37.246246, 40.198444, 31.047655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490211, 39.942467, 30.860689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128050, -0.502486, 0.855050,
		-0.782055, -0.581358, -0.224527,
		0.609913, -0.639945, -0.467415,
		37.673183, 39.750484, 30.720465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008499, 39.583950, 31.249531>,  <37.246246, 40.198444, 31.047655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008499, 39.583950, 31.249531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380920, 39.511593, 31.122774>,  <37.604374, 39.468178, 31.046721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380920, 39.511593, 31.122774>,  <37.008499, 39.583950, 31.249531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380920, 39.511593, 31.122774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159324, -0.579769, 0.799052,
		-0.328264, -0.794448, -0.510975,
		0.931053, -0.180890, -0.316891,
		37.660236, 39.457325, 31.027706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128460, 38.816673, 31.133165>,  <37.008499, 39.583950, 31.249531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128460, 38.816673, 31.133165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493416, 38.970440, 31.189404>,  <37.712391, 39.062698, 31.223146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493416, 38.970440, 31.189404>,  <37.128460, 38.816673, 31.133165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493416, 38.970440, 31.189404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150218, -0.633982, 0.758618,
		0.380760, -0.671036, -0.636186,
		0.912391, 0.384418, 0.140594,
		37.767132, 39.085766, 31.231581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640587, 38.352001, 30.996939>,  <37.128460, 38.816673, 31.133165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640587, 38.352001, 30.996939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829205, 38.610344, 31.237114>,  <37.942375, 38.765350, 31.381218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829205, 38.610344, 31.237114>,  <37.640587, 38.352001, 30.996939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829205, 38.610344, 31.237114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144376, -0.728240, 0.669942,
		0.869946, -0.229216, -0.436640,
		0.471540, 0.645853, 0.600436,
		37.970665, 38.804100, 31.417244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176212, 37.980862, 31.401533>,  <37.640587, 38.352001, 30.996939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176212, 37.980862, 31.401533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146057, 38.311058, 31.625278>,  <38.127964, 38.509174, 31.759525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146057, 38.311058, 31.625278>,  <38.176212, 37.980862, 31.401533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146057, 38.311058, 31.625278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157555, -0.544052, 0.824126,
		0.984628, 0.150259, -0.089045,
		-0.075388, 0.825487, 0.559363,
		38.123440, 38.558704, 31.793087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806950, 37.982845, 31.828611>,  <38.176212, 37.980862, 31.401533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806950, 37.982845, 31.828611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551319, 38.230869, 32.010647>,  <38.397942, 38.379684, 32.119869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551319, 38.230869, 32.010647>,  <38.806950, 37.982845, 31.828611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551319, 38.230869, 32.010647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200889, -0.436581, 0.876949,
		0.742445, 0.651861, 0.154446,
		-0.639077, 0.620060, 0.455089,
		38.359596, 38.416889, 32.147175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237713, 38.344593, 32.326786>,  <38.806950, 37.982845, 31.828611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237713, 38.344593, 32.326786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865131, 38.426968, 32.446770>,  <38.641582, 38.476391, 32.518761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865131, 38.426968, 32.446770>,  <39.237713, 38.344593, 32.326786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865131, 38.426968, 32.446770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189238, -0.429947, 0.882799,
		0.310765, 0.879055, 0.361508,
		-0.931458, 0.205932, 0.299963,
		38.585693, 38.488747, 32.536758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277718, 38.578285, 33.014156>,  <39.237713, 38.344593, 32.326786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277718, 38.578285, 33.014156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889408, 38.482620, 33.006100>,  <38.656422, 38.425220, 33.001266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889408, 38.482620, 33.006100>,  <39.277718, 38.578285, 33.014156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889408, 38.482620, 33.006100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112470, -0.527456, 0.842105,
		-0.212024, 0.815226, 0.538937,
		-0.970771, -0.239160, -0.020145,
		38.598175, 38.410873, 33.000057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374950, 38.160583, 33.533600>,  <39.277718, 38.578285, 33.014156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374950, 38.160583, 33.533600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985203, 38.118980, 33.453815>,  <38.751354, 38.094017, 33.405945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985203, 38.118980, 33.453815>,  <39.374950, 38.160583, 33.533600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985203, 38.118980, 33.453815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076540, -0.680500, 0.728739,
		-0.211529, 0.725329, 0.655099,
		-0.974370, -0.104008, -0.199462,
		38.692890, 38.087776, 33.393978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923882, 38.427628, 34.112320>,  <39.374950, 38.160583, 33.533600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923882, 38.427628, 34.112320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.827641, 38.111771, 33.886547>,  <38.769894, 37.922256, 33.751083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.827641, 38.111771, 33.886547>,  <38.923882, 38.427628, 34.112320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827641, 38.111771, 33.886547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000280, -0.581569, 0.813497,
		-0.970623, 0.195573, 0.140149,
		-0.240604, -0.789638, -0.564430,
		38.755459, 37.874878, 33.717216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669983, 38.997444, 34.504932>,  <38.923882, 38.427628, 34.112320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669983, 38.997444, 34.504932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728123, 39.095592, 34.888321>,  <38.763008, 39.154480, 35.118355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728123, 39.095592, 34.888321>,  <38.669983, 38.997444, 34.504932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728123, 39.095592, 34.888321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582186, 0.804496, -0.117664,
		-0.799958, -0.540906, 0.259784,
		0.145350, 0.245369, 0.958471,
		38.771729, 39.169205, 35.175861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078178, 39.039909, 34.766762>,  <38.669983, 38.997444, 34.504932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078178, 39.039909, 34.766762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338848, 39.268013, 34.966808>,  <38.495251, 39.404877, 35.086838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338848, 39.268013, 34.966808>,  <38.078178, 39.039909, 34.766762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338848, 39.268013, 34.966808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466063, 0.821251, -0.329138,
		-0.598418, -0.018596, 0.800968,
		0.651676, 0.570263, 0.500119,
		38.534351, 39.439091, 35.116844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555988, 39.586468, 35.039108>,  <38.078178, 39.039909, 34.766762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555988, 39.586468, 35.039108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925014, 39.736889, 35.073666>,  <38.146431, 39.827141, 35.094402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925014, 39.736889, 35.073666>,  <37.555988, 39.586468, 35.039108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925014, 39.736889, 35.073666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339052, 0.896975, -0.283690,
		-0.184176, 0.232429, 0.955016,
		0.922563, 0.376049, 0.086395,
		38.201782, 39.849705, 35.099583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424767, 40.223457, 35.327160>,  <37.555988, 39.586468, 35.039108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424767, 40.223457, 35.327160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790546, 40.258778, 35.169178>,  <38.010014, 40.279972, 35.074387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790546, 40.258778, 35.169178>,  <37.424767, 40.223457, 35.327160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790546, 40.258778, 35.169178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260439, 0.875384, -0.407276,
		0.309778, 0.475294, 0.823488,
		0.914445, 0.088303, -0.394959,
		38.064880, 40.285267, 35.050690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589550, 40.974792, 35.362576>,  <37.424767, 40.223457, 35.327160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589550, 40.974792, 35.362576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.854458, 40.842777, 35.093513>,  <38.013405, 40.763569, 34.932076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.854458, 40.842777, 35.093513>,  <37.589550, 40.974792, 35.362576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854458, 40.842777, 35.093513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331778, 0.675774, -0.658219,
		0.671801, 0.659095, 0.338049,
		0.662274, -0.330035, -0.672659,
		38.053139, 40.743767, 34.891716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952328, 41.519131, 35.022743>,  <37.589550, 40.974792, 35.362576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952328, 41.519131, 35.022743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009789, 41.217728, 34.766121>,  <38.044266, 41.036888, 34.612148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009789, 41.217728, 34.766121>,  <37.952328, 41.519131, 35.022743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009789, 41.217728, 34.766121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203247, 0.611998, -0.764297,
		0.968533, 0.240186, -0.065234,
		0.143650, -0.753505, -0.641557,
		38.052883, 40.991676, 34.573654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109158, 41.901402, 34.431816>,  <37.952328, 41.519131, 35.022743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109158, 41.901402, 34.431816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021103, 41.540154, 34.284351>,  <37.968269, 41.323402, 34.195873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021103, 41.540154, 34.284351>,  <38.109158, 41.901402, 34.431816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021103, 41.540154, 34.284351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310738, 0.423167, -0.851100,
		0.924651, -0.072804, -0.373790,
		-0.220139, -0.903122, -0.368659,
		37.955063, 41.269218, 34.173752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459938, 41.877106, 33.770317>,  <38.109158, 41.901402, 34.431816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459938, 41.877106, 33.770317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156208, 41.616844, 33.773560>,  <37.973969, 41.460686, 33.775505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156208, 41.616844, 33.773560>,  <38.459938, 41.877106, 33.770317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156208, 41.616844, 33.773560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393435, 0.449157, -0.802164,
		0.518297, -0.612292, -0.597049,
		-0.759327, -0.650659, 0.008101,
		37.928410, 41.421646, 33.775990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400166, 41.800304, 33.148109>,  <38.459938, 41.877106, 33.770317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400166, 41.800304, 33.148109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.049301, 41.666080, 33.285507>,  <37.838783, 41.585548, 33.367947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.049301, 41.666080, 33.285507>,  <38.400166, 41.800304, 33.148109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049301, 41.666080, 33.285507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464368, 0.410644, -0.784687,
		0.122254, -0.847805, -0.516023,
		-0.877164, -0.335555, 0.343491,
		37.786152, 41.565414, 33.388554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073341, 41.441845, 32.553387>,  <38.400166, 41.800304, 33.148109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073341, 41.441845, 32.553387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.765835, 41.526016, 32.794952>,  <37.581329, 41.576519, 32.939892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.765835, 41.526016, 32.794952>,  <38.073341, 41.441845, 32.553387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765835, 41.526016, 32.794952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498071, 0.395323, -0.771780,
		-0.401149, -0.894113, -0.199102,
		-0.768768, 0.210432, 0.603915,
		37.535206, 41.589146, 32.976128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595161, 41.493187, 32.075302>,  <38.073341, 41.441845, 32.553387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595161, 41.493187, 32.075302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404812, 41.639446, 32.395264>,  <37.290604, 41.727203, 32.587242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404812, 41.639446, 32.395264>,  <37.595161, 41.493187, 32.075302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404812, 41.639446, 32.395264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591073, 0.540524, -0.598721,
		-0.651288, -0.757717, -0.041096,
		-0.475874, 0.365649, 0.799903,
		37.262051, 41.749142, 32.635235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844097, 41.316936, 32.049118>,  <37.595161, 41.493187, 32.075302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844097, 41.316936, 32.049118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891148, 41.650002, 32.265575>,  <36.919380, 41.849842, 32.395451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891148, 41.650002, 32.265575>,  <36.844097, 41.316936, 32.049118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891148, 41.650002, 32.265575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498219, 0.520867, -0.693164,
		-0.859035, -0.188072, 0.476117,
		0.117629, 0.832662, 0.541144,
		36.926437, 41.899799, 32.427917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139061, 41.610920, 31.992886>,  <36.844097, 41.316936, 32.049118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139061, 41.610920, 31.992886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395336, 41.894794, 32.110096>,  <36.549103, 42.065117, 32.180420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395336, 41.894794, 32.110096>,  <36.139061, 41.610920, 31.992886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395336, 41.894794, 32.110096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226709, 0.539485, -0.810900,
		-0.733564, 0.453106, 0.506536,
		0.640692, 0.709683, 0.293024,
		36.587543, 42.107700, 32.198002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765907, 42.253998, 31.934782>,  <36.139061, 41.610920, 31.992886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765907, 42.253998, 31.934782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.161121, 42.314156, 31.921156>,  <36.398251, 42.350250, 31.912979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.161121, 42.314156, 31.921156>,  <35.765907, 42.253998, 31.934782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161121, 42.314156, 31.921156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123978, 0.643391, -0.755432,
		-0.091693, 0.750620, 0.654341,
		0.988039, 0.150392, -0.034066,
		36.457535, 42.359272, 31.910936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192532, 42.468910, 32.467892>,  <35.765907, 42.253998, 31.934782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192532, 42.468910, 32.467892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.802673, 42.391388, 32.512611>,  <34.568756, 42.344875, 32.539444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.802673, 42.391388, 32.512611>,  <35.192532, 42.468910, 32.467892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802673, 42.391388, 32.512611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223253, -0.809387, 0.543186,
		-0.014781, 0.554375, 0.832136,
		-0.974649, -0.193805, 0.111802,
		34.510281, 42.333248, 32.546150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010090, 42.522385, 33.060539>,  <35.192532, 42.468910, 32.467892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010090, 42.522385, 33.060539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723934, 42.277252, 32.926281>,  <34.552242, 42.130173, 32.845726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723934, 42.277252, 32.926281>,  <35.010090, 42.522385, 33.060539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723934, 42.277252, 32.926281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318656, -0.713650, 0.623828,
		-0.621838, 0.339322, 0.705818,
		-0.715385, -0.612833, -0.335648,
		34.509319, 42.093403, 32.825588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604042, 42.453548, 33.666927>,  <35.010090, 42.522385, 33.060539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604042, 42.453548, 33.666927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.529884, 42.151573, 33.415310>,  <34.485390, 41.970387, 33.264339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.529884, 42.151573, 33.415310>,  <34.604042, 42.453548, 33.666927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529884, 42.151573, 33.415310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077604, -0.649391, 0.756485,
		-0.979595, 0.091433, 0.178980,
		-0.185396, -0.754938, -0.629044,
		34.474266, 41.925091, 33.226597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053879, 42.063290, 33.977829>,  <34.604042, 42.453548, 33.666927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053879, 42.063290, 33.977829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.252918, 41.821812, 33.728687>,  <34.372341, 41.676926, 33.579201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.252918, 41.821812, 33.728687>,  <34.053879, 42.063290, 33.977829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252918, 41.821812, 33.728687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099227, -0.673738, 0.732279,
		-0.861715, -0.426182, -0.275346,
		0.497595, -0.603694, -0.622858,
		34.402195, 41.640705, 33.541828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736897, 41.527103, 34.063633>,  <34.053879, 42.063290, 33.977829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736897, 41.527103, 34.063633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.081219, 41.385941, 33.916950>,  <34.287811, 41.301243, 33.828941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.081219, 41.385941, 33.916950>,  <33.736897, 41.527103, 34.063633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081219, 41.385941, 33.916950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008759, -0.710161, 0.703985,
		-0.508862, -0.609205, -0.608218,
		0.860804, -0.352904, -0.366710,
		34.339458, 41.280067, 33.806938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702908, 40.809605, 34.129143>,  <33.736897, 41.527103, 34.063633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702908, 40.809605, 34.129143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090183, 40.856606, 34.040787>,  <34.322548, 40.884808, 33.987774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090183, 40.856606, 34.040787>,  <33.702908, 40.809605, 34.129143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090183, 40.856606, 34.040787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222700, -0.807137, 0.546750,
		-0.114044, -0.578552, -0.807633,
		0.968194, 0.117507, -0.220892,
		34.380642, 40.891857, 33.974518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014488, 40.175049, 33.956867>,  <33.702908, 40.809605, 34.129143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014488, 40.175049, 33.956867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.330704, 40.395725, 34.063206>,  <34.520435, 40.528133, 34.127010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.330704, 40.395725, 34.063206>,  <34.014488, 40.175049, 33.956867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330704, 40.395725, 34.063206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236671, -0.675601, 0.698248,
		0.564826, -0.489077, -0.664662,
		0.790543, 0.551695, 0.265847,
		34.567867, 40.561234, 34.142960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603165, 39.709503, 33.970261>,  <34.014488, 40.175049, 33.956867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603165, 39.709503, 33.970261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.724083, 40.008755, 34.206539>,  <34.796635, 40.188305, 34.348305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.724083, 40.008755, 34.206539>,  <34.603165, 39.709503, 33.970261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724083, 40.008755, 34.206539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496850, -0.652514, 0.572160,
		0.813487, 0.120528, -0.568957,
		0.302291, 0.748130, 0.590695,
		34.814770, 40.233192, 34.383747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282532, 39.551823, 34.229763>,  <34.603165, 39.709503, 33.970261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282532, 39.551823, 34.229763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.184078, 39.832462, 34.497246>,  <35.125008, 40.000847, 34.657738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.184078, 39.832462, 34.497246>,  <35.282532, 39.551823, 34.229763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184078, 39.832462, 34.497246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651760, -0.390846, 0.649960,
		0.717376, 0.595814, -0.361077,
		-0.246130, 0.701602, 0.668711,
		35.110241, 40.042942, 34.697861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904907, 39.744804, 34.540375>,  <35.282532, 39.551823, 34.229763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904907, 39.744804, 34.540375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.665413, 39.906101, 34.817188>,  <35.521717, 40.002880, 34.983276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.665413, 39.906101, 34.817188>,  <35.904907, 39.744804, 34.540375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665413, 39.906101, 34.817188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601574, -0.344038, 0.720934,
		0.528800, 0.847957, -0.036596,
		-0.598731, 0.403245, 0.692036,
		35.485794, 40.027073, 35.024799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377422, 40.017269, 35.091602>,  <35.904907, 39.744804, 34.540375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377422, 40.017269, 35.091602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.021038, 40.003551, 35.272717>,  <35.807209, 39.995323, 35.381386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.021038, 40.003551, 35.272717>,  <36.377422, 40.017269, 35.091602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021038, 40.003551, 35.272717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432844, -0.365549, 0.824026,
		0.137259, 0.930160, 0.340532,
		-0.890958, -0.034292, 0.452789,
		35.753750, 39.993263, 35.408554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368511, 40.518627, 35.676991>,  <36.377422, 40.017269, 35.091602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368511, 40.518627, 35.676991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098362, 40.233459, 35.752476>,  <35.936272, 40.062359, 35.797768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098362, 40.233459, 35.752476>,  <36.368511, 40.518627, 35.676991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098362, 40.233459, 35.752476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556963, -0.325360, 0.764155,
		-0.483385, 0.621195, 0.616811,
		-0.675374, -0.712922, 0.188709,
		35.895748, 40.019581, 35.809090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.076820, 45.577362, 31.136610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875477, 45.282936, 30.955578>,  <32.754669, 45.106281, 30.846958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875477, 45.282936, 30.955578>,  <33.076820, 45.577362, 31.136610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875477, 45.282936, 30.955578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402909, -0.663289, 0.630644,
		-0.764390, 0.135091, 0.630443,
		-0.503360, -0.736069, -0.452582,
		32.724468, 45.062115, 30.819803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747128, 45.151955, 31.664904>,  <33.076820, 45.577362, 31.136610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747128, 45.151955, 31.664904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772800, 44.914265, 31.344212>,  <32.788204, 44.771648, 31.151796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772800, 44.914265, 31.344212>,  <32.747128, 45.151955, 31.664904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772800, 44.914265, 31.344212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281916, -0.759868, 0.585768,
		-0.957290, -0.263618, 0.118751,
		0.064184, -0.594227, -0.801732,
		32.792057, 44.735996, 31.103691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252216, 44.585102, 31.726341>,  <32.747128, 45.151955, 31.664904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252216, 44.585102, 31.726341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559227, 44.485390, 31.490116>,  <32.743431, 44.425564, 31.348381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559227, 44.485390, 31.490116>,  <32.252216, 44.585102, 31.726341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559227, 44.485390, 31.490116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137312, -0.835969, 0.531320,
		-0.626140, -0.488893, -0.607398,
		0.767525, -0.249278, -0.590564,
		32.789486, 44.410606, 31.312946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310852, 43.868244, 31.632483>,  <32.252216, 44.585102, 31.726341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310852, 43.868244, 31.632483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681190, 43.971138, 31.521748>,  <32.903393, 44.032875, 31.455307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681190, 43.971138, 31.521748>,  <32.310852, 43.868244, 31.632483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681190, 43.971138, 31.521748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376176, -0.697206, 0.610242,
		-0.036037, -0.669130, -0.742271,
		0.925847, 0.257234, -0.276835,
		32.958946, 44.048309, 31.438698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738052, 43.196205, 31.522385>,  <32.310852, 43.868244, 31.632483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738052, 43.196205, 31.522385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010773, 43.487495, 31.550196>,  <33.174404, 43.662270, 31.566883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010773, 43.487495, 31.550196>,  <32.738052, 43.196205, 31.522385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010773, 43.487495, 31.550196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679192, -0.665455, 0.309626,
		0.271745, -0.163881, -0.948313,
		0.681801, 0.728226, 0.069527,
		33.215313, 43.705963, 31.571054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263344, 43.003647, 31.041508>,  <32.738052, 43.196205, 31.522385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263344, 43.003647, 31.041508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404301, 43.228268, 31.340969>,  <33.488873, 43.363041, 31.520647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404301, 43.228268, 31.340969>,  <33.263344, 43.003647, 31.041508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404301, 43.228268, 31.340969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680557, -0.702882, 0.206880,
		0.642389, 0.436601, -0.629854,
		0.352389, 0.561549, 0.748655,
		33.510017, 43.396732, 31.565565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917702, 42.828911, 31.050732>,  <33.263344, 43.003647, 31.041508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917702, 42.828911, 31.050732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865604, 42.988739, 31.413692>,  <33.834347, 43.084637, 31.631470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865604, 42.988739, 31.413692>,  <33.917702, 42.828911, 31.050732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865604, 42.988739, 31.413692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675075, -0.634555, 0.376316,
		0.726163, 0.661576, -0.187096,
		-0.130239, 0.399571, 0.907404,
		33.826534, 43.108612, 31.685913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469528, 42.550720, 31.367725>,  <33.917702, 42.828911, 31.050732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469528, 42.550720, 31.367725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279064, 42.720295, 31.675894>,  <34.164783, 42.822041, 31.860794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279064, 42.720295, 31.675894>,  <34.469528, 42.550720, 31.367725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279064, 42.720295, 31.675894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488238, -0.601213, 0.632588,
		0.731364, 0.677362, 0.079293,
		-0.476163, 0.423938, 0.770419,
		34.136215, 42.847477, 31.907019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947067, 42.739918, 31.814142>,  <34.469528, 42.550720, 31.367725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947067, 42.739918, 31.814142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613274, 42.675362, 32.024891>,  <34.412998, 42.636627, 32.151340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613274, 42.675362, 32.024891>,  <34.947067, 42.739918, 31.814142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613274, 42.675362, 32.024891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518090, -0.555452, 0.650427,
		0.187680, 0.815737, 0.547129,
		-0.834481, -0.161390, 0.526872,
		34.362930, 42.626945, 32.182953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684841, 42.974617, 31.797092>,  <34.947067, 42.739918, 31.814142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684841, 42.974617, 31.797092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065323, 42.866623, 31.737322>,  <36.293610, 42.801826, 31.701460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065323, 42.866623, 31.737322>,  <35.684841, 42.974617, 31.797092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065323, 42.866623, 31.737322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017911, 0.531736, -0.846721,
		0.308053, 0.802725, 0.510623,
		0.951200, -0.269981, -0.149425,
		36.350681, 42.785629, 31.692493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047401, 43.554585, 31.657999>,  <35.684841, 42.974617, 31.797092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047401, 43.554585, 31.657999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233711, 43.243149, 31.489782>,  <36.345497, 43.056290, 31.388851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233711, 43.243149, 31.489782>,  <36.047401, 43.554585, 31.657999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233711, 43.243149, 31.489782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059497, 0.446613, -0.892747,
		0.882900, 0.440842, 0.161699,
		0.465778, -0.778585, -0.420543,
		36.373444, 43.009575, 31.363619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569313, 43.895653, 31.241518>,  <36.047401, 43.554585, 31.657999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569313, 43.895653, 31.241518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530567, 43.525658, 31.094542>,  <36.507320, 43.303661, 31.006355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530567, 43.525658, 31.094542>,  <36.569313, 43.895653, 31.241518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530567, 43.525658, 31.094542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015869, 0.370566, -0.928670,
		0.995171, -0.084121, -0.050571,
		-0.096861, -0.924989, -0.367442,
		36.501511, 43.248161, 30.984308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866211, 43.871990, 30.624472>,  <36.569313, 43.895653, 31.241518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866211, 43.871990, 30.624472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614594, 43.562050, 30.599455>,  <36.463623, 43.376083, 30.584444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614594, 43.562050, 30.599455>,  <36.866211, 43.871990, 30.624472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614594, 43.562050, 30.599455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169692, 0.215379, -0.961674,
		0.758627, -0.594317, -0.266968,
		-0.629039, -0.774854, -0.062542,
		36.425880, 43.329594, 30.580692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019131, 43.521053, 30.006460>,  <36.866211, 43.871990, 30.624472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019131, 43.521053, 30.006460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647392, 43.401535, 30.093216>,  <36.424351, 43.329823, 30.145269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647392, 43.401535, 30.093216>,  <37.019131, 43.521053, 30.006460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647392, 43.401535, 30.093216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300142, 0.269289, -0.915095,
		0.215019, -0.915536, -0.339943,
		-0.929345, -0.298794, 0.216888,
		36.368587, 43.311897, 30.158281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749302, 43.220722, 29.397932>,  <37.019131, 43.521053, 30.006460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749302, 43.220722, 29.397932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436188, 43.305069, 29.632120>,  <36.248318, 43.355679, 29.772633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436188, 43.305069, 29.632120>,  <36.749302, 43.220722, 29.397932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436188, 43.305069, 29.632120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557632, 0.179892, -0.810361,
		-0.276202, -0.960819, -0.023230,
		-0.782790, 0.210870, 0.585470,
		36.201351, 43.368328, 29.807760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198315, 42.771744, 29.115107>,  <36.749302, 43.220722, 29.397932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198315, 42.771744, 29.115107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040638, 43.079041, 29.316868>,  <35.946033, 43.263420, 29.437923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040638, 43.079041, 29.316868>,  <36.198315, 42.771744, 29.115107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040638, 43.079041, 29.316868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639370, 0.165007, -0.750985,
		-0.660167, -0.618530, 0.426146,
		-0.394189, 0.768241, 0.504401,
		35.922382, 43.309513, 29.468189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406746, 42.738529, 29.058462>,  <36.198315, 42.771744, 29.115107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406746, 42.738529, 29.058462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453602, 43.127003, 29.141483>,  <35.481716, 43.360088, 29.191296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453602, 43.127003, 29.141483>,  <35.406746, 42.738529, 29.058462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453602, 43.127003, 29.141483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568967, 0.236919, -0.787493,
		-0.813975, -0.025845, 0.580325,
		0.117137, 0.971186, 0.207551,
		35.488743, 43.418358, 29.203749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782562, 42.987846, 29.087591>,  <35.406746, 42.738529, 29.058462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782562, 42.987846, 29.087591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005131, 43.312748, 29.017586>,  <35.138672, 43.507690, 28.975582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005131, 43.312748, 29.017586>,  <34.782562, 42.987846, 29.087591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005131, 43.312748, 29.017586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663396, 0.307462, -0.682182,
		-0.500299, 0.495685, 0.709928,
		0.556424, 0.812258, -0.175012,
		35.172058, 43.556427, 28.965082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342251, 43.523098, 28.959171>,  <34.782562, 42.987846, 29.087591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342251, 43.523098, 28.959171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673573, 43.693977, 28.814173>,  <34.872368, 43.796505, 28.727173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673573, 43.693977, 28.814173>,  <34.342251, 43.523098, 28.959171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673573, 43.693977, 28.814173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533301, 0.402838, -0.743849,
		-0.171747, 0.809456, 0.561502,
		0.828307, 0.427203, -0.362498,
		34.922066, 43.822140, 28.705423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056538, 44.078453, 28.705645>,  <34.342251, 43.523098, 28.959171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056538, 44.078453, 28.705645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412861, 44.023521, 28.532391>,  <34.626656, 43.990562, 28.428438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412861, 44.023521, 28.532391>,  <34.056538, 44.078453, 28.705645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412861, 44.023521, 28.532391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331202, 0.456354, -0.825861,
		0.311079, 0.879137, 0.361038,
		0.890806, -0.137332, -0.433134,
		34.680103, 43.982323, 28.402451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302574, 44.702042, 28.588070>,  <34.056538, 44.078453, 28.705645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302574, 44.702042, 28.588070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476616, 44.441818, 28.339083>,  <34.581039, 44.285686, 28.189692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476616, 44.441818, 28.339083>,  <34.302574, 44.702042, 28.588070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476616, 44.441818, 28.339083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291351, 0.552414, -0.780995,
		0.851941, 0.521167, 0.050815,
		0.435100, -0.650556, -0.622467,
		34.607147, 44.246651, 28.152342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604118, 45.141174, 28.100008>,  <34.302574, 44.702042, 28.588070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604118, 45.141174, 28.100008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580853, 44.776024, 27.938383>,  <34.566895, 44.556934, 27.841408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580853, 44.776024, 27.938383>,  <34.604118, 45.141174, 28.100008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580853, 44.776024, 27.938383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236566, 0.405824, -0.882805,
		0.969873, 0.044239, -0.239561,
		-0.058165, -0.912880, -0.404063,
		34.563404, 44.502159, 27.817163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784130, 45.262142, 27.324560>,  <34.604118, 45.141174, 28.100008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784130, 45.262142, 27.324560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602154, 44.906128, 27.336287>,  <34.492966, 44.692520, 27.343323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602154, 44.906128, 27.336287>,  <34.784130, 45.262142, 27.324560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602154, 44.906128, 27.336287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357080, 0.152165, -0.921596,
		0.815795, -0.429742, -0.387041,
		-0.454943, -0.890038, 0.029317,
		34.465672, 44.639118, 27.345081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.910707, 38.754101, 26.450918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.039362, 39.080498, 26.643044>,  <29.116554, 39.276337, 26.758320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.039362, 39.080498, 26.643044>,  <28.910707, 38.754101, 26.450918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039362, 39.080498, 26.643044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566391, -0.572310, 0.593011,
		0.758783, 0.081314, -0.646248,
		0.321634, 0.815996, 0.480315,
		29.135853, 39.325298, 26.787138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632875, 38.630547, 26.441219>,  <28.910707, 38.754101, 26.450918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632875, 38.630547, 26.441219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.558460, 38.889313, 26.737026>,  <29.513811, 39.044575, 26.914511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.558460, 38.889313, 26.737026>,  <29.632875, 38.630547, 26.441219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558460, 38.889313, 26.737026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618763, -0.507521, 0.599629,
		0.763232, 0.569140, -0.305871,
		-0.186037, 0.646917, 0.739519,
		29.502649, 39.083389, 26.958881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159227, 38.583965, 26.779709>,  <29.632875, 38.630547, 26.441219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159227, 38.583965, 26.779709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.952631, 38.776104, 27.063259>,  <29.828672, 38.891388, 27.233389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.952631, 38.776104, 27.063259>,  <30.159227, 38.583965, 26.779709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952631, 38.776104, 27.063259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505470, -0.497191, 0.705196,
		0.691184, 0.722543, 0.013994,
		-0.516492, 0.480346, 0.708875,
		29.797684, 38.920208, 27.275921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575954, 38.878277, 27.353355>,  <30.159227, 38.583965, 26.779709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575954, 38.878277, 27.353355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.222567, 38.832207, 27.535002>,  <30.010534, 38.804565, 27.643990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.222567, 38.832207, 27.535002>,  <30.575954, 38.878277, 27.353355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222567, 38.832207, 27.535002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447346, -0.495318, 0.744675,
		0.139164, 0.861043, 0.489120,
		-0.883467, -0.115175, 0.454115,
		29.957527, 38.797653, 27.671236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657309, 39.251694, 27.990231>,  <30.575954, 38.878277, 27.353355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657309, 39.251694, 27.990231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.364986, 38.980995, 28.025871>,  <30.189592, 38.818577, 28.047256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.364986, 38.980995, 28.025871>,  <30.657309, 39.251694, 27.990231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364986, 38.980995, 28.025871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500947, -0.443076, 0.743462,
		-0.463654, 0.587963, 0.662816,
		-0.730806, -0.676745, 0.089104,
		30.145744, 38.777973, 28.052603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422026, 39.206753, 28.685398>,  <30.657309, 39.251694, 27.990231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422026, 39.206753, 28.685398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.271067, 38.853703, 28.573298>,  <30.180490, 38.641872, 28.506037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.271067, 38.853703, 28.573298>,  <30.422026, 39.206753, 28.685398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271067, 38.853703, 28.573298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292374, -0.400717, 0.868299,
		-0.878685, 0.245756, 0.409287,
		-0.377398, -0.882627, -0.280251,
		30.157846, 38.588913, 28.489222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246679, 38.933884, 29.331085>,  <30.422026, 39.206753, 28.685398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246679, 38.933884, 29.331085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.211826, 38.618168, 29.087963>,  <30.190914, 38.428738, 28.942089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.211826, 38.618168, 29.087963>,  <30.246679, 38.933884, 29.331085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211826, 38.618168, 29.087963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092650, -0.613902, 0.783926,
		-0.991879, 0.011993, 0.126619,
		-0.087133, -0.789291, -0.607806,
		30.185686, 38.381382, 28.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753683, 38.407822, 29.629787>,  <30.246679, 38.933884, 29.331085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753683, 38.407822, 29.629787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.020124, 38.242249, 29.381605>,  <30.179989, 38.142902, 29.232697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.020124, 38.242249, 29.381605>,  <29.753683, 38.407822, 29.629787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020124, 38.242249, 29.381605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320784, -0.592008, 0.739341,
		-0.673354, -0.691509, -0.261554,
		0.666102, -0.413935, -0.620456,
		30.219955, 38.118069, 29.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844055, 37.732441, 29.953396>,  <29.753683, 38.407822, 29.629787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844055, 37.732441, 29.953396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.146986, 37.802567, 29.701771>,  <30.328745, 37.844643, 29.550795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.146986, 37.802567, 29.701771>,  <29.844055, 37.732441, 29.953396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146986, 37.802567, 29.701771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631133, -0.443893, 0.636106,
		-0.167718, -0.878763, -0.446819,
		0.757326, 0.175316, -0.629065,
		30.374184, 37.855160, 29.513052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208794, 37.059734, 29.983784>,  <29.844055, 37.732441, 29.953396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208794, 37.059734, 29.983784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.471323, 37.318810, 29.828997>,  <30.628841, 37.474255, 29.736124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.471323, 37.318810, 29.828997>,  <30.208794, 37.059734, 29.983784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471323, 37.318810, 29.828997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695057, -0.319536, 0.644044,
		0.293488, -0.691665, -0.659897,
		0.656324, 0.647685, -0.386966,
		30.668221, 37.513115, 29.712906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778965, 36.662579, 29.614817>,  <30.208794, 37.059734, 29.983784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778965, 36.662579, 29.614817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.918858, 37.023003, 29.717411>,  <31.002792, 37.239258, 29.778967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.918858, 37.023003, 29.717411>,  <30.778965, 36.662579, 29.614817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918858, 37.023003, 29.717411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623100, -0.428160, 0.654542,
		0.699596, -0.069097, -0.711190,
		0.349730, 0.901057, 0.256485,
		31.023777, 37.293320, 29.794357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432356, 36.560917, 29.639776>,  <30.778965, 36.662579, 29.614817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432356, 36.560917, 29.639776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.388130, 36.897060, 29.852030>,  <31.361595, 37.098747, 29.979382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.388130, 36.897060, 29.852030>,  <31.432356, 36.560917, 29.639776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388130, 36.897060, 29.852030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646737, -0.344567, 0.680445,
		0.754657, 0.418414, -0.505394,
		-0.110566, 0.840359, 0.530633,
		31.354959, 37.149170, 30.011219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100700, 36.737400, 29.779705>,  <31.432356, 36.560917, 29.639776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100700, 36.737400, 29.779705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.881910, 36.926182, 30.056276>,  <31.750635, 37.039452, 30.222219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.881910, 36.926182, 30.056276>,  <32.100700, 36.737400, 29.779705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881910, 36.926182, 30.056276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601348, -0.353094, 0.716733,
		0.582405, 0.807826, -0.090675,
		-0.546978, 0.471956, 0.691428,
		31.717817, 37.067768, 30.263704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579842, 37.039356, 30.129356>,  <32.100700, 36.737400, 29.779705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579842, 37.039356, 30.129356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.255669, 37.023003, 30.363117>,  <32.061165, 37.013191, 30.503374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.255669, 37.023003, 30.363117>,  <32.579842, 37.039356, 30.129356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255669, 37.023003, 30.363117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576382, -0.234092, 0.782934,
		0.104791, 0.971354, 0.213283,
		-0.810434, -0.040888, 0.584402,
		32.012539, 37.010735, 30.538437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090160, 37.674400, 30.056343>,  <32.579842, 37.039356, 30.129356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090160, 37.674400, 30.056343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326366, 37.512444, 29.777100>,  <33.468090, 37.415268, 29.609554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326366, 37.512444, 29.777100>,  <33.090160, 37.674400, 30.056343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326366, 37.512444, 29.777100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569265, 0.404177, -0.715946,
		0.572039, 0.820185, 0.008182,
		0.590515, -0.404891, -0.698108,
		33.503521, 37.390976, 29.567667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176434, 38.184898, 29.634344>,  <33.090160, 37.674400, 30.056343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176434, 38.184898, 29.634344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275486, 37.870453, 29.407824>,  <33.334919, 37.681786, 29.271912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275486, 37.870453, 29.407824>,  <33.176434, 38.184898, 29.634344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275486, 37.870453, 29.407824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201072, 0.530079, -0.823764,
		0.947759, 0.317859, -0.026800,
		0.247635, -0.786118, -0.566300,
		33.349777, 37.634617, 29.237934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623550, 38.404373, 29.142639>,  <33.176434, 38.184898, 29.634344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623550, 38.404373, 29.142639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.490509, 38.063911, 28.980204>,  <33.410683, 37.859634, 28.882742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.490509, 38.063911, 28.980204>,  <33.623550, 38.404373, 29.142639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490509, 38.063911, 28.980204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318229, 0.506643, -0.801276,
		0.887753, -0.137278, -0.439374,
		-0.332603, -0.851157, -0.406088,
		33.390728, 37.808563, 28.858377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791412, 38.515270, 28.520798>,  <33.623550, 38.404373, 29.142639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791412, 38.515270, 28.520798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522293, 38.222717, 28.476227>,  <33.360821, 38.047184, 28.449484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522293, 38.222717, 28.476227>,  <33.791412, 38.515270, 28.520798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522293, 38.222717, 28.476227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359404, 0.454765, -0.814873,
		0.646660, -0.508198, -0.568828,
		-0.672800, -0.731385, -0.111430,
		33.320454, 38.003304, 28.442799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860634, 38.311657, 27.866579>,  <33.791412, 38.515270, 28.520798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860634, 38.311657, 27.866579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.489170, 38.195820, 27.959301>,  <33.266293, 38.126320, 28.014935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.489170, 38.195820, 27.959301>,  <33.860634, 38.311657, 27.866579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489170, 38.195820, 27.959301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335100, 0.386974, -0.859046,
		0.159066, -0.875437, -0.456407,
		-0.928658, -0.289587, 0.231805,
		33.210571, 38.108944, 28.028843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629349, 38.140167, 27.265226>,  <33.860634, 38.311657, 27.866579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629349, 38.140167, 27.265226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296146, 38.174503, 27.483849>,  <33.096226, 38.195107, 27.615023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296146, 38.174503, 27.483849>,  <33.629349, 38.140167, 27.265226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296146, 38.174503, 27.483849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462325, 0.434617, -0.772893,
		-0.303890, -0.896515, -0.322354,
		-0.833010, 0.085842, 0.546557,
		33.046242, 38.200256, 27.647816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016361, 37.915489, 26.819689>,  <33.629349, 38.140167, 27.265226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016361, 37.915489, 26.819689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.894009, 38.165688, 27.106794>,  <32.820599, 38.315807, 27.279058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.894009, 38.165688, 27.106794>,  <33.016361, 37.915489, 26.819689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894009, 38.165688, 27.106794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533385, 0.511894, -0.673398,
		-0.788629, -0.588826, 0.177052,
		-0.305882, 0.625498, 0.717766,
		32.802242, 38.353336, 27.322124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317295, 37.953617, 26.759424>,  <33.016361, 37.915489, 26.819689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317295, 37.953617, 26.759424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.441441, 38.278538, 26.956947>,  <32.515926, 38.473488, 27.075460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.441441, 38.278538, 26.956947>,  <32.317295, 37.953617, 26.759424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441441, 38.278538, 26.956947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537264, 0.578427, -0.613816,
		-0.784233, -0.074799, 0.615941,
		0.310364, 0.812298, 0.493808,
		32.534550, 38.522228, 27.105089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740990, 38.255424, 27.063475>,  <32.317295, 37.953617, 26.759424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740990, 38.255424, 27.063475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.014347, 38.546227, 27.036821>,  <32.178360, 38.720707, 27.020828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.014347, 38.546227, 27.036821>,  <31.740990, 38.255424, 27.063475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014347, 38.546227, 27.036821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648714, 0.562850, -0.512221,
		-0.334881, 0.393275, 0.856265,
		0.683392, 0.727004, -0.066635,
		32.219364, 38.764328, 27.016830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424086, 38.946983, 26.992874>,  <31.740990, 38.255424, 27.063475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424086, 38.946983, 26.992874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.772932, 39.071259, 26.841671>,  <31.982241, 39.145824, 26.750950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.772932, 39.071259, 26.841671>,  <31.424086, 38.946983, 26.992874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772932, 39.071259, 26.841671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480202, 0.691744, -0.539349,
		0.093915, 0.651894, 0.752473,
		0.872116, 0.310686, -0.378006,
		32.034565, 39.164463, 26.728270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401016, 39.696823, 27.108198>,  <31.424086, 38.946983, 26.992874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401016, 39.696823, 27.108198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.657152, 39.647472, 26.804951>,  <31.810833, 39.617863, 26.623001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.657152, 39.647472, 26.804951>,  <31.401016, 39.696823, 27.108198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657152, 39.647472, 26.804951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463528, 0.724955, -0.509492,
		0.612462, 0.677656, 0.407028,
		0.640338, -0.123375, -0.758120,
		31.849253, 39.610458, 26.577515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506258, 40.349545, 26.942711>,  <31.401016, 39.696823, 27.108198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506258, 40.349545, 26.942711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.643938, 40.126587, 26.640493>,  <31.726545, 39.992813, 26.459164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.643938, 40.126587, 26.640493>,  <31.506258, 40.349545, 26.942711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643938, 40.126587, 26.640493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328881, 0.682151, -0.653075,
		0.879411, 0.473271, 0.051481,
		0.344199, -0.557390, -0.755542,
		31.747198, 39.959370, 26.413832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975943, 40.846886, 26.583033>,  <31.506258, 40.349545, 26.942711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975943, 40.846886, 26.583033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.869972, 40.546753, 26.340773>,  <31.806391, 40.366673, 26.195417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.869972, 40.546753, 26.340773>,  <31.975943, 40.846886, 26.583033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869972, 40.546753, 26.340773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219153, 0.658507, -0.719959,
		0.939035, -0.058005, -0.338893,
		-0.264925, -0.750336, -0.605649,
		31.790495, 40.321651, 26.159079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362782, 40.968224, 26.120270>,  <31.975943, 40.846886, 26.583033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362782, 40.968224, 26.120270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035038, 40.782181, 25.986208>,  <31.838392, 40.670555, 25.905771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035038, 40.782181, 25.986208>,  <32.362782, 40.968224, 26.120270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035038, 40.782181, 25.986208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331489, 0.861354, -0.384948,
		0.467728, -0.204311, -0.859935,
		-0.819357, -0.465110, -0.335153,
		31.789230, 40.642647, 25.885662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982700, 41.309410, 25.782724>,  <32.362782, 40.968224, 26.120270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982700, 41.309410, 25.782724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249229, 41.557243, 25.616772>,  <33.409145, 41.705944, 25.517200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249229, 41.557243, 25.616772>,  <32.982700, 41.309410, 25.782724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249229, 41.557243, 25.616772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722691, -0.399562, 0.563976,
		0.183660, -0.675622, -0.714006,
		0.666323, 0.619585, -0.414883,
		33.449127, 41.743118, 25.492308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530872, 40.926338, 25.760307>,  <32.982700, 41.309410, 25.782724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530872, 40.926338, 25.760307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682755, 41.293385, 25.713316>,  <33.773884, 41.513615, 25.685122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682755, 41.293385, 25.713316>,  <33.530872, 40.926338, 25.760307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682755, 41.293385, 25.713316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846248, -0.293218, 0.444845,
		0.373752, -0.268325, -0.887869,
		0.379702, 0.917619, -0.117479,
		33.796665, 41.568672, 25.678072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197975, 40.851479, 25.437197>,  <33.530872, 40.926338, 25.760307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197975, 40.851479, 25.437197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198929, 41.202259, 25.629423>,  <34.199501, 41.412727, 25.744759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198929, 41.202259, 25.629423>,  <34.197975, 40.851479, 25.437197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198929, 41.202259, 25.629423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856283, -0.250005, 0.451969,
		0.516501, 0.410425, -0.751517,
		0.002384, 0.876954, 0.480568,
		34.199642, 41.465347, 25.773594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866009, 41.082478, 25.310930>,  <34.197975, 40.851479, 25.437197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866009, 41.082478, 25.310930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718407, 41.265457, 25.634554>,  <34.629845, 41.375244, 25.828728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718407, 41.265457, 25.634554>,  <34.866009, 41.082478, 25.310930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718407, 41.265457, 25.634554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857193, -0.168962, 0.486489,
		0.359244, 0.873036, -0.329775,
		-0.369003, 0.457449, 0.809059,
		34.607704, 41.402691, 25.877272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388874, 41.620701, 25.446272>,  <34.866009, 41.082478, 25.310930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388874, 41.620701, 25.446272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190529, 41.553684, 25.787106>,  <35.071522, 41.513474, 25.991606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190529, 41.553684, 25.787106>,  <35.388874, 41.620701, 25.446272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190529, 41.553684, 25.787106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868345, -0.106676, 0.484352,
		0.009747, 0.980076, 0.198382,
		-0.495864, -0.167543, 0.852085,
		35.041771, 41.503422, 26.042730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787632, 41.872677, 25.940559>,  <35.388874, 41.620701, 25.446272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787632, 41.872677, 25.940559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573772, 41.615017, 26.159363>,  <35.445457, 41.460423, 26.290646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573772, 41.615017, 26.159363>,  <35.787632, 41.872677, 25.940559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573772, 41.615017, 26.159363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773457, -0.112222, 0.623835,
		-0.340455, 0.756624, 0.558221,
		-0.534653, -0.644148, 0.547010,
		35.413376, 41.421772, 26.323465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904400, 42.079674, 26.684025>,  <35.787632, 41.872677, 25.940559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904400, 42.079674, 26.684025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734016, 41.721447, 26.735422>,  <35.631786, 41.506512, 26.766260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734016, 41.721447, 26.735422>,  <35.904400, 42.079674, 26.684025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734016, 41.721447, 26.735422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627680, -0.190235, 0.754870,
		-0.651595, 0.402199, 0.643164,
		-0.425960, -0.895571, 0.128496,
		35.606228, 41.452774, 26.773972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929604, 42.040283, 27.431524>,  <35.904400, 42.079674, 26.684025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929604, 42.040283, 27.431524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850929, 41.680820, 27.274694>,  <35.803722, 41.465141, 27.180597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850929, 41.680820, 27.274694>,  <35.929604, 42.040283, 27.431524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850929, 41.680820, 27.274694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459376, -0.437743, 0.772887,
		-0.866191, -0.028090, 0.498923,
		-0.196690, -0.898661, -0.392073,
		35.791924, 41.411221, 27.157072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614460, 41.605579, 27.992401>,  <35.929604, 42.040283, 27.431524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614460, 41.605579, 27.992401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821754, 41.395023, 27.722780>,  <35.946129, 41.268688, 27.561007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821754, 41.395023, 27.722780>,  <35.614460, 41.605579, 27.992401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821754, 41.395023, 27.722780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534328, -0.416110, 0.735762,
		-0.667779, -0.741462, 0.065624,
		0.518233, -0.526391, -0.674053,
		35.977222, 41.237106, 27.520565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576031, 40.925575, 28.036221>,  <35.614460, 41.605579, 27.992401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576031, 40.925575, 28.036221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.918861, 40.933777, 27.830309>,  <36.124561, 40.938698, 27.706762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.918861, 40.933777, 27.830309>,  <35.576031, 40.925575, 28.036221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918861, 40.933777, 27.830309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433802, -0.567723, 0.699648,
		-0.277906, -0.822964, -0.495477,
		0.857079, 0.020502, -0.514777,
		36.175983, 40.939926, 27.675877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822483, 40.227943, 28.026911>,  <35.576031, 40.925575, 28.036221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822483, 40.227943, 28.026911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153011, 40.445820, 27.969625>,  <36.351330, 40.576546, 27.935255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153011, 40.445820, 27.969625>,  <35.822483, 40.227943, 28.026911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153011, 40.445820, 27.969625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468015, -0.522642, 0.712606,
		0.313300, -0.655866, -0.686792,
		0.826320, 0.544688, -0.143212,
		36.400906, 40.609226, 27.926662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396236, 39.724133, 28.058846>,  <35.822483, 40.227943, 28.026911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396236, 39.724133, 28.058846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557274, 40.085670, 28.116789>,  <36.653896, 40.302593, 28.151554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557274, 40.085670, 28.116789>,  <36.396236, 39.724133, 28.058846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557274, 40.085670, 28.116789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680303, -0.401317, 0.613297,
		0.612458, -0.148364, -0.776456,
		0.402596, 0.903843, 0.144857,
		36.678051, 40.356823, 28.160246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056915, 39.568264, 28.147812>,  <36.396236, 39.724133, 28.058846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056915, 39.568264, 28.147812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.993233, 39.928345, 28.309940>,  <36.955025, 40.144394, 28.407217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.993233, 39.928345, 28.309940>,  <37.056915, 39.568264, 28.147812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993233, 39.928345, 28.309940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583121, -0.245545, 0.774389,
		0.796633, 0.359640, -0.485835,
		-0.159206, 0.900204, 0.405323,
		36.945473, 40.198406, 28.431538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663147, 39.812000, 28.269882>,  <37.056915, 39.568264, 28.147812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663147, 39.812000, 28.269882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447212, 40.022243, 28.532883>,  <37.317650, 40.148388, 28.690683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447212, 40.022243, 28.532883>,  <37.663147, 39.812000, 28.269882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447212, 40.022243, 28.532883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607624, -0.297244, 0.736505,
		0.582550, 0.797109, -0.158907,
		-0.539841, 0.525607, 0.657502,
		37.285259, 40.179924, 28.730133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.764633, 45.112453, 26.570942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510006, 44.861649, 26.750561>,  <34.357231, 44.711166, 26.858332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510006, 44.861649, 26.750561>,  <34.764633, 45.112453, 26.570942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510006, 44.861649, 26.750561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647724, 0.118615, -0.752585,
		0.418614, -0.769929, -0.481634,
		-0.636566, -0.627009, 0.449048,
		34.319035, 44.673546, 26.885275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694679, 44.458286, 26.156948>,  <34.764633, 45.112453, 26.570942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694679, 44.458286, 26.156948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357685, 44.485622, 26.370697>,  <34.155491, 44.502026, 26.498947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357685, 44.485622, 26.370697>,  <34.694679, 44.458286, 26.156948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357685, 44.485622, 26.370697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536081, -0.008224, -0.844126,
		-0.053301, -0.997627, 0.043570,
		-0.842482, 0.068350, 0.534371,
		34.104939, 44.506123, 26.531008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171772, 44.072498, 25.735043>,  <34.694679, 44.458286, 26.156948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171772, 44.072498, 25.735043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.954845, 44.296722, 25.985373>,  <33.824688, 44.431259, 26.135571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.954845, 44.296722, 25.985373>,  <34.171772, 44.072498, 25.735043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954845, 44.296722, 25.985373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606354, 0.254470, -0.753379,
		-0.581569, -0.788045, 0.201895,
		-0.542321, 0.560562, 0.625826,
		33.792149, 44.464890, 26.173120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496326, 43.920704, 25.678629>,  <34.171772, 44.072498, 25.735043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496326, 43.920704, 25.678629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467300, 44.290512, 25.828291>,  <33.449886, 44.512398, 25.918089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467300, 44.290512, 25.828291>,  <33.496326, 43.920704, 25.678629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467300, 44.290512, 25.828291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632018, 0.247584, -0.734340,
		-0.771549, -0.289758, 0.566350,
		-0.072562, 0.924523, 0.374155,
		33.445530, 44.567867, 25.940538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751648, 44.096828, 25.635422>,  <33.496326, 43.920704, 25.678629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751648, 44.096828, 25.635422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946438, 44.445774, 25.652533>,  <33.063313, 44.655144, 25.662798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946438, 44.445774, 25.652533>,  <32.751648, 44.096828, 25.635422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946438, 44.445774, 25.652533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638458, 0.388967, -0.664136,
		-0.596009, 0.296107, 0.746387,
		0.486975, 0.872368, 0.042776,
		33.092529, 44.707485, 25.665365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232430, 44.524803, 25.701744>,  <32.751648, 44.096828, 25.635422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232430, 44.524803, 25.701744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539673, 44.751057, 25.581694>,  <32.724018, 44.886806, 25.509663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539673, 44.751057, 25.581694>,  <32.232430, 44.524803, 25.701744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539673, 44.751057, 25.581694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622623, 0.550306, -0.556331,
		-0.149515, 0.614187, 0.774867,
		0.768105, 0.565630, -0.300128,
		32.770103, 44.920746, 25.491655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955849, 45.273842, 25.648777>,  <32.232430, 44.524803, 25.701744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955849, 45.273842, 25.648777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295479, 45.289726, 25.438066>,  <32.499256, 45.299255, 25.311640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295479, 45.289726, 25.438066>,  <31.955849, 45.273842, 25.648777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295479, 45.289726, 25.438066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452717, 0.568596, -0.686838,
		0.272249, 0.821658, 0.500758,
		0.849075, 0.039711, -0.526778,
		32.550201, 45.301640, 25.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046867, 46.015343, 25.333393>,  <31.955849, 45.273842, 25.648777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046867, 46.015343, 25.333393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250443, 45.767136, 25.094753>,  <32.372589, 45.618210, 24.951569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250443, 45.767136, 25.094753>,  <32.046867, 46.015343, 25.333393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250443, 45.767136, 25.094753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445578, 0.403092, -0.799360,
		0.736506, 0.672658, -0.071341,
		0.508939, -0.620522, -0.596602,
		32.403126, 45.580978, 24.915773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346653, 46.430431, 24.743694>,  <32.046867, 46.015343, 25.333393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346653, 46.430431, 24.743694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380070, 46.061813, 24.592022>,  <32.400120, 45.840641, 24.501019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380070, 46.061813, 24.592022>,  <32.346653, 46.430431, 24.743694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380070, 46.061813, 24.592022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326113, 0.334275, -0.884257,
		0.941633, 0.197525, -0.272602,
		0.083538, -0.921544, -0.379180,
		32.405132, 45.785351, 24.478268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631874, 46.555248, 24.109087>,  <32.346653, 46.430431, 24.743694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631874, 46.555248, 24.109087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461369, 46.193417, 24.106859>,  <32.359066, 45.976318, 24.105522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461369, 46.193417, 24.106859>,  <32.631874, 46.555248, 24.109087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461369, 46.193417, 24.106859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547824, 0.263041, -0.794165,
		0.719851, -0.335476, -0.607677,
		-0.426267, -0.904580, -0.005569,
		32.333488, 45.922043, 24.105188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723000, 46.314636, 23.461401>,  <32.631874, 46.555248, 24.109087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723000, 46.314636, 23.461401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415794, 46.105343, 23.609118>,  <32.231468, 45.979767, 23.697748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415794, 46.105343, 23.609118>,  <32.723000, 46.314636, 23.461401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415794, 46.105343, 23.609118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540091, 0.219280, -0.812538,
		0.344169, -0.823494, -0.451005,
		-0.768017, -0.523234, 0.369292,
		32.185390, 45.948372, 23.719906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407497, 45.993286, 22.914391>,  <32.723000, 46.314636, 23.461401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407497, 45.993286, 22.914391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099968, 45.970104, 23.169123>,  <31.915451, 45.956196, 23.321962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099968, 45.970104, 23.169123>,  <32.407497, 45.993286, 22.914391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099968, 45.970104, 23.169123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615515, 0.337075, -0.712406,
		-0.173370, -0.939692, -0.294824,
		-0.768820, -0.057959, 0.636833,
		31.869322, 45.952717, 23.360172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891119, 45.665730, 22.557426>,  <32.407497, 45.993286, 22.914391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891119, 45.665730, 22.557426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.717873, 45.880146, 22.847273>,  <31.613924, 46.008797, 23.021181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.717873, 45.880146, 22.847273>,  <31.891119, 45.665730, 22.557426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717873, 45.880146, 22.847273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482569, 0.541097, -0.688724,
		-0.761273, -0.647975, 0.024319,
		-0.433117, 0.536043, 0.724615,
		31.587936, 46.040958, 23.064657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809406, 45.326588, 21.878876>,  <31.891119, 45.665730, 22.557426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809406, 45.326588, 21.878876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975687, 45.034847, 21.661533>,  <32.075455, 44.859802, 21.531128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975687, 45.034847, 21.661533>,  <31.809406, 45.326588, 21.878876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975687, 45.034847, 21.661533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787679, 0.587390, -0.185836,
		0.454702, -0.350738, 0.818675,
		0.415702, -0.729353, -0.543356,
		32.100399, 44.816040, 21.498526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483139, 44.680588, 21.607710>,  <31.809406, 45.326588, 21.878876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483139, 44.680588, 21.607710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378426, 44.343636, 21.419300>,  <31.315598, 44.141464, 21.306253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378426, 44.343636, 21.419300>,  <31.483139, 44.680588, 21.607710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378426, 44.343636, 21.419300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470204, -0.537527, 0.699981,
		-0.842838, -0.038233, 0.536807,
		-0.261786, -0.842379, -0.471026,
		31.299891, 44.090923, 21.277992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006300, 44.191803, 21.999601>,  <31.483139, 44.680588, 21.607710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006300, 44.191803, 21.999601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.160725, 43.929485, 21.740099>,  <31.253380, 43.772095, 21.584398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.160725, 43.929485, 21.740099>,  <31.006300, 44.191803, 21.999601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160725, 43.929485, 21.740099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118497, -0.662196, 0.739902,
		-0.914830, -0.362524, -0.177939,
		0.386063, -0.655799, -0.648755,
		31.276543, 43.732746, 21.545473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722883, 43.546425, 22.102203>,  <31.006300, 44.191803, 21.999601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722883, 43.546425, 22.102203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061865, 43.456116, 21.910017>,  <31.265253, 43.401928, 21.794706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061865, 43.456116, 21.910017>,  <30.722883, 43.546425, 22.102203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061865, 43.456116, 21.910017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237813, -0.647706, 0.723824,
		-0.474621, -0.727669, -0.495209,
		0.847455, -0.225775, -0.480464,
		31.316101, 43.388382, 21.765877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714739, 42.878059, 22.175774>,  <30.722883, 43.546425, 22.102203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714739, 42.878059, 22.175774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098694, 42.925526, 22.074160>,  <31.329067, 42.954006, 22.013191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098694, 42.925526, 22.074160>,  <30.714739, 42.878059, 22.175774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098694, 42.925526, 22.074160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263748, -0.689589, 0.674465,
		-0.095144, -0.714412, -0.693226,
		0.959888, 0.118666, -0.254035,
		31.386660, 42.961124, 21.997950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034740, 42.225346, 22.250294>,  <30.714739, 42.878059, 22.175774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034740, 42.225346, 22.250294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360847, 42.456139, 22.230583>,  <31.556511, 42.594616, 22.218758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360847, 42.456139, 22.230583>,  <31.034740, 42.225346, 22.250294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360847, 42.456139, 22.230583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420964, -0.532072, 0.734635,
		0.397655, -0.619667, -0.676671,
		0.815267, 0.576985, -0.049276,
		31.605427, 42.629234, 22.215799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561764, 41.801758, 22.369062>,  <31.034740, 42.225346, 22.250294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561764, 41.801758, 22.369062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732609, 42.156494, 22.439598>,  <31.835115, 42.369335, 22.481918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732609, 42.156494, 22.439598>,  <31.561764, 41.801758, 22.369062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732609, 42.156494, 22.439598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304417, -0.324671, 0.895499,
		0.851414, -0.328798, -0.408639,
		0.427112, 0.886837, 0.176338,
		31.860743, 42.422546, 22.492500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218868, 41.624249, 22.617826>,  <31.561764, 41.801758, 22.369062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218868, 41.624249, 22.617826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132038, 42.000484, 22.722261>,  <32.079941, 42.226227, 22.784922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132038, 42.000484, 22.722261>,  <32.218868, 41.624249, 22.617826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132038, 42.000484, 22.722261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650177, -0.060184, 0.757396,
		0.728113, 0.334166, -0.598486,
		-0.217077, 0.940591, 0.261087,
		32.066914, 42.282661, 22.800587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865791, 41.990833, 22.606285>,  <32.218868, 41.624249, 22.617826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865791, 41.990833, 22.606285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605930, 42.194553, 22.832054>,  <32.450016, 42.316784, 22.967516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605930, 42.194553, 22.832054>,  <32.865791, 41.990833, 22.606285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605930, 42.194553, 22.832054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664128, 0.018870, 0.747381,
		0.369988, 0.860384, -0.350498,
		-0.649648, 0.509297, 0.564423,
		32.411037, 42.347343, 23.001381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317276, 42.303398, 22.999062>,  <32.865791, 41.990833, 22.606285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317276, 42.303398, 22.999062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965630, 42.330856, 23.187714>,  <32.754642, 42.347332, 23.300905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965630, 42.330856, 23.187714>,  <33.317276, 42.303398, 22.999062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965630, 42.330856, 23.187714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471326, -0.021579, 0.881695,
		0.070703, 0.997408, -0.013385,
		-0.879121, 0.068647, 0.471629,
		32.701893, 42.351452, 23.329203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416073, 42.898582, 23.513903>,  <33.317276, 42.303398, 22.999062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416073, 42.898582, 23.513903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096821, 42.690823, 23.636028>,  <32.905270, 42.566166, 23.709305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096821, 42.690823, 23.636028>,  <33.416073, 42.898582, 23.513903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096821, 42.690823, 23.636028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405129, -0.087586, 0.910055,
		-0.445936, 0.850034, 0.280327,
		-0.798130, -0.519395, 0.305316,
		32.857384, 42.535004, 23.727623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199265, 43.191914, 24.187353>,  <33.416073, 42.898582, 23.513903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199265, 43.191914, 24.187353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016464, 42.836143, 24.190876>,  <32.906784, 42.622681, 24.192989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016464, 42.836143, 24.190876>,  <33.199265, 43.191914, 24.187353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016464, 42.836143, 24.190876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522744, -0.260559, 0.811694,
		-0.719642, 0.375553, 0.584016,
		-0.457005, -0.889421, 0.008809,
		32.879364, 42.569317, 24.193518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767166, 43.087109, 24.824453>,  <33.199265, 43.191914, 24.187353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767166, 43.087109, 24.824453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868553, 42.727318, 24.682077>,  <32.929386, 42.511444, 24.596651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868553, 42.727318, 24.682077>,  <32.767166, 43.087109, 24.824453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868553, 42.727318, 24.682077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360651, -0.253559, 0.897574,
		-0.897600, -0.355874, 0.260130,
		0.253465, -0.899479, -0.355941,
		32.944592, 42.457474, 24.575294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434464, 42.549133, 25.250010>,  <32.767166, 43.087109, 24.824453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434464, 42.549133, 25.250010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751274, 42.392860, 25.062368>,  <32.941360, 42.299099, 24.949783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751274, 42.392860, 25.062368>,  <32.434464, 42.549133, 25.250010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751274, 42.392860, 25.062368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412860, -0.223265, 0.883006,
		-0.449707, -0.893041, -0.015536,
		0.792029, -0.390680, -0.469105,
		32.988884, 42.275658, 24.921637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611649, 41.973904, 25.700888>,  <32.434464, 42.549133, 25.250010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611649, 41.973904, 25.700888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937931, 41.999577, 25.470930>,  <33.133701, 42.014980, 25.332956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937931, 41.999577, 25.470930>,  <32.611649, 41.973904, 25.700888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937931, 41.999577, 25.470930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512367, -0.541489, 0.666535,
		-0.268515, -0.838254, -0.474585,
		0.815708, 0.064187, -0.574892,
		33.182644, 42.018833, 25.298462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133987, 41.424530, 25.614111>,  <32.611649, 41.973904, 25.700888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133987, 41.424530, 25.614111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820246, 41.177971, 25.641949>,  <31.632000, 41.030037, 25.658651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820246, 41.177971, 25.641949>,  <32.133987, 41.424530, 25.614111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820246, 41.177971, 25.641949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532050, 0.610826, -0.586356,
		0.318916, -0.496940, -0.807058,
		-0.784356, -0.616394, 0.069594,
		31.584938, 40.993053, 25.662827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945162, 41.264946, 24.900452>,  <32.133987, 41.424530, 25.614111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945162, 41.264946, 24.900452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.625223, 41.196720, 25.130636>,  <31.433260, 41.155785, 25.268747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.625223, 41.196720, 25.130636>,  <31.945162, 41.264946, 24.900452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625223, 41.196720, 25.130636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583104, 0.448066, -0.677662,
		-0.142261, -0.877579, -0.457840,
		-0.799845, -0.170563, 0.575462,
		31.385269, 41.145550, 25.303274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466217, 40.918854, 24.511496>,  <31.945162, 41.264946, 24.900452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466217, 40.918854, 24.511496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241808, 41.056507, 24.812647>,  <31.107162, 41.139099, 24.993338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241808, 41.056507, 24.812647>,  <31.466217, 40.918854, 24.511496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241808, 41.056507, 24.812647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730266, 0.222553, -0.645896,
		-0.389829, -0.912164, 0.126450,
		-0.561022, 0.344131, 0.752880,
		31.073502, 41.159748, 25.038511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863722, 40.585365, 24.467234>,  <31.466217, 40.918854, 24.511496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863722, 40.585365, 24.467234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806282, 40.925674, 24.669451>,  <30.771818, 41.129860, 24.790781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806282, 40.925674, 24.669451>,  <30.863722, 40.585365, 24.467234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806282, 40.925674, 24.669451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808789, 0.193490, -0.555357,
		-0.570298, -0.488625, 0.660308,
		-0.143599, 0.850769, 0.505541,
		30.763203, 41.180904, 24.821114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168539, 40.509003, 24.701899>,  <30.863722, 40.585365, 24.467234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168539, 40.509003, 24.701899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232237, 40.899128, 24.763100>,  <30.270456, 41.133202, 24.799820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232237, 40.899128, 24.763100>,  <30.168539, 40.509003, 24.701899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232237, 40.899128, 24.763100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797763, 0.218423, -0.562019,
		-0.581563, -0.032563, 0.812850,
		0.159244, 0.975311, 0.153004,
		30.280010, 41.191723, 24.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490238, 40.808472, 24.955412>,  <30.168539, 40.509003, 24.701899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490238, 40.808472, 24.955412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688887, 41.119442, 24.801022>,  <29.808075, 41.306023, 24.708387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688887, 41.119442, 24.801022>,  <29.490238, 40.808472, 24.955412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688887, 41.119442, 24.801022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801896, 0.240778, -0.546799,
		-0.332160, 0.581066, 0.742989,
		0.496622, 0.777424, -0.385977,
		29.837873, 41.352669, 24.685228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071983, 41.463562, 25.049149>,  <29.490238, 40.808472, 24.955412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071983, 41.463562, 25.049149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.297749, 41.530540, 24.725815>,  <29.433207, 41.570728, 24.531815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.297749, 41.530540, 24.725815>,  <29.071983, 41.463562, 25.049149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297749, 41.530540, 24.725815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788299, 0.399945, -0.467577,
		0.244997, 0.901114, 0.357730,
		0.564412, 0.167443, -0.808333,
		29.467072, 41.580772, 24.483315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661835, 42.062603, 25.358648>,  <29.071983, 41.463562, 25.049149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661835, 42.062603, 25.358648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.310284, 41.958458, 25.518543>,  <28.099354, 41.895973, 25.614481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.310284, 41.958458, 25.518543>,  <28.661835, 42.062603, 25.358648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310284, 41.958458, 25.518543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467848, -0.634210, 0.615546,
		0.093255, 0.728004, 0.679200,
		-0.878875, -0.260360, 0.399738,
		28.046621, 41.880348, 25.638464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858936, 41.814426, 25.957815>,  <28.661835, 42.062603, 25.358648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858936, 41.814426, 25.957815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.492506, 41.657104, 25.926519>,  <28.272648, 41.562714, 25.907742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.492506, 41.657104, 25.926519>,  <28.858936, 41.814426, 25.957815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492506, 41.657104, 25.926519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320094, -0.834705, 0.448116,
		-0.241553, 0.385463, 0.890545,
		-0.916074, -0.393302, -0.078241,
		28.217684, 41.539112, 25.903048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666344, 41.551907, 26.632698>,  <28.858936, 41.814426, 25.957815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666344, 41.551907, 26.632698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.449625, 41.345974, 26.366945>,  <28.319593, 41.222416, 26.207495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.449625, 41.345974, 26.366945>,  <28.666344, 41.551907, 26.632698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449625, 41.345974, 26.366945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111837, -0.827580, 0.550095,
		-0.833034, 0.223739, 0.505959,
		-0.541799, -0.514833, -0.664380,
		28.287085, 41.191525, 26.167631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233389, 41.089939, 27.027159>,  <28.666344, 41.551907, 26.632698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233389, 41.089939, 27.027159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.311544, 40.935448, 26.666569>,  <28.358437, 40.842754, 26.450214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.311544, 40.935448, 26.666569>,  <28.233389, 41.089939, 27.027159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311544, 40.935448, 26.666569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156993, -0.895019, 0.417486,
		-0.968079, -0.223096, -0.114240,
		0.195387, -0.386225, -0.901473,
		28.370161, 40.819580, 26.396126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071127, 40.478222, 27.152845>,  <28.233389, 41.089939, 27.027159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071127, 40.478222, 27.152845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.289738, 40.424477, 26.822208>,  <28.420904, 40.392231, 26.623827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.289738, 40.424477, 26.822208>,  <28.071127, 40.478222, 27.152845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289738, 40.424477, 26.822208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317455, -0.880138, 0.352957,
		-0.774939, -0.455307, -0.438368,
		0.546528, -0.134359, -0.826592,
		28.453695, 40.384171, 26.574230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001934, 39.792156, 27.026499>,  <28.071127, 40.478222, 27.152845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001934, 39.792156, 27.026499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325188, 39.892242, 26.813215>,  <28.519140, 39.952293, 26.685246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325188, 39.892242, 26.813215>,  <28.001934, 39.792156, 27.026499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325188, 39.892242, 26.813215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478804, -0.806299, 0.347318,
		-0.343024, -0.535982, -0.771400,
		0.808135, 0.250211, -0.533210,
		28.567629, 39.967304, 26.653252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207600, 39.170918, 26.678226>,  <28.001934, 39.792156, 27.026499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207600, 39.170918, 26.678226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.532028, 39.404545, 26.665428>,  <28.726685, 39.544724, 26.657749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.532028, 39.404545, 26.665428>,  <28.207600, 39.170918, 26.678226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532028, 39.404545, 26.665428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563408, -0.765326, 0.311204,
		0.157279, -0.270434, -0.949805,
		0.811070, 0.584073, -0.031995,
		28.775349, 39.579765, 26.655830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.699398, 45.745277, 25.302965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024525, 45.873936, 25.108696>,  <29.219601, 45.951130, 24.992134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024525, 45.873936, 25.108696>,  <28.699398, 45.745277, 25.302965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024525, 45.873936, 25.108696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485108, 0.087828, 0.870032,
		0.322495, -0.942780, -0.084643,
		0.812815, 0.321642, -0.485674,
		29.268370, 45.970428, 24.962994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219259, 45.401821, 25.538086>,  <28.699398, 45.745277, 25.302965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219259, 45.401821, 25.538086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404684, 45.725754, 25.394264>,  <29.515938, 45.920113, 25.307970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404684, 45.725754, 25.394264>,  <29.219259, 45.401821, 25.538086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404684, 45.725754, 25.394264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587069, 0.023230, 0.809204,
		0.663674, -0.586198, -0.464660,
		0.463560, 0.809835, -0.359555,
		29.543753, 45.968704, 25.286398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959314, 45.203354, 25.556051>,  <29.219259, 45.401821, 25.538086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959314, 45.203354, 25.556051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914194, 45.600609, 25.543638>,  <29.887123, 45.838963, 25.536190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914194, 45.600609, 25.543638>,  <29.959314, 45.203354, 25.556051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914194, 45.600609, 25.543638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641920, 0.096676, 0.760653,
		0.758430, 0.065882, -0.648417,
		-0.112800, 0.993133, -0.031031,
		29.880354, 45.898548, 25.534328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671173, 45.420376, 25.597593>,  <29.959314, 45.203354, 25.556051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671173, 45.420376, 25.597593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.450695, 45.744564, 25.676905>,  <30.318407, 45.939079, 25.724491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.450695, 45.744564, 25.676905>,  <30.671173, 45.420376, 25.597593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450695, 45.744564, 25.676905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568207, 0.190593, 0.800510,
		0.611002, 0.553901, -0.565571,
		-0.551197, 0.810474, 0.198277,
		30.285336, 45.987705, 25.736387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052513, 46.114098, 25.534954>,  <30.671173, 45.420376, 25.597593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052513, 46.114098, 25.534954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.753096, 46.115253, 25.800186>,  <30.573444, 46.115948, 25.959326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.753096, 46.115253, 25.800186>,  <31.052513, 46.114098, 25.534954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753096, 46.115253, 25.800186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662991, 0.020024, 0.748359,
		-0.011114, 0.999795, -0.016906,
		-0.748545, 0.002891, 0.663078,
		30.528532, 46.116119, 25.999109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456573, 46.429932, 26.136084>,  <31.052513, 46.114098, 25.534954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456573, 46.429932, 26.136084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.107285, 46.309444, 26.289316>,  <30.897711, 46.237152, 26.381256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.107285, 46.309444, 26.289316>,  <31.456573, 46.429932, 26.136084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107285, 46.309444, 26.289316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404099, -0.008212, 0.914678,
		-0.272369, 0.953521, 0.128892,
		-0.873223, -0.301216, 0.383080,
		30.845318, 46.219078, 26.404240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390018, 46.775978, 26.780762>,  <31.456573, 46.429932, 26.136084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390018, 46.775978, 26.780762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098051, 46.509167, 26.840481>,  <30.922871, 46.349079, 26.876312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098051, 46.509167, 26.840481>,  <31.390018, 46.775978, 26.780762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098051, 46.509167, 26.840481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255222, -0.063336, 0.964806,
		-0.634098, 0.742334, 0.216471,
		-0.729918, -0.667030, 0.149299,
		30.879076, 46.309059, 26.885271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023663, 46.993782, 27.341677>,  <31.390018, 46.775978, 26.780762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023663, 46.993782, 27.341677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.933416, 46.605869, 27.304550>,  <30.879269, 46.373119, 27.282274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.933416, 46.605869, 27.304550>,  <31.023663, 46.993782, 27.341677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933416, 46.605869, 27.304550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101337, -0.118119, 0.987815,
		-0.968931, 0.213462, 0.124925,
		-0.225617, -0.969784, -0.092817,
		30.865730, 46.314934, 27.276705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586859, 46.829823, 27.990543>,  <31.023663, 46.993782, 27.341677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586859, 46.829823, 27.990543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705462, 46.475235, 27.848412>,  <30.776623, 46.262482, 27.763132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705462, 46.475235, 27.848412>,  <30.586859, 46.829823, 27.990543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705462, 46.475235, 27.848412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112559, -0.337030, 0.934741,
		-0.948375, -0.317152, -0.000151,
		0.296506, -0.886468, -0.355329,
		30.794413, 46.209293, 27.741814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251640, 46.332291, 28.373987>,  <30.586859, 46.829823, 27.990543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251640, 46.332291, 28.373987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.560965, 46.149738, 28.197937>,  <30.746559, 46.040207, 28.092306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.560965, 46.149738, 28.197937>,  <30.251640, 46.332291, 28.373987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560965, 46.149738, 28.197937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344206, -0.280780, 0.895927,
		-0.532460, -0.844323, -0.060042,
		0.773310, -0.456379, -0.440125,
		30.792957, 46.012825, 28.065899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187401, 45.597984, 28.560352>,  <30.251640, 46.332291, 28.373987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187401, 45.597984, 28.560352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.570126, 45.676292, 28.474392>,  <30.799761, 45.723278, 28.422815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.570126, 45.676292, 28.474392>,  <30.187401, 45.597984, 28.560352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570126, 45.676292, 28.474392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259367, -0.241029, 0.935219,
		0.131295, -0.950567, -0.281397,
		0.956813, 0.195774, -0.214900,
		30.857170, 45.735023, 28.409922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602100, 45.006718, 28.777632>,  <30.187401, 45.597984, 28.560352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602100, 45.006718, 28.777632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875820, 45.297810, 28.759148>,  <31.040052, 45.472466, 28.748056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875820, 45.297810, 28.759148>,  <30.602100, 45.006718, 28.777632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875820, 45.297810, 28.759148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428841, -0.350372, 0.832667,
		0.589769, -0.589613, -0.551842,
		0.684301, 0.727734, -0.046212,
		31.081110, 45.516129, 28.745283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764313, 44.327862, 28.824829>,  <30.602100, 45.006718, 28.777632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764313, 44.327862, 28.824829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530813, 44.019901, 28.927965>,  <30.390713, 43.835125, 28.989847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530813, 44.019901, 28.927965>,  <30.764313, 44.327862, 28.824829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530813, 44.019901, 28.927965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579222, 0.172342, -0.796744,
		0.568980, -0.614447, -0.546550,
		-0.583750, -0.769905, 0.257842,
		30.355688, 43.788929, 29.005318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643824, 44.016251, 28.171619>,  <30.764313, 44.327862, 28.824829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643824, 44.016251, 28.171619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378836, 43.864513, 28.429995>,  <30.219843, 43.773472, 28.585020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378836, 43.864513, 28.429995>,  <30.643824, 44.016251, 28.171619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378836, 43.864513, 28.429995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717249, 0.072488, -0.693036,
		0.216074, -0.922414, -0.320102,
		-0.662469, -0.379340, 0.645938,
		30.180096, 43.750713, 28.623775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145739, 43.541889, 27.717213>,  <30.643824, 44.016251, 28.171619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145739, 43.541889, 27.717213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962559, 43.643333, 28.058027>,  <29.852650, 43.704201, 28.262516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962559, 43.643333, 28.058027>,  <30.145739, 43.541889, 27.717213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962559, 43.643333, 28.058027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755845, 0.393441, -0.523357,
		-0.467953, -0.883678, 0.011511,
		-0.457951, 0.253607, 0.852036,
		29.825174, 43.719414, 28.313639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379972, 43.372780, 27.576036>,  <30.145739, 43.541889, 27.717213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379972, 43.372780, 27.576036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398363, 43.628483, 27.883083>,  <29.409397, 43.781906, 28.067310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398363, 43.628483, 27.883083>,  <29.379972, 43.372780, 27.576036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398363, 43.628483, 27.883083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741937, 0.536390, -0.402261,
		-0.668891, -0.551029, 0.498950,
		0.045974, 0.639259, 0.767616,
		29.412155, 43.820259, 28.113369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671877, 43.594624, 27.685017>,  <29.379972, 43.372780, 27.576036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671877, 43.594624, 27.685017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851244, 43.858639, 27.926104>,  <28.958864, 44.017048, 28.070757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851244, 43.858639, 27.926104>,  <28.671877, 43.594624, 27.685017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851244, 43.858639, 27.926104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655515, 0.701256, -0.280250,
		-0.607636, -0.269422, 0.747121,
		0.448418, 0.660039, 0.602719,
		28.985769, 44.056652, 28.106918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222383, 43.838360, 28.307587>,  <28.671877, 43.594624, 27.685017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222383, 43.838360, 28.307587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.500746, 44.113815, 28.226103>,  <28.667763, 44.279087, 28.177212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.500746, 44.113815, 28.226103>,  <28.222383, 43.838360, 28.307587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500746, 44.113815, 28.226103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714064, 0.633373, -0.298246,
		-0.076359, 0.353012, 0.932498,
		0.695904, 0.688637, -0.203710,
		28.709517, 44.320408, 28.164989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942856, 44.432327, 28.569317>,  <28.222383, 43.838360, 28.307587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942856, 44.432327, 28.569317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200489, 44.511395, 28.273727>,  <28.355068, 44.558834, 28.096373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200489, 44.511395, 28.273727>,  <27.942856, 44.432327, 28.569317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200489, 44.511395, 28.273727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697421, 0.548615, -0.461114,
		0.314265, 0.812372, 0.491212,
		0.644082, 0.197670, -0.738976,
		28.393713, 44.570694, 28.052034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515144, 44.854912, 28.181728>,  <27.942856, 44.432327, 28.569317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515144, 44.854912, 28.181728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.839663, 44.839672, 27.948370>,  <28.034374, 44.830528, 27.808355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.839663, 44.839672, 27.948370>,  <27.515144, 44.854912, 28.181728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839663, 44.839672, 27.948370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499502, 0.473378, -0.725542,
		0.303807, 0.880035, 0.365020,
		0.811295, -0.038096, -0.583395,
		28.083052, 44.828243, 27.773352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652153, 45.572491, 27.981043>,  <27.515144, 44.854912, 28.181728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652153, 45.572491, 27.981043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793982, 45.317413, 27.707512>,  <27.879078, 45.164368, 27.543392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793982, 45.317413, 27.707512>,  <27.652153, 45.572491, 27.981043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793982, 45.317413, 27.707512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462110, 0.516272, -0.721053,
		0.812855, 0.571668, -0.111632,
		0.354571, -0.637698, -0.683828,
		27.900352, 45.126102, 27.502363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875109, 45.935303, 27.453888>,  <27.652153, 45.572491, 27.981043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875109, 45.935303, 27.453888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827879, 45.587025, 27.262911>,  <27.799541, 45.378059, 27.148325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827879, 45.587025, 27.262911>,  <27.875109, 45.935303, 27.453888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827879, 45.587025, 27.262911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519336, 0.463954, -0.717661,
		0.846374, 0.163214, -0.506964,
		-0.118076, -0.870694, -0.477442,
		27.792456, 45.325817, 27.119678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832262, 46.141785, 26.822435>,  <27.875109, 45.935303, 27.453888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832262, 46.141785, 26.822435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717518, 45.762531, 26.767658>,  <27.648670, 45.534981, 26.734791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717518, 45.762531, 26.767658>,  <27.832262, 46.141785, 26.822435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717518, 45.762531, 26.767658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499328, 0.269984, -0.823274,
		0.817546, -0.167786, -0.550878,
		-0.286862, -0.948133, -0.136944,
		27.631460, 45.478092, 26.726576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981474, 45.989670, 26.066050>,  <27.832262, 46.141785, 26.822435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981474, 45.989670, 26.066050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682497, 45.768295, 26.213041>,  <27.503111, 45.635471, 26.301237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682497, 45.768295, 26.213041>,  <27.981474, 45.989670, 26.066050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682497, 45.768295, 26.213041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564216, 0.236824, -0.790933,
		0.350705, -0.798511, -0.489270,
		-0.747439, -0.553439, 0.367478,
		27.458265, 45.602264, 26.323286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657160, 45.582230, 25.465082>,  <27.981474, 45.989670, 26.066050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657160, 45.582230, 25.465082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383615, 45.607773, 25.755808>,  <27.219490, 45.623100, 25.930243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383615, 45.607773, 25.755808>,  <27.657160, 45.582230, 25.465082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383615, 45.607773, 25.755808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712618, 0.155297, -0.684148,
		-0.156563, -0.985802, -0.060692,
		-0.683859, 0.063862, 0.726814,
		27.178457, 45.626930, 25.973852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159603, 45.042118, 25.619457>,  <27.657160, 45.582230, 25.465082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159603, 45.042118, 25.619457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015432, 44.903229, 25.273155>,  <27.928930, 44.819897, 25.065374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015432, 44.903229, 25.273155>,  <28.159603, 45.042118, 25.619457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015432, 44.903229, 25.273155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322681, -0.824421, 0.464980,
		-0.875198, 0.446953, 0.185100,
		-0.360424, -0.347221, -0.865755,
		27.907305, 44.799061, 25.013428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609066, 44.597839, 25.776335>,  <28.159603, 45.042118, 25.619457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609066, 44.597839, 25.776335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707457, 44.479275, 25.407198>,  <27.766491, 44.408138, 25.185717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707457, 44.479275, 25.407198>,  <27.609066, 44.597839, 25.776335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707457, 44.479275, 25.407198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210299, -0.945735, 0.247708,
		-0.946182, 0.133137, -0.294982,
		0.245996, -0.296412, -0.922836,
		27.781250, 44.390350, 25.130344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058935, 44.361591, 25.356010>,  <27.609066, 44.597839, 25.776335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058935, 44.361591, 25.356010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.371246, 44.178493, 25.185904>,  <27.558634, 44.068634, 25.083839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.371246, 44.178493, 25.185904>,  <27.058935, 44.361591, 25.356010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371246, 44.178493, 25.185904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371342, -0.887350, 0.273340,
		-0.502482, -0.055498, -0.862804,
		0.780780, -0.457744, -0.425269,
		27.605480, 44.041172, 25.058323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731106, 43.706738, 25.036264>,  <27.058935, 44.361591, 25.356010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731106, 43.706738, 25.036264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127443, 43.654121, 25.048464>,  <27.365246, 43.622551, 25.055784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127443, 43.654121, 25.048464>,  <26.731106, 43.706738, 25.036264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127443, 43.654121, 25.048464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134588, -0.943838, 0.301754,
		-0.010907, -0.303095, -0.952898,
		0.990841, -0.131540, 0.030499,
		27.424696, 43.614658, 25.057613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830128, 43.210709, 24.567295>,  <26.731106, 43.706738, 25.036264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830128, 43.210709, 24.567295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.146082, 43.176453, 24.810192>,  <27.335655, 43.155899, 24.955931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.146082, 43.176453, 24.810192>,  <26.830128, 43.210709, 24.567295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146082, 43.176453, 24.810192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208128, -0.968867, 0.134086,
		0.576855, -0.232298, -0.783119,
		0.789887, -0.085641, 0.607244,
		27.383047, 43.150761, 24.992365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868530, 42.515549, 24.464996>,  <26.830128, 43.210709, 24.567295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868530, 42.515549, 24.464996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.136820, 42.632843, 24.737509>,  <27.297794, 42.703220, 24.901016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.136820, 42.632843, 24.737509>,  <26.868530, 42.515549, 24.464996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136820, 42.632843, 24.737509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128694, -0.950608, 0.282459,
		0.730457, -0.101775, -0.675332,
		0.670724, 0.293236, 0.681280,
		27.338037, 42.720814, 24.941893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446859, 42.055027, 24.484951>,  <26.868530, 42.515549, 24.464996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446859, 42.055027, 24.484951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484962, 42.211815, 24.850964>,  <27.507824, 42.305889, 25.070572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484962, 42.211815, 24.850964>,  <27.446859, 42.055027, 24.484951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484962, 42.211815, 24.850964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154476, -0.913899, 0.375402,
		0.983394, 0.105590, -0.147607,
		0.095259, 0.391970, 0.915033,
		27.513540, 42.329407, 25.125473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198895, 41.969242, 24.721960>,  <27.446859, 42.055027, 24.484951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198895, 41.969242, 24.721960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.947430, 42.000332, 25.031473>,  <27.796551, 42.018986, 25.217182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.947430, 42.000332, 25.031473>,  <28.198895, 41.969242, 24.721960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947430, 42.000332, 25.031473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492346, -0.730416, 0.473379,
		0.601979, 0.678566, 0.420916,
		-0.628663, 0.077728, 0.773784,
		27.758831, 42.023651, 25.263609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688040, 42.437492, 24.528818>,  <28.198895, 41.969242, 24.721960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688040, 42.437492, 24.528818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944025, 42.219051, 24.312590>,  <29.097616, 42.087986, 24.182852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944025, 42.219051, 24.312590>,  <28.688040, 42.437492, 24.528818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944025, 42.219051, 24.312590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217601, 0.545901, -0.809099,
		0.736950, 0.635424, 0.230524,
		0.639964, -0.546104, -0.540571,
		29.136015, 42.055222, 24.150419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061619, 42.945015, 24.043652>,  <28.688040, 42.437492, 24.528818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061619, 42.945015, 24.043652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064152, 42.572392, 23.898237>,  <29.065672, 42.348816, 23.810989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064152, 42.572392, 23.898237>,  <29.061619, 42.945015, 24.043652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064152, 42.572392, 23.898237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165974, 0.357521, -0.919038,
		0.986110, 0.066159, -0.152350,
		0.006334, -0.931559, -0.363536,
		29.066051, 42.292923, 23.789177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462763, 42.873356, 23.424734>,  <29.061619, 42.945015, 24.043652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462763, 42.873356, 23.424734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211061, 42.563728, 23.396845>,  <29.060041, 42.377953, 23.380112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211061, 42.563728, 23.396845>,  <29.462763, 42.873356, 23.424734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211061, 42.563728, 23.396845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228195, 0.269768, -0.935496,
		0.742946, -0.572752, -0.346390,
		-0.629252, -0.774067, -0.069724,
		29.022285, 42.331509, 23.375927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758791, 42.588379, 22.920080>,  <29.462763, 42.873356, 23.424734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758791, 42.588379, 22.920080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387951, 42.439346, 22.936415>,  <29.165447, 42.349926, 22.946215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387951, 42.439346, 22.936415>,  <29.758791, 42.588379, 22.920080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387951, 42.439346, 22.936415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108383, 0.162193, -0.980789,
		0.358802, -0.913715, -0.190751,
		-0.927100, -0.372583, 0.040836,
		29.109821, 42.327572, 22.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728426, 42.330830, 22.309011>,  <29.758791, 42.588379, 22.920080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728426, 42.330830, 22.309011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338926, 42.301289, 22.395136>,  <29.105227, 42.283566, 22.446810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338926, 42.301289, 22.395136>,  <29.728426, 42.330830, 22.309011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338926, 42.301289, 22.395136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226189, 0.207870, -0.951645,
		0.025520, -0.975365, -0.219117,
		-0.973749, -0.073847, 0.215312,
		29.046803, 42.279133, 22.459730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408310, 41.858078, 21.848232>,  <29.728426, 42.330830, 22.309011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408310, 41.858078, 21.848232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114107, 42.099869, 21.970634>,  <28.937586, 42.244942, 22.044075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114107, 42.099869, 21.970634>,  <29.408310, 41.858078, 21.848232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114107, 42.099869, 21.970634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215519, 0.219451, -0.951521,
		-0.642324, -0.765800, -0.031131,
		-0.735507, 0.604476, 0.306004,
		28.893456, 42.281212, 22.062435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873726, 41.593143, 21.506128>,  <29.408310, 41.858078, 21.848232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873726, 41.593143, 21.506128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.821001, 41.979122, 21.596910>,  <28.789366, 42.210709, 21.651381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.821001, 41.979122, 21.596910>,  <28.873726, 41.593143, 21.506128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821001, 41.979122, 21.596910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289432, 0.181513, -0.939831,
		-0.948079, -0.189570, 0.255360,
		-0.131812, 0.964943, 0.226956,
		28.781458, 42.268604, 21.664997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187906, 41.783436, 21.172979>,  <28.873726, 41.593143, 21.506128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187906, 41.783436, 21.172979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374043, 42.131062, 21.240143>,  <28.485723, 42.339638, 21.280441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374043, 42.131062, 21.240143>,  <28.187906, 41.783436, 21.172979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374043, 42.131062, 21.240143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123926, 0.251799, -0.959812,
		-0.876413, 0.425831, 0.224872,
		0.465340, 0.869060, 0.167909,
		28.513645, 42.391781, 21.290516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873976, 42.310829, 20.829952>,  <28.187906, 41.783436, 21.172979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873976, 42.310829, 20.829952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239717, 42.468147, 20.868475>,  <28.459162, 42.562538, 20.891588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239717, 42.468147, 20.868475>,  <27.873976, 42.310829, 20.829952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239717, 42.468147, 20.868475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036741, 0.317454, -0.947562,
		-0.403244, 0.862869, 0.304716,
		0.914355, 0.393294, 0.096308,
		28.514025, 42.586136, 20.897367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.062984, 36.163280, 33.675446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264465, 36.403252, 33.426811>,  <36.385353, 36.547234, 33.277630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264465, 36.403252, 33.426811>,  <36.062984, 36.163280, 33.675446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264465, 36.403252, 33.426811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844675, 0.191151, -0.499986,
		-0.181137, 0.776885, 0.603025,
		0.503700, 0.599926, -0.621590,
		36.415577, 36.583229, 33.240334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555576, 36.675507, 33.352879>,  <36.062984, 36.163280, 33.675446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555576, 36.675507, 33.352879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869900, 36.657791, 33.106125>,  <36.058495, 36.647163, 32.958073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869900, 36.657791, 33.106125>,  <35.555576, 36.675507, 33.352879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869900, 36.657791, 33.106125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599666, 0.189553, -0.777477,
		0.151366, 0.980871, 0.122393,
		0.785805, -0.044289, -0.616887,
		36.105640, 36.644505, 32.921059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395611, 37.259197, 32.776535>,  <35.555576, 36.675507, 33.352879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395611, 37.259197, 32.776535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680168, 37.021996, 32.625664>,  <35.850903, 36.879673, 32.535141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680168, 37.021996, 32.625664>,  <35.395611, 37.259197, 32.776535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680168, 37.021996, 32.625664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429853, 0.057451, -0.901070,
		0.556006, 0.803148, -0.214034,
		0.711396, -0.593003, -0.377178,
		35.893585, 36.844093, 32.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600498, 37.575020, 32.114098>,  <35.395611, 37.259197, 32.776535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600498, 37.575020, 32.114098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711414, 37.193871, 32.064865>,  <35.777966, 36.965183, 32.035324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711414, 37.193871, 32.064865>,  <35.600498, 37.575020, 32.114098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711414, 37.193871, 32.064865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328599, 0.026324, -0.944103,
		0.902846, 0.302239, -0.305812,
		0.277294, -0.952869, -0.123082,
		35.794601, 36.908009, 32.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993347, 37.608547, 31.477272>,  <35.600498, 37.575020, 32.114098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993347, 37.608547, 31.477272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865425, 37.234165, 31.536213>,  <35.788670, 37.009537, 31.571577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865425, 37.234165, 31.536213>,  <35.993347, 37.608547, 31.477272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865425, 37.234165, 31.536213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338940, -0.032215, -0.940256,
		0.884784, -0.350644, -0.306930,
		-0.319807, -0.935955, 0.147350,
		35.769482, 36.953381, 31.580418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225708, 37.171619, 30.917088>,  <35.993347, 37.608547, 31.477272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225708, 37.171619, 30.917088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938927, 36.947273, 31.082691>,  <35.766857, 36.812664, 31.182053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938927, 36.947273, 31.082691>,  <36.225708, 37.171619, 30.917088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938927, 36.947273, 31.082691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389937, -0.169634, -0.905082,
		0.577861, -0.810341, -0.097083,
		-0.716956, -0.560868, 0.414007,
		35.723839, 36.779015, 31.206894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057095, 36.774422, 30.372299>,  <36.225708, 37.171619, 30.917088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057095, 36.774422, 30.372299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748627, 36.773960, 30.626951>,  <35.563545, 36.773682, 30.779741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748627, 36.773960, 30.626951>,  <36.057095, 36.774422, 30.372299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748627, 36.773960, 30.626951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634178, 0.089061, -0.768041,
		-0.055811, -0.996026, -0.069414,
		-0.771171, -0.001156, 0.636628,
		35.517277, 36.773613, 30.817940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530804, 36.372387, 30.103180>,  <36.057095, 36.774422, 30.372299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530804, 36.372387, 30.103180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324249, 36.572422, 30.381247>,  <35.200317, 36.692444, 30.548086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324249, 36.572422, 30.381247>,  <35.530804, 36.372387, 30.103180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324249, 36.572422, 30.381247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819232, -0.052055, -0.571095,
		-0.249412, -0.864407, 0.436570,
		-0.516384, 0.500090, 0.695167,
		35.169334, 36.722450, 30.589796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944279, 35.985146, 30.171143>,  <35.530804, 36.372387, 30.103180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944279, 35.985146, 30.171143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870037, 36.360245, 30.288570>,  <34.825493, 36.585304, 30.359026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870037, 36.360245, 30.288570>,  <34.944279, 35.985146, 30.171143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870037, 36.360245, 30.288570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851593, -0.004456, -0.524184,
		-0.490244, -0.347293, 0.799405,
		-0.185608, 0.937746, 0.293568,
		34.814354, 36.641567, 30.376640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271809, 35.961617, 30.392738>,  <34.944279, 35.985146, 30.171143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271809, 35.961617, 30.392738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335438, 36.351326, 30.328888>,  <34.373615, 36.585152, 30.290577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335438, 36.351326, 30.328888>,  <34.271809, 35.961617, 30.392738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335438, 36.351326, 30.328888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862591, 0.058509, -0.502508,
		-0.480241, 0.217632, 0.849709,
		0.159077, 0.974276, -0.159628,
		34.383160, 36.643608, 30.281000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562023, 36.276688, 30.204340>,  <34.271809, 35.961617, 30.392738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562023, 36.276688, 30.204340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821819, 36.563530, 30.103212>,  <33.977695, 36.735638, 30.042536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821819, 36.563530, 30.103212>,  <33.562023, 36.276688, 30.204340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821819, 36.563530, 30.103212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728989, 0.492726, -0.475181,
		-0.216187, 0.492926, 0.842785,
		0.649491, 0.717109, -0.252817,
		34.016666, 36.778664, 30.027367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274597, 37.022339, 30.320177>,  <33.562023, 36.276688, 30.204340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274597, 37.022339, 30.320177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557724, 37.065849, 30.040991>,  <33.727600, 37.091957, 29.873478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557724, 37.065849, 30.040991>,  <33.274597, 37.022339, 30.320177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557724, 37.065849, 30.040991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612287, 0.587216, -0.529417,
		0.352270, 0.802088, 0.482245,
		0.707821, 0.108775, -0.697967,
		33.770069, 37.098480, 29.831600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778198, 37.420338, 30.790915>,  <33.274597, 37.022339, 30.320177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778198, 37.420338, 30.790915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477123, 37.174133, 30.884384>,  <32.296478, 37.026409, 30.940466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477123, 37.174133, 30.884384>,  <32.778198, 37.420338, 30.790915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477123, 37.174133, 30.884384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426395, -0.185308, 0.885352,
		-0.501644, 0.766032, 0.401931,
		-0.752689, -0.615513, 0.233674,
		32.251316, 36.989479, 30.954487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638390, 37.559887, 31.441500>,  <32.778198, 37.420338, 30.790915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638390, 37.559887, 31.441500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450047, 37.207085, 31.433800>,  <32.337040, 36.995403, 31.429180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450047, 37.207085, 31.433800>,  <32.638390, 37.559887, 31.441500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450047, 37.207085, 31.433800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233229, -0.145496, 0.961476,
		-0.850824, 0.448224, 0.274215,
		-0.470854, -0.882001, -0.019252,
		32.308792, 36.942486, 31.428024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152439, 37.531982, 32.039925>,  <32.638390, 37.559887, 31.441500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152439, 37.531982, 32.039925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207836, 37.158699, 31.907291>,  <32.241074, 36.934731, 31.827711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207836, 37.158699, 31.907291>,  <32.152439, 37.531982, 32.039925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207836, 37.158699, 31.907291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360032, -0.264462, 0.894672,
		-0.922604, -0.243284, 0.299358,
		0.138491, -0.933206, -0.331583,
		32.249382, 36.878738, 31.807816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910648, 37.095306, 32.554043>,  <32.152439, 37.531982, 32.039925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910648, 37.095306, 32.554043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166599, 36.871891, 32.342918>,  <32.320171, 36.737843, 32.216244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166599, 36.871891, 32.342918>,  <31.910648, 37.095306, 32.554043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166599, 36.871891, 32.342918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368041, -0.380206, 0.848522,
		-0.674614, -0.737207, -0.037719,
		0.639877, -0.558542, -0.527814,
		32.358562, 36.704327, 32.184574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015259, 36.548306, 32.899261>,  <31.910648, 37.095306, 32.554043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015259, 36.548306, 32.899261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333881, 36.510044, 32.660480>,  <32.525055, 36.487087, 32.517212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333881, 36.510044, 32.660480>,  <32.015259, 36.548306, 32.899261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333881, 36.510044, 32.660480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500798, -0.448737, 0.740160,
		-0.338673, -0.888530, -0.309540,
		0.796556, -0.095655, -0.596949,
		32.572849, 36.481346, 32.481396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239971, 35.972065, 33.085556>,  <32.015259, 36.548306, 32.899261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239971, 35.972065, 33.085556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558876, 36.135605, 32.907921>,  <32.750217, 36.233730, 32.801342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558876, 36.135605, 32.907921>,  <32.239971, 35.972065, 33.085556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558876, 36.135605, 32.907921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568378, -0.260721, 0.780366,
		0.203273, -0.874564, -0.440247,
		0.797262, 0.408854, -0.444086,
		32.798054, 36.258263, 32.774696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723686, 35.460701, 33.089012>,  <32.239971, 35.972065, 33.085556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723686, 35.460701, 33.089012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906509, 35.815018, 33.056850>,  <33.016205, 36.027607, 33.037552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906509, 35.815018, 33.056850>,  <32.723686, 35.460701, 33.089012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906509, 35.815018, 33.056850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701563, -0.303473, 0.644758,
		0.546722, -0.351103, -0.760146,
		0.457060, 0.885794, -0.080405,
		33.043629, 36.080757, 33.032730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468079, 35.342525, 33.084015>,  <32.723686, 35.460701, 33.089012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468079, 35.342525, 33.084015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436394, 35.728325, 33.184780>,  <33.417381, 35.959805, 33.245239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436394, 35.728325, 33.184780>,  <33.468079, 35.342525, 33.084015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436394, 35.728325, 33.184780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748961, -0.109190, 0.653556,
		0.657862, 0.240445, -0.713725,
		-0.079213, 0.964502, 0.251916,
		33.412628, 36.017677, 33.260353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027153, 35.390915, 33.347916>,  <33.468079, 35.342525, 33.084015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027153, 35.390915, 33.347916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855572, 35.726009, 33.483082>,  <33.752625, 35.927067, 33.564182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855572, 35.726009, 33.483082>,  <34.027153, 35.390915, 33.347916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855572, 35.726009, 33.483082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613831, -0.004128, 0.789427,
		0.662729, 0.546053, -0.512460,
		-0.428954, 0.837740, 0.337920,
		33.726887, 35.977333, 33.584457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558189, 35.871422, 33.485523>,  <34.027153, 35.390915, 33.347916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558189, 35.871422, 33.485523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236828, 35.931488, 33.716000>,  <34.044010, 35.967529, 33.854286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236828, 35.931488, 33.716000>,  <34.558189, 35.871422, 33.485523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236828, 35.931488, 33.716000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580656, -0.016702, 0.813977,
		0.131856, 0.988520, -0.073776,
		-0.803400, 0.150166, 0.576192,
		33.995808, 35.976540, 33.888859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842793, 36.348869, 33.917004>,  <34.558189, 35.871422, 33.485523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842793, 36.348869, 33.917004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525608, 36.198143, 34.108513>,  <34.335297, 36.107708, 34.223419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525608, 36.198143, 34.108513>,  <34.842793, 36.348869, 33.917004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525608, 36.198143, 34.108513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481510, 0.093908, 0.871395,
		-0.373315, 0.921517, 0.106975,
		-0.792959, -0.376814, 0.478777,
		34.287720, 36.085098, 34.252148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794064, 36.721634, 34.519928>,  <34.842793, 36.348869, 33.917004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794064, 36.721634, 34.519928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574406, 36.397396, 34.601295>,  <34.442612, 36.202854, 34.650116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574406, 36.397396, 34.601295>,  <34.794064, 36.721634, 34.519928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574406, 36.397396, 34.601295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320407, 0.020598, 0.947056,
		-0.771866, 0.585249, 0.248408,
		-0.549147, -0.810592, 0.203417,
		34.409660, 36.154217, 34.662319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603207, 36.894810, 35.290596>,  <34.794064, 36.721634, 34.519928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603207, 36.894810, 35.290596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497330, 36.514469, 35.226322>,  <34.433804, 36.286263, 35.187759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497330, 36.514469, 35.226322>,  <34.603207, 36.894810, 35.290596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497330, 36.514469, 35.226322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154915, -0.206386, 0.966129,
		-0.951810, 0.230831, 0.201930,
		-0.264688, -0.950853, -0.160682,
		34.417923, 36.229214, 35.178116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992115, 36.744492, 35.694717>,  <34.603207, 36.894810, 35.290596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992115, 36.744492, 35.694717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211094, 36.416439, 35.628159>,  <34.342480, 36.219608, 35.588223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211094, 36.416439, 35.628159>,  <33.992115, 36.744492, 35.694717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211094, 36.416439, 35.628159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210499, -0.057496, 0.975902,
		-0.809936, -0.569278, 0.141162,
		0.547443, -0.820132, -0.166401,
		34.375328, 36.170399, 35.578239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812984, 36.195114, 36.186810>,  <33.992115, 36.744492, 35.694717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812984, 36.195114, 36.186810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195427, 36.173653, 36.071579>,  <34.424892, 36.160774, 36.002441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195427, 36.173653, 36.071579>,  <33.812984, 36.195114, 36.186810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195427, 36.173653, 36.071579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277402, -0.151042, 0.948807,
		-0.094416, -0.987070, -0.129529,
		0.956104, -0.053650, -0.288076,
		34.482258, 36.157558, 35.985157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697731, 36.856464, 36.451759>,  <33.812984, 36.195114, 36.186810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697731, 36.856464, 36.451759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743156, 37.211433, 36.630459>,  <33.770412, 37.424416, 36.737679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743156, 37.211433, 36.630459>,  <33.697731, 36.856464, 36.451759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743156, 37.211433, 36.630459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008754, 0.450539, -0.892714,
		-0.993492, 0.097470, 0.058933,
		0.113564, 0.887420, 0.446753,
		33.777225, 37.477661, 36.764484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046631, 37.150158, 36.455044>,  <33.697731, 36.856464, 36.451759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046631, 37.150158, 36.455044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352688, 37.407700, 36.454052>,  <33.536324, 37.562225, 36.453457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352688, 37.407700, 36.454052>,  <33.046631, 37.150158, 36.455044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352688, 37.407700, 36.454052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230456, 0.270269, -0.934797,
		-0.601202, 0.715826, 0.355175,
		0.765145, 0.643853, -0.002480,
		33.582230, 37.600857, 36.453308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745354, 37.813953, 36.440399>,  <33.046631, 37.150158, 36.455044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745354, 37.813953, 36.440399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120571, 37.832989, 36.303101>,  <33.345699, 37.844410, 36.220722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120571, 37.832989, 36.303101>,  <32.745354, 37.813953, 36.440399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120571, 37.832989, 36.303101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319184, 0.504319, -0.802362,
		0.134925, 0.862205, 0.488259,
		0.938039, 0.047586, -0.343247,
		33.401981, 37.847263, 36.200127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955482, 38.565887, 36.373619>,  <32.745354, 37.813953, 36.440399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955482, 38.565887, 36.373619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202145, 38.366581, 36.129829>,  <33.350143, 38.246998, 35.983555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202145, 38.366581, 36.129829>,  <32.955482, 38.565887, 36.373619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202145, 38.366581, 36.129829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271826, 0.591816, -0.758858,
		0.738814, 0.633625, 0.229504,
		0.616656, -0.498270, -0.609478,
		33.387142, 38.217098, 35.946987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194706, 39.118248, 35.935368>,  <32.955482, 38.565887, 36.373619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194706, 39.118248, 35.935368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292099, 38.781227, 35.743191>,  <33.350536, 38.579014, 35.627884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292099, 38.781227, 35.743191>,  <33.194706, 39.118248, 35.935368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292099, 38.781227, 35.743191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255281, 0.422216, -0.869808,
		0.935706, 0.334435, -0.112282,
		0.243487, -0.842548, -0.480445,
		33.365147, 38.528461, 35.599056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554661, 39.355122, 35.326450>,  <33.194706, 39.118248, 35.935368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554661, 39.355122, 35.326450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427937, 38.985836, 35.239452>,  <33.351902, 38.764263, 35.187256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427937, 38.985836, 35.239452>,  <33.554661, 39.355122, 35.326450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427937, 38.985836, 35.239452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259270, 0.304863, -0.916427,
		0.912365, -0.233946, -0.335946,
		-0.316812, -0.923216, -0.217491,
		33.332893, 38.708870, 35.174206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952488, 39.200932, 34.642467>,  <33.554661, 39.355122, 35.326450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952488, 39.200932, 34.642467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652828, 38.937424, 34.670208>,  <33.473034, 38.779320, 34.686852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652828, 38.937424, 34.670208>,  <33.952488, 39.200932, 34.642467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652828, 38.937424, 34.670208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244742, 0.177975, -0.953114,
		0.615535, -0.730994, -0.294557,
		-0.749144, -0.658766, 0.069355,
		33.428085, 38.739796, 34.691013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979450, 38.689621, 34.085598>,  <33.952488, 39.200932, 34.642467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979450, 38.689621, 34.085598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594494, 38.689674, 34.194263>,  <33.363518, 38.689705, 34.259460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594494, 38.689674, 34.194263>,  <33.979450, 38.689621, 34.085598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594494, 38.689674, 34.194263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261492, 0.270573, -0.926505,
		-0.073625, -0.962699, -0.260364,
		-0.962393, 0.000131, 0.271659,
		33.305775, 38.689713, 34.275761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693333, 38.595657, 33.468517>,  <33.979450, 38.689621, 34.085598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693333, 38.595657, 33.468517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405331, 38.706829, 33.722870>,  <33.232529, 38.773533, 33.875481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405331, 38.706829, 33.722870>,  <33.693333, 38.595657, 33.468517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405331, 38.706829, 33.722870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473782, 0.472655, -0.743053,
		-0.507070, -0.836272, -0.208636,
		-0.720007, 0.277932, 0.635880,
		33.189327, 38.790207, 33.913635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100952, 38.364395, 33.135765>,  <33.693333, 38.595657, 33.468517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100952, 38.364395, 33.135765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989750, 38.652130, 33.390408>,  <32.923027, 38.824772, 33.543194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989750, 38.652130, 33.390408>,  <33.100952, 38.364395, 33.135765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989750, 38.652130, 33.390408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547394, 0.425954, -0.720363,
		-0.789349, -0.548740, 0.275342,
		-0.278009, 0.719339, 0.636603,
		32.906345, 38.867931, 33.581387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476254, 38.497650, 32.966736>,  <33.100952, 38.364395, 33.135765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476254, 38.497650, 32.966736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570255, 38.834133, 33.161522>,  <32.626656, 39.036022, 33.278393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570255, 38.834133, 33.161522>,  <32.476254, 38.497650, 32.966736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570255, 38.834133, 33.161522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541032, 0.529422, -0.653450,
		-0.807499, -0.109898, 0.579541,
		0.235009, 0.841210, 0.486966,
		32.640759, 39.086494, 33.307613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887842, 38.735558, 32.951912>,  <32.476254, 38.497650, 32.966736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887842, 38.735558, 32.951912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171967, 39.013817, 32.994858>,  <32.342442, 39.180775, 33.020626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171967, 39.013817, 32.994858>,  <31.887842, 38.735558, 32.951912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171967, 39.013817, 32.994858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412883, 0.535305, -0.736869,
		-0.570074, 0.479080, 0.667456,
		0.710312, 0.695651, 0.107360,
		32.385059, 39.222511, 33.027065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577991, 39.373611, 32.882393>,  <31.887842, 38.735558, 32.951912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577991, 39.373611, 32.882393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960228, 39.476688, 32.825203>,  <32.189571, 39.538536, 32.790890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960228, 39.476688, 32.825203>,  <31.577991, 39.373611, 32.882393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960228, 39.476688, 32.825203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273823, 0.597081, -0.753999,
		-0.108935, 0.759664, 0.641127,
		0.955591, 0.257692, -0.142971,
		32.246906, 39.553997, 32.782310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585587, 40.041351, 32.945629>,  <31.577991, 39.373611, 32.882393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585587, 40.041351, 32.945629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922972, 39.969433, 32.743145>,  <32.125404, 39.926281, 32.621655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922972, 39.969433, 32.743145>,  <31.585587, 40.041351, 32.945629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922972, 39.969433, 32.743145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301165, 0.622038, -0.722751,
		0.444827, 0.762064, 0.470517,
		0.843462, -0.179796, -0.506207,
		32.176010, 39.915493, 32.591282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899752, 40.590286, 32.873688>,  <31.585587, 40.041351, 32.945629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899752, 40.590286, 32.873688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055576, 40.399021, 32.558826>,  <32.149071, 40.284264, 32.369911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055576, 40.399021, 32.558826>,  <31.899752, 40.590286, 32.873688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055576, 40.399021, 32.558826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100037, 0.827643, -0.552269,
		0.915552, 0.293886, 0.274583,
		0.389560, -0.478162, -0.787149,
		32.172443, 40.255573, 32.322681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272076, 41.104000, 32.601643>,  <31.899752, 40.590286, 32.873688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272076, 41.104000, 32.601643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266613, 40.829296, 32.310944>,  <32.263336, 40.664474, 32.136524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266613, 40.829296, 32.310944>,  <32.272076, 41.104000, 32.601643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266613, 40.829296, 32.310944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016545, 0.726875, -0.686570,
		0.999770, 0.002648, -0.021289,
		-0.013657, -0.686765, -0.726751,
		32.262516, 40.623268, 32.092918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693729, 41.354424, 32.025566>,  <32.272076, 41.104000, 32.601643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693729, 41.354424, 32.025566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490822, 41.080921, 31.815744>,  <32.369076, 40.916821, 31.689852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490822, 41.080921, 31.815744>,  <32.693729, 41.354424, 32.025566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490822, 41.080921, 31.815744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059880, 0.635172, -0.770046,
		0.859706, -0.359209, -0.363146,
		-0.507267, -0.683758, -0.524552,
		32.338642, 40.875793, 31.658379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129627, 41.181957, 31.394085>,  <32.693729, 41.354424, 32.025566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129627, 41.181957, 31.394085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743198, 41.084473, 31.359873>,  <32.511341, 41.025982, 31.339346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743198, 41.084473, 31.359873>,  <33.129627, 41.181957, 31.394085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743198, 41.084473, 31.359873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100048, 0.658397, -0.745992,
		0.238117, -0.712123, -0.660440,
		-0.966069, -0.243709, -0.085529,
		32.453377, 41.011360, 31.334213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011234, 41.333569, 30.745476>,  <33.129627, 41.181957, 31.394085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011234, 41.333569, 30.745476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633888, 41.305874, 30.875254>,  <32.407478, 41.289257, 30.953121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633888, 41.305874, 30.875254>,  <33.011234, 41.333569, 30.745476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633888, 41.305874, 30.875254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311835, 0.518803, -0.795991,
		-0.113215, -0.852086, -0.511011,
		-0.943367, -0.069233, 0.324447,
		32.350880, 41.285103, 30.972588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541695, 41.179863, 30.126823>,  <33.011234, 41.333569, 30.745476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541695, 41.179863, 30.126823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318520, 41.343525, 30.415628>,  <32.184616, 41.441723, 30.588911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318520, 41.343525, 30.415628>,  <32.541695, 41.179863, 30.126823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318520, 41.343525, 30.415628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461476, 0.570138, -0.679693,
		-0.689745, -0.712416, -0.129286,
		-0.557935, 0.409152, 0.722013,
		32.151138, 41.466270, 30.632233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943916, 41.352692, 29.725489>,  <32.541695, 41.179863, 30.126823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943916, 41.352692, 29.725489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886593, 41.545982, 30.070963>,  <31.852198, 41.661957, 30.278248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886593, 41.545982, 30.070963>,  <31.943916, 41.352692, 29.725489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886593, 41.545982, 30.070963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447332, 0.746831, -0.492075,
		-0.882812, -0.456873, 0.109135,
		-0.143310, 0.483229, 0.863685,
		31.843599, 41.690952, 30.330069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185057, 41.576363, 29.783653>,  <31.943916, 41.352692, 29.725489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185057, 41.576363, 29.783653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401045, 41.812550, 30.023579>,  <31.530638, 41.954262, 30.167534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401045, 41.812550, 30.023579>,  <31.185057, 41.576363, 29.783653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401045, 41.812550, 30.023579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475716, 0.801995, -0.361246,
		-0.694354, -0.090279, 0.713949,
		0.539970, 0.590469, 0.599815,
		31.563036, 41.989689, 30.203524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731453, 42.005516, 30.297455>,  <31.185057, 41.576363, 29.783653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731453, 42.005516, 30.297455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062574, 42.218037, 30.225389>,  <31.261248, 42.345551, 30.182150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062574, 42.218037, 30.225389>,  <30.731453, 42.005516, 30.297455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062574, 42.218037, 30.225389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561002, 0.781653, -0.272572,
		-0.003993, 0.326708, 0.945117,
		0.827805, 0.531301, -0.180163,
		31.310915, 42.377426, 30.171341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671844, 42.681362, 30.647165>,  <30.731453, 42.005516, 30.297455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671844, 42.681362, 30.647165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.929848, 42.762459, 30.352449>,  <31.084650, 42.811115, 30.175619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.929848, 42.762459, 30.352449>,  <30.671844, 42.681362, 30.647165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929848, 42.762459, 30.352449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584021, 0.752590, -0.304183,
		0.492832, 0.626502, 0.603831,
		0.645009, 0.202739, -0.736791,
		31.123350, 42.823280, 30.131413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602097, 43.417107, 30.607126>,  <30.671844, 42.681362, 30.647165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602097, 43.417107, 30.607126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763798, 43.267876, 30.273087>,  <30.860819, 43.178337, 30.072662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763798, 43.267876, 30.273087>,  <30.602097, 43.417107, 30.607126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763798, 43.267876, 30.273087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605946, 0.574679, -0.550067,
		0.685133, 0.728391, 0.006249,
		0.404255, -0.373082, -0.835097,
		30.885075, 43.155952, 30.022558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640753, 43.928810, 30.220213>,  <30.602097, 43.417107, 30.607126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640753, 43.928810, 30.220213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684185, 43.641521, 29.945299>,  <30.710245, 43.469147, 29.780350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684185, 43.641521, 29.945299>,  <30.640753, 43.928810, 30.220213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684185, 43.641521, 29.945299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588862, 0.510548, -0.626564,
		0.800907, 0.472750, -0.367500,
		0.108581, -0.718226, -0.687286,
		30.716759, 43.426052, 29.739113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922514, 44.219757, 29.508421>,  <30.640753, 43.928810, 30.220213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922514, 44.219757, 29.508421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.705652, 43.887589, 29.457083>,  <30.575535, 43.688290, 29.426279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.705652, 43.887589, 29.457083>,  <30.922514, 44.219757, 29.508421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705652, 43.887589, 29.457083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456369, 0.419250, -0.784829,
		0.705545, -0.366927, -0.606276,
		-0.542156, -0.830417, -0.128346,
		30.543005, 43.638462, 29.418579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422691, 44.656342, 29.027012>,  <30.922514, 44.219757, 29.508421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422691, 44.656342, 29.027012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478516, 45.051491, 29.054220>,  <31.512011, 45.288582, 29.070545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478516, 45.051491, 29.054220>,  <31.422691, 44.656342, 29.027012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478516, 45.051491, 29.054220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645303, -0.142839, 0.750454,
		0.751071, -0.060839, -0.657413,
		0.139561, 0.987874, 0.068022,
		31.520384, 45.347855, 29.074627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134418, 44.770550, 28.942791>,  <31.422691, 44.656342, 29.027012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134418, 44.770550, 28.942791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977837, 45.081539, 29.139685>,  <31.883886, 45.268135, 29.257820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977837, 45.081539, 29.139685>,  <32.134418, 44.770550, 28.942791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977837, 45.081539, 29.139685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733713, -0.059123, 0.676883,
		0.555362, 0.626128, -0.547299,
		-0.391457, 0.777475, 0.492233,
		31.860399, 45.314781, 29.287355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647285, 45.102585, 29.175982>,  <32.134418, 44.770550, 28.942791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647285, 45.102585, 29.175982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386219, 45.267067, 29.430523>,  <32.229580, 45.365757, 29.583248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386219, 45.267067, 29.430523>,  <32.647285, 45.102585, 29.175982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386219, 45.267067, 29.430523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585372, -0.259556, 0.768095,
		0.481012, 0.873810, -0.071304,
		-0.652661, 0.411202, 0.636354,
		32.190422, 45.390427, 29.621429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071537, 45.545639, 29.630873>,  <32.647285, 45.102585, 29.175982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071537, 45.545639, 29.630873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731594, 45.451996, 29.819738>,  <32.527630, 45.395809, 29.933058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731594, 45.451996, 29.819738>,  <33.071537, 45.545639, 29.630873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731594, 45.451996, 29.819738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521423, -0.243343, 0.817865,
		-0.076571, 0.941264, 0.328875,
		-0.849856, -0.234107, 0.472163,
		32.476639, 45.381763, 29.961388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171276, 45.684387, 30.350315>,  <33.071537, 45.545639, 29.630873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171276, 45.684387, 30.350315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850071, 45.448002, 30.381121>,  <32.657349, 45.306171, 30.399605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850071, 45.448002, 30.381121>,  <33.171276, 45.684387, 30.350315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850071, 45.448002, 30.381121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426920, -0.480254, 0.766222,
		-0.415820, 0.648167, 0.637945,
		-0.803015, -0.590962, 0.077016,
		32.609165, 45.270714, 30.404226>
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
