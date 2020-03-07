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
	<4.215824, 2.662604, 1.982257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.859432, 2.793512, 2.108147>,  <3.645597, 2.872057, 2.183680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.859432, 2.793512, 2.108147>,  <4.215824, 2.662604, 1.982257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.859432, 2.793512, 2.108147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290299, -0.943574, 0.159356,
		0.349117, 0.050619, 0.935711,
		-0.890979, 0.327270, 0.314724,
		3.592139, 2.891693, 2.202564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.987312, 2.419279, 2.699211>,  <4.215824, 2.662604, 1.982257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.987312, 2.419279, 2.699211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655792, 2.500809, 2.490770>,  <3.456880, 2.549726, 2.365706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655792, 2.500809, 2.490770>,  <3.987312, 2.419279, 2.699211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655792, 2.500809, 2.490770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398890, -0.868324, 0.294789,
		-0.392400, 0.452183, 0.800970,
		-0.828800, 0.203824, -0.521101,
		3.407152, 2.561956, 2.334440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.350752, 2.371155, 3.171339>,  <3.987312, 2.419279, 2.699211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.350752, 2.371155, 3.171339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.235260, 2.321781, 2.791571>,  <3.165965, 2.292157, 2.563710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.235260, 2.321781, 2.791571>,  <3.350752, 2.371155, 3.171339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.235260, 2.321781, 2.791571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442471, -0.862196, 0.246654,
		-0.849032, 0.491308, 0.194326,
		-0.288730, -0.123434, -0.949421,
		3.148641, 2.284751, 2.506744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.653096, 2.085901, 3.196264>,  <3.350752, 2.371155, 3.171339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.653096, 2.085901, 3.196264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.781094, 2.014130, 2.824154>,  <2.857892, 1.971067, 2.600888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.781094, 2.014130, 2.824154>,  <2.653096, 2.085901, 3.196264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.781094, 2.014130, 2.824154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464030, -0.885749, 0.011224,
		-0.826003, 0.428083, -0.366694,
		0.319994, -0.179427, -0.930274,
		2.877092, 1.960302, 2.545072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.108499, 1.765850, 2.773018>,  <2.653096, 2.085901, 3.196264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.108499, 1.765850, 2.773018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.446060, 1.645355, 2.595442>,  <2.648597, 1.573058, 2.488896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.446060, 1.645355, 2.595442>,  <2.108499, 1.765850, 2.773018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.446060, 1.645355, 2.595442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265987, -0.953549, 0.141407,
		-0.465916, -0.001251, -0.884828,
		0.843904, -0.301237, -0.443941,
		2.699231, 1.554984, 2.462260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.929980, 1.312061, 2.277828>,  <2.108499, 1.765850, 2.773018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.929980, 1.312061, 2.277828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.316292, 1.231308, 2.342958>,  <2.548079, 1.182856, 2.382036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.316292, 1.231308, 2.342958>,  <1.929980, 1.312061, 2.277828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.316292, 1.231308, 2.342958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218023, -0.971962, 0.088071,
		0.140480, -0.120557, -0.982716,
		0.965780, -0.201883, 0.162825,
		2.606026, 1.170743, 2.391806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.016606, 0.710316, 1.876987>,  <1.929980, 1.312061, 2.277828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.016606, 0.710316, 1.876987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.312981, 0.729160, 2.144955>,  <2.490805, 0.740467, 2.305736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.312981, 0.729160, 2.144955>,  <2.016606, 0.710316, 1.876987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.312981, 0.729160, 2.144955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125684, -0.970185, 0.207232,
		0.659709, -0.237744, -0.712925,
		0.740937, 0.047110, 0.669921,
		2.535262, 0.743293, 2.345931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.510233, 0.157602, 1.696412>,  <2.016606, 0.710316, 1.876987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.510233, 0.157602, 1.696412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527863, 0.272118, 2.079264>,  <2.538440, 0.340827, 2.308975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527863, 0.272118, 2.079264>,  <2.510233, 0.157602, 1.696412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.527863, 0.272118, 2.079264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071183, -0.954725, 0.288848,
		0.996489, -0.080862, -0.021700,
		0.044074, 0.286289, 0.957129,
		2.541085, 0.358004, 2.366402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.812132, -0.575013, 2.818312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.198273, -0.569122, 2.922527>,  <2.429957, -0.565588, 2.985057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.198273, -0.569122, 2.922527>,  <1.812132, -0.575013, 2.818312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.198273, -0.569122, 2.922527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004073, 0.999135, -0.041380,
		-0.260923, 0.038885, 0.964576,
		0.965351, 0.014726, 0.260539,
		2.487878, -0.564705, 3.000689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.816065, -0.008479, 3.286123>,  <1.812132, -0.575013, 2.818312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.816065, -0.008479, 3.286123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.186989, -0.121937, 3.188435>,  <2.409543, -0.190011, 3.129822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.186989, -0.121937, 3.188435>,  <1.816065, -0.008479, 3.286123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.186989, -0.121937, 3.188435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311055, 0.946906, 0.081320,
		0.208187, -0.151374, 0.966304,
		0.927309, -0.283644, -0.244220,
		2.465182, -0.207030, 3.115169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.318248, 0.314632, 3.568421>,  <1.816065, -0.008479, 3.286123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.318248, 0.314632, 3.568421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.537895, 0.199253, 3.254665>,  <2.669684, 0.130026, 3.066412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.537895, 0.199253, 3.254665>,  <2.318248, 0.314632, 3.568421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.537895, 0.199253, 3.254665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395542, 0.916478, -0.060116,
		0.736216, -0.277248, 0.617349,
		0.549120, -0.288446, -0.784389,
		2.702631, 0.112719, 3.019349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.914346, 0.728687, 3.652018>,  <2.318248, 0.314632, 3.568421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.914346, 0.728687, 3.652018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880104, 0.593506, 3.277113>,  <2.859559, 0.512397, 3.052170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880104, 0.593506, 3.277113>,  <2.914346, 0.728687, 3.652018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.880104, 0.593506, 3.277113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355851, 0.868297, -0.345587,
		0.930614, -0.363109, 0.045931,
		-0.085604, -0.337952, -0.937262,
		2.854423, 0.492120, 2.995934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.516073, 0.926352, 3.182085>,  <2.914346, 0.728687, 3.652018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.516073, 0.926352, 3.182085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.226204, 0.855640, 2.915672>,  <3.052282, 0.813214, 2.755825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.226204, 0.855640, 2.915672>,  <3.516073, 0.926352, 3.182085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.226204, 0.855640, 2.915672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237329, 0.843374, -0.482074,
		0.646934, -0.507415, -0.569216,
		-0.724673, -0.176778, -0.666032,
		3.008802, 0.802607, 2.715863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.831716, 0.995297, 2.528162>,  <3.516073, 0.926352, 3.182085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.831716, 0.995297, 2.528162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.435081, 1.045322, 2.514811>,  <3.197101, 1.075337, 2.506800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.435081, 1.045322, 2.514811>,  <3.831716, 0.995297, 2.528162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.435081, 1.045322, 2.514811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127863, 0.906246, -0.402950,
		-0.020145, -0.403828, -0.914613,
		-0.991587, 0.125062, -0.033378,
		3.137605, 1.082841, 2.504797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.821217, 1.242859, 1.894815>,  <3.831716, 0.995297, 2.528162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.821217, 1.242859, 1.894815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.463310, 1.336433, 2.046955>,  <3.248566, 1.392578, 2.138239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.463310, 1.336433, 2.046955>,  <3.821217, 1.242859, 1.894815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.463310, 1.336433, 2.046955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075886, 0.919058, -0.386749,
		-0.440038, -0.317186, -0.840095,
		-0.894767, 0.233936, 0.380350,
		3.194880, 1.406614, 2.161060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.404002, 1.581206, 1.361958>,  <3.821217, 1.242859, 1.894815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.404002, 1.581206, 1.361958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.258499, 1.708450, 1.712154>,  <3.171198, 1.784797, 1.922272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.258499, 1.708450, 1.712154>,  <3.404002, 1.581206, 1.361958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.258499, 1.708450, 1.712154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110729, 0.947982, -0.298444,
		-0.924889, -0.011618, -0.380059,
		-0.363756, 0.318112, 0.875492,
		3.149372, 1.803884, 1.974802>
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
