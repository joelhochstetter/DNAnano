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
	<3.317130, 1.001757, -0.656769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.971504, 1.145191, -0.515455>,  <2.764129, 1.231251, -0.430667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.971504, 1.145191, -0.515455>,  <3.317130, 1.001757, -0.656769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.971504, 1.145191, -0.515455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395920, 0.050698, 0.916884,
		0.310870, 0.932120, -0.185777,
		-0.864064, 0.358584, 0.353285,
		2.712285, 1.252766, -0.409470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.340558, 1.748780, -0.219974>,  <3.317130, 1.001757, -0.656769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.340558, 1.748780, -0.219974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.070305, 1.477367, -0.104656>,  <2.908153, 1.314520, -0.035466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.070305, 1.477367, -0.104656>,  <3.340558, 1.748780, -0.219974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.070305, 1.477367, -0.104656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418930, -0.031575, 0.907469,
		-0.606644, 0.733891, 0.305591,
		-0.675633, -0.678533, 0.288294,
		2.867615, 1.273808, -0.018168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.950738, 2.230853, 0.186110>,  <3.340558, 1.748780, -0.219974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.950738, 2.230853, 0.186110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086678, 1.855576, 0.212320>,  <3.168242, 1.630409, 0.228046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086678, 1.855576, 0.212320>,  <2.950738, 2.230853, 0.186110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.086678, 1.855576, 0.212320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360601, -0.065642, 0.930407,
		-0.868602, -0.339827, -0.360622,
		0.339850, -0.938195, 0.065525,
		3.188632, 1.574117, 0.231977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.345771, 1.728844, 0.296285>,  <2.950738, 2.230853, 0.186110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.345771, 1.728844, 0.296285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.691414, 1.592827, 0.444711>,  <2.898800, 1.511217, 0.533767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.691414, 1.592827, 0.444711>,  <2.345771, 1.728844, 0.296285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.691414, 1.592827, 0.444711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400082, -0.016752, 0.916327,
		-0.305375, -0.940261, -0.150520,
		0.864107, -0.340043, 0.371065,
		2.950646, 1.490814, 0.556031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.175630, 1.179911, 0.767078>,  <2.345771, 1.728844, 0.296285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.175630, 1.179911, 0.767078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.522293, 1.353436, 0.865635>,  <2.730291, 1.457551, 0.924769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.522293, 1.353436, 0.865635>,  <2.175630, 1.179911, 0.767078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.522293, 1.353436, 0.865635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326133, 0.118885, 0.937819,
		0.377546, -0.893125, 0.244513,
		0.866658, 0.433813, 0.246393,
		2.782291, 1.483579, 0.939553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.287198, 0.912783, 1.361396>,  <2.175630, 1.179911, 0.767078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.287198, 0.912783, 1.361396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.519371, 1.238468, 1.366405>,  <2.658675, 1.433879, 1.369409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.519371, 1.238468, 1.366405>,  <2.287198, 0.912783, 1.361396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.519371, 1.238468, 1.366405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336248, 0.225643, 0.914343,
		0.741644, -0.534923, 0.404748,
		0.580432, 0.814213, 0.012520,
		2.693501, 1.482732, 1.370161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.600393, 0.934464, 2.020800>,  <2.287198, 0.912783, 1.361396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.600393, 0.934464, 2.020800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.667480, 1.308525, 1.895991>,  <2.707733, 1.532962, 1.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.667480, 1.308525, 1.895991>,  <2.600393, 0.934464, 2.020800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.667480, 1.308525, 1.895991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263807, 0.347537, 0.899791,
		0.949882, -0.068599, 0.304989,
		0.167720, 0.935154, -0.312022,
		2.717796, 1.589071, 1.802384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.020529, 1.222151, 2.624730>,  <2.600393, 0.934464, 2.020800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.020529, 1.222151, 2.624730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.853172, 1.526089, 2.425697>,  <2.752759, 1.708451, 2.306278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.853172, 1.526089, 2.425697>,  <3.020529, 1.222151, 2.624730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.853172, 1.526089, 2.425697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259976, 0.424726, 0.867191,
		0.870265, 0.492184, 0.019840,
		-0.418391, 0.759844, -0.497580,
		2.727655, 1.754042, 2.276423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.203976, 1.834164, 3.237617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.137009, 2.217575, 3.145362>,  <2.096828, 2.447622, 3.090010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.137009, 2.217575, 3.145362>,  <2.203976, 1.834164, 3.237617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.137009, 2.217575, 3.145362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326482, -0.166835, -0.930363,
		-0.930258, -0.231059, -0.285011,
		-0.167419, 0.958529, -0.230636,
		2.086783, 2.505134, 3.076171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.763867, 1.761437, 2.688388>,  <2.203976, 1.834164, 3.237617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.763867, 1.761437, 2.688388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.971390, 2.102921, 2.670409>,  <2.095903, 2.307811, 2.659622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.971390, 2.102921, 2.670409>,  <1.763867, 1.761437, 2.688388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.971390, 2.102921, 2.670409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391116, -0.283777, -0.875499,
		-0.760176, 0.436636, -0.481125,
		0.518807, 0.853709, -0.044946,
		2.127032, 2.359033, 2.656926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.724908, 2.270410, 2.067114>,  <1.763867, 1.761437, 2.688388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.724908, 2.270410, 2.067114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.080536, 2.274780, 2.250171>,  <2.293912, 2.277403, 2.360006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.080536, 2.274780, 2.250171>,  <1.724908, 2.270410, 2.067114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.080536, 2.274780, 2.250171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451818, -0.181686, -0.873413,
		0.073604, 0.983296, -0.166468,
		0.889069, 0.010926, 0.457643,
		2.347256, 2.278058, 2.387464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.174079, 2.775425, 1.639340>,  <1.724908, 2.270410, 2.067114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.174079, 2.775425, 1.639340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.365829, 2.475830, 1.822301>,  <2.480880, 2.296073, 1.932078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.365829, 2.475830, 1.822301>,  <2.174079, 2.775425, 1.639340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.365829, 2.475830, 1.822301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445618, -0.241270, -0.862099,
		0.756058, 0.617096, 0.218103,
		0.479376, -0.748987, 0.457403,
		2.509642, 2.251134, 1.959522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.939137, 2.831447, 1.505322>,  <2.174079, 2.775425, 1.639340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.939137, 2.831447, 1.505322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.839279, 2.455887, 1.600101>,  <2.779365, 2.230551, 1.656969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.839279, 2.455887, 1.600101>,  <2.939137, 2.831447, 1.505322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.839279, 2.455887, 1.600101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391072, -0.321610, -0.862340,
		0.885856, -0.122613, 0.447465,
		-0.249644, -0.938900, 0.236950,
		2.764386, 2.174217, 1.671186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.579086, 2.421044, 1.526855>,  <2.939137, 2.831447, 1.505322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.579086, 2.421044, 1.526855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.285217, 2.167511, 1.430096>,  <3.108896, 2.015391, 1.372041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.285217, 2.167511, 1.430096>,  <3.579086, 2.421044, 1.526855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.285217, 2.167511, 1.430096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611947, -0.465198, -0.639619,
		0.292881, -0.617938, 0.729640,
		-0.734671, -0.633833, -0.241897,
		3.064816, 1.977361, 1.357527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.953695, 1.828020, 1.369735>,  <3.579086, 2.421044, 1.526855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.953695, 1.828020, 1.369735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592239, 1.715149, 1.240856>,  <3.375366, 1.647426, 1.163528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592239, 1.715149, 1.240856>,  <3.953695, 1.828020, 1.369735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.592239, 1.715149, 1.240856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415812, -0.397719, -0.817875,
		0.102642, -0.873039, 0.476727,
		-0.903640, -0.282177, -0.322198,
		3.321147, 1.630496, 1.144196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.943622, 1.096239, 1.213534>,  <3.953695, 1.828020, 1.369735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.943622, 1.096239, 1.213534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656860, 1.245499, 0.977972>,  <3.484803, 1.335054, 0.836634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656860, 1.245499, 0.977972>,  <3.943622, 1.096239, 1.213534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656860, 1.245499, 0.977972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407927, -0.460499, -0.788375,
		-0.565372, -0.805419, 0.177915,
		-0.716903, 0.373149, -0.588906,
		3.441789, 1.357443, 0.801300>
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
