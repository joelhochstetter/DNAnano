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
	<4.017087, 1.176200, -0.548698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.669739, 1.358849, -0.626083>,  <3.461330, 1.468438, -0.672515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.669739, 1.358849, -0.626083>,  <4.017087, 1.176200, -0.548698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.669739, 1.358849, -0.626083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245823, -0.057529, 0.967606,
		0.430700, 0.887799, 0.162205,
		-0.868371, 0.456622, -0.193464,
		3.409227, 1.495835, -0.684123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.847145, 1.806263, -0.129460>,  <4.017087, 1.176200, -0.548698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.847145, 1.806263, -0.129460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.493988, 1.658092, -0.244896>,  <3.282094, 1.569191, -0.314158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.493988, 1.658092, -0.244896>,  <3.847145, 1.806263, -0.129460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.493988, 1.658092, -0.244896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226706, -0.201958, 0.952794,
		-0.411222, 0.906641, 0.094330,
		-0.882893, -0.370425, -0.288591,
		3.229120, 1.546965, -0.331473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.362282, 2.050719, 0.365354>,  <3.847145, 1.806263, -0.129460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.362282, 2.050719, 0.365354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.216209, 1.719303, 0.195570>,  <3.128566, 1.520454, 0.093699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.216209, 1.719303, 0.195570>,  <3.362282, 2.050719, 0.365354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.216209, 1.719303, 0.195570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284360, -0.334882, 0.898328,
		-0.886444, 0.448751, -0.113311,
		-0.365180, -0.828539, -0.424461,
		3.106655, 1.470742, 0.068232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.810959, 1.931468, 0.704492>,  <3.362282, 2.050719, 0.365354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.810959, 1.931468, 0.704492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.919662, 1.584545, 0.537674>,  <2.984885, 1.376392, 0.437583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.919662, 1.584545, 0.537674>,  <2.810959, 1.931468, 0.704492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.919662, 1.584545, 0.537674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193424, -0.473737, 0.859163,
		-0.942727, -0.152818, -0.296500,
		0.271758, -0.867306, -0.417046,
		3.001190, 1.324353, 0.412560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.186578, 1.438457, 0.862779>,  <2.810959, 1.931468, 0.704492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.186578, 1.438457, 0.862779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539986, 1.260960, 0.802799>,  <2.752030, 1.154461, 0.766812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539986, 1.260960, 0.802799>,  <2.186578, 1.438457, 0.862779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.539986, 1.260960, 0.802799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026150, -0.366364, 0.930104,
		-0.467663, -0.817844, -0.335294,
		0.883520, -0.443743, -0.149948,
		2.805042, 1.127837, 0.757815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.121710, 0.697947, 0.830468>,  <2.186578, 1.438457, 0.862779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.121710, 0.697947, 0.830468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.497864, 0.776871, 0.941278>,  <2.723556, 0.824225, 1.007765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.497864, 0.776871, 0.941278>,  <2.121710, 0.697947, 0.830468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.497864, 0.776871, 0.941278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130328, -0.543294, 0.829365,
		0.314149, -0.816027, -0.485190,
		0.940385, 0.197310, 0.277027,
		2.779979, 0.836064, 1.024386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.372213, 0.067821, 1.053468>,  <2.121710, 0.697947, 0.830468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.372213, 0.067821, 1.053468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.606705, 0.334869, 1.237040>,  <2.747400, 0.495099, 1.347182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.606705, 0.334869, 1.237040>,  <2.372213, 0.067821, 1.053468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.606705, 0.334869, 1.237040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093872, -0.506684, 0.857006,
		0.804688, -0.545484, -0.234362,
		0.586230, 0.667622, 0.458928,
		2.782574, 0.535156, 1.374718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.873222, -0.281270, 1.450249>,  <2.372213, 0.067821, 1.053468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.873222, -0.281270, 1.450249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811790, 0.083363, 1.602791>,  <2.774931, 0.302142, 1.694316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811790, 0.083363, 1.602791>,  <2.873222, -0.281270, 1.450249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.811790, 0.083363, 1.602791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178432, -0.405174, 0.896658,
		0.971893, 0.069663, 0.224882,
		-0.153580, 0.911582, 0.381355,
		2.765717, 0.356837, 1.717197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.205707, 2.451237, 2.864223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.136314, 2.465237, 2.470537>,  <5.094679, 2.473637, 2.234326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.136314, 2.465237, 2.470537>,  <5.205707, 2.451237, 2.864223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.136314, 2.465237, 2.470537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196888, -0.980426, -0.000161,
		-0.964956, 0.193752, 0.176976,
		-0.173481, 0.035000, -0.984215,
		5.084270, 2.475737, 2.175273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.553486, 2.237482, 2.825028>,  <5.205707, 2.451237, 2.864223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.553486, 2.237482, 2.825028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.779488, 2.178989, 2.500217>,  <4.915089, 2.143894, 2.305331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.779488, 2.178989, 2.500217>,  <4.553486, 2.237482, 2.825028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.779488, 2.178989, 2.500217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196721, -0.979662, 0.039542,
		-0.801294, 0.137402, -0.582279,
		0.565004, -0.146231, -0.812027,
		4.948989, 2.135120, 2.256609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.412268, 1.718745, 2.467632>,  <4.553486, 2.237482, 2.825028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.412268, 1.718745, 2.467632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.764450, 1.741173, 2.279310>,  <4.975759, 1.754630, 2.166317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.764450, 1.741173, 2.279310>,  <4.412268, 1.718745, 2.467632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.764450, 1.741173, 2.279310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147236, -0.976224, 0.159084,
		-0.450689, -0.209386, -0.867777,
		0.880455, 0.056071, -0.470803,
		5.028586, 1.757994, 2.138069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.473284, 1.153321, 2.036796>,  <4.412268, 1.718745, 2.467632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.473284, 1.153321, 2.036796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.846260, 1.266087, 2.127199>,  <5.070046, 1.333746, 2.181441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.846260, 1.266087, 2.127199>,  <4.473284, 1.153321, 2.036796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.846260, 1.266087, 2.127199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234102, -0.947815, 0.216434,
		0.275229, -0.148903, -0.949777,
		0.932441, 0.281914, 0.226007,
		5.125992, 1.350661, 2.195001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.698109, 1.330304, 1.909323>,  <4.473284, 1.153321, 2.036796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.698109, 1.330304, 1.909323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.405701, 1.104977, 1.755295>,  <3.230256, 0.969780, 1.662878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.405701, 1.104977, 1.755295>,  <3.698109, 1.330304, 1.909323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.405701, 1.104977, 1.755295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234423, 0.322647, -0.917030,
		0.640823, -0.760638, -0.103807,
		-0.731021, -0.563319, -0.385071,
		3.186394, 0.935981, 1.639774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.021883, 0.950977, 1.377496>,  <3.698109, 1.330304, 1.909323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.021883, 0.950977, 1.377496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.633278, 0.937199, 1.283710>,  <3.400115, 0.928932, 1.227439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.633278, 0.937199, 1.283710>,  <4.021883, 0.950977, 1.377496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.633278, 0.937199, 1.283710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216383, 0.274515, -0.936921,
		0.096637, -0.960966, -0.259242,
		-0.971514, -0.034445, -0.234464,
		3.341824, 0.926865, 1.213371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.065926, 0.734417, 0.636500>,  <4.021883, 0.950977, 1.377496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.065926, 0.734417, 0.636500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.695656, 0.870628, 0.702425>,  <3.473494, 0.952355, 0.741980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.695656, 0.870628, 0.702425>,  <4.065926, 0.734417, 0.636500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.695656, 0.870628, 0.702425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051233, 0.318800, -0.946436,
		-0.374832, -0.884537, -0.277659,
		-0.925676, 0.340530, 0.164814,
		3.417953, 0.972787, 0.751869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.597070, 0.209670, 0.259641>,  <4.065926, 0.734417, 0.636500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.597070, 0.209670, 0.259641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424423, 0.569740, 0.282938>,  <3.320835, 0.785782, 0.296916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424423, 0.569740, 0.282938>,  <3.597070, 0.209670, 0.259641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.424423, 0.569740, 0.282938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170670, -0.018091, -0.985162,
		-0.885764, -0.435153, 0.161442,
		-0.431617, 0.900175, 0.058243,
		3.294938, 0.839793, 0.300411>
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
