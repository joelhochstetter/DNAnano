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
	<0.557345, 3.535095, 4.061930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803532, 3.537941, 4.377182>,  <0.951244, 3.539649, 4.566333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803532, 3.537941, 4.377182>,  <0.557345, 3.535095, 4.061930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.803532, 3.537941, 4.377182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719552, -0.413130, -0.558182,
		0.321629, 0.910644, -0.259387,
		0.615466, 0.007115, 0.788131,
		0.988172, 3.540076, 4.613621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.330216, 3.604299, 3.807565>,  <0.557345, 3.535095, 4.061930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.330216, 3.604299, 3.807565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.391823, 3.467369, 4.178314>,  <1.428787, 3.385211, 4.400764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.391823, 3.467369, 4.178314>,  <1.330216, 3.604299, 3.807565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.391823, 3.467369, 4.178314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840271, -0.448145, -0.305141,
		0.519831, 0.825821, 0.218623,
		0.154017, -0.342324, 0.926873,
		1.438028, 3.364672, 4.456376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.865906, 4.164050, 3.686373>,  <1.330216, 3.604299, 3.807565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.865906, 4.164050, 3.686373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.684036, 4.489243, 3.540863>,  <0.574915, 4.684359, 3.453557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.684036, 4.489243, 3.540863>,  <0.865906, 4.164050, 3.686373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.684036, 4.489243, 3.540863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431466, 0.558358, 0.708571,
		0.779172, 0.165213, -0.604645,
		-0.454674, 0.812982, -0.363774,
		0.547634, 4.733137, 3.431731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.350930, 4.789575, 3.525051>,  <0.865906, 4.164050, 3.686373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.350930, 4.789575, 3.525051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978951, 4.916420, 3.599495>,  <0.755763, 4.992527, 3.644161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978951, 4.916420, 3.599495>,  <1.350930, 4.789575, 3.525051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.978951, 4.916420, 3.599495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329430, 0.493755, 0.804787,
		0.163315, 0.809720, -0.563632,
		-0.929948, 0.317112, 0.186109,
		0.699966, 5.011553, 3.655328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.302836, 5.617113, 3.671123>,  <1.350930, 4.789575, 3.525051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.302836, 5.617113, 3.671123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971294, 5.464470, 3.834770>,  <0.772370, 5.372884, 3.932959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971294, 5.464470, 3.834770>,  <1.302836, 5.617113, 3.671123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971294, 5.464470, 3.834770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245737, 0.408626, 0.878999,
		-0.502609, 0.829096, -0.244916,
		-0.828853, -0.381608, 0.409118,
		0.722638, 5.349988, 3.957506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.087025, 6.212009, 4.130013>,  <1.302836, 5.617113, 3.671123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.087025, 6.212009, 4.130013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.927448, 5.865089, 4.249100>,  <0.831702, 5.656938, 4.320552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.927448, 5.865089, 4.249100>,  <1.087025, 6.212009, 4.130013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.927448, 5.865089, 4.249100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094185, 0.284199, 0.954128,
		-0.912126, 0.408683, -0.031692,
		-0.398943, -0.867300, 0.297717,
		0.807765, 5.604899, 4.338415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.621599, 6.364707, 4.732647>,  <1.087025, 6.212009, 4.130013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.621599, 6.364707, 4.732647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.720600, 5.977379, 4.745888>,  <0.780001, 5.744982, 4.753832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.720600, 5.977379, 4.745888>,  <0.621599, 6.364707, 4.732647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.720600, 5.977379, 4.745888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090129, 0.057026, 0.994296,
		-0.964686, -0.243108, 0.101388,
		0.247503, -0.968321, 0.033101,
		0.794851, 5.686882, 4.755818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.126256, 6.107486, 5.175359>,  <0.621599, 6.364707, 4.732647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.126256, 6.107486, 5.175359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.436073, 5.854530, 5.180534>,  <0.621963, 5.702757, 5.183640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.436073, 5.854530, 5.180534>,  <0.126256, 6.107486, 5.175359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.436073, 5.854530, 5.180534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024997, -0.010165, 0.999636,
		-0.632029, -0.774583, -0.023681,
		0.774542, -0.632390, 0.012938,
		0.668436, 5.664813, 5.184416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.884495, 0.962046, 1.406352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.979576, 0.575363, 1.368454>,  <1.036624, 0.343354, 1.345715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.979576, 0.575363, 1.368454>,  <0.884495, 0.962046, 1.406352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.979576, 0.575363, 1.368454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293241, 0.021572, -0.955795,
		0.926017, 0.254977, -0.278351,
		0.237702, -0.966706, -0.094746,
		1.050887, 0.285351, 1.340030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.416326, 0.957781, 0.749200>,  <0.884495, 0.962046, 1.406352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.416326, 0.957781, 0.749200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.246119, 0.608948, 0.845871>,  <1.143996, 0.399648, 0.903874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.246119, 0.608948, 0.845871>,  <1.416326, 0.957781, 0.749200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.246119, 0.608948, 0.845871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457871, -0.022881, -0.888724,
		0.780571, -0.488823, -0.389565,
		-0.425515, -0.872083, 0.241678,
		1.118465, 0.347323, 0.918374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.734933, 0.422325, 0.414503>,  <1.416326, 0.957781, 0.749200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.734933, 0.422325, 0.414503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.348177, 0.359421, 0.494896>,  <1.116123, 0.321679, 0.543131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.348177, 0.359421, 0.494896>,  <1.734933, 0.422325, 0.414503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.348177, 0.359421, 0.494896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181004, -0.132564, -0.974507,
		0.179893, -0.978620, 0.099710,
		-0.966890, -0.157259, 0.200981,
		1.058110, 0.312243, 0.555190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.607143, -0.257958, 0.232487>,  <1.734933, 0.422325, 0.414503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.607143, -0.257958, 0.232487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329015, 0.028404, 0.207161>,  <1.162138, 0.200222, 0.191966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329015, 0.028404, 0.207161>,  <1.607143, -0.257958, 0.232487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329015, 0.028404, 0.207161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042922, -0.046573, -0.997992,
		-0.717417, -0.696642, 0.001655,
		-0.695321, 0.715905, -0.063314,
		1.120419, 0.243176, 0.188167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.066648, -0.560077, -0.125019>,  <1.607143, -0.257958, 0.232487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.066648, -0.560077, -0.125019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.951580, -0.178581, -0.159958>,  <0.882539, 0.050316, -0.180921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.951580, -0.178581, -0.159958>,  <1.066648, -0.560077, -0.125019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.951580, -0.178581, -0.159958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283320, -0.171866, -0.943500,
		-0.914864, -0.246668, 0.319653,
		-0.287669, 0.953738, -0.087348,
		0.865279, 0.107540, -0.186162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.402957, -0.504265, -0.279267>,  <1.066648, -0.560077, -0.125019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.402957, -0.504265, -0.279267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.529947, -0.151291, -0.418129>,  <0.606142, 0.060494, -0.501446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.529947, -0.151291, -0.418129>,  <0.402957, -0.504265, -0.279267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.529947, -0.151291, -0.418129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544016, -0.130365, -0.828886,
		-0.776695, 0.452010, 0.438671,
		0.317477, 0.882436, -0.347154,
		0.625190, 0.113440, -0.522275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.337569, -0.211040, -0.603688>,  <0.402957, -0.504265, -0.279267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.337569, -0.211040, -0.603688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.001775, -0.037323, -0.724800>,  <0.205381, 0.066907, -0.797468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.001775, -0.037323, -0.724800>,  <-0.337569, -0.211040, -0.603688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.001775, -0.037323, -0.724800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250411, -0.174726, -0.952242,
		-0.466455, 0.883664, -0.039479,
		0.848360, 0.434292, -0.302781,
		0.256283, 0.092965, -0.815634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.514774, 0.341598, -1.035666>,  <-0.337569, -0.211040, -0.603688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.514774, 0.341598, -1.035666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.146884, 0.223961, -1.139679>,  <0.073850, 0.153379, -1.202087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.146884, 0.223961, -1.139679>,  <-0.514774, 0.341598, -1.035666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.146884, 0.223961, -1.139679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298455, -0.093543, -0.949829,
		0.255014, 0.951188, -0.173807,
		0.919724, -0.294093, -0.260032,
		0.129033, 0.135733, -1.217689>
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
