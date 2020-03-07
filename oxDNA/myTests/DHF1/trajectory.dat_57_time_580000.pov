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
	<3.281996, 3.988535, 0.540082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.654948, 3.859486, 0.474869>,  <3.878720, 3.782056, 0.435741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.654948, 3.859486, 0.474869>,  <3.281996, 3.988535, 0.540082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.654948, 3.859486, 0.474869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227978, -0.174826, -0.957842,
		0.280521, 0.930242, -0.236555,
		0.932381, -0.322625, -0.163032,
		3.934662, 3.762698, 0.425959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.048541, 3.455275, 1.000359>,  <3.281996, 3.988535, 0.540082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.048541, 3.455275, 1.000359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.802050, 3.150921, 0.919052>,  <2.654155, 2.968308, 0.870268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.802050, 3.150921, 0.919052>,  <3.048541, 3.455275, 1.000359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.802050, 3.150921, 0.919052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305395, -0.468758, 0.828854,
		-0.725946, 0.448687, 0.521232,
		-0.616228, -0.760885, -0.203266,
		2.617181, 2.922655, 0.858072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.830841, 3.094672, 1.616204>,  <3.048541, 3.455275, 1.000359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.830841, 3.094672, 1.616204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741066, 2.837337, 1.323425>,  <2.687201, 2.682937, 1.147758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741066, 2.837337, 1.323425>,  <2.830841, 3.094672, 1.616204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.741066, 2.837337, 1.323425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216239, -0.765262, 0.606313,
		-0.950194, -0.022195, 0.310868,
		-0.224438, -0.643336, -0.731947,
		2.673735, 2.644337, 1.103841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.741983, 3.845079, 1.587009>,  <2.830841, 3.094672, 1.616204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.741983, 3.845079, 1.587009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.931630, 4.129913, 1.794140>,  <3.045419, 4.300814, 1.918419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.931630, 4.129913, 1.794140>,  <2.741983, 3.845079, 1.587009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.931630, 4.129913, 1.794140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723303, -0.020349, 0.690231,
		0.502041, -0.701798, 0.505406,
		0.474118, 0.712086, 0.517828,
		3.073866, 4.343539, 1.949488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.726012, 3.660091, 2.280013>,  <2.741983, 3.845079, 1.587009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.726012, 3.660091, 2.280013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.761582, 4.056282, 2.237968>,  <2.782924, 4.293996, 2.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.761582, 4.056282, 2.237968>,  <2.726012, 3.660091, 2.280013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.761582, 4.056282, 2.237968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837574, 0.131471, 0.530269,
		0.539038, 0.040885, 0.841289,
		0.088925, 0.990477, -0.105111,
		2.788260, 4.353425, 2.206435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.714372, 4.074423, 2.968964>,  <2.726012, 3.660091, 2.280013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.714372, 4.074423, 2.968964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.574560, 4.325474, 2.690708>,  <2.490673, 4.476104, 2.523755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.574560, 4.325474, 2.690708>,  <2.714372, 4.074423, 2.968964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.574560, 4.325474, 2.690708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842220, 0.114811, 0.526767,
		0.410480, 0.770002, 0.488470,
		-0.349530, 0.627626, -0.695639,
		2.469701, 4.513762, 2.482016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.374251, 4.568129, 3.366843>,  <2.714372, 4.074423, 2.968964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.374251, 4.568129, 3.366843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.248598, 4.654888, 2.997135>,  <2.173207, 4.706944, 2.775310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.248598, 4.654888, 2.997135>,  <2.374251, 4.568129, 3.366843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.248598, 4.654888, 2.997135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865679, 0.334255, 0.372657,
		0.389771, 0.917185, 0.082765,
		-0.314131, 0.216899, -0.924271,
		2.154359, 4.719958, 2.719854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.139996, 5.307940, 3.337209>,  <2.374251, 4.568129, 3.366843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.139996, 5.307940, 3.337209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.964354, 5.102367, 3.042439>,  <1.858968, 4.979024, 2.865576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.964354, 5.102367, 3.042439>,  <2.139996, 5.307940, 3.337209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.964354, 5.102367, 3.042439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896977, 0.297491, 0.327004,
		0.051172, 0.804596, -0.591614,
		-0.439106, -0.513930, -0.736927,
		1.832622, 4.948188, 2.821360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.020364, 0.737747, 3.554453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.687256, 0.623764, 3.364594>,  <0.487391, 0.555374, 3.250678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.687256, 0.623764, 3.364594>,  <1.020364, 0.737747, 3.554453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.687256, 0.623764, 3.364594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545999, -0.564483, -0.619066,
		-0.091523, -0.774698, 0.625673,
		-0.832771, -0.284958, -0.474648,
		0.437424, 0.538277, 3.222199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.893322, 0.016325, 3.477653>,  <1.020364, 0.737747, 3.554453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.893322, 0.016325, 3.477653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.752956, 0.237617, 3.175449>,  <0.668737, 0.370393, 2.994127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.752956, 0.237617, 3.175449>,  <0.893322, 0.016325, 3.477653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.752956, 0.237617, 3.175449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570039, -0.513891, -0.641071,
		-0.742910, -0.655630, -0.135032,
		-0.350914, 0.553231, -0.755510,
		0.647682, 0.403587, 2.948797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.714115, -0.447091, 2.942671>,  <0.893322, 0.016325, 3.477653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.714115, -0.447091, 2.942671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.840731, -0.101501, 2.786030>,  <0.916700, 0.105852, 2.692045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.840731, -0.101501, 2.786030>,  <0.714115, -0.447091, 2.942671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.840731, -0.101501, 2.786030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779122, -0.472288, -0.412206,
		-0.541084, -0.174626, -0.822639,
		0.316540, 0.863973, -0.391603,
		0.935693, 0.157691, 2.668549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.865455, -0.627955, 2.267014>,  <0.714115, -0.447091, 2.942671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.865455, -0.627955, 2.267014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.084280, -0.316582, 2.390148>,  <1.215575, -0.129758, 2.464029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.084280, -0.316582, 2.390148>,  <0.865455, -0.627955, 2.267014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.084280, -0.316582, 2.390148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796550, -0.371034, -0.477327,
		-0.257350, 0.506335, -0.823041,
		0.547063, 0.778434, 0.307835,
		1.248399, -0.083052, 2.482499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.263863, -0.467681, 1.712469>,  <0.865455, -0.627955, 2.267014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.263863, -0.467681, 1.712469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.436867, -0.343147, 2.050938>,  <1.540669, -0.268427, 2.254019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.436867, -0.343147, 2.050938>,  <1.263863, -0.467681, 1.712469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.436867, -0.343147, 2.050938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901112, -0.181032, -0.393985,
		0.030523, 0.932898, -0.358845,
		0.432510, 0.311334, 0.846171,
		1.566620, -0.249747, 2.304789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.807651, -0.043756, 1.475549>,  <1.263863, -0.467681, 1.712469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.807651, -0.043756, 1.475549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.900732, -0.090202, 1.861786>,  <1.956581, -0.118070, 2.093528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.900732, -0.090202, 1.861786>,  <1.807651, -0.043756, 1.475549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.900732, -0.090202, 1.861786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965933, -0.088012, -0.243368,
		0.113243, 0.989329, 0.091678,
		0.232702, -0.116115, 0.965592,
		1.970543, -0.125037, 2.151463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.235482, 0.456170, 1.646687>,  <1.807651, -0.043756, 1.475549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.235482, 0.456170, 1.646687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.310101, 0.152939, 1.896652>,  <2.354872, -0.029000, 2.046632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.310101, 0.152939, 1.896652>,  <2.235482, 0.456170, 1.646687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.310101, 0.152939, 1.896652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942864, -0.040587, -0.330695,
		0.276056, 0.650899, 0.707194,
		0.186546, -0.758079, 0.624914,
		2.366064, -0.074485, 2.084126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.799711, 0.643981, 1.982526>,  <2.235482, 0.456170, 1.646687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.799711, 0.643981, 1.982526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.778965, 0.245598, 2.011860>,  <2.766518, 0.006568, 2.029460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.778965, 0.245598, 2.011860>,  <2.799711, 0.643981, 1.982526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.778965, 0.245598, 2.011860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823247, -0.084207, -0.561403,
		0.565309, 0.031256, 0.824287,
		-0.051864, -0.995958, 0.073335,
		2.763406, -0.053190, 2.033860>
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
