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
	<3.957998, 1.204854, 0.740087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.864670, 1.261444, 1.124908>,  <3.808673, 1.295398, 1.355801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.864670, 1.261444, 1.124908>,  <3.957998, 1.204854, 0.740087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.864670, 1.261444, 1.124908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177500, 0.966541, -0.185181,
		-0.956062, -0.213971, -0.200402,
		-0.233320, 0.141474, 0.962054,
		3.794674, 1.303886, 1.413525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.217827, 1.445570, 0.875235>,  <3.957998, 1.204854, 0.740087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.217827, 1.445570, 0.875235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.470245, 1.551810, 1.166779>,  <3.621697, 1.615554, 1.341705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.470245, 1.551810, 1.166779>,  <3.217827, 1.445570, 0.875235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.470245, 1.551810, 1.166779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069053, 0.955064, -0.288245,
		-0.772665, 0.131566, 0.621031,
		0.631047, 0.265601, 0.728859,
		3.659559, 1.631490, 1.385436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.018527, 2.074937, 1.213499>,  <3.217827, 1.445570, 0.875235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.018527, 2.074937, 1.213499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417320, 2.055530, 1.237728>,  <3.656596, 2.043886, 1.252266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417320, 2.055530, 1.237728>,  <3.018527, 2.074937, 1.213499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.417320, 2.055530, 1.237728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064524, 0.951876, -0.299615,
		-0.043123, 0.302619, 0.952135,
		0.996984, -0.048516, 0.060574,
		3.716415, 2.040976, 1.255900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.087084, 2.598199, 1.490250>,  <3.018527, 2.074937, 1.213499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.087084, 2.598199, 1.490250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.427757, 2.493031, 1.308918>,  <3.632161, 2.429931, 1.200119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.427757, 2.493031, 1.308918>,  <3.087084, 2.598199, 1.490250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.427757, 2.493031, 1.308918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017100, 0.878523, -0.477393,
		0.523777, 0.398836, 0.752719,
		0.851683, -0.262919, -0.453331,
		3.683262, 2.414155, 1.172919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.645901, 3.183843, 1.531485>,  <3.087084, 2.598199, 1.490250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.645901, 3.183843, 1.531485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.707710, 2.930281, 1.228357>,  <3.744796, 2.778144, 1.046481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.707710, 2.930281, 1.228357>,  <3.645901, 3.183843, 1.531485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.707710, 2.930281, 1.228357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153283, 0.773125, -0.615453,
		0.976026, -0.021059, 0.216633,
		0.154524, -0.633904, -0.757818,
		3.754067, 2.740110, 1.001012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.202086, 3.449080, 1.211406>,  <3.645901, 3.183843, 1.531485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.202086, 3.449080, 1.211406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031372, 3.212702, 0.937576>,  <3.928944, 3.070876, 0.773279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031372, 3.212702, 0.937576>,  <4.202086, 3.449080, 1.211406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.031372, 3.212702, 0.937576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034268, 0.745864, -0.665216,
		0.903704, -0.307362, -0.298073,
		-0.426784, -0.590944, -0.684573,
		3.903337, 3.035419, 0.732204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.570778, 3.432336, 0.596974>,  <4.202086, 3.449080, 1.211406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.570778, 3.432336, 0.596974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.200249, 3.339592, 0.478203>,  <3.977931, 3.283945, 0.406940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.200249, 3.339592, 0.478203>,  <4.570778, 3.432336, 0.596974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.200249, 3.339592, 0.478203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044167, 0.849574, -0.525617,
		0.374133, -0.473777, -0.797220,
		-0.926323, -0.231861, -0.296928,
		3.922352, 3.270033, 0.389124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.643886, 3.489466, -0.216398>,  <4.570778, 3.432336, 0.596974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.643886, 3.489466, -0.216398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.260979, 3.507881, -0.102192>,  <4.031234, 3.518930, -0.033668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.260979, 3.507881, -0.102192>,  <4.643886, 3.489466, -0.216398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.260979, 3.507881, -0.102192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180520, 0.676184, -0.714274,
		-0.225944, -0.735292, -0.638979,
		-0.957268, 0.046038, 0.285514,
		3.973798, 3.521693, -0.016538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.837550, 4.767835, 4.290212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.537811, 4.510291, 4.228342>,  <3.357968, 4.355764, 4.191220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.537811, 4.510291, 4.228342>,  <3.837550, 4.767835, 4.290212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.537811, 4.510291, 4.228342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605484, -0.760801, 0.233604,
		-0.268085, 0.081398, 0.959951,
		-0.749346, -0.643861, -0.154674,
		3.313007, 4.317133, 4.181940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.583132, 4.546465, 4.901117>,  <3.837550, 4.767835, 4.290212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.583132, 4.546465, 4.901117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.478737, 4.261864, 4.640150>,  <3.416100, 4.091103, 4.483570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.478737, 4.261864, 4.640150>,  <3.583132, 4.546465, 4.901117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.478737, 4.261864, 4.640150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391348, -0.695796, 0.602258,
		-0.882458, -0.098140, 0.460040,
		-0.260989, -0.711503, -0.652418,
		3.400440, 4.048413, 4.444425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.253320, 4.059960, 5.295269>,  <3.583132, 4.546465, 4.901117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.253320, 4.059960, 5.295269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.372391, 3.879798, 4.958574>,  <3.443834, 3.771700, 4.756557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.372391, 3.879798, 4.958574>,  <3.253320, 4.059960, 5.295269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.372391, 3.879798, 4.958574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314059, -0.786430, 0.531879,
		-0.901529, -0.422684, -0.092649,
		0.297678, -0.450407, -0.841737,
		3.461694, 3.744676, 4.706053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.832722, 3.452165, 5.128090>,  <3.253320, 4.059960, 5.295269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.832722, 3.452165, 5.128090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.212051, 3.409306, 5.008623>,  <3.439649, 3.383590, 4.936943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.212051, 3.409306, 5.008623>,  <2.832722, 3.452165, 5.128090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.212051, 3.409306, 5.008623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097706, -0.796918, 0.596134,
		-0.301890, -0.594509, -0.745266,
		0.948323, -0.107149, -0.298669,
		3.496548, 3.377161, 4.919023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924803, 2.728353, 4.835043>,  <2.832722, 3.452165, 5.128090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924803, 2.728353, 4.835043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253883, 2.893951, 4.990875>,  <3.451331, 2.993310, 5.084374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253883, 2.893951, 4.990875>,  <2.924803, 2.728353, 4.835043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253883, 2.893951, 4.990875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148860, -0.818282, 0.555207,
		0.548640, -0.398775, -0.734828,
		0.822700, 0.413995, 0.389581,
		3.500693, 3.018150, 5.107749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.465493, 2.283393, 4.781391>,  <2.924803, 2.728353, 4.835043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.465493, 2.283393, 4.781391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592400, 2.519339, 5.078417>,  <3.668544, 2.660906, 5.256632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592400, 2.519339, 5.078417>,  <3.465493, 2.283393, 4.781391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.592400, 2.519339, 5.078417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341532, -0.801547, 0.490794,
		0.884702, 0.097897, -0.455761,
		0.317266, 0.589864, 0.742565,
		3.687580, 2.696298, 5.301186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.119963, 1.991089, 4.994774>,  <3.465493, 2.283393, 4.781391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.119963, 1.991089, 4.994774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.024071, 2.230089, 5.300852>,  <3.966536, 2.373489, 5.484499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.024071, 2.230089, 5.300852>,  <4.119963, 1.991089, 4.994774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.024071, 2.230089, 5.300852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203428, -0.739766, 0.641376,
		0.949287, 0.309420, 0.055796,
		-0.239730, 0.597500, 0.765195,
		3.952152, 2.409339, 5.530410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.694837, 2.068182, 5.446899>,  <4.119963, 1.991089, 4.994774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.694837, 2.068182, 5.446899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.371346, 2.146852, 5.668629>,  <4.177250, 2.194055, 5.801666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.371346, 2.146852, 5.668629>,  <4.694837, 2.068182, 5.446899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.371346, 2.146852, 5.668629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286777, -0.690979, 0.663556,
		0.513533, 0.695605, 0.502412,
		-0.808729, 0.196677, 0.554324,
		4.128727, 2.205856, 5.834926>
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
