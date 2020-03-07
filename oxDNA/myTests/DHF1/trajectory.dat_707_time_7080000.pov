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
	<4.734141, 0.696705, 2.260975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.573034, 0.338993, 2.338994>,  <4.476370, 0.124366, 2.385805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.573034, 0.338993, 2.338994>,  <4.734141, 0.696705, 2.260975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.573034, 0.338993, 2.338994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891296, 0.334710, -0.305877,
		0.208255, -0.297041, -0.931878,
		-0.402767, -0.894279, 0.195047,
		4.452204, 0.070709, 2.397508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.409694, 0.359179, 1.688886>,  <4.734141, 0.696705, 2.260975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.409694, 0.359179, 1.688886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.223890, 0.255740, 2.027674>,  <4.112408, 0.193677, 2.230947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.223890, 0.255740, 2.027674>,  <4.409694, 0.359179, 1.688886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.223890, 0.255740, 2.027674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814358, 0.500497, -0.293810,
		-0.347928, -0.826214, -0.443076,
		-0.464508, -0.258598, 0.846971,
		4.084538, 0.178161, 2.281765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.802039, -0.057577, 1.499080>,  <4.409694, 0.359179, 1.688886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.802039, -0.057577, 1.499080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.740860, 0.149219, 1.835967>,  <3.704153, 0.273296, 2.038099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.740860, 0.149219, 1.835967>,  <3.802039, -0.057577, 1.499080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.740860, 0.149219, 1.835967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661450, 0.579637, -0.475926,
		-0.734229, -0.629875, 0.253309,
		-0.152947, 0.516989, 0.842217,
		3.694976, 0.304315, 2.088632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.066387, 0.033304, 1.562667>,  <3.802039, -0.057577, 1.499080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.066387, 0.033304, 1.562667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.259737, 0.327446, 1.752656>,  <3.375747, 0.503931, 1.866650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.259737, 0.327446, 1.752656>,  <3.066387, 0.033304, 1.562667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.259737, 0.327446, 1.752656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496039, 0.677138, -0.543534,
		-0.721314, 0.027125, 0.692076,
		0.483375, 0.735356, 0.474974,
		3.404749, 0.548053, 1.895149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.514136, 0.540262, 1.666674>,  <3.066387, 0.033303, 1.562667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.514136, 0.540262, 1.666674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858463, 0.736503, 1.720788>,  <3.065060, 0.854247, 1.753257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858463, 0.736503, 1.720788>,  <2.514136, 0.540262, 1.666674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.858463, 0.736503, 1.720788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374724, 0.790904, -0.483790,
		-0.344345, 0.365760, 0.864665,
		0.860818, 0.490601, 0.135285,
		3.116709, 0.883683, 1.761374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.339068, 1.095644, 1.837149>,  <2.514136, 0.540262, 1.666674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.339068, 1.095644, 1.837149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711663, 1.222200, 1.765342>,  <2.935220, 1.298135, 1.722258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711663, 1.222200, 1.765342>,  <2.339068, 1.095644, 1.837149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.711663, 1.222200, 1.765342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363745, 0.816225, -0.448851,
		0.004513, 0.483397, 0.875389,
		0.931488, 0.316392, -0.179517,
		2.991110, 1.317118, 1.711487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.204695, 1.769778, 1.915657>,  <2.339068, 1.095644, 1.837149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.204695, 1.769778, 1.915657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.555653, 1.723976, 1.729294>,  <2.766227, 1.696495, 1.617476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.555653, 1.723976, 1.729294>,  <2.204695, 1.769778, 1.915657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.555653, 1.723976, 1.729294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176531, 0.825926, -0.535428,
		0.446115, 0.552028, 0.704448,
		0.877393, -0.114506, -0.465908,
		2.818871, 1.689624, 1.589522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.778251, 2.385364, 1.976402>,  <2.204695, 1.769778, 1.915657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.778251, 2.385364, 1.976402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.736656, 2.177704, 1.637069>,  <2.711699, 2.053108, 1.433469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.736656, 2.177704, 1.637069>,  <2.778251, 2.385364, 1.976402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.736656, 2.177704, 1.637069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411462, 0.798998, -0.438522,
		0.905475, 0.303457, -0.296695,
		-0.103986, -0.519149, -0.848334,
		2.705460, 2.021959, 1.382569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.149012, 2.926894, 0.950854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.357246, 2.863110, 0.615339>,  <2.482187, 2.824839, 0.414030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.357246, 2.863110, 0.615339>,  <2.149012, 2.926894, 0.950854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.357246, 2.863110, 0.615339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416137, -0.810434, 0.412342,
		-0.745535, -0.563709, -0.355542,
		0.520585, -0.159461, -0.838787,
		2.513422, 2.815271, 0.363703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.097844, 2.200074, 0.711407>,  <2.149012, 2.926894, 0.950854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.097844, 2.200074, 0.711407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.445435, 2.366196, 0.603774>,  <2.653989, 2.465868, 0.539195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.445435, 2.366196, 0.603774>,  <2.097844, 2.200074, 0.711407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.445435, 2.366196, 0.603774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494639, -0.712885, 0.497119,
		0.014632, -0.565082, -0.824905,
		0.868976, 0.415304, -0.269081,
		2.706127, 2.490787, 0.523050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.462000, 1.640659, 0.470498>,  <2.097844, 2.200074, 0.711407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.462000, 1.640659, 0.470498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.714027, 1.935406, 0.568511>,  <2.865244, 2.112254, 0.627319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.714027, 1.935406, 0.568511>,  <2.462000, 1.640659, 0.470498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.714027, 1.935406, 0.568511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514090, -0.632306, 0.579569,
		0.582001, -0.239200, -0.777212,
		0.630069, 0.736867, 0.245032,
		2.903048, 2.156466, 0.642021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.148942, 1.350943, 0.425412>,  <2.462000, 1.640659, 0.470498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.148942, 1.350943, 0.425412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.102493, 1.655346, 0.680719>,  <3.074624, 1.837988, 0.833903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.102493, 1.655346, 0.680719>,  <3.148942, 1.350943, 0.425412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.102493, 1.655346, 0.680719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352593, -0.569175, 0.742777,
		0.928544, 0.311301, -0.202232,
		-0.116122, 0.761007, 0.638267,
		3.067657, 1.883648, 0.872199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.740096, 1.390078, 0.769792>,  <3.148942, 1.350943, 0.425412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.740096, 1.390078, 0.769792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458942, 1.521427, 1.022181>,  <3.290251, 1.600237, 1.173615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458942, 1.521427, 1.022181>,  <3.740096, 1.390078, 0.769792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.458942, 1.521427, 1.022181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355522, -0.606130, 0.711484,
		0.616084, 0.724415, 0.309295,
		-0.702883, 0.328373, 0.630973,
		3.248077, 1.619939, 1.211473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.161541, 1.534793, 1.343923>,  <3.740096, 1.390078, 0.769792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.161541, 1.534793, 1.343923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.784645, 1.490196, 1.470257>,  <3.558507, 1.463438, 1.546057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.784645, 1.490196, 1.470257>,  <4.161541, 1.534793, 1.343923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.784645, 1.490196, 1.470257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314558, -0.618456, 0.720115,
		0.115041, 0.777870, 0.617806,
		-0.942241, -0.111493, 0.315833,
		3.501973, 1.456748, 1.565006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.203257, 1.443272, 2.088839>,  <4.161541, 1.534793, 1.343923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.203257, 1.443272, 2.088839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.862637, 1.272085, 1.967708>,  <3.658264, 1.169373, 1.895029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.862637, 1.272085, 1.967708>,  <4.203257, 1.443272, 2.088839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.862637, 1.272085, 1.967708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102274, -0.702123, 0.704673,
		-0.514198, 0.569094, 0.641664,
		-0.851552, -0.427967, -0.302827,
		3.607171, 1.143695, 1.876860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.875036, 1.425628, 2.662043>,  <4.203257, 1.443272, 2.088839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.875036, 1.425628, 2.662043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.726170, 1.142624, 2.421736>,  <3.636849, 0.972821, 2.277553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.726170, 1.142624, 2.421736>,  <3.875036, 1.425628, 2.662043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.726170, 1.142624, 2.421736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146081, -0.683845, 0.714854,
		-0.916598, 0.178285, 0.357859,
		-0.372167, -0.707510, -0.600767,
		3.614519, 0.930371, 2.241507>
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
