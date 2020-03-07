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
	<4.076605, 3.440710, 3.462221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.732567, 3.237057, 3.474998>,  <3.526144, 3.114865, 3.482665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.732567, 3.237057, 3.474998>,  <4.076605, 3.440710, 3.462221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.732567, 3.237057, 3.474998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504626, 0.858314, 0.093000,
		-0.074768, 0.063869, -0.995153,
		-0.860094, -0.509133, 0.031944,
		3.474539, 3.084317, 3.484582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.598650, 3.667848, 2.966232>,  <4.076605, 3.440710, 3.462221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.598650, 3.667848, 2.966232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.401142, 3.542915, 3.290859>,  <3.282637, 3.467956, 3.485635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.401142, 3.542915, 3.290859>,  <3.598650, 3.667848, 2.966232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.401142, 3.542915, 3.290859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424288, 0.901175, 0.088673,
		-0.759060, -0.300554, -0.577491,
		-0.493770, -0.312330, 0.811567,
		3.253011, 3.449216, 3.534329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.904531, 3.810717, 2.820241>,  <3.598650, 3.667848, 2.966232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.904531, 3.810717, 2.820241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.965567, 3.790218, 3.215025>,  <3.002188, 3.777920, 3.451895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.965567, 3.790218, 3.215025>,  <2.904531, 3.810717, 2.820241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.965567, 3.790218, 3.215025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455848, 0.882428, 0.116294,
		-0.876881, -0.467649, 0.111289,
		0.152589, -0.051246, 0.986960,
		3.011343, 3.774845, 3.511113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.326610, 3.980483, 3.242995>,  <2.904531, 3.810717, 2.820241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.326610, 3.980483, 3.242995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.645252, 4.057652, 3.472151>,  <2.836437, 4.103952, 3.609644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.645252, 4.057652, 3.472151>,  <2.326610, 3.980483, 3.242995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.645252, 4.057652, 3.472151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423390, 0.854491, 0.300976,
		-0.431464, -0.482314, 0.762372,
		0.796605, 0.192921, 0.572889,
		2.884234, 4.115528, 3.644017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.107390, 4.253528, 3.961001>,  <2.326610, 3.980483, 3.242995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.107390, 4.253528, 3.961001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.474396, 4.380096, 3.864632>,  <2.694599, 4.456038, 3.806810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.474396, 4.380096, 3.864632>,  <2.107390, 4.253528, 3.961001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.474396, 4.380096, 3.864632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277002, 0.943133, 0.183768,
		0.285372, -0.101873, 0.952987,
		0.917514, 0.316422, -0.240925,
		2.749650, 4.475023, 3.792354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.370318, 4.666770, 4.518746>,  <2.107390, 4.253528, 3.961001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.370318, 4.666770, 4.518746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.599974, 4.785831, 4.213652>,  <2.737767, 4.857268, 4.030595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.599974, 4.785831, 4.213652>,  <2.370318, 4.666770, 4.518746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.599974, 4.785831, 4.213652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158720, 0.954368, 0.252962,
		0.803226, -0.024174, 0.595183,
		0.574139, 0.297653, -0.762736,
		2.772215, 4.875127, 3.984831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.830167, 5.312519, 4.757947>,  <2.370318, 4.666770, 4.518746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.830167, 5.312519, 4.757947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.838308, 5.357220, 4.360537>,  <2.843193, 5.384040, 4.122090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.838308, 5.357220, 4.360537>,  <2.830167, 5.312519, 4.757947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.838308, 5.357220, 4.360537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020513, 0.993571, 0.111337,
		0.999582, 0.018114, 0.022515,
		0.020353, 0.111752, -0.993528,
		2.844414, 5.390746, 4.062478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.454025, 5.694299, 4.502632>,  <2.830167, 5.312519, 4.757947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.454025, 5.694299, 4.502632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106152, 5.734894, 4.309406>,  <2.897428, 5.759251, 4.193471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106152, 5.734894, 4.309406>,  <3.454025, 5.694299, 4.502632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.106152, 5.734894, 4.309406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016519, 0.972104, 0.233969,
		0.493333, 0.211458, -0.843746,
		-0.869684, 0.101487, -0.483064,
		2.845247, 5.765340, 4.164487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.730833, 2.782697, 3.627591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.417686, 2.571167, 3.496464>,  <2.229798, 2.444249, 3.417788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.417686, 2.571167, 3.496464>,  <2.730833, 2.782697, 3.627591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.417686, 2.571167, 3.496464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571314, -0.819650, -0.042135,
		-0.246414, -0.220272, 0.943801,
		-0.782867, -0.528824, -0.327817,
		2.182826, 2.412520, 3.398118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.765291, 2.152102, 4.056633>,  <2.730833, 2.782697, 3.627591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.765291, 2.152102, 4.056633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.579552, 2.130775, 3.703014>,  <2.468108, 2.117980, 3.490843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.579552, 2.130775, 3.703014>,  <2.765291, 2.152102, 4.056633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.579552, 2.130775, 3.703014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353543, -0.926365, -0.129831,
		-0.812028, -0.372835, 0.449005,
		-0.464348, -0.053316, -0.884047,
		2.440247, 2.114781, 3.437800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.498115, 1.565156, 4.137858>,  <2.765291, 2.152102, 4.056633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.498115, 1.565156, 4.137858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522903, 1.588974, 3.739338>,  <2.537776, 1.603265, 3.500226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522903, 1.588974, 3.739338>,  <2.498115, 1.565156, 4.137858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.522903, 1.588974, 3.739338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243002, -0.969081, -0.042803,
		-0.968044, -0.239451, -0.074525,
		0.061971, 0.059545, -0.996300,
		2.541495, 1.606838, 3.440448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.087265, 0.954399, 3.836583>,  <2.498115, 1.565156, 4.137858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.087265, 0.954399, 3.836583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.361423, 1.081490, 3.574505>,  <2.525919, 1.157744, 3.417258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.361423, 1.081490, 3.574505>,  <2.087265, 0.954399, 3.836583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.361423, 1.081490, 3.574505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344440, -0.934219, -0.092717,
		-0.641554, -0.162127, -0.749749,
		0.685398, 0.317727, -0.655194,
		2.567043, 1.176808, 3.377946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.067240, 0.475361, 3.287120>,  <2.087265, 0.954399, 3.836583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.067240, 0.475361, 3.287120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.434551, 0.633476, 3.296177>,  <2.654938, 0.728346, 3.301611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.434551, 0.633476, 3.296177>,  <2.067240, 0.475361, 3.287120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.434551, 0.633476, 3.296177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391414, -0.914921, 0.098569,
		0.059679, -0.081651, -0.994873,
		0.918278, 0.395289, 0.022642,
		2.710035, 0.752063, 3.302969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.578480, 0.375397, 2.748123>,  <2.067240, 0.475361, 3.287120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.578480, 0.375397, 2.748123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.692318, 0.370399, 3.131550>,  <2.760621, 0.367401, 3.361606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.692318, 0.370399, 3.131550>,  <2.578480, 0.375397, 2.748123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.692318, 0.370399, 3.131550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218320, -0.972795, -0.077498,
		0.933457, 0.231330, -0.274125,
		0.284595, -0.012494, 0.958567,
		2.777696, 0.366651, 3.419120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.295429, 0.231631, 2.861939>,  <2.578480, 0.375397, 2.748123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.295429, 0.231631, 2.861939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132923, 0.116814, 3.208939>,  <3.035420, 0.047923, 3.417139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132923, 0.116814, 3.208939>,  <3.295429, 0.231631, 2.861939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.132923, 0.116814, 3.208939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359457, -0.923038, -0.137082,
		0.840084, 0.256137, 0.478177,
		-0.406264, -0.287044, 0.867500,
		3.011044, 0.030701, 3.469188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.883532, -0.143547, 3.124217>,  <3.295429, 0.231631, 2.861939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.883532, -0.143547, 3.124217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.531231, -0.237625, 3.288635>,  <3.319850, -0.294072, 3.387286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.531231, -0.237625, 3.288635>,  <3.883532, -0.143547, 3.124217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.531231, -0.237625, 3.288635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197406, -0.971289, -0.132775,
		0.430472, -0.035799, 0.901893,
		-0.880752, -0.235195, 0.411046,
		3.267005, -0.308184, 3.411949>
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
