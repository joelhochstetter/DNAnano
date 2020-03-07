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
	<5.376850, 4.512064, 3.801823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.415199, 4.114563, 3.824677>,  <5.438209, 3.876062, 3.838388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.415199, 4.114563, 3.824677>,  <5.376850, 4.512064, 3.801823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.415199, 4.114563, 3.824677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429355, -0.093070, -0.898327,
		0.898033, 0.061595, -0.435595,
		0.095873, -0.993752, 0.057133,
		5.443961, 3.816437, 3.841817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.623439, 4.271287, 3.189940>,  <5.376850, 4.512064, 3.801823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.623439, 4.271287, 3.189940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.418297, 3.977211, 3.367241>,  <5.295211, 3.800765, 3.473622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.418297, 3.977211, 3.367241>,  <5.623439, 4.271287, 3.189940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.418297, 3.977211, 3.367241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606643, -0.054966, -0.793072,
		0.607423, -0.675628, -0.417809,
		-0.512856, -0.735191, 0.443253,
		5.264440, 3.756654, 3.500217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.653461, 3.723044, 2.750892>,  <5.623439, 4.271287, 3.189940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.653461, 3.723044, 2.750892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.325333, 3.679031, 2.975380>,  <5.128456, 3.652624, 3.110072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.325333, 3.679031, 2.975380>,  <5.653461, 3.723044, 2.750892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.325333, 3.679031, 2.975380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571903, 0.158802, -0.804804,
		-0.000571, -0.981160, -0.193195,
		-0.820321, -0.110029, 0.561219,
		5.079237, 3.646022, 3.143746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.273459, 3.339119, 2.402189>,  <5.653461, 3.723044, 2.750892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.273459, 3.339119, 2.402189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.002029, 3.496315, 2.650414>,  <4.839171, 3.590632, 2.799348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.002029, 3.496315, 2.650414>,  <5.273459, 3.339119, 2.402189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.002029, 3.496315, 2.650414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642828, 0.091046, -0.760580,
		-0.355399, -0.915025, 0.190843,
		-0.678574, 0.392989, 0.620561,
		4.798457, 3.614212, 2.836582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.584253, 3.013906, 2.230333>,  <5.273459, 3.339119, 2.402189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.584253, 3.013906, 2.230333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.512962, 3.355606, 2.425674>,  <4.470188, 3.560627, 2.542879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.512962, 3.355606, 2.425674>,  <4.584253, 3.013906, 2.230333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.512962, 3.355606, 2.425674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692360, 0.243786, -0.679122,
		-0.699195, -0.459154, 0.548000,
		-0.178227, 0.854252, 0.488354,
		4.459494, 3.611881, 2.572181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.849661, 3.041547, 2.319246>,  <4.584253, 3.013906, 2.230333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.849661, 3.041547, 2.319246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.000259, 3.411987, 2.309563>,  <4.090619, 3.634252, 2.303753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.000259, 3.411987, 2.309563>,  <3.849661, 3.041547, 2.319246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.000259, 3.411987, 2.309563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604316, 0.225704, -0.764107,
		-0.702177, 0.302313, 0.644635,
		0.376496, 0.926102, -0.024209,
		4.113208, 3.689818, 2.302300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.340304, 3.557444, 2.446648>,  <3.849661, 3.041547, 2.319246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.340304, 3.557444, 2.446648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.624489, 3.689629, 2.198120>,  <3.795000, 3.768939, 2.049004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.624489, 3.689629, 2.198120>,  <3.340304, 3.557444, 2.446648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.624489, 3.689629, 2.198120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690434, 0.156475, -0.706270,
		-0.136174, 0.930758, 0.339331,
		0.710463, 0.330461, -0.621319,
		3.837628, 3.788767, 2.011724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.157578, 4.162696, 2.254720>,  <3.340304, 3.557444, 2.446648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.157578, 4.162696, 2.254720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.411926, 4.033371, 1.974396>,  <3.564536, 3.955776, 1.806201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.411926, 4.033371, 1.974396>,  <3.157578, 4.162696, 2.254720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.411926, 4.033371, 1.974396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712465, 0.103235, -0.694072,
		0.296750, 0.940645, -0.164704,
		0.635872, -0.323312, -0.700811,
		3.602688, 3.936377, 1.764152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.448089, 6.401628, 0.749011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.633823, 6.078247, 0.604347>,  <3.745264, 5.884218, 0.517549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.633823, 6.078247, 0.604347>,  <3.448089, 6.401628, 0.749011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.633823, 6.078247, 0.604347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292886, -0.245205, 0.924171,
		-0.835829, -0.535050, 0.122927,
		0.464335, -0.808453, -0.361658,
		3.773124, 5.835711, 0.495850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.332994, 5.815252, 1.234299>,  <3.448089, 6.401628, 0.749011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.332994, 5.815252, 1.234299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.669437, 5.695297, 1.054253>,  <3.871304, 5.623324, 0.946225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.669437, 5.695297, 1.054253>,  <3.332994, 5.815252, 1.234299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.669437, 5.695297, 1.054253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201130, -0.599110, 0.774993,
		-0.502080, -0.742385, -0.443600,
		0.841108, -0.299887, -0.450117,
		3.921770, 5.605331, 0.919218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.420914, 5.099461, 1.203813>,  <3.332994, 5.815252, 1.234299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.420914, 5.099461, 1.203813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.801201, 5.223282, 1.210915>,  <4.029373, 5.297575, 1.215176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.801201, 5.223282, 1.210915>,  <3.420914, 5.099461, 1.203813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.801201, 5.223282, 1.210915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178591, -0.593512, 0.784760,
		0.253462, -0.742914, -0.619545,
		0.950717, 0.309552, 0.017755,
		4.086416, 5.316147, 1.216241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.826658, 4.563725, 1.202054>,  <3.420914, 5.099461, 1.203813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.826658, 4.563725, 1.202054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.034901, 4.851013, 1.386719>,  <4.159846, 5.023386, 1.497517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.034901, 4.851013, 1.386719>,  <3.826658, 4.563725, 1.202054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.034901, 4.851013, 1.386719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077863, -0.578400, 0.812029,
		0.850240, -0.386800, -0.357041,
		0.520605, 0.718220, 0.461661,
		4.191082, 5.066479, 1.525217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.500608, 4.300538, 1.394730>,  <3.826658, 4.563725, 1.202054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.500608, 4.300538, 1.394730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.354713, 4.566666, 1.655289>,  <4.267176, 4.726342, 1.811624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.354713, 4.566666, 1.655289>,  <4.500608, 4.300538, 1.394730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.354713, 4.566666, 1.655289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232261, -0.612466, 0.755606,
		0.901677, 0.426892, 0.068862,
		-0.364738, 0.665319, 0.651397,
		4.245292, 4.766261, 1.850708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.897313, 4.673207, 1.877573>,  <4.500608, 4.300538, 1.394730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.897313, 4.673207, 1.877573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.536140, 4.608292, 2.036758>,  <4.319437, 4.569343, 2.132270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.536140, 4.608292, 2.036758>,  <4.897313, 4.673207, 1.877573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.536140, 4.608292, 2.036758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416797, -0.556553, 0.718700,
		0.104852, 0.814808, 0.570171,
		-0.902932, -0.162288, 0.397965,
		4.265261, 4.559605, 2.156148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.850261, 4.820393, 2.566558>,  <4.897313, 4.673207, 1.877573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.850261, 4.820393, 2.566558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.564499, 4.544937, 2.516914>,  <4.393042, 4.379664, 2.487128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.564499, 4.544937, 2.516914>,  <4.850261, 4.820393, 2.566558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.564499, 4.544937, 2.516914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311515, -0.471823, 0.824828,
		-0.626566, 0.550599, 0.551594,
		-0.714404, -0.688639, -0.124109,
		4.350178, 4.338346, 2.479682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.290474, 4.796029, 3.098774>,  <4.850261, 4.820393, 2.566558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.290474, 4.796029, 3.098774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.301693, 4.424957, 2.949844>,  <4.308424, 4.202314, 2.860486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.301693, 4.424957, 2.949844>,  <4.290474, 4.796029, 3.098774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.301693, 4.424957, 2.949844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368663, -0.336615, 0.866474,
		-0.929140, -0.161564, 0.332560,
		0.028046, -0.927678, -0.372325,
		4.310107, 4.146654, 2.838147>
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
