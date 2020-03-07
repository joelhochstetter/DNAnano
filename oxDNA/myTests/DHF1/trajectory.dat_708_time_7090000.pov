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
	<0.949876, 2.212090, 1.650355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.734129, 2.304308, 1.974313>,  <0.604681, 2.359639, 2.168688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.734129, 2.304308, 1.974313>,  <0.949876, 2.212090, 1.650355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.734129, 2.304308, 1.974313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804561, 0.424950, 0.414849,
		-0.248524, 0.875366, -0.414693,
		-0.539368, 0.230546, 0.809895,
		0.572318, 2.373472, 2.217281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.373381, 2.726355, 1.875526>,  <0.949876, 2.212090, 1.650355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.373381, 2.726355, 1.875526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156867, 2.635943, 2.199482>,  <1.026959, 2.581696, 2.393856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156867, 2.635943, 2.199482>,  <1.373381, 2.726355, 1.875526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.156867, 2.635943, 2.199482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740183, 0.328887, 0.586484,
		-0.398925, 0.916921, -0.010718,
		-0.541284, -0.226030, 0.809890,
		0.994482, 2.568134, 2.442449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.038515, 3.302758, 2.163989>,  <1.373381, 2.726355, 1.875526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.038515, 3.302758, 2.163989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.136515, 3.023096, 2.432662>,  <1.195314, 2.855298, 2.593866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.136515, 3.023096, 2.432662>,  <1.038515, 3.302758, 2.163989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.136515, 3.023096, 2.432662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677724, 0.618917, 0.397029,
		-0.693301, 0.357944, 0.625468,
		0.244998, -0.699155, 0.671683,
		1.210014, 2.813349, 2.634167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.017355, 3.577166, 2.915410>,  <1.038515, 3.302758, 2.163989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.017355, 3.577166, 2.915410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.282241, 3.278702, 2.887929>,  <1.441172, 3.099624, 2.871440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.282241, 3.278702, 2.887929>,  <1.017355, 3.577166, 2.915410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.282241, 3.278702, 2.887929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688509, 0.569734, 0.448729,
		-0.295681, -0.344457, 0.891023,
		0.662214, -0.746158, -0.068702,
		1.480905, 3.054855, 2.867318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.408184, 3.468932, 3.664641>,  <1.017355, 3.577166, 2.915410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.408184, 3.468932, 3.664641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.639479, 3.325917, 3.371299>,  <1.778255, 3.240108, 3.195294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.639479, 3.325917, 3.371299>,  <1.408184, 3.468932, 3.664641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.639479, 3.325917, 3.371299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801367, 0.417620, 0.428257,
		0.153145, -0.835320, 0.528003,
		0.578236, -0.357539, -0.733355,
		1.812950, 3.218655, 3.151292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.990921, 3.248884, 3.989624>,  <1.408184, 3.468932, 3.664641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.990921, 3.248884, 3.989624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.144670, 3.255595, 3.620413>,  <2.236918, 3.259621, 3.398886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.144670, 3.255595, 3.620413>,  <1.990921, 3.248884, 3.989624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.144670, 3.255595, 3.620413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764698, 0.554360, 0.328514,
		0.517201, -0.832108, 0.200251,
		0.384370, 0.016777, -0.923027,
		2.259981, 3.260628, 3.343505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.656743, 3.281524, 4.087512>,  <1.990921, 3.248884, 3.989624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.656743, 3.281524, 4.087512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.649143, 3.404752, 3.707042>,  <2.644584, 3.478688, 3.478760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.649143, 3.404752, 3.707042>,  <2.656743, 3.281524, 4.087512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.649143, 3.404752, 3.707042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784579, 0.594285, 0.176808,
		0.619738, -0.742912, -0.252995,
		-0.018998, 0.308069, -0.951174,
		2.643444, 3.497173, 3.421690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.406736, 3.170382, 3.891570>,  <2.656743, 3.281524, 4.087512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.406736, 3.170382, 3.891570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.208258, 3.435652, 3.667432>,  <3.089170, 3.594815, 3.532949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.208258, 3.435652, 3.667432>,  <3.406736, 3.170382, 3.891570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.208258, 3.435652, 3.667432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735646, 0.663915, 0.134323,
		0.461101, -0.345564, -0.817295,
		-0.496197, 0.663176, -0.560344,
		3.059399, 3.634605, 3.499328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.931601, 4.487967, 3.926989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847488, 4.679024, 3.585782>,  <3.797021, 4.793658, 3.381058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847488, 4.679024, 3.585782>,  <3.931601, 4.487967, 3.926989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.847488, 4.679024, 3.585782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877368, -0.477114, -0.050874,
		-0.431286, 0.737712, 0.519397,
		-0.210281, 0.477643, -0.853018,
		3.784404, 4.822317, 3.329877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.211597, 4.869785, 3.928371>,  <3.931601, 4.487967, 3.926989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.211597, 4.869785, 3.928371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325417, 4.708792, 3.580339>,  <3.393708, 4.612195, 3.371520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325417, 4.708792, 3.580339>,  <3.211597, 4.869785, 3.928371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.325417, 4.708792, 3.580339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823507, -0.567264, -0.006910,
		-0.490783, 0.718484, -0.492862,
		0.284548, -0.402484, -0.870080,
		3.410781, 4.588047, 3.319315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.658031, 4.759265, 3.476496>,  <3.211597, 4.869785, 3.928371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.658031, 4.759265, 3.476496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.910343, 4.477087, 3.347213>,  <3.061730, 4.307780, 3.269644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.910343, 4.477087, 3.347213>,  <2.658031, 4.759265, 3.476496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.910343, 4.477087, 3.347213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775825, -0.581199, -0.245569,
		-0.014612, 0.405651, -0.913911,
		0.630779, -0.705446, -0.323207,
		3.099577, 4.265453, 3.250251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.318603, 4.571136, 2.807016>,  <2.658031, 4.759265, 3.476496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.318603, 4.571136, 2.807016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.563610, 4.291641, 2.954849>,  <2.710614, 4.123944, 3.043548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.563610, 4.291641, 2.954849>,  <2.318603, 4.571136, 2.807016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.563610, 4.291641, 2.954849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577822, -0.714843, -0.393855,
		0.539393, 0.027691, -0.841599,
		0.612517, -0.698736, 0.369581,
		2.747365, 4.082020, 3.065723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.310734, 4.093707, 2.326616>,  <2.318603, 4.571136, 2.807016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.310734, 4.093707, 2.326616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.464500, 3.913782, 2.649080>,  <2.556760, 3.805827, 2.842558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.464500, 3.913782, 2.649080>,  <2.310734, 4.093707, 2.326616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.464500, 3.913782, 2.649080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431889, -0.859430, -0.273589,
		0.815902, -0.243000, -0.524648,
		0.384416, -0.449812, 0.806159,
		2.579825, 3.778839, 2.890928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659863, 3.402071, 2.116926>,  <2.310734, 4.093707, 2.326616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659863, 3.402071, 2.116926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.527927, 3.359938, 2.492182>,  <2.448766, 3.334657, 2.717337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.527927, 3.359938, 2.492182>,  <2.659863, 3.402071, 2.116926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.527927, 3.359938, 2.492182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510022, -0.816363, -0.270979,
		0.794407, -0.567853, 0.215547,
		-0.329840, -0.105334, 0.938142,
		2.428975, 3.328337, 2.773625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.572337, 2.655736, 2.193608>,  <2.659863, 3.402071, 2.116926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.572337, 2.655736, 2.193608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.349396, 2.792645, 2.496186>,  <2.215631, 2.874790, 2.677732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.349396, 2.792645, 2.496186>,  <2.572337, 2.655736, 2.193608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.349396, 2.792645, 2.496186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644377, -0.752852, -0.134136,
		0.523579, -0.562196, 0.640157,
		-0.557354, 0.342272, 0.756444,
		2.182189, 2.895326, 2.723119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.427476, 2.116000, 2.679048>,  <2.572337, 2.655736, 2.193608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.427476, 2.116000, 2.679048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.150799, 2.404579, 2.692152>,  <1.984792, 2.577727, 2.700014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.150799, 2.404579, 2.692152>,  <2.427476, 2.116000, 2.679048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.150799, 2.404579, 2.692152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702121, -0.661160, -0.264373,
		-0.169072, -0.205867, 0.963864,
		-0.691694, 0.721447, 0.032760,
		1.943291, 2.621013, 2.701980>
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
