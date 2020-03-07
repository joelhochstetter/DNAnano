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
	<-0.158501, 1.353868, 2.585752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.191091, 1.445396, 2.197731>,  <-0.210644, 1.500314, 1.964918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.191091, 1.445396, 2.197731>,  <-0.158501, 1.353868, 2.585752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.191091, 1.445396, 2.197731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890716, 0.453423, 0.032146,
		0.447200, -0.861422, -0.240757,
		-0.081473, 0.228822, -0.970053,
		-0.215532, 1.514043, 1.906715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.330030, 1.035855, 2.155745>,  <-0.158501, 1.353868, 2.585752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.330030, 1.035855, 2.155745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.230270, 1.411598, 2.061590>,  <0.170414, 1.637044, 2.005097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.230270, 1.411598, 2.061590>,  <0.330030, 1.035855, 2.155745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.230270, 1.411598, 2.061590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949041, 0.285444, 0.133580,
		0.192669, -0.190077, -0.962678,
		-0.249400, 0.939358, -0.235387,
		0.155450, 1.693406, 1.990974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.727647, 1.380225, 1.577613>,  <0.330030, 1.035855, 2.155745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.727647, 1.380225, 1.577613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.614587, 1.616119, 1.880220>,  <0.546751, 1.757656, 2.061785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.614587, 1.616119, 1.880220>,  <0.727647, 1.380225, 1.577613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.614587, 1.616119, 1.880220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958488, 0.142769, 0.246815,
		0.037549, 0.794877, -0.605608,
		-0.282650, 0.589736, 0.756519,
		0.529792, 1.793040, 2.107176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.146661, 1.943187, 1.581464>,  <0.727647, 1.380225, 1.577613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.146661, 1.943187, 1.581464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.018980, 1.876686, 1.954660>,  <0.942372, 1.836786, 2.178578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.018980, 1.876686, 1.954660>,  <1.146661, 1.943187, 1.581464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.018980, 1.876686, 1.954660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940997, 0.061167, 0.332841,
		-0.112403, 0.984184, 0.136918,
		-0.319202, -0.166251, 0.932990,
		0.923220, 1.826811, 2.234557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.638627, 2.353290, 2.009366>,  <1.146661, 1.943187, 1.581464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.638627, 2.353290, 2.009366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.453254, 2.089890, 2.246552>,  <1.342030, 1.931849, 2.388863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.453254, 2.089890, 2.246552>,  <1.638627, 2.353290, 2.009366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.453254, 2.089890, 2.246552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854762, -0.155720, 0.495109,
		-0.233694, 0.736292, 0.635028,
		-0.463432, -0.658502, 0.592964,
		1.314224, 1.892339, 2.424441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.545967, 2.602173, 2.707387>,  <1.638627, 2.353290, 2.009366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.545967, 2.602173, 2.707387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.547427, 2.202942, 2.732134>,  <1.548303, 1.963403, 2.746982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.547427, 2.202942, 2.732134>,  <1.545967, 2.602173, 2.707387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.547427, 2.202942, 2.732134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825760, 0.037903, 0.562747,
		-0.564010, 0.049034, 0.824311,
		0.003650, -0.998078, 0.061868,
		1.548522, 1.903519, 2.750694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.655490, 2.516541, 3.366522>,  <1.545967, 2.602173, 2.707387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.655490, 2.516541, 3.366522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.739863, 2.159409, 3.207344>,  <1.790488, 1.945129, 3.111838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.739863, 2.159409, 3.207344>,  <1.655490, 2.516541, 3.366522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.739863, 2.159409, 3.207344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764650, -0.102900, 0.636178,
		-0.608948, -0.438479, 0.660998,
		0.210934, -0.892831, -0.397944,
		1.803144, 1.891559, 3.087961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.747355, 2.098146, 3.964699>,  <1.655490, 2.516541, 3.366522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.747355, 2.098146, 3.964699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.894233, 1.924431, 3.635685>,  <1.982360, 1.820202, 3.438277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.894233, 1.924431, 3.635685>,  <1.747355, 2.098146, 3.964699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.894233, 1.924431, 3.635685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891204, -0.088922, 0.444800,
		-0.266313, -0.896374, 0.354387,
		0.367195, -0.434288, -0.822534,
		2.004391, 1.794144, 3.388925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.101442, 2.807215, 3.346169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.011852, 3.196152, 3.372662>,  <2.958098, 3.429514, 3.388557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.011852, 3.196152, 3.372662>,  <3.101442, 2.807215, 3.346169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.011852, 3.196152, 3.372662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870860, 0.230182, -0.434303,
		-0.437537, -0.039594, -0.898328,
		-0.223975, 0.972342, 0.066232,
		2.944660, 3.487854, 3.392531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.158613, 2.304760, 3.866824>,  <3.101442, 2.807215, 3.346169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.158613, 2.304760, 3.866824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.170595, 1.905342, 3.884756>,  <3.177784, 1.665691, 3.895515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.170595, 1.905342, 3.884756>,  <3.158613, 2.304760, 3.866824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.170595, 1.905342, 3.884756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716053, -0.052730, -0.696051,
		0.697402, -0.011251, -0.716591,
		0.029954, -0.998545, 0.044831,
		3.179581, 1.605778, 3.898205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.257336, 2.056745, 3.217236>,  <3.158613, 2.304760, 3.866824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.257336, 2.056745, 3.217236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.067327, 1.761185, 3.408392>,  <2.953322, 1.583848, 3.523086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.067327, 1.761185, 3.408392>,  <3.257336, 2.056745, 3.217236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.067327, 1.761185, 3.408392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751787, 0.058511, -0.656804,
		0.457352, -0.671268, -0.583291,
		-0.475021, -0.738902, 0.477891,
		2.924821, 1.539514, 3.551759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.042460, 1.668871, 2.661318>,  <3.257336, 2.056745, 3.217236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.042460, 1.668871, 2.661318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.818680, 1.567322, 2.976929>,  <2.684412, 1.506392, 3.166295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.818680, 1.567322, 2.976929>,  <3.042460, 1.668871, 2.661318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.818680, 1.567322, 2.976929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801047, -0.078943, -0.593373,
		0.212930, -0.964011, -0.159199,
		-0.559450, -0.253873, 0.789028,
		2.650845, 1.491160, 3.213637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.634144, 0.963430, 2.621311>,  <3.042460, 1.668871, 2.661318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.634144, 0.963430, 2.621311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.455557, 1.232346, 2.857512>,  <2.348404, 1.393695, 2.999232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.455557, 1.232346, 2.857512>,  <2.634144, 0.963430, 2.621311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.455557, 1.232346, 2.857512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838630, -0.084258, -0.538146,
		-0.312036, -0.735478, 0.601420,
		-0.446469, 0.672290, 0.590502,
		2.321616, 1.434032, 3.034662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.034681, 0.742612, 2.535714>,  <2.634144, 0.963430, 2.621311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.034681, 0.742612, 2.535714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.956841, 1.076805, 2.741276>,  <1.910136, 1.277321, 2.864613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.956841, 1.076805, 2.741276>,  <2.034681, 0.742612, 2.535714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.956841, 1.076805, 2.741276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915244, 0.033771, -0.401481,
		-0.352786, -0.548478, 0.758099,
		-0.194601, 0.835483, 0.513905,
		1.898460, 1.327450, 2.895447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.469748, 0.608854, 2.905096>,  <2.034681, 0.742612, 2.535714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.469748, 0.608854, 2.905096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.493145, 1.005722, 2.860960>,  <1.507183, 1.243843, 2.834478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.493145, 1.005722, 2.860960>,  <1.469748, 0.608854, 2.905096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493145, 1.005722, 2.860960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924927, 0.012275, -0.379947,
		-0.375618, 0.124280, 0.918404,
		0.058493, 0.992171, -0.110340,
		1.510693, 1.303373, 2.827858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.900070, 0.941865, 3.272062>,  <1.469748, 0.608854, 2.905096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.900070, 0.941865, 3.272062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.999163, 1.235840, 3.019556>,  <1.058618, 1.412225, 2.868052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.999163, 1.235840, 3.019556>,  <0.900070, 0.941865, 3.272062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.999163, 1.235840, 3.019556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961143, 0.268343, -0.064776,
		0.121789, 0.622784, 0.772857,
		0.247732, 0.734937, -0.631266,
		1.073482, 1.456321, 2.830176>
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
