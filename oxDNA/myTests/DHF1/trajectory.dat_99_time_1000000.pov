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
	<2.755206, 4.027349, 3.479694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698160, 3.633873, 3.523539>,  <2.663933, 3.397787, 3.549845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698160, 3.633873, 3.523539>,  <2.755206, 4.027349, 3.479694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.698160, 3.633873, 3.523539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050566, 0.103357, 0.993358,
		-0.988486, 0.147211, 0.035001,
		-0.142615, -0.983690, 0.109611,
		2.655375, 3.338766, 3.556422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.411349, 3.995038, 4.050869>,  <2.755206, 4.027349, 3.479694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.411349, 3.995038, 4.050869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.627210, 3.658707, 4.033966>,  <2.756726, 3.456908, 4.023824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.627210, 3.658707, 4.033966>,  <2.411349, 3.995038, 4.050869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.627210, 3.658707, 4.033966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329553, 0.164789, 0.929645,
		-0.774707, -0.515611, 0.366026,
		0.539652, -0.840827, -0.042258,
		2.789105, 3.406459, 4.021289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.330626, 3.593709, 4.655272>,  <2.411349, 3.995038, 4.050869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.330626, 3.593709, 4.655272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.688685, 3.523712, 4.491278>,  <2.903521, 3.481714, 4.392881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.688685, 3.523712, 4.491278>,  <2.330626, 3.593709, 4.655272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.688685, 3.523712, 4.491278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424869, 0.056606, 0.903483,
		-0.134897, -0.982941, 0.125020,
		0.895148, -0.174994, -0.409985,
		2.957230, 3.471214, 4.368282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.581596, 2.990076, 4.966120>,  <2.330626, 3.593709, 4.655272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.581596, 2.990076, 4.966120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.853768, 3.252869, 4.836264>,  <3.017071, 3.410544, 4.758350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.853768, 3.252869, 4.836264>,  <2.581596, 2.990076, 4.966120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.853768, 3.252869, 4.836264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289154, 0.166359, 0.942716,
		0.673355, -0.735322, -0.076773,
		0.680429, 0.656982, -0.324640,
		3.057896, 3.449963, 4.738872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.188363, 2.815160, 5.253380>,  <2.581596, 2.990076, 4.966120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.188363, 2.815160, 5.253380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.197395, 3.208374, 5.180571>,  <3.202814, 3.444303, 5.136885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.197395, 3.208374, 5.180571>,  <3.188363, 2.815160, 5.253380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.197395, 3.208374, 5.180571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185414, 0.174793, 0.966989,
		0.982401, -0.055584, -0.178322,
		0.022580, 0.983035, -0.182023,
		3.204169, 3.503284, 5.125964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.763177, 3.033500, 5.580130>,  <3.188363, 2.815160, 5.253380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.763177, 3.033500, 5.580130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.571332, 3.379463, 5.520927>,  <3.456224, 3.587041, 5.485406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.571332, 3.379463, 5.520927>,  <3.763177, 3.033500, 5.580130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.571332, 3.379463, 5.520927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310711, 0.325137, 0.893165,
		0.820628, 0.382387, -0.424677,
		-0.479613, 0.864908, -0.148005,
		3.427448, 3.638936, 5.476526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.252162, 3.677999, 5.613348>,  <3.763177, 3.033500, 5.580130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.252162, 3.677999, 5.613348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.877659, 3.772820, 5.717062>,  <3.652958, 3.829712, 5.779291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.877659, 3.772820, 5.717062>,  <4.252162, 3.677999, 5.613348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.877659, 3.772820, 5.717062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344290, 0.472256, 0.811442,
		0.069903, 0.848988, -0.523767,
		-0.936257, 0.237050, 0.259287,
		3.596782, 3.843935, 5.794848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.286068, 4.317569, 5.979336>,  <4.252162, 3.677999, 5.613348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.286068, 4.317569, 5.979336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.941308, 4.185432, 6.133221>,  <3.734453, 4.106150, 6.225552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.941308, 4.185432, 6.133221>,  <4.286068, 4.317569, 5.979336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.941308, 4.185432, 6.133221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162104, 0.539371, 0.826318,
		-0.480471, 0.774566, -0.411334,
		-0.861899, -0.330342, 0.384713,
		3.682739, 4.086330, 6.248634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.920876, 4.815743, 2.569536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.803497, 4.483154, 2.758234>,  <3.733070, 4.283601, 2.871453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.803497, 4.483154, 2.758234>,  <3.920876, 4.815743, 2.569536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.803497, 4.483154, 2.758234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514502, -0.278542, -0.810988,
		0.805715, -0.480695, -0.346057,
		-0.293446, -0.831472, 0.471744,
		3.715463, 4.233713, 2.899757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.130635, 4.183054, 2.169595>,  <3.920876, 4.815743, 2.569536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.130635, 4.183054, 2.169595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.792137, 4.174232, 2.382530>,  <3.589038, 4.168940, 2.510291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.792137, 4.174232, 2.382530>,  <4.130635, 4.183054, 2.169595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.792137, 4.174232, 2.382530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523514, -0.151248, -0.838485,
		0.099006, -0.988250, 0.116448,
		-0.846245, -0.022053, 0.532337,
		3.538264, 4.167616, 2.542231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.781719, 3.558623, 2.004356>,  <4.130635, 4.183054, 2.169595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.781719, 3.558623, 2.004356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.565704, 3.883438, 2.092859>,  <3.436095, 4.078327, 2.145961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.565704, 3.883438, 2.092859>,  <3.781719, 3.558623, 2.004356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.565704, 3.883438, 2.092859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388163, -0.007044, -0.921564,
		-0.746786, -0.583562, 0.319007,
		-0.540037, 0.812038, 0.221257,
		3.403693, 4.127049, 2.159236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.983258, 3.448347, 1.934034>,  <3.781719, 3.558623, 2.004356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.983258, 3.448347, 1.934034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.154293, 3.796631, 1.836845>,  <3.256914, 4.005601, 1.778532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.154293, 3.796631, 1.836845>,  <2.983258, 3.448347, 1.934034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.154293, 3.796631, 1.836845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323312, -0.103701, -0.940593,
		-0.844179, 0.480742, 0.237169,
		0.427588, 0.870709, -0.242971,
		3.282569, 4.057843, 1.763954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.508627, 3.766472, 1.589176>,  <2.983258, 3.448347, 1.934034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.508627, 3.766472, 1.589176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.873154, 3.869293, 1.460537>,  <3.091870, 3.930986, 1.383353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.873154, 3.869293, 1.460537>,  <2.508627, 3.766472, 1.589176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.873154, 3.869293, 1.460537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284635, -0.171009, -0.943260,
		-0.297463, 0.951147, -0.082678,
		0.911317, 0.257052, -0.321599,
		3.146549, 3.946409, 1.364057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.385553, 4.268254, 0.982005>,  <2.508627, 3.766472, 1.589176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.385553, 4.268254, 0.982005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.758072, 4.127144, 0.945705>,  <2.981583, 4.042478, 0.923926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.758072, 4.127144, 0.945705>,  <2.385553, 4.268254, 0.982005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.758072, 4.127144, 0.945705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172566, -0.207885, -0.962811,
		0.320792, 0.912323, -0.254479,
		0.931297, -0.352776, -0.090748,
		3.037461, 4.021311, 0.918481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.502454, 4.579978, 0.330325>,  <2.385553, 4.268254, 0.982005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.502454, 4.579978, 0.330325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.805923, 4.323730, 0.377689>,  <2.988005, 4.169981, 0.406108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.805923, 4.323730, 0.377689>,  <2.502454, 4.579978, 0.330325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.805923, 4.323730, 0.377689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022958, -0.155358, -0.987592,
		0.651067, 0.751977, -0.103159,
		0.758673, -0.640620, 0.118412,
		3.033525, 4.131545, 0.413213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.022630, 4.747553, -0.143395>,  <2.502454, 4.579978, 0.330325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.022630, 4.747553, -0.143395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.073360, 4.358208, -0.066998>,  <3.103799, 4.124600, -0.021159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.073360, 4.358208, -0.066998>,  <3.022630, 4.747553, -0.143395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.073360, 4.358208, -0.066998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204717, -0.162717, -0.965201,
		0.970570, 0.161512, 0.178627,
		0.126826, -0.973364, 0.190993,
		3.111408, 4.066198, -0.009700>
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
