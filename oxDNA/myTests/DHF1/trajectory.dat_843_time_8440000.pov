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
	<2.136695, 0.431478, 2.511751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381386, 0.243050, 2.257545>,  <2.528200, 0.129992, 2.105021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381386, 0.243050, 2.257545>,  <2.136695, 0.431478, 2.511751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.381386, 0.243050, 2.257545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117560, 0.740309, -0.661908,
		0.782285, 0.479619, 0.397488,
		0.611727, -0.471072, -0.635516,
		2.564904, 0.101728, 2.066890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659158, 0.975028, 2.325822>,  <2.136695, 0.431478, 2.511751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659158, 0.975028, 2.325822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.614162, 0.703781, 2.035304>,  <2.587165, 0.541033, 1.860993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.614162, 0.703781, 2.035304>,  <2.659158, 0.975028, 2.325822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.614162, 0.703781, 2.035304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021018, 0.729147, -0.684034,
		0.993431, -0.092212, -0.067769,
		-0.112489, -0.678116, -0.726295,
		2.580415, 0.500346, 1.817416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.124405, 0.941014, 1.704522>,  <2.659158, 0.975028, 2.325822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.124405, 0.941014, 1.704522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.763870, 0.827881, 1.573314>,  <2.547549, 0.760001, 1.494589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.763870, 0.827881, 1.573314>,  <3.124405, 0.941014, 1.704522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.763870, 0.827881, 1.573314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016207, 0.778840, -0.627013,
		0.432815, -0.559834, -0.706581,
		-0.901337, -0.282833, -0.328020,
		2.493469, 0.743031, 1.474908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.104531, 0.776017, 1.015360>,  <3.124405, 0.941014, 1.704522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.104531, 0.776017, 1.015360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.736977, 0.908707, 1.100785>,  <2.516444, 0.988320, 1.152040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.736977, 0.908707, 1.100785>,  <3.104531, 0.776017, 1.015360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.736977, 0.908707, 1.100785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145354, 0.787892, -0.598413,
		-0.366773, -0.518830, -0.772200,
		-0.918885, 0.331724, 0.213564,
		2.461311, 1.008224, 1.164854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.869286, 1.121230, 0.449275>,  <3.104531, 0.776017, 1.015360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.869286, 1.121230, 0.449275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.630310, 1.270912, 0.732975>,  <2.486924, 1.360722, 0.903195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.630310, 1.270912, 0.732975>,  <2.869286, 1.121230, 0.449275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.630310, 1.270912, 0.732975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015546, 0.889685, -0.456311,
		-0.801763, -0.261593, -0.537351,
		-0.597441, 0.374207, 0.709249,
		2.451078, 1.383174, 0.945750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.263881, 1.335192, 0.101406>,  <2.869286, 1.121230, 0.449275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.263881, 1.335192, 0.101406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.290207, 1.563469, 0.428815>,  <2.306002, 1.700435, 0.625261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.290207, 1.563469, 0.428815>,  <2.263881, 1.335192, 0.101406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.290207, 1.563469, 0.428815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138830, 0.807086, -0.573880,
		-0.988127, 0.151405, -0.026112,
		0.065814, 0.570692, 0.818523,
		2.309951, 1.734676, 0.674372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.837783, 1.923221, 0.020243>,  <2.263881, 1.335192, 0.101406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.837783, 1.923221, 0.020243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.062389, 2.046059, 0.327591>,  <2.197154, 2.119761, 0.512000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.062389, 2.046059, 0.327591>,  <1.837783, 1.923221, 0.020243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.062389, 2.046059, 0.327591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138253, 0.880712, -0.453027,
		-0.815834, 0.360612, 0.452078,
		0.561517, 0.307093, 0.768370,
		2.230844, 2.138187, 0.558102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.629361, 2.638282, 0.097006>,  <1.837783, 1.923221, 0.020243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.629361, 2.638282, 0.097006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.985111, 2.615562, 0.278459>,  <2.198562, 2.601931, 0.387331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.985111, 2.615562, 0.278459>,  <1.629361, 2.638282, 0.097006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.985111, 2.615562, 0.278459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280831, 0.850854, -0.444052,
		-0.360753, 0.522324, 0.772680,
		0.889377, -0.056800, 0.453633,
		2.251924, 2.598522, 0.414549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.627895, 3.190369, -0.604901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.952271, 3.224953, -0.373418>,  <3.146896, 3.245703, -0.234528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.952271, 3.224953, -0.373418>,  <2.627895, 3.190369, -0.604901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.952271, 3.224953, -0.373418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496060, -0.422950, 0.758312,
		0.310328, -0.902019, -0.300097,
		0.810938, 0.086459, 0.578709,
		3.195552, 3.250890, -0.199805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.880519, 2.597761, -0.291935>,  <2.627895, 3.190369, -0.604901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.880519, 2.597761, -0.291935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.956108, 2.877869, -0.016570>,  <3.001462, 3.045933, 0.148649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.956108, 2.877869, -0.016570>,  <2.880519, 2.597761, -0.291935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.956108, 2.877869, -0.016570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411928, -0.579850, 0.702915,
		0.891406, -0.416408, 0.178884,
		0.188973, 0.700270, 0.688412,
		3.012800, 3.087950, 0.189954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.329553, 2.396710, 0.248604>,  <2.880519, 2.597761, -0.291935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.329553, 2.396710, 0.248604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.053665, 2.669357, 0.346325>,  <2.888132, 2.832945, 0.404958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.053665, 2.669357, 0.346325>,  <3.329553, 2.396710, 0.248604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.053665, 2.669357, 0.346325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375825, -0.625393, 0.683842,
		0.618904, 0.379844, 0.687515,
		-0.689720, 0.681617, 0.244303,
		2.846749, 2.873842, 0.419616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.374312, 2.406497, 0.948735>,  <3.329553, 2.396710, 0.248604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.374312, 2.406497, 0.948735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010910, 2.506126, 0.814523>,  <2.792869, 2.565904, 0.733996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010910, 2.506126, 0.814523>,  <3.374312, 2.406497, 0.948735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.010910, 2.506126, 0.814523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416993, -0.592424, 0.689312,
		-0.027087, 0.766157, 0.642082,
		-0.908506, 0.249073, -0.335530,
		2.738358, 2.580848, 0.713864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.907326, 2.698796, 1.512551>,  <3.374312, 2.406497, 0.948735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.907326, 2.698796, 1.512551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.699791, 2.516945, 1.222966>,  <2.575270, 2.407834, 1.049215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.699791, 2.516945, 1.222966>,  <2.907326, 2.698796, 1.512551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.699791, 2.516945, 1.222966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388488, -0.628979, 0.673396,
		-0.761501, 0.630635, 0.149721,
		-0.518838, -0.454627, -0.723962,
		2.544140, 2.380557, 1.005778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.289150, 2.435280, 1.754646>,  <2.907326, 2.698796, 1.512551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.289150, 2.435280, 1.754646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.295715, 2.214417, 1.421215>,  <2.299654, 2.081898, 1.221156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.295715, 2.214417, 1.421215>,  <2.289150, 2.435280, 1.754646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.295715, 2.214417, 1.421215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489030, -0.731603, 0.474982,
		-0.872113, 0.399848, -0.282029,
		0.016413, -0.552159, -0.833578,
		2.300639, 2.048769, 1.171142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.701859, 1.921235, 1.836702>,  <2.289150, 2.435280, 1.754646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.701859, 1.921235, 1.836702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.927078, 1.755592, 1.550628>,  <2.062210, 1.656207, 1.378983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.927078, 1.755592, 1.550628>,  <1.701859, 1.921235, 1.836702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.927078, 1.755592, 1.550628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170325, -0.904968, 0.389902,
		-0.808681, -0.097720, -0.580074,
		0.563049, -0.414107, -0.715186,
		2.095993, 1.631360, 1.336072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.313070, 1.376120, 1.545530>,  <1.701859, 1.921235, 1.836702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.313070, 1.376120, 1.545530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.691116, 1.283020, 1.453804>,  <1.917944, 1.227160, 1.398769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.691116, 1.283020, 1.453804>,  <1.313070, 1.376120, 1.545530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.691116, 1.283020, 1.453804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089203, -0.858972, 0.504193,
		-0.314323, -0.456065, -0.832589,
		0.945116, -0.232749, -0.229313,
		1.974651, 1.213195, 1.385011>
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
