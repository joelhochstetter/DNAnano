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
	<3.379469, 5.063032, 2.982481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655624, 4.938030, 3.243465>,  <3.821318, 4.863029, 3.400056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655624, 4.938030, 3.243465>,  <3.379469, 5.063032, 2.982481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655624, 4.938030, 3.243465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528904, -0.833367, 0.160498,
		0.493584, -0.455895, -0.740631,
		0.690388, -0.312503, 0.652461,
		3.862741, 4.844279, 3.439204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.693723, 4.436527, 2.731938>,  <3.379469, 5.063032, 2.982481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.693723, 4.436527, 2.731938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.682106, 4.472107, 3.130183>,  <3.675136, 4.493454, 3.369130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.682106, 4.472107, 3.130183>,  <3.693723, 4.436527, 2.731938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.682106, 4.472107, 3.130183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466412, -0.882161, 0.065207,
		0.884091, -0.462471, 0.067109,
		-0.029044, 0.088949, 0.995613,
		3.673393, 4.498792, 3.428867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.032411, 3.936579, 3.131505>,  <3.693723, 4.436527, 2.731938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.032411, 3.936579, 3.131505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.684021, 4.065903, 3.279490>,  <3.474987, 4.143497, 3.368282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.684021, 4.065903, 3.279490>,  <4.032411, 3.936579, 3.131505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.684021, 4.065903, 3.279490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420356, -0.880179, -0.220422,
		0.254370, -0.347499, 0.902519,
		-0.870975, 0.323310, 0.369964,
		3.422729, 4.162896, 3.390480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.779109, 3.492297, 3.658308>,  <4.032411, 3.936579, 3.131505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.779109, 3.492297, 3.658308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.448807, 3.665916, 3.514235>,  <3.250625, 3.770088, 3.427792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.448807, 3.665916, 3.514235>,  <3.779109, 3.492297, 3.658308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.448807, 3.665916, 3.514235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513216, -0.843100, 0.160600,
		-0.233960, 0.317467, 0.918955,
		-0.825755, 0.434048, -0.360180,
		3.201080, 3.796131, 3.406181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.265914, 3.379193, 4.155931>,  <3.779109, 3.492297, 3.658308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.265914, 3.379193, 4.155931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072151, 3.444401, 3.812122>,  <2.955894, 3.483525, 3.605837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072151, 3.444401, 3.812122>,  <3.265914, 3.379193, 4.155931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072151, 3.444401, 3.812122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614081, -0.763128, 0.201345,
		-0.623102, 0.625348, 0.469771,
		-0.484406, 0.163019, -0.859520,
		2.926829, 3.493306, 3.554266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.627917, 3.224535, 4.328749>,  <3.265914, 3.379193, 4.155931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.627917, 3.224535, 4.328749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641876, 3.179790, 3.931504>,  <2.650252, 3.152944, 3.693158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641876, 3.179790, 3.931504>,  <2.627917, 3.224535, 4.328749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.641876, 3.179790, 3.931504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540866, -0.837727, 0.075351,
		-0.840385, 0.534510, -0.089739,
		0.034901, -0.111861, -0.993111,
		2.652346, 3.146233, 3.633571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.944112, 3.260820, 3.951448>,  <2.627917, 3.224535, 4.328749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.944112, 3.260820, 3.951448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.217522, 3.018456, 3.788641>,  <2.381568, 2.873036, 3.690957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.217522, 3.018456, 3.788641>,  <1.944112, 3.260820, 3.951448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.217522, 3.018456, 3.788641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477564, -0.792930, 0.378410,
		-0.552019, -0.064276, -0.831350,
		0.683525, -0.605912, -0.407017,
		2.422579, 2.836682, 3.666536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.540644, 2.649085, 3.682191>,  <1.944112, 3.260820, 3.951448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.540644, 2.649085, 3.682191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.897049, 2.560314, 3.840606>,  <2.110892, 2.507052, 3.935654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.897049, 2.560314, 3.840606>,  <1.540644, 2.649085, 3.682191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.897049, 2.560314, 3.840606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425806, -0.711066, 0.559531,
		0.157433, -0.667184, -0.728067,
		0.891013, -0.221926, 0.396036,
		2.164353, 2.493736, 3.959416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.007707, 0.396995, 1.783218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.185417, 0.576550, 2.093346>,  <2.292043, 0.684282, 2.279423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.185417, 0.576550, 2.093346>,  <2.007707, 0.396995, 1.783218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.185417, 0.576550, 2.093346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422520, 0.658143, -0.623157,
		-0.789998, 0.604441, 0.102734,
		0.444276, 0.448885, 0.775320,
		2.318700, 0.711215, 2.325942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.890060, 1.080036, 1.863768>,  <2.007707, 0.396995, 1.783218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.890060, 1.080036, 1.863768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.251511, 1.046322, 2.031746>,  <2.468381, 1.026093, 2.132533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.251511, 1.046322, 2.031746>,  <1.890060, 1.080036, 1.863768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.251511, 1.046322, 2.031746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335914, 0.747756, -0.572732,
		-0.265744, 0.658602, 0.704005,
		0.903627, -0.084285, 0.419946,
		2.522599, 1.021036, 2.157730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.154524, 1.785670, 2.169776>,  <1.890060, 1.080036, 1.863768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.154524, 1.785670, 2.169776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.421638, 1.540543, 2.000772>,  <2.581907, 1.393466, 1.899370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.421638, 1.540543, 2.000772>,  <2.154524, 1.785670, 2.169776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.421638, 1.540543, 2.000772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305595, 0.743291, -0.595088,
		0.678729, 0.268274, 0.683634,
		0.667786, -0.612819, -0.422510,
		2.621974, 1.356697, 1.874019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.886149, 1.854318, 2.227267>,  <2.154524, 1.785670, 2.169776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.886149, 1.854318, 2.227267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.827614, 1.691662, 1.866550>,  <2.792492, 1.594068, 1.650120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.827614, 1.691662, 1.866550>,  <2.886149, 1.854318, 2.227267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.827614, 1.691662, 1.866550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311322, 0.846354, -0.432161,
		0.938970, -0.343989, 0.002741,
		-0.146339, -0.406640, -0.901792,
		2.783712, 1.569670, 1.596013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.892513, 2.503670, 2.697903>,  <2.886149, 1.854318, 2.227267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.892513, 2.503670, 2.697903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.619507, 2.678684, 2.932077>,  <2.455703, 2.783693, 3.072582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.619507, 2.678684, 2.932077>,  <2.892513, 2.503670, 2.697903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.619507, 2.678684, 2.932077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437905, 0.886123, -0.151740,
		-0.585161, 0.152800, -0.796391,
		-0.682515, 0.437536, 0.585437,
		2.414752, 2.809945, 3.107708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.620304, 3.113269, 2.330586>,  <2.892513, 2.503670, 2.697903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.620304, 3.113269, 2.330586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616035, 3.142887, 2.729465>,  <2.613474, 3.160658, 2.968793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616035, 3.142887, 2.729465>,  <2.620304, 3.113269, 2.330586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.616035, 3.142887, 2.729465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288336, 0.955123, -0.067836,
		-0.957470, 0.286805, -0.031543,
		-0.010671, 0.074046, 0.997198,
		2.612834, 3.165101, 3.028625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.287411, 3.679152, 2.452214>,  <2.620304, 3.113269, 2.330586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.287411, 3.679152, 2.452214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.479538, 3.612595, 2.796680>,  <2.594814, 3.572660, 3.003361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.479538, 3.612595, 2.796680>,  <2.287411, 3.679152, 2.452214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.479538, 3.612595, 2.796680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440529, 0.894780, -0.072817,
		-0.758439, 0.414344, 0.503080,
		0.480318, -0.166395, 0.861167,
		2.623633, 3.562676, 3.055030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.177808, 4.295469, 2.785364>,  <2.287411, 3.679152, 2.452214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.177808, 4.295469, 2.785364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493393, 4.149704, 2.983250>,  <2.682744, 4.062245, 3.101981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493393, 4.149704, 2.983250>,  <2.177808, 4.295469, 2.785364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.493393, 4.149704, 2.983250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425462, 0.904897, -0.011960,
		-0.443307, 0.219918, 0.868974,
		0.788962, -0.364413, 0.494714,
		2.730082, 4.040380, 3.131664>
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
