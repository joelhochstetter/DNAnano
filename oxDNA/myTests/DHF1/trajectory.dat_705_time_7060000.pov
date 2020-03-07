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
	<3.404006, 0.362870, 4.521584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.044249, 0.243764, 4.649600>,  <2.828394, 0.172300, 4.726410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.044249, 0.243764, 4.649600>,  <3.404006, 0.362870, 4.521584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.044249, 0.243764, 4.649600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297602, -0.119182, -0.947222,
		0.320192, -0.947170, 0.018576,
		-0.899394, -0.297765, 0.320041,
		2.774430, 0.154434, 4.745612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.035475, 0.281776, 3.843253>,  <3.404006, 0.362870, 4.521584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.035475, 0.281776, 3.843253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.755163, 0.148300, 4.095462>,  <2.586976, 0.068214, 4.246787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.755163, 0.148300, 4.095462>,  <3.035475, 0.281776, 3.843253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.755163, 0.148300, 4.095462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614185, -0.167383, -0.771207,
		0.362883, -0.927704, -0.087648,
		-0.700781, -0.333690, 0.630522,
		2.544929, 0.048193, 4.284618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.871289, -0.358238, 3.570730>,  <3.035475, 0.281776, 3.843253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.871289, -0.358238, 3.570730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.591694, -0.160966, 3.777879>,  <2.423937, -0.042603, 3.902168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.591694, -0.160966, 3.777879>,  <2.871289, -0.358238, 3.570730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.591694, -0.160966, 3.777879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698308, -0.314541, -0.642985,
		-0.154214, -0.811073, 0.564251,
		-0.698988, 0.493178, 0.517872,
		2.381998, -0.013012, 3.933240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.172813, -0.723890, 3.634351>,  <2.871289, -0.358238, 3.570730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.172813, -0.723890, 3.634351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.072681, -0.340421, 3.688437>,  <2.012603, -0.110340, 3.720888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.072681, -0.340421, 3.688437>,  <2.172813, -0.723890, 3.634351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.072681, -0.340421, 3.688437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752720, -0.104881, -0.649933,
		-0.608891, -0.264475, 0.747867,
		-0.250329, 0.958672, 0.135215,
		1.997583, -0.052820, 3.729001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.476238, -0.691301, 3.744900>,  <2.172813, -0.723890, 3.634351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.476238, -0.691301, 3.744900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.569521, -0.321273, 3.624993>,  <1.625491, -0.099256, 3.553050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.569521, -0.321273, 3.624993>,  <1.476238, -0.691301, 3.744900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.569521, -0.321273, 3.624993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803541, 0.009708, -0.595171,
		-0.547664, 0.379672, 0.745595,
		0.233208, 0.925070, -0.299766,
		1.639483, -0.043752, 3.535064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.829987, -0.309435, 3.596669>,  <1.476238, -0.691301, 3.744900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.829987, -0.309435, 3.596669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084333, -0.075816, 3.394854>,  <1.236942, 0.064356, 3.273764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084333, -0.075816, 3.394854>,  <0.829987, -0.309435, 3.596669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.084333, -0.075816, 3.394854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621940, 0.000659, -0.783064,
		-0.457015, 0.811718, 0.363662,
		0.635867, 0.584048, -0.504539,
		1.275094, 0.099399, 3.243492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.431141, 0.213477, 3.406917>,  <0.829987, -0.309435, 3.596669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.431141, 0.213477, 3.406917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737514, 0.229213, 3.150231>,  <0.921339, 0.238655, 2.996220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737514, 0.229213, 3.150231>,  <0.431141, 0.213477, 3.406917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.737514, 0.229213, 3.150231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641518, 0.112635, -0.758794,
		0.042428, 0.992857, 0.111509,
		0.765934, 0.039341, -0.641714,
		0.967295, 0.241016, 2.957717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.323107, 0.803607, 3.033935>,  <0.431141, 0.213477, 3.406917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.323107, 0.803607, 3.033935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.567114, 0.584247, 2.805151>,  <0.713518, 0.452630, 2.667881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.567114, 0.584247, 2.805151>,  <0.323107, 0.803607, 3.033935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.567114, 0.584247, 2.805151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579597, 0.183391, -0.794000,
		0.540322, 0.815858, -0.205979,
		0.610016, -0.548400, -0.571959,
		0.750119, 0.419726, 2.633563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.223511, 0.642909, 1.693594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.137699, 0.708847, 1.534912>,  <0.354425, 0.748410, 1.439703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.137699, 0.708847, 1.534912>,  <-0.223511, 0.642909, 1.693594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.137699, 0.708847, 1.534912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429588, -0.343489, 0.835146,
		0.001406, -0.924576, -0.380994,
		0.903024, 0.164845, -0.396703,
		0.408606, 0.758300, 1.415901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.225655, -0.017998, 1.618224>,  <-0.223511, 0.642909, 1.693594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.225655, -0.017998, 1.618224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.468304, 0.299467, 1.636596>,  <0.613893, 0.489946, 1.647620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.468304, 0.299467, 1.636596>,  <0.225655, -0.017998, 1.618224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.468304, 0.299467, 1.636596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463804, -0.400241, 0.790375,
		0.645676, -0.458155, -0.610899,
		0.606621, 0.793664, 0.045931,
		0.650290, 0.537566, 1.650376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.883976, -0.185964, 1.635641>,  <0.225655, -0.017998, 1.618224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.883976, -0.185964, 1.635641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.893353, 0.149282, 1.853636>,  <0.898978, 0.350431, 1.984432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.893353, 0.149282, 1.853636>,  <0.883976, -0.185964, 1.635641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.893353, 0.149282, 1.853636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453617, -0.494706, 0.741282,
		0.890889, 0.229839, -0.391780,
		0.023441, 0.838117, 0.544986,
		0.900385, 0.400718, 2.017131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.619123, -0.142882, 1.879661>,  <0.883976, -0.185964, 1.635641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.619123, -0.142882, 1.879661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.364136, 0.058712, 2.112774>,  <1.211144, 0.179668, 2.252642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.364136, 0.058712, 2.112774>,  <1.619123, -0.142882, 1.879661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.364136, 0.058712, 2.112774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530547, -0.261365, 0.806355,
		0.558709, 0.823218, -0.100775,
		-0.637467, 0.503984, 0.582783,
		1.172896, 0.209907, 2.287609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.974332, 0.304615, 2.163790>,  <1.619123, -0.142882, 1.879661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.974332, 0.304615, 2.163790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656487, 0.266956, 2.403699>,  <1.465779, 0.244361, 2.547644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656487, 0.266956, 2.403699>,  <1.974332, 0.304615, 2.163790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.656487, 0.266956, 2.403699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582188, 0.162011, 0.796750,
		-0.172181, 0.982288, -0.073924,
		-0.794614, -0.094148, 0.599771,
		1.418102, 0.238712, 2.583630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.157267, 0.785280, 2.578320>,  <1.974332, 0.304615, 2.163790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.157267, 0.785280, 2.578320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.902905, 0.555351, 2.784312>,  <1.750287, 0.417394, 2.907907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.902905, 0.555351, 2.784312>,  <2.157267, 0.785280, 2.578320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.902905, 0.555351, 2.784312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562005, 0.112421, 0.819458,
		-0.528936, 0.810519, 0.251563,
		-0.635906, -0.574821, 0.514980,
		1.712133, 0.382905, 2.938806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.143721, 1.097873, 3.191496>,  <2.157267, 0.785280, 2.578320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.143721, 1.097873, 3.191496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.987419, 0.739525, 3.276090>,  <1.893638, 0.524516, 3.326847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.987419, 0.739525, 3.276090>,  <2.143721, 1.097873, 3.191496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.987419, 0.739525, 3.276090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432180, 0.024301, 0.901460,
		-0.812731, 0.443649, 0.377681,
		-0.390754, -0.895871, 0.211486,
		1.870193, 0.470764, 3.339536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.830588, 1.245713, 3.872673>,  <2.143721, 1.097873, 3.191496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.830588, 1.245713, 3.872673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.878071, 0.851376, 3.825312>,  <1.906561, 0.614773, 3.796896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.878071, 0.851376, 3.825312>,  <1.830588, 1.245713, 3.872673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.878071, 0.851376, 3.825312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542567, -0.035465, 0.839264,
		-0.831583, -0.163868, 0.530677,
		0.118708, -0.985845, -0.118402,
		1.913683, 0.555622, 3.789792>
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
