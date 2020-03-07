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
	<5.206010, 0.982747, -1.099760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.953129, 1.245213, -1.264572>,  <4.801400, 1.402692, -1.363459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.953129, 1.245213, -1.264572>,  <5.206010, 0.982747, -1.099760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.953129, 1.245213, -1.264572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430125, 0.145095, 0.891033,
		0.644446, 0.740539, 0.190503,
		-0.632204, 0.656163, -0.412030,
		4.763468, 1.442061, -1.388181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.201306, 1.755390, -0.848160>,  <5.206010, 0.982747, -1.099760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.201306, 1.755390, -0.848160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.850132, 1.579689, -0.924355>,  <4.639427, 1.474269, -0.970072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.850132, 1.579689, -0.924355>,  <5.201306, 1.755390, -0.848160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.850132, 1.579689, -0.924355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308297, 0.214256, 0.926848,
		-0.366307, 0.872440, -0.323523,
		-0.877936, -0.439252, -0.190487,
		4.586751, 1.447914, -0.981501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.628703, 2.180283, -0.781285>,  <5.201306, 1.755390, -0.848160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.628703, 2.180283, -0.781285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.514503, 1.808853, -0.686424>,  <4.445984, 1.585995, -0.629508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.514503, 1.808853, -0.686424>,  <4.628703, 2.180283, -0.781285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.514503, 1.808853, -0.686424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169865, 0.292561, 0.941039,
		-0.943205, 0.228382, -0.241258,
		-0.285499, -0.928574, 0.237151,
		4.428854, 1.530281, -0.615279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.980846, 2.141626, -0.535674>,  <4.628703, 2.180283, -0.781285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.980846, 2.141626, -0.535674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.195759, 1.843784, -0.377235>,  <4.324707, 1.665079, -0.282172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.195759, 1.843784, -0.377235>,  <3.980846, 2.141626, -0.535674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.195759, 1.843784, -0.377235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025593, 0.455031, 0.890108,
		-0.843015, -0.488376, 0.225423,
		0.537282, -0.744604, 0.396097,
		4.356943, 1.620403, -0.258406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.706040, 1.944472, 0.180732>,  <3.980846, 2.141626, -0.535674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.706040, 1.944472, 0.180732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.098625, 1.868412, 0.171143>,  <4.334176, 1.822776, 0.165389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.098625, 1.868412, 0.171143>,  <3.706040, 1.944472, 0.180732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.098625, 1.868412, 0.171143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111988, 0.467477, 0.876883,
		-0.155533, -0.863312, 0.480106,
		0.981462, -0.190151, -0.023973,
		4.393064, 1.811367, 0.163951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.875385, 1.492802, 0.744386>,  <3.706040, 1.944472, 0.180732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.875385, 1.492802, 0.744386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.183033, 1.723099, 0.633408>,  <4.367621, 1.861277, 0.566821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.183033, 1.723099, 0.633408>,  <3.875385, 1.492802, 0.744386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.183033, 1.723099, 0.633408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093965, 0.327528, 0.940158,
		0.632160, -0.749163, 0.197808,
		0.769119, 0.575743, -0.277445,
		4.413769, 1.895822, 0.550174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.438417, 1.400368, 1.272212>,  <3.875385, 1.492802, 0.744386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.438417, 1.400368, 1.272212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.515217, 1.739964, 1.075294>,  <4.561296, 1.943721, 0.957144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.515217, 1.739964, 1.075294>,  <4.438417, 1.400368, 1.272212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.515217, 1.739964, 1.075294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199635, 0.457352, 0.866588,
		0.960876, -0.264663, -0.081677,
		0.191999, 0.848989, -0.492295,
		4.572816, 1.994660, 0.927606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.083063, 1.448989, 1.552767>,  <4.438417, 1.400368, 1.272212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.083063, 1.448989, 1.552767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.935200, 1.796444, 1.420815>,  <4.846482, 2.004917, 1.341643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.935200, 1.796444, 1.420815>,  <5.083063, 1.448989, 1.552767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.935200, 1.796444, 1.420815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096739, 0.389078, 0.916111,
		0.924119, 0.306735, -0.227857,
		-0.369657, 0.868638, -0.329881,
		4.824303, 2.057035, 1.321850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.746091, 2.516512, 3.002630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664560, 2.853516, 2.803177>,  <4.615641, 3.055718, 2.683505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664560, 2.853516, 2.803177>,  <4.746091, 2.516512, 3.002630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.664560, 2.853516, 2.803177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063041, -0.519562, -0.852104,
		-0.976975, -0.142247, 0.159014,
		-0.203827, 0.842509, -0.498632,
		4.603412, 3.106268, 2.653587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.091900, 2.532193, 2.585605>,  <4.746091, 2.516512, 3.002630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.091900, 2.532193, 2.585605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.362596, 2.758453, 2.397110>,  <4.525013, 2.894209, 2.284013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.362596, 2.758453, 2.397110>,  <4.091900, 2.532193, 2.585605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.362596, 2.758453, 2.397110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111927, -0.553587, -0.825236,
		-0.727666, 0.611213, -0.311322,
		0.676738, 0.565650, -0.471237,
		4.565617, 2.928149, 2.255739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.897858, 2.674536, 1.902175>,  <4.091900, 2.532193, 2.585605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.897858, 2.674536, 1.902175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.285632, 2.769333, 1.876785>,  <4.518297, 2.826211, 1.861552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.285632, 2.769333, 1.876785>,  <3.897858, 2.674536, 1.902175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.285632, 2.769333, 1.876785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061181, -0.484055, -0.872896,
		-0.237594, 0.842333, -0.483760,
		0.969436, 0.236992, -0.063474,
		4.576463, 2.840430, 1.857743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.095988, 3.172735, 1.454826>,  <3.897858, 2.674536, 1.902175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.095988, 3.172735, 1.454826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.408231, 2.923836, 1.478355>,  <4.595577, 2.774496, 1.492473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.408231, 2.923836, 1.478355>,  <4.095988, 3.172735, 1.454826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.408231, 2.923836, 1.478355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176594, -0.309854, -0.934241,
		0.599555, 0.718887, -0.351759,
		0.780608, -0.622247, 0.058823,
		4.642413, 2.737162, 1.496002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.469723, 3.227053, 0.805464>,  <4.095988, 3.172735, 1.454826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.469723, 3.227053, 0.805464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.577693, 2.874496, 0.960533>,  <4.642475, 2.662962, 1.053574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.577693, 2.874496, 0.960533>,  <4.469723, 3.227053, 0.805464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.577693, 2.874496, 0.960533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119233, -0.368922, -0.921781,
		0.955470, 0.295035, 0.005510,
		0.269925, -0.881392, 0.387672,
		4.658670, 2.610079, 1.076835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.026917, 3.034593, 0.371633>,  <4.469723, 3.227053, 0.805464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.026917, 3.034593, 0.371633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.886946, 2.710045, 0.558922>,  <4.802963, 2.515316, 0.671295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.886946, 2.710045, 0.558922>,  <5.026917, 3.034593, 0.371633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.886946, 2.710045, 0.558922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107645, -0.531338, -0.840293,
		0.930572, -0.243639, 0.273269,
		-0.349927, -0.811369, 0.468221,
		4.781968, 2.466634, 0.699388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455780, 2.570309, 0.164423>,  <5.026917, 3.034593, 0.371633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455780, 2.570309, 0.164423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.131737, 2.378021, 0.298668>,  <4.937311, 2.262649, 0.379215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.131737, 2.378021, 0.298668>,  <5.455780, 2.570309, 0.164423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.131737, 2.378021, 0.298668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083978, -0.661684, -0.745065,
		0.580236, -0.575399, 0.576405,
		-0.810107, -0.480719, 0.335612,
		4.888705, 2.233805, 0.399351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.656642, 1.826827, 0.044751>,  <5.455780, 2.570309, 0.164423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.656642, 1.826827, 0.044751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.260132, 1.876526, 0.062347>,  <5.022226, 1.906345, 0.072905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.260132, 1.876526, 0.062347>,  <5.656642, 1.826827, 0.044751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.260132, 1.876526, 0.062347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109736, -0.593089, -0.797624,
		-0.073012, -0.795492, 0.601549,
		-0.991275, 0.124248, 0.043992,
		4.962749, 1.913800, 0.075545>
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
