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
	<24.067030, 34.915874, 34.413963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311323, 35.112228, 34.662491>,  <24.457899, 35.230042, 34.811607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311323, 35.112228, 34.662491>,  <24.067030, 34.915874, 34.413963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311323, 35.112228, 34.662491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385180, -0.869736, 0.308540,
		0.691842, 0.050885, -0.720254,
		0.610731, 0.490888, 0.621319,
		24.494543, 35.259495, 34.848888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.713114, 34.812176, 34.256325>,  <24.067030, 34.915874, 34.413963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.713114, 34.812176, 34.256325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667576, 34.860275, 34.650803>,  <24.640253, 34.889133, 34.887489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667576, 34.860275, 34.650803>,  <24.713114, 34.812176, 34.256325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667576, 34.860275, 34.650803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327355, -0.932676, 0.151509,
		0.938018, 0.340084, 0.066819,
		-0.113846, 0.120244, 0.986195,
		24.633423, 34.896347, 34.946663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306528, 34.458218, 34.598679>,  <24.713114, 34.812176, 34.256325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306528, 34.458218, 34.598679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032024, 34.454861, 34.889603>,  <24.867323, 34.452847, 35.064156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032024, 34.454861, 34.889603>,  <25.306528, 34.458218, 34.598679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032024, 34.454861, 34.889603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281895, -0.924850, 0.255318,
		0.670510, 0.380239, 0.637052,
		-0.686259, -0.008389, 0.727308,
		24.826147, 34.452343, 35.107796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674635, 34.946152, 34.897316>,  <25.306528, 34.458218, 34.598679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674635, 34.946152, 34.897316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008375, 35.067665, 35.081303>,  <26.208620, 35.140572, 35.191696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008375, 35.067665, 35.081303>,  <25.674635, 34.946152, 34.897316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008375, 35.067665, 35.081303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022903, 0.852827, -0.521690,
		-0.550755, 0.424739, 0.718516,
		0.834353, 0.303780, 0.459971,
		26.258680, 35.158798, 35.219296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552727, 35.609947, 35.371098>,  <25.674635, 34.946152, 34.897316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552727, 35.609947, 35.371098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933260, 35.596992, 35.248512>,  <26.161579, 35.589222, 35.174961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933260, 35.596992, 35.248512>,  <25.552727, 35.609947, 35.371098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933260, 35.596992, 35.248512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140580, 0.839361, -0.525082,
		0.274239, 0.542609, 0.793957,
		0.951331, -0.032383, -0.306466,
		26.218658, 35.587276, 35.156574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835403, 36.252316, 35.608475>,  <25.552727, 35.609947, 35.371098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835403, 36.252316, 35.608475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067057, 36.114597, 35.312889>,  <26.206049, 36.031967, 35.135536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067057, 36.114597, 35.312889>,  <25.835403, 36.252316, 35.608475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067057, 36.114597, 35.312889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043756, 0.892010, -0.449894,
		0.814059, 0.292882, 0.501526,
		0.579132, -0.344295, -0.738964,
		26.240797, 36.011311, 35.091202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191349, 36.778301, 35.554615>,  <25.835403, 36.252316, 35.608475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191349, 36.778301, 35.554615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236502, 36.586609, 35.206455>,  <26.263594, 36.471592, 34.997559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236502, 36.586609, 35.206455>,  <26.191349, 36.778301, 35.554615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236502, 36.586609, 35.206455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057295, 0.877678, -0.475813,
		0.991955, 0.003841, 0.126531,
		0.112881, -0.479235, -0.870397,
		26.270367, 36.442837, 34.945335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894117, 36.998447, 35.315086>,  <26.191349, 36.778301, 35.554615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894117, 36.998447, 35.315086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655275, 36.865421, 35.023094>,  <26.511971, 36.785606, 34.847900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655275, 36.865421, 35.023094>,  <26.894117, 36.998447, 35.315086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655275, 36.865421, 35.023094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068339, 0.927794, -0.366781,
		0.799247, -0.169121, -0.576717,
		-0.597105, -0.332561, -0.729979,
		26.476145, 36.765652, 34.804100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012903, 37.486328, 34.743977>,  <26.894117, 36.998447, 35.315086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012903, 37.486328, 34.743977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690910, 37.288612, 34.612713>,  <26.497715, 37.169983, 34.533955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690910, 37.288612, 34.612713>,  <27.012903, 37.486328, 34.743977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690910, 37.288612, 34.612713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227220, 0.767776, -0.599076,
		0.548067, -0.407680, -0.730356,
		-0.804981, -0.494285, -0.328159,
		26.449417, 37.140327, 34.514263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012409, 37.464977, 33.920120>,  <27.012903, 37.486328, 34.743977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012409, 37.464977, 33.920120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638029, 37.397640, 34.043839>,  <26.413401, 37.357239, 34.118069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638029, 37.397640, 34.043839>,  <27.012409, 37.464977, 33.920120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638029, 37.397640, 34.043839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334001, 0.702621, -0.628305,
		-0.111548, -0.691365, -0.713842,
		-0.935949, -0.168338, 0.309293,
		26.357244, 37.347137, 34.136627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555973, 37.257286, 33.329758>,  <27.012409, 37.464977, 33.920120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555973, 37.257286, 33.329758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368700, 37.455631, 33.622311>,  <26.256336, 37.574638, 33.797844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368700, 37.455631, 33.622311>,  <26.555973, 37.257286, 33.329758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368700, 37.455631, 33.622311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264864, 0.710896, -0.651517,
		-0.843001, -0.498747, -0.201494,
		-0.468183, 0.495861, 0.731386,
		26.228245, 37.604389, 33.841728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029554, 37.630753, 33.014458>,  <26.555973, 37.257286, 33.329758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029554, 37.630753, 33.014458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038424, 37.813576, 33.370121>,  <26.043745, 37.923271, 33.583519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038424, 37.813576, 33.370121>,  <26.029554, 37.630753, 33.014458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038424, 37.813576, 33.370121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216820, 0.870408, -0.442017,
		-0.975960, -0.182987, 0.118399,
		0.022172, 0.457062, 0.889159,
		26.045074, 37.950695, 33.636868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465292, 38.077660, 33.015190>,  <26.029554, 37.630753, 33.014458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465292, 38.077660, 33.015190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677004, 38.223370, 33.321697>,  <25.804031, 38.310795, 33.505600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677004, 38.223370, 33.321697>,  <25.465292, 38.077660, 33.015190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677004, 38.223370, 33.321697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366450, 0.912708, -0.180770,
		-0.765229, -0.185121, 0.616566,
		0.529281, 0.364272, 0.766269,
		25.835789, 38.332649, 33.551579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033169, 38.502377, 33.421291>,  <25.465292, 38.077660, 33.015190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033169, 38.502377, 33.421291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412075, 38.619465, 33.473442>,  <25.639420, 38.689720, 33.504734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412075, 38.619465, 33.473442>,  <25.033169, 38.502377, 33.421291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412075, 38.619465, 33.473442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258321, 0.938317, -0.229850,
		-0.189620, 0.184049, 0.964453,
		0.947267, 0.292723, 0.130380,
		25.696255, 38.707283, 33.512554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018147, 39.012760, 33.845917>,  <25.033169, 38.502377, 33.421291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018147, 39.012760, 33.845917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372505, 39.078453, 33.672382>,  <25.585119, 39.117870, 33.568260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372505, 39.078453, 33.672382>,  <25.018147, 39.012760, 33.845917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372505, 39.078453, 33.672382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294049, 0.922148, -0.251355,
		0.358781, 0.350244, 0.865220,
		0.885896, 0.164235, -0.433838,
		25.638273, 39.127724, 33.542233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283260, 39.758121, 34.059902>,  <25.018147, 39.012760, 33.845917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283260, 39.758121, 34.059902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471647, 39.689217, 33.713837>,  <25.584681, 39.647873, 33.506195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471647, 39.689217, 33.713837>,  <25.283260, 39.758121, 34.059902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471647, 39.689217, 33.713837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268711, 0.906126, -0.326695,
		0.840227, 0.386342, 0.380470,
		0.470970, -0.172261, -0.865167,
		25.612938, 39.637539, 33.454288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827158, 40.346352, 33.850868>,  <25.283260, 39.758121, 34.059902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827158, 40.346352, 33.850868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747353, 40.148666, 33.512413>,  <25.699469, 40.030056, 33.309341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747353, 40.148666, 33.512413>,  <25.827158, 40.346352, 33.850868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747353, 40.148666, 33.512413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050084, 0.867511, -0.494890,
		0.978614, -0.056360, -0.197833,
		-0.199514, -0.494215, -0.846136,
		25.687498, 40.000401, 33.258572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380770, 40.588028, 33.407257>,  <25.827158, 40.346352, 33.850868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380770, 40.588028, 33.407257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104507, 40.427734, 33.166454>,  <25.938751, 40.331558, 33.021973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104507, 40.427734, 33.166454>,  <26.380770, 40.588028, 33.407257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104507, 40.427734, 33.166454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032318, 0.848705, -0.527879,
		0.722462, -0.345127, -0.599113,
		-0.690655, -0.400735, -0.602003,
		25.897312, 40.307514, 32.985855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601212, 40.685551, 32.744530>,  <26.380770, 40.588028, 33.407257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601212, 40.685551, 32.744530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208714, 40.652454, 32.674889>,  <25.973215, 40.632595, 32.633102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208714, 40.652454, 32.674889>,  <26.601212, 40.685551, 32.744530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208714, 40.652454, 32.674889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054114, 0.748642, -0.660763,
		0.185015, -0.657791, -0.730123,
		-0.981244, -0.082741, -0.174106,
		25.914341, 40.627632, 32.622658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524475, 41.087173, 32.171856>,  <26.601212, 40.685551, 32.744530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524475, 41.087173, 32.171856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132053, 41.022038, 32.213833>,  <25.896601, 40.982956, 32.239017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132053, 41.022038, 32.213833>,  <26.524475, 41.087173, 32.171856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132053, 41.022038, 32.213833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192918, 0.771886, -0.605785,
		0.017644, -0.614554, -0.788678,
		-0.981056, -0.162838, 0.104939,
		25.837736, 40.973186, 32.245316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309774, 40.924873, 31.513693>,  <26.524475, 41.087173, 32.171856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309774, 40.924873, 31.513693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016439, 41.062149, 31.748449>,  <25.840439, 41.144516, 31.889303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016439, 41.062149, 31.748449>,  <26.309774, 40.924873, 31.513693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016439, 41.062149, 31.748449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087926, 0.808118, -0.582421,
		-0.674156, -0.478714, -0.562448,
		-0.733337, 0.343188, 0.586889,
		25.796438, 41.165104, 31.924517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682386, 41.043171, 31.096960>,  <26.309774, 40.924873, 31.513693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682386, 41.043171, 31.096960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637434, 41.266064, 31.426048>,  <25.610462, 41.399799, 31.623501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637434, 41.266064, 31.426048>,  <25.682386, 41.043171, 31.096960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637434, 41.266064, 31.426048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338760, 0.756877, -0.558908,
		-0.934137, -0.341516, 0.103707,
		-0.112383, 0.557228, 0.822719,
		25.603720, 41.433231, 31.672865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112980, 41.325207, 30.966570>,  <25.682386, 41.043171, 31.096960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112980, 41.325207, 30.966570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284021, 41.544979, 31.253704>,  <25.386646, 41.676842, 31.425983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284021, 41.544979, 31.253704>,  <25.112980, 41.325207, 30.966570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284021, 41.544979, 31.253704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380274, 0.829742, -0.408558,
		-0.820090, -0.098272, 0.563733,
		0.427603, 0.549427, 0.717833,
		25.412302, 41.709808, 31.469053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717434, 41.909721, 30.954411>,  <25.112980, 41.325207, 30.966570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717434, 41.909721, 30.954411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039940, 42.031853, 31.157080>,  <25.233442, 42.105129, 31.278681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039940, 42.031853, 31.157080>,  <24.717434, 41.909721, 30.954411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039940, 42.031853, 31.157080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074746, 0.902221, -0.424747,
		-0.586816, 0.304586, 0.750250,
		0.806263, 0.305326, 0.506671,
		25.281818, 42.123451, 31.309080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546322, 42.541325, 31.274513>,  <24.717434, 41.909721, 30.954411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546322, 42.541325, 31.274513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945127, 42.538406, 31.243771>,  <25.184412, 42.536655, 31.225325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945127, 42.538406, 31.243771>,  <24.546322, 42.541325, 31.274513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945127, 42.538406, 31.243771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028384, 0.891147, -0.452826,
		0.071796, 0.453656, 0.888280,
		0.997015, -0.007298, -0.076858,
		25.244232, 42.536217, 31.220713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716616, 43.241756, 31.367758>,  <24.546322, 42.541325, 31.274513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716616, 43.241756, 31.367758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016853, 43.059208, 31.176619>,  <25.196995, 42.949680, 31.061935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016853, 43.059208, 31.176619>,  <24.716616, 43.241756, 31.367758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016853, 43.059208, 31.176619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045813, 0.685490, -0.726640,
		0.659174, 0.567302, 0.493617,
		0.750593, -0.456368, -0.477847,
		25.242031, 42.922298, 31.033264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375090, 43.675831, 31.298910>,  <24.716616, 43.241756, 31.367758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375090, 43.675831, 31.298910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347473, 43.424175, 30.989222>,  <25.330904, 43.273182, 30.803410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347473, 43.424175, 30.989222>,  <25.375090, 43.675831, 31.298910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347473, 43.424175, 30.989222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035607, 0.774024, -0.632155,
		0.996978, -0.071212, -0.031037,
		-0.069040, -0.629139, -0.774220,
		25.326761, 43.235432, 30.756956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689322, 43.911827, 30.544827>,  <25.375090, 43.675831, 31.298910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689322, 43.911827, 30.544827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427923, 43.626732, 30.442892>,  <25.271084, 43.455673, 30.381731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427923, 43.626732, 30.442892>,  <25.689322, 43.911827, 30.544827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427923, 43.626732, 30.442892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017231, 0.350591, -0.936370,
		0.756734, -0.607523, -0.241391,
		-0.653496, -0.712742, -0.254835,
		25.231874, 43.412910, 30.366442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790503, 43.635796, 29.863441>,  <25.689322, 43.911827, 30.544827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790503, 43.635796, 29.863441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401371, 43.553196, 29.905313>,  <25.167892, 43.503635, 29.930437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401371, 43.553196, 29.905313>,  <25.790503, 43.635796, 29.863441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401371, 43.553196, 29.905313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176709, 0.370156, -0.912008,
		0.149583, -0.905727, -0.396589,
		-0.972830, -0.206501, 0.104681,
		25.109522, 43.491245, 29.936718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601660, 43.505383, 29.227036>,  <25.790503, 43.635796, 29.863441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601660, 43.505383, 29.227036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256041, 43.578026, 29.414839>,  <25.048668, 43.621613, 29.527521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256041, 43.578026, 29.414839>,  <25.601660, 43.505383, 29.227036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256041, 43.578026, 29.414839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306244, 0.550602, -0.776564,
		-0.399542, -0.814774, -0.420132,
		-0.864049, 0.181607, 0.469508,
		24.996826, 43.632507, 29.555691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287949, 42.944542, 28.942770>,  <25.601660, 43.505383, 29.227036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287949, 42.944542, 28.942770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482513, 42.944202, 29.292261>,  <25.599253, 42.943996, 29.501957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482513, 42.944202, 29.292261>,  <25.287949, 42.944542, 28.942770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482513, 42.944202, 29.292261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502169, -0.818061, -0.280360,
		0.715003, 0.575131, -0.397486,
		0.486412, -0.000853, 0.873729,
		25.628437, 42.943947, 29.554380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643549, 42.375084, 28.558281>,  <25.287949, 42.944542, 28.942770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643549, 42.375084, 28.558281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268831, 42.244003, 28.509249>,  <25.044001, 42.165356, 28.479830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268831, 42.244003, 28.509249>,  <25.643549, 42.375084, 28.558281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268831, 42.244003, 28.509249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333621, 0.731084, 0.595158,
		-0.105421, 0.598435, -0.794205,
		-0.936794, -0.327706, -0.122579,
		24.987793, 42.145691, 28.472475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016397, 42.907845, 28.933542>,  <25.643549, 42.375084, 28.558281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016397, 42.907845, 28.933542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220736, 42.686249, 28.670595>,  <26.343338, 42.553291, 28.512827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220736, 42.686249, 28.670595>,  <26.016397, 42.907845, 28.933542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220736, 42.686249, 28.670595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549845, -0.377258, 0.745216,
		-0.660838, -0.742141, 0.111887,
		0.510845, -0.553988, -0.657369,
		26.373989, 42.520054, 28.473385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044008, 42.100685, 29.126469>,  <26.016397, 42.907845, 28.933542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044008, 42.100685, 29.126469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349159, 42.194633, 28.885521>,  <26.532249, 42.251003, 28.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349159, 42.194633, 28.885521>,  <26.044008, 42.100685, 29.126469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349159, 42.194633, 28.885521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618596, -0.536105, 0.574396,
		-0.188027, -0.810819, -0.554273,
		0.762879, 0.234869, -0.602371,
		26.578024, 42.265095, 28.704809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298307, 41.446430, 28.822687>,  <26.044008, 42.100685, 29.126469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298307, 41.446430, 28.822687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598330, 41.710117, 28.844053>,  <26.778343, 41.868328, 28.856873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598330, 41.710117, 28.844053>,  <26.298307, 41.446430, 28.822687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598330, 41.710117, 28.844053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486655, -0.604794, 0.630390,
		0.447867, -0.446833, -0.774439,
		0.750055, 0.659215, 0.053414,
		26.823345, 41.907883, 28.860077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965698, 41.178574, 28.600914>,  <26.298307, 41.446430, 28.822687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965698, 41.178574, 28.600914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983898, 41.449547, 28.894583>,  <26.994818, 41.612133, 29.070784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983898, 41.449547, 28.894583>,  <26.965698, 41.178574, 28.600914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983898, 41.449547, 28.894583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465265, -0.664727, 0.584522,
		0.884001, 0.314990, -0.345431,
		0.045499, 0.677436, 0.734173,
		26.997547, 41.652779, 29.114834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570625, 41.180931, 28.874151>,  <26.965698, 41.178574, 28.600914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570625, 41.180931, 28.874151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323059, 41.321934, 29.154917>,  <27.174520, 41.406536, 29.323376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323059, 41.321934, 29.154917>,  <27.570625, 41.180931, 28.874151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323059, 41.321934, 29.154917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346497, -0.679448, 0.646754,
		0.704901, 0.643496, 0.298376,
		-0.618914, 0.352511, 0.701913,
		27.137384, 41.427689, 29.365490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941956, 41.135605, 29.457577>,  <27.570625, 41.180931, 28.874151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941956, 41.135605, 29.457577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563656, 41.176132, 29.581053>,  <27.336676, 41.200451, 29.655138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563656, 41.176132, 29.581053>,  <27.941956, 41.135605, 29.457577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563656, 41.176132, 29.581053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140578, -0.728967, 0.669958,
		0.292907, 0.677009, 0.675178,
		-0.945750, 0.101320, 0.308692,
		27.279930, 41.206528, 29.673660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881208, 41.282928, 30.272373>,  <27.941956, 41.135605, 29.457577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881208, 41.282928, 30.272373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535776, 41.124855, 30.147116>,  <27.328518, 41.030010, 30.071960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535776, 41.124855, 30.147116>,  <27.881208, 41.282928, 30.272373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535776, 41.124855, 30.147116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085972, -0.727366, 0.680844,
		-0.496831, 0.561040, 0.662112,
		-0.863578, -0.395187, -0.313144,
		27.276703, 41.006298, 30.053173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487181, 40.996174, 30.936268>,  <27.881208, 41.282928, 30.272373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487181, 40.996174, 30.936268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316355, 40.808994, 30.626781>,  <27.213860, 40.696686, 30.441090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316355, 40.808994, 30.626781>,  <27.487181, 40.996174, 30.936268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316355, 40.808994, 30.626781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007142, -0.853899, 0.520389,
		-0.904192, 0.227766, 0.361329,
		-0.427066, -0.467951, -0.773716,
		27.188234, 40.668610, 30.394667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025484, 40.480015, 31.345181>,  <27.487181, 40.996174, 30.936268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025484, 40.480015, 31.345181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054340, 40.387085, 30.957197>,  <27.071655, 40.331326, 30.724407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054340, 40.387085, 30.957197>,  <27.025484, 40.480015, 31.345181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054340, 40.387085, 30.957197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048523, -0.970524, 0.236071,
		-0.996213, -0.064096, -0.058742,
		0.072142, -0.232327, -0.969959,
		27.075983, 40.317387, 30.666210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469439, 39.999760, 31.216766>,  <27.025484, 40.480015, 31.345181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469439, 39.999760, 31.216766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758598, 39.949329, 30.945026>,  <26.932095, 39.919071, 30.781982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758598, 39.949329, 30.945026>,  <26.469439, 39.999760, 31.216766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758598, 39.949329, 30.945026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027317, -0.977228, 0.210425,
		-0.690411, -0.170674, -0.702996,
		0.722901, -0.126076, -0.679352,
		26.975470, 39.911507, 30.741220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239042, 39.307755, 30.840311>,  <26.469439, 39.999760, 31.216766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239042, 39.307755, 30.840311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626680, 39.392288, 30.789413>,  <26.859262, 39.443008, 30.758875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626680, 39.392288, 30.789413>,  <26.239042, 39.307755, 30.840311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626680, 39.392288, 30.789413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234957, -0.947904, 0.215110,
		-0.075155, -0.238359, -0.968265,
		0.969096, 0.211334, -0.127244,
		26.917410, 39.455688, 30.751240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540813, 38.619415, 30.453436>,  <26.239042, 39.307755, 30.840311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540813, 38.619415, 30.453436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849033, 38.807076, 30.626017>,  <27.033966, 38.919670, 30.729565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849033, 38.807076, 30.626017>,  <26.540813, 38.619415, 30.453436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849033, 38.807076, 30.626017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252778, -0.846341, 0.468840,
		0.585113, -0.252202, -0.770738,
		0.770549, 0.469150, 0.431454,
		27.080198, 38.947819, 30.755453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146620, 38.193268, 30.274586>,  <26.540813, 38.619415, 30.453436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146620, 38.193268, 30.274586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233234, 38.404541, 30.603008>,  <27.285204, 38.531303, 30.800062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233234, 38.404541, 30.603008>,  <27.146620, 38.193268, 30.274586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233234, 38.404541, 30.603008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335264, -0.830094, 0.445580,
		0.916902, 0.178786, -0.356828,
		0.216537, 0.528184, 0.821056,
		27.298195, 38.562996, 30.849325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651022, 37.731674, 30.621916>,  <27.146620, 38.193268, 30.274586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651022, 37.731674, 30.621916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608629, 38.002899, 30.912846>,  <27.583193, 38.165634, 31.087404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608629, 38.002899, 30.912846>,  <27.651022, 37.731674, 30.621916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608629, 38.002899, 30.912846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158459, -0.710582, 0.685539,
		0.981661, 0.187908, -0.032134,
		-0.105984, 0.678059, 0.727326,
		27.576834, 38.206318, 31.131044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246719, 37.615353, 31.033575>,  <27.651022, 37.731674, 30.621916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246719, 37.615353, 31.033575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961462, 37.774677, 31.264320>,  <27.790308, 37.870274, 31.402767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961462, 37.774677, 31.264320>,  <28.246719, 37.615353, 31.033575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961462, 37.774677, 31.264320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158465, -0.710001, 0.686139,
		0.682872, 0.580729, 0.443215,
		-0.713144, 0.398311, 0.576865,
		27.747519, 37.894169, 31.437380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567509, 37.779869, 31.709906>,  <28.246719, 37.615353, 31.033575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567509, 37.779869, 31.709906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174648, 37.745338, 31.776754>,  <27.938932, 37.724621, 31.816864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174648, 37.745338, 31.776754>,  <28.567509, 37.779869, 31.709906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174648, 37.745338, 31.776754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181277, -0.671505, 0.718484,
		0.050201, 0.735954, 0.675168,
		-0.982150, -0.086324, 0.167122,
		27.880003, 37.719440, 31.826891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449957, 37.844566, 32.384651>,  <28.567509, 37.779869, 31.709906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449957, 37.844566, 32.384651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112722, 37.654007, 32.284855>,  <27.910381, 37.539669, 32.224979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112722, 37.654007, 32.284855>,  <28.449957, 37.844566, 32.384651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112722, 37.654007, 32.284855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126655, -0.626775, 0.768838,
		-0.522648, 0.616599, 0.588765,
		-0.843088, -0.476402, -0.249488,
		27.859797, 37.511086, 32.210007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129511, 37.666786, 33.052521>,  <28.449957, 37.844566, 32.384651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129511, 37.666786, 33.052521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932837, 37.425091, 32.801716>,  <27.814833, 37.280075, 32.651234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932837, 37.425091, 32.801716>,  <28.129511, 37.666786, 33.052521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932837, 37.425091, 32.801716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266530, -0.789936, 0.552234,
		-0.828979, 0.104408, 0.549448,
		-0.491686, -0.604235, -0.627013,
		27.785332, 37.243820, 32.613613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500299, 37.399651, 33.417942>,  <28.129511, 37.666786, 33.052521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500299, 37.399651, 33.417942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589952, 37.155777, 33.113827>,  <27.643745, 37.009453, 32.931358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589952, 37.155777, 33.113827>,  <27.500299, 37.399651, 33.417942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589952, 37.155777, 33.113827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068886, -0.788100, 0.611680,
		-0.972121, -0.084725, -0.218639,
		0.224134, -0.609688, -0.760292,
		27.657192, 36.972870, 32.885738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108419, 36.807636, 33.493290>,  <27.500299, 37.399651, 33.417942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108419, 36.807636, 33.493290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391973, 36.668774, 33.247700>,  <27.562107, 36.585457, 33.100346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391973, 36.668774, 33.247700>,  <27.108419, 36.807636, 33.493290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391973, 36.668774, 33.247700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089278, -0.819318, 0.566346,
		-0.699649, -0.456290, -0.549810,
		0.708887, -0.347157, -0.613972,
		27.604639, 36.564625, 33.063507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936544, 36.148441, 33.505924>,  <27.108419, 36.807636, 33.493290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936544, 36.148441, 33.505924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311565, 36.153439, 33.366879>,  <27.536579, 36.156437, 33.283451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311565, 36.153439, 33.366879>,  <26.936544, 36.148441, 33.505924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311565, 36.153439, 33.366879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188704, -0.857784, 0.478119,
		-0.292204, -0.513859, -0.806577,
		0.937554, 0.012496, -0.347615,
		27.592833, 36.157188, 33.262592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985054, 35.481583, 33.051716>,  <26.936544, 36.148441, 33.505924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985054, 35.481583, 33.051716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353064, 35.589691, 33.165215>,  <27.573870, 35.654556, 33.233315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353064, 35.589691, 33.165215>,  <26.985054, 35.481583, 33.051716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353064, 35.589691, 33.165215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158036, -0.918507, 0.362449,
		0.358585, -0.288619, -0.887759,
		0.920022, 0.270267, 0.283751,
		27.629070, 35.670773, 33.250340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340117, 34.846397, 33.021633>,  <26.985054, 35.481583, 33.051716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340117, 34.846397, 33.021633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601360, 35.087486, 33.205013>,  <27.758106, 35.232140, 33.315041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601360, 35.087486, 33.205013>,  <27.340117, 34.846397, 33.021633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601360, 35.087486, 33.205013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369096, -0.781986, 0.502261,
		0.661224, -0.158819, -0.733184,
		0.653108, 0.602722, 0.458448,
		27.797293, 35.268303, 33.342548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084190, 34.621826, 32.957085>,  <27.340117, 34.846397, 33.021633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084190, 34.621826, 32.957085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136787, 34.846481, 33.283833>,  <28.168346, 34.981274, 33.479881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136787, 34.846481, 33.283833>,  <28.084190, 34.621826, 32.957085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136787, 34.846481, 33.283833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596647, -0.702896, 0.387234,
		0.791657, 0.436462, -0.427527,
		0.131495, 0.561639, 0.816866,
		28.176235, 35.014973, 33.528893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757925, 34.860748, 33.041412>,  <28.084190, 34.621826, 32.957085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757925, 34.860748, 33.041412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564562, 34.797935, 33.385891>,  <28.448544, 34.760246, 33.592579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564562, 34.797935, 33.385891>,  <28.757925, 34.860748, 33.041412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564562, 34.797935, 33.385891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733678, -0.609328, 0.300724,
		0.477528, 0.777213, 0.409765,
		-0.483408, -0.157032, 0.861196,
		28.419538, 34.750828, 33.644249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138531, 35.082611, 33.541115>,  <28.757925, 34.860748, 33.041412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138531, 35.082611, 33.541115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916529, 34.784328, 33.688568>,  <28.783327, 34.605358, 33.777039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916529, 34.784328, 33.688568>,  <29.138531, 35.082611, 33.541115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916529, 34.784328, 33.688568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831526, -0.485061, 0.270702,
		-0.023054, 0.456770, 0.889286,
		-0.555007, -0.745706, 0.368634,
		28.750027, 34.560616, 33.799160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839382, 35.485809, 33.569931>,  <29.138531, 35.082611, 33.541115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839382, 35.485809, 33.569931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953108, 35.802197, 33.353218>,  <30.021343, 35.992031, 33.223190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953108, 35.802197, 33.353218>,  <29.839382, 35.485809, 33.569931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953108, 35.802197, 33.353218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834028, 0.074642, 0.546650,
		0.472824, -0.607282, -0.638471,
		0.284314, 0.790972, -0.541783,
		30.038403, 36.039490, 33.190681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422533, 35.276119, 33.231251>,  <29.839382, 35.485809, 33.569931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422533, 35.276119, 33.231251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393911, 35.662003, 33.332611>,  <30.376738, 35.893532, 33.393425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393911, 35.662003, 33.332611>,  <30.422533, 35.276119, 33.231251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393911, 35.662003, 33.332611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816608, -0.089219, 0.570256,
		0.572740, 0.247731, -0.781408,
		-0.071554, 0.964712, 0.253399,
		30.372446, 35.951416, 33.408630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137714, 35.538387, 33.294609>,  <30.422533, 35.276119, 33.231251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137714, 35.538387, 33.294609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906668, 35.779613, 33.514671>,  <30.768040, 35.924351, 33.646709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906668, 35.779613, 33.514671>,  <31.137714, 35.538387, 33.294609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906668, 35.779613, 33.514671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584840, -0.164450, 0.794304,
		0.569490, 0.780556, -0.257707,
		-0.577619, 0.603066, 0.550153,
		30.733381, 35.960533, 33.679718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451889, 35.886284, 33.812588>,  <31.137714, 35.538387, 33.294609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451889, 35.886284, 33.812588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093494, 35.911552, 33.988415>,  <30.878458, 35.926712, 34.093910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093494, 35.911552, 33.988415>,  <31.451889, 35.886284, 33.812588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093494, 35.911552, 33.988415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428861, -0.133825, 0.893403,
		0.115260, 0.988990, 0.092815,
		-0.895987, 0.063169, 0.439564,
		30.824697, 35.930504, 34.120285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435205, 36.373623, 34.420727>,  <31.451889, 35.886284, 33.812588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435205, 36.373623, 34.420727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176474, 36.071362, 34.461903>,  <31.021235, 35.890003, 34.486610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176474, 36.071362, 34.461903>,  <31.435205, 36.373623, 34.420727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176474, 36.071362, 34.461903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184293, -0.023897, 0.982581,
		-0.740032, 0.654534, 0.154719,
		-0.646830, -0.755655, 0.102942,
		30.982424, 35.844666, 34.492786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895189, 36.438725, 34.919994>,  <31.435205, 36.373623, 34.420727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895189, 36.438725, 34.919994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002716, 36.053562, 34.929340>,  <31.067232, 35.822464, 34.934948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002716, 36.053562, 34.929340>,  <30.895189, 36.438725, 34.919994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002716, 36.053562, 34.929340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071838, 0.004147, 0.997408,
		-0.960509, -0.269798, -0.068058,
		0.268817, -0.962908, 0.023365,
		31.083361, 35.764690, 34.936352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443623, 36.176342, 35.339020>,  <30.895189, 36.438725, 34.919994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443623, 36.176342, 35.339020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763515, 35.936565, 35.325729>,  <30.955450, 35.792702, 35.317753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763515, 35.936565, 35.325729>,  <30.443623, 36.176342, 35.339020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763515, 35.936565, 35.325729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053161, -0.125837, 0.990626,
		-0.598001, -0.790467, -0.132502,
		0.799731, -0.599439, -0.033229,
		31.003435, 35.756733, 35.315762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388737, 35.742931, 35.976917>,  <30.443623, 36.176342, 35.339020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388737, 35.742931, 35.976917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774534, 35.708313, 35.877106>,  <31.006012, 35.687542, 35.817219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774534, 35.708313, 35.877106>,  <30.388737, 35.742931, 35.976917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774534, 35.708313, 35.877106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233792, -0.159731, 0.959076,
		-0.122851, -0.983360, -0.133829,
		0.964494, -0.086535, -0.249525,
		31.063883, 35.682350, 35.802246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645063, 35.176220, 36.360481>,  <30.388737, 35.742931, 35.976917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645063, 35.176220, 36.360481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963310, 35.388130, 36.242954>,  <31.154259, 35.515278, 36.172440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963310, 35.388130, 36.242954>,  <30.645063, 35.176220, 36.360481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963310, 35.388130, 36.242954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418582, -0.130141, 0.898806,
		0.437927, -0.838094, -0.325297,
		0.795619, 0.529775, -0.293819,
		31.201996, 35.547062, 36.154808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268539, 34.746101, 36.503544>,  <30.645063, 35.176220, 36.360481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268539, 34.746101, 36.503544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374943, 35.130577, 36.474270>,  <31.438784, 35.361263, 36.456703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374943, 35.130577, 36.474270>,  <31.268539, 34.746101, 36.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374943, 35.130577, 36.474270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289638, -0.007278, 0.957108,
		0.919429, -0.275795, -0.280333,
		0.266006, 0.961189, -0.073190,
		31.454744, 35.418934, 36.452312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727369, 34.741745, 36.989174>,  <31.268539, 34.746101, 36.503544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727369, 34.741745, 36.989174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664610, 35.130478, 36.918839>,  <31.626955, 35.363720, 36.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664610, 35.130478, 36.918839>,  <31.727369, 34.741745, 36.989174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664610, 35.130478, 36.918839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175705, 0.202670, 0.963355,
		0.971860, 0.120251, -0.202555,
		-0.156896, 0.971836, -0.175838,
		31.617540, 35.422028, 36.866089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301853, 35.094627, 37.244221>,  <31.727369, 34.741745, 36.989174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301853, 35.094627, 37.244221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979317, 35.331116, 37.250813>,  <31.785795, 35.473011, 37.254768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979317, 35.331116, 37.250813>,  <32.301853, 35.094627, 37.244221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979317, 35.331116, 37.250813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062215, 0.057073, 0.996430,
		0.588173, 0.804485, -0.082803,
		-0.806339, 0.591224, 0.016482,
		31.737415, 35.508484, 37.255756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435917, 35.476997, 37.714211>,  <32.301853, 35.094627, 37.244221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435917, 35.476997, 37.714211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045826, 35.560062, 37.683746>,  <31.811769, 35.609901, 37.665470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045826, 35.560062, 37.683746>,  <32.435917, 35.476997, 37.714211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045826, 35.560062, 37.683746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026733, 0.231126, 0.972556,
		0.219563, 0.950504, -0.219850,
		-0.975232, 0.207661, -0.076157,
		31.753256, 35.622360, 37.660900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351864, 35.857964, 38.291954>,  <32.435917, 35.476997, 37.714211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351864, 35.857964, 38.291954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972265, 35.770935, 38.200672>,  <31.744507, 35.718719, 38.145905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972265, 35.770935, 38.200672>,  <32.351864, 35.857964, 38.291954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972265, 35.770935, 38.200672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243959, 0.048186, 0.968588,
		-0.199742, 0.974854, -0.098806,
		-0.948993, -0.217572, -0.228200,
		31.687567, 35.705662, 38.132214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945963, 36.396587, 38.489597>,  <32.351864, 35.857964, 38.291954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945963, 36.396587, 38.489597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692482, 36.087444, 38.476250>,  <31.540394, 35.901958, 38.468239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692482, 36.087444, 38.476250>,  <31.945963, 36.396587, 38.489597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692482, 36.087444, 38.476250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336675, 0.236701, 0.911385,
		-0.696472, 0.588782, -0.410199,
		-0.633702, -0.772857, -0.033373,
		31.502371, 35.855587, 38.466236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247084, 36.660091, 38.699356>,  <31.945963, 36.396587, 38.489597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247084, 36.660091, 38.699356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277189, 36.266640, 38.764854>,  <31.295254, 36.030571, 38.804153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277189, 36.266640, 38.764854>,  <31.247084, 36.660091, 38.699356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277189, 36.266640, 38.764854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201968, 0.145771, 0.968483,
		-0.976496, -0.105964, -0.187689,
		0.075265, -0.983627, 0.163746,
		31.299768, 35.971550, 38.813980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640627, 36.587105, 39.141861>,  <31.247084, 36.660091, 38.699356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640627, 36.587105, 39.141861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874443, 36.266865, 39.194542>,  <31.014732, 36.074718, 39.226151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874443, 36.266865, 39.194542>,  <30.640627, 36.587105, 39.141861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874443, 36.266865, 39.194542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127540, 0.069636, 0.989386,
		-0.801278, -0.595133, -0.061404,
		0.584540, -0.800604, 0.131701,
		31.049805, 36.026684, 39.234051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311747, 36.136654, 39.646305>,  <30.640627, 36.587105, 39.141861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311747, 36.136654, 39.646305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682417, 35.986538, 39.637985>,  <30.904819, 35.896469, 39.632996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682417, 35.986538, 39.637985>,  <30.311747, 36.136654, 39.646305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682417, 35.986538, 39.637985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043178, -0.161250, 0.985968,
		-0.373379, -0.912773, -0.165631,
		0.926674, -0.375292, -0.020796,
		30.960419, 35.873951, 39.631748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237537, 35.548035, 40.009125>,  <30.311747, 36.136654, 39.646305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237537, 35.548035, 40.009125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624487, 35.649223, 40.014648>,  <30.856657, 35.709934, 40.017963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624487, 35.649223, 40.014648>,  <30.237537, 35.548035, 40.009125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624487, 35.649223, 40.014648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042886, -0.217236, 0.975177,
		0.249687, -0.942771, -0.220997,
		0.967376, 0.252967, 0.013809,
		30.914700, 35.725113, 40.018791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449461, 35.015682, 40.355972>,  <30.237537, 35.548035, 40.009125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449461, 35.015682, 40.355972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710846, 35.315498, 40.398254>,  <30.867678, 35.495388, 40.423622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710846, 35.315498, 40.398254>,  <30.449461, 35.015682, 40.355972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710846, 35.315498, 40.398254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036176, -0.170405, 0.984710,
		0.756094, -0.639647, -0.138469,
		0.653462, 0.749543, 0.105702,
		30.906885, 35.540359, 40.429966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006819, 34.760174, 40.698452>,  <30.449461, 35.015682, 40.355972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006819, 34.760174, 40.698452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040857, 35.152649, 40.767776>,  <31.061281, 35.388134, 40.809372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040857, 35.152649, 40.767776>,  <31.006819, 34.760174, 40.698452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040857, 35.152649, 40.767776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205501, -0.187482, 0.960531,
		0.974950, -0.046123, -0.217588,
		0.085097, 0.981184, 0.173307,
		31.066387, 35.447002, 40.819767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586887, 34.755718, 41.131081>,  <31.006819, 34.760174, 40.698452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586887, 34.755718, 41.131081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394894, 35.104454, 41.170086>,  <31.279697, 35.313694, 41.193489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394894, 35.104454, 41.170086>,  <31.586887, 34.755718, 41.131081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394894, 35.104454, 41.170086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137276, -0.035146, 0.989909,
		0.866470, 0.488527, -0.102813,
		-0.479984, 0.871840, 0.097516,
		31.250898, 35.366005, 41.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875107, 34.938961, 41.748791>,  <31.586887, 34.755718, 41.131081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875107, 34.938961, 41.748791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557158, 35.179169, 41.714024>,  <31.366388, 35.323292, 41.693161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557158, 35.179169, 41.714024>,  <31.875107, 34.938961, 41.748791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557158, 35.179169, 41.714024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076389, 0.241149, 0.967477,
		0.601945, 0.762384, -0.237556,
		-0.794876, 0.600515, -0.086921,
		31.318695, 35.359322, 41.687946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974981, 35.583202, 42.226978>,  <31.875107, 34.938961, 41.748791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974981, 35.583202, 42.226978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580868, 35.541046, 42.173153>,  <31.344400, 35.515751, 42.140858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580868, 35.541046, 42.173153>,  <31.974981, 35.583202, 42.226978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580868, 35.541046, 42.173153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156457, 0.239108, 0.958305,
		-0.068820, 0.965257, -0.252078,
		-0.985284, -0.105390, -0.134566,
		31.285282, 35.509430, 42.132782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600367, 36.106918, 42.653240>,  <31.974981, 35.583202, 42.226978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600367, 36.106918, 42.653240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335035, 35.825905, 42.550137>,  <31.175837, 35.657295, 42.488274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335035, 35.825905, 42.550137>,  <31.600367, 36.106918, 42.653240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335035, 35.825905, 42.550137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305925, -0.059771, 0.950178,
		-0.682940, 0.709134, -0.175276,
		-0.663327, -0.702536, -0.257762,
		31.136038, 35.615143, 42.472809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969971, 36.326248, 42.728909>,  <31.600367, 36.106918, 42.653240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969971, 36.326248, 42.728909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882662, 35.936409, 42.748962>,  <30.830276, 35.702507, 42.760994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882662, 35.936409, 42.748962>,  <30.969971, 36.326248, 42.728909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882662, 35.936409, 42.748962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358500, 0.127860, 0.924732,
		-0.907654, 0.183869, -0.377302,
		-0.218272, -0.974599, 0.050136,
		30.817181, 35.644028, 42.764004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320589, 36.250641, 42.979843>,  <30.969971, 36.326248, 42.728909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320589, 36.250641, 42.979843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442421, 35.880417, 43.069790>,  <30.515520, 35.658283, 43.123756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442421, 35.880417, 43.069790>,  <30.320589, 36.250641, 42.979843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442421, 35.880417, 43.069790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379024, 0.098813, 0.920096,
		-0.873826, -0.365472, -0.320714,
		0.304579, -0.925562, 0.224868,
		30.533794, 35.602749, 43.137249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760601, 35.832321, 43.312653>,  <30.320589, 36.250641, 42.979843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760601, 35.832321, 43.312653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101137, 35.677666, 43.454487>,  <30.305458, 35.584873, 43.539589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101137, 35.677666, 43.454487>,  <29.760601, 35.832321, 43.312653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101137, 35.677666, 43.454487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373481, 0.027987, 0.927216,
		-0.368423, -0.921806, -0.120577,
		0.851338, -0.386641, 0.354588,
		30.356539, 35.561672, 43.560863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598654, 35.263035, 43.734741>,  <29.760601, 35.832321, 43.312653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598654, 35.263035, 43.734741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957064, 35.380444, 43.867996>,  <30.172110, 35.450890, 43.947948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957064, 35.380444, 43.867996>,  <29.598654, 35.263035, 43.734741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957064, 35.380444, 43.867996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350561, 0.007237, 0.936512,
		0.272479, -0.955924, 0.109383,
		0.896026, 0.293526, 0.333138,
		30.225872, 35.468502, 43.967937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691843, 34.941223, 44.444298>,  <29.598654, 35.263035, 43.734741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691843, 34.941223, 44.444298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993914, 35.201660, 44.413857>,  <30.175156, 35.357922, 44.395592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993914, 35.201660, 44.413857>,  <29.691843, 34.941223, 44.444298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993914, 35.201660, 44.413857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121084, -0.024457, 0.992341,
		0.644243, -0.758606, -0.097306,
		0.755175, 0.651091, -0.076099,
		30.220467, 35.396988, 44.391026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200504, 34.606541, 44.907757>,  <29.691843, 34.941223, 44.444298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200504, 34.606541, 44.907757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289452, 34.993107, 44.856232>,  <30.342821, 35.225048, 44.825317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289452, 34.993107, 44.856232>,  <30.200504, 34.606541, 44.907757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289452, 34.993107, 44.856232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123681, 0.103094, 0.986952,
		0.967086, -0.235400, -0.096602,
		0.222370, 0.966415, -0.128815,
		30.356163, 35.283031, 44.817589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847967, 34.705978, 45.297386>,  <30.200504, 34.606541, 44.907757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847967, 34.705978, 45.297386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699797, 35.073868, 45.245407>,  <30.610895, 35.294601, 45.214218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699797, 35.073868, 45.245407>,  <30.847967, 34.705978, 45.297386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699797, 35.073868, 45.245407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240265, 0.230012, 0.943063,
		0.897250, 0.318114, -0.306181,
		-0.370427, 0.919727, -0.129947,
		30.588669, 35.349785, 45.206425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420172, 35.172195, 45.386002>,  <30.847967, 34.705978, 45.297386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420172, 35.172195, 45.386002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072361, 35.353870, 45.463600>,  <30.863674, 35.462875, 45.510159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072361, 35.353870, 45.463600>,  <31.420172, 35.172195, 45.386002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072361, 35.353870, 45.463600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279449, 0.128578, 0.951512,
		0.407225, 0.881577, -0.238725,
		-0.869526, 0.454191, 0.193996,
		30.811502, 35.490128, 45.521797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583080, 35.748566, 45.838436>,  <31.420172, 35.172195, 45.386002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583080, 35.748566, 45.838436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185976, 35.748779, 45.886486>,  <30.947714, 35.748909, 45.915314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185976, 35.748779, 45.886486>,  <31.583080, 35.748566, 45.838436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185976, 35.748779, 45.886486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117083, 0.227850, 0.966631,
		-0.026853, 0.973696, -0.226263,
		-0.992759, 0.000534, 0.120122,
		30.888149, 35.748940, 45.922523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493618, 36.337215, 46.127735>,  <31.583080, 35.748566, 45.838436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493618, 36.337215, 46.127735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144703, 36.156979, 46.203716>,  <30.935354, 36.048836, 46.249306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144703, 36.156979, 46.203716>,  <31.493618, 36.337215, 46.127735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144703, 36.156979, 46.203716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047135, 0.309172, 0.949837,
		-0.486713, 0.837486, -0.248449,
		-0.872289, -0.450588, 0.189953,
		30.883017, 36.021801, 46.260700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080217, 36.832684, 46.507198>,  <31.493618, 36.337215, 46.127735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080217, 36.832684, 46.507198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982765, 36.449772, 46.569492>,  <30.924294, 36.220024, 46.606869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982765, 36.449772, 46.569492>,  <31.080217, 36.832684, 46.507198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982765, 36.449772, 46.569492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045328, 0.149164, 0.987773,
		-0.968808, 0.247711, 0.007051,
		-0.243630, -0.957282, 0.155740,
		30.909676, 36.162586, 46.616215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545723, 36.815563, 47.002911>,  <31.080217, 36.832684, 46.507198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545723, 36.815563, 47.002911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713417, 36.452583, 47.014072>,  <30.814034, 36.234795, 47.020771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713417, 36.452583, 47.014072>,  <30.545723, 36.815563, 47.002911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713417, 36.452583, 47.014072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017588, 0.022615, 0.999589,
		-0.907706, -0.419555, -0.006479,
		0.419237, -0.907448, 0.027908,
		30.839188, 36.180347, 47.022446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150608, 36.426750, 47.546535>,  <30.545723, 36.815563, 47.002911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150608, 36.426750, 47.546535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514336, 36.263737, 47.512947>,  <30.732573, 36.165928, 47.492794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514336, 36.263737, 47.512947>,  <30.150608, 36.426750, 47.546535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514336, 36.263737, 47.512947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094408, 0.005522, 0.995518,
		-0.405246, -0.913172, 0.043496,
		0.909320, -0.407536, -0.083973,
		30.787132, 36.141476, 47.487755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180326, 35.806225, 48.025898>,  <30.150608, 36.426750, 47.546535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180326, 35.806225, 48.025898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557396, 35.927544, 47.970219>,  <30.783638, 36.000336, 47.936813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557396, 35.927544, 47.970219>,  <30.180326, 35.806225, 48.025898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557396, 35.927544, 47.970219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143326, 0.008713, 0.989637,
		0.301370, -0.952855, -0.035257,
		0.942674, 0.303300, -0.139195,
		30.840199, 36.018532, 47.928459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495310, 35.512177, 48.619480>,  <30.180326, 35.806225, 48.025898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495310, 35.512177, 48.619480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803339, 35.717369, 48.467773>,  <30.988157, 35.840485, 48.376751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803339, 35.717369, 48.467773>,  <30.495310, 35.512177, 48.619480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803339, 35.717369, 48.467773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401789, 0.071794, 0.912914,
		0.495533, -0.855394, -0.150822,
		0.770073, 0.512978, -0.379264,
		31.034361, 35.871262, 48.353992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079554, 35.082935, 48.814167>,  <30.495310, 35.512177, 48.619480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079554, 35.082935, 48.814167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202940, 35.459690, 48.760960>,  <31.276972, 35.685741, 48.729034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202940, 35.459690, 48.760960>,  <31.079554, 35.082935, 48.814167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202940, 35.459690, 48.760960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317204, 0.029982, 0.947883,
		0.896788, -0.334586, -0.289522,
		0.308468, 0.941888, -0.133020,
		31.295481, 35.742256, 48.721054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604654, 35.137081, 49.318951>,  <31.079554, 35.082935, 48.814167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604654, 35.137081, 49.318951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456318, 35.502357, 49.251358>,  <31.367315, 35.721523, 49.210800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456318, 35.502357, 49.251358>,  <31.604654, 35.137081, 49.318951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456318, 35.502357, 49.251358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198260, 0.255611, 0.946233,
		0.907287, 0.317400, -0.275841,
		-0.370843, 0.913192, -0.168984,
		31.345066, 35.776314, 49.200665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087234, 35.529224, 49.627510>,  <31.604654, 35.137081, 49.318951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087234, 35.529224, 49.627510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757969, 35.751186, 49.579376>,  <31.560410, 35.884365, 49.550495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757969, 35.751186, 49.579376>,  <32.087234, 35.529224, 49.627510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757969, 35.751186, 49.579376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044655, 0.274538, 0.960539,
		0.566047, 0.785306, -0.250769,
		-0.823163, 0.554908, -0.120333,
		31.511021, 35.917660, 49.543278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230232, 36.169754, 49.827026>,  <32.087234, 35.529224, 49.627510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230232, 36.169754, 49.827026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833811, 36.171665, 49.880379>,  <31.595959, 36.172813, 49.912388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833811, 36.171665, 49.880379>,  <32.230232, 36.169754, 49.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833811, 36.171665, 49.880379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115295, 0.534070, 0.837542,
		-0.067230, 0.845427, -0.529843,
		-0.991054, 0.004780, 0.133379,
		31.536495, 36.173100, 49.920391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993416, 36.890907, 49.901882>,  <32.230232, 36.169754, 49.827026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993416, 36.890907, 49.901882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720823, 36.652607, 50.071903>,  <31.557268, 36.509628, 50.173916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720823, 36.652607, 50.071903>,  <31.993416, 36.890907, 49.901882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720823, 36.652607, 50.071903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003173, 0.583203, 0.812321,
		-0.731830, 0.552232, -0.399331,
		-0.681480, -0.595747, 0.425053,
		31.516378, 36.473885, 50.199421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666298, 37.341389, 50.260403>,  <31.993416, 36.890907, 49.901882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666298, 37.341389, 50.260403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531168, 37.000317, 50.419807>,  <31.450090, 36.795673, 50.515450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531168, 37.000317, 50.419807>,  <31.666298, 37.341389, 50.260403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531168, 37.000317, 50.419807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153937, 0.467755, 0.870350,
		-0.928535, 0.232681, -0.289279,
		-0.337825, -0.852681, 0.398509,
		31.429821, 36.744511, 50.539360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052944, 37.538132, 50.670391>,  <31.666298, 37.341389, 50.260403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052944, 37.538132, 50.670391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178566, 37.180286, 50.797535>,  <31.253939, 36.965580, 50.873821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178566, 37.180286, 50.797535>,  <31.052944, 37.538132, 50.670391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178566, 37.180286, 50.797535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057115, 0.351991, 0.934259,
		-0.947685, -0.275254, 0.161640,
		0.314055, -0.894616, 0.317856,
		31.272783, 36.911903, 50.892891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625118, 37.446697, 51.331726>,  <31.052944, 37.538132, 50.670391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625118, 37.446697, 51.331726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984764, 37.274040, 51.302650>,  <31.200552, 37.170448, 51.285206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984764, 37.274040, 51.302650>,  <30.625118, 37.446697, 51.331726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984764, 37.274040, 51.302650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221610, 0.305685, 0.925984,
		-0.377473, -0.848672, 0.370501,
		0.899113, -0.431640, -0.072686,
		31.254498, 37.144547, 51.280846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688980, 37.003689, 52.028198>,  <30.625118, 37.446697, 51.331726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688980, 37.003689, 52.028198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013144, 37.149185, 51.844490>,  <31.207642, 37.236485, 51.734264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013144, 37.149185, 51.844490>,  <30.688980, 37.003689, 52.028198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013144, 37.149185, 51.844490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284673, 0.440675, 0.851332,
		0.512053, -0.820670, 0.253581,
		0.810410, 0.363739, -0.459271,
		31.256266, 37.258308, 51.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378351, 36.812546, 52.329353>,  <30.688980, 37.003689, 52.028198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378351, 36.812546, 52.329353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457008, 37.153526, 52.135586>,  <31.504202, 37.358112, 52.019325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457008, 37.153526, 52.135586>,  <31.378351, 36.812546, 52.329353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457008, 37.153526, 52.135586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198564, 0.449208, 0.871083,
		0.960158, -0.267481, -0.080932,
		0.196643, 0.852447, -0.484423,
		31.516001, 37.409260, 51.990257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061218, 37.096138, 52.460918>,  <31.378351, 36.812546, 52.329353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061218, 37.096138, 52.460918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771690, 37.367699, 52.411640>,  <31.597973, 37.530636, 52.382072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771690, 37.367699, 52.411640>,  <32.061218, 37.096138, 52.460918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771690, 37.367699, 52.411640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246653, 0.421335, 0.872719,
		0.644394, 0.601308, -0.472424,
		-0.723822, 0.678900, -0.123191,
		31.554544, 37.571369, 52.374683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798477, 37.092777, 52.399380>,  <32.061218, 37.096138, 52.460918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798477, 37.092777, 52.399380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699894, 36.951508, 52.760384>,  <32.640743, 36.866745, 52.976986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699894, 36.951508, 52.760384>,  <32.798477, 37.092777, 52.399380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699894, 36.951508, 52.760384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957188, -0.057174, -0.283765,
		0.151817, -0.933811, -0.323959,
		-0.246460, -0.353170, 0.902512,
		32.625957, 36.845558, 53.031136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459457, 36.488762, 52.357006>,  <32.798477, 37.092777, 52.399380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459457, 36.488762, 52.357006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308254, 36.659470, 52.685635>,  <32.217533, 36.761894, 52.882812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308254, 36.659470, 52.685635>,  <32.459457, 36.488762, 52.357006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308254, 36.659470, 52.685635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925560, -0.153926, -0.345898,
		-0.021157, -0.891165, 0.453186,
		-0.378009, 0.426769, 0.821570,
		32.194851, 36.787502, 52.932106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972939, 36.108345, 52.895370>,  <32.459457, 36.488762, 52.357006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972939, 36.108345, 52.895370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849434, 36.035816, 52.521893>,  <32.775330, 35.992298, 52.297806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849434, 36.035816, 52.521893>,  <32.972939, 36.108345, 52.895370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849434, 36.035816, 52.521893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510740, -0.796518, 0.323579,
		-0.802377, 0.576785, 0.153327,
		-0.308763, -0.181323, -0.933696,
		32.756805, 35.981419, 52.241783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254208, 36.016361, 52.972282>,  <32.972939, 36.108345, 52.895370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254208, 36.016361, 52.972282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404751, 35.825382, 52.654690>,  <32.495075, 35.710796, 52.464134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404751, 35.825382, 52.654690>,  <32.254208, 36.016361, 52.972282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404751, 35.825382, 52.654690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396151, -0.857627, 0.327934,
		-0.837507, 0.191115, -0.511915,
		0.376359, -0.477443, -0.793979,
		32.517658, 35.682148, 52.416496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755871, 35.493546, 52.721775>,  <32.254208, 36.016361, 52.972282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755871, 35.493546, 52.721775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125172, 35.364464, 52.638378>,  <32.346752, 35.287014, 52.588341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125172, 35.364464, 52.638378>,  <31.755871, 35.493546, 52.721775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125172, 35.364464, 52.638378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161596, -0.818505, 0.551305,
		-0.348561, -0.475301, -0.807833,
		0.923251, -0.322706, -0.208492,
		32.402145, 35.267651, 52.575829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854525, 34.748711, 52.462666>,  <31.755871, 35.493546, 52.721775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854525, 34.748711, 52.462666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720442, 35.029819, 52.211666>,  <31.639992, 35.198483, 52.061066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720442, 35.029819, 52.211666>,  <31.854525, 34.748711, 52.462666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720442, 35.029819, 52.211666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179035, -0.701408, -0.689908,
		-0.924977, -0.118918, 0.360938,
		-0.335207, 0.702769, -0.627496,
		31.619879, 35.240650, 52.023418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163172, 34.614311, 52.136124>,  <31.854525, 34.748711, 52.462666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163172, 34.614311, 52.136124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382433, 34.825363, 51.876545>,  <31.513988, 34.951996, 51.720798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382433, 34.825363, 51.876545>,  <31.163172, 34.614311, 52.136124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382433, 34.825363, 51.876545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133905, -0.710529, -0.690810,
		-0.825591, 0.465566, -0.318825,
		0.548151, 0.527634, -0.648948,
		31.546879, 34.983654, 51.681862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793388, 34.401619, 51.495480>,  <31.163172, 34.614311, 52.136124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793388, 34.401619, 51.495480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127106, 34.556252, 51.338249>,  <31.327335, 34.649029, 51.243912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127106, 34.556252, 51.338249>,  <30.793388, 34.401619, 51.495480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127106, 34.556252, 51.338249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247663, -0.374202, -0.893664,
		-0.492561, 0.842930, -0.216453,
		0.834294, 0.386577, -0.393080,
		31.377394, 34.672226, 51.220325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687157, 34.668026, 50.842937>,  <30.793388, 34.401619, 51.495480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687157, 34.668026, 50.842937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082682, 34.622814, 50.804001>,  <31.319996, 34.595688, 50.780640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082682, 34.622814, 50.804001>,  <30.687157, 34.668026, 50.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082682, 34.622814, 50.804001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141948, -0.512443, -0.846908,
		0.045842, 0.851250, -0.522753,
		0.988812, -0.113027, -0.097342,
		31.379326, 34.588905, 50.774799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784750, 34.619106, 50.201378>,  <30.687157, 34.668026, 50.842937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784750, 34.619106, 50.201378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142508, 34.483997, 50.318661>,  <31.357162, 34.402931, 50.389030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142508, 34.483997, 50.318661>,  <30.784750, 34.619106, 50.201378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142508, 34.483997, 50.318661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069672, -0.542315, -0.837281,
		0.441824, 0.769286, -0.461508,
		0.894392, -0.337777, 0.293206,
		31.410826, 34.382664, 50.406624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249756, 34.553940, 49.508442>,  <30.784750, 34.619106, 50.201378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249756, 34.553940, 49.508442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419807, 34.312656, 49.778374>,  <31.521839, 34.167885, 49.940334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419807, 34.312656, 49.778374>,  <31.249756, 34.553940, 49.508442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419807, 34.312656, 49.778374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262673, -0.631255, -0.729740,
		0.866179, 0.487495, -0.109919,
		0.425131, -0.603212, 0.674832,
		31.547346, 34.131691, 49.980824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956043, 34.433861, 49.329926>,  <31.249756, 34.553940, 49.508442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956043, 34.433861, 49.329926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847500, 34.112053, 49.541248>,  <31.782373, 33.918968, 49.668041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847500, 34.112053, 49.541248>,  <31.956043, 34.433861, 49.329926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847500, 34.112053, 49.541248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368501, -0.593921, -0.715168,
		0.889142, 0.000616, 0.457631,
		-0.271356, -0.804524, 0.528307,
		31.766092, 33.870697, 49.699741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502121, 34.003719, 49.348740>,  <31.956043, 34.433861, 49.329926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502121, 34.003719, 49.348740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204937, 33.754463, 49.446472>,  <32.026627, 33.604908, 49.505112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204937, 33.754463, 49.446472>,  <32.502121, 34.003719, 49.348740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204937, 33.754463, 49.446472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380465, -0.693505, -0.611798,
		0.550685, -0.361583, 0.752332,
		-0.742962, -0.623144, 0.244333,
		31.982048, 33.567520, 49.519772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915428, 33.452213, 49.386833>,  <32.502121, 34.003719, 49.348740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915428, 33.452213, 49.386833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546879, 33.300976, 49.350803>,  <32.325748, 33.210232, 49.329185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546879, 33.300976, 49.350803>,  <32.915428, 33.452213, 49.386833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546879, 33.300976, 49.350803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294030, -0.526474, -0.797729,
		0.254199, -0.761490, 0.596252,
		-0.921373, -0.378098, -0.090072,
		32.270466, 33.187546, 49.323780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032478, 32.705772, 49.190563>,  <32.915428, 33.452213, 49.386833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032478, 32.705772, 49.190563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649067, 32.766289, 49.093952>,  <32.419022, 32.802597, 49.035984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649067, 32.766289, 49.093952>,  <33.032478, 32.705772, 49.190563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649067, 32.766289, 49.093952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119185, -0.557027, -0.821898,
		-0.258881, -0.816599, 0.515895,
		-0.958528, 0.151287, -0.241530,
		32.361507, 32.811676, 49.021492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699139, 32.037228, 48.935692>,  <33.032478, 32.705772, 49.190563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699139, 32.037228, 48.935692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464062, 32.309433, 48.760643>,  <32.323017, 32.472755, 48.655613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464062, 32.309433, 48.760643>,  <32.699139, 32.037228, 48.935692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464062, 32.309433, 48.760643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132400, -0.452712, -0.881772,
		-0.798178, -0.576153, 0.175955,
		-0.587692, 0.680515, -0.437627,
		32.287754, 32.513588, 48.629356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403801, 31.569506, 48.356903>,  <32.699139, 32.037228, 48.935692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403801, 31.569506, 48.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311516, 31.943449, 48.248966>,  <32.256145, 32.167816, 48.184204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311516, 31.943449, 48.248966>,  <32.403801, 31.569506, 48.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311516, 31.943449, 48.248966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149613, -0.239938, -0.959190,
		-0.961451, -0.261666, -0.084511,
		-0.230710, 0.934859, -0.269837,
		32.242302, 32.223907, 48.168015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989738, 31.538830, 47.715313>,  <32.403801, 31.569506, 48.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989738, 31.538830, 47.715313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182980, 31.888414, 47.736496>,  <32.298923, 32.098164, 47.749207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182980, 31.888414, 47.736496>,  <31.989738, 31.538830, 47.715313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182980, 31.888414, 47.736496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137254, -0.015856, -0.990409,
		-0.864740, 0.485736, -0.127615,
		0.483101, 0.873962, 0.052958,
		32.327911, 32.150604, 47.752384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790873, 31.892357, 47.140984>,  <31.989738, 31.538830, 47.715313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790873, 31.892357, 47.140984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115063, 32.108528, 47.231377>,  <32.309578, 32.238232, 47.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115063, 32.108528, 47.231377>,  <31.790873, 31.892357, 47.140984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115063, 32.108528, 47.231377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239150, 0.046898, -0.969850,
		-0.534734, 0.840081, -0.091234,
		0.810474, 0.540430, 0.225983,
		32.358204, 32.270657, 47.299171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788378, 32.331478, 46.604321>,  <31.790873, 31.892357, 47.140984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788378, 32.331478, 46.604321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149754, 32.421555, 46.750248>,  <32.366577, 32.475601, 46.837803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149754, 32.421555, 46.750248>,  <31.788378, 32.331478, 46.604321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149754, 32.421555, 46.750248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292390, 0.298693, -0.908455,
		-0.313543, 0.927401, 0.204007,
		0.903437, 0.225190, 0.364816,
		32.420784, 32.489113, 46.859692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086739, 33.017467, 46.430882>,  <31.788378, 32.331478, 46.604321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086739, 33.017467, 46.430882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392708, 32.762848, 46.470272>,  <32.576290, 32.610077, 46.493908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392708, 32.762848, 46.470272>,  <32.086739, 33.017467, 46.430882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392708, 32.762848, 46.470272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346132, 0.277276, -0.896276,
		0.543220, 0.719667, 0.432425,
		0.764921, -0.636551, 0.098477,
		32.622185, 32.571884, 46.499817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676430, 33.376778, 46.280823>,  <32.086739, 33.017467, 46.430882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676430, 33.376778, 46.280823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807774, 33.000790, 46.243660>,  <32.886581, 32.775196, 46.221363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807774, 33.000790, 46.243660>,  <32.676430, 33.376778, 46.280823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807774, 33.000790, 46.243660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389038, 0.224217, -0.893519,
		0.860713, 0.257256, 0.439309,
		0.328363, -0.939971, -0.092905,
		32.906284, 32.718800, 46.215790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177784, 33.493446, 45.865379>,  <32.676430, 33.376778, 46.280823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177784, 33.493446, 45.865379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170132, 33.093521, 45.866348>,  <33.165539, 32.853565, 45.866928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170132, 33.093521, 45.866348>,  <33.177784, 33.493446, 45.865379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170132, 33.093521, 45.866348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197943, -0.006161, -0.980194,
		0.980027, -0.018274, 0.198024,
		-0.019132, -0.999814, 0.002421,
		33.164391, 32.793575, 45.867073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775734, 33.224518, 45.485050>,  <33.177784, 33.493446, 45.865379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775734, 33.224518, 45.485050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513466, 32.923161, 45.465076>,  <33.356106, 32.742344, 45.453094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513466, 32.923161, 45.465076>,  <33.775734, 33.224518, 45.485050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513466, 32.923161, 45.465076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241245, -0.146368, -0.959363,
		0.715473, -0.641069, 0.277722,
		-0.655667, -0.753397, -0.049933,
		33.316765, 32.697140, 45.450096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071880, 32.623817, 45.175999>,  <33.775734, 33.224518, 45.485050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071880, 32.623817, 45.175999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685333, 32.569126, 45.088882>,  <33.453403, 32.536312, 45.036613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685333, 32.569126, 45.088882>,  <34.071880, 32.623817, 45.175999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685333, 32.569126, 45.088882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222631, -0.020944, -0.974678,
		0.128709, -0.990386, 0.050680,
		-0.966369, -0.136733, -0.217795,
		33.395424, 32.528107, 45.023544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013859, 32.090687, 44.647644>,  <34.071880, 32.623817, 45.175999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013859, 32.090687, 44.647644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660175, 32.272961, 44.606625>,  <33.447964, 32.382324, 44.582012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660175, 32.272961, 44.606625>,  <34.013859, 32.090687, 44.647644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660175, 32.272961, 44.606625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017045, -0.187931, -0.982034,
		-0.466775, -0.870074, 0.158404,
		-0.884212, 0.455689, -0.102552,
		33.394913, 32.409668, 44.575859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546471, 31.583956, 44.371605>,  <34.013859, 32.090687, 44.647644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546471, 31.583956, 44.371605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365711, 31.933533, 44.300037>,  <33.257256, 32.143280, 44.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365711, 31.933533, 44.300037>,  <33.546471, 31.583956, 44.371605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365711, 31.933533, 44.300037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010264, -0.205650, -0.978572,
		-0.892012, -0.440375, 0.101902,
		-0.451895, 0.873944, -0.178922,
		33.230145, 32.195717, 44.246361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065071, 31.427980, 43.838528>,  <33.546471, 31.583956, 44.371605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065071, 31.427980, 43.838528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120762, 31.822964, 43.808754>,  <33.154175, 32.059956, 43.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120762, 31.822964, 43.808754>,  <33.065071, 31.427980, 43.838528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120762, 31.822964, 43.808754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142593, -0.054393, -0.988286,
		-0.979941, 0.148206, 0.133232,
		0.139223, 0.987459, -0.074435,
		33.162529, 32.119202, 43.786423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538128, 31.661886, 43.378868>,  <33.065071, 31.427980, 43.838528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538128, 31.661886, 43.378868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776791, 31.982630, 43.366047>,  <32.919987, 32.175076, 43.358353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776791, 31.982630, 43.366047>,  <32.538128, 31.661886, 43.378868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776791, 31.982630, 43.366047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122824, 0.051774, -0.991077,
		-0.793044, 0.595267, 0.129379,
		0.596654, 0.801859, -0.032054,
		32.955788, 32.223186, 43.356430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272659, 32.187878, 42.928020>,  <32.538128, 31.661886, 43.378868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272659, 32.187878, 42.928020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651295, 32.315300, 42.947987>,  <32.878475, 32.391754, 42.959965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651295, 32.315300, 42.947987>,  <32.272659, 32.187878, 42.928020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651295, 32.315300, 42.947987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003349, 0.164508, -0.986370,
		-0.322424, 0.933520, 0.156789,
		0.946589, 0.318555, 0.049915,
		32.935272, 32.410866, 42.962959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384239, 33.011005, 42.794312>,  <32.272659, 32.187878, 42.928020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384239, 33.011005, 42.794312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720531, 32.818447, 42.695164>,  <32.922306, 32.702911, 42.635677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720531, 32.818447, 42.695164>,  <32.384239, 33.011005, 42.794312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720531, 32.818447, 42.695164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038802, 0.510163, -0.859202,
		0.540065, 0.712738, 0.447588,
		0.840728, -0.481392, -0.247865,
		32.972752, 32.674030, 42.620804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793365, 33.515137, 42.413570>,  <32.384239, 33.011005, 42.794312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793365, 33.515137, 42.413570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982513, 33.176838, 42.314686>,  <33.096001, 32.973858, 42.255356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982513, 33.176838, 42.314686>,  <32.793365, 33.515137, 42.413570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982513, 33.176838, 42.314686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041488, 0.301615, -0.952526,
		0.880157, 0.440161, 0.177712,
		0.472866, -0.845746, -0.247207,
		33.124374, 32.923115, 42.240524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372360, 33.704262, 41.940804>,  <32.793365, 33.515137, 42.413570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372360, 33.704262, 41.940804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270691, 33.322044, 41.881031>,  <33.209690, 33.092712, 41.845169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270691, 33.322044, 41.881031>,  <33.372360, 33.704262, 41.940804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270691, 33.322044, 41.881031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108001, 0.125493, -0.986198,
		0.961109, -0.266804, 0.071303,
		-0.254174, -0.955545, -0.149428,
		33.194439, 33.035381, 41.836205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822498, 33.538357, 41.433220>,  <33.372360, 33.704262, 41.940804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822498, 33.538357, 41.433220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545345, 33.253170, 41.390163>,  <33.379051, 33.082058, 41.364330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545345, 33.253170, 41.390163>,  <33.822498, 33.538357, 41.433220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545345, 33.253170, 41.390163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117246, 0.035888, -0.992454,
		0.711450, -0.700278, 0.058726,
		-0.692886, -0.712967, -0.107637,
		33.337479, 33.039280, 41.357872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071915, 33.168892, 40.897625>,  <33.822498, 33.538357, 41.433220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071915, 33.168892, 40.897625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688072, 33.057274, 40.911999>,  <33.457767, 32.990303, 40.920624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688072, 33.057274, 40.911999>,  <34.071915, 33.168892, 40.897625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688072, 33.057274, 40.911999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034791, -0.009068, -0.999354,
		0.279195, -0.960234, -0.001006,
		-0.959604, -0.279050, 0.035939,
		33.400192, 32.973560, 40.922779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952293, 32.776501, 40.391636>,  <34.071915, 33.168892, 40.897625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952293, 32.776501, 40.391636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564301, 32.844376, 40.461315>,  <33.331505, 32.885101, 40.503124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564301, 32.844376, 40.461315>,  <33.952293, 32.776501, 40.391636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564301, 32.844376, 40.461315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170866, 0.034165, -0.984702,
		-0.173042, -0.984906, -0.004145,
		-0.969980, 0.169686, 0.174199,
		33.273308, 32.895283, 40.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529446, 32.208275, 40.069027>,  <33.952293, 32.776501, 40.391636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529446, 32.208275, 40.069027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287598, 32.526096, 40.091412>,  <33.142490, 32.716789, 40.104843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287598, 32.526096, 40.091412>,  <33.529446, 32.208275, 40.069027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287598, 32.526096, 40.091412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056826, 0.113107, -0.991956,
		-0.794488, -0.596572, -0.113537,
		-0.604615, 0.794549, 0.055961,
		33.106213, 32.764462, 40.108200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890015, 32.054115, 39.697350>,  <33.529446, 32.208275, 40.069027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890015, 32.054115, 39.697350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908916, 32.452953, 39.721230>,  <32.920258, 32.692257, 39.735558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908916, 32.452953, 39.721230>,  <32.890015, 32.054115, 39.697350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908916, 32.452953, 39.721230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149369, 0.066147, -0.986567,
		-0.987652, 0.037700, 0.152061,
		0.047251, 0.997098, 0.059699,
		32.923092, 32.752083, 39.739140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173820, 32.362171, 39.356377>,  <32.890015, 32.054115, 39.697350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173820, 32.362171, 39.356377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475670, 32.624630, 39.354866>,  <32.656780, 32.782104, 39.353958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475670, 32.624630, 39.354866>,  <32.173820, 32.362171, 39.356377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475670, 32.624630, 39.354866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103796, 0.113685, -0.988080,
		-0.647893, 0.746023, 0.153894,
		0.754626, 0.656144, -0.003778,
		32.702057, 32.821472, 39.353733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995266, 32.907475, 38.877056>,  <32.173820, 32.362171, 39.356377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995266, 32.907475, 38.877056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390568, 32.954544, 38.916050>,  <32.627750, 32.982788, 38.939445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390568, 32.954544, 38.916050>,  <31.995266, 32.907475, 38.877056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390568, 32.954544, 38.916050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095458, 0.022762, -0.995173,
		-0.119327, 0.992791, 0.011262,
		0.988256, 0.117676, 0.097486,
		32.687046, 32.989845, 38.945297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109688, 33.486237, 38.498043>,  <31.995266, 32.907475, 38.877056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109688, 33.486237, 38.498043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458233, 33.296307, 38.547459>,  <32.667362, 33.182350, 38.577106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458233, 33.296307, 38.547459>,  <32.109688, 33.486237, 38.498043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458233, 33.296307, 38.547459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273926, 0.261922, -0.925398,
		0.407044, 0.840201, 0.358297,
		0.871367, -0.474825, 0.123539,
		32.719643, 33.153858, 38.584522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548462, 33.933334, 38.042217>,  <32.109688, 33.486237, 38.498043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548462, 33.933334, 38.042217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728943, 33.579479, 38.089256>,  <32.837231, 33.367165, 38.117481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728943, 33.579479, 38.089256>,  <32.548462, 33.933334, 38.042217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728943, 33.579479, 38.089256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295008, 0.023486, -0.955206,
		0.842252, 0.465681, 0.271573,
		0.451200, -0.884641, 0.117598,
		32.864304, 33.314087, 38.124535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161247, 33.986744, 37.673023>,  <32.548462, 33.933334, 38.042217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161247, 33.986744, 37.673023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133018, 33.588589, 37.698990>,  <33.116081, 33.349693, 37.714569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133018, 33.588589, 37.698990>,  <33.161247, 33.986744, 37.673023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133018, 33.588589, 37.698990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401682, -0.087929, -0.911548,
		0.913056, -0.038253, 0.406037,
		-0.070572, -0.995392, 0.064919,
		33.111847, 33.289970, 37.718464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845863, 33.763954, 37.541077>,  <33.161247, 33.986744, 37.673023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845863, 33.763954, 37.541077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601921, 33.452168, 37.483795>,  <33.455555, 33.265095, 37.449429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601921, 33.452168, 37.483795>,  <33.845863, 33.763954, 37.541077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601921, 33.452168, 37.483795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405029, -0.151234, -0.901709,
		0.681199, -0.607909, 0.407939,
		-0.609852, -0.779471, -0.143200,
		33.418964, 33.218327, 37.440834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257126, 33.184689, 37.052933>,  <33.845863, 33.763954, 37.541077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257126, 33.184689, 37.052933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864185, 33.116085, 37.023071>,  <33.628422, 33.074924, 37.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864185, 33.116085, 37.023071>,  <34.257126, 33.184689, 37.052933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864185, 33.116085, 37.023071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122450, -0.287940, -0.949788,
		0.141397, -0.942166, 0.303859,
		-0.982351, -0.171505, -0.074655,
		33.569481, 33.064632, 37.000675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763737, 32.705673, 36.634117>,  <34.257126, 33.184689, 37.052933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763737, 32.705673, 36.634117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110847, 32.508003, 36.613159>,  <35.319115, 32.389400, 36.600582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110847, 32.508003, 36.613159>,  <34.763737, 32.705673, 36.634117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110847, 32.508003, 36.613159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119704, -0.310200, 0.943105,
		-0.482317, -0.812135, -0.328341,
		0.867780, -0.494179, -0.052399,
		35.371181, 32.359749, 36.597439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656158, 32.253532, 37.134846>,  <34.763737, 32.705673, 36.634117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656158, 32.253532, 37.134846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054222, 32.234875, 37.100258>,  <35.293060, 32.223679, 37.079506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054222, 32.234875, 37.100258>,  <34.656158, 32.253532, 37.134846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054222, 32.234875, 37.100258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067547, -0.314314, 0.946913,
		-0.071349, -0.948172, -0.309642,
		0.995162, -0.046645, -0.086472,
		35.352772, 32.220882, 37.074318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914661, 31.711199, 37.586411>,  <34.656158, 32.253532, 37.134846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914661, 31.711199, 37.586411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275600, 31.861494, 37.501945>,  <35.492165, 31.951672, 37.451267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275600, 31.861494, 37.501945>,  <34.914661, 31.711199, 37.586411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275600, 31.861494, 37.501945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255876, -0.072755, 0.963968,
		0.346839, -0.923864, -0.161794,
		0.902347, 0.375741, -0.211161,
		35.546303, 31.974216, 37.438599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500057, 31.285379, 37.803291>,  <34.914661, 31.711199, 37.586411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500057, 31.285379, 37.803291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665134, 31.649590, 37.793274>,  <35.764179, 31.868116, 37.787262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665134, 31.649590, 37.793274>,  <35.500057, 31.285379, 37.803291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665134, 31.649590, 37.793274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341024, -0.128956, 0.931167,
		0.844623, -0.392825, -0.363731,
		0.412691, 0.910527, -0.025044,
		35.788940, 31.922747, 37.785759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044731, 31.132301, 38.265717>,  <35.500057, 31.285379, 37.803291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044731, 31.132301, 38.265717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038010, 31.530222, 38.225544>,  <36.033978, 31.768974, 38.201439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038010, 31.530222, 38.225544>,  <36.044731, 31.132301, 38.265717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038010, 31.530222, 38.225544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208056, 0.101729, 0.972813,
		0.977973, -0.004545, -0.208684,
		-0.016808, 0.994802, -0.100434,
		36.032967, 31.828663, 38.195415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720467, 31.385334, 38.662415>,  <36.044731, 31.132301, 38.265717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720467, 31.385334, 38.662415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438107, 31.667263, 38.634338>,  <36.268692, 31.836420, 38.617493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438107, 31.667263, 38.634338>,  <36.720467, 31.385334, 38.662415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438107, 31.667263, 38.634338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009013, 0.108032, 0.994106,
		0.708253, 0.701108, -0.082612,
		-0.705901, 0.704824, -0.070195,
		36.226337, 31.878710, 38.613281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976456, 32.029972, 39.062542>,  <36.720467, 31.385334, 38.662415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976456, 32.029972, 39.062542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579956, 32.073322, 39.032379>,  <36.342056, 32.099335, 39.014282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579956, 32.073322, 39.032379>,  <36.976456, 32.029972, 39.062542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579956, 32.073322, 39.032379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062706, 0.116193, 0.991245,
		0.116193, 0.987296, -0.108379,
		-0.991245, 0.108379, -0.075410,
		36.282581, 32.105835, 39.009758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910732, 32.517754, 39.427555>,  <36.976456, 32.029972, 39.062542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910732, 32.517754, 39.427555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529255, 32.397583, 39.421776>,  <36.300369, 32.325481, 39.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529255, 32.397583, 39.421776>,  <36.910732, 32.517754, 39.427555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529255, 32.397583, 39.421776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033411, 0.058084, 0.997753,
		-0.298915, 0.952034, -0.065432,
		-0.953695, -0.300429, -0.014446,
		36.243145, 32.307453, 39.417442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502323, 32.986141, 39.801678>,  <36.910732, 32.517754, 39.427555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502323, 32.986141, 39.801678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284672, 32.650566, 39.797382>,  <36.154083, 32.449223, 39.794804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284672, 32.650566, 39.797382>,  <36.502323, 32.986141, 39.801678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284672, 32.650566, 39.797382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157838, 0.089782, 0.983375,
		-0.824023, 0.536776, -0.181269,
		-0.544127, -0.838934, -0.010742,
		36.121433, 32.398888, 39.794159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845654, 33.138592, 40.116318>,  <36.502323, 32.986141, 39.801678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845654, 33.138592, 40.116318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905121, 32.743069, 40.121445>,  <35.940800, 32.505756, 40.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905121, 32.743069, 40.121445>,  <35.845654, 33.138592, 40.116318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905121, 32.743069, 40.121445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167820, -0.012454, 0.985739,
		-0.974544, -0.148695, -0.167792,
		0.148664, -0.988805, 0.012817,
		35.949718, 32.446426, 40.125290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268036, 33.005825, 40.571739>,  <35.845654, 33.138592, 40.116318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268036, 33.005825, 40.571739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529781, 32.703533, 40.561337>,  <35.686829, 32.522160, 40.555096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529781, 32.703533, 40.561337>,  <35.268036, 33.005825, 40.571739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529781, 32.703533, 40.561337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033447, -0.063288, 0.997435,
		-0.755437, -0.651819, -0.066691,
		0.654368, -0.755729, -0.026009,
		35.726093, 32.476814, 40.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982880, 32.540718, 41.146797>,  <35.268036, 33.005825, 40.571739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982880, 32.540718, 41.146797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349430, 32.393372, 41.084114>,  <35.569363, 32.304966, 41.046505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349430, 32.393372, 41.084114>,  <34.982880, 32.540718, 41.146797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349430, 32.393372, 41.084114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101101, -0.165817, 0.980960,
		-0.387334, -0.914775, -0.114709,
		0.916379, -0.368362, -0.156711,
		35.624344, 32.282864, 41.037102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986946, 31.853544, 41.470512>,  <34.982880, 32.540718, 41.146797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986946, 31.853544, 41.470512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366875, 31.974804, 41.439682>,  <35.594833, 32.047562, 41.421185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366875, 31.974804, 41.439682>,  <34.986946, 31.853544, 41.470512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366875, 31.974804, 41.439682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158014, -0.252356, 0.954645,
		0.269950, -0.918921, -0.287594,
		0.949820, 0.303151, -0.077079,
		35.651821, 32.065750, 41.416557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355736, 31.257856, 41.786133>,  <34.986946, 31.853544, 41.470512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355736, 31.257856, 41.786133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579323, 31.589422, 41.777561>,  <35.713474, 31.788363, 41.772419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579323, 31.589422, 41.777561>,  <35.355736, 31.257856, 41.786133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579323, 31.589422, 41.777561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258749, -0.149812, 0.954256,
		0.787786, -0.538941, -0.298221,
		0.558965, 0.828914, -0.021431,
		35.747013, 31.838097, 41.771133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046093, 31.060322, 41.998470>,  <35.355736, 31.257856, 41.786133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046093, 31.060322, 41.998470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975697, 31.441889, 42.095688>,  <35.933460, 31.670828, 42.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975697, 31.441889, 42.095688>,  <36.046093, 31.060322, 41.998470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975697, 31.441889, 42.095688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042416, -0.239324, 0.970013,
		0.983477, 0.181023, 0.001658,
		-0.175991, 0.953915, 0.243048,
		35.922897, 31.728064, 42.168602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584866, 31.259808, 42.460190>,  <36.046093, 31.060322, 41.998470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584866, 31.259808, 42.460190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278866, 31.509050, 42.525330>,  <36.095268, 31.658596, 42.564411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278866, 31.509050, 42.525330>,  <36.584866, 31.259808, 42.460190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278866, 31.509050, 42.525330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188448, -0.025219, 0.981759,
		0.615847, 0.781730, -0.098131,
		-0.764996, 0.623106, 0.162846,
		36.049366, 31.695982, 42.574184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901932, 31.643740, 42.989803>,  <36.584866, 31.259808, 42.460190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901932, 31.643740, 42.989803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507984, 31.712822, 42.995670>,  <36.271618, 31.754271, 42.999191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507984, 31.712822, 42.995670>,  <36.901932, 31.643740, 42.989803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507984, 31.712822, 42.995670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017791, 0.016560, 0.999705,
		0.172411, 0.984834, -0.019382,
		-0.984865, 0.172705, 0.014666,
		36.212524, 31.764633, 43.000069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857224, 32.160534, 43.556477>,  <36.901932, 31.643740, 42.989803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857224, 32.160534, 43.556477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491276, 32.005684, 43.510609>,  <36.271706, 31.912775, 43.483089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491276, 32.005684, 43.510609>,  <36.857224, 32.160534, 43.556477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491276, 32.005684, 43.510609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181300, 0.140135, 0.973392,
		-0.360752, 0.911317, -0.198390,
		-0.914871, -0.387121, -0.114668,
		36.216816, 31.889547, 43.476208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409817, 32.540409, 43.914127>,  <36.857224, 32.160534, 43.556477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409817, 32.540409, 43.914127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165012, 32.227779, 43.865818>,  <36.018127, 32.040203, 43.836834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165012, 32.227779, 43.865818>,  <36.409817, 32.540409, 43.914127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165012, 32.227779, 43.865818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187530, -0.004931, 0.982246,
		-0.768291, 0.623796, -0.143550,
		-0.612014, -0.781571, -0.120769,
		35.981407, 31.993307, 43.829586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988197, 32.608746, 44.399303>,  <36.409817, 32.540409, 43.914127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988197, 32.608746, 44.399303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858521, 32.253860, 44.267998>,  <35.780712, 32.040932, 44.189217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858521, 32.253860, 44.267998>,  <35.988197, 32.608746, 44.399303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858521, 32.253860, 44.267998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440257, -0.165632, 0.882463,
		-0.837300, 0.430609, -0.336903,
		-0.324194, -0.887210, -0.328262,
		35.761261, 31.987698, 44.169518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248730, 32.551849, 44.432354>,  <35.988197, 32.608746, 44.399303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248730, 32.551849, 44.432354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428345, 32.195709, 44.462429>,  <35.536114, 31.982027, 44.480473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428345, 32.195709, 44.462429>,  <35.248730, 32.551849, 44.432354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428345, 32.195709, 44.462429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418156, -0.135034, 0.898283,
		-0.789629, -0.434799, -0.432938,
		0.449034, -0.890346, 0.075187,
		35.563053, 31.928606, 44.484985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730488, 32.040993, 44.706001>,  <35.248730, 32.551849, 44.432354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730488, 32.040993, 44.706001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093517, 31.938744, 44.839252>,  <35.311333, 31.877394, 44.919205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093517, 31.938744, 44.839252>,  <34.730488, 32.040993, 44.706001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093517, 31.938744, 44.839252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324511, 0.076485, 0.942784,
		-0.266478, -0.963746, -0.013537,
		0.907569, -0.255624, 0.333128,
		35.365788, 31.862057, 44.939190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697269, 31.510862, 45.278057>,  <34.730488, 32.040993, 44.706001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697269, 31.510862, 45.278057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043041, 31.706623, 45.324097>,  <35.250504, 31.824080, 45.351719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043041, 31.706623, 45.324097>,  <34.697269, 31.510862, 45.278057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043041, 31.706623, 45.324097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157999, 0.047118, 0.986314,
		0.477282, -0.870784, 0.118056,
		0.864429, 0.489403, 0.115094,
		35.302368, 31.853443, 45.358624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079468, 31.164516, 45.826801>,  <34.697269, 31.510862, 45.278057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079468, 31.164516, 45.826801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243954, 31.528536, 45.805958>,  <35.342644, 31.746948, 45.793453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243954, 31.528536, 45.805958>,  <35.079468, 31.164516, 45.826801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243954, 31.528536, 45.805958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036670, 0.040599, 0.998502,
		0.910801, -0.412510, -0.016676,
		0.411215, 0.910048, -0.052105,
		35.367317, 31.801550, 45.790325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642586, 31.165400, 46.218620>,  <35.079468, 31.164516, 45.826801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642586, 31.165400, 46.218620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523140, 31.547022, 46.208744>,  <35.451473, 31.775995, 46.202816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523140, 31.547022, 46.208744>,  <35.642586, 31.165400, 46.218620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523140, 31.547022, 46.208744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150867, 0.072740, 0.985874,
		0.942373, 0.290672, -0.165657,
		-0.298616, 0.954054, -0.024695,
		35.433556, 31.833239, 46.201336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056183, 31.552917, 46.685413>,  <35.642586, 31.165400, 46.218620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056183, 31.552917, 46.685413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755081, 31.812155, 46.639225>,  <35.574421, 31.967697, 46.611511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755081, 31.812155, 46.639225>,  <36.056183, 31.552917, 46.685413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755081, 31.812155, 46.639225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120423, 0.308010, 0.943731,
		0.647189, 0.696496, -0.309902,
		-0.752758, 0.648092, -0.115466,
		35.529255, 32.006584, 46.604584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186432, 31.982918, 47.154579>,  <36.056183, 31.552917, 46.685413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186432, 31.982918, 47.154579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815296, 32.107388, 47.072323>,  <35.592613, 32.182068, 47.022968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815296, 32.107388, 47.072323>,  <36.186432, 31.982918, 47.154579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815296, 32.107388, 47.072323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057959, 0.424348, 0.903642,
		0.368451, 0.850353, -0.375691,
		-0.927839, 0.311173, -0.205637,
		35.536945, 32.200741, 47.010632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129826, 32.699905, 47.358387>,  <36.186432, 31.982918, 47.154579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129826, 32.699905, 47.358387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767475, 32.530666, 47.366096>,  <35.550064, 32.429123, 47.370720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767475, 32.530666, 47.366096>,  <36.129826, 32.699905, 47.358387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767475, 32.530666, 47.366096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199654, 0.466711, 0.861580,
		-0.373528, 0.776639, -0.507257,
		-0.905878, -0.423100, 0.019270,
		35.495712, 32.403736, 47.371876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692905, 33.242081, 47.617138>,  <36.129826, 32.699905, 47.358387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692905, 33.242081, 47.617138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483833, 32.908546, 47.688164>,  <35.358391, 32.708427, 47.730778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483833, 32.908546, 47.688164>,  <35.692905, 33.242081, 47.617138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483833, 32.908546, 47.688164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272582, 0.360793, 0.891923,
		-0.807780, 0.417788, -0.415867,
		-0.522677, -0.833836, 0.177560,
		35.327030, 32.658394, 47.741432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190590, 33.520752, 48.004604>,  <35.692905, 33.242081, 47.617138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190590, 33.520752, 48.004604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103264, 33.133598, 48.054451>,  <35.050869, 32.901306, 48.084358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103264, 33.133598, 48.054451>,  <35.190590, 33.520752, 48.004604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103264, 33.133598, 48.054451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334493, 0.194181, 0.922176,
		-0.916762, 0.159643, -0.366145,
		-0.218317, -0.967888, 0.124618,
		35.037769, 32.843231, 48.091835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580933, 33.474648, 48.158855>,  <35.190590, 33.520752, 48.004604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580933, 33.474648, 48.158855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714024, 33.138699, 48.330391>,  <34.793877, 32.937130, 48.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714024, 33.138699, 48.330391>,  <34.580933, 33.474648, 48.158855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714024, 33.138699, 48.330391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400714, 0.285737, 0.870507,
		-0.853653, -0.461482, -0.241477,
		0.332725, -0.839874, 0.428843,
		34.813843, 32.886738, 48.459045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994297, 33.009499, 48.469543>,  <34.580933, 33.474648, 48.158855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994297, 33.009499, 48.469543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348808, 32.958748, 48.647717>,  <34.561516, 32.928299, 48.754620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348808, 32.958748, 48.647717>,  <33.994297, 33.009499, 48.469543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348808, 32.958748, 48.647717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382278, 0.342584, 0.858196,
		-0.261480, -0.930881, 0.255124,
		0.886280, -0.126873, 0.445434,
		34.614693, 32.920685, 48.781345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815254, 32.949387, 49.084286>,  <33.994297, 33.009499, 48.469543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815254, 32.949387, 49.084286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211174, 32.974297, 49.135536>,  <34.448727, 32.989243, 49.166286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211174, 32.974297, 49.135536>,  <33.815254, 32.949387, 49.084286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211174, 32.974297, 49.135536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142219, 0.484403, 0.863208,
		-0.008309, -0.872626, 0.488319,
		0.989801, 0.062276, 0.128129,
		34.508114, 32.992981, 49.173973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986229, 32.674816, 49.711052>,  <33.815254, 32.949387, 49.084286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986229, 32.674816, 49.711052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277328, 32.930511, 49.611649>,  <34.451988, 33.083931, 49.552006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277328, 32.930511, 49.611649>,  <33.986229, 32.674816, 49.711052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277328, 32.930511, 49.611649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113112, 0.469239, 0.875797,
		0.676453, -0.609251, 0.413793,
		0.727748, 0.639240, -0.248504,
		34.495651, 33.122284, 49.537098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400463, 32.574245, 50.264023>,  <33.986229, 32.674816, 49.711052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400463, 32.574245, 50.264023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507217, 32.926929, 50.108406>,  <34.571270, 33.138538, 50.015034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507217, 32.926929, 50.108406>,  <34.400463, 32.574245, 50.264023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507217, 32.926929, 50.108406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032692, 0.395174, 0.918024,
		0.963173, -0.257728, 0.076642,
		0.266887, 0.881711, -0.389047,
		34.587284, 33.191444, 49.991692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911152, 32.831833, 50.754795>,  <34.400463, 32.574245, 50.264023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911152, 32.831833, 50.754795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781841, 33.133640, 50.526340>,  <34.704254, 33.314724, 50.389267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781841, 33.133640, 50.526340>,  <34.911152, 32.831833, 50.754795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781841, 33.133640, 50.526340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084266, 0.578189, 0.811540,
		0.942546, 0.310476, -0.123333,
		-0.323273, 0.754521, -0.571132,
		34.684860, 33.359997, 50.355000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193886, 33.497654, 51.038540>,  <34.911152, 32.831833, 50.754795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193886, 33.497654, 51.038540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848614, 33.568241, 50.849323>,  <34.641449, 33.610596, 50.735794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848614, 33.568241, 50.849323>,  <35.193886, 33.497654, 51.038540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848614, 33.568241, 50.849323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201720, 0.738358, 0.643535,
		0.462842, 0.650911, -0.601741,
		-0.863184, 0.176472, -0.473045,
		34.589657, 33.621181, 50.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118340, 34.234146, 51.010914>,  <35.193886, 33.497654, 51.038540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118340, 34.234146, 51.010914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747143, 34.102493, 50.941051>,  <34.524426, 34.023502, 50.899136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747143, 34.102493, 50.941051>,  <35.118340, 34.234146, 51.010914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747143, 34.102493, 50.941051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364374, 0.703677, 0.609975,
		-0.077865, 0.629690, -0.772934,
		-0.927992, -0.329133, -0.174652,
		34.468746, 34.003754, 50.888657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829098, 34.579670, 51.643520>,  <35.118340, 34.234146, 51.010914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829098, 34.579670, 51.643520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521942, 34.404079, 51.456909>,  <34.337650, 34.298725, 51.344940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521942, 34.404079, 51.456909>,  <34.829098, 34.579670, 51.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521942, 34.404079, 51.456909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342317, 0.334387, -0.878069,
		0.541453, -0.833958, -0.106502,
		-0.767885, -0.438976, -0.466533,
		34.291576, 34.272388, 51.316948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974915, 35.345196, 51.297836>,  <34.829098, 34.579670, 51.643520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974915, 35.345196, 51.297836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145180, 35.707127, 51.293861>,  <35.247337, 35.924286, 51.291477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145180, 35.707127, 51.293861>,  <34.974915, 35.345196, 51.297836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145180, 35.707127, 51.293861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395348, -0.195837, -0.897412,
		-0.813949, 0.378066, -0.441082,
		0.425661, 0.904828, -0.009934,
		35.272877, 35.978577, 51.290882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681831, 35.698784, 50.822178>,  <34.974915, 35.345196, 51.297836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681831, 35.698784, 50.822178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053185, 35.838772, 50.872162>,  <35.275997, 35.922764, 50.902153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053185, 35.838772, 50.872162>,  <34.681831, 35.698784, 50.822178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053185, 35.838772, 50.872162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203546, -0.197557, -0.958926,
		-0.310911, 0.915691, -0.254645,
		0.928387, 0.349973, 0.124962,
		35.331699, 35.943764, 50.909649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760746, 36.110809, 50.255989>,  <34.681831, 35.698784, 50.822178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760746, 36.110809, 50.255989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147121, 36.062157, 50.347359>,  <35.378944, 36.032967, 50.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147121, 36.062157, 50.347359>,  <34.760746, 36.110809, 50.255989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147121, 36.062157, 50.347359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213431, -0.124724, -0.968964,
		0.146343, 0.984708, -0.094516,
		0.965935, -0.121628, 0.228419,
		35.436901, 36.025669, 50.415886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101402, 36.414864, 49.659370>,  <34.760746, 36.110809, 50.255989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101402, 36.414864, 49.659370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387543, 36.214931, 49.854694>,  <35.559227, 36.094971, 49.971889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387543, 36.214931, 49.854694>,  <35.101402, 36.414864, 49.659370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387543, 36.214931, 49.854694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488326, -0.142261, -0.860988,
		0.499816, 0.854360, 0.142315,
		0.715347, -0.499832, 0.488310,
		35.602146, 36.064983, 50.001186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725769, 36.639008, 49.365379>,  <35.101402, 36.414864, 49.659370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725769, 36.639008, 49.365379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798096, 36.279350, 49.524803>,  <35.841492, 36.063557, 49.620457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798096, 36.279350, 49.524803>,  <35.725769, 36.639008, 49.365379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798096, 36.279350, 49.524803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338362, -0.323633, -0.883614,
		0.923480, 0.294632, 0.245716,
		0.180819, -0.899141, 0.398560,
		35.852341, 36.009609, 49.644371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334450, 36.477406, 49.167515>,  <35.725769, 36.639008, 49.365379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334450, 36.477406, 49.167515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175564, 36.120220, 49.252213>,  <36.080235, 35.905907, 49.303032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175564, 36.120220, 49.252213>,  <36.334450, 36.477406, 49.167515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175564, 36.120220, 49.252213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492828, -0.402183, -0.771602,
		0.774174, -0.202136, 0.599830,
		-0.397210, -0.892967, 0.211741,
		36.056400, 35.852329, 49.315735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869064, 35.983089, 49.102062>,  <36.334450, 36.477406, 49.167515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869064, 35.983089, 49.102062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527851, 35.778374, 49.061249>,  <36.323124, 35.655544, 49.036762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527851, 35.778374, 49.061249>,  <36.869064, 35.983089, 49.102062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527851, 35.778374, 49.061249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382755, -0.480683, -0.788950,
		0.354731, -0.712052, 0.605927,
		-0.853032, -0.511787, -0.102029,
		36.271942, 35.624836, 49.030640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090366, 35.389992, 48.627945>,  <36.869064, 35.983089, 49.102062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090366, 35.389992, 48.627945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691940, 35.366096, 48.601753>,  <36.452885, 35.351757, 48.586037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691940, 35.366096, 48.601753>,  <37.090366, 35.389992, 48.627945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691940, 35.366096, 48.601753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088551, -0.637983, -0.764942,
		0.003924, -0.767730, 0.640762,
		-0.996064, -0.059742, -0.065480,
		36.393120, 35.348175, 48.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863167, 34.653934, 48.520023>,  <37.090366, 35.389992, 48.627945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863167, 34.653934, 48.520023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557117, 34.881866, 48.400108>,  <36.373489, 35.018627, 48.328159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557117, 34.881866, 48.400108>,  <36.863167, 34.653934, 48.520023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557117, 34.881866, 48.400108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056743, -0.523461, -0.850158,
		-0.641377, -0.633466, 0.432846,
		-0.765124, 0.569833, -0.299791,
		36.327579, 35.052814, 48.310169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191456, 34.215374, 48.341454>,  <36.863167, 34.653934, 48.520023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191456, 34.215374, 48.341454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186310, 34.561768, 48.141487>,  <36.183224, 34.769604, 48.021507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186310, 34.561768, 48.141487>,  <36.191456, 34.215374, 48.341454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186310, 34.561768, 48.141487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026328, -0.500074, -0.865583,
		-0.999571, 0.002029, 0.029231,
		-0.012862, 0.865980, -0.499913,
		36.182449, 34.821560, 47.991512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740376, 34.147049, 47.694496>,  <36.191456, 34.215374, 48.341454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740376, 34.147049, 47.694496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914482, 34.493576, 47.596478>,  <36.018944, 34.701492, 47.537666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914482, 34.493576, 47.596478>,  <35.740376, 34.147049, 47.694496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914482, 34.493576, 47.596478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112519, -0.322389, -0.939896,
		-0.893244, 0.381531, -0.237801,
		0.435264, 0.866314, -0.245042,
		36.045063, 34.753471, 47.522964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323166, 34.437466, 47.181858>,  <35.740376, 34.147049, 47.694496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323166, 34.437466, 47.181858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674786, 34.617828, 47.119949>,  <35.885757, 34.726044, 47.082802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674786, 34.617828, 47.119949>,  <35.323166, 34.437466, 47.181858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674786, 34.617828, 47.119949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025413, -0.279875, -0.959700,
		-0.476050, 0.847559, -0.234565,
		0.879051, 0.450904, -0.154774,
		35.938499, 34.753101, 47.073517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282887, 34.702286, 46.567467>,  <35.323166, 34.437466, 47.181858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282887, 34.702286, 46.567467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675743, 34.770779, 46.598637>,  <35.911457, 34.811874, 46.617340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675743, 34.770779, 46.598637>,  <35.282887, 34.702286, 46.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675743, 34.770779, 46.598637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088272, -0.053656, -0.994650,
		-0.166137, 0.983768, -0.067813,
		0.982144, 0.171234, 0.077925,
		35.970387, 34.822147, 46.622013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441425, 35.267422, 46.083260>,  <35.282887, 34.702286, 46.567467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441425, 35.267422, 46.083260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764713, 35.035984, 46.127090>,  <35.958687, 34.897121, 46.153389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764713, 35.035984, 46.127090>,  <35.441425, 35.267422, 46.083260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764713, 35.035984, 46.127090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129235, -0.007267, -0.991587,
		0.574523, 0.815583, 0.068901,
		0.808221, -0.578594, 0.109577,
		36.007179, 34.862404, 46.159962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046062, 35.582760, 45.694252>,  <35.441425, 35.267422, 46.083260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046062, 35.582760, 45.694252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116497, 35.190067, 45.723110>,  <36.158760, 34.954453, 45.740425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116497, 35.190067, 45.723110>,  <36.046062, 35.582760, 45.694252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116497, 35.190067, 45.723110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400508, 0.004504, -0.916282,
		0.899214, 0.190240, 0.393983,
		0.176089, -0.981727, 0.072142,
		36.169323, 34.895550, 45.744755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730404, 35.544918, 45.432182>,  <36.046062, 35.582760, 45.694252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730404, 35.544918, 45.432182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576153, 35.175861, 45.433987>,  <36.483604, 34.954426, 45.435070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576153, 35.175861, 45.433987>,  <36.730404, 35.544918, 45.432182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576153, 35.175861, 45.433987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436263, -0.186645, -0.880249,
		0.812999, -0.337476, 0.474491,
		-0.385625, -0.922645, 0.004514,
		36.460464, 34.899067, 45.435341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285107, 35.077942, 45.234768>,  <36.730404, 35.544918, 45.432182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285107, 35.077942, 45.234768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945168, 34.896469, 45.127487>,  <36.741203, 34.787586, 45.063118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945168, 34.896469, 45.127487>,  <37.285107, 35.077942, 45.234768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945168, 34.896469, 45.127487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469324, -0.419943, -0.776777,
		0.239785, -0.786013, 0.569813,
		-0.849846, -0.453686, -0.268198,
		36.690212, 34.760365, 45.047028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423717, 34.460049, 45.021851>,  <37.285107, 35.077942, 45.234768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423717, 34.460049, 45.021851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058365, 34.513386, 44.867989>,  <36.839153, 34.545387, 44.775669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058365, 34.513386, 44.867989>,  <37.423717, 34.460049, 45.021851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058365, 34.513386, 44.867989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291575, -0.445143, -0.846659,
		-0.284123, -0.885476, 0.367705,
		-0.913377, 0.133342, -0.384658,
		36.784351, 34.553387, 44.752590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260754, 33.860367, 44.610493>,  <37.423717, 34.460049, 45.021851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260754, 33.860367, 44.610493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981918, 34.106609, 44.463470>,  <36.814617, 34.254356, 44.375256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981918, 34.106609, 44.463470>,  <37.260754, 33.860367, 44.610493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981918, 34.106609, 44.463470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126349, -0.399149, -0.908139,
		-0.705770, -0.679489, 0.200459,
		-0.697083, 0.615609, -0.367560,
		36.772793, 34.291290, 44.353203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651840, 33.452717, 44.259377>,  <37.260754, 33.860367, 44.610493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651840, 33.452717, 44.259377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657967, 33.819847, 44.100704>,  <36.661644, 34.040127, 44.005501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657967, 33.819847, 44.100704>,  <36.651840, 33.452717, 44.259377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657967, 33.819847, 44.100704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043673, -0.396962, -0.916796,
		-0.998928, -0.003279, -0.046165,
		0.015320, 0.917829, -0.396680,
		36.662563, 34.095196, 43.981701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236134, 33.440876, 43.555065>,  <36.651840, 33.452717, 44.259377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236134, 33.440876, 43.555065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489086, 33.750717, 43.558662>,  <36.640858, 33.936623, 43.560822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489086, 33.750717, 43.558662>,  <36.236134, 33.440876, 43.555065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489086, 33.750717, 43.558662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273512, -0.212404, -0.938124,
		-0.724762, 0.595715, -0.346184,
		0.632385, 0.774602, 0.008992,
		36.678802, 33.983097, 43.561359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141262, 33.719009, 42.885460>,  <36.236134, 33.440876, 43.555065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141262, 33.719009, 42.885460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481438, 33.889984, 43.008129>,  <36.685543, 33.992569, 43.081730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481438, 33.889984, 43.008129>,  <36.141262, 33.719009, 42.885460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481438, 33.889984, 43.008129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371418, -0.075022, -0.925430,
		-0.372554, 0.900928, -0.222559,
		0.850442, 0.427435, 0.306671,
		36.736572, 34.018215, 43.100132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305672, 34.160156, 42.390427>,  <36.141262, 33.719009, 42.885460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305672, 34.160156, 42.390427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647053, 34.104736, 42.591396>,  <36.851879, 34.071484, 42.711979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647053, 34.104736, 42.591396>,  <36.305672, 34.160156, 42.390427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647053, 34.104736, 42.591396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500628, -0.050111, -0.864211,
		0.144909, 0.989088, 0.026593,
		0.853448, -0.138545, 0.502426,
		36.903088, 34.063171, 42.742123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769165, 34.605385, 42.115494>,  <36.305672, 34.160156, 42.390427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769165, 34.605385, 42.115494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988331, 34.313782, 42.279610>,  <37.119831, 34.138821, 42.378078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988331, 34.313782, 42.279610>,  <36.769165, 34.605385, 42.115494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988331, 34.313782, 42.279610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463196, -0.144031, -0.874474,
		0.696591, 0.669183, 0.258756,
		0.547915, -0.729005, 0.410293,
		37.152706, 34.095081, 42.402699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415741, 34.645618, 41.789082>,  <36.769165, 34.605385, 42.115494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415741, 34.645618, 41.789082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447289, 34.285877, 41.961098>,  <37.466217, 34.070030, 42.064308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447289, 34.285877, 41.961098>,  <37.415741, 34.645618, 41.789082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447289, 34.285877, 41.961098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545843, -0.322013, -0.773539,
		0.834167, 0.295746, 0.465510,
		0.078871, -0.899356, 0.430044,
		37.470951, 34.016071, 42.090111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095718, 34.475521, 41.631763>,  <37.415741, 34.645618, 41.789082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095718, 34.475521, 41.631763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928482, 34.124165, 41.724392>,  <37.828140, 33.913349, 41.779968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928482, 34.124165, 41.724392>,  <38.095718, 34.475521, 41.631763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928482, 34.124165, 41.724392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443083, -0.419731, -0.792151,
		0.793019, -0.228584, 0.564686,
		-0.418090, -0.878393, 0.231573,
		37.803055, 33.860645, 41.793865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617172, 34.018951, 41.548344>,  <38.095718, 34.475521, 41.631763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617172, 34.018951, 41.548344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285152, 33.798077, 41.517086>,  <38.085941, 33.665550, 41.498333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285152, 33.798077, 41.517086>,  <38.617172, 34.018951, 41.548344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285152, 33.798077, 41.517086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280687, -0.292570, -0.914121,
		0.481905, -0.780699, 0.397840,
		-0.830049, -0.552188, -0.078141,
		38.036137, 33.632420, 41.493645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800926, 33.351383, 41.306271>,  <38.617172, 34.018951, 41.548344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800926, 33.351383, 41.306271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418835, 33.375469, 41.190403>,  <38.189579, 33.389923, 41.120884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418835, 33.375469, 41.190403>,  <38.800926, 33.351383, 41.306271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418835, 33.375469, 41.190403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242757, -0.400149, -0.883714,
		-0.169127, -0.914470, 0.367615,
		-0.955230, 0.060219, -0.289670,
		38.132267, 33.393536, 41.103500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730080, 32.690712, 41.035755>,  <38.800926, 33.351383, 41.306271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730080, 32.690712, 41.035755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440285, 32.929966, 40.898727>,  <38.266407, 33.073521, 40.816509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440285, 32.929966, 40.898727>,  <38.730080, 32.690712, 41.035755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440285, 32.929966, 40.898727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147286, -0.351180, -0.924651,
		-0.673373, -0.720350, 0.166326,
		-0.724483, 0.598138, -0.342573,
		38.222939, 33.109406, 40.795956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482067, 32.230766, 40.546562>,  <38.730080, 32.690712, 41.035755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482067, 32.230766, 40.546562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370953, 32.606987, 40.468376>,  <38.304283, 32.832718, 40.421467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370953, 32.606987, 40.468376>,  <38.482067, 32.230766, 40.546562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370953, 32.606987, 40.468376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271155, -0.118428, -0.955222,
		-0.921581, -0.318345, -0.222137,
		-0.277783, 0.940548, -0.195462,
		38.287617, 32.889153, 40.409737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349888, 32.174877, 39.802525>,  <38.482067, 32.230766, 40.546562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349888, 32.174877, 39.802525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345013, 32.572735, 39.843567>,  <38.342087, 32.811451, 39.868191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345013, 32.572735, 39.843567>,  <38.349888, 32.174877, 39.802525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345013, 32.572735, 39.843567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109792, 0.103325, -0.988570,
		-0.993880, -0.000781, -0.110463,
		-0.012186, 0.994647, 0.102607,
		38.341358, 32.871128, 39.874348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975563, 32.550484, 39.325119>,  <38.349888, 32.174877, 39.802525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975563, 32.550484, 39.325119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220879, 32.836899, 39.458485>,  <38.368069, 33.008747, 39.538506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220879, 32.836899, 39.458485>,  <37.975563, 32.550484, 39.325119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220879, 32.836899, 39.458485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440307, 0.040523, -0.896932,
		-0.655752, 0.696881, -0.290426,
		0.613286, 0.716042, 0.333415,
		38.404865, 33.051712, 39.558510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093353, 32.967213, 38.728294>,  <37.975563, 32.550484, 39.325119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093353, 32.967213, 38.728294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392120, 33.083607, 38.967438>,  <38.571381, 33.153442, 39.110924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392120, 33.083607, 38.967438>,  <38.093353, 32.967213, 38.728294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392120, 33.083607, 38.967438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533203, 0.275071, -0.800019,
		-0.397247, 0.916332, 0.050302,
		0.746920, 0.290984, 0.597862,
		38.616196, 33.170902, 39.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297546, 33.470970, 38.427853>,  <38.093353, 32.967213, 38.728294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297546, 33.470970, 38.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614544, 33.402225, 38.661919>,  <38.804741, 33.360977, 38.802357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614544, 33.402225, 38.661919>,  <38.297546, 33.470970, 38.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614544, 33.402225, 38.661919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601394, 0.379719, -0.702950,
		-0.101387, 0.908997, 0.404283,
		0.792493, -0.171864, 0.585164,
		38.852291, 33.350666, 38.837467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657116, 34.218742, 38.545330>,  <38.297546, 33.470970, 38.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657116, 34.218742, 38.545330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874035, 33.883915, 38.574280>,  <39.004185, 33.683018, 38.591648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874035, 33.883915, 38.574280>,  <38.657116, 34.218742, 38.545330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874035, 33.883915, 38.574280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542940, 0.283396, -0.790508,
		0.641197, 0.467982, 0.608160,
		0.542294, -0.837066, 0.072374,
		39.036724, 33.632793, 38.595993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274517, 34.529507, 38.285027>,  <38.657116, 34.218742, 38.545330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274517, 34.529507, 38.285027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321274, 34.132267, 38.288773>,  <39.349327, 33.893925, 38.291019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321274, 34.132267, 38.288773>,  <39.274517, 34.529507, 38.285027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321274, 34.132267, 38.288773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721955, 0.078494, -0.687473,
		0.681995, 0.087120, 0.726149,
		0.116891, -0.993101, 0.009364,
		39.356342, 33.834335, 38.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959534, 34.499096, 38.302147>,  <39.274517, 34.529507, 38.285027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959534, 34.499096, 38.302147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831429, 34.151127, 38.152126>,  <39.754566, 33.942345, 38.062115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831429, 34.151127, 38.152126>,  <39.959534, 34.499096, 38.302147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831429, 34.151127, 38.152126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637927, 0.094642, -0.764259,
		0.700345, -0.484014, 0.524640,
		-0.320259, -0.869927, -0.375048,
		39.735352, 33.890148, 38.039612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541416, 34.080811, 38.197720>,  <39.959534, 34.499096, 38.302147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541416, 34.080811, 38.197720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272251, 33.927799, 37.944466>,  <40.110752, 33.835991, 37.792515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272251, 33.927799, 37.944466>,  <40.541416, 34.080811, 38.197720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272251, 33.927799, 37.944466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560268, 0.295295, -0.773886,
		0.482996, -0.875484, 0.015611,
		-0.672915, -0.382530, -0.633132,
		40.070377, 33.813042, 37.754524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941383, 33.845650, 37.673412>,  <40.541416, 34.080811, 38.197720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941383, 33.845650, 37.673412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575378, 33.850677, 37.512115>,  <40.355778, 33.853695, 37.415337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575378, 33.850677, 37.512115>,  <40.941383, 33.845650, 37.673412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575378, 33.850677, 37.512115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401206, 0.133233, -0.906246,
		0.042332, -0.991005, -0.126953,
		-0.915009, 0.012571, -0.403237,
		40.300877, 33.854446, 37.391144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003593, 33.430527, 37.071770>,  <40.941383, 33.845650, 37.673412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003593, 33.430527, 37.071770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678925, 33.655407, 37.008369>,  <40.484123, 33.790333, 36.970329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678925, 33.655407, 37.008369>,  <41.003593, 33.430527, 37.071770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678925, 33.655407, 37.008369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365008, 0.276330, -0.889050,
		-0.456025, -0.779470, -0.429496,
		-0.811671, 0.562199, -0.158500,
		40.435425, 33.824066, 36.960819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995693, 33.491673, 36.415646>,  <41.003593, 33.430527, 37.071770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995693, 33.491673, 36.415646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742516, 33.791962, 36.491322>,  <40.590607, 33.972134, 36.536728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742516, 33.791962, 36.491322>,  <40.995693, 33.491673, 36.415646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742516, 33.791962, 36.491322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376735, 0.512149, -0.771864,
		-0.676349, -0.417275, -0.606987,
		-0.632947, 0.750723, 0.189190,
		40.552631, 34.017178, 36.548077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561707, 33.699642, 35.736004>,  <40.995693, 33.491673, 36.415646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561707, 33.699642, 35.736004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617439, 33.994797, 36.000160>,  <40.650879, 34.171890, 36.158653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617439, 33.994797, 36.000160>,  <40.561707, 33.699642, 35.736004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617439, 33.994797, 36.000160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528688, 0.508461, -0.679674,
		-0.837303, 0.443839, -0.319266,
		0.139332, 0.737885, 0.660388,
		40.659237, 34.216164, 36.198277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941818, 34.205063, 35.309158>,  <40.561707, 33.699642, 35.736004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941818, 34.205063, 35.309158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948463, 34.328754, 35.689495>,  <40.952450, 34.402969, 35.917698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948463, 34.328754, 35.689495>,  <40.941818, 34.205063, 35.309158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948463, 34.328754, 35.689495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796062, 0.571314, -0.199713,
		-0.604987, 0.760248, -0.236672,
		0.016617, 0.309230, 0.950842,
		40.953449, 34.421524, 35.974747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960209, 34.907181, 35.354286>,  <40.941818, 34.205063, 35.309158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960209, 34.907181, 35.354286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165577, 34.728916, 35.647621>,  <41.288799, 34.621960, 35.823624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165577, 34.728916, 35.647621>,  <40.960209, 34.907181, 35.354286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165577, 34.728916, 35.647621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833637, 0.461764, -0.303025,
		-0.203583, 0.766917, 0.608598,
		0.513424, -0.445659, 0.733338,
		41.319603, 34.595219, 35.867622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072525, 35.374992, 35.913445>,  <40.960209, 34.907181, 35.354286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072525, 35.374992, 35.913445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342937, 35.102753, 35.800465>,  <41.505184, 34.939411, 35.732677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342937, 35.102753, 35.800465>,  <41.072525, 35.374992, 35.913445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342937, 35.102753, 35.800465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584483, 0.728686, -0.356926,
		0.448736, 0.076208, 0.890409,
		0.676029, -0.680595, -0.282446,
		41.545746, 34.898575, 35.715733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697655, 35.531631, 36.263569>,  <41.072525, 35.374992, 35.913445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697655, 35.531631, 36.263569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833271, 35.293201, 35.972435>,  <41.914642, 35.150143, 35.797756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833271, 35.293201, 35.972435>,  <41.697655, 35.531631, 36.263569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833271, 35.293201, 35.972435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522566, 0.762651, -0.381166,
		0.782287, -0.251109, 0.570062,
		0.339044, -0.596077, -0.727833,
		41.934986, 35.114380, 35.754086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322338, 35.525555, 36.318596>,  <41.697655, 35.531631, 36.263569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322338, 35.525555, 36.318596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235210, 35.469292, 35.932278>,  <42.182934, 35.435532, 35.700485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235210, 35.469292, 35.932278>,  <42.322338, 35.525555, 36.318596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235210, 35.469292, 35.932278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687607, 0.680155, -0.254136,
		0.692641, -0.719447, -0.051433,
		-0.217820, -0.140659, -0.965800,
		42.169865, 35.427094, 35.642536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649326, 34.996906, 35.811741>,  <42.322338, 35.525555, 36.318596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649326, 34.996906, 35.811741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036846, 35.079639, 35.757114>,  <43.269360, 35.129280, 35.724339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036846, 35.079639, 35.757114>,  <42.649326, 34.996906, 35.811741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036846, 35.079639, 35.757114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215320, 0.429453, -0.877045,
		-0.122749, 0.879086, 0.460588,
		0.968798, 0.206830, -0.136570,
		43.327484, 35.141689, 35.716145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630253, 35.665432, 35.548496>,  <42.649326, 34.996906, 35.811741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630253, 35.665432, 35.548496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984859, 35.509045, 35.449516>,  <43.197624, 35.415215, 35.390129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984859, 35.509045, 35.449516>,  <42.630253, 35.665432, 35.548496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984859, 35.509045, 35.449516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095620, 0.368449, -0.924717,
		0.452703, 0.843441, 0.289253,
		0.886520, -0.390964, -0.247447,
		43.250816, 35.391754, 35.375282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048107, 36.160362, 35.174210>,  <42.630253, 35.665432, 35.548496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048107, 36.160362, 35.174210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247948, 35.825630, 35.084663>,  <43.367851, 35.624790, 35.030933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247948, 35.825630, 35.084663>,  <43.048107, 36.160362, 35.174210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247948, 35.825630, 35.084663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222034, 0.373506, -0.900663,
		0.837316, 0.400268, 0.372409,
		0.499603, -0.836827, -0.223870,
		43.397827, 35.574581, 35.017502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748005, 36.331928, 34.880890>,  <43.048107, 36.160362, 35.174210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748005, 36.331928, 34.880890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627590, 35.975674, 34.744568>,  <43.555340, 35.761921, 34.662777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627590, 35.975674, 34.744568>,  <43.748005, 36.331928, 34.880890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627590, 35.975674, 34.744568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212852, 0.285607, -0.934410,
		0.929554, -0.353832, 0.103595,
		-0.301036, -0.890635, -0.340801,
		43.537281, 35.708485, 34.642326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209377, 36.120037, 34.387024>,  <43.748005, 36.331928, 34.880890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209377, 36.120037, 34.387024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880604, 35.914852, 34.287991>,  <43.683342, 35.791740, 34.228569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880604, 35.914852, 34.287991>,  <44.209377, 36.120037, 34.387024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880604, 35.914852, 34.287991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018386, 0.410550, -0.911652,
		0.569292, -0.753866, -0.328012,
		-0.821930, -0.512966, -0.247583,
		43.634026, 35.760963, 34.213715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298168, 36.072636, 33.669403>,  <44.209377, 36.120037, 34.387024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298168, 36.072636, 33.669403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922153, 35.943867, 33.714470>,  <43.696545, 35.866608, 33.741508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922153, 35.943867, 33.714470>,  <44.298168, 36.072636, 33.669403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922153, 35.943867, 33.714470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263932, 0.477389, -0.838117,
		0.216023, -0.817598, -0.533730,
		-0.940039, -0.321920, 0.112663,
		43.640141, 35.847290, 33.748268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183464, 35.672630, 33.097778>,  <44.298168, 36.072636, 33.669403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183464, 35.672630, 33.097778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821636, 35.788681, 33.222733>,  <43.604542, 35.858311, 33.297707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821636, 35.788681, 33.222733>,  <44.183464, 35.672630, 33.097778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821636, 35.788681, 33.222733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212766, 0.327762, -0.920490,
		-0.369446, -0.899111, -0.234755,
		-0.904567, 0.290124, 0.312390,
		43.550266, 35.875717, 33.316448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751392, 35.497261, 32.571091>,  <44.183464, 35.672630, 33.097778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751392, 35.497261, 32.571091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526562, 35.755905, 32.777378>,  <43.391663, 35.911091, 32.901150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526562, 35.755905, 32.777378>,  <43.751392, 35.497261, 32.571091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526562, 35.755905, 32.777378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318652, 0.406106, -0.856469,
		-0.763236, -0.645738, -0.022221,
		-0.562078, 0.646607, 0.515721,
		43.357937, 35.949886, 32.932095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094604, 35.645550, 32.232910>,  <43.751392, 35.497261, 32.571091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094604, 35.645550, 32.232910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146141, 35.962387, 32.471569>,  <43.177063, 36.152489, 32.614765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146141, 35.962387, 32.471569>,  <43.094604, 35.645550, 32.232910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146141, 35.962387, 32.471569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223334, 0.609385, -0.760770,
		-0.966189, -0.035232, 0.255416,
		0.128843, 0.792091, 0.596650,
		43.184795, 36.200016, 32.650562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548683, 36.078270, 32.042820>,  <43.094604, 35.645550, 32.232910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548683, 36.078270, 32.042820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816025, 36.300407, 32.240772>,  <42.976429, 36.433689, 32.359543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816025, 36.300407, 32.240772>,  <42.548683, 36.078270, 32.042820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816025, 36.300407, 32.240772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036010, 0.688670, -0.724180,
		-0.742973, 0.466187, 0.480271,
		0.668352, 0.555341, 0.494876,
		43.016529, 36.467010, 32.389236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304497, 36.676968, 32.028793>,  <42.548683, 36.078270, 32.042820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304497, 36.676968, 32.028793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690754, 36.750221, 32.102551>,  <42.922508, 36.794174, 32.146805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690754, 36.750221, 32.102551>,  <42.304497, 36.676968, 32.028793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690754, 36.750221, 32.102551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004553, 0.697484, -0.716586,
		-0.259845, 0.692804, 0.672684,
		0.965640, 0.183139, 0.184391,
		42.980446, 36.805164, 32.157867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326756, 37.346329, 31.816681>,  <42.304497, 36.676968, 32.028793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326756, 37.346329, 31.816681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706642, 37.221088, 31.815918>,  <42.934574, 37.145943, 31.815460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706642, 37.221088, 31.815918>,  <42.326756, 37.346329, 31.816681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706642, 37.221088, 31.815918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219725, 0.670799, -0.708343,
		0.223061, 0.672307, 0.705866,
		0.949718, -0.313100, -0.001906,
		42.991558, 37.127159, 31.815346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701660, 37.959103, 31.675407>,  <42.326756, 37.346329, 31.816681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701660, 37.959103, 31.675407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968010, 37.676155, 31.580542>,  <43.127819, 37.506386, 31.523623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968010, 37.676155, 31.580542>,  <42.701660, 37.959103, 31.675407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968010, 37.676155, 31.580542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272726, 0.526669, -0.805134,
		0.694432, 0.471434, 0.543611,
		0.665871, -0.707368, -0.237163,
		43.167770, 37.463943, 31.509392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094662, 38.348019, 31.167374>,  <42.701660, 37.959103, 31.675407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094662, 38.348019, 31.167374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181538, 37.961845, 31.109741>,  <43.233665, 37.730141, 31.075161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181538, 37.961845, 31.109741>,  <43.094662, 38.348019, 31.167374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181538, 37.961845, 31.109741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295132, 0.205646, -0.933063,
		0.930443, 0.160132, 0.329596,
		0.217194, -0.965437, -0.144081,
		43.246696, 37.672215, 31.066517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534782, 38.361607, 30.685848>,  <43.094662, 38.348019, 31.167374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534782, 38.361607, 30.685848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383156, 37.991581, 30.676340>,  <43.292179, 37.769566, 30.670635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383156, 37.991581, 30.676340>,  <43.534782, 38.361607, 30.685848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383156, 37.991581, 30.676340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073383, -0.004444, -0.997294,
		0.922456, -0.379783, 0.069569,
		-0.379064, -0.925065, -0.023770,
		43.269436, 37.714062, 30.669209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044140, 37.839527, 30.381172>,  <43.534782, 38.361607, 30.685848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044140, 37.839527, 30.381172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672112, 37.697758, 30.342493>,  <43.448895, 37.612698, 30.319284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672112, 37.697758, 30.342493>,  <44.044140, 37.839527, 30.381172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672112, 37.697758, 30.342493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068426, 0.091487, -0.993453,
		0.360946, -0.930600, -0.060839,
		-0.930073, -0.354420, -0.096699,
		43.393089, 37.591431, 30.313484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017387, 37.433887, 29.723396>,  <44.044140, 37.839527, 30.381172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017387, 37.433887, 29.723396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634602, 37.503407, 29.816362>,  <43.404930, 37.545120, 29.872141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634602, 37.503407, 29.816362>,  <44.017387, 37.433887, 29.723396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634602, 37.503407, 29.816362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243948, -0.047937, -0.968603,
		-0.157205, -0.983613, 0.088273,
		-0.956962, 0.173803, 0.232414,
		43.347511, 37.555546, 29.886087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679085, 36.953384, 29.435072>,  <44.017387, 37.433887, 29.723396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679085, 36.953384, 29.435072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368767, 37.199356, 29.491644>,  <43.182575, 37.346939, 29.525587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368767, 37.199356, 29.491644>,  <43.679085, 36.953384, 29.435072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368767, 37.199356, 29.491644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273756, -0.126068, -0.953501,
		-0.568507, -0.778439, 0.266143,
		-0.775795, 0.614931, 0.141432,
		43.136028, 37.383835, 29.534073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123253, 36.557899, 29.088711>,  <43.679085, 36.953384, 29.435072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123253, 36.557899, 29.088711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994549, 36.935627, 29.116215>,  <42.917324, 37.162262, 29.132717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994549, 36.935627, 29.116215>,  <43.123253, 36.557899, 29.088711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994549, 36.935627, 29.116215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300650, -0.033038, -0.953162,
		-0.897819, -0.327364, 0.294540,
		-0.321763, 0.944321, 0.068760,
		42.898022, 37.218922, 29.136843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402031, 36.498165, 28.869499>,  <43.123253, 36.557899, 29.088711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402031, 36.498165, 28.869499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546085, 36.869553, 28.833155>,  <42.632519, 37.092384, 28.811348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546085, 36.869553, 28.833155>,  <42.402031, 36.498165, 28.869499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546085, 36.869553, 28.833155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317303, 0.030322, -0.947839,
		-0.877280, 0.370182, 0.305524,
		0.360137, 0.928464, -0.090859,
		42.654125, 37.148090, 28.805897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976250, 36.874920, 28.433002>,  <42.402031, 36.498165, 28.869499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976250, 36.874920, 28.433002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323437, 37.073406, 28.441078>,  <42.531750, 37.192497, 28.445923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323437, 37.073406, 28.441078>,  <41.976250, 36.874920, 28.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323437, 37.073406, 28.441078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037263, 0.105606, -0.993710,
		-0.495226, 0.861753, 0.110153,
		0.867965, 0.496215, 0.020187,
		42.583828, 37.222271, 28.447134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914032, 37.513248, 28.116116>,  <41.976250, 36.874920, 28.433002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914032, 37.513248, 28.116116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294205, 37.400372, 28.063889>,  <42.522308, 37.332645, 28.032553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294205, 37.400372, 28.063889>,  <41.914032, 37.513248, 28.116116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294205, 37.400372, 28.063889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121454, 0.049628, -0.991356,
		0.286237, 0.958072, 0.012894,
		0.950430, -0.282196, -0.130568,
		42.579334, 37.315712, 28.024719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305462, 38.060078, 27.764374>,  <41.914032, 37.513248, 28.116116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305462, 38.060078, 27.764374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441288, 37.687717, 27.710535>,  <42.522785, 37.464302, 27.678232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441288, 37.687717, 27.710535>,  <42.305462, 38.060078, 27.764374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441288, 37.687717, 27.710535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007387, 0.145737, -0.989296,
		0.940552, 0.334940, 0.056364,
		0.339569, -0.930901, -0.134599,
		42.543159, 37.408447, 27.670155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242985, 38.865540, 27.764519>,  <42.305462, 38.060078, 27.764374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242985, 38.865540, 27.764519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458790, 38.871716, 28.101254>,  <42.588272, 38.875420, 28.303295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458790, 38.871716, 28.101254>,  <42.242985, 38.865540, 27.764519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458790, 38.871716, 28.101254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604276, 0.689152, -0.399900,
		-0.586328, 0.724453, 0.362475,
		0.539509, 0.015437, 0.841838,
		42.620644, 38.876347, 28.353806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243580, 39.656227, 27.985741>,  <42.242985, 38.865540, 27.764519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243580, 39.656227, 27.985741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534439, 39.401180, 28.087486>,  <42.708954, 39.248150, 28.148533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534439, 39.401180, 28.087486>,  <42.243580, 39.656227, 27.985741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534439, 39.401180, 28.087486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676192, 0.601338, -0.425625,
		0.118429, 0.481489, 0.868414,
		0.727144, -0.637621, 0.254363,
		42.752583, 39.209892, 28.163795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805672, 39.875889, 28.514141>,  <42.243580, 39.656227, 27.985741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805672, 39.875889, 28.514141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923172, 39.619793, 28.230223>,  <42.993671, 39.466137, 28.059872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923172, 39.619793, 28.230223>,  <42.805672, 39.875889, 28.514141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923172, 39.619793, 28.230223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517250, 0.730914, -0.445217,
		0.803841, -0.236356, 0.545870,
		0.293754, -0.640235, -0.709794,
		43.011299, 39.427723, 28.017284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409248, 39.570423, 28.672934>,  <42.805672, 39.875889, 28.514141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409248, 39.570423, 28.672934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330402, 39.663837, 28.292070>,  <43.283096, 39.719887, 28.063553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330402, 39.663837, 28.292070>,  <43.409248, 39.570423, 28.672934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330402, 39.663837, 28.292070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717950, 0.695747, 0.022018,
		0.667603, -0.679262, -0.304809,
		-0.197114, 0.233537, -0.952159,
		43.271267, 39.733898, 28.006422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074268, 39.427914, 28.136995>,  <43.409248, 39.570423, 28.672934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074268, 39.427914, 28.136995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817165, 39.727905, 28.074507>,  <43.662903, 39.907898, 28.037014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817165, 39.727905, 28.074507>,  <44.074268, 39.427914, 28.136995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817165, 39.727905, 28.074507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765965, 0.632581, -0.114625,
		0.012858, -0.193337, -0.981048,
		-0.642753, 0.749975, -0.156223,
		43.624340, 39.952896, 28.027639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158054, 39.722305, 27.416895>,  <44.074268, 39.427914, 28.136995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158054, 39.722305, 27.416895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057472, 39.932186, 27.742214>,  <43.997124, 40.058117, 27.937407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057472, 39.932186, 27.742214>,  <44.158054, 39.722305, 27.416895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057472, 39.932186, 27.742214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888920, 0.457609, -0.020391,
		-0.382872, 0.717829, -0.581491,
		-0.251458, 0.524706, 0.813298,
		43.982037, 40.089600, 27.986204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836334, 39.574863, 27.742004>,  <44.158054, 39.722305, 27.416895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836334, 39.574863, 27.742004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162621, 39.791195, 27.824099>,  <45.358391, 39.920994, 27.873356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162621, 39.791195, 27.824099>,  <44.836334, 39.574863, 27.742004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162621, 39.791195, 27.824099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375989, -0.765335, 0.522393,
		0.439598, -0.348956, -0.827637,
		0.815712, 0.540825, 0.205236,
		45.407333, 39.953442, 27.885670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464077, 39.214893, 27.649792>,  <44.836334, 39.574863, 27.742004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464077, 39.214893, 27.649792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547817, 39.500393, 27.917145>,  <45.598061, 39.671692, 28.077557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547817, 39.500393, 27.917145>,  <45.464077, 39.214893, 27.649792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547817, 39.500393, 27.917145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468241, -0.673237, 0.572279,
		0.858443, 0.193159, -0.475147,
		0.209346, 0.713752, 0.668380,
		45.610622, 39.714520, 28.117659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121849, 39.313931, 27.779156>,  <45.464077, 39.214893, 27.649792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121849, 39.313931, 27.779156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935062, 39.419201, 28.116837>,  <45.822990, 39.482365, 28.319445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935062, 39.419201, 28.116837>,  <46.121849, 39.313931, 27.779156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935062, 39.419201, 28.116837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435091, -0.762745, 0.478453,
		0.769830, 0.590726, 0.241670,
		-0.466967, 0.263179, 0.844203,
		45.794971, 39.498154, 28.370098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730621, 39.382320, 28.332026>,  <46.121849, 39.313931, 27.779156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730621, 39.382320, 28.332026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378391, 39.309719, 28.507132>,  <46.167053, 39.266159, 28.612196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378391, 39.309719, 28.507132>,  <46.730621, 39.382320, 28.332026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378391, 39.309719, 28.507132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411609, -0.750737, 0.516694,
		0.234862, 0.635177, 0.735792,
		-0.880578, -0.181507, 0.437765,
		46.114220, 39.255268, 28.638460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.871529, 39.337292, 29.047243>,  <46.730621, 39.382320, 28.332026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.871529, 39.337292, 29.047243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519638, 39.151592, 29.006165>,  <46.308502, 39.040173, 28.981518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519638, 39.151592, 29.006165>,  <46.871529, 39.337292, 29.047243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.519638, 39.151592, 29.006165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260022, -0.650575, 0.713541,
		-0.398074, 0.601020, 0.693046,
		-0.879731, -0.464249, -0.102698,
		46.255718, 39.012318, 28.975355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630646, 39.369194, 29.706219>,  <46.871529, 39.337292, 29.047243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630646, 39.369194, 29.706219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412231, 39.079620, 29.537567>,  <46.281185, 38.905876, 29.436377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412231, 39.079620, 29.537567>,  <46.630646, 39.369194, 29.706219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412231, 39.079620, 29.537567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003182, -0.501486, 0.865160,
		-0.837759, 0.473746, 0.271524,
		-0.546031, -0.723931, -0.421631,
		46.248421, 38.862442, 29.411077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157585, 39.227379, 30.199017>,  <46.630646, 39.369194, 29.706219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157585, 39.227379, 30.199017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167244, 38.902020, 29.966536>,  <46.173038, 38.706802, 29.827047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167244, 38.902020, 29.966536>,  <46.157585, 39.227379, 30.199017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167244, 38.902020, 29.966536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234455, -0.569766, 0.787653,
		-0.971827, 0.117244, -0.204466,
		0.024151, -0.813400, -0.581202,
		46.174488, 38.658001, 29.792175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577942, 38.749008, 30.435045>,  <46.157585, 39.227379, 30.199017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577942, 38.749008, 30.435045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828495, 38.505653, 30.240101>,  <45.978825, 38.359642, 30.123135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828495, 38.505653, 30.240101>,  <45.577942, 38.749008, 30.435045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828495, 38.505653, 30.240101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094439, -0.561374, 0.822156,
		-0.773778, -0.561006, -0.294177,
		0.626378, -0.608384, -0.487360,
		46.016407, 38.323139, 30.093893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282642, 37.980438, 30.491434>,  <45.577942, 38.749008, 30.435045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282642, 37.980438, 30.491434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673153, 37.963760, 30.406441>,  <45.907459, 37.953754, 30.355446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673153, 37.963760, 30.406441>,  <45.282642, 37.980438, 30.491434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673153, 37.963760, 30.406441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135168, -0.649267, 0.748453,
		-0.169165, -0.759417, -0.628227,
		0.976275, -0.041696, -0.212482,
		45.966034, 37.951252, 30.342695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376705, 37.334244, 30.434528>,  <45.282642, 37.980438, 30.491434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376705, 37.334244, 30.434528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742172, 37.465069, 30.531054>,  <45.961452, 37.543564, 30.588968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742172, 37.465069, 30.531054>,  <45.376705, 37.334244, 30.434528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742172, 37.465069, 30.531054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037394, -0.658824, 0.751367,
		0.404729, -0.677479, -0.614179,
		0.913672, 0.327066, 0.241312,
		46.016273, 37.563190, 30.603447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835205, 36.834610, 30.465998>,  <45.376705, 37.334244, 30.434528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835205, 36.834610, 30.465998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020332, 37.096966, 30.704529>,  <46.131409, 37.254379, 30.847647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020332, 37.096966, 30.704529>,  <45.835205, 36.834610, 30.465998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020332, 37.096966, 30.704529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112689, -0.710786, 0.694323,
		0.879260, -0.254147, -0.402878,
		0.462820, 0.655890, 0.596326,
		46.159180, 37.293732, 30.883427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411880, 36.496704, 30.659508>,  <45.835205, 36.834610, 30.465998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411880, 36.496704, 30.659508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337696, 36.794350, 30.916225>,  <46.293186, 36.972939, 31.070255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337696, 36.794350, 30.916225>,  <46.411880, 36.496704, 30.659508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337696, 36.794350, 30.916225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225075, -0.603594, 0.764863,
		0.956527, 0.286307, -0.055536,
		-0.185465, 0.744112, 0.641794,
		46.282055, 37.017582, 31.108765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858009, 36.275345, 31.098621>,  <46.411880, 36.496704, 30.659508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.858009, 36.275345, 31.098621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649807, 36.548527, 31.303617>,  <46.524887, 36.712437, 31.426615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649807, 36.548527, 31.303617>,  <46.858009, 36.275345, 31.098621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649807, 36.548527, 31.303617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134043, -0.527408, 0.838972,
		0.843272, 0.505384, 0.182972,
		-0.520504, 0.682956, 0.512491,
		46.493656, 36.753414, 31.457365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200714, 36.307365, 31.726904>,  <46.858009, 36.275345, 31.098621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200714, 36.307365, 31.726904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847946, 36.480167, 31.802353>,  <46.636284, 36.583851, 31.847622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847946, 36.480167, 31.802353>,  <47.200714, 36.307365, 31.726904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847946, 36.480167, 31.802353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091384, -0.549236, 0.830655,
		0.462449, 0.715338, 0.523863,
		-0.881924, 0.432008, 0.188624,
		46.583370, 36.609772, 31.858940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203384, 36.456741, 32.430012>,  <47.200714, 36.307365, 31.726904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203384, 36.456741, 32.430012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810665, 36.479385, 32.357494>,  <46.575035, 36.492973, 32.313984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810665, 36.479385, 32.357494>,  <47.203384, 36.456741, 32.430012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810665, 36.479385, 32.357494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185490, -0.491022, 0.851171,
		-0.040834, 0.869306, 0.492585,
		-0.981797, 0.056612, -0.181298,
		46.516125, 36.496368, 32.303104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895348, 36.821941, 33.018642>,  <47.203384, 36.456741, 32.430012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895348, 36.821941, 33.018642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659515, 36.553185, 32.839333>,  <46.518017, 36.391930, 32.731747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659515, 36.553185, 32.839333>,  <46.895348, 36.821941, 33.018642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659515, 36.553185, 32.839333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283741, -0.347341, 0.893782,
		-0.756229, 0.654155, 0.014144,
		-0.589584, -0.671890, -0.448279,
		46.482639, 36.351616, 32.704849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379009, 36.707600, 33.538841>,  <46.895348, 36.821941, 33.018642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379009, 36.707600, 33.538841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321091, 36.396553, 33.294106>,  <46.286339, 36.209927, 33.147263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321091, 36.396553, 33.294106>,  <46.379009, 36.707600, 33.538841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321091, 36.396553, 33.294106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275333, -0.562272, 0.779770,
		-0.950382, 0.281367, -0.132688,
		-0.144795, -0.777613, -0.611843,
		46.277653, 36.163269, 33.110554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677128, 36.434509, 33.639656>,  <46.379009, 36.707600, 33.538841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677128, 36.434509, 33.639656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899181, 36.141701, 33.481682>,  <46.032413, 35.966015, 33.386898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899181, 36.141701, 33.481682>,  <45.677128, 36.434509, 33.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899181, 36.141701, 33.481682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292130, -0.616162, 0.731440,
		-0.778774, -0.290673, -0.555896,
		0.555132, -0.732020, -0.394937,
		46.065720, 35.922096, 33.363201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144375, 35.927765, 33.402805>,  <45.677128, 36.434509, 33.639656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144375, 35.927765, 33.402805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500710, 35.751122, 33.445503>,  <45.714512, 35.645138, 33.471123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500710, 35.751122, 33.445503>,  <45.144375, 35.927765, 33.402805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500710, 35.751122, 33.445503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409017, -0.677275, 0.611558,
		-0.197775, -0.588458, -0.783966,
		0.890837, -0.441606, 0.106741,
		45.767960, 35.618641, 33.477524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986954, 35.294262, 33.585743>,  <45.144375, 35.927765, 33.402805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986954, 35.294262, 33.585743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381176, 35.277874, 33.651463>,  <45.617710, 35.268040, 33.690895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381176, 35.277874, 33.651463>,  <44.986954, 35.294262, 33.585743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381176, 35.277874, 33.651463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154502, -0.614658, 0.773515,
		0.069298, -0.787729, -0.612112,
		0.985559, -0.040969, 0.164300,
		45.676846, 35.265583, 33.700752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181244, 34.552784, 33.552425>,  <44.986954, 35.294262, 33.585743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181244, 34.552784, 33.552425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425926, 34.766624, 33.785667>,  <45.572735, 34.894928, 33.925613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425926, 34.766624, 33.785667>,  <45.181244, 34.552784, 33.552425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425926, 34.766624, 33.785667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187396, -0.618192, 0.763362,
		0.768567, -0.576227, -0.277971,
		0.611709, 0.534604, 0.583104,
		45.609440, 34.927006, 33.960598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575157, 34.113766, 33.975430>,  <45.181244, 34.552784, 33.552425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575157, 34.113766, 33.975430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628506, 34.447723, 34.189034>,  <45.660515, 34.648098, 34.317196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628506, 34.447723, 34.189034>,  <45.575157, 34.113766, 33.975430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628506, 34.447723, 34.189034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036241, -0.542568, 0.839230,
		0.990403, -0.092577, -0.102620,
		0.133371, 0.834895, 0.534006,
		45.668518, 34.698193, 34.349236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109135, 33.982269, 34.422878>,  <45.575157, 34.113766, 33.975430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109135, 33.982269, 34.422878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915051, 34.283871, 34.599991>,  <45.798599, 34.464832, 34.706261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915051, 34.283871, 34.599991>,  <46.109135, 33.982269, 34.422878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915051, 34.283871, 34.599991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010694, -0.511465, 0.859237,
		0.874333, 0.412174, 0.256231,
		-0.485209, 0.754000, 0.442783,
		45.769489, 34.510071, 34.732826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610432, 33.853317, 34.905148>,  <46.109135, 33.982269, 34.422878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610432, 33.853317, 34.905148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979679, 33.902184, 34.759308>,  <47.201225, 33.931503, 34.671803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979679, 33.902184, 34.759308>,  <46.610432, 33.853317, 34.905148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979679, 33.902184, 34.759308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015301, 0.935769, 0.352282,
		0.384217, -0.330775, 0.861954,
		0.923116, 0.122164, -0.364599,
		47.256615, 33.938831, 34.649929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.080914, 34.002453, 35.402275>,  <46.610432, 33.853317, 34.905148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.080914, 34.002453, 35.402275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180824, 34.172840, 35.054443>,  <47.240768, 34.275074, 34.845745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180824, 34.172840, 35.054443>,  <47.080914, 34.002453, 35.402275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180824, 34.172840, 35.054443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004705, 0.898562, 0.438820,
		0.968293, -0.105515, 0.226442,
		0.249774, 0.425972, -0.869575,
		47.255756, 34.300632, 34.793571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.819096, 34.375645, 35.343597>,  <47.080914, 34.002453, 35.402275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.819096, 34.375645, 35.343597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571335, 34.554996, 35.085823>,  <47.422680, 34.662609, 34.931156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571335, 34.554996, 35.085823>,  <47.819096, 34.375645, 35.343597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571335, 34.554996, 35.085823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179276, 0.879955, 0.439932,
		0.764333, 0.156962, -0.625427,
		-0.619400, 0.448378, -0.644439,
		47.385513, 34.689510, 34.892490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.154621, 35.004356, 35.057671>,  <47.819096, 34.375645, 35.343597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.154621, 35.004356, 35.057671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758083, 35.040436, 35.019516>,  <47.520161, 35.062084, 34.996624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758083, 35.040436, 35.019516>,  <48.154621, 35.004356, 35.057671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758083, 35.040436, 35.019516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061319, 0.960593, 0.271112,
		0.116080, 0.262917, -0.957810,
		-0.991345, 0.090203, -0.095384,
		47.460678, 35.067497, 34.990902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.680244, 38.910637, 43.800446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.307903, 38.765553, 43.782772>,  <33.084499, 38.678501, 43.772167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.307903, 38.765553, 43.782772>,  <33.680244, 38.910637, 43.800446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307903, 38.765553, 43.782772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188968, -0.374386, -0.907814,
		0.312736, -0.853390, 0.417040,
		-0.930853, -0.362713, -0.044179,
		33.028648, 38.656738, 43.769520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720169, 38.157810, 43.515842>,  <33.680244, 38.910637, 43.800446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720169, 38.157810, 43.515842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349224, 38.295811, 43.457909>,  <33.126656, 38.378613, 43.423149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349224, 38.295811, 43.457909>,  <33.720169, 38.157810, 43.515842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349224, 38.295811, 43.457909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025545, -0.444552, -0.895389,
		-0.373292, -0.826650, 0.421074,
		-0.927363, 0.344997, -0.144831,
		33.071014, 38.399311, 43.414459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391140, 37.655003, 43.239704>,  <33.720169, 38.157810, 43.515842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391140, 37.655003, 43.239704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.126480, 37.938667, 43.142288>,  <32.967682, 38.108864, 43.083839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.126480, 37.938667, 43.142288>,  <33.391140, 37.655003, 43.239704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126480, 37.938667, 43.142288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104835, -0.409108, -0.906444,
		-0.742446, -0.574218, 0.345032,
		-0.661652, 0.709158, -0.243543,
		32.927986, 38.151413, 43.069225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809540, 37.237183, 42.983475>,  <33.391140, 37.655003, 43.239704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809540, 37.237183, 42.983475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.778095, 37.613506, 42.851597>,  <32.759228, 37.839302, 42.772469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.778095, 37.613506, 42.851597>,  <32.809540, 37.237183, 42.983475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778095, 37.613506, 42.851597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218082, -0.338940, -0.915183,
		-0.972760, -0.000038, 0.231816,
		-0.078607, 0.940808, -0.329698,
		32.754513, 37.895748, 42.752686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136425, 37.419083, 42.583107>,  <32.809540, 37.237183, 42.983475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136425, 37.419083, 42.583107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.396187, 37.692780, 42.450386>,  <32.552044, 37.856998, 42.370754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.396187, 37.692780, 42.450386>,  <32.136425, 37.419083, 42.583107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396187, 37.692780, 42.450386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264949, -0.205405, -0.942131,
		-0.712796, 0.699734, 0.047897,
		0.649402, 0.684238, -0.331806,
		32.591007, 37.898052, 42.350845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889050, 37.527569, 41.860039>,  <32.136425, 37.419083, 42.583107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889050, 37.527569, 41.860039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220688, 37.750534, 41.842621>,  <32.419670, 37.884312, 41.832172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220688, 37.750534, 41.842621>,  <31.889050, 37.527569, 41.860039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220688, 37.750534, 41.842621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170086, -0.325639, -0.930070,
		-0.532609, 0.763711, -0.364793,
		0.829095, 0.557409, -0.043542,
		32.469418, 37.917755, 41.829559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860785, 37.930416, 41.115845>,  <31.889050, 37.527569, 41.860039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860785, 37.930416, 41.115845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236820, 37.928902, 41.252209>,  <32.462440, 37.927994, 41.334026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236820, 37.928902, 41.252209>,  <31.860785, 37.930416, 41.115845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236820, 37.928902, 41.252209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327158, -0.271340, -0.905175,
		0.095927, 0.962476, -0.253845,
		0.940088, -0.003783, 0.340911,
		32.518848, 37.927765, 41.354481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266266, 38.254738, 40.563141>,  <31.860785, 37.930416, 41.115845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266266, 38.254738, 40.563141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.525826, 38.049622, 40.787991>,  <32.681561, 37.926552, 40.922901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.525826, 38.049622, 40.787991>,  <32.266266, 38.254738, 40.563141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525826, 38.049622, 40.787991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407903, -0.389200, -0.825917,
		0.642298, 0.765226, -0.043383,
		0.648898, -0.512788, 0.562121,
		32.720493, 37.895786, 40.956627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895176, 38.385319, 40.262207>,  <32.266266, 38.254738, 40.563141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895176, 38.385319, 40.262207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.931229, 38.040169, 40.461136>,  <32.952862, 37.833080, 40.580494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.931229, 38.040169, 40.461136>,  <32.895176, 38.385319, 40.262207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931229, 38.040169, 40.461136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423499, -0.418749, -0.803304,
		0.901401, 0.283018, 0.327683,
		0.090133, -0.862873, 0.497318,
		32.958267, 37.781307, 40.610332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471832, 38.195202, 40.025021>,  <32.895176, 38.385319, 40.262207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471832, 38.195202, 40.025021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331783, 37.851883, 40.175079>,  <33.247753, 37.645889, 40.265114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331783, 37.851883, 40.175079>,  <33.471832, 38.195202, 40.025021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331783, 37.851883, 40.175079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449197, -0.505288, -0.736822,
		0.821973, -0.089459, 0.562457,
		-0.350118, -0.858301, 0.375149,
		33.226749, 37.594391, 40.287624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100876, 37.710632, 40.070972>,  <33.471832, 38.195202, 40.025021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100876, 37.710632, 40.070972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768501, 37.488083, 40.071095>,  <33.569077, 37.354553, 40.071167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768501, 37.488083, 40.071095>,  <34.100876, 37.710632, 40.070972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768501, 37.488083, 40.071095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488151, -0.729307, -0.479396,
		0.266943, -0.398199, 0.877599,
		-0.830933, -0.556372, 0.000302,
		33.519222, 37.321171, 40.071186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402122, 37.116188, 40.234501>,  <34.100876, 37.710632, 40.070972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402122, 37.116188, 40.234501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056698, 37.039501, 40.047955>,  <33.849442, 36.993488, 39.936028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056698, 37.039501, 40.047955>,  <34.402122, 37.116188, 40.234501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056698, 37.039501, 40.047955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496150, -0.488070, -0.718069,
		-0.089953, -0.851488, 0.516601,
		-0.863564, -0.191719, -0.466369,
		33.797630, 36.981987, 39.908043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362392, 36.391586, 40.152756>,  <34.402122, 37.116188, 40.234501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362392, 36.391586, 40.152756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131424, 36.540268, 39.861984>,  <33.992844, 36.629475, 39.687523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131424, 36.540268, 39.861984>,  <34.362392, 36.391586, 40.152756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131424, 36.540268, 39.861984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402925, -0.644642, -0.649683,
		-0.710096, -0.668038, 0.222463,
		-0.577422, 0.371701, -0.726927,
		33.958199, 36.651779, 39.643906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185932, 35.832458, 39.738750>,  <34.362392, 36.391586, 40.152756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185932, 35.832458, 39.738750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143078, 36.144901, 39.492695>,  <34.117367, 36.332367, 39.345062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143078, 36.144901, 39.492695>,  <34.185932, 35.832458, 39.738750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143078, 36.144901, 39.492695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456214, -0.511102, -0.728453,
		-0.883398, -0.358675, -0.301597,
		-0.107131, 0.781106, -0.615139,
		34.110939, 36.379234, 39.308151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058205, 35.490318, 39.104645>,  <34.185932, 35.832458, 39.738750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058205, 35.490318, 39.104645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147335, 35.872875, 39.029102>,  <34.200813, 36.102409, 38.983776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147335, 35.872875, 39.029102>,  <34.058205, 35.490318, 39.104645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147335, 35.872875, 39.029102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480294, -0.276282, -0.832458,
		-0.848332, 0.094787, -0.520911,
		0.222824, 0.956391, -0.188853,
		34.214184, 36.159794, 38.972446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997112, 35.499195, 38.405453>,  <34.058205, 35.490318, 39.104645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997112, 35.499195, 38.405453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.213070, 35.829102, 38.472713>,  <34.342644, 36.027046, 38.513069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.213070, 35.829102, 38.472713>,  <33.997112, 35.499195, 38.405453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213070, 35.829102, 38.472713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423405, -0.093444, -0.901109,
		-0.727491, 0.557699, -0.399660,
		0.539894, 0.824766, 0.168153,
		34.375038, 36.076530, 38.523159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071335, 35.846214, 37.849396>,  <33.997112, 35.499195, 38.405453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071335, 35.846214, 37.849396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.408150, 35.982925, 38.016327>,  <34.610237, 36.064953, 38.116486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.408150, 35.982925, 38.016327>,  <34.071335, 35.846214, 37.849396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408150, 35.982925, 38.016327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532059, -0.398845, -0.746884,
		-0.088823, 0.850945, -0.517689,
		0.842035, 0.341782, 0.417327,
		34.660759, 36.085461, 38.141525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271709, 36.364372, 37.348217>,  <34.071335, 35.846214, 37.849396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271709, 36.364372, 37.348217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.615734, 36.293533, 37.539600>,  <34.822151, 36.251030, 37.654430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.615734, 36.293533, 37.539600>,  <34.271709, 36.364372, 37.348217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615734, 36.293533, 37.539600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438488, -0.222808, -0.870681,
		0.260797, 0.958642, -0.113976,
		0.860066, -0.177094, 0.478460,
		34.873753, 36.240406, 37.683140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871857, 36.721088, 36.945225>,  <34.271709, 36.364372, 37.348217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871857, 36.721088, 36.945225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021442, 36.421001, 37.163334>,  <35.111195, 36.240948, 37.294197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021442, 36.421001, 37.163334>,  <34.871857, 36.721088, 36.945225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021442, 36.421001, 37.163334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465245, -0.356852, -0.810064,
		0.802308, 0.556618, 0.215588,
		0.373964, -0.750222, 0.545269,
		35.133633, 36.195934, 37.326916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416397, 36.704597, 36.693333>,  <34.871857, 36.721088, 36.945225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416397, 36.704597, 36.693333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445236, 36.368164, 36.907764>,  <35.462540, 36.166306, 37.036423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445236, 36.368164, 36.907764>,  <35.416397, 36.704597, 36.693333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445236, 36.368164, 36.907764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379523, -0.473910, -0.794589,
		0.922369, 0.260744, 0.285041,
		0.072100, -0.841084, 0.536078,
		35.466866, 36.115837, 37.068588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996525, 36.509216, 36.515514>,  <35.416397, 36.704597, 36.693333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996525, 36.509216, 36.515514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816544, 36.179314, 36.652519>,  <35.708553, 35.981373, 36.734722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816544, 36.179314, 36.652519>,  <35.996525, 36.509216, 36.515514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816544, 36.179314, 36.652519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300384, -0.500953, -0.811674,
		0.841016, -0.262335, 0.473152,
		-0.449957, -0.824758, 0.342509,
		35.681557, 35.931885, 36.755272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393463, 35.937565, 36.490833>,  <35.996525, 36.509216, 36.515514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393463, 35.937565, 36.490833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008968, 35.830322, 36.465084>,  <35.778271, 35.765976, 36.449635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008968, 35.830322, 36.465084>,  <36.393463, 35.937565, 36.490833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008968, 35.830322, 36.465084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165312, -0.373532, -0.912768,
		0.220672, -0.888028, 0.403374,
		-0.961237, -0.268105, -0.064374,
		35.720596, 35.749889, 36.445770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943733, 35.511784, 36.861362>,  <36.393463, 35.937565, 36.490833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943733, 35.511784, 36.861362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342113, 35.517387, 36.896877>,  <37.581142, 35.520748, 36.918186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342113, 35.517387, 36.896877>,  <36.943733, 35.511784, 36.861362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342113, 35.517387, 36.896877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087825, 0.362024, 0.928023,
		-0.019142, -0.932064, 0.361789,
		0.995952, 0.014010, 0.088788,
		37.640900, 35.521591, 36.923515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249599, 35.086517, 37.478622>,  <36.943733, 35.511784, 36.861362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249599, 35.086517, 37.478622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508007, 35.379852, 37.393890>,  <37.663052, 35.555855, 37.343052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508007, 35.379852, 37.393890>,  <37.249599, 35.086517, 37.478622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508007, 35.379852, 37.393890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058467, 0.324230, 0.944170,
		0.761075, -0.597571, 0.252336,
		0.646023, 0.733338, -0.211826,
		37.701813, 35.599854, 37.330341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721176, 35.210758, 38.066708>,  <37.249599, 35.086517, 37.478622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721176, 35.210758, 38.066708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691021, 35.538479, 37.839355>,  <37.672928, 35.735111, 37.702946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691021, 35.538479, 37.839355>,  <37.721176, 35.210758, 38.066708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691021, 35.538479, 37.839355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051940, 0.566002, 0.822766,
		0.995800, 0.091551, -0.000117,
		-0.075392, 0.819305, -0.568380,
		37.668404, 35.784271, 37.668842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249481, 35.648033, 38.398273>,  <37.721176, 35.210758, 38.066708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249481, 35.648033, 38.398273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002533, 35.882866, 38.188820>,  <37.854366, 36.023766, 38.063148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002533, 35.882866, 38.188820>,  <38.249481, 35.648033, 38.398273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002533, 35.882866, 38.188820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141859, 0.571637, 0.808150,
		0.773779, 0.573208, -0.269627,
		-0.617367, 0.587081, -0.523636,
		37.817322, 36.058990, 38.031731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437130, 36.345695, 38.559158>,  <38.249481, 35.648033, 38.398273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437130, 36.345695, 38.559158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060978, 36.361317, 38.424007>,  <37.835285, 36.370689, 38.342918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060978, 36.361317, 38.424007>,  <38.437130, 36.345695, 38.559158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060978, 36.361317, 38.424007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267039, 0.530485, 0.804535,
		0.210659, 0.846794, -0.488429,
		-0.940379, 0.039053, -0.337878,
		37.778866, 36.373032, 38.322643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281296, 36.952805, 38.878708>,  <38.437130, 36.345695, 38.559158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281296, 36.952805, 38.878708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938919, 36.806892, 38.732121>,  <37.733494, 36.719345, 38.644169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938919, 36.806892, 38.732121>,  <38.281296, 36.952805, 38.878708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938919, 36.806892, 38.732121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482528, 0.308821, 0.819632,
		-0.185810, 0.878389, -0.440349,
		-0.855945, -0.364777, -0.366465,
		37.682137, 36.697460, 38.622181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818195, 37.519852, 38.797272>,  <38.281296, 36.952805, 38.878708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818195, 37.519852, 38.797272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624638, 37.170948, 38.825573>,  <37.508503, 36.961605, 38.842556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624638, 37.170948, 38.825573>,  <37.818195, 37.519852, 38.797272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624638, 37.170948, 38.825573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528770, 0.355851, 0.770566,
		-0.697313, 0.335461, -0.633420,
		-0.483898, -0.872259, 0.070758,
		37.479469, 36.909271, 38.846802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118961, 37.755539, 38.866554>,  <37.818195, 37.519852, 38.797272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118961, 37.755539, 38.866554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126820, 37.381611, 39.008389>,  <37.131535, 37.157253, 39.093491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126820, 37.381611, 39.008389>,  <37.118961, 37.755539, 38.866554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126820, 37.381611, 39.008389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633984, 0.262586, 0.727401,
		-0.773096, -0.239096, -0.587499,
		0.019649, -0.934816, 0.354588,
		37.132713, 37.101166, 39.114765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496857, 37.756111, 39.075893>,  <37.118961, 37.755539, 38.866554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496857, 37.756111, 39.075893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679787, 37.456593, 39.267792>,  <36.789543, 37.276882, 39.382931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679787, 37.456593, 39.267792>,  <36.496857, 37.756111, 39.075893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679787, 37.456593, 39.267792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535593, 0.198742, 0.820757,
		-0.709926, -0.632302, -0.310160,
		0.457325, -0.748796, 0.479748,
		36.816982, 37.231953, 39.411716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966789, 37.385124, 39.434147>,  <36.496857, 37.756111, 39.075893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966789, 37.385124, 39.434147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314995, 37.305489, 39.614178>,  <36.523918, 37.257710, 39.722195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314995, 37.305489, 39.614178>,  <35.966789, 37.385124, 39.434147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314995, 37.305489, 39.614178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400067, 0.246332, 0.882761,
		-0.286614, -0.948517, 0.134788,
		0.870517, -0.199087, 0.450073,
		36.576149, 37.245762, 39.749199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722301, 36.947792, 39.905449>,  <35.966789, 37.385124, 39.434147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722301, 36.947792, 39.905449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073368, 37.115837, 39.997719>,  <36.284008, 37.216663, 40.053082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073368, 37.115837, 39.997719>,  <35.722301, 36.947792, 39.905449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073368, 37.115837, 39.997719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359528, 0.258832, 0.896519,
		0.316935, -0.869775, 0.378210,
		0.877662, 0.420115, 0.230675,
		36.336666, 37.241871, 40.066921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787224, 36.754036, 40.671124>,  <35.722301, 36.947792, 39.905449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787224, 36.754036, 40.671124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057503, 37.038780, 40.594517>,  <36.219669, 37.209629, 40.548553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057503, 37.038780, 40.594517>,  <35.787224, 36.754036, 40.671124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057503, 37.038780, 40.594517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057150, 0.309595, 0.949150,
		0.734958, -0.630395, 0.249876,
		0.675700, 0.711866, -0.191513,
		36.260212, 37.252338, 40.537064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190762, 36.738888, 41.246223>,  <35.787224, 36.754036, 40.671124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190762, 36.738888, 41.246223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.214809, 37.099701, 41.075237>,  <36.229240, 37.316189, 40.972645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.214809, 37.099701, 41.075237>,  <36.190762, 36.738888, 41.246223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214809, 37.099701, 41.075237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110452, 0.431619, 0.895268,
		0.992061, -0.006612, 0.125581,
		0.060123, 0.902032, -0.427463,
		36.232845, 37.370312, 40.946999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507362, 37.137539, 41.783154>,  <36.190762, 36.738888, 41.246223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507362, 37.137539, 41.783154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.373112, 37.415276, 41.528519>,  <36.292561, 37.581917, 41.375740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.373112, 37.415276, 41.528519>,  <36.507362, 37.137539, 41.783154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373112, 37.415276, 41.528519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101068, 0.645339, 0.757181,
		0.936558, 0.318468, -0.146415,
		-0.335625, 0.694346, -0.636584,
		36.272423, 37.623581, 41.337543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862698, 37.797146, 41.915466>,  <36.507362, 37.137539, 41.783154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862698, 37.797146, 41.915466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539040, 37.900486, 41.704361>,  <36.344845, 37.962490, 41.577698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539040, 37.900486, 41.704361>,  <36.862698, 37.797146, 41.915466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539040, 37.900486, 41.704361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171306, 0.755435, 0.632434,
		0.562081, 0.602142, -0.567001,
		-0.809147, 0.258348, -0.527766,
		36.296295, 37.977989, 41.546032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898438, 38.606682, 41.732502>,  <36.862698, 37.797146, 41.915466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898438, 38.606682, 41.732502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522575, 38.471123, 41.713779>,  <36.297058, 38.389790, 41.702545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522575, 38.471123, 41.713779>,  <36.898438, 38.606682, 41.732502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522575, 38.471123, 41.713779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277157, 0.673895, 0.684871,
		-0.200561, 0.656517, -0.727160,
		-0.939659, -0.338896, -0.046802,
		36.240677, 38.369453, 41.699738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482658, 39.177002, 41.789124>,  <36.898438, 38.606682, 41.732502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482658, 39.177002, 41.789124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.200775, 38.905739, 41.872536>,  <36.031643, 38.742981, 41.922581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.200775, 38.905739, 41.872536>,  <36.482658, 39.177002, 41.789124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200775, 38.905739, 41.872536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349181, 0.587357, 0.730127,
		-0.617622, 0.441714, -0.650716,
		-0.704710, -0.678160, 0.208527,
		35.989361, 38.702290, 41.935093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843056, 39.623283, 41.897011>,  <36.482658, 39.177002, 41.789124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843056, 39.623283, 41.897011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783794, 39.252419, 42.034660>,  <35.748238, 39.029900, 42.117249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783794, 39.252419, 42.034660>,  <35.843056, 39.623283, 41.897011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783794, 39.252419, 42.034660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639077, 0.355307, 0.682157,
		-0.754739, -0.118852, -0.645170,
		-0.148158, -0.927163, 0.344119,
		35.739346, 38.974270, 42.137897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.192287, 39.697601, 42.204506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354809, 39.378925, 42.383484>,  <35.452320, 39.187721, 42.490871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354809, 39.378925, 42.383484>,  <35.192287, 39.697601, 42.204506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354809, 39.378925, 42.383484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528807, 0.194332, 0.826195,
		-0.745172, -0.572297, -0.342337,
		0.406301, -0.796688, 0.447446,
		35.476700, 39.139919, 42.517719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667305, 39.408302, 42.595196>,  <35.192287, 39.697601, 42.204506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667305, 39.408302, 42.595196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998306, 39.254230, 42.758598>,  <35.196907, 39.161789, 42.856640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998306, 39.254230, 42.758598>,  <34.667305, 39.408302, 42.595196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998306, 39.254230, 42.758598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369370, 0.174494, 0.912753,
		-0.422856, -0.906194, 0.002120,
		0.827501, -0.385180, 0.408507,
		35.246555, 39.138676, 42.881149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531593, 38.873314, 43.037697>,  <34.667305, 39.408302, 42.595196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531593, 38.873314, 43.037697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888123, 38.972046, 43.189816>,  <35.102039, 39.031284, 43.281086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888123, 38.972046, 43.189816>,  <34.531593, 38.873314, 43.037697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888123, 38.972046, 43.189816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352527, -0.150132, 0.923680,
		0.285088, -0.957358, -0.046801,
		0.891319, 0.246832, 0.380295,
		35.155518, 39.046097, 43.303905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557919, 38.435936, 43.567024>,  <34.531593, 38.873314, 43.037697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557919, 38.435936, 43.567024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791843, 38.749191, 43.651585>,  <34.932198, 38.937145, 43.702320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791843, 38.749191, 43.651585>,  <34.557919, 38.435936, 43.567024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791843, 38.749191, 43.651585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244118, -0.078615, 0.966554,
		0.773563, -0.616860, 0.145203,
		0.584813, 0.783137, 0.211400,
		34.967289, 38.984131, 43.715004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022530, 38.209801, 43.953419>,  <34.557919, 38.435936, 43.567024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022530, 38.209801, 43.953419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064587, 38.603020, 44.013496>,  <35.089821, 38.838951, 44.049545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064587, 38.603020, 44.013496>,  <35.022530, 38.209801, 43.953419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064587, 38.603020, 44.013496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144861, -0.164563, 0.975671,
		0.983850, -0.080824, -0.159708,
		0.105140, 0.983050, 0.150197,
		35.096130, 38.897934, 44.058556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687714, 38.320526, 44.240921>,  <35.022530, 38.209801, 43.953419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687714, 38.320526, 44.240921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459557, 38.632191, 44.344883>,  <35.322662, 38.819191, 44.407261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459557, 38.632191, 44.344883>,  <35.687714, 38.320526, 44.240921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459557, 38.632191, 44.344883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328190, -0.073874, 0.941719,
		0.752953, 0.622452, -0.213577,
		-0.570397, 0.779164, 0.259906,
		35.288437, 38.865940, 44.422855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014744, 38.595329, 44.734741>,  <35.687714, 38.320526, 44.240921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014744, 38.595329, 44.734741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658012, 38.769279, 44.784592>,  <35.443974, 38.873650, 44.814503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658012, 38.769279, 44.784592>,  <36.014744, 38.595329, 44.734741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658012, 38.769279, 44.784592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158934, 0.043277, 0.986340,
		0.423542, 0.899450, -0.107712,
		-0.891825, 0.434876, 0.124623,
		35.390465, 38.899742, 44.821980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186935, 39.048767, 45.268085>,  <36.014744, 38.595329, 44.734741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186935, 39.048767, 45.268085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789135, 39.008091, 45.258034>,  <35.550457, 38.983685, 45.252003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789135, 39.008091, 45.258034>,  <36.186935, 39.048767, 45.268085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789135, 39.008091, 45.258034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024213, -0.010227, 0.999655,
		-0.101915, 0.994763, 0.007708,
		-0.994498, -0.101693, -0.025128,
		35.490784, 38.977585, 45.250496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974754, 39.414589, 45.834244>,  <36.186935, 39.048767, 45.268085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974754, 39.414589, 45.834244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642548, 39.196167, 45.790295>,  <35.443226, 39.065113, 45.763924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642548, 39.196167, 45.790295>,  <35.974754, 39.414589, 45.834244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642548, 39.196167, 45.790295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163747, 0.050811, 0.985193,
		-0.532387, 0.836207, -0.131614,
		-0.830513, -0.546055, -0.109875,
		35.393394, 39.032349, 45.757332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417820, 39.699478, 46.445160>,  <35.974754, 39.414589, 45.834244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417820, 39.699478, 46.445160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335991, 39.331890, 46.310310>,  <35.286892, 39.111340, 46.229401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335991, 39.331890, 46.310310>,  <35.417820, 39.699478, 46.445160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335991, 39.331890, 46.310310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117473, -0.318869, 0.940490,
		-0.971776, 0.232003, -0.042721,
		-0.204574, -0.918965, -0.337124,
		35.274620, 39.056202, 46.209175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870777, 39.532257, 46.774940>,  <35.417820, 39.699478, 46.445160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870777, 39.532257, 46.774940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995720, 39.171627, 46.655212>,  <35.070686, 38.955250, 46.583378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995720, 39.171627, 46.655212>,  <34.870777, 39.532257, 46.774940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995720, 39.171627, 46.655212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055442, -0.297245, 0.953190,
		-0.948344, -0.314333, -0.042863,
		0.312360, -0.901576, -0.299318,
		35.089428, 38.901154, 46.565418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498470, 39.142315, 47.223942>,  <34.870777, 39.532257, 46.774940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498470, 39.142315, 47.223942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791428, 38.910198, 47.081470>,  <34.967201, 38.770927, 46.995987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791428, 38.910198, 47.081470>,  <34.498470, 39.142315, 47.223942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791428, 38.910198, 47.081470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261704, -0.243019, 0.934052,
		-0.628581, -0.777305, -0.026121,
		0.732391, -0.580292, -0.356181,
		35.011147, 38.736111, 46.974617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386879, 38.443874, 47.419197>,  <34.498470, 39.142315, 47.223942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386879, 38.443874, 47.419197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780128, 38.451805, 47.346451>,  <35.016079, 38.456562, 47.302803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780128, 38.451805, 47.346451>,  <34.386879, 38.443874, 47.419197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780128, 38.451805, 47.346451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175884, -0.375932, 0.909802,
		-0.050329, -0.926435, -0.373075,
		0.983124, 0.019828, -0.181865,
		35.075066, 38.457752, 47.291893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686520, 37.825214, 47.750786>,  <34.386879, 38.443874, 47.419197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686520, 37.825214, 47.750786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.999432, 38.063122, 47.676712>,  <35.187180, 38.205864, 47.632267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.999432, 38.063122, 47.676712>,  <34.686520, 37.825214, 47.750786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999432, 38.063122, 47.676712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275562, -0.063799, 0.959164,
		0.558663, -0.801363, -0.213804,
		0.782279, 0.594766, -0.185183,
		35.234116, 38.241550, 47.621159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287563, 37.483562, 48.055756>,  <34.686520, 37.825214, 47.750786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287563, 37.483562, 48.055756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406349, 37.864944, 48.034840>,  <35.477619, 38.093773, 48.022289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406349, 37.864944, 48.034840>,  <35.287563, 37.483562, 48.055756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406349, 37.864944, 48.034840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476039, -0.100348, 0.873681,
		0.827768, -0.284345, -0.483682,
		0.296963, 0.953456, -0.052294,
		35.495438, 38.150982, 48.019150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900841, 37.501728, 48.421356>,  <35.287563, 37.483562, 48.055756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900841, 37.501728, 48.421356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783642, 37.883984, 48.409359>,  <35.713322, 38.113338, 48.402161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783642, 37.883984, 48.409359>,  <35.900841, 37.501728, 48.421356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783642, 37.883984, 48.409359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326641, 0.129529, 0.936231,
		0.898587, 0.264517, -0.350104,
		-0.292997, 0.955643, -0.029991,
		35.695744, 38.170677, 48.400360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509632, 37.943859, 48.678970>,  <35.900841, 37.501728, 48.421356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509632, 37.943859, 48.678970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163074, 38.135361, 48.735756>,  <35.955139, 38.250259, 48.769829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163074, 38.135361, 48.735756>,  <36.509632, 37.943859, 48.678970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163074, 38.135361, 48.735756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238378, 0.146717, 0.960026,
		0.438785, 0.865605, -0.241239,
		-0.866397, 0.478751, 0.141964,
		35.903156, 38.278984, 48.778347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699699, 38.490917, 49.066704>,  <36.509632, 37.943859, 48.678970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699699, 38.490917, 49.066704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303394, 38.482513, 49.120293>,  <36.065613, 38.477470, 49.152447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303394, 38.482513, 49.120293>,  <36.699699, 38.490917, 49.066704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303394, 38.482513, 49.120293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123222, 0.272974, 0.954097,
		-0.056618, 0.961792, -0.267863,
		-0.990763, -0.021013, 0.133969,
		36.006165, 38.476212, 49.160484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499638, 39.147377, 49.564251>,  <36.699699, 38.490917, 49.066704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499638, 39.147377, 49.564251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187489, 38.898228, 49.586342>,  <36.000198, 38.748737, 49.599594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187489, 38.898228, 49.586342>,  <36.499638, 39.147377, 49.564251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187489, 38.898228, 49.586342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073096, 0.178570, 0.981209,
		-0.621033, 0.761668, -0.184880,
		-0.780369, -0.622877, 0.055223,
		35.953377, 38.711365, 49.602909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992596, 39.521702, 49.928459>,  <36.499638, 39.147377, 49.564251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992596, 39.521702, 49.928459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878807, 39.144466, 49.997356>,  <35.810535, 38.918125, 50.038696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878807, 39.144466, 49.997356>,  <35.992596, 39.521702, 49.928459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878807, 39.144466, 49.997356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055566, 0.195584, 0.979111,
		-0.957073, 0.268958, -0.108042,
		-0.284471, -0.943084, 0.172243,
		35.793465, 38.861542, 50.049030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517159, 39.625763, 50.476612>,  <35.992596, 39.521702, 49.928459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517159, 39.625763, 50.476612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594418, 39.233303, 50.474133>,  <35.640774, 38.997826, 50.472645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594418, 39.233303, 50.474133>,  <35.517159, 39.625763, 50.476612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594418, 39.233303, 50.474133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069074, -0.019897, 0.997413,
		-0.978735, -0.192219, -0.071615,
		0.193147, -0.981150, -0.006197,
		35.652363, 38.938957, 50.472275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106739, 39.451931, 51.066593>,  <35.517159, 39.625763, 50.476612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106739, 39.451931, 51.066593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344654, 39.138630, 50.994217>,  <35.487404, 38.950649, 50.950790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344654, 39.138630, 50.994217>,  <35.106739, 39.451931, 51.066593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344654, 39.138630, 50.994217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199703, -0.362002, 0.910535,
		-0.778679, -0.505443, -0.371734,
		0.594792, -0.783251, -0.180945,
		35.523090, 38.903656, 50.939934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609154, 38.871681, 51.193443>,  <35.106739, 39.451931, 51.066593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609154, 38.871681, 51.193443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988697, 38.768005, 51.265541>,  <35.216423, 38.705799, 51.308800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988697, 38.768005, 51.265541>,  <34.609154, 38.871681, 51.193443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988697, 38.768005, 51.265541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228858, -0.171440, 0.958244,
		-0.217468, -0.950488, -0.221991,
		0.948858, -0.259192, 0.180245,
		35.273354, 38.690247, 51.319614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582741, 38.271797, 51.633617>,  <34.609154, 38.871681, 51.193443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582741, 38.271797, 51.633617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927341, 38.465855, 51.693546>,  <35.134102, 38.582291, 51.729504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927341, 38.465855, 51.693546>,  <34.582741, 38.271797, 51.633617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927341, 38.465855, 51.693546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141548, -0.053892, 0.988463,
		0.487625, -0.872770, 0.022244,
		0.861502, 0.485148, 0.149818,
		35.185791, 38.611401, 51.738491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949772, 38.750271, 51.479858>,  <34.582741, 38.271797, 51.633617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949772, 38.750271, 51.479858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555202, 38.803047, 51.518978>,  <33.318462, 38.834713, 51.542450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555202, 38.803047, 51.518978>,  <33.949772, 38.750271, 51.479858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555202, 38.803047, 51.518978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134739, -0.309627, -0.941263,
		-0.093913, -0.941659, 0.323200,
		-0.986421, 0.131945, 0.097800,
		33.259277, 38.842632, 51.548317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679356, 38.228725, 51.249683>,  <33.949772, 38.750271, 51.479858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679356, 38.228725, 51.249683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371384, 38.481888, 51.217106>,  <33.186600, 38.633785, 51.197559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371384, 38.481888, 51.217106>,  <33.679356, 38.228725, 51.249683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371384, 38.481888, 51.217106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263928, -0.432041, -0.862370,
		-0.580989, -0.642470, 0.499684,
		-0.769931, 0.632908, -0.081445,
		33.140404, 38.671761, 51.192673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113895, 37.804291, 51.108475>,  <33.679356, 38.228725, 51.249683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113895, 37.804291, 51.108475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991970, 38.172009, 51.008884>,  <32.918816, 38.392639, 50.949131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991970, 38.172009, 51.008884>,  <33.113895, 37.804291, 51.108475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991970, 38.172009, 51.008884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451006, -0.369570, -0.812412,
		-0.838859, -0.135342, 0.527255,
		-0.304811, 0.919294, -0.248977,
		32.900528, 38.447796, 50.934193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445972, 37.734974, 50.753242>,  <33.113895, 37.804291, 51.108475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445972, 37.734974, 50.753242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583931, 38.093948, 50.643223>,  <32.666706, 38.309334, 50.577213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583931, 38.093948, 50.643223>,  <32.445972, 37.734974, 50.753242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583931, 38.093948, 50.643223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315824, -0.164987, -0.934363,
		-0.883913, 0.409124, 0.226530,
		0.344895, 0.897439, -0.275046,
		32.687401, 38.363178, 50.560711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840248, 38.124249, 50.454369>,  <32.445972, 37.734974, 50.753242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840248, 38.124249, 50.454369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191200, 38.249714, 50.309143>,  <32.401772, 38.324993, 50.222008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191200, 38.249714, 50.309143>,  <31.840248, 38.124249, 50.454369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191200, 38.249714, 50.309143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268356, -0.306463, -0.913272,
		-0.397727, 0.898719, -0.184711,
		0.877382, 0.313664, -0.363065,
		32.454414, 38.343815, 50.200222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690752, 38.478195, 49.773174>,  <31.840248, 38.124249, 50.454369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690752, 38.478195, 49.773174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087967, 38.451069, 49.734638>,  <32.326294, 38.434795, 49.711517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087967, 38.451069, 49.734638>,  <31.690752, 38.478195, 49.773174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087967, 38.451069, 49.734638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106240, -0.161905, -0.981071,
		0.050931, 0.984473, -0.167982,
		0.993035, -0.067813, -0.096345,
		32.385876, 38.430725, 49.705734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799068, 38.979263, 49.260609>,  <31.690752, 38.478195, 49.773174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799068, 38.979263, 49.260609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098930, 38.714783, 49.272137>,  <32.278847, 38.556095, 49.279053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098930, 38.714783, 49.272137>,  <31.799068, 38.979263, 49.260609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098930, 38.714783, 49.272137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055278, -0.105949, -0.992834,
		0.659515, 0.742691, -0.115975,
		0.749656, -0.661200, 0.028821,
		32.323826, 38.516422, 49.280785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236485, 39.198750, 48.777287>,  <31.799068, 38.979263, 49.260609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236485, 39.198750, 48.777287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305573, 38.809078, 48.835457>,  <32.347027, 38.575275, 48.870361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305573, 38.809078, 48.835457>,  <32.236485, 39.198750, 48.777287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305573, 38.809078, 48.835457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081300, -0.133043, -0.987770,
		0.981610, 0.182432, 0.056221,
		0.172721, -0.974176, 0.145428,
		32.357388, 38.516827, 48.879086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914104, 39.027924, 48.514400>,  <32.236485, 39.198750, 48.777287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914104, 39.027924, 48.514400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.712315, 38.682556, 48.512905>,  <32.591240, 38.475334, 48.512009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.712315, 38.682556, 48.512905>,  <32.914104, 39.027924, 48.514400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712315, 38.682556, 48.512905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237277, -0.134471, -0.962090,
		0.830186, -0.486233, 0.272706,
		-0.504471, -0.863420, -0.003736,
		32.560974, 38.423531, 48.511784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437847, 38.682175, 48.213818>,  <32.914104, 39.027924, 48.514400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437847, 38.682175, 48.213818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096684, 38.474434, 48.192554>,  <32.891987, 38.349789, 48.179798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096684, 38.474434, 48.192554>,  <33.437847, 38.682175, 48.213818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096684, 38.474434, 48.192554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172345, -0.183990, -0.967701,
		0.492795, -0.834520, 0.246433,
		-0.852906, -0.519350, -0.053156,
		32.840813, 38.318630, 48.176609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659348, 38.146725, 47.817425>,  <33.437847, 38.682175, 48.213818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659348, 38.146725, 47.817425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260925, 38.171452, 47.791992>,  <33.021870, 38.186287, 47.776733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260925, 38.171452, 47.791992>,  <33.659348, 38.146725, 47.817425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260925, 38.171452, 47.791992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061191, -0.039887, -0.997329,
		-0.064193, -0.997290, 0.035947,
		-0.996060, 0.061822, -0.063586,
		32.962109, 38.189999, 47.772915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554665, 37.798828, 47.277409>,  <33.659348, 38.146725, 47.817425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554665, 37.798828, 47.277409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223518, 38.020969, 47.308926>,  <33.024830, 38.154255, 47.327835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223518, 38.020969, 47.308926>,  <33.554665, 37.798828, 47.277409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223518, 38.020969, 47.308926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107196, -0.018756, -0.994061,
		-0.550582, -0.831400, 0.075060,
		-0.827870, 0.555358, 0.078796,
		32.975159, 38.187576, 47.332565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228943, 37.455822, 46.838406>,  <33.554665, 37.798828, 47.277409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228943, 37.455822, 46.838406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014004, 37.790493, 46.880791>,  <32.885040, 37.991295, 46.906223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014004, 37.790493, 46.880791>,  <33.228943, 37.455822, 46.838406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014004, 37.790493, 46.880791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148165, 0.030032, -0.988506,
		-0.830242, -0.546874, 0.107828,
		-0.537351, 0.836676, 0.105962,
		32.852798, 38.041496, 46.912579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726177, 37.453209, 46.395374>,  <33.228943, 37.455822, 46.838406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726177, 37.453209, 46.395374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733475, 37.843269, 46.483692>,  <32.737854, 38.077305, 46.536682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733475, 37.843269, 46.483692>,  <32.726177, 37.453209, 46.395374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733475, 37.843269, 46.483692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151497, 0.220973, -0.963441,
		-0.988289, -0.015870, 0.151764,
		0.018246, 0.975150, 0.220790,
		32.738949, 38.135815, 46.549931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151211, 37.723904, 45.958595>,  <32.726177, 37.453209, 46.395374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151211, 37.723904, 45.958595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371490, 38.042751, 46.057659>,  <32.503658, 38.234058, 46.117096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371490, 38.042751, 46.057659>,  <32.151211, 37.723904, 45.958595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371490, 38.042751, 46.057659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013999, 0.305480, -0.952096,
		-0.834588, 0.520849, 0.179386,
		0.550697, 0.797118, 0.247658,
		32.536701, 38.281887, 46.131958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796000, 38.199474, 45.808399>,  <32.151211, 37.723904, 45.958595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796000, 38.199474, 45.808399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170807, 38.339184, 45.807888>,  <32.395691, 38.423012, 45.807579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170807, 38.339184, 45.807888>,  <31.796000, 38.199474, 45.808399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170807, 38.339184, 45.807888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090768, 0.239962, -0.966530,
		-0.337280, 0.905772, 0.256552,
		0.937018, 0.349278, -0.001281,
		32.451912, 38.443966, 45.807503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812227, 38.883163, 45.469482>,  <31.796000, 38.199474, 45.808399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812227, 38.883163, 45.469482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190571, 38.754005, 45.456245>,  <32.417576, 38.676510, 45.448303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190571, 38.754005, 45.456245>,  <31.812227, 38.883163, 45.469482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190571, 38.754005, 45.456245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072035, 0.308229, -0.948581,
		0.316487, 0.894839, 0.314800,
		0.945858, -0.322890, -0.033091,
		32.474327, 38.657139, 45.446320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143715, 39.382954, 45.075378>,  <31.812227, 38.883163, 45.469482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143715, 39.382954, 45.075378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362709, 39.050407, 45.037235>,  <32.494106, 38.850880, 45.014351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362709, 39.050407, 45.037235>,  <32.143715, 39.382954, 45.075378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362709, 39.050407, 45.037235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076330, 0.163086, -0.983655,
		0.833326, 0.531258, 0.152746,
		0.547486, -0.831365, -0.095353,
		32.526955, 38.800999, 45.008629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645485, 39.528091, 44.564625>,  <32.143715, 39.382954, 45.075378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645485, 39.528091, 44.564625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657772, 39.128357, 44.556801>,  <32.665142, 38.888515, 44.552105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657772, 39.128357, 44.556801>,  <32.645485, 39.528091, 44.564625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657772, 39.128357, 44.556801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091130, 0.022287, -0.995590,
		0.995365, 0.028798, 0.091755,
		0.030716, -0.999337, -0.019559,
		32.666988, 38.828556, 44.550934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213554, 39.364994, 44.207447>,  <32.645485, 39.528091, 44.564625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213554, 39.364994, 44.207447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996449, 39.029137, 44.199432>,  <32.866184, 38.827621, 44.194622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996449, 39.029137, 44.199432>,  <33.213554, 39.364994, 44.207447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996449, 39.029137, 44.199432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142974, -0.068857, -0.987328,
		0.827627, -0.538751, 0.157421,
		-0.542763, -0.839647, -0.020040,
		32.833618, 38.777245, 44.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.461769, 38.206871, 28.240612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179768, 37.927067, 28.287344>,  <43.010567, 37.759186, 28.315384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179768, 37.927067, 28.287344>,  <43.461769, 38.206871, 28.240612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179768, 37.927067, 28.287344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023283, 0.187475, 0.981993,
		-0.708817, 0.689593, -0.148458,
		-0.705008, -0.699510, 0.116830,
		42.968266, 37.717213, 28.322393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023285, 38.448559, 28.697741>,  <43.461769, 38.206871, 28.240612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023285, 38.448559, 28.697741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947216, 38.057228, 28.730516>,  <42.901573, 37.822430, 28.750183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947216, 38.057228, 28.730516>,  <43.023285, 38.448559, 28.697741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947216, 38.057228, 28.730516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058292, 0.094569, 0.993810,
		-0.980018, 0.184220, -0.075013,
		-0.190174, -0.978325, 0.081941,
		42.890163, 37.763729, 28.755098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447899, 38.398903, 29.112740>,  <43.023285, 38.448559, 28.697741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447899, 38.398903, 29.112740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608246, 38.032875, 29.130449>,  <42.704453, 37.813259, 29.141075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608246, 38.032875, 29.130449>,  <42.447899, 38.398903, 29.112740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608246, 38.032875, 29.130449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009405, 0.052434, 0.998580,
		-0.916089, -0.399880, 0.029626,
		0.400866, -0.915066, 0.044273,
		42.728504, 37.758354, 29.143732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050354, 38.070469, 29.687929>,  <42.447899, 38.398903, 29.112740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050354, 38.070469, 29.687929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382774, 37.852592, 29.642908>,  <42.582226, 37.721867, 29.615894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382774, 37.852592, 29.642908>,  <42.050354, 38.070469, 29.687929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382774, 37.852592, 29.642908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142284, 0.012566, 0.989746,
		-0.537692, -0.838542, 0.087943,
		0.831049, -0.544692, -0.112554,
		42.632088, 37.689186, 29.609142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048687, 37.431320, 30.138533>,  <42.050354, 38.070469, 29.687929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048687, 37.431320, 30.138533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.438499, 37.480930, 30.063797>,  <42.672386, 37.510696, 30.018955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.438499, 37.480930, 30.063797>,  <42.048687, 37.431320, 30.138533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438499, 37.480930, 30.063797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214460, -0.271853, 0.938138,
		0.065556, -0.954314, -0.291526,
		0.974530, 0.124022, -0.186840,
		42.730858, 37.518135, 30.007746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344555, 36.846828, 30.188105>,  <42.048687, 37.431320, 30.138533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344555, 36.846828, 30.188105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649204, 37.101757, 30.235004>,  <42.831993, 37.254715, 30.263144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649204, 37.101757, 30.235004>,  <42.344555, 36.846828, 30.188105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649204, 37.101757, 30.235004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159641, -0.359889, 0.919236,
		0.628046, -0.681396, -0.375843,
		0.761625, 0.637322, 0.117249,
		42.877693, 37.292953, 30.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786610, 36.465576, 30.630384>,  <42.344555, 36.846828, 30.188105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786610, 36.465576, 30.630384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953270, 36.828621, 30.650955>,  <43.053268, 37.046448, 30.663298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953270, 36.828621, 30.650955>,  <42.786610, 36.465576, 30.630384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953270, 36.828621, 30.650955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290107, -0.186365, 0.938673,
		0.861532, -0.376183, -0.340953,
		0.416655, 0.907609, 0.051426,
		43.078266, 37.100903, 30.666384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482475, 36.405949, 30.868063>,  <42.786610, 36.465576, 30.630384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482475, 36.405949, 30.868063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.419250, 36.797432, 30.920446>,  <43.381317, 37.032322, 30.951876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.419250, 36.797432, 30.920446>,  <43.482475, 36.405949, 30.868063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419250, 36.797432, 30.920446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298698, -0.079019, 0.951071,
		0.941167, 0.189445, -0.279848,
		-0.158062, 0.978707, 0.130956,
		43.371830, 37.091045, 30.959734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060406, 36.646664, 31.162771>,  <43.482475, 36.405949, 30.868063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060406, 36.646664, 31.162771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758053, 36.888569, 31.263090>,  <43.576641, 37.033714, 31.323282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758053, 36.888569, 31.263090>,  <44.060406, 36.646664, 31.162771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758053, 36.888569, 31.263090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248859, -0.088919, 0.964449,
		0.605567, 0.791424, -0.083289,
		-0.755882, 0.604766, 0.250799,
		43.531288, 37.070000, 31.338329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284756, 36.924160, 31.799084>,  <44.060406, 36.646664, 31.162771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284756, 36.924160, 31.799084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890560, 36.990963, 31.811174>,  <43.654041, 37.031044, 31.818428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890560, 36.990963, 31.811174>,  <44.284756, 36.924160, 31.799084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890560, 36.990963, 31.811174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015198, -0.264216, 0.964344,
		0.169039, 0.949894, 0.262921,
		-0.985492, 0.167008, 0.030227,
		43.594913, 37.041065, 31.820242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186409, 37.054462, 32.532341>,  <44.284756, 36.924160, 31.799084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186409, 37.054462, 32.532341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.811302, 36.998447, 32.405231>,  <43.586239, 36.964840, 32.328968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.811302, 36.998447, 32.405231>,  <44.186409, 37.054462, 32.532341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811302, 36.998447, 32.405231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208746, -0.503964, 0.838120,
		-0.277512, 0.852297, 0.443370,
		-0.937770, -0.140037, -0.317769,
		43.529972, 36.956436, 32.309902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775143, 37.363464, 32.973938>,  <44.186409, 37.054462, 32.532341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775143, 37.363464, 32.973938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545448, 37.086952, 32.798489>,  <43.407631, 36.921043, 32.693218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545448, 37.086952, 32.798489>,  <43.775143, 37.363464, 32.973938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545448, 37.086952, 32.798489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245130, -0.366000, 0.897750,
		-0.781133, 0.623036, 0.040715,
		-0.574232, -0.691282, -0.438620,
		43.373180, 36.879566, 32.666904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323048, 37.188435, 33.460682>,  <43.775143, 37.363464, 32.973938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323048, 37.188435, 33.460682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265984, 36.883251, 33.208477>,  <43.231747, 36.700142, 33.057156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265984, 36.883251, 33.208477>,  <43.323048, 37.188435, 33.460682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265984, 36.883251, 33.208477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211891, -0.598717, 0.772425,
		-0.966825, 0.243792, -0.076253,
		-0.142657, -0.762957, -0.630512,
		43.223186, 36.654366, 33.019321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704353, 36.792843, 33.651585>,  <43.323048, 37.188435, 33.460682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704353, 36.792843, 33.651585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900391, 36.519142, 33.435581>,  <43.018013, 36.354923, 33.305981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900391, 36.519142, 33.435581>,  <42.704353, 36.792843, 33.651585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900391, 36.519142, 33.435581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040642, -0.636774, 0.769979,
		-0.870720, -0.355417, -0.339891,
		0.490097, -0.684249, -0.540007,
		43.047421, 36.313866, 33.273579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429512, 36.192924, 33.836197>,  <42.704353, 36.792843, 33.651585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429512, 36.192924, 33.836197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775265, 36.076801, 33.671970>,  <42.982716, 36.007126, 33.573433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775265, 36.076801, 33.671970>,  <42.429512, 36.192924, 33.836197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775265, 36.076801, 33.671970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143912, -0.639519, 0.755185,
		-0.481803, -0.711853, -0.511010,
		0.864381, -0.290310, -0.410567,
		43.034580, 35.989708, 33.548801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417229, 35.416698, 33.797844>,  <42.429512, 36.192924, 33.836197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417229, 35.416698, 33.797844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800713, 35.530380, 33.793751>,  <43.030804, 35.598587, 33.791294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800713, 35.530380, 33.793751>,  <42.417229, 35.416698, 33.797844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800713, 35.530380, 33.793751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221016, -0.721955, 0.655693,
		0.178960, -0.630881, -0.754959,
		0.958711, 0.284201, -0.010234,
		43.088326, 35.615639, 33.790680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814232, 34.837627, 33.861168>,  <42.417229, 35.416698, 33.797844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814232, 34.837627, 33.861168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072063, 35.125378, 33.964718>,  <43.226761, 35.298027, 34.026848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072063, 35.125378, 33.964718>,  <42.814232, 34.837627, 33.861168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072063, 35.125378, 33.964718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172485, -0.466700, 0.867433,
		0.744829, -0.514475, -0.424906,
		0.644577, 0.719379, 0.258872,
		43.265438, 35.341190, 34.042381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418186, 34.501526, 34.174133>,  <42.814232, 34.837627, 33.861168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418186, 34.501526, 34.174133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454849, 34.874943, 34.312756>,  <43.476849, 35.098991, 34.395927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454849, 34.874943, 34.312756>,  <43.418186, 34.501526, 34.174133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454849, 34.874943, 34.312756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255527, -0.358417, 0.897911,
		0.962447, 0.006252, -0.271397,
		0.091659, 0.933541, 0.346555,
		43.482346, 35.155006, 34.416721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998016, 34.554562, 34.720707>,  <43.418186, 34.501526, 34.174133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998016, 34.554562, 34.720707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832809, 34.912411, 34.788906>,  <43.733685, 35.127121, 34.829826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832809, 34.912411, 34.788906>,  <43.998016, 34.554562, 34.720707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832809, 34.912411, 34.788906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333941, -0.025407, 0.942252,
		0.847289, 0.446104, -0.288257,
		-0.413019, 0.894620, 0.170500,
		43.708904, 35.180798, 34.840057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450676, 34.890755, 35.101177>,  <43.998016, 34.554562, 34.720707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450676, 34.890755, 35.101177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094975, 35.059830, 35.171116>,  <43.881554, 35.161274, 35.213078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094975, 35.059830, 35.171116>,  <44.450676, 34.890755, 35.101177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094975, 35.059830, 35.171116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119018, -0.155266, 0.980677,
		0.441665, 0.892877, 0.087763,
		-0.889251, 0.422685, 0.174844,
		43.828197, 35.186634, 35.223568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605789, 35.387527, 35.588802>,  <44.450676, 34.890755, 35.101177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605789, 35.387527, 35.588802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215809, 35.308170, 35.629013>,  <43.981819, 35.260555, 35.653141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215809, 35.308170, 35.629013>,  <44.605789, 35.387527, 35.588802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215809, 35.308170, 35.629013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186620, -0.483859, 0.855017,
		-0.120990, 0.852362, 0.508764,
		-0.974953, -0.198394, 0.100526,
		43.923325, 35.248653, 35.659172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254471, 35.591709, 35.241737>,  <44.605789, 35.387527, 35.588802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254471, 35.591709, 35.241737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434700, 35.260761, 35.107605>,  <45.542835, 35.062195, 35.027126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434700, 35.260761, 35.107605>,  <45.254471, 35.591709, 35.241737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434700, 35.260761, 35.107605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124828, 0.430322, -0.894003,
		0.883970, 0.360952, 0.297170,
		0.450571, -0.827367, -0.335335,
		45.569870, 35.012550, 35.007004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905746, 35.787243, 34.989788>,  <45.254471, 35.591709, 35.241737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905746, 35.787243, 34.989788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812298, 35.456066, 34.785851>,  <45.756229, 35.257362, 34.663486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812298, 35.456066, 34.785851>,  <45.905746, 35.787243, 34.989788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812298, 35.456066, 34.785851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368880, 0.409685, -0.834317,
		0.899638, -0.382985, 0.209699,
		-0.233621, -0.827937, -0.509844,
		45.742210, 35.207684, 34.632896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584679, 35.579811, 34.585552>,  <45.905746, 35.787243, 34.989788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584679, 35.579811, 34.585552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.283195, 35.404358, 34.389786>,  <46.102306, 35.299088, 34.272327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.283195, 35.404358, 34.389786>,  <46.584679, 35.579811, 34.585552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283195, 35.404358, 34.389786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421146, 0.249343, -0.872046,
		0.504542, -0.863382, -0.003202,
		-0.753707, -0.438635, -0.489413,
		46.057083, 35.272766, 34.242962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950253, 35.262505, 34.094521>,  <46.584679, 35.579811, 34.585552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950253, 35.262505, 34.094521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.575264, 35.267582, 33.955387>,  <46.350273, 35.270630, 33.871906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.575264, 35.267582, 33.955387>,  <46.950253, 35.262505, 34.094521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575264, 35.267582, 33.955387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340590, 0.239522, -0.909191,
		0.071770, -0.970808, -0.228869,
		-0.937469, 0.012698, -0.347838,
		46.294022, 35.271393, 33.851036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026684, 35.062599, 33.488831>,  <46.950253, 35.262505, 34.094521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026684, 35.062599, 33.488831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.661213, 35.224621, 33.475399>,  <46.441933, 35.321835, 33.467339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.661213, 35.224621, 33.475399>,  <47.026684, 35.062599, 33.488831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661213, 35.224621, 33.475399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268689, 0.539948, -0.797661,
		-0.304965, -0.737826, -0.602171,
		-0.913675, 0.405055, -0.033580,
		46.387112, 35.346138, 33.465324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741405, 35.066002, 32.744862>,  <47.026684, 35.062599, 33.488831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741405, 35.066002, 32.744862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.526203, 35.338203, 32.943848>,  <46.397079, 35.501522, 33.063240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.526203, 35.338203, 32.943848>,  <46.741405, 35.066002, 32.744862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526203, 35.338203, 32.943848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017463, 0.599021, -0.800543,
		-0.842759, -0.422011, -0.334162,
		-0.538008, 0.680500, 0.497461,
		46.364799, 35.542355, 33.093086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132217, 35.161613, 32.279301>,  <46.741405, 35.066002, 32.744862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132217, 35.161613, 32.279301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190605, 35.464725, 32.533688>,  <46.225639, 35.646595, 32.686321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190605, 35.464725, 32.533688>,  <46.132217, 35.161613, 32.279301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190605, 35.464725, 32.533688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010217, 0.643977, -0.764977,
		-0.989236, 0.105168, 0.101745,
		0.145972, 0.757782, 0.635970,
		46.234398, 35.692059, 32.724480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560997, 35.607456, 32.009312>,  <46.132217, 35.161613, 32.279301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560997, 35.607456, 32.009312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809040, 35.838200, 32.221985>,  <45.957867, 35.976646, 32.349590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809040, 35.838200, 32.221985>,  <45.560997, 35.607456, 32.009312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809040, 35.838200, 32.221985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003500, 0.675687, -0.737180,
		-0.784505, 0.458995, 0.416983,
		0.620112, 0.576862, 0.531687,
		45.995075, 36.011257, 32.381493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327919, 36.242760, 31.862871>,  <45.560997, 35.607456, 32.009312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327919, 36.242760, 31.862871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692936, 36.331837, 32.000092>,  <45.911945, 36.385281, 32.082424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692936, 36.331837, 32.000092>,  <45.327919, 36.242760, 31.862871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692936, 36.331837, 32.000092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012096, 0.853098, -0.521610,
		-0.408813, 0.471840, 0.781178,
		0.912538, 0.222690, 0.343050,
		45.966698, 36.398643, 32.103008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367805, 36.983585, 32.071449>,  <45.327919, 36.242760, 31.862871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367805, 36.983585, 32.071449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749565, 36.890182, 31.997057>,  <45.978622, 36.834141, 31.952421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749565, 36.890182, 31.997057>,  <45.367805, 36.983585, 32.071449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749565, 36.890182, 31.997057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091778, 0.822351, -0.561530,
		0.284064, 0.518857, 0.806285,
		0.954403, -0.233510, -0.185980,
		46.035885, 36.820129, 31.941263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892628, 37.666409, 32.204418>,  <45.367805, 36.983585, 32.071449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892628, 37.666409, 32.204418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083344, 37.403744, 31.970678>,  <46.197773, 37.246143, 31.830433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083344, 37.403744, 31.970678>,  <45.892628, 37.666409, 32.204418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083344, 37.403744, 31.970678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177571, 0.723025, -0.667610,
		0.860896, 0.214544, 0.461333,
		0.476788, -0.656663, -0.584352,
		46.226379, 37.206745, 31.795372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.625668, 37.958992, 31.982965>,  <45.892628, 37.666409, 32.204418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.625668, 37.958992, 31.982965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512951, 37.693192, 31.706116>,  <46.445320, 37.533710, 31.540007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512951, 37.693192, 31.706116>,  <46.625668, 37.958992, 31.982965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512951, 37.693192, 31.706116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304982, 0.621910, -0.721259,
		0.909713, -0.414332, 0.027409,
		-0.281794, -0.664498, -0.692124,
		46.428413, 37.493843, 31.498478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848789, 38.235352, 31.378431>,  <46.625668, 37.958992, 31.982965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848789, 38.235352, 31.378431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636269, 37.936451, 31.218765>,  <46.508759, 37.757111, 31.122967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636269, 37.936451, 31.218765>,  <46.848789, 38.235352, 31.378431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636269, 37.936451, 31.218765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123992, 0.397504, -0.909185,
		0.838062, -0.532542, -0.118540,
		-0.531299, -0.747255, -0.399164,
		46.476879, 37.712273, 31.099016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.147614, 38.142227, 30.829063>,  <46.848789, 38.235352, 31.378431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.147614, 38.142227, 30.829063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.803810, 37.957970, 30.740465>,  <46.597530, 37.847416, 30.687307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.803810, 37.957970, 30.740465>,  <47.147614, 38.142227, 30.829063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803810, 37.957970, 30.740465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044491, 0.364272, -0.930229,
		0.509189, -0.809390, -0.292598,
		-0.859504, -0.460644, -0.221494,
		46.545959, 37.819778, 30.674017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.238598, 37.956390, 30.114819>,  <47.147614, 38.142227, 30.829063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.238598, 37.956390, 30.114819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.846138, 37.954380, 30.192095>,  <46.610661, 37.953175, 30.238461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.846138, 37.954380, 30.192095>,  <47.238598, 37.956390, 30.114819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846138, 37.954380, 30.192095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180526, 0.380640, -0.906931,
		-0.068983, -0.924709, -0.374371,
		-0.981148, -0.005021, 0.193192,
		46.551792, 37.952873, 30.250051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994926, 37.622414, 29.526234>,  <47.238598, 37.956390, 30.114819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994926, 37.622414, 29.526234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.718090, 37.854912, 29.697424>,  <46.551987, 37.994411, 29.800138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.718090, 37.854912, 29.697424>,  <46.994926, 37.622414, 29.526234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718090, 37.854912, 29.697424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281921, 0.328149, -0.901576,
		-0.664478, -0.744627, -0.063243,
		-0.692091, 0.581247, 0.427974,
		46.510464, 38.029285, 29.825815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342060, 37.561840, 29.095181>,  <46.994926, 37.622414, 29.526234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342060, 37.561840, 29.095181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.285000, 37.900753, 29.299833>,  <46.250763, 38.104099, 29.422625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.285000, 37.900753, 29.299833>,  <46.342060, 37.561840, 29.095181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285000, 37.900753, 29.299833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477213, 0.393992, -0.785518,
		-0.867132, -0.356216, 0.348127,
		-0.142655, 0.847278, 0.511634,
		46.242203, 38.154938, 29.453323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654667, 37.861839, 28.807713>,  <46.342060, 37.561840, 29.095181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654667, 37.861839, 28.807713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815033, 38.165012, 29.013546>,  <45.911255, 38.346916, 29.137047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815033, 38.165012, 29.013546>,  <45.654667, 37.861839, 28.807713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815033, 38.165012, 29.013546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408578, 0.650679, -0.640064,
		-0.819957, 0.046365, 0.570544,
		0.400917, 0.757936, 0.514585,
		45.935307, 38.392395, 29.167921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141262, 38.405529, 28.982426>,  <45.654667, 37.861839, 28.807713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141262, 38.405529, 28.982426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.494473, 38.593231, 28.979200>,  <45.706398, 38.705853, 28.977264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.494473, 38.593231, 28.979200>,  <45.141262, 38.405529, 28.982426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494473, 38.593231, 28.979200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429644, 0.801323, -0.416279,
		-0.188881, 0.371048, 0.909202,
		0.883023, 0.469260, -0.008064,
		45.759380, 38.734009, 28.976782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039303, 39.114548, 29.384443>,  <45.141262, 38.405529, 28.982426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039303, 39.114548, 29.384443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347424, 39.151291, 29.132032>,  <45.532295, 39.173336, 28.980587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347424, 39.151291, 29.132032>,  <45.039303, 39.114548, 29.384443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347424, 39.151291, 29.132032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385754, 0.855096, -0.346418,
		0.507766, 0.510268, 0.694119,
		0.770304, 0.091860, -0.631026,
		45.578514, 39.178848, 28.942724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150265, 39.750774, 29.433046>,  <45.039303, 39.114548, 29.384443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150265, 39.750774, 29.433046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341160, 39.652523, 29.095547>,  <45.455696, 39.593571, 28.893047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341160, 39.652523, 29.095547>,  <45.150265, 39.750774, 29.433046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341160, 39.652523, 29.095547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282682, 0.866201, -0.412052,
		0.832069, 0.435158, 0.343945,
		0.477233, -0.245629, -0.843751,
		45.484329, 39.578835, 28.842422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.059025, 38.245934, 40.288074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826279, 37.931816, 40.372696>,  <36.686630, 37.743347, 40.423470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826279, 37.931816, 40.372696>,  <37.059025, 38.245934, 40.288074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826279, 37.931816, 40.372696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337341, -0.469729, -0.815816,
		0.740025, -0.403328, 0.538229,
		-0.581863, -0.785290, 0.211553,
		36.651718, 37.696228, 40.436161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467937, 37.715431, 40.416035>,  <37.059025, 38.245934, 40.288074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467937, 37.715431, 40.416035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118317, 37.567944, 40.289494>,  <36.908543, 37.479450, 40.213570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118317, 37.567944, 40.289494>,  <37.467937, 37.715431, 40.416035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118317, 37.567944, 40.289494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476295, -0.521967, -0.707597,
		0.095777, -0.769154, 0.631845,
		-0.874054, -0.368716, -0.316352,
		36.856102, 37.457329, 40.194588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571560, 36.915192, 40.443920>,  <37.467937, 37.715431, 40.416035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571560, 36.915192, 40.443920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267105, 37.032600, 40.212570>,  <37.084435, 37.103046, 40.073761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267105, 37.032600, 40.212570>,  <37.571560, 36.915192, 40.443920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267105, 37.032600, 40.212570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345696, -0.570933, -0.744668,
		-0.548784, -0.766737, 0.333092,
		-0.761137, 0.293513, -0.578377,
		37.038765, 37.120655, 40.039055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424652, 36.289837, 40.116211>,  <37.571560, 36.915192, 40.443920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424652, 36.289837, 40.116211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220493, 36.556293, 39.898682>,  <37.098000, 36.716167, 39.768162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220493, 36.556293, 39.898682>,  <37.424652, 36.289837, 40.116211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220493, 36.556293, 39.898682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249023, -0.490812, -0.834920,
		-0.823093, -0.561567, 0.084624,
		-0.510398, 0.666143, -0.543827,
		37.067375, 36.756138, 39.735535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265881, 35.891750, 39.544109>,  <37.424652, 36.289837, 40.116211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265881, 35.891750, 39.544109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185558, 36.259106, 39.407730>,  <37.137367, 36.479519, 39.325901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185558, 36.259106, 39.407730>,  <37.265881, 35.891750, 39.544109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185558, 36.259106, 39.407730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326930, -0.265264, -0.907057,
		-0.923469, -0.293607, -0.246982,
		-0.200802, 0.918385, -0.340952,
		37.125317, 36.534622, 39.305443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000359, 35.716976, 38.985126>,  <37.265881, 35.891750, 39.544109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000359, 35.716976, 38.985126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103825, 36.100384, 38.937229>,  <37.165905, 36.330429, 38.908489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103825, 36.100384, 38.937229>,  <37.000359, 35.716976, 38.985126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103825, 36.100384, 38.937229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066158, -0.141249, -0.987761,
		-0.963698, 0.247580, -0.099950,
		0.258667, 0.958516, -0.119742,
		37.181423, 36.387939, 38.901306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573639, 35.981125, 38.438057>,  <37.000359, 35.716976, 38.985126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573639, 35.981125, 38.438057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883034, 36.233349, 38.463730>,  <37.068668, 36.384682, 38.479134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883034, 36.233349, 38.463730>,  <36.573639, 35.981125, 38.438057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883034, 36.233349, 38.463730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193383, -0.138355, -0.971319,
		-0.603592, 0.763712, -0.228954,
		0.773485, 0.630557, 0.064180,
		37.115078, 36.422516, 38.482983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571686, 36.489189, 37.838406>,  <36.573639, 35.981125, 38.438057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571686, 36.489189, 37.838406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942333, 36.461376, 37.986206>,  <37.164722, 36.444687, 38.074886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942333, 36.461376, 37.986206>,  <36.571686, 36.489189, 37.838406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942333, 36.461376, 37.986206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334432, -0.296689, -0.894500,
		0.171829, 0.952439, -0.251664,
		0.926623, -0.069537, 0.369506,
		37.220322, 36.440514, 38.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027626, 36.768265, 37.320126>,  <36.571686, 36.489189, 37.838406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027626, 36.768265, 37.320126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271317, 36.551544, 37.551743>,  <37.417530, 36.421513, 37.690712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271317, 36.551544, 37.551743>,  <37.027626, 36.768265, 37.320126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271317, 36.551544, 37.551743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474668, -0.335773, -0.813601,
		0.635239, 0.770521, 0.052615,
		0.609231, -0.541806, 0.579038,
		37.454086, 36.389004, 37.725452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726646, 36.950588, 37.072880>,  <37.027626, 36.768265, 37.320126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726646, 36.950588, 37.072880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713898, 36.590019, 37.245586>,  <37.706249, 36.373676, 37.349209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713898, 36.590019, 37.245586>,  <37.726646, 36.950588, 37.072880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713898, 36.590019, 37.245586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541531, -0.378654, -0.750577,
		0.840076, 0.209894, 0.500216,
		-0.031867, -0.901424, 0.431762,
		37.704338, 36.319592, 37.375114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384430, 36.648293, 36.956032>,  <37.726646, 36.950588, 37.072880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384430, 36.648293, 36.956032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167992, 36.332474, 37.071838>,  <38.038128, 36.142982, 37.141323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167992, 36.332474, 37.071838>,  <38.384430, 36.648293, 36.956032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167992, 36.332474, 37.071838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293418, -0.499888, -0.814873,
		0.788110, -0.355978, 0.502157,
		-0.541099, -0.789552, 0.289516,
		38.005661, 36.095608, 37.158691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699841, 36.107174, 36.716972>,  <38.384430, 36.648293, 36.956032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699841, 36.107174, 36.716972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350578, 35.919331, 36.769238>,  <38.141022, 35.806625, 36.800594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350578, 35.919331, 36.769238>,  <38.699841, 36.107174, 36.716972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350578, 35.919331, 36.769238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223414, -0.623788, -0.748983,
		0.433234, -0.624785, 0.649579,
		-0.873152, -0.469610, 0.130660,
		38.088634, 35.778446, 36.808437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792492, 35.450253, 36.933365>,  <38.699841, 36.107174, 36.716972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792492, 35.450253, 36.933365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448978, 35.464340, 36.728912>,  <38.242870, 35.472794, 36.606243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448978, 35.464340, 36.728912>,  <38.792492, 35.450253, 36.933365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448978, 35.464340, 36.728912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389430, -0.603392, -0.695890,
		-0.332919, -0.796667, 0.504467,
		-0.858784, 0.035220, -0.511127,
		38.191345, 35.474907, 36.575573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626358, 34.731258, 36.555996>,  <38.792492, 35.450253, 36.933365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626358, 34.731258, 36.555996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273045, 34.833122, 36.713459>,  <38.061058, 34.894241, 36.807938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273045, 34.833122, 36.713459>,  <38.626358, 34.731258, 36.555996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273045, 34.833122, 36.713459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394589, -0.049683, 0.917514,
		0.253208, 0.965755, -0.056600,
		-0.883281, 0.254656, 0.393656,
		38.008060, 34.909519, 36.831554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354305, 34.550495, 36.686775>,  <38.626358, 34.731258, 36.555996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354305, 34.550495, 36.686775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669773, 34.318226, 36.767593>,  <39.859055, 34.178864, 36.816082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669773, 34.318226, 36.767593>,  <39.354305, 34.550495, 36.686775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669773, 34.318226, 36.767593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417333, -0.264287, 0.869474,
		-0.451486, -0.770043, -0.450770,
		0.788666, -0.580677, 0.202042,
		39.906372, 34.144024, 36.828205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148743, 33.866192, 36.791389>,  <39.354305, 34.550495, 36.686775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148743, 33.866192, 36.791389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497826, 33.855030, 36.986366>,  <39.707275, 33.848331, 37.103352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497826, 33.855030, 36.986366>,  <39.148743, 33.866192, 36.791389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497826, 33.855030, 36.986366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445597, -0.453582, 0.771821,
		0.199560, -0.890778, -0.408278,
		0.872708, -0.027903, 0.487444,
		39.759640, 33.846661, 37.132599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118134, 33.245220, 37.110146>,  <39.148743, 33.866192, 36.791389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118134, 33.245220, 37.110146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428474, 33.421024, 37.291199>,  <39.614681, 33.526508, 37.399830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428474, 33.421024, 37.291199>,  <39.118134, 33.245220, 37.110146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428474, 33.421024, 37.291199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277227, -0.406958, 0.870363,
		0.566739, -0.800757, -0.193895,
		0.775856, 0.439515, 0.452630,
		39.661232, 33.552879, 37.426987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299263, 32.761185, 37.595432>,  <39.118134, 33.245220, 37.110146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299263, 32.761185, 37.595432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444065, 33.114529, 37.714516>,  <39.530945, 33.326534, 37.785965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444065, 33.114529, 37.714516>,  <39.299263, 32.761185, 37.595432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444065, 33.114529, 37.714516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306858, -0.188647, 0.932872,
		0.880223, -0.429057, 0.202775,
		0.362002, 0.883359, 0.297711,
		39.552666, 33.379536, 37.803829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610195, 32.546722, 38.235786>,  <39.299263, 32.761185, 37.595432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610195, 32.546722, 38.235786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511593, 32.933537, 38.261307>,  <39.452431, 33.165627, 38.276619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511593, 32.933537, 38.261307>,  <39.610195, 32.546722, 38.235786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511593, 32.933537, 38.261307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355440, -0.151457, 0.922347,
		0.901608, 0.204689, 0.381059,
		-0.246508, 0.967038, 0.063800,
		39.437641, 33.223648, 38.280445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936745, 32.742443, 38.807705>,  <39.610195, 32.546722, 38.235786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936745, 32.742443, 38.807705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647018, 33.009338, 38.738235>,  <39.473183, 33.169476, 38.696556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647018, 33.009338, 38.738235>,  <39.936745, 32.742443, 38.807705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647018, 33.009338, 38.738235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333747, -0.118899, 0.935134,
		0.603307, 0.735294, 0.308809,
		-0.724316, 0.667237, -0.173669,
		39.429722, 33.209511, 38.686134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840496, 32.790020, 39.493366>,  <39.936745, 32.742443, 38.807705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840496, 32.790020, 39.493366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554432, 32.987267, 39.295223>,  <39.382793, 33.105614, 39.176338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554432, 32.987267, 39.295223>,  <39.840496, 32.790020, 39.493366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554432, 32.987267, 39.295223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517706, 0.102446, 0.849403,
		0.469602, 0.863910, 0.182025,
		-0.715160, 0.493117, -0.495360,
		39.339886, 33.135201, 39.146614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698074, 33.398853, 39.856178>,  <39.840496, 32.790020, 39.493366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698074, 33.398853, 39.856178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355927, 33.342609, 39.656750>,  <39.150639, 33.308865, 39.537094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355927, 33.342609, 39.656750>,  <39.698074, 33.398853, 39.856178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355927, 33.342609, 39.656750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512911, 0.095048, 0.853164,
		-0.072574, 0.985492, -0.153421,
		-0.855369, -0.140609, -0.498571,
		39.099316, 33.300426, 39.507179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227871, 33.982494, 40.014000>,  <39.698074, 33.398853, 39.856178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227871, 33.982494, 40.014000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974941, 33.700779, 39.884918>,  <38.823181, 33.531750, 39.807468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974941, 33.700779, 39.884918>,  <39.227871, 33.982494, 40.014000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974941, 33.700779, 39.884918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527588, 0.086466, 0.845089,
		-0.567286, 0.704625, -0.426251,
		-0.632327, -0.704292, -0.322701,
		38.785244, 33.489491, 39.788109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616489, 34.191254, 40.185982>,  <39.227871, 33.982494, 40.014000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616489, 34.191254, 40.185982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506130, 33.818329, 40.092453>,  <38.439915, 33.594574, 40.036335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506130, 33.818329, 40.092453>,  <38.616489, 34.191254, 40.185982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506130, 33.818329, 40.092453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768331, 0.067747, 0.636456,
		-0.577536, 0.355249, -0.735017,
		-0.275896, -0.932313, -0.233822,
		38.423363, 33.538635, 40.022305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879208, 34.160774, 40.108707>,  <38.616489, 34.191254, 40.185982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879208, 34.160774, 40.108707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989708, 33.780891, 40.167698>,  <38.056007, 33.552963, 40.203094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989708, 33.780891, 40.167698>,  <37.879208, 34.160774, 40.108707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989708, 33.780891, 40.167698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693560, -0.090760, 0.714658,
		-0.665328, -0.299709, -0.683749,
		0.276247, -0.949704, 0.147481,
		38.072582, 33.495979, 40.211941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286774, 33.910946, 40.329567>,  <37.879208, 34.160774, 40.108707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286774, 33.910946, 40.329567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576733, 33.673073, 40.468632>,  <37.750710, 33.530350, 40.552071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576733, 33.673073, 40.468632>,  <37.286774, 33.910946, 40.329567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576733, 33.673073, 40.468632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468022, -0.054856, 0.882013,
		-0.505447, -0.802086, -0.318091,
		0.724899, -0.594684, 0.347666,
		37.794201, 33.494667, 40.572933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958328, 33.426777, 40.718639>,  <37.286774, 33.910946, 40.329567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958328, 33.426777, 40.718639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331085, 33.448246, 40.862137>,  <37.554741, 33.461128, 40.948235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331085, 33.448246, 40.862137>,  <36.958328, 33.426777, 40.718639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331085, 33.448246, 40.862137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362704, 0.124555, 0.923543,
		0.004884, -0.990760, 0.135539,
		0.931892, 0.053671, 0.358744,
		37.610653, 33.464348, 40.969761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795387, 33.146996, 41.359226>,  <36.958328, 33.426777, 40.718639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795387, 33.146996, 41.359226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164642, 33.294933, 41.401241>,  <37.386196, 33.383694, 41.426449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164642, 33.294933, 41.401241>,  <36.795387, 33.146996, 41.359226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164642, 33.294933, 41.401241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193574, 0.211064, 0.958113,
		0.332185, -0.904802, 0.266433,
		0.923137, 0.369845, 0.105034,
		37.441586, 33.405888, 41.432751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893360, 32.463371, 41.256454>,  <36.795387, 33.146996, 41.359226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893360, 32.463371, 41.256454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516949, 32.341034, 41.314304>,  <36.291100, 32.267632, 41.349014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516949, 32.341034, 41.314304>,  <36.893360, 32.463371, 41.256454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516949, 32.341034, 41.314304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060349, -0.268890, -0.961278,
		0.332891, -0.913322, 0.234577,
		-0.941032, -0.305844, 0.144630,
		36.234638, 32.249279, 41.357693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823944, 31.908251, 40.861885>,  <36.893360, 32.463371, 41.256454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823944, 31.908251, 40.861885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436852, 31.989855, 40.921051>,  <36.204597, 32.038818, 40.956551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436852, 31.989855, 40.921051>,  <36.823944, 31.908251, 40.861885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436852, 31.989855, 40.921051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152138, -0.005063, -0.988346,
		-0.200885, -0.978955, 0.035938,
		-0.967729, 0.204012, 0.147919,
		36.146534, 32.051060, 40.965427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504936, 31.385860, 40.586586>,  <36.823944, 31.908251, 40.861885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504936, 31.385860, 40.586586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264637, 31.705633, 40.585960>,  <36.120457, 31.897497, 40.585587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264637, 31.705633, 40.585960>,  <36.504936, 31.385860, 40.586586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264637, 31.705633, 40.585960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038006, -0.030515, -0.998811,
		-0.798531, -0.599979, 0.048716,
		-0.600752, 0.799434, -0.001564,
		36.084412, 31.945463, 40.585491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947300, 31.127380, 40.106560>,  <36.504936, 31.385860, 40.586586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947300, 31.127380, 40.106560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946445, 31.525646, 40.143757>,  <35.945934, 31.764606, 40.166073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946445, 31.525646, 40.143757>,  <35.947300, 31.127380, 40.106560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946445, 31.525646, 40.143757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317621, 0.087500, -0.944172,
		-0.948215, -0.031550, 0.316057,
		-0.002134, 0.995665, 0.092990,
		35.945805, 31.824347, 40.171654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324940, 31.351204, 39.782227>,  <35.947300, 31.127380, 40.106560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324940, 31.351204, 39.782227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578949, 31.660196, 39.780632>,  <35.731354, 31.845592, 39.779675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578949, 31.660196, 39.780632>,  <35.324940, 31.351204, 39.782227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578949, 31.660196, 39.780632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195692, 0.155870, -0.968199,
		-0.747293, 0.615612, 0.250150,
		0.635025, 0.772481, -0.003989,
		35.769455, 31.891941, 39.779434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016724, 31.812277, 39.426548>,  <35.324940, 31.351204, 39.782227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016724, 31.812277, 39.426548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395550, 31.940666, 39.423767>,  <35.622845, 32.017700, 39.422100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395550, 31.940666, 39.423767>,  <35.016724, 31.812277, 39.426548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395550, 31.940666, 39.423767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027240, 0.058771, -0.997900,
		-0.319893, 0.945262, 0.064403,
		0.947062, 0.320975, -0.006948,
		35.679668, 32.036961, 39.421684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001106, 32.360870, 38.989727>,  <35.016724, 31.812277, 39.426548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001106, 32.360870, 38.989727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389893, 32.267361, 38.979664>,  <35.623165, 32.211254, 38.973625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389893, 32.267361, 38.979664>,  <35.001106, 32.360870, 38.989727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389893, 32.267361, 38.979664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003299, 0.093442, -0.995619,
		0.235097, 0.967791, 0.090052,
		0.971966, -0.233770, -0.025161,
		35.681484, 32.197231, 38.972115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313076, 32.855923, 38.562683>,  <35.001106, 32.360870, 38.989727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313076, 32.855923, 38.562683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578152, 32.556374, 38.560444>,  <35.737198, 32.376644, 38.559101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578152, 32.556374, 38.560444>,  <35.313076, 32.855923, 38.562683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578152, 32.556374, 38.560444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223155, 0.204594, -0.953071,
		0.714878, 0.630337, 0.302697,
		0.662685, -0.748877, -0.005596,
		35.776958, 32.331711, 38.558765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810329, 33.081001, 38.153614>,  <35.313076, 32.855923, 38.562683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810329, 33.081001, 38.153614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862896, 32.684891, 38.171890>,  <35.894436, 32.447224, 38.182854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862896, 32.684891, 38.171890>,  <35.810329, 33.081001, 38.153614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862896, 32.684891, 38.171890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114727, -0.030585, -0.992926,
		0.984666, 0.135725, 0.109592,
		0.131413, -0.990274, 0.045687,
		35.902321, 32.387810, 38.185596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383919, 33.032864, 37.753925>,  <35.810329, 33.081001, 38.153614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383919, 33.032864, 37.753925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183739, 32.686710, 37.764149>,  <36.063629, 32.479019, 37.770283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183739, 32.686710, 37.764149>,  <36.383919, 33.032864, 37.753925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183739, 32.686710, 37.764149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056011, 0.002903, -0.998426,
		0.863951, -0.501094, -0.049924,
		-0.500451, -0.865388, 0.025559,
		36.033604, 32.427094, 37.771816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672806, 32.458855, 37.292309>,  <36.383919, 33.032864, 37.753925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672806, 32.458855, 37.292309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288288, 32.354885, 37.328854>,  <36.057575, 32.292503, 37.350780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288288, 32.354885, 37.328854>,  <36.672806, 32.458855, 37.292309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288288, 32.354885, 37.328854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100908, 0.023577, -0.994616,
		0.256369, -0.965342, -0.048893,
		-0.961297, -0.259923, 0.091366,
		35.999897, 32.276909, 37.356262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608818, 31.997215, 36.790508>,  <36.672806, 32.458855, 37.292309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608818, 31.997215, 36.790508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227253, 32.088135, 36.868866>,  <35.998314, 32.142689, 36.915882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227253, 32.088135, 36.868866>,  <36.608818, 31.997215, 36.790508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227253, 32.088135, 36.868866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209197, -0.035724, -0.977221,
		-0.215125, -0.973169, 0.081628,
		-0.953917, 0.227301, 0.195898,
		35.941078, 32.156326, 36.927635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.528679, 31.432953, 45.236427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164875, 31.557590, 45.126377>,  <35.946590, 31.632374, 45.060345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164875, 31.557590, 45.126377>,  <36.528679, 31.432953, 45.236427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164875, 31.557590, 45.126377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184719, -0.289974, -0.939039,
		-0.372382, -0.904888, 0.206177,
		-0.909511, 0.311597, -0.275131,
		35.892021, 31.651068, 45.043839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334862, 30.899698, 44.687130>,  <36.528679, 31.432953, 45.236427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334862, 30.899698, 44.687130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086388, 31.206907, 44.624809>,  <35.937302, 31.391232, 44.587418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086388, 31.206907, 44.624809>,  <36.334862, 30.899698, 44.687130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086388, 31.206907, 44.624809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086433, -0.130453, -0.987680,
		-0.778884, -0.626997, 0.014653,
		-0.621183, 0.768022, -0.155801,
		35.900032, 31.437313, 44.578068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754066, 30.710812, 44.128246>,  <36.334862, 30.899698, 44.687130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754066, 30.710812, 44.128246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760170, 31.110710, 44.134842>,  <35.763832, 31.350649, 44.138798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760170, 31.110710, 44.134842>,  <35.754066, 30.710812, 44.128246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760170, 31.110710, 44.134842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113377, 0.018112, -0.993387,
		-0.993435, 0.013291, 0.113625,
		0.015261, 0.999748, 0.016486,
		35.764748, 31.410635, 44.139790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271492, 30.905468, 43.646416>,  <35.754066, 30.710812, 44.128246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271492, 30.905468, 43.646416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.511120, 31.220987, 43.701435>,  <35.654896, 31.410299, 43.734447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.511120, 31.220987, 43.701435>,  <35.271492, 30.905468, 43.646416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511120, 31.220987, 43.701435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094875, 0.240508, -0.965999,
		-0.795059, 0.565646, 0.218917,
		0.599065, 0.788796, 0.137553,
		35.690838, 31.457626, 43.742702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969597, 31.393724, 43.278126>,  <35.271492, 30.905468, 43.646416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969597, 31.393724, 43.278126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.331913, 31.550673, 43.342106>,  <35.549305, 31.644842, 43.380493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.331913, 31.550673, 43.342106>,  <34.969597, 31.393724, 43.278126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331913, 31.550673, 43.342106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046000, 0.466323, -0.883418,
		-0.421218, 0.792835, 0.440440,
		0.905792, 0.392372, 0.159953,
		35.603649, 31.668385, 43.390091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902695, 32.111214, 43.155617>,  <34.969597, 31.393724, 43.278126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902695, 32.111214, 43.155617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276924, 31.981354, 43.100025>,  <35.501461, 31.903439, 43.066669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276924, 31.981354, 43.100025>,  <34.902695, 32.111214, 43.155617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276924, 31.981354, 43.100025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064537, 0.229740, -0.971110,
		0.347195, 0.917510, 0.193986,
		0.935570, -0.324645, -0.138978,
		35.557594, 31.883961, 43.058331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299957, 32.739014, 42.783493>,  <34.902695, 32.111214, 43.155617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299957, 32.739014, 42.783493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.493645, 32.393745, 42.726265>,  <35.609856, 32.186584, 42.691929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.493645, 32.393745, 42.726265>,  <35.299957, 32.739014, 42.783493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493645, 32.393745, 42.726265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092221, 0.212957, -0.972700,
		0.870073, 0.457806, 0.182720,
		0.484219, -0.863170, -0.143069,
		35.638912, 32.134796, 42.683346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911301, 32.955303, 42.421127>,  <35.299957, 32.739014, 42.783493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911301, 32.955303, 42.421127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.823090, 32.572639, 42.345055>,  <35.770164, 32.343040, 42.299412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.823090, 32.572639, 42.345055>,  <35.911301, 32.955303, 42.421127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823090, 32.572639, 42.345055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204477, 0.145307, -0.968026,
		0.953707, -0.252363, 0.163571,
		-0.220526, -0.956660, -0.190183,
		35.756931, 32.285641, 42.287998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438950, 32.881382, 41.997890>,  <35.911301, 32.955303, 42.421127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438950, 32.881382, 41.997890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.231602, 32.550201, 41.912296>,  <36.107193, 32.351494, 41.860939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.231602, 32.550201, 41.912296>,  <36.438950, 32.881382, 41.997890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231602, 32.550201, 41.912296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155379, 0.154876, -0.975639,
		0.840920, -0.538995, 0.048362,
		-0.518374, -0.827948, -0.213987,
		36.076088, 32.301819, 41.848099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183750, 32.732601, 42.099541>,  <36.438950, 32.881382, 41.997890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183750, 32.732601, 42.099541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397968, 33.059654, 42.015007>,  <37.526501, 33.255886, 41.964287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397968, 33.059654, 42.015007>,  <37.183750, 32.732601, 42.099541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397968, 33.059654, 42.015007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326495, 0.431250, 0.841085,
		0.778840, -0.381439, 0.497908,
		0.535545, 0.817635, -0.211337,
		37.558632, 33.304943, 41.951607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575436, 32.857590, 42.617950>,  <37.183750, 32.732601, 42.099541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575436, 32.857590, 42.617950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547073, 33.217846, 42.446453>,  <37.530056, 33.433998, 42.343555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547073, 33.217846, 42.446453>,  <37.575436, 32.857590, 42.617950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547073, 33.217846, 42.446453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382587, 0.372400, 0.845544,
		0.921195, 0.223985, 0.318168,
		-0.070903, 0.900638, -0.428747,
		37.525803, 33.488037, 42.317829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952431, 33.283504, 43.027580>,  <37.575436, 32.857590, 42.617950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952431, 33.283504, 43.027580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699417, 33.528034, 42.837345>,  <37.547607, 33.674751, 42.723206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699417, 33.528034, 42.837345>,  <37.952431, 33.283504, 43.027580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699417, 33.528034, 42.837345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140853, 0.512997, 0.846755,
		0.761616, 0.602590, -0.238382,
		-0.632536, 0.611325, -0.475584,
		37.509655, 33.711433, 42.694672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067200, 33.953320, 43.331333>,  <37.952431, 33.283504, 43.027580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067200, 33.953320, 43.331333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703629, 33.994061, 43.169601>,  <37.485485, 34.018505, 43.072563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703629, 33.994061, 43.169601>,  <38.067200, 33.953320, 43.331333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703629, 33.994061, 43.169601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374726, 0.225745, 0.899233,
		0.182861, 0.968848, -0.167020,
		-0.908924, 0.101848, -0.404332,
		37.430950, 34.024616, 43.048302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832802, 34.488064, 43.735085>,  <38.067200, 33.953320, 43.331333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832802, 34.488064, 43.735085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516785, 34.346165, 43.535088>,  <37.327175, 34.261024, 43.415089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516785, 34.346165, 43.535088>,  <37.832802, 34.488064, 43.735085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516785, 34.346165, 43.535088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602772, 0.300721, 0.739076,
		-0.111827, 0.885280, -0.451413,
		-0.790038, -0.354747, -0.499993,
		37.279774, 34.239742, 43.385090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358273, 35.055481, 43.499538>,  <37.832802, 34.488064, 43.735085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358273, 35.055481, 43.499538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162868, 34.708221, 43.534595>,  <37.045628, 34.499866, 43.555630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162868, 34.708221, 43.534595>,  <37.358273, 35.055481, 43.499538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162868, 34.708221, 43.534595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412216, 0.318140, 0.853736,
		-0.769050, 0.380929, -0.513278,
		-0.488507, -0.868147, 0.087641,
		37.016315, 34.447777, 43.560886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639236, 35.295189, 43.531364>,  <37.358273, 35.055481, 43.499538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639236, 35.295189, 43.531364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680748, 34.926033, 43.679695>,  <36.705654, 34.704540, 43.768692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680748, 34.926033, 43.679695>,  <36.639236, 35.295189, 43.531364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680748, 34.926033, 43.679695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548027, 0.258074, 0.795653,
		-0.829998, -0.285792, -0.478985,
		0.103778, -0.922887, 0.370823,
		36.711880, 34.649166, 43.790943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926479, 35.142147, 43.960987>,  <36.639236, 35.295189, 43.531364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926479, 35.142147, 43.960987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213730, 34.890507, 44.080006>,  <36.386078, 34.739521, 44.151417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213730, 34.890507, 44.080006>,  <35.926479, 35.142147, 43.960987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213730, 34.890507, 44.080006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395539, -0.017194, 0.918288,
		-0.572580, -0.777134, -0.261182,
		0.718123, -0.629101, 0.297542,
		36.429169, 34.701778, 44.169270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552574, 34.623844, 44.395741>,  <35.926479, 35.142147, 43.960987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552574, 34.623844, 44.395741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939777, 34.607899, 44.494839>,  <36.172100, 34.598331, 44.554298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939777, 34.607899, 44.494839>,  <35.552574, 34.623844, 44.395741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939777, 34.607899, 44.494839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248030, -0.002280, 0.968750,
		-0.038060, -0.999202, -0.012096,
		0.968004, -0.039871, 0.247745,
		36.230179, 34.595940, 44.569160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579018, 34.096806, 44.936050>,  <35.552574, 34.623844, 44.395741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579018, 34.096806, 44.936050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.918217, 34.306316, 44.968441>,  <36.121738, 34.432022, 44.987877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.918217, 34.306316, 44.968441>,  <35.579018, 34.096806, 44.936050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918217, 34.306316, 44.968441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090680, -0.007146, 0.995854,
		0.522182, -0.851827, 0.041436,
		0.847999, 0.523775, 0.080975,
		36.172615, 34.463448, 44.992733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842331, 33.752167, 45.498150>,  <35.579018, 34.096806, 44.936050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842331, 33.752167, 45.498150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026478, 34.106514, 45.475163>,  <36.136967, 34.319122, 45.461369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026478, 34.106514, 45.475163>,  <35.842331, 33.752167, 45.498150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026478, 34.106514, 45.475163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036137, 0.083388, 0.995862,
		0.886992, -0.456386, 0.070402,
		0.460368, 0.885866, -0.057472,
		36.164589, 34.372272, 45.457920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456547, 33.641232, 45.888554>,  <35.842331, 33.752167, 45.498150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456547, 33.641232, 45.888554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352066, 34.026222, 45.859138>,  <36.289379, 34.257217, 45.841488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352066, 34.026222, 45.859138>,  <36.456547, 33.641232, 45.888554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352066, 34.026222, 45.859138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083355, 0.098392, 0.991651,
		0.961679, 0.252890, -0.105928,
		-0.261201, 0.962479, -0.073542,
		36.273705, 34.314964, 45.837074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960785, 34.025280, 46.319881>,  <36.456547, 33.641232, 45.888554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960785, 34.025280, 46.319881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.658615, 34.284054, 46.278275>,  <36.477314, 34.439316, 46.253311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.658615, 34.284054, 46.278275>,  <36.960785, 34.025280, 46.319881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658615, 34.284054, 46.278275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081610, 0.250401, 0.964696,
		0.650138, 0.720263, -0.241954,
		-0.755421, 0.646931, -0.104014,
		36.431988, 34.478134, 46.247070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191711, 34.700550, 46.631332>,  <36.960785, 34.025280, 46.319881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191711, 34.700550, 46.631332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792992, 34.731674, 46.624062>,  <36.553761, 34.750347, 46.619698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792992, 34.731674, 46.624062>,  <37.191711, 34.700550, 46.631332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792992, 34.731674, 46.624062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013792, 0.391624, 0.920022,
		0.078705, 0.916830, -0.391445,
		-0.996802, 0.077809, -0.018178,
		36.493950, 34.755016, 46.618607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.645838, 36.013535, 45.523155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.024029, 35.883545, 45.531792>,  <30.250944, 35.805553, 45.536976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.024029, 35.883545, 45.531792>,  <29.645838, 36.013535, 45.523155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024029, 35.883545, 45.531792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032110, 0.027033, -0.999119,
		0.324100, 0.945338, 0.035994,
		0.945477, -0.324971, 0.021594,
		30.307673, 35.786053, 45.538269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807608, 36.371372, 44.969936>,  <29.645838, 36.013535, 45.523155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807608, 36.371372, 44.969936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.069475, 36.079407, 45.048561>,  <30.226597, 35.904228, 45.095737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.069475, 36.079407, 45.048561>,  <29.807608, 36.371372, 44.969936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069475, 36.079407, 45.048561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180100, -0.101931, -0.978353,
		0.734145, 0.675900, 0.064726,
		0.654671, -0.729910, 0.196562,
		30.265877, 35.860435, 45.107529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506058, 36.541721, 44.584793>,  <29.807608, 36.371372, 44.969936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506058, 36.541721, 44.584793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478659, 36.148304, 44.651669>,  <30.462219, 35.912254, 44.691795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478659, 36.148304, 44.651669>,  <30.506058, 36.541721, 44.584793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478659, 36.148304, 44.651669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237538, -0.178840, -0.954773,
		0.968960, -0.025686, 0.245878,
		-0.068498, -0.983543, 0.167187,
		30.458109, 35.853241, 44.701824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176701, 36.244114, 44.338955>,  <30.506058, 36.541721, 44.584793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176701, 36.244114, 44.338955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880499, 35.976246, 44.361553>,  <30.702778, 35.815525, 44.375111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880499, 35.976246, 44.361553>,  <31.176701, 36.244114, 44.338955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880499, 35.976246, 44.361553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238602, -0.340558, -0.909444,
		0.628269, -0.659968, 0.411970,
		-0.740504, -0.669673, 0.056492,
		30.658348, 35.775345, 44.378502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507700, 35.552845, 44.311256>,  <31.176701, 36.244114, 44.338955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507700, 35.552845, 44.311256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129267, 35.527645, 44.184158>,  <30.902206, 35.512524, 44.107899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129267, 35.527645, 44.184158>,  <31.507700, 35.552845, 44.311256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129267, 35.527645, 44.184158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323875, -0.201755, -0.924338,
		-0.005869, -0.977408, 0.211282,
		-0.946082, -0.063004, -0.317742,
		30.845442, 35.508743, 44.088837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305140, 34.832733, 43.975006>,  <31.507700, 35.552845, 44.311256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305140, 34.832733, 43.975006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059776, 35.113247, 43.829712>,  <30.912558, 35.281555, 43.742535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059776, 35.113247, 43.829712>,  <31.305140, 34.832733, 43.975006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059776, 35.113247, 43.829712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150482, -0.347713, -0.925446,
		-0.775297, -0.622336, 0.107760,
		-0.613409, 0.701280, -0.363231,
		30.875753, 35.323631, 43.720741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018032, 34.456181, 43.424828>,  <31.305140, 34.832733, 43.975006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018032, 34.456181, 43.424828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891594, 34.828789, 43.352882>,  <30.815731, 35.052353, 43.309715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891594, 34.828789, 43.352882>,  <31.018032, 34.456181, 43.424828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891594, 34.828789, 43.352882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097250, -0.156775, -0.982835,
		-0.943730, -0.328162, -0.041034,
		-0.316096, 0.931521, -0.179867,
		30.796764, 35.108246, 43.298923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572487, 34.358524, 42.872143>,  <31.018032, 34.456181, 43.424828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572487, 34.358524, 42.872143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641056, 34.752148, 42.853210>,  <30.682198, 34.988323, 42.841850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641056, 34.752148, 42.853210>,  <30.572487, 34.358524, 42.872143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641056, 34.752148, 42.853210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091139, -0.063679, -0.993800,
		-0.980973, 0.166047, -0.100602,
		0.171424, 0.984060, -0.047334,
		30.692484, 35.047367, 42.839008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239761, 34.657635, 42.224991>,  <30.572487, 34.358524, 42.872143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239761, 34.657635, 42.224991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514568, 34.941189, 42.288841>,  <30.679453, 35.111320, 42.327152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514568, 34.941189, 42.288841>,  <30.239761, 34.657635, 42.224991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514568, 34.941189, 42.288841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040279, 0.182193, -0.982437,
		-0.725522, 0.681383, 0.096617,
		0.687019, 0.708888, 0.159631,
		30.720675, 35.153854, 42.336731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094198, 35.282845, 41.826786>,  <30.239761, 34.657635, 42.224991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094198, 35.282845, 41.826786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479843, 35.348442, 41.910305>,  <30.711229, 35.387798, 41.960415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479843, 35.348442, 41.910305>,  <30.094198, 35.282845, 41.826786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479843, 35.348442, 41.910305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177009, 0.189102, -0.965872,
		-0.197878, 0.968167, 0.153287,
		0.964112, 0.163992, 0.208794,
		30.769077, 35.397640, 41.972942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164356, 36.008820, 41.689209>,  <30.094198, 35.282845, 41.826786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164356, 36.008820, 41.689209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524994, 35.836697, 41.671486>,  <30.741377, 35.733421, 41.660851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524994, 35.836697, 41.671486>,  <30.164356, 36.008820, 41.689209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524994, 35.836697, 41.671486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045652, 0.196507, -0.979439,
		0.430169, 0.881033, 0.196814,
		0.901593, -0.430310, -0.044310,
		30.795471, 35.707603, 41.658192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627901, 36.523613, 41.432583>,  <30.164356, 36.008820, 41.689209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627901, 36.523613, 41.432583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823664, 36.184948, 41.349010>,  <30.941120, 35.981750, 41.298866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823664, 36.184948, 41.349010>,  <30.627901, 36.523613, 41.432583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823664, 36.184948, 41.349010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111646, 0.298446, -0.947874,
		0.864880, 0.440568, 0.240587,
		0.489405, -0.846658, -0.208932,
		30.970486, 35.930950, 41.286331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263493, 36.693005, 41.036499>,  <30.627901, 36.523613, 41.432583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263493, 36.693005, 41.036499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206039, 36.303177, 40.967693>,  <31.171568, 36.069283, 40.926411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206039, 36.303177, 40.967693>,  <31.263493, 36.693005, 41.036499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206039, 36.303177, 40.967693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160990, 0.148486, -0.975722,
		0.976448, -0.167839, 0.135567,
		-0.143634, -0.974568, -0.172009,
		31.162949, 36.010807, 40.916092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852365, 36.453812, 40.711147>,  <31.263493, 36.693005, 41.036499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852365, 36.453812, 40.711147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562225, 36.200214, 40.603874>,  <31.388142, 36.048058, 40.539513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562225, 36.200214, 40.603874>,  <31.852365, 36.453812, 40.711147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562225, 36.200214, 40.603874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204311, 0.173753, -0.963362,
		0.657361, -0.753567, 0.003500,
		-0.725350, -0.633992, -0.268180,
		31.344620, 36.010017, 40.523418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600346, 36.508717, 40.537548>,  <31.852365, 36.453812, 40.711147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600346, 36.508717, 40.537548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784878, 36.853176, 40.452133>,  <32.895596, 37.059853, 40.400883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784878, 36.853176, 40.452133>,  <32.600346, 36.508717, 40.537548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784878, 36.853176, 40.452133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229095, 0.348135, 0.909020,
		0.857142, -0.370436, 0.357889,
		0.461328, 0.861150, -0.213536,
		32.923275, 37.111523, 40.388073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042511, 36.608948, 41.030453>,  <32.600346, 36.508717, 40.537548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042511, 36.608948, 41.030453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006493, 36.987209, 40.905472>,  <32.984882, 37.214169, 40.830482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006493, 36.987209, 40.905472>,  <33.042511, 36.608948, 41.030453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006493, 36.987209, 40.905472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113166, 0.301977, 0.946574,
		0.989487, 0.120595, 0.079823,
		-0.090048, 0.945657, -0.312450,
		32.979477, 37.270905, 40.811737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412395, 37.013424, 41.581360>,  <33.042511, 36.608948, 41.030453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412395, 37.013424, 41.581360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179855, 37.280285, 41.395054>,  <33.040329, 37.440403, 41.283272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179855, 37.280285, 41.395054>,  <33.412395, 37.013424, 41.581360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179855, 37.280285, 41.395054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142762, 0.479914, 0.865622,
		0.801030, 0.569725, -0.183754,
		-0.581352, 0.667156, -0.465760,
		33.005451, 37.480431, 41.255325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725033, 37.651806, 41.744015>,  <33.412395, 37.013424, 41.581360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725033, 37.651806, 41.744015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345818, 37.739552, 41.651844>,  <33.118286, 37.792198, 41.596542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345818, 37.739552, 41.651844>,  <33.725033, 37.651806, 41.744015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345818, 37.739552, 41.651844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106461, 0.463794, 0.879523,
		0.299804, 0.858356, -0.416343,
		-0.948042, 0.219360, -0.230428,
		33.061405, 37.805359, 41.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618282, 38.441643, 41.788410>,  <33.725033, 37.651806, 41.744015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618282, 38.441643, 41.788410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255684, 38.280464, 41.838852>,  <33.038124, 38.183758, 41.869118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255684, 38.280464, 41.838852>,  <33.618282, 38.441643, 41.788410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255684, 38.280464, 41.838852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168053, 0.618325, 0.767745,
		-0.387333, 0.674765, -0.628224,
		-0.906494, -0.402948, 0.126101,
		32.983734, 38.159580, 41.876682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165714, 38.982212, 42.032188>,  <33.618282, 38.441643, 41.788410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165714, 38.982212, 42.032188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.003120, 38.626968, 42.118011>,  <32.905563, 38.413822, 42.169506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.003120, 38.626968, 42.118011>,  <33.165714, 38.982212, 42.032188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003120, 38.626968, 42.118011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166872, 0.303053, 0.938250,
		-0.898287, 0.345584, -0.271387,
		-0.406489, -0.888105, 0.214560,
		32.881172, 38.360538, 42.182381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618317, 39.111443, 42.277248>,  <33.165714, 38.982212, 42.032188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618317, 39.111443, 42.277248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661736, 38.741547, 42.423161>,  <32.687786, 38.519608, 42.510708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661736, 38.741547, 42.423161>,  <32.618317, 39.111443, 42.277248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661736, 38.741547, 42.423161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293351, 0.320814, 0.900569,
		-0.949823, -0.204762, -0.236451,
		0.108545, -0.924744, 0.364783,
		32.694298, 38.464123, 42.532597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038055, 38.977291, 42.701946>,  <32.618317, 39.111443, 42.277248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038055, 38.977291, 42.701946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327637, 38.724068, 42.811584>,  <32.501385, 38.572132, 42.877369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327637, 38.724068, 42.811584>,  <32.038055, 38.977291, 42.701946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327637, 38.724068, 42.811584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065457, 0.332501, 0.940829,
		-0.686739, -0.699056, 0.199276,
		0.723951, -0.633059, 0.274100,
		32.544823, 38.534149, 42.893814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766184, 38.651218, 43.404617>,  <32.038055, 38.977291, 42.701946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766184, 38.651218, 43.404617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162464, 38.599064, 43.389057>,  <32.400230, 38.567772, 43.379723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162464, 38.599064, 43.389057>,  <31.766184, 38.651218, 43.404617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162464, 38.599064, 43.389057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044479, 0.040143, 0.998204,
		-0.128588, -0.990651, 0.045569,
		0.990700, -0.130384, -0.038901,
		32.459675, 38.559948, 43.377388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818863, 38.031219, 43.762909>,  <31.766184, 38.651218, 43.404617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818863, 38.031219, 43.762909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169819, 38.222977, 43.755226>,  <32.380394, 38.338032, 43.750618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169819, 38.222977, 43.755226>,  <31.818863, 38.031219, 43.762909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169819, 38.222977, 43.755226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110799, -0.163507, 0.980301,
		0.466806, -0.862235, -0.196575,
		0.877391, 0.479391, -0.019208,
		32.433037, 38.366795, 43.749462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263412, 37.626568, 44.138557>,  <31.818863, 38.031219, 43.762909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263412, 37.626568, 44.138557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415718, 37.996117, 44.153965>,  <32.507103, 38.217846, 44.163208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415718, 37.996117, 44.153965>,  <32.263412, 37.626568, 44.138557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415718, 37.996117, 44.153965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182367, -0.115869, 0.976379,
		0.906510, -0.364745, -0.212602,
		0.380764, 0.923870, 0.038519,
		32.529945, 38.273277, 44.165520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743923, 37.488094, 44.699970>,  <32.263412, 37.626568, 44.138557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743923, 37.488094, 44.699970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702953, 37.884605, 44.666809>,  <32.678371, 38.122513, 44.646912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702953, 37.884605, 44.666809>,  <32.743923, 37.488094, 44.699970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702953, 37.884605, 44.666809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203027, 0.102417, 0.973802,
		0.973801, 0.082911, -0.211747,
		-0.102426, 0.991280, -0.082901,
		32.672226, 38.181988, 44.641937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273815, 37.733746, 44.996792>,  <32.743923, 37.488094, 44.699970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273815, 37.733746, 44.996792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060005, 38.071159, 45.017673>,  <32.931721, 38.273609, 45.030201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060005, 38.071159, 45.017673>,  <33.273815, 37.733746, 44.996792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060005, 38.071159, 45.017673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221806, 0.080415, 0.971769,
		0.815528, 0.531013, -0.230086,
		-0.534525, 0.843539, 0.052202,
		32.899647, 38.324223, 45.033333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684608, 38.284065, 45.322021>,  <33.273815, 37.733746, 44.996792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684608, 38.284065, 45.322021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299309, 38.386009, 45.355946>,  <33.068127, 38.447174, 45.376301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299309, 38.386009, 45.355946>,  <33.684608, 38.284065, 45.322021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299309, 38.386009, 45.355946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104414, 0.064393, 0.992447,
		0.247473, 0.964832, -0.088638,
		-0.963252, 0.254858, 0.084807,
		33.010334, 38.462467, 45.381386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160839, 38.838375, 45.262970>,  <33.684608, 38.284065, 45.322021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160839, 38.838375, 45.262970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557869, 38.886559, 45.256100>,  <34.796085, 38.915466, 45.251980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557869, 38.886559, 45.256100>,  <34.160839, 38.838375, 45.262970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557869, 38.886559, 45.256100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050263, 0.277389, -0.959442,
		-0.110807, 0.953176, 0.281383,
		0.992570, 0.120456, -0.017172,
		34.855640, 38.922695, 45.250946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289669, 39.606373, 45.063812>,  <34.160839, 38.838375, 45.262970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289669, 39.606373, 45.063812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604286, 39.384373, 44.955498>,  <34.793056, 39.251171, 44.890511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604286, 39.384373, 44.955498>,  <34.289669, 39.606373, 45.063812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604286, 39.384373, 44.955498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009389, 0.427693, -0.903876,
		0.617466, 0.713478, 0.331187,
		0.786541, -0.555003, -0.270784,
		34.840248, 39.217873, 44.874264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610912, 39.978645, 44.664249>,  <34.289669, 39.606373, 45.063812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610912, 39.978645, 44.664249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813023, 39.638664, 44.604546>,  <34.934288, 39.434677, 44.568722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813023, 39.638664, 44.604546>,  <34.610912, 39.978645, 44.664249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813023, 39.638664, 44.604546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092151, 0.225117, -0.969964,
		0.858022, 0.476348, 0.192070,
		0.505279, -0.849950, -0.149259,
		34.964607, 39.383678, 44.559769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308113, 40.167835, 44.256096>,  <34.610912, 39.978645, 44.664249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308113, 40.167835, 44.256096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249008, 39.775814, 44.202923>,  <35.213547, 39.540604, 44.171021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249008, 39.775814, 44.202923>,  <35.308113, 40.167835, 44.256096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249008, 39.775814, 44.202923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194246, 0.103034, -0.975527,
		0.969761, -0.169965, 0.175146,
		-0.147760, -0.980049, -0.132934,
		35.204681, 39.481800, 44.163044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866379, 39.890739, 43.964798>,  <35.308113, 40.167835, 44.256096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866379, 39.890739, 43.964798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585907, 39.620411, 43.873917>,  <35.417625, 39.458214, 43.819389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585907, 39.620411, 43.873917>,  <35.866379, 39.890739, 43.964798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585907, 39.620411, 43.873917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371693, -0.074549, -0.925358,
		0.608436, -0.733289, 0.303469,
		-0.701178, -0.675818, -0.227200,
		35.375553, 39.417667, 43.805756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306110, 39.278965, 43.757568>,  <35.866379, 39.890739, 43.964798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306110, 39.278965, 43.757568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936478, 39.210419, 43.620922>,  <35.714699, 39.169292, 43.538933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936478, 39.210419, 43.620922>,  <36.306110, 39.278965, 43.757568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936478, 39.210419, 43.620922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382169, -0.422950, -0.821621,
		-0.003688, -0.889802, 0.456332,
		-0.924085, -0.171366, -0.341614,
		35.659252, 39.159008, 43.518436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336765, 38.581154, 43.441193>,  <36.306110, 39.278965, 43.757568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336765, 38.581154, 43.441193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005154, 38.743683, 43.287514>,  <35.806187, 38.841202, 43.195305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005154, 38.743683, 43.287514>,  <36.336765, 38.581154, 43.441193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005154, 38.743683, 43.287514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160258, -0.485596, -0.859368,
		-0.535748, -0.774013, 0.337457,
		-0.829030, 0.406325, -0.384199,
		35.756443, 38.865582, 43.172253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081306, 38.163437, 43.112961>,  <36.336765, 38.581154, 43.441193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081306, 38.163437, 43.112961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879803, 38.458328, 42.932861>,  <35.758900, 38.635262, 42.824802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879803, 38.458328, 42.932861>,  <36.081306, 38.163437, 43.112961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879803, 38.458328, 42.932861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057366, -0.491520, -0.868975,
		-0.861937, -0.463583, 0.205316,
		-0.503759, 0.737224, -0.450253,
		35.728676, 38.679497, 42.797787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401733, 37.904274, 42.797821>,  <36.081306, 38.163437, 43.112961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401733, 37.904274, 42.797821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.532070, 38.226948, 42.600609>,  <35.610271, 38.420551, 42.482281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.532070, 38.226948, 42.600609>,  <35.401733, 37.904274, 42.797821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532070, 38.226948, 42.600609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223970, -0.572511, -0.788713,
		-0.918511, 0.146575, -0.367225,
		0.325846, 0.806689, -0.493029,
		35.629826, 38.468956, 42.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148327, 37.783272, 42.136909>,  <35.401733, 37.904274, 42.797821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148327, 37.783272, 42.136909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404079, 38.084934, 42.076981>,  <35.557529, 38.265930, 42.041023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404079, 38.084934, 42.076981>,  <35.148327, 37.783272, 42.136909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404079, 38.084934, 42.076981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272500, -0.404462, -0.873015,
		-0.718983, 0.517363, -0.464111,
		0.639381, 0.754153, -0.149820,
		35.595894, 38.311180, 42.032036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003490, 38.028934, 41.527439>,  <35.148327, 37.783272, 42.136909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003490, 38.028934, 41.527439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386059, 38.130543, 41.585026>,  <35.615601, 38.191509, 41.619576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386059, 38.130543, 41.585026>,  <35.003490, 38.028934, 41.527439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386059, 38.130543, 41.585026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256436, -0.495025, -0.830175,
		-0.139617, 0.830917, -0.538594,
		0.956424, 0.254022, 0.143963,
		35.672985, 38.206749, 41.628216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184891, 38.134274, 40.920029>,  <35.003490, 38.028934, 41.527439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184891, 38.134274, 40.920029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529804, 38.085903, 41.116737>,  <35.736752, 38.056881, 41.234760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529804, 38.085903, 41.116737>,  <35.184891, 38.134274, 40.920029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529804, 38.085903, 41.116737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410573, -0.401532, -0.818658,
		0.296460, 0.907826, -0.296586,
		0.862288, -0.120929, 0.491767,
		35.788490, 38.049625, 41.264267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688171, 38.469997, 40.491310>,  <35.184891, 38.134274, 40.920029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688171, 38.469997, 40.491310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.815952, 38.189316, 40.746044>,  <35.892620, 38.020905, 40.898884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.815952, 38.189316, 40.746044>,  <35.688171, 38.469997, 40.491310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815952, 38.189316, 40.746044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381761, -0.519792, -0.764248,
		0.867299, 0.487259, 0.101835,
		0.319454, -0.701708, 0.636832,
		35.911789, 37.978802, 40.937092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355320, 38.463779, 40.359005>,  <35.688171, 38.469997, 40.491310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355320, 38.463779, 40.359005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277267, 38.113331, 40.535339>,  <36.230434, 37.903061, 40.641140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277267, 38.113331, 40.535339>,  <36.355320, 38.463779, 40.359005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277267, 38.113331, 40.535339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500060, -0.475541, -0.723741,
		0.843720, 0.079218, 0.530907,
		-0.195135, -0.876119, 0.440837,
		36.218727, 37.850494, 40.667591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.547321, 42.570808, 31.247879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.147528, 42.558197, 31.250271>,  <25.907652, 42.550629, 31.251705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.147528, 42.558197, 31.250271>,  <26.547321, 42.570808, 31.247879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147528, 42.558197, 31.250271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027810, -0.757856, 0.651829,
		-0.016022, 0.651660, 0.758342,
		-0.999485, -0.031533, 0.005980,
		25.847683, 42.548737, 31.252066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461121, 42.405468, 31.848886>,  <26.547321, 42.570808, 31.247879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461121, 42.405468, 31.848886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.096624, 42.347538, 31.694656>,  <25.877926, 42.312782, 31.602118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.096624, 42.347538, 31.694656>,  <26.461121, 42.405468, 31.848886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096624, 42.347538, 31.694656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197369, -0.668125, 0.717394,
		-0.361506, 0.729819, 0.580240,
		-0.911240, -0.144820, -0.385575,
		25.823252, 42.304092, 31.578983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008583, 42.438866, 32.478447>,  <26.461121, 42.405468, 31.848886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008583, 42.438866, 32.478447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813066, 42.257172, 32.180519>,  <25.695757, 42.148155, 32.001762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813066, 42.257172, 32.180519>,  <26.008583, 42.438866, 32.478447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813066, 42.257172, 32.180519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246695, -0.746942, 0.617429,
		-0.836794, 0.485537, 0.253042,
		-0.488793, -0.454237, -0.744816,
		25.666430, 42.120899, 31.957075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322748, 42.204056, 32.674618>,  <26.008583, 42.438866, 32.478447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322748, 42.204056, 32.674618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.431316, 41.974991, 32.365196>,  <25.496458, 41.837551, 32.179543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.431316, 41.974991, 32.365196>,  <25.322748, 42.204056, 32.674618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431316, 41.974991, 32.365196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195261, -0.819774, 0.538371,
		-0.942446, 0.004920, -0.334322,
		0.271420, -0.572666, -0.773554,
		25.512743, 41.803192, 32.133129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873280, 41.725803, 32.725437>,  <25.322748, 42.204056, 32.674618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873280, 41.725803, 32.725437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.134768, 41.527973, 32.496334>,  <25.291660, 41.409275, 32.358871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.134768, 41.527973, 32.496334>,  <24.873280, 41.725803, 32.725437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134768, 41.527973, 32.496334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177446, -0.835956, 0.519317,
		-0.735639, -0.237854, -0.634240,
		0.653718, -0.494574, -0.572756,
		25.330883, 41.379601, 32.324509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604939, 40.987282, 32.647209>,  <24.873280, 41.725803, 32.725437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604939, 40.987282, 32.647209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.982836, 40.964600, 32.518063>,  <25.209574, 40.950993, 32.440575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.982836, 40.964600, 32.518063>,  <24.604939, 40.987282, 32.647209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982836, 40.964600, 32.518063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076948, -0.919048, 0.386561,
		-0.318651, -0.390045, -0.863902,
		0.944744, -0.056702, -0.322869,
		25.266258, 40.947590, 32.421204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.681278, 40.330891, 32.355492>,  <24.604939, 40.987282, 32.647209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.681278, 40.330891, 32.355492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.050331, 40.429447, 32.474182>,  <25.271763, 40.488579, 32.545395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.050331, 40.429447, 32.474182>,  <24.681278, 40.330891, 32.355492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050331, 40.429447, 32.474182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149177, -0.937439, 0.314570,
		0.355667, -0.245968, -0.901666,
		0.922631, 0.246390, 0.296724,
		25.327120, 40.503365, 32.563198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044912, 39.691650, 32.168766>,  <24.681278, 40.330891, 32.355492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044912, 39.691650, 32.168766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.290991, 39.888569, 32.415077>,  <25.438637, 40.006721, 32.562862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.290991, 39.888569, 32.415077>,  <25.044912, 39.691650, 32.168766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290991, 39.888569, 32.415077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282917, -0.866899, 0.410419,
		0.735863, -0.078275, -0.672591,
		0.615194, 0.492299, 0.615774,
		25.475550, 40.036259, 32.599808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600334, 39.405140, 32.128075>,  <25.044912, 39.691650, 32.168766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600334, 39.405140, 32.128075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.634190, 39.582829, 32.484837>,  <25.654503, 39.689442, 32.698895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.634190, 39.582829, 32.484837>,  <25.600334, 39.405140, 32.128075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634190, 39.582829, 32.484837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311389, -0.862080, 0.399819,
		0.946506, 0.243891, -0.211291,
		0.084638, 0.444225, 0.891909,
		25.659580, 39.716095, 32.752411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279247, 39.303150, 32.369682>,  <25.600334, 39.405140, 32.128075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279247, 39.303150, 32.369682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.068214, 39.402222, 32.694721>,  <25.941595, 39.461662, 32.889744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.068214, 39.402222, 32.694721>,  <26.279247, 39.303150, 32.369682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068214, 39.402222, 32.694721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384539, -0.783315, 0.488414,
		0.757489, 0.570153, 0.318020,
		-0.527580, 0.247677, 0.812598,
		25.909941, 39.476524, 32.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771296, 39.226284, 33.021683>,  <26.279247, 39.303150, 32.369682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771296, 39.226284, 33.021683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.398584, 39.185757, 33.161125>,  <26.174957, 39.161442, 33.244793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.398584, 39.185757, 33.161125>,  <26.771296, 39.226284, 33.021683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398584, 39.185757, 33.161125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294830, -0.771487, 0.563812,
		0.211824, 0.628127, 0.748724,
		-0.931776, -0.101317, 0.348610,
		26.119051, 39.155361, 33.265709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838207, 39.139172, 33.809578>,  <26.771296, 39.226284, 33.021683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838207, 39.139172, 33.809578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496210, 38.983433, 33.672527>,  <26.291012, 38.889992, 33.590298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496210, 38.983433, 33.672527>,  <26.838207, 39.139172, 33.809578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496210, 38.983433, 33.672527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198761, -0.856175, 0.476927,
		-0.479038, 0.339669, 0.809412,
		-0.854995, -0.389345, -0.342627,
		26.239712, 38.866631, 33.569740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574520, 38.892357, 34.478134>,  <26.838207, 39.139172, 33.809578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574520, 38.892357, 34.478134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362818, 38.709538, 34.192200>,  <26.235796, 38.599846, 34.020641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362818, 38.709538, 34.192200>,  <26.574520, 38.892357, 34.478134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362818, 38.709538, 34.192200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000743, -0.842257, 0.539075,
		-0.848461, 0.285841, 0.445432,
		-0.529258, -0.457053, -0.714834,
		26.204041, 38.572422, 33.977749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945747, 38.512035, 34.842625>,  <26.574520, 38.892357, 34.478134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945747, 38.512035, 34.842625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985844, 38.349136, 34.479504>,  <26.009901, 38.251396, 34.261631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985844, 38.349136, 34.479504>,  <25.945747, 38.512035, 34.842625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985844, 38.349136, 34.479504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368902, -0.862576, 0.346228,
		-0.924047, 0.300182, -0.236702,
		0.100242, -0.407251, -0.907799,
		26.015917, 38.226959, 34.207165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425550, 38.019146, 34.765327>,  <25.945747, 38.512035, 34.842625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425550, 38.019146, 34.765327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691786, 37.902744, 34.490429>,  <25.851526, 37.832905, 34.325489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691786, 37.902744, 34.490429>,  <25.425550, 38.019146, 34.765327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691786, 37.902744, 34.490429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145190, -0.953745, 0.263230,
		-0.732061, -0.075421, -0.677051,
		0.665587, -0.291001, -0.687250,
		25.891462, 37.815445, 34.284252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158194, 37.371048, 34.555836>,  <25.425550, 38.019146, 34.765327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158194, 37.371048, 34.555836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.526711, 37.359425, 34.400719>,  <25.747820, 37.352451, 34.307648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.526711, 37.359425, 34.400719>,  <25.158194, 37.371048, 34.555836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526711, 37.359425, 34.400719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121406, -0.925872, 0.357801,
		-0.369439, -0.376718, -0.849469,
		0.921290, -0.029055, -0.387789,
		25.803097, 37.350708, 34.284382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275604, 36.662689, 34.276287>,  <25.158194, 37.371048, 34.555836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275604, 36.662689, 34.276287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639137, 36.809380, 34.355824>,  <25.857256, 36.897392, 34.403545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639137, 36.809380, 34.355824>,  <25.275604, 36.662689, 34.276287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639137, 36.809380, 34.355824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314804, -0.915666, 0.249910,
		0.273723, -0.164529, -0.947632,
		0.908831, 0.366725, 0.198845,
		25.911787, 36.919395, 34.415478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738916, 36.229935, 33.825546>,  <25.275604, 36.662689, 34.276287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738916, 36.229935, 33.825546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959963, 36.401794, 34.111210>,  <26.092590, 36.504910, 34.282608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959963, 36.401794, 34.111210>,  <25.738916, 36.229935, 33.825546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959963, 36.401794, 34.111210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275694, -0.902879, 0.329853,
		0.786518, 0.014608, -0.617394,
		0.552614, 0.429647, 0.714158,
		26.125748, 36.530689, 34.325459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296751, 35.877396, 33.788429>,  <25.738916, 36.229935, 33.825546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296751, 35.877396, 33.788429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351175, 36.051773, 34.144279>,  <26.383829, 36.156399, 34.357792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351175, 36.051773, 34.144279>,  <26.296751, 35.877396, 33.788429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351175, 36.051773, 34.144279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221191, -0.888679, 0.401652,
		0.965693, 0.142129, -0.217341,
		0.136060, 0.435947, 0.889628,
		26.391993, 36.182556, 34.411167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049091, 35.639435, 34.094975>,  <26.296751, 35.877396, 33.788429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049091, 35.639435, 34.094975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.803297, 35.747429, 34.391491>,  <26.655821, 35.812225, 34.569401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.803297, 35.747429, 34.391491>,  <27.049091, 35.639435, 34.094975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803297, 35.747429, 34.391491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270987, -0.810220, 0.519720,
		0.740928, 0.520241, 0.424705,
		-0.614484, 0.269986, 0.741294,
		26.618952, 35.828426, 34.613880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414789, 35.416885, 34.645649>,  <27.049091, 35.639435, 34.094975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414789, 35.416885, 34.645649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060663, 35.494404, 34.814720>,  <26.848186, 35.540916, 34.916164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060663, 35.494404, 34.814720>,  <27.414789, 35.416885, 34.645649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060663, 35.494404, 34.814720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133205, -0.765210, 0.629849,
		0.445501, 0.613919, 0.651638,
		-0.885316, 0.193797, 0.422679,
		26.795069, 35.552544, 34.941525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077925, 35.810913, 34.579121>,  <27.414789, 35.416885, 34.645649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077925, 35.810913, 34.579121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105793, 35.563385, 34.266144>,  <28.122513, 35.414867, 34.078358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105793, 35.563385, 34.266144>,  <28.077925, 35.810913, 34.579121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105793, 35.563385, 34.266144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335092, 0.724252, -0.602637,
		0.939606, 0.304174, -0.156904,
		0.069669, -0.618819, -0.782438,
		28.126694, 35.377739, 34.031414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504957, 36.084732, 34.037170>,  <28.077925, 35.810913, 34.579121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504957, 36.084732, 34.037170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286852, 35.830917, 33.818062>,  <28.155989, 35.678627, 33.686596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286852, 35.830917, 33.818062>,  <28.504957, 36.084732, 34.037170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286852, 35.830917, 33.818062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186118, 0.728785, -0.658964,
		0.817344, -0.257357, -0.515476,
		-0.545261, -0.634540, -0.547769,
		28.123274, 35.640556, 33.653732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850933, 36.021736, 33.410213>,  <28.504957, 36.084732, 34.037170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850933, 36.021736, 33.410213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468012, 35.926754, 33.344261>,  <28.238258, 35.869766, 33.304691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468012, 35.926754, 33.344261>,  <28.850933, 36.021736, 33.410213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468012, 35.926754, 33.344261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077823, 0.760973, -0.644099,
		0.278413, -0.603767, -0.746961,
		-0.957303, -0.237456, -0.164878,
		28.180820, 35.855518, 33.294796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773743, 36.184711, 32.746227>,  <28.850933, 36.021736, 33.410213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773743, 36.184711, 32.746227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398380, 36.162048, 32.882568>,  <28.173162, 36.148453, 32.964375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398380, 36.162048, 32.882568>,  <28.773743, 36.184711, 32.746227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398380, 36.162048, 32.882568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285688, 0.682086, -0.673158,
		-0.194355, -0.729074, -0.656260,
		-0.938407, -0.056654, 0.340854,
		28.116858, 36.145054, 32.984825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388147, 36.096447, 32.208691>,  <28.773743, 36.184711, 32.746227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388147, 36.096447, 32.208691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137711, 36.255787, 32.476818>,  <27.987448, 36.351391, 32.637695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137711, 36.255787, 32.476818>,  <28.388147, 36.096447, 32.208691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137711, 36.255787, 32.476818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339631, 0.634508, -0.694299,
		-0.701896, -0.662355, -0.261968,
		-0.626093, 0.398353, 0.670315,
		27.949883, 36.375294, 32.677914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804316, 36.190018, 31.830442>,  <28.388147, 36.096447, 32.208691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804316, 36.190018, 31.830442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761806, 36.416779, 32.157204>,  <27.736301, 36.552834, 32.353260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761806, 36.416779, 32.157204>,  <27.804316, 36.190018, 31.830442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761806, 36.416779, 32.157204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178337, 0.797367, -0.576543,
		-0.978214, -0.206954, 0.016362,
		-0.106272, 0.566900, 0.816903,
		27.729925, 36.586849, 32.402275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178802, 36.538445, 31.710880>,  <27.804316, 36.190018, 31.830442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178802, 36.538445, 31.710880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381538, 36.752907, 31.980886>,  <27.503180, 36.881584, 32.142891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381538, 36.752907, 31.980886>,  <27.178802, 36.538445, 31.710880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381538, 36.752907, 31.980886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345966, 0.843732, -0.410396,
		-0.789569, -0.025527, 0.613131,
		0.506842, 0.536158, 0.675015,
		27.533590, 36.913754, 32.183392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696732, 37.007019, 31.903931>,  <27.178802, 36.538445, 31.710880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696732, 37.007019, 31.903931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057680, 37.156780, 31.989300>,  <27.274248, 37.246639, 32.040520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057680, 37.156780, 31.989300>,  <26.696732, 37.007019, 31.903931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057680, 37.156780, 31.989300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242747, 0.850763, -0.466128,
		-0.356094, 0.368812, 0.858589,
		0.902370, 0.374405, 0.213424,
		27.328390, 37.269100, 32.053326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564934, 37.664444, 31.933086>,  <26.696732, 37.007019, 31.903931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564934, 37.664444, 31.933086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963488, 37.677334, 31.901646>,  <27.202620, 37.685066, 31.882780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963488, 37.677334, 31.901646>,  <26.564934, 37.664444, 31.933086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963488, 37.677334, 31.901646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059062, 0.927837, -0.368279,
		0.061063, 0.371590, 0.926387,
		0.996385, 0.032226, -0.078604,
		27.262403, 37.687000, 31.878065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809483, 38.336731, 32.201092>,  <26.564934, 37.664444, 31.933086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809483, 38.336731, 32.201092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104897, 38.215000, 31.960442>,  <27.282145, 38.141964, 31.816051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104897, 38.215000, 31.960442>,  <26.809483, 38.336731, 32.201092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104897, 38.215000, 31.960442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039027, 0.910136, -0.412468,
		0.673086, 0.281141, 0.684042,
		0.738533, -0.304323, -0.601628,
		27.326456, 38.123703, 31.779953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366354, 38.881573, 32.178226>,  <26.809483, 38.336731, 32.201092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366354, 38.881573, 32.178226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381742, 38.678757, 31.833803>,  <27.390976, 38.557068, 31.627148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381742, 38.678757, 31.833803>,  <27.366354, 38.881573, 32.178226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381742, 38.678757, 31.833803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139750, 0.855961, -0.497795,
		0.989439, -0.101181, 0.103790,
		0.038473, -0.507043, -0.861062,
		27.393284, 38.526646, 31.575485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908514, 39.186714, 31.769915>,  <27.366354, 38.881573, 32.178226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908514, 39.186714, 31.769915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683073, 38.987186, 31.506540>,  <27.547808, 38.867470, 31.348516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683073, 38.987186, 31.506540>,  <27.908514, 39.186714, 31.769915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683073, 38.987186, 31.506540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015759, 0.803439, -0.595179,
		0.825897, -0.325068, -0.460680,
		-0.563601, -0.498816, -0.658435,
		27.513992, 38.837543, 31.309010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046984, 39.599960, 31.288767>,  <27.908514, 39.186714, 31.769915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046984, 39.599960, 31.288767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.746767, 39.382069, 31.139124>,  <27.566637, 39.251335, 31.049337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.746767, 39.382069, 31.139124>,  <28.046984, 39.599960, 31.288767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746767, 39.382069, 31.139124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192546, 0.721827, -0.664749,
		0.632149, -0.426889, -0.646648,
		-0.750542, -0.544730, -0.374107,
		27.521605, 39.218651, 31.026892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191986, 39.668808, 30.509293>,  <28.046984, 39.599960, 31.288767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191986, 39.668808, 30.509293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.806028, 39.591732, 30.580677>,  <27.574453, 39.545486, 30.623508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.806028, 39.591732, 30.580677>,  <28.191986, 39.668808, 30.509293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806028, 39.591732, 30.580677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262041, 0.752062, -0.604763,
		-0.017681, -0.630297, -0.776153,
		-0.964895, -0.192691, 0.178461,
		27.516560, 39.533924, 30.634214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919950, 39.743473, 29.897320>,  <28.191986, 39.668808, 30.509293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919950, 39.743473, 29.897320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620686, 39.781837, 30.159939>,  <27.441128, 39.804855, 30.317511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620686, 39.781837, 30.159939>,  <27.919950, 39.743473, 29.897320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620686, 39.781837, 30.159939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213543, 0.902048, -0.375113,
		-0.628215, -0.420846, -0.654396,
		-0.748161, 0.095910, 0.656549,
		27.396236, 39.810612, 30.356903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312963, 39.934444, 29.411833>,  <27.919950, 39.743473, 29.897320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312963, 39.934444, 29.411833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224213, 40.042271, 29.786661>,  <27.170961, 40.106968, 30.011559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224213, 40.042271, 29.786661>,  <27.312963, 39.934444, 29.411833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224213, 40.042271, 29.786661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414245, 0.843929, -0.340860,
		-0.882706, -0.463807, -0.075582,
		-0.221879, 0.269570, 0.937071,
		27.157648, 40.123142, 30.067781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602192, 40.120594, 29.440619>,  <27.312963, 39.934444, 29.411833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602192, 40.120594, 29.440619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792692, 40.305237, 29.739981>,  <26.906992, 40.416023, 29.919598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792692, 40.305237, 29.739981>,  <26.602192, 40.120594, 29.440619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792692, 40.305237, 29.739981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521423, 0.833590, -0.182336,
		-0.708028, -0.303398, 0.637688,
		0.476250, 0.461604, 0.748404,
		26.935568, 40.443718, 29.964502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116144, 40.602806, 29.641142>,  <26.602192, 40.120594, 29.440619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116144, 40.602806, 29.641142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476046, 40.720242, 29.770288>,  <26.691986, 40.790703, 29.847776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476046, 40.720242, 29.770288>,  <26.116144, 40.602806, 29.641142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476046, 40.720242, 29.770288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215166, 0.942130, -0.257089,
		-0.379663, 0.161847, 0.910858,
		0.899756, 0.293593, 0.322867,
		26.745972, 40.808319, 29.867149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025122, 41.115845, 30.189934>,  <26.116144, 40.602806, 29.641142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025122, 41.115845, 30.189934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.367065, 41.132591, 29.983067>,  <26.572231, 41.142639, 29.858946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.367065, 41.132591, 29.983067>,  <26.025122, 41.115845, 30.189934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367065, 41.132591, 29.983067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161473, 0.968710, -0.188488,
		0.493096, 0.244640, 0.834870,
		0.854858, 0.041867, -0.517169,
		26.623524, 41.145153, 29.827915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247116, 41.879448, 30.271196>,  <26.025122, 41.115845, 30.189934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247116, 41.879448, 30.271196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.518473, 41.752014, 30.006384>,  <26.681286, 41.675552, 29.847496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.518473, 41.752014, 30.006384>,  <26.247116, 41.879448, 30.271196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518473, 41.752014, 30.006384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028181, 0.889145, -0.456757,
		0.734160, 0.328517, 0.594211,
		0.678392, -0.318587, -0.662032,
		26.721991, 41.656437, 29.807774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712217, 42.384785, 30.168264>,  <26.247116, 41.879448, 30.271196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712217, 42.384785, 30.168264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779217, 42.191360, 29.824610>,  <26.819416, 42.075306, 29.618418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779217, 42.191360, 29.824610>,  <26.712217, 42.384785, 30.168264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779217, 42.191360, 29.824610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187353, 0.871181, -0.453809,
		0.967906, -0.084949, 0.236519,
		0.167500, -0.483558, -0.859137,
		26.829466, 42.046291, 29.566868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.074978, 35.338070, 46.972233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727165, 35.142143, 46.997486>,  <36.518478, 35.024586, 47.012638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727165, 35.142143, 46.997486>,  <37.074978, 35.338070, 46.972233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727165, 35.142143, 46.997486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198462, 0.463619, 0.863522,
		-0.452238, 0.738334, -0.500344,
		-0.869536, -0.489817, 0.063135,
		36.466305, 34.995197, 47.016426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683472, 35.841763, 47.368740>,  <37.074978, 35.338070, 46.972233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683472, 35.841763, 47.368740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484486, 35.496384, 47.402195>,  <36.365093, 35.289158, 47.422268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484486, 35.496384, 47.402195>,  <36.683472, 35.841763, 47.368740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484486, 35.496384, 47.402195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227095, 0.222674, 0.948074,
		-0.837232, 0.452638, -0.306856,
		-0.497463, -0.863444, 0.083638,
		36.335247, 35.237350, 47.427288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998215, 36.022289, 47.473717>,  <36.683472, 35.841763, 47.368740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998215, 36.022289, 47.473717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058640, 35.656658, 47.624260>,  <36.094894, 35.437279, 47.714584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058640, 35.656658, 47.624260>,  <35.998215, 36.022289, 47.473717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058640, 35.656658, 47.624260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383502, 0.296712, 0.874579,
		-0.911102, -0.276449, -0.305728,
		0.151063, -0.914078, 0.376353,
		36.103958, 35.382435, 47.737167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411388, 35.874157, 47.853619>,  <35.998215, 36.022289, 47.473717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411388, 35.874157, 47.853619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687664, 35.623531, 47.998043>,  <35.853428, 35.473156, 48.084698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687664, 35.623531, 47.998043>,  <35.411388, 35.874157, 47.853619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687664, 35.623531, 47.998043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265611, 0.244592, 0.932537,
		-0.672607, -0.739996, 0.002516,
		0.690689, -0.626563, 0.361065,
		35.894871, 35.435562, 48.106361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106960, 35.467052, 48.416771>,  <35.411388, 35.874157, 47.853619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106960, 35.467052, 48.416771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496330, 35.408283, 48.487034>,  <35.729954, 35.373020, 48.529190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496330, 35.408283, 48.487034>,  <35.106960, 35.467052, 48.416771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496330, 35.408283, 48.487034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133933, 0.256920, 0.957107,
		-0.185755, -0.955199, 0.230414,
		0.973425, -0.146927, 0.175657,
		35.788357, 35.364204, 48.539730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206032, 34.913712, 48.918346>,  <35.106960, 35.467052, 48.416771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206032, 34.913712, 48.918346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540363, 35.131340, 48.947655>,  <35.740963, 35.261917, 48.965240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540363, 35.131340, 48.947655>,  <35.206032, 34.913712, 48.918346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540363, 35.131340, 48.947655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250006, 0.258406, 0.933126,
		0.488753, -0.798256, 0.352006,
		0.835833, 0.544071, 0.073272,
		35.791115, 35.294563, 48.969635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614658, 34.676521, 49.564568>,  <35.206032, 34.913712, 48.918346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614658, 34.676521, 49.564568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749249, 35.047085, 49.496983>,  <35.830002, 35.269424, 49.456432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749249, 35.047085, 49.496983>,  <35.614658, 34.676521, 49.564568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749249, 35.047085, 49.496983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133092, 0.224404, 0.965365,
		0.932239, -0.302335, 0.198804,
		0.336476, 0.926410, -0.168960,
		35.850193, 35.325008, 49.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935314, 34.834351, 50.183701>,  <35.614658, 34.676521, 49.564568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935314, 34.834351, 50.183701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910740, 35.190628, 50.003529>,  <35.895996, 35.404396, 49.895428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910740, 35.190628, 50.003529>,  <35.935314, 34.834351, 50.183701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910740, 35.190628, 50.003529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041678, 0.448595, 0.892763,
		0.997241, 0.073617, 0.009564,
		-0.061432, 0.890698, -0.450425,
		35.892311, 35.457836, 49.868401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493618, 35.176277, 50.389145>,  <35.935314, 34.834351, 50.183701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493618, 35.176277, 50.389145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.212921, 35.445084, 50.294525>,  <36.044502, 35.606365, 50.237751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.212921, 35.445084, 50.294525>,  <36.493618, 35.176277, 50.389145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212921, 35.445084, 50.294525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028704, 0.305096, 0.951889,
		0.711853, 0.674770, -0.194809,
		-0.701742, 0.672013, -0.236552,
		36.002399, 35.646687, 50.223560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596771, 35.694592, 50.938766>,  <36.493618, 35.176277, 50.389145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596771, 35.694592, 50.938766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253860, 35.811047, 50.768917>,  <36.048115, 35.880920, 50.667007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253860, 35.811047, 50.768917>,  <36.596771, 35.694592, 50.938766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253860, 35.811047, 50.768917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316480, 0.352541, 0.880656,
		0.406091, 0.889356, -0.210087,
		-0.857281, 0.291138, -0.424627,
		35.996677, 35.898388, 50.641529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474831, 36.429489, 51.143112>,  <36.596771, 35.694592, 50.938766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474831, 36.429489, 51.143112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119534, 36.269669, 51.052441>,  <35.906353, 36.173779, 50.998039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119534, 36.269669, 51.052441>,  <36.474831, 36.429489, 51.143112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119534, 36.269669, 51.052441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406291, 0.453045, 0.793522,
		-0.214357, 0.796938, -0.564748,
		-0.888245, -0.399549, -0.226675,
		35.853062, 36.149803, 50.984440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053268, 36.706497, 50.756767>,  <36.474831, 36.429489, 51.143112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053268, 36.706497, 50.756767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.413029, 36.835930, 50.639210>,  <37.628883, 36.913589, 50.568676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.413029, 36.835930, 50.639210>,  <37.053268, 36.706497, 50.756767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413029, 36.835930, 50.639210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418328, -0.442116, 0.793432,
		0.126810, -0.836556, -0.533005,
		0.899400, 0.323586, -0.293890,
		37.682850, 36.933006, 50.551044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962151, 36.850494, 51.550262>,  <37.053268, 36.706497, 50.756767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962151, 36.850494, 51.550262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609711, 36.876511, 51.362888>,  <36.398247, 36.892120, 51.250465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609711, 36.876511, 51.362888>,  <36.962151, 36.850494, 51.550262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609711, 36.876511, 51.362888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072601, 0.960156, 0.269871,
		0.467320, 0.271793, -0.841274,
		-0.881102, 0.065038, -0.468432,
		36.345379, 36.896023, 51.222359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963272, 37.436333, 51.233334>,  <36.962151, 36.850494, 51.550262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963272, 37.436333, 51.233334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588024, 37.354191, 51.344879>,  <36.362877, 37.304905, 51.411808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588024, 37.354191, 51.344879>,  <36.963272, 37.436333, 51.233334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588024, 37.354191, 51.344879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116800, 0.945662, 0.303447,
		-0.326029, 0.252097, -0.911127,
		-0.938117, -0.205352, 0.278868,
		36.306587, 37.292583, 51.428539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367500, 37.922966, 50.893906>,  <36.963272, 37.436333, 51.233334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367500, 37.922966, 50.893906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027702, 38.132763, 50.871044>,  <35.823826, 38.258640, 50.857327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027702, 38.132763, 50.871044>,  <36.367500, 37.922966, 50.893906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027702, 38.132763, 50.871044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111316, 0.072294, -0.991152,
		-0.515724, -0.848337, -0.119798,
		-0.849492, 0.524497, -0.057150,
		35.772854, 38.290112, 50.853901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009521, 37.683437, 50.385101>,  <36.367500, 37.922966, 50.893906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009521, 37.683437, 50.385101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865894, 38.053627, 50.433388>,  <35.779716, 38.275742, 50.462360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865894, 38.053627, 50.433388>,  <36.009521, 37.683437, 50.385101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865894, 38.053627, 50.433388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061403, 0.105640, -0.992507,
		-0.931288, -0.363794, 0.018894,
		-0.359072, 0.925470, 0.120719,
		35.758171, 38.331268, 50.469604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297585, 37.684990, 50.102150>,  <36.009521, 37.683437, 50.385101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297585, 37.684990, 50.102150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491665, 38.034721, 50.097672>,  <35.608112, 38.244560, 50.094982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491665, 38.034721, 50.097672>,  <35.297585, 37.684990, 50.102150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491665, 38.034721, 50.097672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086682, 0.035349, -0.995609,
		-0.870097, 0.484039, 0.092940,
		0.485198, 0.874332, -0.011200,
		35.637226, 38.297020, 50.094311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909367, 37.963623, 49.594299>,  <35.297585, 37.684990, 50.102150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909367, 37.963623, 49.594299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227089, 38.206387, 49.605209>,  <35.417721, 38.352043, 49.611755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227089, 38.206387, 49.605209>,  <34.909367, 37.963623, 49.594299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227089, 38.206387, 49.605209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027824, 0.081198, -0.996310,
		-0.606881, 0.790615, 0.081382,
		0.794305, 0.606906, 0.027279,
		35.465382, 38.388458, 49.613392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737511, 38.573460, 49.288300>,  <34.909367, 37.963623, 49.594299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737511, 38.573460, 49.288300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134583, 38.551235, 49.245411>,  <35.372826, 38.537903, 49.219677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134583, 38.551235, 49.245411>,  <34.737511, 38.573460, 49.288300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134583, 38.551235, 49.245411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096528, 0.168436, -0.980975,
		0.072560, 0.984145, 0.161841,
		0.992682, -0.055557, -0.107219,
		35.432388, 38.534569, 49.213245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940010, 39.117752, 48.919506>,  <34.737511, 38.573460, 49.288300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940010, 39.117752, 48.919506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228909, 38.844711, 48.874935>,  <35.402248, 38.680885, 48.848194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228909, 38.844711, 48.874935>,  <34.940010, 39.117752, 48.919506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228909, 38.844711, 48.874935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060120, 0.098530, -0.993316,
		0.689021, 0.724115, 0.030124,
		0.722243, -0.682605, -0.111423,
		35.445583, 38.639931, 48.841507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410660, 39.466148, 48.513561>,  <34.940010, 39.117752, 48.919506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410660, 39.466148, 48.513561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476334, 39.073116, 48.478737>,  <35.515739, 38.837296, 48.457840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476334, 39.073116, 48.478737>,  <35.410660, 39.466148, 48.513561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476334, 39.073116, 48.478737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084216, 0.101903, -0.991223,
		0.982828, 0.155412, 0.099480,
		0.164185, -0.982580, -0.087065,
		35.525589, 38.778343, 48.452618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861916, 39.386913, 47.927128>,  <35.410660, 39.466148, 48.513561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861916, 39.386913, 47.927128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766602, 38.999062, 47.949162>,  <35.709412, 38.766350, 47.962383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766602, 38.999062, 47.949162>,  <35.861916, 39.386913, 47.927128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766602, 38.999062, 47.949162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047132, -0.045108, -0.997870,
		0.970050, -0.240376, -0.034952,
		-0.238287, -0.969631, 0.055086,
		35.695114, 38.708172, 47.965687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283871, 39.000145, 47.437458>,  <35.861916, 39.386913, 47.927128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283871, 39.000145, 47.437458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969402, 38.757996, 47.487194>,  <35.780720, 38.612705, 47.517036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969402, 38.757996, 47.487194>,  <36.283871, 39.000145, 47.437458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969402, 38.757996, 47.487194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104189, -0.068484, -0.992197,
		0.609164, -0.792990, -0.009234,
		-0.786170, -0.605373, 0.124339,
		35.733551, 38.576385, 47.524494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347874, 38.463993, 46.920826>,  <36.283871, 39.000145, 47.437458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347874, 38.463993, 46.920826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961384, 38.445557, 47.022251>,  <35.729492, 38.434494, 47.083107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961384, 38.445557, 47.022251>,  <36.347874, 38.463993, 46.920826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961384, 38.445557, 47.022251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252676, -0.024184, -0.967249,
		0.050709, -0.998645, 0.011722,
		-0.966221, -0.046087, 0.253560,
		35.671516, 38.431732, 47.098320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062988, 38.084461, 46.428673>,  <36.347874, 38.463993, 46.920826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062988, 38.084461, 46.428673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741962, 38.240936, 46.608829>,  <35.549347, 38.334820, 46.716923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741962, 38.240936, 46.608829>,  <36.062988, 38.084461, 46.428673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741962, 38.240936, 46.608829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383105, 0.240762, -0.891776,
		-0.457291, -0.888259, -0.043362,
		-0.802568, 0.391189, 0.450395,
		35.501190, 38.358292, 46.743946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449368, 37.714676, 46.172909>,  <36.062988, 38.084461, 46.428673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449368, 37.714676, 46.172909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372589, 38.093925, 46.274273>,  <35.326523, 38.321476, 46.335091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372589, 38.093925, 46.274273>,  <35.449368, 37.714676, 46.172909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372589, 38.093925, 46.274273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470582, 0.137671, -0.871550,
		-0.861225, -0.286540, 0.419745,
		-0.191947, 0.948125, 0.253406,
		35.315006, 38.378365, 46.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962368, 37.854866, 45.734947>,  <35.449368, 37.714676, 46.172909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962368, 37.854866, 45.734947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037273, 38.217999, 45.885029>,  <35.082218, 38.435879, 45.975079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037273, 38.217999, 45.885029>,  <34.962368, 37.854866, 45.734947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037273, 38.217999, 45.885029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412476, 0.419326, -0.808720,
		-0.891512, -0.003314, 0.452985,
		0.187268, 0.907830, 0.375202,
		35.093452, 38.490349, 45.997589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291157, 38.331142, 45.775436>,  <34.962368, 37.854866, 45.734947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291157, 38.331142, 45.775436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624466, 38.549980, 45.743553>,  <34.824451, 38.681282, 45.724422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624466, 38.549980, 45.743553>,  <34.291157, 38.331142, 45.775436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624466, 38.549980, 45.743553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276113, 0.286904, -0.917305,
		-0.478984, 0.786368, 0.390127,
		0.833268, 0.547094, -0.079704,
		34.874447, 38.714108, 45.719643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707409, 38.814861, 45.811157>,  <34.291157, 38.331142, 45.775436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707409, 38.814861, 45.811157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329208, 38.684616, 45.812519>,  <33.102287, 38.606468, 45.813335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329208, 38.684616, 45.812519>,  <33.707409, 38.814861, 45.811157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329208, 38.684616, 45.812519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047072, 0.147020, 0.988013,
		-0.322210, 0.934003, -0.154334,
		-0.945497, -0.325613, 0.003406,
		33.045559, 38.586933, 45.813541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423130, 39.233986, 46.331406>,  <33.707409, 38.814861, 45.811157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423130, 39.233986, 46.331406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154896, 38.940414, 46.288212>,  <32.993954, 38.764271, 46.262295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154896, 38.940414, 46.288212>,  <33.423130, 39.233986, 46.331406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154896, 38.940414, 46.288212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172688, 0.012873, 0.984892,
		-0.721451, 0.679105, -0.135373,
		-0.670588, -0.733929, -0.107986,
		32.953720, 38.720238, 46.255817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918518, 39.374729, 46.794704>,  <33.423130, 39.233986, 46.331406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918518, 39.374729, 46.794704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840034, 38.991241, 46.712387>,  <32.792942, 38.761147, 46.662998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840034, 38.991241, 46.712387>,  <32.918518, 39.374729, 46.794704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840034, 38.991241, 46.712387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187421, -0.169337, 0.967573,
		-0.962483, 0.228421, -0.146459,
		-0.196213, -0.958722, -0.205795,
		32.781170, 38.703625, 46.650650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163158, 39.126301, 46.916729>,  <32.918518, 39.374729, 46.794704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163158, 39.126301, 46.916729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405476, 38.808643, 46.936100>,  <32.550865, 38.618050, 46.947723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405476, 38.808643, 46.936100>,  <32.163158, 39.126301, 46.916729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405476, 38.808643, 46.936100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319059, -0.186725, 0.929158,
		-0.728844, -0.578331, -0.366497,
		0.605796, -0.794145, 0.048428,
		32.587215, 38.570400, 46.950630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896315, 38.851025, 47.511292>,  <32.163158, 39.126301, 46.916729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896315, 38.851025, 47.511292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229301, 38.640213, 47.442894>,  <32.429092, 38.513725, 47.401855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229301, 38.640213, 47.442894>,  <31.896315, 38.851025, 47.511292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229301, 38.640213, 47.442894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049850, -0.378602, 0.924216,
		-0.551825, -0.760857, -0.341447,
		0.832469, -0.527027, -0.170993,
		32.479042, 38.482105, 47.391598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673759, 38.132000, 47.687874>,  <31.896315, 38.851025, 47.511292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673759, 38.132000, 47.687874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072693, 38.151512, 47.709579>,  <32.312054, 38.163219, 47.722603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072693, 38.151512, 47.709579>,  <31.673759, 38.132000, 47.687874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072693, 38.151512, 47.709579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026015, -0.457142, 0.889013,
		0.068173, -0.888055, -0.454655,
		0.997334, 0.048779, 0.054268,
		32.371895, 38.166145, 47.725861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919781, 37.469833, 47.922279>,  <31.673759, 38.132000, 47.687874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919781, 37.469833, 47.922279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198757, 37.737015, 48.026142>,  <32.366142, 37.897324, 48.088459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198757, 37.737015, 48.026142>,  <31.919781, 37.469833, 47.922279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198757, 37.737015, 48.026142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040377, -0.325121, 0.944810,
		0.715506, -0.669431, -0.199783,
		0.697439, 0.667951, 0.259655,
		32.407990, 37.937401, 48.104038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880117, 36.660858, 47.898746>,  <31.919781, 37.469833, 47.922279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880117, 36.660858, 47.898746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645399, 36.380363, 48.060703>,  <31.504568, 36.212067, 48.157879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645399, 36.380363, 48.060703>,  <31.880117, 36.660858, 47.898746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645399, 36.380363, 48.060703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220731, -0.342571, -0.913194,
		0.779070, -0.625230, 0.046234,
		-0.586794, -0.701236, 0.404895,
		31.469360, 36.169994, 48.182171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028736, 36.058495, 47.546314>,  <31.880117, 36.660858, 47.898746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028736, 36.058495, 47.546314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657269, 36.053650, 47.694603>,  <31.434389, 36.050743, 47.783577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657269, 36.053650, 47.694603>,  <32.028736, 36.058495, 47.546314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657269, 36.053650, 47.694603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365300, -0.143439, -0.919773,
		0.064318, -0.989585, 0.128782,
		-0.928665, -0.012114, 0.370721,
		31.378670, 36.050014, 47.805820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836477, 35.396870, 47.259464>,  <32.028736, 36.058495, 47.546314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836477, 35.396870, 47.259464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516552, 35.620781, 47.346130>,  <31.324596, 35.755127, 47.398132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516552, 35.620781, 47.346130>,  <31.836477, 35.396870, 47.259464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516552, 35.620781, 47.346130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455672, -0.331270, -0.826210,
		-0.390724, -0.759541, 0.520031,
		-0.799811, 0.559784, 0.216666,
		31.276608, 35.788715, 47.411129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276957, 34.992443, 47.071293>,  <31.836477, 35.396870, 47.259464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276957, 34.992443, 47.071293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.140993, 35.368412, 47.084034>,  <31.059416, 35.593994, 47.091679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.140993, 35.368412, 47.084034>,  <31.276957, 34.992443, 47.071293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140993, 35.368412, 47.084034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386965, -0.108906, -0.915641,
		-0.857158, -0.323562, 0.400733,
		-0.339909, 0.939918, 0.031857,
		31.039021, 35.650387, 47.093590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529428, 34.973724, 47.009476>,  <31.276957, 34.992443, 47.071293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529428, 34.973724, 47.009476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609695, 35.336147, 46.860458>,  <30.657856, 35.553600, 46.771049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609695, 35.336147, 46.860458>,  <30.529428, 34.973724, 47.009476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609695, 35.336147, 46.860458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420871, -0.263661, -0.867958,
		-0.884647, 0.330962, 0.328427,
		0.200668, 0.906061, -0.372539,
		30.669895, 35.607967, 46.748695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981218, 35.138535, 46.603783>,  <30.529428, 34.973724, 47.009476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981218, 35.138535, 46.603783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246145, 35.417049, 46.493134>,  <30.405102, 35.584160, 46.426743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246145, 35.417049, 46.493134>,  <29.981218, 35.138535, 46.603783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246145, 35.417049, 46.493134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301207, -0.090606, -0.949244,
		-0.686011, 0.712021, 0.149717,
		0.662317, 0.696288, -0.276623,
		30.444839, 35.625935, 46.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610739, 35.678219, 46.174519>,  <29.981218, 35.138535, 46.603783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610739, 35.678219, 46.174519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003214, 35.692062, 46.098541>,  <30.238699, 35.700367, 46.052956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003214, 35.692062, 46.098541>,  <29.610739, 35.678219, 46.174519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003214, 35.692062, 46.098541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182073, -0.161376, -0.969952,
		-0.064216, 0.986286, -0.152039,
		0.981186, 0.034605, -0.189939,
		30.297569, 35.702442, 46.041561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.540016, 33.332458, 51.150223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661755, 33.710350, 51.101456>,  <33.734798, 33.937084, 51.072197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661755, 33.710350, 51.101456>,  <33.540016, 33.332458, 51.150223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661755, 33.710350, 51.101456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582589, -0.285867, -0.760835,
		-0.753632, 0.160535, -0.637391,
		0.304350, 0.944727, -0.121913,
		33.753059, 33.993767, 51.064880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357388, 33.691818, 50.382072>,  <33.540016, 33.332458, 51.150223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357388, 33.691818, 50.382072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699532, 33.765541, 50.575729>,  <33.904819, 33.809776, 50.691921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699532, 33.765541, 50.575729>,  <33.357388, 33.691818, 50.382072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699532, 33.765541, 50.575729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517666, -0.339454, -0.785362,
		0.019593, 0.922389, -0.385765,
		0.855359, 0.184310, 0.484140,
		33.956139, 33.820835, 50.720970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662331, 34.061111, 49.995174>,  <33.357388, 33.691818, 50.382072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662331, 34.061111, 49.995174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.969910, 33.930599, 50.215084>,  <34.154457, 33.852291, 50.347031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.969910, 33.930599, 50.215084>,  <33.662331, 34.061111, 49.995174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969910, 33.930599, 50.215084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531805, -0.150827, -0.833328,
		0.354820, 0.933162, 0.057540,
		0.768951, -0.326281, 0.549777,
		34.200596, 33.832714, 50.380016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197586, 34.340069, 49.679092>,  <33.662331, 34.061111, 49.995174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197586, 34.340069, 49.679092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.383114, 34.062096, 49.898888>,  <34.494431, 33.895309, 50.030766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.383114, 34.062096, 49.898888>,  <34.197586, 34.340069, 49.679092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383114, 34.062096, 49.898888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467041, -0.335247, -0.818219,
		0.752823, 0.636138, 0.169069,
		0.463821, -0.694937, 0.549484,
		34.522259, 33.853615, 50.063732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859337, 34.318451, 49.482540>,  <34.197586, 34.340069, 49.679092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859337, 34.318451, 49.482540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.805817, 33.963448, 49.658920>,  <34.773705, 33.750446, 49.764748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.805817, 33.963448, 49.658920>,  <34.859337, 34.318451, 49.482540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805817, 33.963448, 49.658920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346077, -0.458779, -0.818384,
		0.928617, 0.043104, 0.368529,
		-0.133798, -0.887504, 0.440948,
		34.765678, 33.697197, 49.791206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484535, 33.919292, 49.433201>,  <34.859337, 34.318451, 49.482540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484535, 33.919292, 49.433201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179150, 33.662312, 49.459679>,  <34.995918, 33.508121, 49.475567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179150, 33.662312, 49.459679>,  <35.484535, 33.919292, 49.433201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179150, 33.662312, 49.459679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290646, -0.433291, -0.853103,
		0.576760, -0.632071, 0.517527,
		-0.763461, -0.642453, 0.066196,
		34.950111, 33.469574, 49.479538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746414, 33.181629, 49.263168>,  <35.484535, 33.919292, 49.433201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746414, 33.181629, 49.263168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.351509, 33.124008, 49.236130>,  <35.114567, 33.089436, 49.219906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.351509, 33.124008, 49.236130>,  <35.746414, 33.181629, 49.263168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351509, 33.124008, 49.236130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154866, -0.772230, -0.616180,
		0.036561, -0.618797, 0.784699,
		-0.987259, -0.144051, -0.067597,
		35.055332, 33.080791, 49.215851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675831, 32.433987, 49.276665>,  <35.746414, 33.181629, 49.263168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675831, 32.433987, 49.276665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345215, 32.604588, 49.129734>,  <35.146847, 32.706947, 49.041576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345215, 32.604588, 49.129734>,  <35.675831, 32.433987, 49.276665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345215, 32.604588, 49.129734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098086, -0.533473, -0.840110,
		-0.554275, -0.730410, 0.399100,
		-0.826534, 0.426506, -0.367333,
		35.097252, 32.732536, 49.019535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377495, 31.843801, 48.897068>,  <35.675831, 32.433987, 49.276665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377495, 31.843801, 48.897068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.177349, 32.157444, 48.750198>,  <35.057262, 32.345631, 48.662079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.177349, 32.157444, 48.750198>,  <35.377495, 31.843801, 48.897068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177349, 32.157444, 48.750198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141619, -0.492483, -0.858723,
		-0.854157, -0.377672, 0.357463,
		-0.500361, 0.784107, -0.367172,
		35.027241, 32.392677, 48.640045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810677, 31.591961, 48.446663>,  <35.377495, 31.843801, 48.897068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810677, 31.591961, 48.446663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.865852, 31.969265, 48.325840>,  <34.898956, 32.195648, 48.253345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.865852, 31.969265, 48.325840>,  <34.810677, 31.591961, 48.446663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865852, 31.969265, 48.325840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049603, -0.298008, -0.953273,
		-0.989198, 0.146476, 0.005682,
		0.137938, 0.943258, -0.302055,
		34.907234, 32.252243, 48.235222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625282, 31.558741, 47.790623>,  <34.810677, 31.591961, 48.446663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625282, 31.558741, 47.790623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794716, 31.921074, 47.793243>,  <34.896374, 32.138474, 47.794815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794716, 31.921074, 47.793243>,  <34.625282, 31.558741, 47.790623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794716, 31.921074, 47.793243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009819, 0.002638, -0.999948,
		-0.905806, 0.423622, -0.007777,
		0.423580, 0.905835, 0.006549,
		34.921791, 32.192825, 47.795208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187622, 32.079544, 47.386814>,  <34.625282, 31.558741, 47.790623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187622, 32.079544, 47.386814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.577652, 32.167336, 47.373779>,  <34.811668, 32.220009, 47.365959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.577652, 32.167336, 47.373779>,  <34.187622, 32.079544, 47.386814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577652, 32.167336, 47.373779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000631, -0.149605, -0.988746,
		-0.221882, 0.964079, -0.146015,
		0.975073, 0.219477, -0.032586,
		34.870174, 32.233177, 47.364002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671204, 32.559563, 47.329704>,  <34.187622, 32.079544, 47.386814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671204, 32.559563, 47.329704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.298077, 32.562580, 47.185596>,  <33.074200, 32.564392, 47.099133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.298077, 32.562580, 47.185596>,  <33.671204, 32.559563, 47.329704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298077, 32.562580, 47.185596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351045, -0.244790, 0.903795,
		-0.081372, 0.969547, 0.230992,
		-0.932816, 0.007545, -0.360273,
		33.018230, 32.564842, 47.077515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342014, 33.046856, 47.682320>,  <33.671204, 32.559563, 47.329704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342014, 33.046856, 47.682320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038742, 32.818359, 47.556561>,  <32.856781, 32.681259, 47.481106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038742, 32.818359, 47.556561>,  <33.342014, 33.046856, 47.682320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038742, 32.818359, 47.556561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502835, 0.205252, 0.839660,
		-0.415121, 0.794701, -0.442860,
		-0.758176, -0.571246, -0.314399,
		32.811291, 32.646984, 47.462242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821861, 33.339394, 47.991966>,  <33.342014, 33.046856, 47.682320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821861, 33.339394, 47.991966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673336, 32.977680, 47.907684>,  <32.584221, 32.760651, 47.857117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673336, 32.977680, 47.907684>,  <32.821861, 33.339394, 47.991966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673336, 32.977680, 47.907684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542486, 0.027117, 0.839627,
		-0.753549, 0.426066, -0.500632,
		-0.371312, -0.904286, -0.210701,
		32.561943, 32.706394, 47.844475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160099, 33.455173, 47.825340>,  <32.821861, 33.339394, 47.991966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160099, 33.455173, 47.825340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.211082, 33.080544, 47.955933>,  <32.241673, 32.855766, 48.034286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.211082, 33.080544, 47.955933>,  <32.160099, 33.455173, 47.825340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211082, 33.080544, 47.955933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315748, 0.273722, 0.908504,
		-0.940243, -0.218883, -0.260832,
		0.127460, -0.936572, 0.326478,
		32.249321, 32.799572, 48.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502920, 33.306915, 48.081551>,  <32.160099, 33.455173, 47.825340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502920, 33.306915, 48.081551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779652, 33.074535, 48.253067>,  <31.945690, 32.935108, 48.355980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779652, 33.074535, 48.253067>,  <31.502920, 33.306915, 48.081551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779652, 33.074535, 48.253067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239387, 0.375724, 0.895280,
		-0.681223, -0.722030, 0.120865,
		0.691830, -0.580952, 0.428796,
		31.987202, 32.900249, 48.381706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097729, 32.961067, 48.664669>,  <31.502920, 33.306915, 48.081551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097729, 32.961067, 48.664669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484398, 32.924465, 48.760307>,  <31.716400, 32.902504, 48.817692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484398, 32.924465, 48.760307>,  <31.097729, 32.961067, 48.664669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484398, 32.924465, 48.760307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197694, 0.326573, 0.924266,
		-0.162657, -0.940732, 0.297600,
		0.966675, -0.091505, 0.239096,
		31.774401, 32.897015, 48.832035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080276, 32.657154, 49.240330>,  <31.097729, 32.961067, 48.664669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080276, 32.657154, 49.240330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444391, 32.817814, 49.280434>,  <31.662861, 32.914207, 49.304497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444391, 32.817814, 49.280434>,  <31.080276, 32.657154, 49.240330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444391, 32.817814, 49.280434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267673, 0.386305, 0.882678,
		0.315791, -0.830331, 0.459159,
		0.910290, 0.401645, 0.100265,
		31.717478, 32.938309, 49.310513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111620, 32.754646, 49.961205>,  <31.080276, 32.657154, 49.240330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111620, 32.754646, 49.961205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.391260, 33.005245, 49.823360>,  <31.559044, 33.155605, 49.740654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.391260, 33.005245, 49.823360>,  <31.111620, 32.754646, 49.961205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391260, 33.005245, 49.823360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114817, 0.574062, 0.810722,
		0.705746, -0.527209, 0.473259,
		0.699100, 0.626502, -0.344609,
		31.600990, 33.193195, 49.719978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617662, 32.887749, 50.477062>,  <31.111620, 32.754646, 49.961205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617662, 32.887749, 50.477062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.652485, 33.199406, 50.228752>,  <31.673378, 33.386398, 50.079765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.652485, 33.199406, 50.228752>,  <31.617662, 32.887749, 50.477062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652485, 33.199406, 50.228752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066626, 0.626297, 0.776732,
		0.993973, -0.026258, 0.106433,
		0.087054, 0.779142, -0.620773,
		31.678600, 33.433147, 50.042519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982164, 33.319778, 50.864616>,  <31.617662, 32.887749, 50.477062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982164, 33.319778, 50.864616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860025, 33.577278, 50.583946>,  <31.786743, 33.731777, 50.415543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860025, 33.577278, 50.583946>,  <31.982164, 33.319778, 50.864616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860025, 33.577278, 50.583946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022940, 0.741627, 0.670420,
		0.951965, 0.188613, -0.241220,
		-0.305345, 0.643751, -0.701676,
		31.768421, 33.770405, 50.373444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509911, 33.843380, 50.887161>,  <31.982164, 33.319778, 50.864616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509911, 33.843380, 50.887161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.174236, 34.000828, 50.737057>,  <31.972830, 34.095299, 50.646992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.174236, 34.000828, 50.737057>,  <32.509911, 33.843380, 50.887161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174236, 34.000828, 50.737057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025794, 0.718058, 0.695505,
		0.543226, 0.573981, -0.612741,
		-0.839190, 0.393621, -0.375263,
		31.922480, 34.118916, 50.624477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650993, 34.524605, 50.832607>,  <32.509911, 33.843380, 50.887161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650993, 34.524605, 50.832607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251240, 34.530041, 50.819656>,  <32.011387, 34.533302, 50.811886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251240, 34.530041, 50.819656>,  <32.650993, 34.524605, 50.832607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251240, 34.530041, 50.819656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011552, 0.743469, 0.668670,
		0.033165, 0.668632, -0.742854,
		-0.999383, 0.013595, -0.032381,
		31.951426, 34.534119, 50.809940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436440, 35.213722, 50.816856>,  <32.650993, 34.524605, 50.832607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436440, 35.213722, 50.816856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.104538, 35.019054, 50.926155>,  <31.905397, 34.902256, 50.991734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.104538, 35.019054, 50.926155>,  <32.436440, 35.213722, 50.816856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104538, 35.019054, 50.926155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190940, 0.707551, 0.680377,
		-0.524452, 0.512373, -0.680018,
		-0.829754, -0.486668, 0.273245,
		31.855612, 34.873055, 51.008129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981529, 35.700741, 50.720070>,  <32.436440, 35.213722, 50.816856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981529, 35.700741, 50.720070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844418, 35.467476, 51.014668>,  <31.762150, 35.327518, 51.191425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844418, 35.467476, 51.014668>,  <31.981529, 35.700741, 50.720070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844418, 35.467476, 51.014668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256110, 0.812308, 0.523988,
		-0.903831, -0.009012, -0.427795,
		-0.342779, -0.583159, 0.736497,
		31.741583, 35.292530, 51.235619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595467, 35.793591, 51.411221>,  <31.981529, 35.700741, 50.720070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595467, 35.793591, 51.411221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.532549, 36.151863, 51.244839>,  <31.494799, 36.366825, 51.145008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.532549, 36.151863, 51.244839>,  <31.595467, 35.793591, 51.411221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532549, 36.151863, 51.244839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305772, -0.444669, -0.841886,
		-0.939022, -0.005236, 0.343817,
		-0.157293, 0.895679, -0.415953,
		31.485361, 36.420567, 51.120052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048752, 35.628368, 51.073345>,  <31.595467, 35.793591, 51.411221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048752, 35.628368, 51.073345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190985, 35.963348, 50.907341>,  <31.276323, 36.164337, 50.807739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190985, 35.963348, 50.907341>,  <31.048752, 35.628368, 51.073345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190985, 35.963348, 50.907341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264707, -0.335613, -0.904043,
		-0.896377, 0.431316, 0.102342,
		0.355581, 0.837454, -0.415008,
		31.297659, 36.214584, 50.782837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564867, 35.629005, 50.563881>,  <31.048752, 35.628368, 51.073345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564867, 35.629005, 50.563881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.819065, 35.914452, 50.445961>,  <30.971584, 36.085720, 50.375210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.819065, 35.914452, 50.445961>,  <30.564867, 35.629005, 50.563881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819065, 35.914452, 50.445961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157491, -0.253978, -0.954302,
		-0.755872, 0.652882, -0.049014,
		0.635495, 0.713611, -0.294798,
		31.009714, 36.128536, 50.357521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268791, 36.059357, 49.950859>,  <30.564867, 35.629005, 50.563881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268791, 36.059357, 49.950859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.660789, 36.136986, 49.933228>,  <30.895988, 36.183563, 49.922649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.660789, 36.136986, 49.933228>,  <30.268791, 36.059357, 49.950859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660789, 36.136986, 49.933228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040760, -0.021072, -0.998947,
		-0.194801, 0.980760, -0.012740,
		0.979995, 0.194076, -0.044081,
		30.954788, 36.195210, 49.920002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463385, 36.680515, 49.488861>,  <30.268791, 36.059357, 49.950859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463385, 36.680515, 49.488861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.779585, 36.435928, 49.502769>,  <30.969305, 36.289177, 49.511116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.779585, 36.435928, 49.502769>,  <30.463385, 36.680515, 49.488861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779585, 36.435928, 49.502769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014909, -0.037542, -0.999184,
		0.612277, 0.790376, -0.020561,
		0.790503, -0.611471, 0.034770,
		31.016735, 36.252487, 49.513199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903551, 37.006416, 49.075787>,  <30.463385, 36.680515, 49.488861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903551, 37.006416, 49.075787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.004456, 36.619957, 49.097385>,  <31.064999, 36.388081, 49.110344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.004456, 36.619957, 49.097385>,  <30.903551, 37.006416, 49.075787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004456, 36.619957, 49.097385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118626, -0.086256, -0.989185,
		0.960360, 0.243130, -0.136370,
		0.252263, -0.966151, 0.053995,
		31.080135, 36.330112, 49.113583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515011, 36.755852, 48.619072>,  <30.903551, 37.006416, 49.075787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515011, 36.755852, 48.619072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.248396, 36.465229, 48.685814>,  <31.088427, 36.290855, 48.725857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.248396, 36.465229, 48.685814>,  <31.515011, 36.755852, 48.619072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248396, 36.465229, 48.685814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108114, -0.127241, -0.985962,
		0.737589, -0.675221, 0.006260,
		-0.666538, -0.726558, 0.166853,
		31.048435, 36.247261, 48.735870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012493, 37.277534, 48.657509>,  <31.515011, 36.755852, 48.619072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012493, 37.277534, 48.657509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207409, 37.623390, 48.608612>,  <32.324360, 37.830906, 48.579273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207409, 37.623390, 48.608612>,  <32.012493, 37.277534, 48.657509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207409, 37.623390, 48.608612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212000, 0.018666, 0.977091,
		0.847116, -0.502041, -0.174209,
		0.487288, 0.864643, -0.122245,
		32.353596, 37.882782, 48.571938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710678, 37.283085, 49.021713>,  <32.012493, 37.277534, 48.657509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710678, 37.283085, 49.021713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.615376, 37.669662, 48.983311>,  <32.558193, 37.901608, 48.960270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.615376, 37.669662, 48.983311>,  <32.710678, 37.283085, 49.021713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615376, 37.669662, 48.983311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348058, 0.177257, 0.920563,
		0.906691, 0.185916, -0.378612,
		-0.238259, 0.966444, -0.096008,
		32.543900, 37.959595, 48.954510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265594, 37.590099, 49.350197>,  <32.710678, 37.283085, 49.021713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265594, 37.590099, 49.350197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.975647, 37.862793, 49.310608>,  <32.801678, 38.026409, 49.286854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.975647, 37.862793, 49.310608>,  <33.265594, 37.590099, 49.350197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975647, 37.862793, 49.310608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200038, 0.345787, 0.916742,
		0.659203, 0.644720, -0.387024,
		-0.724870, 0.681739, -0.098975,
		32.758186, 38.067314, 49.280914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609886, 38.212173, 49.485844>,  <33.265594, 37.590099, 49.350197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609886, 38.212173, 49.485844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226433, 38.290459, 49.568527>,  <32.996361, 38.337429, 49.618137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226433, 38.290459, 49.568527>,  <33.609886, 38.212173, 49.485844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226433, 38.290459, 49.568527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260484, 0.310258, 0.914269,
		0.114799, 0.930289, -0.348401,
		-0.958629, 0.195710, 0.206709,
		32.938843, 38.349171, 49.630539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593407, 38.901592, 49.816860>,  <33.609886, 38.212173, 49.485844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593407, 38.901592, 49.816860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241577, 38.746643, 49.927341>,  <33.030479, 38.653675, 49.993629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241577, 38.746643, 49.927341>,  <33.593407, 38.901592, 49.816860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241577, 38.746643, 49.927341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142317, 0.339741, 0.929689,
		-0.453973, 0.857041, -0.243699,
		-0.879576, -0.387371, 0.276205,
		32.977703, 38.630432, 50.010204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197468, 39.466793, 50.136921>,  <33.593407, 38.901592, 49.816860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197468, 39.466793, 50.136921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038589, 39.120056, 50.257465>,  <32.943260, 38.912014, 50.329792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038589, 39.120056, 50.257465>,  <33.197468, 39.466793, 50.136921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038589, 39.120056, 50.257465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000439, 0.328193, 0.944611,
		-0.917732, 0.375332, -0.129978,
		-0.397201, -0.866842, 0.301358,
		32.919430, 38.860004, 50.347874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574638, 39.684200, 50.588421>,  <33.197468, 39.466793, 50.136921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574638, 39.684200, 50.588421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669117, 39.308826, 50.689259>,  <32.725803, 39.083603, 50.749760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669117, 39.308826, 50.689259>,  <32.574638, 39.684200, 50.588421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669117, 39.308826, 50.689259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085773, 0.238287, 0.967400,
		-0.967911, -0.250123, -0.024209,
		0.236200, -0.938433, 0.252095,
		32.739979, 39.027298, 50.764889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029133, 39.360748, 51.114349>,  <32.574638, 39.684200, 50.588421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029133, 39.360748, 51.114349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.372440, 39.156796, 51.137650>,  <32.578426, 39.034424, 51.151630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.372440, 39.156796, 51.137650>,  <32.029133, 39.360748, 51.114349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372440, 39.156796, 51.137650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017379, 0.084569, 0.996266,
		-0.512907, -0.856076, 0.063722,
		0.858268, -0.509885, 0.058254,
		32.629921, 39.003830, 51.155125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970619, 38.843342, 51.654324>,  <32.029133, 39.360748, 51.114349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970619, 38.843342, 51.654324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.367538, 38.867161, 51.610867>,  <32.605690, 38.881454, 51.584793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.367538, 38.867161, 51.610867>,  <31.970619, 38.843342, 51.654324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367538, 38.867161, 51.610867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101877, 0.106785, 0.989049,
		0.070496, -0.992497, 0.099896,
		0.992296, 0.059547, -0.108641,
		32.665226, 38.885025, 51.578274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.967682, 34.993404, 36.443401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334644, 35.145245, 36.491196>,  <35.554821, 35.236351, 36.519871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334644, 35.145245, 36.491196>,  <34.967682, 34.993404, 36.443401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334644, 35.145245, 36.491196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280563, 0.403999, 0.870672,
		0.282239, -0.832278, 0.477132,
		0.917402, 0.379603, 0.119482,
		35.609863, 35.259125, 36.527039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069904, 34.860168, 37.180279>,  <34.967682, 34.993404, 36.443401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069904, 34.860168, 37.180279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291782, 35.170483, 37.059963>,  <35.424908, 35.356670, 36.987774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291782, 35.170483, 37.059963>,  <35.069904, 34.860168, 37.180279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291782, 35.170483, 37.059963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225483, 0.488130, 0.843141,
		0.800919, -0.399863, 0.445689,
		0.554695, 0.775783, -0.300790,
		35.458191, 35.403217, 36.969727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507210, 34.985489, 37.671104>,  <35.069904, 34.860168, 37.180279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507210, 34.985489, 37.671104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490742, 35.341434, 37.489361>,  <35.480862, 35.555004, 37.380314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490742, 35.341434, 37.489361>,  <35.507210, 34.985489, 37.671104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490742, 35.341434, 37.489361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251509, 0.430873, 0.866655,
		0.966979, 0.149958, 0.206069,
		-0.041172, 0.889866, -0.454361,
		35.478390, 35.608395, 37.353054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814514, 35.447144, 38.100651>,  <35.507210, 34.985489, 37.671104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814514, 35.447144, 38.100651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577423, 35.674557, 37.872459>,  <35.435169, 35.811005, 37.735542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577423, 35.674557, 37.872459>,  <35.814514, 35.447144, 38.100651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577423, 35.674557, 37.872459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378024, 0.429068, 0.820365,
		0.711178, 0.701907, -0.039401,
		-0.592726, 0.568531, -0.570481,
		35.399605, 35.845116, 37.701317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844372, 35.947773, 38.472023>,  <35.814514, 35.447144, 38.100651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844372, 35.947773, 38.472023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541683, 36.036964, 38.226208>,  <35.360069, 36.090481, 38.078720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541683, 36.036964, 38.226208>,  <35.844372, 35.947773, 38.472023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541683, 36.036964, 38.226208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504193, 0.399302, 0.765733,
		0.416128, 0.889290, -0.189735,
		-0.756721, 0.222980, -0.614535,
		35.314667, 36.103859, 38.041847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799736, 36.526749, 38.604782>,  <35.844372, 35.947773, 38.472023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799736, 36.526749, 38.604782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449188, 36.392437, 38.466663>,  <35.238861, 36.311852, 38.383793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449188, 36.392437, 38.466663>,  <35.799736, 36.526749, 38.604782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449188, 36.392437, 38.466663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479233, 0.536308, 0.694773,
		-0.048099, 0.774357, -0.630918,
		-0.876369, -0.335775, -0.345302,
		35.186279, 36.291706, 38.363071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233280, 37.063549, 38.761433>,  <35.799736, 36.526749, 38.604782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233280, 37.063549, 38.761433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001698, 36.746647, 38.684349>,  <34.862747, 36.556503, 38.638100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001698, 36.746647, 38.684349>,  <35.233280, 37.063549, 38.761433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001698, 36.746647, 38.684349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743282, 0.415673, 0.524164,
		-0.335170, 0.446703, -0.829528,
		-0.578958, -0.792258, -0.192705,
		34.828011, 36.508968, 38.626537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616238, 37.369122, 38.661922>,  <35.233280, 37.063549, 38.761433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616238, 37.369122, 38.661922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503956, 36.995201, 38.748966>,  <34.436588, 36.770847, 38.801193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503956, 36.995201, 38.748966>,  <34.616238, 37.369122, 38.661922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503956, 36.995201, 38.748966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767949, 0.354747, 0.533301,
		-0.575726, -0.017413, -0.817457,
		-0.280704, -0.934800, 0.217609,
		34.419746, 36.714760, 38.814247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939056, 37.448269, 38.597740>,  <34.616238, 37.369122, 38.661922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939056, 37.448269, 38.597740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983147, 37.125401, 38.829716>,  <34.009602, 36.931679, 38.968899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983147, 37.125401, 38.829716>,  <33.939056, 37.448269, 38.597740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983147, 37.125401, 38.829716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732947, 0.328083, 0.595946,
		-0.671297, -0.490750, -0.555450,
		0.110227, -0.807172, 0.579935,
		34.016216, 36.883247, 39.003696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273678, 37.162407, 38.676144>,  <33.939056, 37.448269, 38.597740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273678, 37.162407, 38.676144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463898, 36.996155, 38.986267>,  <33.578030, 36.896404, 39.172340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463898, 36.996155, 38.986267>,  <33.273678, 37.162407, 38.676144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463898, 36.996155, 38.986267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706265, 0.345048, 0.618169,
		-0.524449, -0.841543, -0.129459,
		0.475546, -0.415630, 0.775312,
		33.606560, 36.871468, 39.218861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807556, 36.825916, 39.116936>,  <33.273678, 37.162407, 38.676144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807556, 36.825916, 39.116936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095844, 36.855900, 39.392601>,  <33.268818, 36.873890, 39.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095844, 36.855900, 39.392601>,  <32.807556, 36.825916, 39.116936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095844, 36.855900, 39.392601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648042, 0.425907, 0.631383,
		-0.246190, -0.901656, 0.355537,
		0.720716, 0.074963, 0.689165,
		33.312057, 36.878387, 39.599350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458920, 36.632542, 39.763386>,  <32.807556, 36.825916, 39.116936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458920, 36.632542, 39.763386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779652, 36.850582, 39.861317>,  <32.972092, 36.981407, 39.920074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779652, 36.850582, 39.861317>,  <32.458920, 36.632542, 39.763386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779652, 36.850582, 39.861317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469422, 0.321068, 0.822532,
		0.369756, -0.774455, 0.513323,
		0.801825, 0.545101, 0.244829,
		33.020199, 37.014111, 39.934765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177353, 35.988918, 40.029465>,  <32.458920, 36.632542, 39.763386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177353, 35.988918, 40.029465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791807, 35.883888, 40.047409>,  <31.560478, 35.820869, 40.058178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791807, 35.883888, 40.047409>,  <32.177353, 35.988918, 40.029465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791807, 35.883888, 40.047409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008444, -0.138223, -0.990365,
		0.266248, -0.954960, 0.131011,
		-0.963867, -0.262577, 0.044865,
		31.502647, 35.805115, 40.060867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089489, 35.327213, 39.851967>,  <32.177353, 35.988918, 40.029465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089489, 35.327213, 39.851967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736038, 35.492111, 39.763180>,  <31.523970, 35.591049, 39.709908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736038, 35.492111, 39.763180>,  <32.089489, 35.327213, 39.851967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736038, 35.492111, 39.763180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146080, -0.207671, -0.967230,
		-0.444828, -0.887090, 0.123282,
		-0.883623, 0.412242, -0.221964,
		31.470951, 35.615784, 39.696590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746143, 34.908730, 39.354282>,  <32.089489, 35.327213, 39.851967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746143, 34.908730, 39.354282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499502, 35.222820, 39.331577>,  <31.351517, 35.411274, 39.317955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499502, 35.222820, 39.331577>,  <31.746143, 34.908730, 39.354282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499502, 35.222820, 39.331577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201660, -0.227228, -0.952733,
		-0.761008, -0.576012, 0.298458,
		-0.616604, 0.785224, -0.056763,
		31.314522, 35.458389, 39.314548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072731, 34.728245, 38.989002>,  <31.746143, 34.908730, 39.354282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072731, 34.728245, 38.989002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160669, 35.115120, 38.938057>,  <31.213432, 35.347244, 38.907490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160669, 35.115120, 38.938057>,  <31.072731, 34.728245, 38.989002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160669, 35.115120, 38.938057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022533, -0.135556, -0.990513,
		-0.975274, 0.214891, -0.051595,
		0.219846, 0.967185, -0.127362,
		31.226624, 35.405277, 38.899849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640551, 34.914326, 38.333393>,  <31.072731, 34.728245, 38.989002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640551, 34.914326, 38.333393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904182, 35.211021, 38.383091>,  <31.062361, 35.389038, 38.412910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904182, 35.211021, 38.383091>,  <30.640551, 34.914326, 38.333393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904182, 35.211021, 38.383091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008884, 0.172867, -0.984905,
		-0.752020, 0.648028, 0.120522,
		0.659080, 0.741739, 0.124243,
		31.101906, 35.433544, 38.420364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531185, 35.275517, 37.761116>,  <30.640551, 34.914326, 38.333393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531185, 35.275517, 37.761116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874727, 35.433365, 37.891739>,  <31.080853, 35.528072, 37.970112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874727, 35.433365, 37.891739>,  <30.531185, 35.275517, 37.761116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874727, 35.433365, 37.891739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267213, 0.198714, -0.942926,
		-0.436990, 0.897099, 0.065219,
		0.858858, 0.394622, 0.326553,
		31.132385, 35.551750, 37.989704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499247, 35.825405, 37.455887>,  <30.531185, 35.275517, 37.761116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499247, 35.825405, 37.455887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888748, 35.779343, 37.534420>,  <31.122448, 35.751705, 37.581539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888748, 35.779343, 37.534420>,  <30.499247, 35.825405, 37.455887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888748, 35.779343, 37.534420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218628, 0.233310, -0.947506,
		0.063304, 0.965560, 0.252362,
		0.973753, -0.115154, 0.196329,
		31.180874, 35.744797, 37.593319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774801, 36.384243, 37.187649>,  <30.499247, 35.825405, 37.455887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774801, 36.384243, 37.187649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075970, 36.123173, 37.221394>,  <31.256670, 35.966530, 37.241642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075970, 36.123173, 37.221394>,  <30.774801, 36.384243, 37.187649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075970, 36.123173, 37.221394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153279, 0.049246, -0.986955,
		0.640011, 0.756032, 0.137121,
		0.752922, -0.652680, 0.084366,
		31.301846, 35.927368, 37.246704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358053, 36.691692, 36.844753>,  <30.774801, 36.384243, 37.187649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358053, 36.691692, 36.844753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439568, 36.300087, 36.845707>,  <31.488476, 36.065125, 36.846279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439568, 36.300087, 36.845707>,  <31.358053, 36.691692, 36.844753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439568, 36.300087, 36.845707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258068, 0.051367, -0.964760,
		0.944390, 0.197220, 0.263119,
		0.203785, -0.979013, 0.002386,
		31.500704, 36.006382, 36.846424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100285, 36.577785, 36.534145>,  <31.358053, 36.691692, 36.844753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100285, 36.577785, 36.534145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853422, 36.265709, 36.493317>,  <31.705303, 36.078465, 36.468819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853422, 36.265709, 36.493317>,  <32.100285, 36.577785, 36.534145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853422, 36.265709, 36.493317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136634, 0.021495, -0.990388,
		0.774884, -0.625175, 0.093334,
		-0.617160, -0.780189, -0.102076,
		31.668274, 36.031651, 36.462692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157368, 36.429668, 35.860596>,  <32.100285, 36.577785, 36.534145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157368, 36.429668, 35.860596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887157, 36.147640, 35.946892>,  <31.725031, 35.978424, 35.998669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887157, 36.147640, 35.946892>,  <32.157368, 36.429668, 35.860596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887157, 36.147640, 35.946892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041710, -0.255587, -0.965886,
		0.736155, -0.661480, 0.143247,
		-0.675526, -0.705067, 0.215742,
		31.684500, 35.936119, 36.011616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335243, 35.756664, 35.453140>,  <32.157368, 36.429668, 35.860596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335243, 35.756664, 35.453140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950464, 35.713959, 35.553749>,  <31.719597, 35.688335, 35.614117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950464, 35.713959, 35.553749>,  <32.335243, 35.756664, 35.453140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950464, 35.713959, 35.553749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162294, -0.517310, -0.840268,
		0.219827, -0.849112, 0.480296,
		-0.961944, -0.106765, 0.251525,
		31.661880, 35.681931, 35.629208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186058, 35.149261, 35.261272>,  <32.335243, 35.756664, 35.453140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186058, 35.149261, 35.261272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824343, 35.319290, 35.277119>,  <31.607313, 35.421307, 35.286625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824343, 35.319290, 35.277119>,  <32.186058, 35.149261, 35.261272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824343, 35.319290, 35.277119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190873, -0.319559, -0.928143,
		-0.381872, -0.846872, 0.370110,
		-0.904291, 0.425076, 0.039614,
		31.553055, 35.446812, 35.289001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656557, 34.747868, 34.880833>,  <32.186058, 35.149261, 35.261272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656557, 34.747868, 34.880833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529524, 35.126595, 34.860100>,  <31.453304, 35.353828, 34.847660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529524, 35.126595, 34.860100>,  <31.656557, 34.747868, 34.880833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529524, 35.126595, 34.860100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145272, -0.102596, -0.984058,
		-0.937037, -0.304990, 0.170128,
		-0.317583, 0.946813, -0.051829,
		31.434250, 35.410637, 34.844551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097042, 34.189682, 35.104351>,  <31.656557, 34.747868, 34.880833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097042, 34.189682, 35.104351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142490, 33.856480, 34.887764>,  <32.169758, 33.656559, 34.757812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142490, 33.856480, 34.887764>,  <32.097042, 34.189682, 35.104351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142490, 33.856480, 34.887764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993076, 0.078831, 0.087101,
		-0.029871, -0.547617, 0.836196,
		0.113616, -0.833007, -0.541470,
		32.176575, 33.606579, 34.725323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513706, 33.584972, 35.492367>,  <32.097042, 34.189682, 35.104351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513706, 33.584972, 35.492367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572319, 33.651875, 35.102383>,  <32.607487, 33.692017, 34.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572319, 33.651875, 35.102383>,  <32.513706, 33.584972, 35.492367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572319, 33.651875, 35.102383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984208, -0.123604, 0.126717,
		-0.099315, -0.978135, -0.182728,
		0.146532, 0.167257, -0.974963,
		32.616280, 33.702053, 34.809895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636150, 33.283569, 36.218307>,  <32.513706, 33.584972, 35.492367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636150, 33.283569, 36.218307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940857, 33.097710, 36.398891>,  <33.123680, 32.986195, 36.507244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940857, 33.097710, 36.398891>,  <32.636150, 33.283569, 36.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940857, 33.097710, 36.398891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443033, 0.134830, 0.886308,
		-0.472696, -0.875168, -0.103148,
		0.761761, -0.464652, 0.451462,
		33.169384, 32.958313, 36.534328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360352, 32.804276, 36.786636>,  <32.636150, 33.283569, 36.218307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360352, 32.804276, 36.786636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744411, 32.886673, 36.862190>,  <32.974846, 32.936111, 36.907524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744411, 32.886673, 36.862190>,  <32.360352, 32.804276, 36.786636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744411, 32.886673, 36.862190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183431, -0.045437, 0.981982,
		0.210869, -0.977497, -0.005840,
		0.960150, 0.205998, 0.188885,
		33.032455, 32.948471, 36.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542004, 32.254478, 37.282921>,  <32.360352, 32.804276, 36.786636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542004, 32.254478, 37.282921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797913, 32.560379, 37.313499>,  <32.951458, 32.743919, 37.331848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797913, 32.560379, 37.313499>,  <32.542004, 32.254478, 37.282921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797913, 32.560379, 37.313499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094405, -0.020518, 0.995322,
		0.762747, -0.643994, 0.059070,
		0.639770, 0.764755, 0.076447,
		32.989845, 32.789806, 37.336433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071476, 32.006268, 37.703400>,  <32.542004, 32.254478, 37.282921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071476, 32.006268, 37.703400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056133, 32.405910, 37.710567>,  <33.046928, 32.645695, 37.714867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056133, 32.405910, 37.710567>,  <33.071476, 32.006268, 37.703400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056133, 32.405910, 37.710567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078882, -0.020900, 0.996665,
		0.996146, 0.036814, 0.079613,
		-0.038356, 0.999104, 0.017915,
		33.044628, 32.705643, 37.715942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474583, 32.128311, 38.281536>,  <33.071476, 32.006268, 37.703400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474583, 32.128311, 38.281536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318504, 32.491863, 38.222637>,  <33.224857, 32.709995, 38.187298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318504, 32.491863, 38.222637>,  <33.474583, 32.128311, 38.281536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318504, 32.491863, 38.222637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130889, 0.103548, 0.985975,
		0.911383, 0.403992, 0.078559,
		-0.390192, 0.908883, -0.147250,
		33.201447, 32.764526, 38.178463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883995, 32.560726, 38.695911>,  <33.474583, 32.128311, 38.281536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883995, 32.560726, 38.695911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531479, 32.741924, 38.642059>,  <33.319969, 32.850643, 38.609749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531479, 32.741924, 38.642059>,  <33.883995, 32.560726, 38.695911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531479, 32.741924, 38.642059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028336, 0.233715, 0.971892,
		0.471729, 0.860332, -0.193134,
		-0.881288, 0.452997, -0.134629,
		33.267094, 32.877823, 38.601669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977894, 33.252666, 38.998421>,  <33.883995, 32.560726, 38.695911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977894, 33.252666, 38.998421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589165, 33.158993, 38.987698>,  <33.355927, 33.102791, 38.981266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589165, 33.158993, 38.987698>,  <33.977894, 33.252666, 38.998421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589165, 33.158993, 38.987698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071083, 0.182748, 0.980587,
		-0.224735, 0.954863, -0.194245,
		-0.971824, -0.234180, -0.026804,
		33.297619, 33.088737, 38.979656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702347, 33.739166, 39.470913>,  <33.977894, 33.252666, 38.998421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702347, 33.739166, 39.470913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411831, 33.466484, 39.435608>,  <33.237522, 33.302876, 39.414425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411831, 33.466484, 39.435608>,  <33.702347, 33.739166, 39.470913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411831, 33.466484, 39.435608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237720, 0.128608, 0.962782,
		-0.644979, 0.720237, -0.255461,
		-0.726286, -0.681703, -0.088265,
		33.193947, 33.261974, 39.409130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088428, 34.010330, 39.929390>,  <33.702347, 33.739166, 39.470913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088428, 34.010330, 39.929390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037846, 33.618931, 39.864204>,  <33.007496, 33.384090, 39.825092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037846, 33.618931, 39.864204>,  <33.088428, 34.010330, 39.929390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037846, 33.618931, 39.864204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129459, -0.146603, 0.980687,
		-0.983488, 0.145112, -0.108136,
		-0.126456, -0.978494, -0.162968,
		32.999908, 33.325382, 39.815315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394123, 33.877926, 40.194633>,  <33.088428, 34.010330, 39.929390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394123, 33.877926, 40.194633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624565, 33.551281, 40.180542>,  <32.762829, 33.355293, 40.172089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624565, 33.551281, 40.180542>,  <32.394123, 33.877926, 40.194633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624565, 33.551281, 40.180542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240413, -0.210486, 0.947575,
		-0.781220, -0.537433, -0.317587,
		0.576105, -0.816616, -0.035230,
		32.797398, 33.306297, 40.169971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058201, 33.309090, 40.674026>,  <32.394123, 33.877926, 40.194633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058201, 33.309090, 40.674026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436958, 33.187469, 40.632195>,  <32.664215, 33.114498, 40.607094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436958, 33.187469, 40.632195>,  <32.058201, 33.309090, 40.674026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436958, 33.187469, 40.632195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002931, -0.317088, 0.948392,
		-0.321577, -0.898319, -0.299353,
		0.946879, -0.304103, -0.104601,
		32.721027, 33.096252, 40.600819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075108, 32.688171, 40.953197>,  <32.058201, 33.309090, 40.674026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075108, 32.688171, 40.953197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465664, 32.774467, 40.957664>,  <32.699997, 32.826244, 40.960346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465664, 32.774467, 40.957664>,  <32.075108, 32.688171, 40.953197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465664, 32.774467, 40.957664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051974, -0.284763, 0.957188,
		0.209687, -0.934005, -0.289252,
		0.976386, 0.215743, 0.011167,
		32.758579, 32.839191, 40.961014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391380, 32.148151, 41.235558>,  <32.075108, 32.688171, 40.953197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391380, 32.148151, 41.235558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644012, 32.453136, 41.291786>,  <32.795589, 32.636127, 41.325523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644012, 32.453136, 41.291786>,  <32.391380, 32.148151, 41.235558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644012, 32.453136, 41.291786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024438, -0.200792, 0.979329,
		0.774928, -0.615087, -0.145449,
		0.631577, 0.762464, 0.140568,
		32.833485, 32.681877, 41.333958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967278, 31.786634, 41.554214>,  <32.391380, 32.148151, 41.235558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967278, 31.786634, 41.554214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006969, 32.179291, 41.619370>,  <33.030785, 32.414886, 41.658463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006969, 32.179291, 41.619370>,  <32.967278, 31.786634, 41.554214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006969, 32.179291, 41.619370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269823, -0.184107, 0.945145,
		0.957783, -0.049836, -0.283139,
		0.099230, 0.981642, 0.162888,
		33.036739, 32.473782, 41.668236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591232, 31.750174, 42.002537>,  <32.967278, 31.786634, 41.554214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591232, 31.750174, 42.002537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456608, 32.120529, 42.071194>,  <33.375832, 32.342743, 42.112389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456608, 32.120529, 42.071194>,  <33.591232, 31.750174, 42.002537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456608, 32.120529, 42.071194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257083, -0.085005, 0.962643,
		0.905889, 0.368113, -0.209421,
		-0.336560, 0.925887, 0.171641,
		33.355640, 32.398296, 42.122684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131306, 32.138184, 42.373714>,  <33.591232, 31.750174, 42.002537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131306, 32.138184, 42.373714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766819, 32.291100, 42.435093>,  <33.548126, 32.382847, 42.471920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766819, 32.291100, 42.435093>,  <34.131306, 32.138184, 42.373714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766819, 32.291100, 42.435093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141369, -0.059664, 0.988158,
		0.386914, 0.922116, 0.000323,
		-0.911215, 0.382286, 0.153443,
		33.493454, 32.405785, 42.481125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159061, 32.647709, 43.046535>,  <34.131306, 32.138184, 42.373714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159061, 32.647709, 43.046535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767975, 32.571335, 43.011627>,  <33.533321, 32.525513, 42.990681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767975, 32.571335, 43.011627>,  <34.159061, 32.647709, 43.046535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767975, 32.571335, 43.011627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092685, 0.019591, 0.995503,
		-0.188362, 0.981408, -0.036851,
		-0.977716, -0.190930, -0.087271,
		33.474659, 32.514057, 42.985447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857044, 33.152058, 43.435493>,  <34.159061, 32.647709, 43.046535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857044, 33.152058, 43.435493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578571, 32.865604, 43.415543>,  <33.411488, 32.693733, 43.403572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578571, 32.865604, 43.415543>,  <33.857044, 33.152058, 43.435493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578571, 32.865604, 43.415543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210836, 0.137554, 0.967795,
		-0.686204, 0.684280, -0.246749,
		-0.696184, -0.716129, -0.049880,
		33.369717, 32.650764, 43.400578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244930, 33.438450, 43.670559>,  <33.857044, 33.152058, 43.435493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244930, 33.438450, 43.670559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202770, 33.044056, 43.722290>,  <33.177475, 32.807419, 43.753330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202770, 33.044056, 43.722290>,  <33.244930, 33.438450, 43.670559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202770, 33.044056, 43.722290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222104, 0.150109, 0.963399,
		-0.969310, 0.072816, -0.234812,
		-0.105399, -0.985984, 0.129330,
		33.171150, 32.748260, 43.761089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593445, 33.322948, 44.106735>,  <33.244930, 33.438450, 43.670559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593445, 33.322948, 44.106735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793396, 32.977844, 44.137123>,  <32.913368, 32.770782, 44.155354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793396, 32.977844, 44.137123>,  <32.593445, 33.322948, 44.106735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793396, 32.977844, 44.137123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188006, -0.022471, 0.981911,
		-0.845444, -0.505118, -0.173436,
		0.499879, -0.862758, 0.075967,
		32.943359, 32.719017, 44.159912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259167, 32.968124, 44.521839>,  <32.593445, 33.322948, 44.106735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259167, 32.968124, 44.521839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611557, 32.780346, 44.545490>,  <32.822990, 32.667679, 44.559681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611557, 32.780346, 44.545490>,  <32.259167, 32.968124, 44.521839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611557, 32.780346, 44.545490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105603, -0.073278, 0.991705,
		-0.461223, -0.879913, -0.114132,
		0.880978, -0.469450, 0.059123,
		32.875851, 32.639511, 44.563229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160706, 32.420326, 44.860603>,  <32.259167, 32.968124, 44.521839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160706, 32.420326, 44.860603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554359, 32.475151, 44.905666>,  <32.790550, 32.508045, 44.932705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554359, 32.475151, 44.905666>,  <32.160706, 32.420326, 44.860603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554359, 32.475151, 44.905666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082088, -0.211149, 0.974001,
		0.157290, -0.967796, -0.196548,
		0.984135, 0.137066, 0.112656,
		32.849602, 32.516270, 44.939465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385384, 31.752239, 45.268436>,  <32.160706, 32.420326, 44.860603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385384, 31.752239, 45.268436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655273, 32.044083, 45.313015>,  <32.817207, 32.219189, 45.339764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655273, 32.044083, 45.313015>,  <32.385384, 31.752239, 45.268436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655273, 32.044083, 45.313015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088680, -0.230041, 0.969132,
		0.732723, -0.644014, -0.219916,
		0.674724, 0.729608, 0.111445,
		32.857689, 32.262966, 45.346447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913216, 31.551655, 45.695461>,  <32.385384, 31.752239, 45.268436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913216, 31.551655, 45.695461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945641, 31.944874, 45.761242>,  <32.965096, 32.180805, 45.800709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945641, 31.944874, 45.761242>,  <32.913216, 31.551655, 45.695461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945641, 31.944874, 45.761242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038269, -0.167942, 0.985054,
		0.995974, -0.073554, -0.051234,
		0.081059, 0.983049, 0.164451,
		32.969959, 32.239788, 45.810577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348267, 31.481388, 46.256252>,  <32.913216, 31.551655, 45.695461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348267, 31.481388, 46.256252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211987, 31.855898, 46.222038>,  <33.130219, 32.080605, 46.201511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211987, 31.855898, 46.222038>,  <33.348267, 31.481388, 46.256252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211987, 31.855898, 46.222038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079830, 0.061841, 0.994889,
		0.936776, 0.345788, 0.053674,
		-0.340701, 0.936273, -0.085536,
		33.109776, 32.136780, 46.196377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769577, 31.825224, 46.761364>,  <33.348267, 31.481388, 46.256252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769577, 31.825224, 46.761364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438766, 32.036613, 46.684685>,  <33.240280, 32.163448, 46.638676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438766, 32.036613, 46.684685>,  <33.769577, 31.825224, 46.761364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438766, 32.036613, 46.684685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154295, 0.114519, 0.981365,
		0.540578, 0.841191, -0.013170,
		-0.827024, 0.528472, -0.191698,
		33.190659, 32.195156, 46.627174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262978, 32.438572, 46.735310>,  <33.769577, 31.825224, 46.761364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262978, 32.438572, 46.735310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645889, 32.367668, 46.826698>,  <34.875637, 32.325127, 46.881531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645889, 32.367668, 46.826698>,  <34.262978, 32.438572, 46.735310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645889, 32.367668, 46.826698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232963, 0.004680, -0.972474,
		0.171314, 0.984152, 0.045776,
		0.957277, -0.177263, 0.228469,
		34.933071, 32.314487, 46.895241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676228, 32.975456, 46.473537>,  <34.262978, 32.438572, 46.735310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676228, 32.975456, 46.473537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912525, 32.653309, 46.493145>,  <35.054302, 32.460018, 46.504910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912525, 32.653309, 46.493145>,  <34.676228, 32.975456, 46.473537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912525, 32.653309, 46.493145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370704, 0.216945, -0.903058,
		0.716663, 0.551644, 0.426712,
		0.590740, -0.805372, 0.049020,
		35.089748, 32.411697, 46.507851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313831, 33.127895, 46.121735>,  <34.676228, 32.975456, 46.473537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313831, 33.127895, 46.121735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322132, 32.728092, 46.131142>,  <35.327114, 32.488209, 46.136787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322132, 32.728092, 46.131142>,  <35.313831, 33.127895, 46.121735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322132, 32.728092, 46.131142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301862, -0.016163, -0.953215,
		0.953126, 0.026880, 0.301378,
		0.020752, -0.999508, 0.023520,
		35.328358, 32.428238, 46.138199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703873, 33.042301, 45.556179>,  <35.313831, 33.127895, 46.121735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703873, 33.042301, 45.556179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611942, 32.663403, 45.645531>,  <35.556786, 32.436062, 45.699142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611942, 32.663403, 45.645531>,  <35.703873, 33.042301, 45.556179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611942, 32.663403, 45.645531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330001, -0.291778, -0.897755,
		0.915576, -0.132612, 0.379652,
		-0.229828, -0.947248, 0.223383,
		35.542995, 32.379227, 45.712547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338322, 32.687241, 45.348293>,  <35.703873, 33.042301, 45.556179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338322, 32.687241, 45.348293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015507, 32.451538, 45.363663>,  <35.821819, 32.310116, 45.372887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015507, 32.451538, 45.363663>,  <36.338322, 32.687241, 45.348293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015507, 32.451538, 45.363663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133022, -0.244815, -0.960402,
		0.575326, -0.769966, 0.275958,
		-0.807035, -0.589252, 0.038426,
		35.773396, 32.274761, 45.375191>
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
