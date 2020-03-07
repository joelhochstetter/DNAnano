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
	<3.456656, 5.695801, 0.445003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.162243, 5.573019, 0.203663>,  <2.985595, 5.499350, 0.058858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.162243, 5.573019, 0.203663>,  <3.456656, 5.695801, 0.445003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.162243, 5.573019, 0.203663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286309, -0.948801, 0.133434,
		-0.613419, -0.074534, 0.786233,
		-0.736033, -0.306956, -0.603352,
		2.941433, 5.480932, 0.022657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.031504, 5.200936, 0.684072>,  <3.456656, 5.695801, 0.445003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.031504, 5.200936, 0.684072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975086, 5.129393, 0.294587>,  <2.941236, 5.086466, 0.060896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975086, 5.129393, 0.294587>,  <3.031504, 5.200936, 0.684072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.975086, 5.129393, 0.294587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210219, -0.966526, 0.147088,
		-0.967427, -0.183947, 0.173923,
		-0.141044, -0.178859, -0.973712,
		2.932773, 5.075735, 0.002474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.511699, 4.674282, 0.588973>,  <3.031504, 5.200936, 0.684072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.511699, 4.674282, 0.588973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815746, 4.674788, 0.329059>,  <2.998175, 4.675091, 0.173111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815746, 4.674788, 0.329059>,  <2.511699, 4.674282, 0.588973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.815746, 4.674788, 0.329059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178767, -0.961816, 0.207251,
		-0.624710, -0.273695, -0.731320,
		0.760118, 0.001264, -0.649784,
		3.043782, 4.675167, 0.134124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.427392, 4.251059, 0.028333>,  <2.511699, 4.674282, 0.588973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.427392, 4.251059, 0.028333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.820312, 4.279432, 0.097673>,  <3.056065, 4.296456, 0.139277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.820312, 4.279432, 0.097673>,  <2.427392, 4.251059, 0.028333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.820312, 4.279432, 0.097673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055558, -0.994208, 0.091998,
		0.178872, -0.080739, -0.980554,
		0.982302, 0.070934, 0.173350,
		3.115003, 4.300713, 0.149678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.636515, 3.694734, -0.310820>,  <2.427392, 4.251059, 0.028333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.636515, 3.694734, -0.310820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.955509, 3.770395, -0.081653>,  <3.146906, 3.815792, 0.055848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.955509, 3.770395, -0.081653>,  <2.636515, 3.694734, -0.310820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.955509, 3.770395, -0.081653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085193, -0.975374, 0.203440,
		0.597292, -0.113432, -0.793962,
		0.797486, 0.189153, 0.572919,
		3.194755, 3.827141, 0.090223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.163064, 3.281097, -0.551848>,  <2.636515, 3.694734, -0.310820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.163064, 3.281097, -0.551848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.308197, 3.363665, -0.188366>,  <3.395277, 3.413205, 0.029723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.308197, 3.363665, -0.188366>,  <3.163064, 3.281097, -0.551848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.308197, 3.363665, -0.188366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315559, -0.944759, 0.088612,
		0.876798, 0.254599, -0.407926,
		0.362832, 0.206420, 0.908705,
		3.417047, 3.425591, 0.084245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.948908, 3.009410, -0.489737>,  <3.163064, 3.281097, -0.551848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.948908, 3.009410, -0.489737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.798763, 3.031103, -0.119621>,  <3.708676, 3.044119, 0.102448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.798763, 3.031103, -0.119621>,  <3.948908, 3.009410, -0.489737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.798763, 3.031103, -0.119621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516476, -0.816703, 0.257386,
		0.769646, 0.574504, 0.278550,
		-0.375362, 0.054232, 0.925290,
		3.686155, 3.047373, 0.157966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.431813, 2.917198, 0.140254>,  <3.948908, 3.009410, -0.489738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.431813, 2.917198, 0.140254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.077854, 2.773020, 0.258261>,  <3.865479, 2.686513, 0.329065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.077854, 2.773020, 0.258261>,  <4.431813, 2.917198, 0.140254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.077854, 2.773020, 0.258261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462875, -0.751201, 0.470579,
		0.051999, 0.552970, 0.831577,
		-0.884897, -0.360447, 0.295017,
		3.812385, 2.664886, 0.346766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.604926, 1.347066, 0.276703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.858765, 1.478382, 0.556563>,  <3.011068, 1.557172, 0.724480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.858765, 1.478382, 0.556563>,  <2.604926, 1.347066, 0.276703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.858765, 1.478382, 0.556563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117662, 0.935783, -0.332365,
		-0.763834, 0.128595, 0.632472,
		0.634597, 0.328290, 0.699652,
		3.049144, 1.576869, 0.766459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.293487, 2.028276, 0.621756>,  <2.604926, 1.347066, 0.276703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.293487, 2.028276, 0.621756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.689568, 1.979588, 0.649132>,  <2.927216, 1.950375, 0.665557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.689568, 1.979588, 0.649132>,  <2.293487, 2.028276, 0.621756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.689568, 1.979588, 0.649132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137028, 0.941355, -0.308340,
		-0.026895, 0.314697, 0.948811,
		0.990202, -0.121721, 0.068440,
		2.986628, 1.943071, 0.669664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.544857, 2.640970, 0.344223>,  <2.293487, 2.028276, 0.621756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.544857, 2.640970, 0.344223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.863449, 2.521988, 0.554798>,  <3.054605, 2.450599, 0.681143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.863449, 2.521988, 0.554798>,  <2.544857, 2.640970, 0.344223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.863449, 2.521988, 0.554798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342712, 0.939360, 0.012259,
		-0.498162, 0.170653, 0.850125,
		0.796481, -0.297455, 0.526439,
		3.102394, 2.432751, 0.712730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.654087, 2.993219, 1.049271>,  <2.544857, 2.640970, 0.344223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.654087, 2.993219, 1.049271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.994667, 2.890103, 0.866590>,  <3.199015, 2.828234, 0.756981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.994667, 2.890103, 0.866590>,  <2.654087, 2.993219, 1.049271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.994667, 2.890103, 0.866590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291593, 0.956535, 0.003707,
		0.435898, -0.136328, 0.889611,
		0.851450, -0.257788, -0.456704,
		3.250102, 2.812767, 0.729578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.248431, 3.312799, 1.364037>,  <2.654087, 2.993219, 1.049271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.248431, 3.312799, 1.364037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396355, 3.239429, 0.999708>,  <3.485109, 3.195408, 0.781111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396355, 3.239429, 0.999708>,  <3.248431, 3.312799, 1.364037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396355, 3.239429, 0.999708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137723, 0.980311, -0.141501,
		0.918844, -0.073113, 0.387790,
		0.369810, -0.183425, -0.910822,
		3.507298, 3.184402, 0.726462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717146, 3.759760, 1.316686>,  <3.248431, 3.312799, 1.364037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717146, 3.759760, 1.316686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.655487, 3.651461, 0.936595>,  <3.618491, 3.586481, 0.708540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.655487, 3.651461, 0.936595>,  <3.717146, 3.759760, 1.316686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655487, 3.651461, 0.936595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151350, 0.943902, -0.293499,
		0.976387, -0.189060, -0.104523,
		-0.154148, -0.270749, -0.950228,
		3.609243, 3.570236, 0.651527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.214819, 4.033298, 0.931057>,  <3.717146, 3.759760, 1.316686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.214819, 4.033298, 0.931057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.923492, 3.994957, 0.659656>,  <3.748696, 3.971952, 0.496815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.923492, 3.994957, 0.659656>,  <4.214819, 4.033298, 0.931057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.923492, 3.994957, 0.659656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007733, 0.988955, -0.148011,
		0.685197, -0.113046, -0.719531,
		-0.728317, -0.095852, -0.678504,
		3.704998, 3.966201, 0.456104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.410374, 4.458894, 0.398601>,  <4.214819, 4.033298, 0.931057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.410374, 4.458894, 0.398601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.019516, 4.415466, 0.325497>,  <3.785001, 4.389410, 0.281634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.019516, 4.415466, 0.325497>,  <4.410374, 4.458894, 0.398601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.019516, 4.415466, 0.325497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067875, 0.974087, -0.215751,
		0.201448, -0.198415, -0.959193,
		-0.977145, -0.108568, -0.182761,
		3.726373, 4.382896, 0.270668>
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
